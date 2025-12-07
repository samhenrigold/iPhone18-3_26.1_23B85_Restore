void sub_2189443B0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218950928(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189509E0(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC(0);
  sub_2187FADB8(&unk_280EE3770, sub_218950ACC, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C34688(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C34688((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_218944748(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218950B84(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950C18(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928(0);
  sub_2187FADB8(&qword_280EE5760, sub_218950928, MEMORY[0x277D6D730]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C346D8(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C346D8((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_218944B34(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218950D5C(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_218950F34(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_27CC0AE40, sub_218950F34, MEMORY[0x277D6EC70]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C347C8(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C347C8((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_218944E70(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_2189537DC(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_218950D5C(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_27CC0B138, sub_218950D5C, MEMORY[0x277D6D730]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C34818(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C34818((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_21894526C(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_2189539F0(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_218953A84(0);
  v13 = v12;
  v14 = sub_2187FADB8(&unk_27CC0B140, sub_218953A84, MEMORY[0x277D6D730]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C34C50(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C34C50((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_2189455E8(void (*a1)(id *), unint64_t a2, unint64_t a3, uint64_t (*a4)(void), unint64_t a5)
{
  v7 = v5;
  v28 = a1;
  v29 = a2;
  v27 = a4(0);
  v9 = *(v27 - 8);
  v10 = MEMORY[0x28223BE20](v27);
  v12 = &v21 - v11;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v14 = a3;
    v31 = MEMORY[0x277D84F90];
    a3 = &v31;
    (a5)(0, i & ~(i >> 63), 0, v10);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v31;
    v17 = v14;
    v25 = v14;
    v26 = v14 & 0xC000000000000001;
    v21 = a5;
    v22 = v14 & 0xFFFFFFFFFFFFFF8;
    v23 = v9 + 32;
    v24 = i;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v26)
      {
        v19 = MEMORY[0x21CECE0F0](v15, v17);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v19 = *(v17 + 8 * v15 + 32);
      }

      i = v19;
      v30 = v19;
      a3 = v29;
      v28(&v30);
      if (v7)
      {
        goto LABEL_20;
      }

      v7 = 0;

      v31 = v16;
      a5 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (a5 >= v20 >> 1)
      {
        a3 = &v31;
        v21(v20 > 1, a5 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = a5 + 1;
      (*(v9 + 32))(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a5, v12, v27);
      ++v15;
      v17 = v25;
      if (v18 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_218945840(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218853400(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_2187FAD00(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE58D0, sub_2187FAD00, MEMORY[0x277D6D730]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_21885760C(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21885760C((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_218945B7C(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218953D48(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_218953E34(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE3670, sub_218953E34, MEMORY[0x277D6EC70]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C350E0(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C350E0((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_218945EB8(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218950D5C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950E48(0);
  v31 = v11;
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v38 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950F34(0);
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0AE40, sub_218950F34, MEMORY[0x277D6EC70]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C351F0(0, v16 & ~(v16 >> 63), 0);
    v37 = v40;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v36 = v15;
      v17 = 0;
      v29 = (v8 + 16);
      v30 = (v8 + 8);
      v27[0] = v34 + 32;
      v27[1] = v14;
      v28 = v10;
      while (1)
      {
        v18 = v16;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v20 = sub_219BF5EC4();
        (*v29)(v10);
        v20(v39, 0);
        v32(v10, v39);
        if (v4)
        {
          (*v30)(v10, v7);

          return;
        }

        v35 = 0;
        v21 = v5;
        (*v30)(v10, v7);
        v22 = v37;
        v40 = v37;
        v24 = *(v37 + 16);
        v23 = *(v37 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_218C351F0((v23 > 1), v24 + 1, 1);
          v22 = v40;
        }

        *(v22 + 16) = v24 + 1;
        v25 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v22;
        (*(v34 + 32))(v22 + v25 + *(v34 + 72) * v24, v38, v31);
        v5 = v21;
        sub_219BF5E94();
        ++v17;
        v26 = v19 == v18;
        v16 = v18;
        v10 = v28;
        v4 = v35;
        if (v26)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_21894624C(void (*a1)(uint64_t *__return_ptr, uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v10[1] = MEMORY[0x277D84F90];
    sub_219BF73F4();
    for (i = (a3 + 32); ; ++i)
    {
      v9 = *i;

      (a1)(v10, &v9);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_218946354(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v14[1] = MEMORY[0x277D84F90];
    sub_219BF73F4();
    for (i = (a3 + 40); ; i += 16)
    {
      v9 = *(i - 1);
      v10 = *i;
      v12 = v9;
      v13 = v10;
      v11 = sub_218951020(v9, v10);
      (a1)(v14, &v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_21895102C(v9, v10);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (!--v6)
      {
        return;
      }
    }

    sub_21895102C(v9, v10);

    __break(1u);
  }
}

void sub_218946470(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v19 = MEMORY[0x277D84F90];
    sub_218C355B0(0, v4, 0);
    v7 = v19;
    for (i = a3 + 32; ; i += 144)
    {
      a1(v18, i);
      if (v3)
      {
        break;
      }

      v19 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_218C355B0((v9 > 1), v10 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v10 + 1;
      v11 = (v7 + 144 * v10);
      v11[2] = v18[0];
      v12 = v18[1];
      v13 = v18[2];
      v14 = v18[4];
      v11[5] = v18[3];
      v11[6] = v14;
      v11[3] = v12;
      v11[4] = v13;
      v15 = v18[5];
      v16 = v18[6];
      v17 = v18[8];
      v11[9] = v18[7];
      v11[10] = v17;
      v11[7] = v15;
      v11[8] = v16;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2189465A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16[0] = a1;
  v16[1] = a2;
  v6 = type metadata accessor for MagazineFeedModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_218C35750(0, v10, 0);
    v11 = v20;
    v12 = (a3 + 32);
    for (i = v10 - 1; ; --i)
    {
      v19[0] = *v12;
      *(v19 + 9) = *(v12 + 9);
      v18[0] = *v12;
      *(v18 + 9) = *(v12 + 9);
      sub_218950CAC(v19, v17);
      (v16[0])(v18);
      if (v4)
      {
        break;
      }

      v4 = 0;
      *v17 = v18[0];
      *&v17[9] = *(v18 + 9);
      sub_218950D08(v17);
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_218C35750((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_21885F994(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for MagazineFeedModel);
      if (!i)
      {
        return;
      }

      v12 += 2;
    }

    *v17 = v18[0];
    *&v17[9] = *(v18 + 9);
    sub_218950D08(v17);

    __break(1u);
  }
}

void sub_2189467A0(void (*a1)(char *), uint64_t a2, __n128 a3)
{
  v5 = v4;
  v6 = v3;
  v33 = a1;
  v34 = a2;
  sub_218954350(0);
  v8 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v28 - v12;
  sub_218954408(0);
  v14 = v13;
  v15 = sub_2187FADB8(&unk_280EE36D0, sub_218954408, MEMORY[0x277D6EC70]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C357A0(0, v16 & ~(v16 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v16;
      v30 = v10;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v14;
        v19 = v6;
        v20 = v15;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v10);
        v23(v39, 0);
        v33(v10);
        if (v5)
        {
          goto LABEL_12;
        }

        v5 = 0;
        (*v32)(v10, v8);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C357A0((v25 > 1), v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v8);
        v6 = v19;
        v14 = v21;
        v15 = v22;
        sub_219BF5E94();
        ++v17;
        v10 = v30;
        if (v36 == v29)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v32)(v10, v8);

    __break(1u);
  }
}

void sub_218946ADC(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = sub_219BDB954();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_218C357F0(0, v9, 0);
    v10 = v20;
    v15 = v6 + 32;
    for (i = (a3 + 40); ; i += 2)
    {
      v12 = *i;
      v19[0] = *(i - 1);
      v19[1] = v12;

      v17(v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v20 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_218C357F0((v13 > 1), v14 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v16);
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_218946CA8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218951038(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21895115C(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951268(0);
  sub_2187FADB8(&qword_280EE37A0, sub_218951268, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C35890(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C35890((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_218947040(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_218952AF8(0, &qword_280EE5B78, sub_218951108, &type metadata for MagazineSectionBarModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  sub_2189512E4(0);
  v34 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951038(0);
  v14 = v13;
  v15 = sub_2187FADB8(&qword_280EE5818, sub_218951038, MEMORY[0x277D6D730]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v42 = MEMORY[0x277D84F90];
    sub_218C358E0(0, v16 & ~(v16 >> 63), 0);
    v40 = v42;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = v8;
      v18 = 0;
      v32 = (v17 + 16);
      v33 = (v17 + 8);
      v29[1] = v37 + 32;
      v30 = v16;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v38 = v18 + 1;
        v19 = v14;
        v20 = v5;
        v21 = v15;
        v22 = v19;
        v23 = v21;
        v24 = sub_219BF5EC4();
        (*v32)(v10);
        v24(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v40;
        v42 = v40;
        v27 = *(v40 + 16);
        v26 = *(v40 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_218C358E0((v26 > 1), v27 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v25;
        (*(v37 + 32))(v25 + v28 + *(v37 + 72) * v27, v39, v34);
        v5 = v20;
        v14 = v22;
        v15 = v23;
        sub_219BF5E94();
        ++v18;
        v10 = v31;
        if (v38 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_21894740C(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218951378(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189513F4(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951518(0);
  sub_2187FADB8(&unk_280EE3658, sub_218951518, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C35930(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C35930((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_2189477A4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_218952AF8(0, &qword_280EE5C10, sub_218931D5C, &type metadata for SearchHomeModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  sub_218952AF8(0, &qword_27CC0AE48, sub_2189514C4, &type metadata for SearchHomeLayoutModel, MEMORY[0x277D6DA50]);
  v34 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v29 - v12;
  sub_218951378(0);
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0AE50, sub_218951378, MEMORY[0x277D6D730]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v42 = MEMORY[0x277D84F90];
    sub_218C35980(0, v16 & ~(v16 >> 63), 0);
    v40 = v42;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = v8;
      v18 = 0;
      v32 = (v17 + 16);
      v33 = (v17 + 8);
      v29[1] = v37 + 32;
      v30 = v16;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v38 = v18 + 1;
        v19 = v14;
        v20 = v5;
        v21 = v15;
        v22 = v19;
        v23 = v21;
        v24 = sub_219BF5EC4();
        (*v32)(v10);
        v24(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v40;
        v42 = v40;
        v27 = *(v40 + 16);
        v26 = *(v40 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_218C35980((v26 > 1), v27 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v25;
        (*(v37 + 32))(v25 + v28 + *(v37 + 72) * v27, v39, v34);
        v5 = v20;
        v14 = v22;
        v15 = v23;
        sub_219BF5E94();
        ++v18;
        v10 = v31;
        if (v38 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_218947BA4(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218951594(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189516A0(0);
  v31 = v11;
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v38 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189517AC(0);
  v14 = v13;
  v15 = sub_2187FADB8(&unk_27CC0AE90, sub_2189517AC, MEMORY[0x277D6EC70]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C35C58(0, v16 & ~(v16 >> 63), 0);
    v37 = v40;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v36 = v15;
      v17 = 0;
      v29 = (v8 + 16);
      v30 = (v8 + 8);
      v27[0] = v34 + 32;
      v27[1] = v14;
      v28 = v10;
      while (1)
      {
        v18 = v16;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v20 = sub_219BF5EC4();
        (*v29)(v10);
        v20(v39, 0);
        v32(v10, v39);
        if (v4)
        {
          (*v30)(v10, v7);

          return;
        }

        v35 = 0;
        v21 = v5;
        (*v30)(v10, v7);
        v22 = v37;
        v40 = v37;
        v24 = *(v37 + 16);
        v23 = *(v37 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_218C35C58((v23 > 1), v24 + 1, 1);
          v22 = v40;
        }

        *(v22 + 16) = v24 + 1;
        v25 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v22;
        (*(v34 + 32))(v22 + v25 + *(v34 + 72) * v24, v38, v31);
        v5 = v21;
        sub_219BF5E94();
        ++v17;
        v26 = v19 == v18;
        v16 = v18;
        v10 = v28;
        v4 = v35;
        if (v26)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_218947F38(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[1] = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v8 = (a3 + 40);
    while (1)
    {
      v9 = *v8;
      v10[0] = *(v8 - 1);
      v10[1] = v9;
      swift_unknownObjectRetain();
      a1(v11, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v8 += 2;
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (!--v6)
      {
        return;
      }
    }

    swift_unknownObjectRelease();

    __break(1u);
  }
}

void sub_218948094(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218951864(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189518E0(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21895195C(0);
  sub_2187FADB8(&unk_27CC0AEB0, sub_21895195C, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C36018(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C36018((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_21894842C(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_218952AF8(0, &qword_27CC0C8C0, sub_21878D92C, &type metadata for FollowingNotificationsModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  sub_218952AF8(0, &qword_27CC0AEC0, sub_21878E148, &type metadata for FollowingNotificationsLayoutModel, MEMORY[0x277D6DA50]);
  v34 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v29 - v12;
  sub_218951864(0);
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0AEC8, sub_218951864, MEMORY[0x277D6D730]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v42 = MEMORY[0x277D84F90];
    sub_218C36068(0, v16 & ~(v16 >> 63), 0);
    v40 = v42;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = v8;
      v18 = 0;
      v32 = (v17 + 16);
      v33 = (v17 + 8);
      v29[1] = v37 + 32;
      v30 = v16;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v38 = v18 + 1;
        v19 = v14;
        v20 = v5;
        v21 = v15;
        v22 = v19;
        v23 = v21;
        v24 = sub_219BF5EC4();
        (*v32)(v10);
        v24(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v40;
        v42 = v40;
        v27 = *(v40 + 16);
        v26 = *(v40 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_218C36068((v26 > 1), v27 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v25;
        (*(v37 + 32))(v25 + v28 + *(v37 + 72) * v27, v39, v34);
        v5 = v20;
        v14 = v22;
        v15 = v23;
        sub_219BF5E94();
        ++v18;
        v10 = v31;
        if (v38 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_21894882C(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v20 = MEMORY[0x277D84F90];
    sub_218C362B8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v7 = 0;
    v8 = v20;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v7 + 32);
      }

      v18 = v10;
      a1(v19, &v18);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v19[0];
      v12 = v19[1];
      v20 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v19[0];
        sub_218C362B8((v13 > 1), v14 + 1, 1);
        v11 = v16;
        v8 = v20;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      ++v7;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_218948A38(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v27 = a6;
  v28 = a1;
  v8 = v6;
  v29 = a2;
  v10 = a4(0);
  v26 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v15 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v15;
    }

    v31 = MEMORY[0x277D84F90];
    (a5)(0, i & ~(i >> 63), 0, v11);
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    v15 = v31;
    v24 = i;
    v25 = a3 & 0xC000000000000001;
    v22 = a5;
    v23 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a5 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v25)
      {
        v17 = MEMORY[0x21CECE0F0](v16, a3);
      }

      else
      {
        if (v16 >= *(v23 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(a3 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      v30 = v17;
      v28(&v30);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;
      swift_unknownObjectRelease();
      v31 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        v22(v18 > 1, v19 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v19 + 1;
      sub_21885F994(v13, v15 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v19, v27);
      ++v16;
      if (a5 == v24)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

void sub_218948C7C(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_2189519D8(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951AE4(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951BD0(0);
  sub_2187FADB8(&qword_27CC11960, sub_218951BD0, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C36398(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C36398((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_218949014(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218951C88(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951D1C(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189519D8(0);
  sub_2187FADB8(&qword_27CC0AF20, sub_2189519D8, MEMORY[0x277D6D730]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C363E8(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C363E8((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_2189493AC(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218951DB0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951E9C(0);
  v31 = v11;
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v38 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54(0);
  v14 = v13;
  v15 = sub_2187FADB8(&unk_280EE3610, sub_218951F54, MEMORY[0x277D6EC70]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C366E8(0, v16 & ~(v16 >> 63), 0);
    v37 = v40;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v36 = v15;
      v17 = 0;
      v29 = (v8 + 16);
      v30 = (v8 + 8);
      v27[0] = v34 + 32;
      v27[1] = v14;
      v28 = v10;
      while (1)
      {
        v18 = v16;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v20 = sub_219BF5EC4();
        (*v29)(v10);
        v20(v39, 0);
        v32(v10, v39);
        if (v4)
        {
          (*v30)(v10, v7);

          return;
        }

        v35 = 0;
        v21 = v5;
        (*v30)(v10, v7);
        v22 = v37;
        v40 = v37;
        v24 = *(v37 + 16);
        v23 = *(v37 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_218C366E8((v23 > 1), v24 + 1, 1);
          v22 = v40;
        }

        *(v22 + 16) = v24 + 1;
        v25 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v22;
        (*(v34 + 32))(v22 + v25 + *(v34 + 72) * v24, v38, v31);
        v5 = v21;
        sub_219BF5E94();
        ++v17;
        v26 = v19 == v18;
        v16 = v18;
        v10 = v28;
        v4 = v35;
        if (v26)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_218949740(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v15 = MEMORY[0x277D84F90];
    sub_218C36828(0, v5, 0);
    v8 = v15;
    v9 = *(sub_219BEFBF4() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(v14, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v15 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_218C36828((v12 > 1), v13 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v13 + 1;
      sub_2186CB1F0(v14, v8 + 40 * v13 + 32);
      v10 += v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2189498A8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218952040(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952164(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952270(0);
  sub_2187FADB8(&qword_27CC0AF60, sub_218952270, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C36860(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C36860((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_218949C40(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_218952AF8(0, &qword_27CC0AF68, sub_218952110, &type metadata for SportsNavigationModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  sub_218952AF8(0, &qword_27CC0AF70, sub_21895221C, &type metadata for SportsNavigationLayoutModel, MEMORY[0x277D6DA50]);
  v34 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v29 - v12;
  sub_218952040(0);
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0AF78, sub_218952040, MEMORY[0x277D6D730]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v42 = MEMORY[0x277D84F90];
    sub_218C368B0(0, v16 & ~(v16 >> 63), 0);
    v40 = v42;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = v8;
      v18 = 0;
      v32 = (v17 + 16);
      v33 = (v17 + 8);
      v29[1] = v37 + 32;
      v30 = v16;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v38 = v18 + 1;
        v19 = v14;
        v20 = v5;
        v21 = v15;
        v22 = v19;
        v23 = v21;
        v24 = sub_219BF5EC4();
        (*v32)(v10);
        v24(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v40;
        v42 = v40;
        v27 = *(v40 + 16);
        v26 = *(v40 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_218C368B0((v26 > 1), v27 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v25;
        (*(v37 + 32))(v25 + v28 + *(v37 + 72) * v27, v39, v34);
        v5 = v20;
        v14 = v22;
        v15 = v23;
        sub_219BF5E94();
        ++v18;
        v10 = v31;
        if (v38 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_21894A0D4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v25 = a1;
  v26 = a2;
  v24 = a4(0);
  v11 = *(v24 - 8);
  v12 = MEMORY[0x28223BE20](v24);
  v14 = &v21 - v13;
  v15 = *(a3 + 16);
  if (v15)
  {
    v27 = MEMORY[0x277D84F90];
    v21 = a5;
    (a5)(0, v15, 0, v12);
    v16 = v27;
    v17 = *(a6(0) - 8);
    v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = v11 + 32;
    v22 = *(v17 + 72);
    while (1)
    {
      v25(v18);
      if (v9)
      {
        break;
      }

      v9 = 0;
      v27 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        v21(v19 > 1, v20 + 1, 1);
        v16 = v27;
      }

      *(v16 + 16) = v20 + 1;
      (*(v11 + 32))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v24);
      v18 += v22;
      if (!--v15)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_21894A2F4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218954178(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_218954264(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE3640, sub_218954264, MEMORY[0x277D6EC70]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C36E70(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C36E70((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_21894A684(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_2189522EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189523D8(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189524C4(0);
  sub_2187FADB8(&qword_27CC0AFB8, sub_2189524C4, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C37290(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C37290((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_21894AA1C(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_2189525B0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952644(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189522EC(0);
  sub_2187FADB8(&qword_27CC0AFD0, sub_2189522EC, MEMORY[0x277D6D730]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C372E0(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C372E0((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_21894ADB4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v12[2] = MEMORY[0x277D84F90];
    sub_219BF73F4();
    if (i < 0)
    {
      __break(1u);
LABEL_18:
      swift_unknownObjectRelease();

      __break(1u);
      return;
    }

    for (j = 0; ; ++j)
    {
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(a3 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      v11 = v9;
      a1(v12, &v11);
      if (v4)
      {
        goto LABEL_18;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_21894AF34(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_2187FAD00(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_21880B928(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE3730, sub_21880B928, MEMORY[0x277D6EC70]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C373B0(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C373B0((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_21894B2B0(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v7 = v5;
  v23 = a1;
  v24 = a2;
  v22 = a4(0);
  v9 = *(v22 - 8);
  v10 = MEMORY[0x28223BE20](v22);
  v12 = &v19 - v11;
  v13 = *(a3 + 16);
  if (v13)
  {
    v28 = MEMORY[0x277D84F90];
    v20 = a5;
    (a5)(0, v13, 0, v10);
    v14 = v28;
    v15 = (a3 + 32);
    v21 = v9 + 32;
    for (i = v13 - 1; ; --i)
    {
      v27[0] = *v15;
      *(v27 + 9) = *(v15 + 9);
      v26[0] = *v15;
      *(v26 + 9) = *(v15 + 9);
      sub_218950CAC(v27, v25);
      v23(v26);
      if (v7)
      {
        break;
      }

      v7 = 0;
      *v25 = v26[0];
      *&v25[9] = *(v26 + 9);
      sub_218950D08(v25);
      v28 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        v20(v17 > 1, v18 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v18 + 1;
      (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v12, v22);
      if (!i)
      {
        return;
      }

      v15 += 2;
    }

    *v25 = v26[0];
    *&v25[9] = *(v26 + 9);
    sub_218950D08(v25);

    __break(1u);
  }
}

void sub_21894B4D0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218952834(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952958(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952A7C(0);
  sub_2187FADB8(&unk_27CC0B010, sub_218952A7C, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C37770(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C37770((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_21894B868(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_218952AF8(0, &qword_27CC0F960, sub_218952904, &type metadata for FollowingDislikedModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  sub_218952AF8(0, &qword_27CC0B020, sub_218952A28, &type metadata for FollowingDislikedLayoutModel, MEMORY[0x277D6DA50]);
  v34 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v29 - v12;
  sub_218952834(0);
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0B028, sub_218952834, MEMORY[0x277D6D730]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v42 = MEMORY[0x277D84F90];
    sub_218C377C0(0, v16 & ~(v16 >> 63), 0);
    v40 = v42;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = v8;
      v18 = 0;
      v32 = (v17 + 16);
      v33 = (v17 + 8);
      v29[1] = v37 + 32;
      v30 = v16;
      v31 = v10;
      while (!__OFADD__(v18, 1))
      {
        v38 = v18 + 1;
        v19 = v14;
        v20 = v5;
        v21 = v15;
        v22 = v19;
        v23 = v21;
        v24 = sub_219BF5EC4();
        (*v32)(v10);
        v24(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v33)(v10, v7);
        v25 = v40;
        v42 = v40;
        v27 = *(v40 + 16);
        v26 = *(v40 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_218C377C0((v26 > 1), v27 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v27 + 1;
        v28 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v25;
        (*(v37 + 32))(v25 + v28 + *(v37 + 72) * v27, v39, v34);
        v5 = v20;
        v14 = v22;
        v15 = v23;
        sub_219BF5E94();
        ++v18;
        v10 = v31;
        if (v38 == v30)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v33)(v10, v7);

    __break(1u);
  }
}

void sub_21894BC68(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218953B70(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_218953C5C(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_27CC0B158, sub_218953C5C, MEMORY[0x277D6EC70]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C378D0(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C378D0((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_21894BFE4(void (*a1)(uint64_t *), unint64_t a2, unint64_t a3, uint64_t (*a4)(void), unint64_t a5)
{
  v7 = v5;
  v28 = a1;
  v29 = a2;
  v27 = a4(0);
  v9 = *(v27 - 8);
  v10 = MEMORY[0x28223BE20](v27);
  v12 = &v21 - v11;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v14 = a3;
    v31 = MEMORY[0x277D84F90];
    a3 = &v31;
    (a5)(0, i & ~(i >> 63), 0, v10);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v31;
    v17 = v14;
    v25 = v14;
    v26 = v14 & 0xC000000000000001;
    v21 = a5;
    v22 = v14 & 0xFFFFFFFFFFFFFF8;
    v23 = v9 + 32;
    v24 = i;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v26)
      {
        v19 = MEMORY[0x21CECE0F0](v15, v17);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v19 = *(v17 + 8 * v15 + 32);
      }

      v30 = v19;
      a3 = v29;
      v28(&v30);
      if (v7)
      {
        goto LABEL_20;
      }

      v7 = 0;

      v31 = v16;
      a5 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (a5 >= v20 >> 1)
      {
        a3 = &v31;
        v21(v20 > 1, a5 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = a5 + 1;
      (*(v9 + 32))(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a5, v12, v27);
      ++v15;
      v17 = v25;
      if (v18 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_21894C29C(void (*a1)(__int128 *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_218C38100(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 48); ; i += 3)
  {
    v10 = *(i - 1);
    v11 = *i;
    v17[0] = *(i - 2);
    v17[1] = v10;
    v17[2] = v11;
    swift_unknownObjectRetain();

    (a1)(&v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    swift_unknownObjectRelease();
    v12 = v18;
    v19 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v18;
      sub_218C38100((v13 > 1), v14 + 1, 1);
      v12 = v16;
      v6 = v19;
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + 16 * v14 + 32) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

void sub_21894C3F0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218952B60(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952C4C(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952D38(0);
  sub_2187FADB8(&qword_27CC0B068, sub_218952D38, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C38120(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C38120((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_21894C788(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_218952E24(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952EB8(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952B60(0);
  sub_2187FADB8(&unk_27CC0B080, sub_218952B60, MEMORY[0x277D6D730]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C38170(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C38170((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_21894CB20(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218953FB4(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_2189540C0(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_27CC0B188, sub_2189540C0, MEMORY[0x277D6EC70]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C381C0(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C381C0((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_21894CE5C(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218953870(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_218951DB0(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE5938, sub_218951DB0, MEMORY[0x277D6D730]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C35700(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C35700((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_21894D1EC(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218950B84(0);
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v27 - v11;
  sub_218950928(0);
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE5760, sub_218950928, MEMORY[0x277D6D730]);
  v15 = sub_219BF5E44();
  if (v15)
  {
    v39 = MEMORY[0x277D84F90];
    sub_218C34A38(0, v15 & ~(v15 >> 63), 0);
    v37 = v39;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v30 = (v34 + 16);
      v31 = (v34 + 8);
      v27 = v34 + 32;
      v28 = v15;
      v29 = v9;
      while (!__OFADD__(v16, 1))
      {
        v35 = v16 + 1;
        v17 = v13;
        v18 = v5;
        v19 = v14;
        v20 = v17;
        v21 = v19;
        v22 = sub_219BF5EC4();
        (*v30)(v9);
        v22(v38, 0);
        v32(v9);
        if (v4)
        {
          goto LABEL_12;
        }

        v4 = 0;
        (*v31)(v9, v7);
        v23 = v37;
        v39 = v37;
        v25 = *(v37 + 16);
        v24 = *(v37 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C34A38((v24 > 1), v25 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v23;
        (*(v34 + 32))(v23 + v26 + *(v34 + 72) * v25, v36, v7);
        v5 = v18;
        v13 = v20;
        v14 = v21;
        sub_219BF5E94();
        ++v16;
        v9 = v29;
        if (v35 == v28)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v31)(v9, v7);

    __break(1u);
  }
}

void sub_21894D5A8(void (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v26 = a6;
  v27 = a1;
  v8 = v6;
  v28 = a2;
  v10 = a4(0);
  v25 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v30 = MEMORY[0x277D84F90];
    (a5)(0, i & ~(i >> 63), 0, v11);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v30;
    v23 = i;
    v24 = a3 & 0xC000000000000001;
    v21 = a5;
    v22 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a5 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24)
      {
        v17 = MEMORY[0x21CECE0F0](v15, a3);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v17 = *(a3 + 8 * v15 + 32);
      }

      i = v17;
      v29 = v17;
      v27(&v29);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      v30 = v16;
      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v19 >= v18 >> 1)
      {
        v21(v18 > 1, v19 + 1, 1);
        v16 = v30;
      }

      *(v16 + 16) = v19 + 1;
      sub_21885F994(v13, v16 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19, v26);
      ++v15;
      if (a5 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_21894D80C(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v13[2] = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v8 = (a3 + 56);
    while (1)
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      v12[0] = *(v8 - 3);
      v12[1] = v9;
      v12[2] = v10;
      v12[3] = v11;

      swift_unknownObjectRetain();

      (a1)(v13, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v8 += 4;

      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (!--v6)
      {
        return;
      }
    }

    swift_unknownObjectRelease();

    __break(1u);
  }
}

void sub_21894D95C(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v32 = a1;
  v33 = a2;
  sub_218952F4C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953058(0);
  v31 = v11;
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v38 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953164(0);
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0B0C8, sub_218953164, MEMORY[0x277D6EC70]);
  v16 = sub_219BF5E44();
  if (v16)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C38738(0, v16 & ~(v16 >> 63), 0);
    v37 = v40;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v36 = v15;
      v17 = 0;
      v29 = (v8 + 16);
      v30 = (v8 + 8);
      v27[0] = v34 + 32;
      v27[1] = v14;
      v28 = v10;
      while (1)
      {
        v18 = v16;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v20 = sub_219BF5EC4();
        (*v29)(v10);
        v20(v39, 0);
        v32(v10, v39);
        if (v4)
        {
          (*v30)(v10, v7);

          return;
        }

        v35 = 0;
        v21 = v5;
        (*v30)(v10, v7);
        v22 = v37;
        v40 = v37;
        v24 = *(v37 + 16);
        v23 = *(v37 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_218C38738((v23 > 1), v24 + 1, 1);
          v22 = v40;
        }

        *(v22 + 16) = v24 + 1;
        v25 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = v22;
        (*(v34 + 32))(v22 + v25 + *(v34 + 72) * v24, v38, v31);
        v5 = v21;
        sub_219BF5E94();
        ++v17;
        v26 = v19 == v18;
        v16 = v18;
        v10 = v28;
        v4 = v35;
        if (v26)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_21894DCF0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_21895321C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953328(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953434(0);
  sub_2187FADB8(&qword_27CC0B108, sub_218953434, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C387D8(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C387D8((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

void sub_21894E088(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  sub_2189534EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953580(0);
  v26 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v31 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21895321C(0);
  sub_2187FADB8(&unk_27CC0B120, sub_21895321C, MEMORY[0x277D6D730]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_218C38828(0, v11 & ~(v11 >> 63), 0);
    v32 = v34;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v12 = v6;
      v13 = 0;
      v24 = (v12 + 16);
      v25 = (v12 + 8);
      v21[1] = v29 + 32;
      v22 = v11;
      v23 = v8;
      while (!__OFADD__(v13, 1))
      {
        v30 = v13 + 1;
        v14 = sub_219BF5EC4();
        (*v24)(v8);
        v14(v33, 0);
        v27(v8);
        if (v3)
        {
          goto LABEL_12;
        }

        v3 = 0;
        v15 = v8;
        v16 = v5;
        (*v25)(v15, v5);
        v17 = v32;
        v34 = v32;
        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_218C38828((v18 > 1), v19 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v19 + 1;
        v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v32 = v17;
        (*(v29 + 32))(v17 + v20 + *(v29 + 72) * v19, v31, v26);
        sub_219BF5E94();
        ++v13;
        v5 = v16;
        v8 = v23;
        if (v30 == v22)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    (*v25)(v8, v5);

    __break(1u);
  }
}

uint64_t sub_21894E51C(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v26 = MEMORY[0x277D84F90];
    sub_218C38918(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v26;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v22 = v10;
      a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v26 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        v19 = v24;
        v20 = v23;
        v17 = v25;
        sub_218C38918((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v19;
        v11 = v20;
        v7 = v26;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 40 * v15;
      *(v16 + 32) = v11;
      *(v16 + 48) = v12;
      *(v16 + 64) = v13;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

double sub_21894E6D8(uint64_t a1, uint64_t a2)
{
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  v2 = qword_280F617D0;
  v3 = sub_219BF6214();
  sub_219BE5314("OfflineFeedsOfflineContentContributor: observed change to manifest", 66, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21894E798();
  }

  return result;
}

uint64_t sub_21894E798()
{
  v1 = v0;
  v98 = type metadata accessor for OfflineContentRequest(0);
  v2 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v4 = (&v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = &v86 - v6;
  v8 = type metadata accessor for OfflineContentRequest.Source(0);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  v10 = sub_218720294(&unk_282A21A30);
  if (v10 != 6)
  {
    sub_2186C66AC();
    v72 = sub_219BF6F74();
    sub_2186E7AE8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v73 = swift_allocObject();
    v74 = v73;
    *(v73 + 16) = xmmword_219C09BA0;
    if (v10 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4)
        {
          v75 = 0x8000000219CD71D0;
          v76 = 0xD000000000000019;
        }

        else
        {
          v75 = 0x8000000219CD71F0;
          v76 = 0xD000000000000013;
        }

        goto LABEL_47;
      }

      v76 = 0xD000000000000012;
      v84 = "disabledInSettings";
    }

    else
    {
      if (!v10)
      {
        v75 = 0xE700000000000000;
        v76 = 0x6E776F6E6B6E75;
        goto LABEL_47;
      }

      if (v10 == 1)
      {
        v75 = 0xED00006465626972;
        v76 = 0x6373627553746F6ELL;
LABEL_47:
        *(v73 + 56) = MEMORY[0x277D837D0];
        *(v73 + 64) = sub_2186FC3BC();
        *(v74 + 32) = v76;
        *(v74 + 40) = v75;
        v85 = sub_219BF6214();
        sub_219BE5314("OfflineFeedsOfflineContentContributor: will not contribute because all features are disabled, reason=%{public}@", 111, 2, &dword_2186C1000, v72, v85, v74);

        *&v101 = MEMORY[0x277D84F90];
        sub_218950530();
        return sub_219BE21B4();
      }

      v76 = 0xD000000000000012;
      v84 = "featureUnavailable";
    }

    v75 = (v84 - 32) | 0x8000000000000000;
    goto LABEL_47;
  }

  v89 = v2;
  v11 = v0[6];
  v12 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v11);
  (*(v12 + 88))(v11, v12);
  sub_219BE2184();

  v13 = v101;
  v105 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  v103 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
  v14 = _s7NewsUI215OfflineFeedKindO8allCasesSayACGvgZ_0();
  v15 = v14[2];
  if (v15)
  {
    v16 = (v14 + 4);
    do
    {
      v17 = *v16++;
      v101 = v17;
      sub_218720448(v17, *(&v17 + 1));
      sub_21894F5B8(&v101, v13, v1, &v106, &v105, &v104, &v103, &v102);
      sub_218720434(v17, *(&v17 + 1));
      --v15;
    }

    while (v15);
  }

  swift_getObjectType();
  swift_getKeyPath();
  v18 = sub_219BF6A94();

  swift_beginAccess();
  v19 = *(v106 + 2);
  if (v18 < v19)
  {
    sub_21895275C(v18, v19, sub_218840D24, sub_2194B7E4C);
  }

  swift_endAccess();
  swift_getKeyPath();
  v20 = sub_219BF6A94();

  swift_beginAccess();
  v21 = *(v105 + 2);
  if (v20 < v21)
  {
    sub_21895275C(v20, v21, sub_218840D24, sub_2194B7E4C);
  }

  swift_endAccess();
  swift_getKeyPath();
  v22 = sub_219BF6A94();

  swift_beginAccess();
  v23 = *(v104 + 2);
  if (v22 < v23)
  {
    sub_21895275C(v22, v23, sub_218840D24, sub_2194B7E4C);
  }

  swift_endAccess();
  swift_getKeyPath();
  v24 = sub_219BF6A94();

  swift_beginAccess();
  v25 = *(v103 + 2);
  if (v24 < v25)
  {
    sub_21895275C(v24, v25, sub_218840D24, sub_2194B7E4C);
  }

  v96 = v1;
  swift_endAccess();
  swift_getKeyPath();
  v26 = sub_219BF6A94();

  swift_beginAccess();
  v27 = *(v102 + 2);
  if (v26 < v27)
  {
    sub_21895275C(v26, v27, sub_218840D24, sub_2194B7E4C);
  }

  swift_endAccess();
  v28 = sub_219BDBD34();
  v29 = v97;
  v30 = (*(*(v28 - 8) + 56))(v97, 1, 1, v28);
  MEMORY[0x28223BE20](v30);
  *(&v86 - 2) = 31;
  *(&v86 - 1) = v29;
  v95 = v31;
  sub_2189441F0(sub_21895042C, (&v86 - 4), v31);
  v33 = v32;
  MEMORY[0x28223BE20](v32);
  *(&v86 - 2) = 31;
  *(&v86 - 1) = v29;
  v94 = v34;
  sub_2189441F0(sub_218950460, (&v86 - 4), v34);
  v36 = v35;
  MEMORY[0x28223BE20](v35);
  *(&v86 - 2) = 31;
  *(&v86 - 1) = v29;
  v93 = v37;
  sub_2189441F0(sub_218950494, (&v86 - 4), v37);
  v39 = v38;
  MEMORY[0x28223BE20](v38);
  *(&v86 - 2) = 31;
  *(&v86 - 1) = v29;
  v92 = v40;
  sub_2189441F0(sub_2189504C8, (&v86 - 4), v40);
  v42 = v41;
  MEMORY[0x28223BE20](v41);
  *(&v86 - 2) = 31;
  *(&v86 - 1) = v29;
  v91 = v43;
  sub_2189441F0(sub_2189504FC, (&v86 - 4), v43);
  v45 = v44;
  v100 = v33;
  sub_2191ED4DC(v36);
  sub_2191ED4DC(v39);
  sub_2191ED4DC(v42);
  sub_2191ED4DC(v45);
  v46 = v100;
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  v47 = qword_280F617D0;
  sub_2186E7AE8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_219C09EC0;
  *&v101 = *(v46 + 16);
  v49 = v101;
  v50 = sub_219BF7894();
  v52 = v51;
  v53 = MEMORY[0x277D837D0];
  *(v48 + 56) = MEMORY[0x277D837D0];
  v90 = sub_2186FC3BC();
  *(v48 + 64) = v90;
  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  *&v101 = 0;
  *(&v101 + 1) = 0xE000000000000000;
  if (v49)
  {
    v86 = v48;
    v87 = v47;
    v99 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v49, 0);
    v54 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v88 = v46;
    v55 = v46 + v54;
    v56 = v99;
    v57 = *(v89 + 72);
    while (1)
    {
      sub_2189506A8(v55, v7, type metadata accessor for OfflineContentRequest);
      sub_2189506A8(v7, v4, type metadata accessor for OfflineContentRequest);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v60 = *v4;
      v59 = v4[1];
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_218950608(0, &unk_280E8F880, "articleID options source ");
          v64 = v4 + *(v68 + 64);
          v69 = sub_219BF53D4();

          v70 = NDAudioContentIDFromArticleID();

          v60 = sub_219BF5414();
          v59 = v71;

          goto LABEL_28;
        }

        v61 = &unk_280E8F880;
        v62 = "articleID options source ";
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v61 = &qword_280E8F8B0;
        v62 = "issueID options source ";
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v61 = &unk_280E8F8A0;
        v62 = "puzzleID options source ";
      }

      else
      {
        v61 = &unk_280E8F890;
        v62 = "recipeID options source ";
      }

      sub_218950608(0, v61, v62);
      v64 = v4 + *(v63 + 64);
LABEL_28:
      sub_218950710(v64, type metadata accessor for OfflineContentRequest.Source);
      sub_218950710(v7, type metadata accessor for OfflineContentRequest);
      v99 = v56;
      v66 = *(v56 + 16);
      v65 = *(v56 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_21870B65C((v65 > 1), v66 + 1, 1);
        v56 = v99;
      }

      *(v56 + 16) = v66 + 1;
      v67 = v56 + 16 * v66;
      *(v67 + 32) = v60;
      *(v67 + 40) = v59;
      v55 += v57;
      if (!--v49)
      {

        v46 = v88;
        v47 = v87;
        v48 = v86;
        v53 = MEMORY[0x277D837D0];
        goto LABEL_41;
      }
    }
  }

  v56 = MEMORY[0x277D84F90];
LABEL_41:

  v77 = MEMORY[0x21CECC6D0](v56, v53);
  v79 = v78;

  MEMORY[0x21CECC330](v77, v79);

  v80 = v101;
  v81 = v90;
  *(v48 + 96) = v53;
  *(v48 + 104) = v81;
  *(v48 + 72) = v80;
  v82 = sub_219BF6214();
  sub_219BE5314("OfflineFeedsOfflineContentContributor: is contributing %{public}@ requests: %{public}@", 86, 2, &dword_2186C1000, v47, v82, v48);

  *&v101 = v46;
  sub_218950530();
  sub_219BE21B4();

  return sub_218950710(v97, type metadata accessor for OfflineContentRequest.Source);
}

double sub_21894F450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  v3 = qword_280F617D0;
  v4 = sub_219BF6214();
  sub_219BE5314("OfflineFeedsOfflineContentContributor: observed change to feature availability", 78, 2, &dword_2186C1000, v3, v4, MEMORY[0x277D84F90]);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21894E798();
  }

  return result;
}

uint64_t sub_21894F510(uint64_t a1, uint64_t (*a2)(double))
{
  sub_21894E798();
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  v3 = qword_280F617D0;
  v4 = sub_219BF6214();
  v5 = sub_219BE5314("OfflineFeedsOfflineContentContributor: did prepare to contribute", 64, 2, &dword_2186C1000, v3, v4, MEMORY[0x277D84F90]);
  return a2(v5);
}

void sub_21894F5B8(uint64_t *a1, uint64_t a2, void *a3, char **a4, char **a5, char **a6, char **a7, char **a8)
{
  v105 = a8;
  v106 = a7;
  v107 = a6;
  v109 = a5;
  v12 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *a1;
  v15 = a1[1];
  v111 = a2;
  v100 = v14;
  *&v110 = v14;
  *(&v110 + 1) = v15;
  v104 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OfflineFeedsManifest.manifest(for:)(&v110, v104);
  v16 = __swift_project_boxed_opaque_existential_1(a3 + 8, a3[11]);
  v99 = v15;
  if (v15)
  {
    v17 = 12;
  }

  else
  {
    v17 = 13;
  }

  *&v110 = *v16;
  v18 = off_282A442B8;
  v19 = type metadata accessor for OfflineFeatures();
  HIDWORD(v98) = v17;
  v101 = v19;
  v102 = v18;
  v20 = 0;
  if (v18(v17) == 6)
  {
    ObjectType = swift_getObjectType();
    *&v110 = v100;
    *(&v110 + 1) = v99;
    v20 = sub_21894FE24(&v110, ObjectType, &selRef_maxArticleDownloads);
  }

  v103 = a3;
  OfflineFeedManifest.rootArticleIDs.getter();
  v23 = v22;
  v24 = *(v22 + 16);
  if (v24)
  {
    v25 = 0;
    v108 = v20 & ~(v20 >> 63);
    v26 = (v22 + 40);
    while (v25 < *(v23 + 16))
    {
      if (v108 != v25)
      {
        v28 = *(v26 - 1);
        v27 = *v26;
        swift_beginAccess();
        v29 = *a4;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_218840D24(0, *(v29 + 2) + 1, 1, v29);
          *a4 = v29;
        }

        v32 = *(v29 + 2);
        v31 = *(v29 + 3);
        if (v32 >= v31 >> 1)
        {
          v29 = sub_218840D24((v31 > 1), v32 + 1, 1, v29);
          *a4 = v29;
        }

        ++v25;
        *(v29 + 2) = v32 + 1;
        v33 = &v29[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v27;
        swift_endAccess();
        v26 += 2;
        if (v24 != v25)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_15:

  *&v110 = *__swift_project_boxed_opaque_existential_1(v103 + 8, v103[11]);
  if ((v102)(HIDWORD(v98), v101) == 6)
  {
    v34 = swift_getObjectType();
    *&v110 = v100;
    *(&v110 + 1) = v99;
    v35 = sub_21894FE24(&v110, v34, &selRef_maxIssueDownloads);
  }

  else
  {
    v35 = 0;
  }

  OfflineFeedManifest.rootIssueIDs.getter();
  v37 = v36;
  v38 = *(v36 + 16);
  if (v38)
  {
    v39 = 0;
    v40 = v35 & ~(v35 >> 63);
    v41 = (v36 + 40);
    while (v39 < *(v37 + 16))
    {
      if (v40 != v39)
      {
        v43 = *(v41 - 1);
        v42 = *v41;
        v44 = v109;
        swift_beginAccess();
        v45 = *v44;

        v46 = swift_isUniquelyReferenced_nonNull_native();
        *v44 = v45;
        if ((v46 & 1) == 0)
        {
          v45 = sub_218840D24(0, *(v45 + 2) + 1, 1, v45);
          *v109 = v45;
        }

        v48 = *(v45 + 2);
        v47 = *(v45 + 3);
        if (v48 >= v47 >> 1)
        {
          v45 = sub_218840D24((v47 > 1), v48 + 1, 1, v45);
          *v109 = v45;
        }

        ++v39;
        *(v45 + 2) = v48 + 1;
        v49 = &v45[16 * v48];
        *(v49 + 4) = v43;
        *(v49 + 5) = v42;
        swift_endAccess();
        v41 += 2;
        if (v38 != v39)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_27:

  *&v110 = *__swift_project_boxed_opaque_existential_1(v103 + 8, v103[11]);
  if ((v102)(17, v101) == 6)
  {
    v50 = swift_getObjectType();
    *&v110 = v100;
    *(&v110 + 1) = v99;
    v51 = sub_21894FE24(&v110, v50, &selRef_maxPuzzleDownloads);
  }

  else
  {
    v51 = 0;
  }

  OfflineFeedManifest.rootPuzzleIDs.getter();
  v53 = v52;
  v54 = *(v52 + 16);
  if (v54)
  {
    v55 = 0;
    v56 = v51 & ~(v51 >> 63);
    v57 = (v52 + 40);
    while (v55 < *(v53 + 16))
    {
      if (v56 != v55)
      {
        v59 = *(v57 - 1);
        v58 = *v57;
        v60 = v107;
        swift_beginAccess();
        v61 = *v60;

        v62 = swift_isUniquelyReferenced_nonNull_native();
        *v60 = v61;
        if ((v62 & 1) == 0)
        {
          v61 = sub_218840D24(0, *(v61 + 2) + 1, 1, v61);
          *v107 = v61;
        }

        v64 = *(v61 + 2);
        v63 = *(v61 + 3);
        if (v64 >= v63 >> 1)
        {
          v61 = sub_218840D24((v63 > 1), v64 + 1, 1, v61);
          *v107 = v61;
        }

        ++v55;
        *(v61 + 2) = v64 + 1;
        v65 = &v61[16 * v64];
        *(v65 + 4) = v59;
        *(v65 + 5) = v58;
        swift_endAccess();
        v57 += 2;
        if (v54 != v55)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    goto LABEL_66;
  }

LABEL_39:

  *&v110 = *__swift_project_boxed_opaque_existential_1(v103 + 8, v103[11]);
  if ((v102)(14, v101) == 6)
  {
    v66 = swift_getObjectType();
    *&v110 = v100;
    *(&v110 + 1) = v99;
    v67 = sub_21894FE24(&v110, v66, &selRef_maxAudioDownloads);
  }

  else
  {
    v67 = 0;
  }

  OfflineFeedManifest.rootAudioArticleIDs.getter();
  v69 = v68;
  v70 = *(v68 + 16);
  if (v70)
  {
    v71 = 0;
    v72 = v67 & ~(v67 >> 63);
    v73 = (v68 + 40);
    while (v71 < *(v69 + 16))
    {
      if (v72 != v71)
      {
        v75 = *(v73 - 1);
        v74 = *v73;
        v76 = v106;
        swift_beginAccess();
        v77 = *v76;

        v78 = swift_isUniquelyReferenced_nonNull_native();
        *v76 = v77;
        if ((v78 & 1) == 0)
        {
          v77 = sub_218840D24(0, *(v77 + 2) + 1, 1, v77);
          *v106 = v77;
        }

        v80 = *(v77 + 2);
        v79 = *(v77 + 3);
        if (v80 >= v79 >> 1)
        {
          v77 = sub_218840D24((v79 > 1), v80 + 1, 1, v77);
          *v106 = v77;
        }

        ++v71;
        *(v77 + 2) = v80 + 1;
        v81 = &v77[16 * v80];
        *(v81 + 4) = v75;
        *(v81 + 5) = v74;
        swift_endAccess();
        v73 += 2;
        if (v70 != v71)
        {
          continue;
        }
      }

      goto LABEL_51;
    }

    goto LABEL_67;
  }

LABEL_51:

  *&v110 = *__swift_project_boxed_opaque_existential_1(v103 + 8, v103[11]);
  if ((v102)(18, v101) == 6)
  {
    v82 = swift_getObjectType();
    *&v110 = v100;
    *(&v110 + 1) = v99;
    v83 = sub_21894FE24(&v110, v82, &selRef_maxRecipeDownloads);
  }

  else
  {
    v83 = 0;
  }

  OfflineFeedManifest.rootRecipeIDs.getter();
  v85 = v84;
  v86 = *(v84 + 16);
  if (!v86)
  {
LABEL_63:
    sub_218950710(v104, type metadata accessor for OfflineFeedManifest);

    return;
  }

  v87 = 0;
  v88 = v83 & ~(v83 >> 63);
  v89 = (v84 + 40);
  while (v87 < *(v85 + 16))
  {
    if (v88 != v87)
    {
      v91 = *(v89 - 1);
      v90 = *v89;
      v92 = v105;
      swift_beginAccess();
      v93 = *v92;

      v94 = swift_isUniquelyReferenced_nonNull_native();
      *v92 = v93;
      if ((v94 & 1) == 0)
      {
        v93 = sub_218840D24(0, *(v93 + 2) + 1, 1, v93);
        *v105 = v93;
      }

      v96 = *(v93 + 2);
      v95 = *(v93 + 3);
      if (v96 >= v95 >> 1)
      {
        v93 = sub_218840D24((v95 > 1), v96 + 1, 1, v93);
        *v105 = v93;
      }

      ++v87;
      *(v93 + 2) = v96 + 1;
      v97 = &v93[16 * v96];
      *(v97 + 4) = v91;
      *(v97 + 5) = v90;
      swift_endAccess();
      v89 += 2;
      if (v86 != v87)
      {
        continue;
      }
    }

    goto LABEL_63;
  }

LABEL_68:
  __break(1u);
}

id sub_21894FE24(__int128 *a1, uint64_t a2, const char **a3)
{
  v8 = *a1;
  result = sub_218950068(&v8);
  if (result)
  {
    v5 = *a3;
    v6 = result;
    v7 = [result v5];

    return v7;
  }

  return result;
}

id sub_21894FE78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxIssueDownloads];
  *a2 = result;
  return result;
}

double sub_21894FEAC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X4>, uint64_t a5@<X5>, void *a7@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  sub_218950608(0, a4, a5);
  v14 = *(v13 + 64);
  *a7 = v12;
  a7[1] = v11;
  a7[2] = a2;
  sub_2189506A8(a3, a7 + v14, type metadata accessor for OfflineContentRequest.Source);
  type metadata accessor for OfflineContentRequest(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

double sub_21894FF58(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  v6 = qword_280F617D0;
  v7 = sub_219BF6214();
  sub_219BE5314("OfflineFeedsOfflineContentContributor: will prepare to contribute", 65, 2, &dword_2186C1000, v6, v7, MEMORY[0x277D84F90]);
  sub_219BE1F84();
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;

  sub_219BE1F74();

  return result;
}

id sub_218950068(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = [v1 possiblyUnfetchedAppConfiguration];
  result = [v3 respondsToSelector_];
  if (v2 <= 4)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_46;
        }

        if (result)
        {
          v5 = [v3 offlineDownloadsConfig];
          swift_unknownObjectRelease();
          if (v5)
          {
            v6 = &selRef_sharedWithYouFeedRules;
            goto LABEL_49;
          }

          return 0;
        }
      }

      else
      {
        if (result)
        {
          v5 = [v3 offlineDownloadsConfig];
          swift_unknownObjectRelease();
          if (v5)
          {
            v6 = &selRef_savedFeedRules;
            goto LABEL_49;
          }

          return 0;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      if (v2 == 2)
      {
        if (result)
        {
          v5 = [v3 offlineDownloadsConfig];
          swift_unknownObjectRelease();
          if (v5)
          {
            v6 = &selRef_todayFeedRules;
            goto LABEL_49;
          }

          return 0;
        }

        goto LABEL_60;
      }

      if (v2 != 3)
      {
        if (result)
        {
          v5 = [v3 offlineDownloadsConfig];
          swift_unknownObjectRelease();
          if (v5)
          {
            v6 = &selRef_magazineFeedRules;
            goto LABEL_49;
          }

          return 0;
        }

        goto LABEL_55;
      }

      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_puzzleHubFeedRules;
          goto LABEL_49;
        }

        return 0;
      }
    }

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
    goto LABEL_63;
  }

  if (v2 <= 7)
  {
    if (v2 == 5)
    {
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_sportsFeedRules;
          goto LABEL_49;
        }

        return 0;
      }

      goto LABEL_61;
    }

    if (v2 != 6)
    {
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_historyFeedRules;
LABEL_49:
          v7 = [v5 *v6];

          return v7;
        }

        return 0;
      }

      goto LABEL_58;
    }

    if (result)
    {
      v5 = [v3 offlineDownloadsConfig];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = &selRef_audioFeedRules;
        goto LABEL_49;
      }

      return 0;
    }

    goto LABEL_56;
  }

  switch(v2)
  {
    case 8:
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_recipeBoxFeedRules;
          goto LABEL_49;
        }

        return 0;
      }

      goto LABEL_62;
    case 9:
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_foodHubFeedRules;
          goto LABEL_49;
        }

        return 0;
      }

      goto LABEL_57;
    case 10:
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_recipeCatalogFeedRules;
          goto LABEL_49;
        }

        return 0;
      }

      goto LABEL_59;
  }

LABEL_46:
  if (result)
  {
    v5 = [v3 offlineDownloadsConfig];
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = &selRef_puzzleTypeFeedRules;
      goto LABEL_49;
    }

    return 0;
  }

LABEL_63:
  __break(1u);
  return result;
}

unint64_t sub_218950530()
{
  result = qword_280E8F1C0;
  if (!qword_280E8F1C0)
  {
    sub_2186E7AE8(255, &unk_280E8F1D0, type metadata accessor for OfflineContentRequest, MEMORY[0x277D83940]);
    sub_2187FADB8(qword_280ECA570, type metadata accessor for OfflineContentRequest, &unk_219C68B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F1C0);
  }

  return result;
}

void sub_218950608(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    type metadata accessor for OfflineContentRequest.Source(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_2189506A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218950710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218950820(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_219BF7214();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

void sub_218950928(uint64_t a1)
{
  if (!qword_280EE5750)
  {
    type metadata accessor for FollowingModel(255);
    sub_2187490E4();
    sub_2187FADB8(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5750);
    }
  }
}

void sub_2189509E0(uint64_t a1)
{
  if (!qword_280EE4DA0)
  {
    type metadata accessor for FollowingSectionLayoutDescriptor(255);
    type metadata accessor for FollowingLayoutModel(255);
    sub_2187FADB8(&unk_280EA6930, type metadata accessor for FollowingSectionLayoutDescriptor, &unk_219C7A7A4);
    sub_2187FADB8(&qword_280ECEC20, type metadata accessor for FollowingLayoutModel, &unk_219C1B908);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4DA0);
    }
  }
}

void sub_218950ACC(uint64_t a1)
{
  if (!qword_280EE3760)
  {
    type metadata accessor for FollowingModel(255);
    sub_2187490E4();
    sub_2187FADB8(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3760);
    }
  }
}

void sub_218950B84(uint64_t a1)
{
  if (!qword_280EE5C70)
  {
    type metadata accessor for FollowingModel(255);
    sub_2187FADB8(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5C70);
    }
  }
}

void sub_218950C18(uint64_t a1)
{
  if (!qword_280EE5060)
  {
    type metadata accessor for FollowingLayoutModel(255);
    sub_2187FADB8(&qword_280ECEC20, type metadata accessor for FollowingLayoutModel, &unk_219C1B908);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5060);
    }
  }
}

void sub_218950D5C(uint64_t a1)
{
  if (!qword_27CC0AE08)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    type metadata accessor for MagazineCatalogModel(255);
    sub_2187FADB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor, &unk_219C59554);
    sub_2187FADB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel, &unk_219C20338);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AE08);
    }
  }
}

void sub_218950E48(uint64_t a1)
{
  if (!qword_27CC0AE20)
  {
    type metadata accessor for MagazineCatalogLayoutSectionDescriptor(255);
    type metadata accessor for MagazineCatalogLayoutModel(255);
    sub_2187FADB8(&qword_27CC0AD38, type metadata accessor for MagazineCatalogLayoutSectionDescriptor, &unk_219C09C58);
    sub_2187FADB8(&qword_27CC0AE30, type metadata accessor for MagazineCatalogLayoutModel, &unk_219C5B2BC);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AE20);
    }
  }
}

void sub_218950F34(uint64_t a1)
{
  if (!qword_27CC0AE38)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    type metadata accessor for MagazineCatalogModel(255);
    sub_2187FADB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor, &unk_219C59554);
    sub_2187FADB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel, &unk_219C20338);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AE38);
    }
  }
}

double sub_218951020(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

double sub_21895102C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_218951038(uint64_t a1)
{
  if (!qword_280EE5808)
  {
    sub_2189510B4();
    sub_218951108();
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5808);
    }
  }
}

unint64_t sub_2189510B4()
{
  result = qword_280EE26A0;
  if (!qword_280EE26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE26A0);
  }

  return result;
}

unint64_t sub_218951108()
{
  result = qword_280EC4660;
  if (!qword_280EC4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4660);
  }

  return result;
}

void sub_21895115C(uint64_t a1)
{
  if (!qword_280EE4DB0)
  {
    type metadata accessor for MagazineSectionBarLayoutModel(255);
    sub_218951214();
    sub_2187FADB8(&qword_280EB01F0, type metadata accessor for MagazineSectionBarLayoutModel, &unk_219CC8320);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4DB0);
    }
  }
}

unint64_t sub_218951214()
{
  result = qword_280EE2500;
  if (!qword_280EE2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2500);
  }

  return result;
}

void sub_218951268(uint64_t a1)
{
  if (!qword_280EE3798)
  {
    sub_2189510B4();
    sub_218951108();
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3798);
    }
  }
}

void sub_2189512E4(uint64_t a1)
{
  if (!qword_280EE50A0)
  {
    type metadata accessor for MagazineSectionBarLayoutModel(255);
    sub_2187FADB8(&qword_280EB01F0, type metadata accessor for MagazineSectionBarLayoutModel, &unk_219CC8320);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE50A0);
    }
  }
}

void sub_218951378(uint64_t a1)
{
  if (!qword_280EE5990)
  {
    sub_218931D04();
    sub_218931D5C();
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5990);
    }
  }
}

void sub_2189513F4(uint64_t a1)
{
  if (!qword_280EE4E28)
  {
    sub_218951470();
    sub_2189514C4();
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4E28);
    }
  }
}

unint64_t sub_218951470()
{
  result = qword_280EA1FB0[0];
  if (!qword_280EA1FB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA1FB0);
  }

  return result;
}

unint64_t sub_2189514C4()
{
  result = qword_280EC9D18[0];
  if (!qword_280EC9D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC9D18);
  }

  return result;
}

void sub_218951518(uint64_t a1)
{
  if (!qword_280EE3650)
  {
    sub_218931D04();
    sub_218931D5C();
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3650);
    }
  }
}

void sub_218951594(uint64_t a1)
{
  if (!qword_27CC0AE58)
  {
    type metadata accessor for MagazineGridItemModel(255);
    sub_21895164C();
    sub_2187FADB8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AE58);
    }
  }
}

unint64_t sub_21895164C()
{
  result = qword_27CC0AE60;
  if (!qword_27CC0AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AE60);
  }

  return result;
}

void sub_2189516A0(uint64_t a1)
{
  if (!qword_27CC0AE70)
  {
    type metadata accessor for MagazineGridLayoutModel(255);
    sub_218951758();
    sub_2187FADB8(&unk_27CC0AE80, type metadata accessor for MagazineGridLayoutModel, &unk_219C42DE8);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AE70);
    }
  }
}

unint64_t sub_218951758()
{
  result = qword_27CC14E70;
  if (!qword_27CC14E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14E70);
  }

  return result;
}

void sub_2189517AC(uint64_t a1)
{
  if (!qword_27CC11EA0)
  {
    type metadata accessor for MagazineGridItemModel(255);
    sub_21895164C();
    sub_2187FADB8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11EA0);
    }
  }
}

void sub_218951864(uint64_t a1)
{
  if (!qword_27CC0C8E0)
  {
    sub_21878D8D8();
    sub_21878D92C();
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C8E0);
    }
  }
}

void sub_2189518E0(uint64_t a1)
{
  if (!qword_27CC0AEA0)
  {
    sub_21878E0F4();
    sub_21878E148();
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AEA0);
    }
  }
}

void sub_21895195C(uint64_t a1)
{
  if (!qword_27CC0C900)
  {
    sub_21878D8D8();
    sub_21878D92C();
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C900);
    }
  }
}

void sub_2189519D8(uint64_t a1)
{
  if (!qword_27CC0AED0)
  {
    type metadata accessor for ChannelPickerElementModel(255);
    sub_218951A90();
    sub_2187FADB8(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AED0);
    }
  }
}

unint64_t sub_218951A90()
{
  result = qword_27CC0F980;
  if (!qword_27CC0F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F980);
  }

  return result;
}

void sub_218951AE4(uint64_t a1)
{
  if (!qword_27CC0F450)
  {
    type metadata accessor for ChannelPickerLayoutSectionDescriptor(255);
    type metadata accessor for ChannelPickerLayoutModel(255);
    sub_2187FADB8(&unk_27CC0AEF0, type metadata accessor for ChannelPickerLayoutSectionDescriptor, &unk_219CAAEB8);
    sub_2187FADB8(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F450);
    }
  }
}

void sub_218951BD0(uint64_t a1)
{
  if (!qword_27CC0AF00)
  {
    type metadata accessor for ChannelPickerElementModel(255);
    sub_218951A90();
    sub_2187FADB8(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AF00);
    }
  }
}

void sub_218951C88(uint64_t a1)
{
  if (!qword_27CC0AF10)
  {
    type metadata accessor for ChannelPickerElementModel(255);
    sub_2187FADB8(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AF10);
    }
  }
}

void sub_218951D1C(uint64_t a1)
{
  if (!qword_27CC0F470)
  {
    type metadata accessor for ChannelPickerLayoutModel(255);
    sub_2187FADB8(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel, &unk_219C1543C);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F470);
    }
  }
}

void sub_218951DB0(uint64_t a1)
{
  if (!qword_280EE5930)
  {
    type metadata accessor for MagazineFeedSectionDescriptor(255);
    type metadata accessor for MagazineFeedModel(255);
    sub_2187FADB8(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    sub_2187FADB8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5930);
    }
  }
}

void sub_218951E9C(uint64_t a1)
{
  if (!qword_280EE4DF0)
  {
    type metadata accessor for MagazineFeedLayoutModel(255);
    sub_2187EEA78();
    sub_2187FADB8(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4DF0);
    }
  }
}

void sub_218951F54(uint64_t a1)
{
  if (!qword_280EE3600)
  {
    type metadata accessor for MagazineFeedSectionDescriptor(255);
    type metadata accessor for MagazineFeedModel(255);
    sub_2187FADB8(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    sub_2187FADB8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3600);
    }
  }
}

void sub_218952040(uint64_t a1)
{
  if (!qword_27CC0AF28)
  {
    sub_2189520BC();
    sub_218952110();
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AF28);
    }
  }
}

unint64_t sub_2189520BC()
{
  result = qword_27CC0AF30;
  if (!qword_27CC0AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AF30);
  }

  return result;
}

unint64_t sub_218952110()
{
  result = qword_27CC0AF38;
  if (!qword_27CC0AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AF38);
  }

  return result;
}

void sub_218952164(uint64_t a1)
{
  if (!qword_27CC0AF40)
  {
    type metadata accessor for SportsNavigationLayoutSectionDescriptor(255);
    sub_2187FADB8(&qword_27CC0F4E0, type metadata accessor for SportsNavigationLayoutSectionDescriptor, &unk_219CD27B8);
    sub_21895221C();
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AF40);
    }
  }
}

unint64_t sub_21895221C()
{
  result = qword_27CC0AF50;
  if (!qword_27CC0AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AF50);
  }

  return result;
}

void sub_218952270(uint64_t a1)
{
  if (!qword_27CC0AF58)
  {
    sub_2189520BC();
    sub_218952110();
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AF58);
    }
  }
}

void sub_2189522EC(uint64_t a1)
{
  if (!qword_27CC0AF80)
  {
    type metadata accessor for SportsManagementSectionDescriptor(255);
    type metadata accessor for SportsManagementModel(255);
    sub_2187FADB8(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor, &unk_219C21994);
    sub_2187FADB8(&qword_27CC0AF90, type metadata accessor for SportsManagementModel, &unk_219CB52F8);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AF80);
    }
  }
}

void sub_2189523D8(uint64_t a1)
{
  if (!qword_27CC0AF98)
  {
    type metadata accessor for SportsManagementLayoutSectionDescriptor(255);
    type metadata accessor for SportsManagementLayoutModel(255);
    sub_2187FADB8(&qword_27CC0AFA0, type metadata accessor for SportsManagementLayoutSectionDescriptor, &unk_219C8DC20);
    sub_2187FADB8(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel, &unk_219CC98FC);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AF98);
    }
  }
}

void sub_2189524C4(uint64_t a1)
{
  if (!qword_27CC0AFB0)
  {
    type metadata accessor for SportsManagementSectionDescriptor(255);
    type metadata accessor for SportsManagementModel(255);
    sub_2187FADB8(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor, &unk_219C21994);
    sub_2187FADB8(&qword_27CC0AF90, type metadata accessor for SportsManagementModel, &unk_219CB52F8);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AFB0);
    }
  }
}

void sub_2189525B0(uint64_t a1)
{
  if (!qword_27CC0AFC0)
  {
    type metadata accessor for SportsManagementModel(255);
    sub_2187FADB8(&qword_27CC0AF90, type metadata accessor for SportsManagementModel, &unk_219CB52F8);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AFC0);
    }
  }
}

void sub_218952644(uint64_t a1)
{
  if (!qword_27CC0AFC8)
  {
    type metadata accessor for SportsManagementLayoutModel(255);
    sub_2187FADB8(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel, &unk_219CC98FC);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AFC8);
    }
  }
}

uint64_t sub_21895275C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_218952834(uint64_t a1)
{
  if (!qword_27CC0AFD8)
  {
    sub_2189528B0();
    sub_218952904();
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AFD8);
    }
  }
}

unint64_t sub_2189528B0()
{
  result = qword_27CC0AFE0;
  if (!qword_27CC0AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AFE0);
  }

  return result;
}

unint64_t sub_218952904()
{
  result = qword_27CC0AFE8;
  if (!qword_27CC0AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AFE8);
  }

  return result;
}

void sub_218952958(uint64_t a1)
{
  if (!qword_27CC0AFF0)
  {
    sub_2189529D4();
    sub_218952A28();
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AFF0);
    }
  }
}

unint64_t sub_2189529D4()
{
  result = qword_27CC0F5F0;
  if (!qword_27CC0F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F5F0);
  }

  return result;
}

unint64_t sub_218952A28()
{
  result = qword_27CC0B000;
  if (!qword_27CC0B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B000);
  }

  return result;
}

void sub_218952A7C(uint64_t a1)
{
  if (!qword_27CC0B008)
  {
    sub_2189528B0();
    sub_218952904();
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B008);
    }
  }
}

void sub_218952AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_218952B60(uint64_t a1)
{
  if (!qword_27CC0B030)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor(255);
    type metadata accessor for SportsManagementDetailModel(255);
    sub_2187FADB8(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor, &unk_219CA2208);
    sub_2187FADB8(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B030);
    }
  }
}

void sub_218952C4C(uint64_t a1)
{
  if (!qword_27CC0B048)
  {
    type metadata accessor for SportsManagementDetailLayoutSectionDescriptor(255);
    type metadata accessor for SportsManagementDetailLayoutModel(255);
    sub_2187FADB8(&qword_27CC0B050, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor, &unk_219CB8FF8);
    sub_2187FADB8(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel, &unk_219CC99C4);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B048);
    }
  }
}

void sub_218952D38(uint64_t a1)
{
  if (!qword_27CC0B060)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor(255);
    type metadata accessor for SportsManagementDetailModel(255);
    sub_2187FADB8(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor, &unk_219CA2208);
    sub_2187FADB8(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B060);
    }
  }
}

void sub_218952E24(uint64_t a1)
{
  if (!qword_27CC0B070)
  {
    type metadata accessor for SportsManagementDetailModel(255);
    sub_2187FADB8(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B070);
    }
  }
}

void sub_218952EB8(uint64_t a1)
{
  if (!qword_27CC0B078)
  {
    type metadata accessor for SportsManagementDetailLayoutModel(255);
    sub_2187FADB8(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel, &unk_219CC99C4);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B078);
    }
  }
}

void sub_218952F4C(uint64_t a1)
{
  if (!qword_27CC0B090)
  {
    type metadata accessor for ChannelIssuesModel(255);
    sub_218953004();
    sub_2187FADB8(&qword_27CC0B0A0, type metadata accessor for ChannelIssuesModel, &unk_219CC1FB0);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B090);
    }
  }
}

unint64_t sub_218953004()
{
  result = qword_27CC0C1F0;
  if (!qword_27CC0C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C1F0);
  }

  return result;
}

void sub_218953058(uint64_t a1)
{
  if (!qword_27CC0F850)
  {
    type metadata accessor for ChannelIssuesLayoutModel(255);
    sub_218953110();
    sub_2187FADB8(&qword_27CC0F860, type metadata accessor for ChannelIssuesLayoutModel, &unk_219CB977C);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0F850);
    }
  }
}

unint64_t sub_218953110()
{
  result = qword_27CC0B0B0;
  if (!qword_27CC0B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B0B0);
  }

  return result;
}

void sub_218953164(uint64_t a1)
{
  if (!qword_27CC0B0C0)
  {
    type metadata accessor for ChannelIssuesModel(255);
    sub_218953004();
    sub_2187FADB8(&qword_27CC0B0A0, type metadata accessor for ChannelIssuesModel, &unk_219CC1FB0);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B0C0);
    }
  }
}

void sub_21895321C(uint64_t a1)
{
  if (!qword_27CC0B0D0)
  {
    type metadata accessor for ShortcutsModel(255);
    sub_2189532D4();
    sub_2187FADB8(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B0D0);
    }
  }
}

unint64_t sub_2189532D4()
{
  result = qword_27CC23B70;
  if (!qword_27CC23B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC23B70);
  }

  return result;
}

void sub_218953328(uint64_t a1)
{
  if (!qword_27CC0B0E8)
  {
    type metadata accessor for ShortcutsLayoutModel(255);
    sub_2189533E0();
    sub_2187FADB8(&qword_27CC0B0F8, type metadata accessor for ShortcutsLayoutModel, &unk_219CCCD88);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B0E8);
    }
  }
}

unint64_t sub_2189533E0()
{
  result = qword_27CC0B0F0;
  if (!qword_27CC0B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B0F0);
  }

  return result;
}

void sub_218953434(uint64_t a1)
{
  if (!qword_27CC0B100)
  {
    type metadata accessor for ShortcutsModel(255);
    sub_2189532D4();
    sub_2187FADB8(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B100);
    }
  }
}

void sub_2189534EC(uint64_t a1)
{
  if (!qword_27CC0B110)
  {
    type metadata accessor for ShortcutsModel(255);
    sub_2187FADB8(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B110);
    }
  }
}

void sub_218953580(uint64_t a1)
{
  if (!qword_27CC0B118)
  {
    type metadata accessor for ShortcutsLayoutModel(255);
    sub_2187FADB8(&qword_27CC0B0F8, type metadata accessor for ShortcutsLayoutModel, &unk_219CCCD88);
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B118);
    }
  }
}

uint64_t sub_218953640(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v11 = *v7;
    v12 = *v7 >> 62;
    v18 = a5;
    if (!v12)
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_219BF7214();
  if (result < v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v16 = sub_219BF7214();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (v17)
  {
    goto LABEL_18;
  }

  v9(result, 1);

  return v18(v10, v8, 1, v6);
}

void sub_218953748(uint64_t a1)
{
  if (!qword_27CC0C210)
  {
    type metadata accessor for ChannelIssuesModel(255);
    sub_2187FADB8(&qword_27CC0B0A0, type metadata accessor for ChannelIssuesModel, &unk_219CC1FB0);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C210);
    }
  }
}

void sub_2189537DC(uint64_t a1)
{
  if (!qword_27CC0B130)
  {
    type metadata accessor for MagazineCatalogModel(255);
    sub_2187FADB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel, &unk_219C20338);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B130);
    }
  }
}

void sub_218953870(uint64_t a1)
{
  if (!qword_280EE5BB0)
  {
    type metadata accessor for MagazineFeedModel(255);
    sub_2187FADB8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5BB0);
    }
  }
}

void sub_218953904(uint64_t a1)
{
  if (!qword_280EE57D0)
  {
    type metadata accessor for AudioFeedSectionDescriptor(255);
    type metadata accessor for AudioFeedModel(255);
    sub_2187FADB8(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    sub_2187FADB8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE57D0);
    }
  }
}

void sub_2189539F0(uint64_t a1)
{
  if (!qword_280EE5D00)
  {
    type metadata accessor for SearchModel(255);
    sub_2187FADB8(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5D00);
    }
  }
}

void sub_218953A84(uint64_t a1)
{
  if (!qword_280EE5890)
  {
    type metadata accessor for SearchSectionDescriptor(255);
    type metadata accessor for SearchModel(255);
    sub_2187FADB8(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    sub_2187FADB8(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5890);
    }
  }
}

void sub_218953B70(uint64_t a1)
{
  if (!qword_27CC0FA50)
  {
    type metadata accessor for RecipeBoxSectionDescriptor(255);
    type metadata accessor for RecipeBoxModel(255);
    sub_2187FADB8(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
    sub_2187FADB8(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0FA50);
    }
  }
}

void sub_218953C5C(uint64_t a1)
{
  if (!qword_27CC0B150)
  {
    type metadata accessor for RecipeBoxSectionDescriptor(255);
    type metadata accessor for RecipeBoxModel(255);
    sub_2187FADB8(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
    sub_2187FADB8(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B150);
    }
  }
}

void sub_218953D48(uint64_t a1)
{
  if (!qword_280EE5790)
  {
    type metadata accessor for SavedFeedSectionDescriptor(255);
    type metadata accessor for SavedFeedModel(255);
    sub_2187FADB8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
    sub_2187FADB8(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5790);
    }
  }
}

void sub_218953E34(uint64_t a1)
{
  if (!qword_280EE3668)
  {
    type metadata accessor for SavedFeedSectionDescriptor(255);
    type metadata accessor for SavedFeedModel(255);
    sub_2187FADB8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
    sub_2187FADB8(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3668);
    }
  }
}

void sub_218953F20(uint64_t a1)
{
  if (!qword_27CC0FB10)
  {
    type metadata accessor for MyMagazinesModel(255);
    sub_2187FADB8(&qword_27CC0B160, type metadata accessor for MyMagazinesModel, &unk_219C3BA30);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0FB10);
    }
  }
}

void sub_218953FB4(uint64_t a1)
{
  if (!qword_27CC0B168)
  {
    type metadata accessor for MyRecipesModel(255);
    sub_21895406C();
    sub_2187FADB8(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B168);
    }
  }
}

unint64_t sub_21895406C()
{
  result = qword_27CC0B170;
  if (!qword_27CC0B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B170);
  }

  return result;
}

void sub_2189540C0(uint64_t a1)
{
  if (!qword_27CC0B180)
  {
    type metadata accessor for MyRecipesModel(255);
    sub_21895406C();
    sub_2187FADB8(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B180);
    }
  }
}

void sub_218954178(uint64_t a1)
{
  if (!qword_280EE5970)
  {
    type metadata accessor for HistoryFeedSectionDescriptor(255);
    type metadata accessor for HistoryFeedModel(255);
    sub_2187FADB8(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
    sub_2187FADB8(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5970);
    }
  }
}

void sub_218954264(uint64_t a1)
{
  if (!qword_280EE3638)
  {
    type metadata accessor for HistoryFeedSectionDescriptor(255);
    type metadata accessor for HistoryFeedModel(255);
    sub_2187FADB8(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
    sub_2187FADB8(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3638);
    }
  }
}

void sub_218954350(uint64_t a1)
{
  if (!qword_280EE5840)
  {
    type metadata accessor for TagFeedModel(255);
    sub_2186F7410();
    sub_2187FADB8(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5840);
    }
  }
}

void sub_218954408(uint64_t a1)
{
  if (!qword_280EE36C0)
  {
    type metadata accessor for TagFeedModel(255);
    sub_2186F7410();
    sub_2187FADB8(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE36C0);
    }
  }
}

void SimpleContainerViewController.__allocating_init(contentViewController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7NewsUI229SimpleContainerViewController_contentViewController] = a1;
  v22.receiver = v3;
  v22.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  [v5 addChildViewController_];
  v6 = [v4 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  [v6 setAutoresizingMask_];

  v8 = [v4 view];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v5 view];

  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v9 setFrame_];
  v19 = [v5 view];

  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = [v4 view];
  if (v20)
  {
    v21 = v20;
    [v19 addSubview_];

    [v4 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

void SimpleContainerViewController.init(contentViewController:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7NewsUI229SimpleContainerViewController_contentViewController] = a1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for SimpleContainerViewController();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  [v4 addChildViewController_];
  v5 = [v3 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v5 setAutoresizingMask_];

  v7 = [v3 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v4 view];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v8 setFrame_];
  v18 = [v4 view];

  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = [v3 view];
  if (v19)
  {
    v20 = v19;
    [v18 addSubview_];

    [v3 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

id SimpleContainerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SimpleContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_219BF53D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SimpleContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimpleContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_218954B5C(unint64_t a1)
{
  v41 = sub_219BDB954();
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v32 - v5;
  v6 = type metadata accessor for WebEmbedShareItem(0);
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v13 = 0;
    v14 = a1 & 0xC000000000000001;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = (v2 + 4);
    v2 = MEMORY[0x277D84F90];
    v16 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v35 = a1 & 0xC000000000000001;
    v36 = i;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    while (v14)
    {
      v17 = MEMORY[0x21CECE0F0](v13, a1, v9);
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_18;
      }

LABEL_9:
      if ([v17 v16[261]] || (objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) == 0))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = a1;
        v21 = [v19 url];
        v22 = v11;
        v23 = v40;
        sub_219BDB8B4();
        swift_unknownObjectRelease();

        v24 = *v34;
        v25 = v39;
        v26 = v41;
        (*v34)(v39, v23, v41);
        v27 = v37;
        v24(v37, v25, v26);
        v28 = v27;
        v11 = v22;
        sub_218954F3C(v28, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2191F673C(0, v2[2] + 1, 1, v2);
        }

        v30 = v2[2];
        v29 = v2[3];
        a1 = v20;
        v15 = v33;
        v16 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
        if (v30 >= v29 >> 1)
        {
          v2 = sub_2191F673C((v29 > 1), v30 + 1, 1, v2);
        }

        i = v36;
        v2[2] = v30 + 1;
        sub_218954F3C(v11, v2 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30);
        v14 = v35;
      }

      ++v13;
      if (v18 == i)
      {
        return v2;
      }
    }

    if (v13 >= *(v15 + 16))
    {
      goto LABEL_19;
    }

    v17 = *(a1 + 8 * v13 + 32);
    swift_unknownObjectRetain();
    v18 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t type metadata accessor for WebEmbedShareItem(uint64_t a1)
{
  result = qword_27CC0B198;
  if (!qword_27CC0B198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218954F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedShareItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218954FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21895500C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDB954();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218955088(uint64_t a1)
{
  result = sub_219BDB954();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_21895512C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (v2 == 1)
  {
    swift_getObjectType();
    swift_getKeyPath();
    sub_219BF6A94();
  }

  else
  {
    v6 = [objc_opt_self() currentDevice];
    [v6 userInterfaceIdiom];
  }

  return v5;
}

id sub_218955228@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxArticleDownloads];
  *a2 = result;
  return result;
}

uint64_t sub_21895525C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189552A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21895512C(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2189552D8(uint64_t a1)
{
  v3 = type metadata accessor for SearchFilterItem(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v27 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v5, 0);
  v6 = v35;
  v7 = a1 + 56;
  result = sub_219BF7174();
  v9 = result;
  v10 = 0;
  v28 = a1 + 64;
  v29 = v5;
  v30 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 36);
    v33 = v10;
    v34 = v13;
    v14 = v31;
    sub_218957A08(*(a1 + 48) + *(v32 + 72) * v9, v31);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    sub_21892DEAC(v15, v16);
    result = sub_218957A6C(v14);
    v35 = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_21870B65C((v17 > 1), v18 + 1, 1);
      v6 = v35;
    }

    *(v6 + 16) = v18 + 1;
    v19 = v6 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v30;
    v20 = *(v30 + 8 * v12);
    if ((v20 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v9 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v12 << 6;
      v23 = v12 + 1;
      v24 = (v28 + 8 * v12);
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_2187BC250(v9, v34, 0);
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_2187BC250(v9, v34, 0);
    }

LABEL_4:
    v10 = v33 + 1;
    v9 = v11;
    if (v33 + 1 == v29)
    {
      return v6;
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
  return result;
}

uint64_t sub_218955598(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CECE0F0](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v10 = *(v8 + 16) == a1 && *(v8 + 24) == a2;
      if (v10 || (sub_219BF78F4() & 1) != 0)
      {
        return v8;
      }

      ++v7;
      if (v9 == i)
      {
        return 0;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v8 = *(v5 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

void sub_2189556A4(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v25 = off_282A32368;
    v26 = v3 & 0xC000000000000001;
    v21 = v3 + 32;
    v22 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = a1 + 56;

    v6 = 0;
    v24 = i;
    v20 = v3;
    while (v26)
    {
      v7 = MEMORY[0x21CECE0F0](v6, v3);
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_30;
      }

LABEL_11:
      if (*(a1 + 16))
      {
        v9 = *(v7 + 16);
        v10 = *(v7 + 24);
        sub_219BF7AA4();

        sub_219BF5524();
        v11 = sub_219BF7AE4();
        v12 = -1 << *(a1 + 32);
        v13 = v11 & ~v12;
        if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while (1)
          {
            v15 = (*(a1 + 48) + 16 * v13);
            v16 = *v15 == v9 && v15[1] == v10;
            if (v16 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v17 = 1;
          i = v24;
          goto LABEL_25;
        }

LABEL_20:

        i = v24;
      }

      if (*(v23 + 56))
      {
        v17 = 0;
      }

      else
      {
        v17 = 2 * (*(a1 + 16) != 0);
      }

LABEL_25:
      v18 = type metadata accessor for RecipeFilterDurationItemViewModel(0);
      if (v17 == (v25)(v18) || *(v7 + 80) == v17)
      {

        if (v6 == i)
        {
          goto LABEL_28;
        }
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_2189579C0(&qword_27CC0B230, type metadata accessor for RecipeFilterDurationItemViewModel, &unk_219C137E8);
        sub_219BDC1F4();

        i = v24;

        v3 = v20;
        if (v6 == v24)
        {
LABEL_28:

          return;
        }
      }
    }

    if (v6 >= *(v22 + 16))
    {
      goto LABEL_31;
    }

    v7 = *(v21 + 8 * v6);

    v8 = __OFADD__(v6++, 1);
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }
}

void sub_2189559D0(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v25 = off_282A613B8;
    v26 = v3 & 0xC000000000000001;
    v21 = v3 + 32;
    v22 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = a1 + 56;

    v6 = 0;
    v24 = i;
    v20 = v3;
    while (v26)
    {
      v7 = MEMORY[0x21CECE0F0](v6, v3);
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_30;
      }

LABEL_11:
      if (*(a1 + 16))
      {
        v9 = *(v7 + 16);
        v10 = *(v7 + 24);
        sub_219BF7AA4();

        sub_219BF5524();
        v11 = sub_219BF7AE4();
        v12 = -1 << *(a1 + 32);
        v13 = v11 & ~v12;
        if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while (1)
          {
            v15 = (*(a1 + 48) + 16 * v13);
            v16 = *v15 == v9 && v15[1] == v10;
            if (v16 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v17 = 1;
          i = v24;
          goto LABEL_25;
        }

LABEL_20:

        i = v24;
      }

      if (*(v23 + 56))
      {
        v17 = 0;
      }

      else
      {
        v17 = 2 * (*(a1 + 16) != 0);
      }

LABEL_25:
      v18 = type metadata accessor for RecipeFilterTagCapsuleViewModel(0);
      if (v17 == (v25)(v18) || *(v7 + 48) == v17)
      {

        if (v6 == i)
        {
          goto LABEL_28;
        }
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_2189579C0(&qword_27CC0B238, type metadata accessor for RecipeFilterTagCapsuleViewModel, &unk_219C61B50);
        sub_219BDC1F4();

        i = v24;

        v3 = v20;
        if (v6 == v24)
        {
LABEL_28:

          return;
        }
      }
    }

    if (v6 >= *(v22 + 16))
    {
      goto LABEL_31;
    }

    v7 = *(v21 + 8 * v6);

    v8 = __OFADD__(v6++, 1);
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }
}

void sub_218955CFC(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (v4)
  {
    v3 = *v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  if (v4 > 1)
  {
    v3 = *v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  v5 = *(v3 + 16);

  *a1 = v5;
  a1[1] = v6;
}

double sub_218955D4C()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  swift_beginAccess();

  return result;
}

double sub_218955E04@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

double sub_218955EC4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC1F4();

  return result;
}

void sub_218955F90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

double sub_218955FF8@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  *a1 = *(v1 + 24);

  return result;
}

double sub_2189560A4()
{
  sub_218956A74();
  swift_getKeyPath();
  v2 = v0;
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    v2 = v0;
    sub_219BDC204();

    v2 = *(v0 + 24);

    sub_219A4FDAC(&v2);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_2189561C8(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  v3 = *(v1 + 24);

  v4 = sub_21931C79C(v2, v3);

  if ((v4 & 1) == 0)
  {
    sub_2189560A4();
  }

  return result;
}

double sub_2189562A8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  *a2 = *(v3 + 24);

  return result;
}

double sub_218956354(uint64_t *a1)
{
  v2 = *a1;

  return sub_218956390(&v2);
}

double sub_218956390(uint64_t *a1)
{
  v1 = *a1;

  v3 = sub_21931C79C(v2, v1);

  if (v3)
  {
    v6 = v1;
    return sub_2189561C8(&v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
    sub_219BDC1F4();
  }

  return result;
}

double sub_2189564C4(uint64_t a1, uint64_t a2)
{
  v3 = a2;

  return sub_2189561C8(&v3);
}

uint64_t sub_218956508()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  return *(v0 + 32);
}

void sub_2189565AC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v4;
}

double sub_218956690(uint64_t a1, char a2)
{
  if ((*(v2 + 40) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 32) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 32) = a1;
    *(v2 + 40) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC1F4();

  return result;
}

uint64_t sub_2189567C4()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  return *(v0 + 48);
}

double sub_218956868(uint64_t a1, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC1F4();

  return result;
}

uint64_t sub_21895699C(uint64_t result, uint64_t a2, char a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3 & 1;
  return result;
}

uint64_t sub_2189569AC()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  return swift_unknownObjectWeakLoadStrong();
}

double sub_218956A74()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  v2 = *(v0 + 24);
  swift_getKeyPath();

  sub_219BDC204();

  swift_getKeyPath();
  sub_219BDC224();

  swift_beginAccess();
  sub_218956BEC(&v2);
  swift_endAccess();

  swift_getKeyPath();
  sub_219BDC214();

  return result;
}

void sub_218956BEC(uint64_t *a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = (*v1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v6 >> 62;
      v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      if (v6 >> 62)
      {
        v10 = v8;
      }

      else
      {
        v10 = v5;
      }

      if (v7 <= 1)
      {
        v9 = v10;
      }

      v11 = *(v9 + 16);
      v12 = *(v9 + 24);

      v13 = *(v3 + 16);

      if (v13 && (v14 = sub_21870F700(v11, v12), (v15 & 1) != 0))
      {
        v16 = *(*(v3 + 56) + 24 * v14 + 16);
      }

      else
      {
        v16 = MEMORY[0x277D84FA0];
      }

      v17 = sub_2189552D8(v16);

      v18 = sub_218845F78(v17);

      if (v7)
      {

        sub_2189559D0(v18);
      }

      else
      {
        sub_2189556A4(v18);
      }

      --v2;
    }

    while (v2);
  }
}

double sub_218956D40(uint64_t a1)
{
  v3[1] = a1;
  swift_getKeyPath();
  v3[0] = v1;
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);

  sub_219BDC204();

  v3[0] = *(v1 + 24);

  sub_218956BEC(v3);

  swift_getKeyPath();
  v3[0] = v1;
  sub_219BDC1F4();

  swift_getKeyPath();
  v3[0] = v1;
  sub_219BDC204();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    v3[0] = v1;
    sub_219BDC204();

    v3[0] = *(v1 + 24);

    sub_219A4FDAC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_218956F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v30 = a3;
  v34 = a2;
  v35 = a1;
  v29 = type metadata accessor for SearchFilterItem(0);
  MEMORY[0x28223BE20](v29);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC7NewsUI221RecipeFilterViewModel___observationRegistrar;
  v39 = v6;
  v31 = sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  v32 = v10;
  sub_219BDC204();

  swift_beginAccess();
  v11 = *(v6 + 16);
  v12 = *(v11 + 16);

  if (v12)
  {
    v13 = 0;
    while (1)
    {
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        return;
      }

      v14 = *(v11 + 8 * v13++ + 32);
      v15 = v14 >> 62;
      v16 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      if (!(v14 >> 62))
      {
        v16 = v14;
      }

      if (v15 > 1)
      {
        v16 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);

      if (v18 == a4 && v17 == a5)
      {
        break;
      }

      v20 = sub_219BF78F4();

      if (v20)
      {
        goto LABEL_16;
      }

      if (v12 == v13)
      {
        goto LABEL_14;
      }
    }

LABEL_16:

    v21 = v34;
    if (v15)
    {
      v14 &= 0x3FFFFFFFFFFFFFFFuLL;

      v23 = sub_218955598(v35, v21);

      if (v23)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v22 = sub_218955598(v35, v34);
      if (v22)
      {
        v23 = v22;
LABEL_20:
        v25 = *(v23 + 32);
        v24 = *(v23 + 40);

        v26 = v33;
        sub_219BDBCB4();
        v27 = v35;
        *(v26 + 16) = v35;
        *(v26 + 24) = v21;
        *(v26 + 32) = v30 & 1;
        *v26 = v25;
        *(v26 + 8) = v24;
        v38 = *(v14 + 56);
        swift_getKeyPath();
        v37 = v6;
        sub_21892DEAC(v27, v21);
        sub_219BDC204();

        v37 = v6;
        swift_getKeyPath();
        sub_219BDC224();

        v36 = *(v6 + 24);

        RecipeFilterSelection.updateSelectionByTogglingFilter(sectionID:searchFilterItem:selectionBehavior:)(a4, a5, v26, &v38);
        sub_2189561C8(&v36);
        v37 = v6;
        swift_getKeyPath();
        sub_219BDC214();

        sub_218957A6C(v26);
        return;
      }
    }
  }

  else
  {
LABEL_14:
  }
}

double sub_2189572B8()
{
  swift_getKeyPath();
  v2 = v0;
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    v2 = v0;
    sub_219BDC204();

    v2 = *(v0 + 24);

    sub_219A4FCD8(&v2);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_2189573D8()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  swift_getKeyPath();
  sub_219BDC224();

  v2 = sub_2194AE414(MEMORY[0x277D84F90]);
  sub_2189561C8(&v2);
  v2 = v0;
  swift_getKeyPath();
  sub_219BDC214();

  return result;
}

uint64_t sub_2189574F8()
{

  sub_218774F78(v0 + 64);
  v1 = OBJC_IVAR____TtC7NewsUI221RecipeFilterViewModel___observationRegistrar;
  v2 = sub_219BDC244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeFilterViewModel(uint64_t a1)
{
  result = qword_27CC0B218;
  if (!qword_27CC0B218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218957600(uint64_t a1)
{
  result = sub_219BDC244();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2189576C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_218957720(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2189577CC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B230, type metadata accessor for RecipeFilterDurationItemViewModel, &unk_219C137E8);
  sub_219BDC204();

  *a2 = *(v3 + 80);
}

void sub_21895789C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B238, type metadata accessor for RecipeFilterTagCapsuleViewModel, &unk_219C61B50);
  sub_219BDC204();

  *a2 = *(v3 + 48);
}

void sub_21895796C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 24);
  *(v1 + 40) = v2;
}

uint64_t sub_2189579C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218957A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFilterItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218957A6C(uint64_t a1)
{
  v2 = type metadata accessor for SearchFilterItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218957AC8()
{
  v1 = *(v0 + 24);

  sub_2189561C8(&v1);
}

void sub_218957B0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

void *sub_218957B38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED49A8, &protocol descriptor for TagViewStylerType, 1);
  result = sub_219BE1E34();
  if (!v89)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE48E8, MEMORY[0x277D6E010], 1);
  result = sub_219BE1E34();
  if (!v87)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9700, &protocol descriptor for AccessoryButtonRendererType, 1);
  result = sub_219BE1E34();
  if (!v85)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBF078, &protocol descriptor for DislikeButtonRendererType, 1);
  result = sub_219BE1E34();
  if (!v83)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EABF20, &protocol descriptor for NotificationSwitchRendererType, 1);
  result = sub_219BE1E34();
  if (!v81)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v68 = v5;
  v69 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v67 = result;
  if (result)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
    v66 = v57;
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
    v65 = v57;
    v12 = MEMORY[0x28223BE20](v11);
    v14 = (v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
    v64 = v57;
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
    v63 = v57;
    v22 = MEMORY[0x28223BE20](v21);
    v24 = (v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = *v9;
    v27 = *v14;
    v28 = *v19;
    v29 = *v24;
    v30 = type metadata accessor for TagViewStyler();
    v79[3] = v30;
    v79[4] = &off_282A770F0;
    v79[0] = v26;
    v61 = type metadata accessor for AccessoryButtonRenderer();
    v77 = v61;
    v78 = &off_282A94AE8;
    v76[0] = v27;
    v60 = type metadata accessor for DislikeButtonRenderer();
    v74 = v60;
    v75 = &off_282A2FA28;
    v73[0] = v28;
    v58 = type metadata accessor for NotificationSwitchRenderer();
    v71 = v58;
    v72 = &off_282A38F48;
    v70[0] = v29;
    v62 = type metadata accessor for TagViewRenderer();
    v31 = swift_allocObject();
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v79, v30);
    v59 = v57;
    v33 = MEMORY[0x28223BE20](v32);
    v35 = (v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35, v33);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    v57[1] = v57;
    v38 = MEMORY[0x28223BE20](v37);
    v40 = (v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40, v38);
    v42 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v43 = MEMORY[0x28223BE20](v42);
    v45 = (v57 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v46 + 16))(v45, v43);
    v47 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v48 = MEMORY[0x28223BE20](v47);
    v50 = (v57 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50, v48);
    v52 = *v35;
    v53 = *v40;
    v54 = *v45;
    v55 = *v50;
    v31[10] = v30;
    v31[11] = &off_282A770F0;
    v31[7] = v52;
    v31[16] = v61;
    v31[17] = &off_282A94AE8;
    v31[21] = v60;
    v31[22] = &off_282A2FA28;
    v31[18] = v54;
    v31[26] = v58;
    v31[27] = &off_282A38F48;
    v31[23] = v55;
    v31[12] = v68;
    v31[13] = v53;
    sub_2186CB1F0(&v86, (v31 + 2));
    v31[28] = v67;
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v73);
    __swift_destroy_boxed_opaque_existential_1(v76);
    __swift_destroy_boxed_opaque_existential_1(v79);
    __swift_destroy_boxed_opaque_existential_1(v80);
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v84);
    result = __swift_destroy_boxed_opaque_existential_1(v88);
    v56 = v69;
    v69[3] = v62;
    v56[4] = &off_282A46F20;
    *v56 = v31;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_21895843C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED49A8, &protocol descriptor for TagViewStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for TagViewStyler();
    v19[3] = v10;
    v19[4] = &off_282A770F0;
    v19[0] = v9;
    v11 = type metadata accessor for TagViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A770F0;
    v12[2] = v18;
    sub_21895F6F8(0, &qword_280EE7100, &type metadata for TagViewLayoutAttributes);
    swift_allocObject();
    v12[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A3D208;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_218958698@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EC8790, &protocolRef_NEFeedNavImageStylerType);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TagViewStyler();
    v6 = swift_allocObject();
    v6[2] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    result = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    v6[3] = result;
    v6[4] = v4;
    a2[3] = v5;
    a2[4] = &off_282A770F0;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218958790(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, qword_280EC8790, &protocolRef_NEFeedNavImageStylerType);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for TagImageApplier();
      v4 = swift_allocObject();
      sub_2186CB1F0(&v5, v4 + 16);
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

void *sub_2189588C4(void *a1, unint64_t *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, a2, a3, 0);
    result = sub_219BE1E34();
    if (v8)
    {
      type metadata accessor for TagImageApplier();
      v7 = swift_allocObject();
      sub_2186CB1F0(&v9, v7 + 16);
      *(v7 + 56) = v8;
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218958A50@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE4FA0, &protocolRef_TSSharedImageCacheType);
  result = sub_219BE1E24();
  if (result)
  {
    a2(0);
    swift_allocObject();
    sub_218754C0C(a3, a4, a5);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE5010, MEMORY[0x277D6DB20], 1);
    result = sub_219BE1E34();
    if (v15)
    {
      v13 = sub_219BE58C4();
      swift_allocObject();
      result = sub_219BE58B4();
      v14 = MEMORY[0x277D6D2B0];
      a6[3] = v13;
      a6[4] = v14;
      *a6 = result;
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

uint64_t sub_218958BB8()
{
  type metadata accessor for FeedNavImageStyler();

  return swift_allocObject();
}

void *sub_218958BEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3578, &protocol descriptor for SeeMoreButtonStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for SeeMoreButtonStyler();
    v19[3] = v10;
    v19[4] = &off_282A5FD00;
    v19[0] = v9;
    v11 = type metadata accessor for SeeMoreButtonRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A5FD00;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A6C9A0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218958E58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBD0D8, &protocol descriptor for SeeMoreButtonRendererType, 1);
  result = sub_219BE1E34();
  if (v44)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280ECFCF0, &protocol descriptor for TitleViewStylerType, 1);
    result = sub_219BE1E34();
    if (v42)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
      v33[1] = v33;
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v33[0] = v33;
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for SeeMoreButtonRenderer();
      v40[3] = v17;
      v40[4] = &off_282A6C9A0;
      v40[0] = v15;
      v18 = type metadata accessor for TitleViewStyler();
      v38 = v18;
      v39 = &off_282A85B98;
      v37[0] = v16;
      v19 = type metadata accessor for TitleViewRenderer();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v40, v17);
      v22 = MEMORY[0x28223BE20](v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v27 = MEMORY[0x28223BE20](v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[10] = v17;
      v20[11] = &off_282A6C9A0;
      v20[7] = v31;
      v36 = &off_282A85B98;
      v35 = v18;
      *&v34 = v32;
      sub_2186CB1F0(&v34, (v20 + 2));
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v40);
      __swift_destroy_boxed_opaque_existential_1(v41);
      result = __swift_destroy_boxed_opaque_existential_1(v43);
      a2[3] = v19;
      a2[4] = &off_282A6AF80;
      *a2 = v20;
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

void *sub_2189592AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBD0D8, &protocol descriptor for SeeMoreButtonRendererType, 1);
  result = sub_219BE1E34();
  if (v44)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280ECFCF0, &protocol descriptor for TitleViewStylerType, 1);
    result = sub_219BE1DF4();
    if (v42)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
      v33[1] = v33;
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v33[0] = v33;
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for SeeMoreButtonRenderer();
      v40[3] = v17;
      v40[4] = &off_282A6C9A0;
      v40[0] = v15;
      v18 = type metadata accessor for TitleViewStyler();
      v38 = v18;
      v39 = &off_282A85B98;
      v37[0] = v16;
      v19 = type metadata accessor for TitleViewRenderer();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v40, v17);
      v22 = MEMORY[0x28223BE20](v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v27 = MEMORY[0x28223BE20](v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[10] = v17;
      v20[11] = &off_282A6C9A0;
      v20[7] = v31;
      v36 = &off_282A85B98;
      v35 = v18;
      *&v34 = v32;
      sub_2186CB1F0(&v34, (v20 + 2));
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v40);
      __swift_destroy_boxed_opaque_existential_1(v41);
      result = __swift_destroy_boxed_opaque_existential_1(v43);
      a2[3] = v19;
      a2[4] = &off_282A6AF80;
      *a2 = v20;
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

id sub_218959738@<X0>(double *a1@<X1>, void *a2@<X8>, double a3@<D0>)
{
  v4 = [objc_opt_self() systemFontOfSize:a3 weight:*a1];
  v5 = type metadata accessor for TitleViewStyler();
  v6 = swift_allocObject();
  v7 = *MEMORY[0x277D76988];
  v6[2] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v6[3] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  result = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v6[4] = result;
  v6[5] = v4;
  a2[3] = v5;
  a2[4] = &off_282A85B98;
  *a2 = v6;
  return result;
}

void *sub_218959840@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3578, &protocol descriptor for SeeMoreButtonStylerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280ECFCF0, &protocol descriptor for TitleViewStylerType, 1);
    result = sub_219BE1E34();
    if (v17)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = sub_21895ED84(*v8, *v13);
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = type metadata accessor for TitleViewLayoutAttributesFactory();
      a2[3] = result;
      a2[4] = &off_282A72438;
      *a2 = v15;
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

void *sub_218959A90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3578, &protocol descriptor for SeeMoreButtonStylerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280ECFCF0, &protocol descriptor for TitleViewStylerType, 1);
    result = sub_219BE1DF4();
    if (v17)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = sub_21895ED84(*v8, *v13);
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = type metadata accessor for TitleViewLayoutAttributesFactory();
      a2[3] = result;
      a2[4] = &off_282A72438;
      *a2 = v15;
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

void *sub_218959CF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB09B0, &protocol descriptor for FollowingHeaderViewStylerType, 1);
  result = sub_219BE1E34();
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC9540, &protocol descriptor for TitleViewRendererType, 1);
    result = sub_219BE1DF4();
    if (v23)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for TitleViewRenderer();
      v21[3] = v11;
      v21[4] = &off_282A6AF80;
      v21[0] = v10;
      v12 = type metadata accessor for FollowingHeaderViewRenderer();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v11);
      v15 = MEMORY[0x28223BE20](v14);
      v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v13[10] = v11;
      v13[11] = &off_282A6AF80;
      v13[7] = v19;
      sub_2186CB1F0(&v24, (v13 + 2));
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v12;
      a2[4] = &off_282A60170;
      *a2 = v13;
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

void *sub_218959F9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v6)
  {
    a2[3] = &type metadata for FollowingHeaderViewStyler;
    a2[4] = &off_282A40180;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_2186CB1F0(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895A054@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB09C0, &protocol descriptor for FollowingFooterViewStylerType, 1);
  result = sub_219BE1E34();
  if (v11)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    v9[3] = &type metadata for FollowingFooterViewStyler;
    v9[4] = &off_282A3DD50;
    v4 = type metadata accessor for FollowingFooterViewRenderer();
    v5 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v9, &type metadata for FollowingFooterViewStyler);
    v7 = &type metadata for FollowingFooterViewStyler;
    v8 = &off_282A3DD50;
    sub_2186CB1F0(&v6, v5 + 16);
    __swift_destroy_boxed_opaque_existential_1(v9);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v4;
    a2[4] = &off_282A42768;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895A164(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB09C0, &protocol descriptor for FollowingFooterViewStylerType, 1);
  result = sub_219BE1E34();
  if (v5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    v3[3] = &type metadata for FollowingFooterViewStyler;
    v3[4] = &off_282A3DD50;
    type metadata accessor for FollowingFooterViewLayoutAttributesFactory();
    v2 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v3, &type metadata for FollowingFooterViewStyler);
    v2[5] = &type metadata for FollowingFooterViewStyler;
    v2[6] = &off_282A3DD50;
    sub_21895F6F8(0, &qword_280EE70E8, &type metadata for FollowingFooterViewLayoutAttributes);
    swift_allocObject();
    v2[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v3);
    __swift_destroy_boxed_opaque_existential_1(v4);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895A284@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBFA08, &protocol descriptor for AccessoryButtonStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for AccessoryButtonStyler();
    v19[3] = v10;
    v19[4] = &off_282A6E380;
    v19[0] = v9;
    v11 = type metadata accessor for AccessoryButtonRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A6E380;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A94AE8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895A4F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC5670, &protocol descriptor for DislikeButtonStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for DislikeButtonStyler();
    v19[3] = v10;
    v19[4] = &off_282A4C668;
    v19[0] = v9;
    v11 = type metadata accessor for DislikeButtonRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A4C668;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A2FA28;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895A71C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for MiniMastheadModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21895F444(0, &qword_280ED5BB8, type metadata accessor for MiniMastheadModel);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1E34();
  v63 = v4;
  result = (*(v4 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB3BC8, &protocol descriptor for MiniMastheadViewRendererType, 1);
  result = sub_219BE1E34();
  if (!v87)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v62 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E94548, &protocol descriptor for MiniMastheadViewLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (!v85)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E0FB8(0);
  v73 = sub_219BE1E24();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v71 = result;
  v72 = v8;
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v70 = result;
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  v68 = &v60;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v67 = &v60;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v13;
  v21 = *v18;
  v22 = type metadata accessor for MiniMastheadViewRenderer();
  v82 = v22;
  v83 = &off_282A4A128;
  v81[0] = v20;
  v23 = type metadata accessor for MiniMastheadViewLayoutAttributesFactory();
  v79 = v23;
  v80 = &off_282A84320;
  v78[0] = v21;
  v24 = type metadata accessor for MiniMastheadViewProvider(0);
  v25 = objc_allocWithZone(v24);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v65 = &v60;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
  v64 = &v60;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = *v29;
  v37 = *v34;
  v77[3] = v22;
  v77[4] = &off_282A4A128;
  v76[4] = &off_282A84320;
  v77[0] = v36;
  v76[3] = v23;
  v76[0] = v37;
  *&v25[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v38 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView;
  *&v25[v38] = [objc_allocWithZone(type metadata accessor for MiniMastheadView()) initWithFrame_];
  v39 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView;
  *&v25[v39] = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  *&v25[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider____lazy_storage___regularContainerTitleView] = 0;
  v40 = v72;
  sub_21895F498(v72, &v25[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model], type metadata accessor for MiniMastheadModel);
  *&v25[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_refreshStateMachine] = v73;
  sub_218718690(v77, &v25[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_renderer]);
  sub_218718690(v76, &v25[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_layoutAttributesFactory]);
  *&v25[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_featureAvailability] = v70;
  v75.receiver = v25;
  v75.super_class = v24;
  v66 = v24;

  swift_unknownObjectRetain();
  v41 = objc_msgSendSuper2(&v75, sel_init);
  v42 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView;
  v43 = *(*(v41 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView) + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
  v44 = v41;
  [v43 setStyler_];
  [*(*(v41 + v42) + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView) setDelegate_];
  v45 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView;
  [*(v44 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView) setStyler_];
  [*(v44 + v45) setDelegate_];
  [v71 addObserver_];

  v46 = *(*(v41 + v42) + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
  v47 = sub_219AFC4A4(v40, 1);
  v48 = objc_opt_self();
  v49 = [v48 feedTitleViewUpdateForAttributedText:v47 forType:1];

  [v46 applyFeedTitleViewUpdate:v49 animation:3];
  v50 = *(v44 + v45);
  v51 = sub_219AFC4A4(v40, 2);
  v52 = [v48 feedTitleViewUpdateForAttributedText:v51 forType:0];

  v53 = v73;
  [v50 applyFeedTitleViewUpdate:v52 animation:3];

  if (v53)
  {
    LOBYTE(v74[0]) = 2;
    sub_218802F30(0);
    swift_allocObject();

    sub_219BE2A64();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219BE2A84();

    sub_219BE1E64();

    LOBYTE(v74[0]) = 3;
    swift_allocObject();

    sub_219BE2A64();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219BE2A84();

    sub_219BE1E64();

    LOBYTE(v74[0]) = 0;
    swift_allocObject();

    sub_219BE2A64();
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_218718690(v77, v74);
    v55 = v72;
    v56 = v61;
    sub_21895F498(v72, v61, type metadata accessor for MiniMastheadModel);
    v57 = (*(v63 + 80) + 64) & ~*(v63 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v54;
    sub_2186CB1F0(v74, v58 + 24);
    sub_21895F5B8(v56, v58 + v57);
    sub_219BE2A84();

    sub_219BE1E64();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_21895F500(v55, type metadata accessor for MiniMastheadModel);
  }

  else
  {
    sub_21895F500(v72, type metadata accessor for MiniMastheadModel);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v59 = v69;
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v81);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v86);
  v59[3] = v66;
  result = sub_218754C0C(&qword_280EC1060, type metadata accessor for MiniMastheadViewProvider, &unk_219C6A6A8);
  v59[4] = result;
  *v59 = v44;
  return result;
}

void *sub_21895B2CC(void *a1)
{
  sub_21895F444(0, &qword_27CC0B2C8, type metadata accessor for NameLogoMastheadModel);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for NameLogoMastheadModel(0);
  sub_219BE1E34();
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA5C00, &protocol descriptor for NameLogoMastheadViewRendererType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E935C0, &protocol descriptor for NameLogoMastheadViewLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_21895F13C(v4, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v17;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21895B5DC()
{
  type metadata accessor for NavigationBarBackgroundImageProviderFactory();

  return swift_allocObject();
}

void *sub_21895B610@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBB100, &protocol descriptor for MiniMastheadViewStylerType, 1);
  result = sub_219BE1E34();
  if (v25)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for MiniMastheadViewStyler();
    v23[3] = v10;
    v23[4] = &off_282A9DCE0;
    v23[0] = v9;
    v11 = type metadata accessor for MiniMastheadViewRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v23, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v21 = v10;
    v22 = &off_282A9DCE0;
    *&v20 = v18;
    sub_2186CB1F0(&v20, v12 + 16);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    a2[3] = v11;
    a2[4] = &off_282A4A128;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895B888@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAC238, &protocol descriptor for NameLogoMastheadViewStylerType, 1);
  result = sub_219BE1E34();
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (!v24)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1DF4();
  if (v22)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v11 = type metadata accessor for NameLogoMastheadViewStyler();
    v20[3] = v11;
    v20[4] = &off_282A53E68;
    v20[0] = v10;
    v12 = type metadata accessor for NameLogoMastheadViewRenderer();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v11);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[15] = v11;
    v13[16] = &off_282A53E68;
    v13[12] = v19;
    sub_2186CB1F0(&v23, (v13 + 2));
    sub_2186CB1F0(&v21, (v13 + 7));
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    a2[3] = v12;
    a2[4] = &off_282A46C10;
    *a2 = v13;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}