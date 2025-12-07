void (*sub_24F4D8240(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24E76D644(a2, a3);
  *(v11 + 40) = v14 & 1;
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
      sub_24E8AEA5C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24E89AA84(v18, a4 & 1);
    v13 = sub_24E76D644(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_24F4D8214;
}

void (*sub_24F4D8398(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24E76D644(a2, a3);
  *(v11 + 40) = v14 & 1;
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
      sub_24E8AF5F4();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24E89BED8(v18, a4 & 1);
    v13 = sub_24E76D644(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_24F4D8214;
}

void (*sub_24F4D84F0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24E76D644(a2, a3);
  *(v11 + 40) = v14 & 1;
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
      sub_24E8AFB00();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24E89C60C(v18, a4 & 1);
    v13 = sub_24E76D644(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_24F4D8214;
}

void (*sub_24F4D8648(uint64_t *a1, uint64_t *a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xB0uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 144) = a2;
  *(v8 + 152) = v3;
  v10 = *v3;
  v11 = sub_24E76D6EC(a2);
  *(v9 + 168) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_24E8ADDC8();
      v11 = v19;
      goto LABEL_11;
    }

    sub_24E899498(v16, a3 & 1);
    v11 = sub_24E76D6EC(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 160) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *(v9 + 136) = v21;
  return sub_24F4D8790;
}

void sub_24F4D8790(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  if (v2)
  {
    v3 = *(v1 + 160);
    v4 = **(v1 + 152);
    if (*(*a1 + 168))
    {
      *(v4[7] + 8 * v3) = v2;
    }

    else
    {
      sub_24E772674(*(v1 + 144), v1);
      sub_24EC2579C(v3, v1, v2, v4);
    }
  }

  else if (*(*a1 + 168))
  {
    v5 = *(v1 + 160);
    v6 = **(v1 + 152);
    sub_24E7726D0(*(v6 + 48) + 136 * v5);
    sub_24EB52B60(v5, v6);
  }

  free(v1);
}

void (*sub_24F4D8854(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_24E76D644(a2, a3);
  *(v11 + 40) = v14 & 1;
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
      sub_24E8B2FEC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_24E8A27E4(v18, a4 & 1);
    v13 = sub_24E76D644(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_24F4D8214;
}

void sub_24F4D89AC(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_24EB715C4(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  free(v4);
}

void (*sub_24F4D8A78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6))(uint64_t **a1)
{
  v7 = v6;
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x38uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 48) = a5 & 1;
  *(v14 + 24) = a4;
  *(v14 + 32) = v6;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3;
  v16 = *v6;
  v18 = sub_24E76E530(a2, a3, a4, a5 & 1);
  *(v15 + 49) = v17 & 1;
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a6 & 1) == 0)
  {
    if (v23 >= v21 && (a6 & 1) == 0)
    {
      sub_24E8B4E4C();
      goto LABEL_12;
    }

    sub_24E8A5D48(v21, a6 & 1);
    v24 = sub_24E76E530(a2, a3, a4, a5 & 1);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_12;
    }

LABEL_17:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

LABEL_12:
  *(v15 + 40) = v18;
  if (v22)
  {
    v26 = *(*(*v7 + 56) + 8 * v18);
  }

  else
  {
    v26 = 0;
  }

  *v15 = v26;
  return sub_24F4D8C00;
}

void sub_24F4D8C00(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 49);
  if (v2)
  {
    v4 = v1[5];
    v5 = *v1[4];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_24EC26780(v4, v1[1], v1[2], v1[3], *(v1 + 48), v2, v5);
    }
  }

  else if (*(*a1 + 49))
  {
    v6 = v1[5];
    v7 = *v1[4];
    sub_24F4D94B4(*(v7 + 48) + 32 * v6);
    sub_24EB55524(v6, v7);
  }

  free(v1);
}

void (*sub_24F4D8CBC(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for GameSuggestion(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B860, &unk_24F9D1B40) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_24E76D644(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_24F4D9578(*(*v5 + 56) + *(v14 + 72) * v22, v19, type metadata accessor for GameSuggestion);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_24F4D8F98;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_24E8B6230();
      goto LABEL_16;
    }

    sub_24E8A8480(v25, a4 & 1);
    v29 = sub_24E76D644(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24F4D8F98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_24F4D9508(v5, v6);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_24F4D9578(v9, *(v2 + 6), type metadata accessor for GameSuggestion);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_24F4D9578(v13, v14, type metadata accessor for GameSuggestion);
        sub_24EC26990(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_24F4D9508(v5, v17);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_24F4D9578(v9, *(v2 + 7), type metadata accessor for GameSuggestion);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24F4D9578(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for GameSuggestion);
      goto LABEL_10;
    }
  }

  sub_24E601704(v9, &qword_27F23B860, &unk_24F9D1B40);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_24EB715C4(*(v20 + 48) + 16 * v19);
    sub_24EB55E38(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_24E601704(v23, &qword_27F23B860, &unk_24F9D1B40);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_24F4D91D0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24F4D95E0;
}

uint64_t (*sub_24F4D91F8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24F4D9220;
}

uint64_t sub_24F4D922C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_24E615E00(v10, a2 + 16);
  v8 = sub_24E611D40(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v10);
  *(a2 + 56) = v8;
  return a2;
}

uint64_t sub_24F4D92CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosAsset(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4D9330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_24F4D922C(v9, v10, a3, a4);
}

uint64_t sub_24F4D946C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4D9508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B860, &unk_24F9D1B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4D9578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_24F4D9600(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v3 = sub_24F925218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v41 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v6);
  v47 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v36[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v11 - 8);
  v40 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v45 = &v36[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v36[-v16];
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36[-v20];
  v22 = *MEMORY[0x277CE0560];
  v43 = *(v4 + 104);
  v43(&v36[-v20], v22, v3, v19);
  v42 = *(v4 + 56);
  v42(v21, 0, 1, v3);
  v44 = v6;
  v23 = *(v6 + 48);
  sub_24EDEBCCC(a2, v10);
  sub_24EDEBCCC(v21, &v10[v23]);
  v24 = *(v4 + 48);
  if (v24(v10, 1, v3) == 1)
  {
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    if (v24(&v10[v23], 1, v3) != 1)
    {
LABEL_12:
      sub_24E601704(v10, &unk_27F254F20, &qword_24F940790);
      return 1;
    }

    v39 = v4;
    sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
LABEL_6:
    v29 = v45;
    (v43)(v45, *MEMORY[0x277CE0558], v3);
    v42(v29, 0, 1, v3);
    v30 = *(v44 + 48);
    v10 = v47;
    sub_24EDEBCCC(v46, v47);
    sub_24EDEBCCC(v29, &v10[v30]);
    if (v24(v10, 1, v3) == 1)
    {
      sub_24E601704(v29, &qword_27F215598, &qword_24F945EF0);
      if (v24(&v10[v30], 1, v3) == 1)
      {
        sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
        return 0;
      }

      goto LABEL_12;
    }

    v17 = v40;
    sub_24EDEBCCC(v10, v40);
    if (v24(&v10[v30], 1, v3) == 1)
    {
      v21 = v29;
      v4 = v39;
      goto LABEL_11;
    }

    v32 = v39;
    v33 = v41;
    (*(v39 + 32))(v41, &v10[v30], v3);
    sub_24EDEBD3C();
    v34 = sub_24F92AFF8();
    v35 = *(v32 + 8);
    v35(v33, v3);
    sub_24E601704(v29, &qword_27F215598, &qword_24F945EF0);
    v35(v17, v3);
    sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
    return (v34 & 1) == 0;
  }

  sub_24EDEBCCC(v10, v17);
  if (v24(&v10[v23], 1, v3) == 1)
  {
LABEL_11:
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    (*(v4 + 8))(v17, v3);
    goto LABEL_12;
  }

  v25 = *(v4 + 32);
  v38 = v24;
  v26 = v41;
  v25(v41, &v10[v23], v3);
  sub_24EDEBD3C();
  v37 = sub_24F92AFF8();
  v39 = v4;
  v27 = *(v4 + 8);
  v28 = v26;
  v24 = v38;
  v27(v28, v3);
  sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
  v27(v17, v3);
  sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
  if (v37)
  {
    goto LABEL_6;
  }

  return 1;
}

unint64_t sub_24F4D9C00()
{
  result = qword_27F2461D8;
  if (!qword_27F2461D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2461D8);
  }

  return result;
}

uint64_t type metadata accessor for GameLibraryShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F246230;
  if (!qword_27F246230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameLibraryShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameLibraryShelfConstructionIntent(0) + 24));

  return v1;
}

uint64_t GameLibraryShelfConstructionIntent.sortOption.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GameLibraryShelfConstructionIntent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

double GameLibraryShelfConstructionIntent.filterOptions.getter()
{
  type metadata accessor for GameLibraryShelfConstructionIntent(0);

  return result;
}

unint64_t GameLibraryShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x73656D6167;
  *(inited + 40) = 0xE500000000000000;
  v4 = *v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0, &qword_24F944DC0);
  v5 = sub_24F07EA58(&qword_27F219830, &qword_27F217960, &protocol conformance descriptor for Game, MEMORY[0x277D22590]);
  *(inited + 48) = v4;
  *(inited + 80) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v6 = type metadata accessor for GameLibraryShelfConstructionIntent(0);
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E81A5FC(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F4DADB8(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x444965676170;
  *(inited + 152) = 0xE600000000000000;
  v9 = (v1 + v6[6]);
  v10 = *v9;
  v11 = v9[1];
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D22580];
  *(inited + 184) = MEMORY[0x277D837D0];
  *(inited + 192) = v13;
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  *(inited + 200) = 0x6974704F74726F73;
  *(inited + 208) = 0xEA00000000006E6FLL;
  v14 = 1701667182;
  if (!*(v1 + v6[7]))
  {
    v14 = 0x746E65636572;
  }

  v15 = 0xE400000000000000;
  if (!*(v1 + v6[7]))
  {
    v15 = 0xE600000000000000;
  }

  *(inited + 240) = v12;
  *(inited + 248) = v13;
  *(inited + 216) = v14;
  *(inited + 224) = v15;
  strcpy((inited + 256), "filterOptions");
  *(inited + 270) = -4864;
  v16 = *(v1 + v6[8]);
  v17 = *(v16 + 16);
  if (v17)
  {
    v32 = inited;
    v33 = MEMORY[0x277D84F90];

    sub_24F4578E0(0, v17, 0);
    v18 = v33;
    v19 = (v16 + 32);
    do
    {
      v21 = *v19++;
      v20 = v21;
      v22 = v21 == 1;
      if (v21 == 1)
      {
        v23 = 0x6E4F656461637261;
      }

      else
      {
        v23 = 0xD000000000000015;
      }

      if (v22)
      {
        v24 = 0xEA0000000000796CLL;
      }

      else
      {
        v24 = 0x800000024FA3F9F0;
      }

      if (v20)
      {
        v25 = v23;
      }

      else
      {
        v25 = 0x656C6C6174736E69;
      }

      if (v20)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0xED0000796C6E4F64;
      }

      v28 = *(v33 + 16);
      v27 = *(v33 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_24F4578E0((v27 > 1), v28 + 1, 1);
      }

      *(v33 + 16) = v28 + 1;
      v29 = v33 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      --v17;
    }

    while (v17);
    inited = v32;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *(inited + 304) = sub_24F340CD8();
  *(inited + 272) = v18;
  v30 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v30;
  return result;
}

uint64_t sub_24F4DA1D4()
{
  v1 = *v0;
  v2 = 0x73656D6167;
  v3 = 0x444965676170;
  v4 = 0x6974704F74726F73;
  if (v1 != 3)
  {
    v4 = 0x704F7265746C6966;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726579616C70;
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

uint64_t sub_24F4DA274@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4DB214(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4DA29C(uint64_t a1)
{
  v2 = sub_24F4DAB9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4DA2D8(uint64_t a1)
{
  v2 = sub_24F4DAB9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameLibraryShelfConstructionIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2461E0, &unk_24FA01E30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4DAB9C();
  sub_24F92D128();
  v12 = *v3;
  HIBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0, &qword_24F944DC0);
  sub_24F07EA58(&qword_27F219848, &qword_27F214950, &protocol conformance descriptor for Game, MEMORY[0x277D83948]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for GameLibraryShelfConstructionIntent(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Player(0);
    sub_24E81A5FC(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    LOBYTE(v12) = 2;
    sub_24F92CD08();
    LOBYTE(v12) = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    sub_24F4DABF0();
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 32));
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2461F8, &unk_24FA291B0);
    sub_24F4DAC44(&qword_27F246200, sub_24F4DACBC, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t GameLibraryShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246210, &qword_24FA01E40);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for GameLibraryShelfConstructionIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4DAB9C();
  v25 = v8;
  v12 = v26;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v23;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FD0, &qword_24F944DC0);
  v27 = 0;
  sub_24F07EA58(&qword_27F219858, &qword_27F214968, &protocol conformance descriptor for Game, MEMORY[0x277D83978]);
  v15 = v24;
  sub_24F92CC68();
  v21[1] = v28;
  v26 = v14;
  *v14 = v28;
  LOBYTE(v28) = 1;
  sub_24E81A5FC(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v5, v26 + v9[5]);
  LOBYTE(v28) = 2;
  v21[0] = 0;
  v16 = sub_24F92CC28();
  v17 = v26;
  v18 = (v26 + v9[6]);
  *v18 = v16;
  v18[1] = v19;
  v27 = 3;
  sub_24F4DAD10();
  sub_24F92CC68();
  *(v17 + v9[7]) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2461F8, &unk_24FA291B0);
  v27 = 4;
  sub_24F4DAC44(&qword_27F246220, sub_24F4DAD64, MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v13 + 8))(v25, v15);
  *(v17 + v9[8]) = v28;
  sub_24F4DADB8(v17, v22, type metadata accessor for GameLibraryShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F4DAE20(v17, type metadata accessor for GameLibraryShelfConstructionIntent);
}

unint64_t sub_24F4DAB9C()
{
  result = qword_27F2461E8;
  if (!qword_27F2461E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2461E8);
  }

  return result;
}

unint64_t sub_24F4DABF0()
{
  result = qword_27F2461F0;
  if (!qword_27F2461F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2461F0);
  }

  return result;
}

uint64_t sub_24F4DAC44(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2461F8, &unk_24FA291B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F4DACBC()
{
  result = qword_27F246208;
  if (!qword_27F246208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246208);
  }

  return result;
}

unint64_t sub_24F4DAD10()
{
  result = qword_27F246218;
  if (!qword_27F246218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246218);
  }

  return result;
}

unint64_t sub_24F4DAD64()
{
  result = qword_27F246228;
  if (!qword_27F246228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246228);
  }

  return result;
}

uint64_t sub_24F4DADB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4DAE20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4DAE94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F4DAF54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F4DAFF8(uint64_t a1)
{
  sub_24E7B7820(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Player(319);
    if (v2 <= 0x3F)
    {
      sub_24F4DB0AC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F4DB0AC()
{
  if (!qword_27F246240)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F246240);
    }
  }
}

unint64_t sub_24F4DB110()
{
  result = qword_27F246248;
  if (!qword_27F246248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246248);
  }

  return result;
}

unint64_t sub_24F4DB168()
{
  result = qword_27F246250;
  if (!qword_27F246250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246250);
  }

  return result;
}

unint64_t sub_24F4DB1C0()
{
  result = qword_27F246258;
  if (!qword_27F246258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246258);
  }

  return result;
}

uint64_t sub_24F4DB214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D6167 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974704F74726F73 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xED0000736E6F6974)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

id sub_24F4DB3C8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  result = [v0 setAllowedUnits_];
  qword_27F39E608 = v0;
  return result;
}

uint64_t sub_24F4DB450(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for AchievementBadgeModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for AchievementProgressStatus(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_24F4DB630(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AchievementBadgeModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for AchievementProgressStatus(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

void sub_24F4DB81C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AchievementBadgeModel(319);
    if (v2 <= 0x3F)
    {
      sub_24F4DBA14(319, &qword_27F246298, &qword_27F2462A0, &unk_24FA020D0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AchievementProgressStatus(319);
        if (v4 <= 0x3F)
        {
          sub_24F0BEF60();
          if (v5 <= 0x3F)
          {
            sub_24F4DBA14(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
            if (v6 <= 0x3F)
            {
              sub_24F4DBA14(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00, MEMORY[0x277D21D28]);
              if (v7 <= 0x3F)
              {
                sub_24E61C938(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F4DB9CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F4DBA14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24F4DBA88(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_24F925908();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_24F925968();
  sub_24E601704(v3, &qword_27F214698, &unk_24F95F810);
  return v5;
}

uint64_t sub_24F4DBB80@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = *(v2 + *(type metadata accessor for AchievementCard(0) + 36));
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v9 = sub_24F4DBA88(3);
      v16 = sub_24F925908();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
      v10 = 10.0;
      v14 = sub_24F925968();
      result = sub_24E601704(v7, &qword_27F214698, &unk_24F95F810);
      v12 = xmmword_24F9993F0;
      v13 = xmmword_24F999400;
      goto LABEL_9;
    }

    v18 = xmmword_24F999410;
    v17 = xmmword_24F999420;
    v10 = 10.0;
    goto LABEL_7;
  }

  if (v8)
  {
    v18 = xmmword_24F9993D0;
    v17 = xmmword_24F9993E0;
    v10 = 15.0;
LABEL_7:
    v9 = sub_24F4DBA88(v8);
    v15 = sub_24F925908();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v14 = sub_24F925968();
    result = sub_24E601704(v7, &qword_27F214698, &unk_24F95F810);
    v13 = v17;
    v12 = v18;
    goto LABEL_9;
  }

  v9 = sub_24F4DBA88(0);
  v18 = xmmword_24F999430;
  v17 = xmmword_24F999440;
  v10 = 10.0;
  result = sub_24F9258F8();
  v13 = v17;
  v12 = v18;
  v14 = result;
LABEL_9:
  *a1 = v13;
  *(a1 + 16) = v12;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v14;
  *(a1 + 56) = 0x3F947AE147AE147BLL;
  *(a1 + 64) = a2;
  return result;
}

uint64_t sub_24F4DBDD8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x7470697263736564;
    v8 = 0xD000000000000010;
    if (a1 != 3)
    {
      v8 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6575676573;
    v2 = 0x4D747865746E6F63;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x4F79616C70736964;
    v4 = 0xD000000000000013;
    if (a1 == 6)
    {
      v4 = 0x73736572676F7270;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F4DBF54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2463D8, &unk_24FA024B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4E0E1C();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_24F92CD08();
    LOBYTE(v18) = 2;
    sub_24F92CD08();
    v9 = type metadata accessor for AchievementCard(0);
    LOBYTE(v18) = 3;
    type metadata accessor for AchievementBadgeModel(0);
    sub_24F4DB9CC(&qword_27F22E898, type metadata accessor for AchievementBadgeModel, &unk_24FA16708);
    sub_24F92CD48();
    v18 = *(v3 + v9[8]);
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2462A0, &unk_24FA020D0);
    sub_24F4E0E70(&qword_27F2463E0, &qword_27F2463E8, &protocol conformance descriptor for PlayerWithTimeStamp, MEMORY[0x277D83948]);
    sub_24F92CCF8();
    LOBYTE(v18) = *(v3 + v9[9]);
    v24 = 5;
    sub_24ED255A0();
    sub_24F92CD48();
    LOBYTE(v18) = 6;
    type metadata accessor for AchievementProgressStatus(0);
    sub_24F4DB9CC(&qword_27F2463F0, type metadata accessor for AchievementProgressStatus, &protocol conformance descriptor for AchievementProgressStatus);
    sub_24F92CD48();
    v10 = (v3 + v9[11]);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v15 = v10[5];
    v18 = *v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 7;
    sub_24E68FE2C(v18, v11, v12, v13, v14, v15);
    sub_24F005230();
    sub_24F92CCF8();
    sub_24E687F7C(v18, v19, v20, v21, v22, v23);
    LOBYTE(v18) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v18) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v18) = 10;
    sub_24F929608();
    sub_24F4DB9CC(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F4DC4C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v45 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v52);
  v50 = &v45 - v5;
  *&v51 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v51);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AchievementBadgeModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2463B0, &qword_24FA024A8);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v12 = &v45 - v11;
  v13 = type metadata accessor for AchievementCard(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 44)];
  *(v17 + 1) = 0u;
  *(v17 + 2) = 0u;
  v60 = v17;
  *v17 = 0u;
  v18 = &v15[*(v16 + 48)];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v61 = v18;
  sub_24E61DA68(&v63, v18, qword_27F21B590, &unk_24F93BE30);
  v19 = v13[13];
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v59 = v19;
  v21(&v15[v19], 1, 1, v20);
  v22 = v13[14];
  v23 = sub_24F929608();
  v24 = *(*(v23 - 8) + 56);
  v57 = v22;
  v62 = v15;
  v24(&v15[v22], 1, 1, v23);
  v25 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24F4E0E1C();
  v54 = v12;
  v26 = v56;
  sub_24F92D108();
  if (v26)
  {
    v27 = v62;
    __swift_destroy_boxed_opaque_existential_1(v58);

    sub_24E687F7C(*v60, v60[1], v60[2], v60[3], v60[4], v60[5]);
    sub_24E601704(v61, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(v27 + v59, &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(v27 + v57, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    *&v56 = v7;
    v47 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v67 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v28 = v64;
    v29 = v62;
    *v62 = v63;
    v29[1] = v28;
    *(v29 + 4) = v65;
    LOBYTE(v63) = 1;
    *(v29 + 5) = sub_24F92CC28();
    *(v29 + 6) = v30;
    LOBYTE(v63) = 2;
    v46 = 0;
    *(v29 + 7) = sub_24F92CC28();
    *(v29 + 8) = v31;
    LOBYTE(v63) = 3;
    sub_24F4DB9CC(&qword_27F22E880, type metadata accessor for AchievementBadgeModel, &unk_24FA166E0);
    sub_24F92CC68();
    sub_24F4E15A0(v10, v29 + v13[7], type metadata accessor for AchievementBadgeModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2462A0, &unk_24FA020D0);
    v67 = 4;
    sub_24F4E0E70(&qword_27F2463C0, &qword_27F2463C8, &protocol conformance descriptor for PlayerWithTimeStamp, MEMORY[0x277D83978]);
    sub_24F92CC18();
    v32 = v13[8];
    v46 = v63;
    *(v29 + v32) = v63;
    v67 = 5;
    sub_24ED25484();
    sub_24F92CC68();
    *(v29 + v13[9]) = v63;
    LOBYTE(v63) = 6;
    sub_24F4DB9CC(&qword_27F2463D0, type metadata accessor for AchievementProgressStatus, &protocol conformance descriptor for AchievementProgressStatus);
    sub_24F92CC68();
    sub_24F4E15A0(v56, v29 + v13[10], type metadata accessor for AchievementProgressStatus);
    v67 = 7;
    sub_24E688020();
    sub_24F92CC18();
    v33 = v60;
    v35 = v65;
    v34 = v66;
    v36 = *v60;
    v37 = v60[1];
    v38 = v60[2];
    v39 = v60[3];
    v40 = v60[4];
    v41 = v60[5];
    v56 = v63;
    v51 = v64;
    sub_24E687F7C(v36, v37, v38, v39, v40, v41);
    v42 = v51;
    *v33 = v56;
    *(v33 + 1) = v42;
    v33[4] = v35;
    v33[5] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v67 = 8;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v63, v61, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v63) = 9;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v50, v62 + v59, &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v63) = 10;
    sub_24F4DB9CC(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    (*(v53 + 8))(v54, v55);
    v43 = v62;
    sub_24E61DA68(v49, v62 + v57, &qword_27F213E68, &unk_24F93BC80);
    sub_24F4E0D54(v43, v48, type metadata accessor for AchievementCard);
    __swift_destroy_boxed_opaque_existential_1(v58);
    return sub_24F4E0DBC(v43, type metadata accessor for AchievementCard);
  }
}

uint64_t sub_24F4DD08C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4E1608(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4DD0B4(uint64_t a1)
{
  v2 = sub_24F4E0E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4DD0F0(uint64_t a1)
{
  v2 = sub_24F4E0E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4DD12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 52), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F4DD21C(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  if (a1)
  {
    v6 = sub_24F925908();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = sub_24F925968();
    sub_24E601704(v4, &qword_27F214698, &unk_24F95F810);
    return v7;
  }

  else
  {

    return sub_24F925898();
  }
}

unint64_t sub_24F4DD380@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v4 = "achievementDetails";
  v5 = 0xD000000000000013;
  if (a2 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = "playNowLargeCard";
  }

  v6 = 0xD000000000000012;
  if (a2)
  {
    v7 = "achievementsListGrid";
  }

  else
  {
    v6 = 0xD000000000000014;
    v7 = "newToMajorOSVersion";
  }

  if (a2 > 1u)
  {
    v6 = v5;
    v7 = v4;
  }

  v12 = v6;
  v13 = v7 | 0x8000000000000000;
  v9 = sub_24F92CF68();
  v10 = [objc_opt_self() valueWithObject:v9 inContext:{a1, v12, v13}];
  swift_unknownObjectRelease();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a3[4] = result;
  *a3 = v10;
  return result;
}

uint64_t sub_24F4DD4A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F4DD560(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F4DD604()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F4DD6B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F4E0F0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F4DD6E8(unint64_t *a1@<X8>)
{
  v2 = "achievementDetails";
  v3 = 0xD000000000000013;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = "playNowLargeCard";
  }

  v4 = 0xD000000000000012;
  if (*v1)
  {
    v5 = "achievementsListGrid";
  }

  else
  {
    v4 = 0xD000000000000014;
    v5 = "newToMajorOSVersion";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_24F4DD830()
{
  result = qword_27F2462A8;
  if (!qword_27F2462A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2462A8);
  }

  return result;
}

double sub_24F4DD8D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v1 = sub_24F926D08();

  *(v0 + 32) = v1;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v2 = sub_24F926D08();

  *(v0 + 40) = v2;
  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v0);
  sub_24F923BD8();
  result = *&v4;
  xmmword_27F246260 = v4;
  *algn_27F246270 = v5;
  qword_27F246280 = v6;
  return result;
}

uint64_t sub_24F4DD9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v51 = a2;
  v5 = sub_24F924B38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2462C0, &qword_24FA02398);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2462C8, &qword_24FA023A0);
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  sub_24F4DDEF0(a1, v11, a3);
  v15 = sub_24F927618();
  v17 = v16;
  v18 = &v11[*(v9 + 36)];
  sub_24F4DE768(a1, v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2462D0, &qword_24FA023A8) + 36));
  *v19 = v15;
  v19[1] = v17;
  v20 = type metadata accessor for AchievementCard(0);
  sub_24E60169C(a1 + *(v20 + 48), v52, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v52, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v21 = sub_24F9248C8();
  __swift_project_value_buffer(v21, qword_27F39F078);
  sub_24F4E089C();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v11, &qword_27F2462C0, &qword_24FA02398);
  (*(v6 + 104))(v8, *MEMORY[0x277CE0118], v5);
  v22 = sub_24F924258();
  v52[3] = v22;
  v52[4] = sub_24F4DB9CC(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(v6 + 16))(boxed_opaque_existential_1 + *(v22 + 20), v8, v5);
  __asm { FMOV            V0.2D, #26.0 }

  *boxed_opaque_existential_1 = _Q0;
  (*(v6 + 8))(v8, v5);
  v29 = v51;
  sub_24E60169C(v52, v51, &qword_27F246350, &qword_24FA023E8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246358, &qword_24FA023F0);
  v32 = v49;
  v31 = v50;
  (*(v49 + 16))(v29 + v30[9], v14, v50);
  v33 = v29 + v30[10];
  *v33 = sub_24F923398() & 1;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35 & 1;
  v36 = v29 + v30[11];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v37 = qword_27F24E488;
  v38 = sub_24F923398();
  v40 = v39;
  v42 = v41;
  v43 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246360, &qword_24FA02420) + 36);
  *v43 = v37;
  *(v43 + 8) = v38 & 1;
  *(v43 + 16) = v40;
  *(v43 + 24) = v42 & 1;
  LOBYTE(v37) = sub_24F923398();
  v45 = v44;
  LOBYTE(v40) = v46;
  (*(v32 + 8))(v14, v31);
  sub_24E601704(v52, &qword_27F246350, &qword_24FA023E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246368, &qword_24FA02428);
  v48 = v29 + *(result + 36);
  *v48 = v37 & 1;
  *(v48 + 8) = v45;
  *(v48 + 16) = v40 & 1;
  return result;
}

uint64_t sub_24F4DDEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v73 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246340, &qword_24FA023E0);
  MEMORY[0x28223BE20](v72);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v65 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2463A8, &qword_24FA024A0);
  MEMORY[0x28223BE20](v70);
  v71 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246328, &unk_24FA023D0);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246318, &qword_24FA023C8);
  MEMORY[0x28223BE20](v68);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246308, &qword_24FA023C0);
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2462F8, &qword_24FA023B8);
  MEMORY[0x28223BE20](v69);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v65 = &v65 - v26;
  if (*(a1 + *(type metadata accessor for AchievementCard(0) + 36)) > 1u)
  {
    sub_24F4E0D54(a1, v11, type metadata accessor for AchievementCard);
    *&v11[*(type metadata accessor for AchievementCardComponent.AchievementCardContent(0) + 20)] = a3;
    v50 = sub_24F925808();
    v51 = &v11[*(v9 + 36)];
    *v51 = v50;
    *(v51 + 8) = xmmword_24FA02070;
    *(v51 + 24) = xmmword_24F9C0610;
    v51[40] = 0;
    sub_24F927618();
    sub_24F9238C8();
    sub_24E6009C8(v11, v16, &qword_27F246328, &unk_24FA023D0);
    v52 = &v16[*(v68 + 36)];
    v53 = v78;
    *v52 = v77;
    *(v52 + 1) = v53;
    *(v52 + 2) = v79;
    v54 = v66;
    v55 = &v66[*(v72 + 36)];
    v56 = *(sub_24F924258() + 20);
    v57 = *MEMORY[0x277CE0118];
    v58 = sub_24F924B38();
    (*(*(v58 - 8) + 104))(&v55[v56], v57, v58);
    __asm { FMOV            V0.2D, #26.0 }

    *v55 = _Q0;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
    v61 = *(v60 + 36);
    v62 = type metadata accessor for GradientBackground(0);
    (*(*(v62 - 8) + 56))(&v55[v61], 1, 1, v62);
    *&v55[*(v60 + 40)] = 0;
    sub_24E6009C8(v16, v54, &qword_27F246318, &qword_24FA023C8);
    v47 = &qword_27F246340;
    v48 = &qword_24FA023E0;
    v63 = v54;
    v49 = v67;
    sub_24E6009C8(v63, v67, &qword_27F246340, &qword_24FA023E0);
    sub_24E60169C(v49, v71, &qword_27F246340, &qword_24FA023E0);
  }

  else
  {
    sub_24F4E0D54(a1, v14, type metadata accessor for AchievementCard);
    *&v14[*(type metadata accessor for AchievementCardComponent.AchievementCardContent(0) + 20)] = a3;
    v27 = sub_24F925808();
    v28 = &v14[*(v9 + 36)];
    *v28 = v27;
    *(v28 + 8) = xmmword_24FA02070;
    *(v28 + 24) = xmmword_24F9C0610;
    v28[40] = 0;
    sub_24F927618();
    sub_24F9238C8();
    sub_24E6009C8(v14, v19, &qword_27F246328, &unk_24FA023D0);
    v29 = &v19[*(v68 + 36)];
    v30 = v75;
    *v29 = v74;
    *(v29 + 1) = v30;
    *(v29 + 2) = v76;
    sub_24F927618();
    sub_24F9242E8();
    sub_24E6009C8(v19, v22, &qword_27F246318, &qword_24FA023C8);
    v31 = &v22[*(v20 + 36)];
    v32 = v82;
    *(v31 + 4) = v81;
    *(v31 + 5) = v32;
    *(v31 + 6) = v83;
    v33 = v78;
    *v31 = v77;
    *(v31 + 1) = v33;
    v34 = v80;
    *(v31 + 2) = v79;
    *(v31 + 3) = v34;
    v35 = &v24[*(v69 + 36)];
    v36 = *(sub_24F924258() + 20);
    v37 = *MEMORY[0x277CE0118];
    v38 = sub_24F924B38();
    (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
    __asm { FMOV            V0.2D, #26.0 }

    *v35 = _Q0;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
    v45 = *(v44 + 36);
    v46 = type metadata accessor for GradientBackground(0);
    (*(*(v46 - 8) + 56))(&v35[v45], 1, 1, v46);
    *&v35[*(v44 + 40)] = 0;
    sub_24E6009C8(v22, v24, &qword_27F246308, &qword_24FA023C0);
    v47 = &qword_27F2462F8;
    v48 = &qword_24FA023B8;
    v49 = v65;
    sub_24E6009C8(v24, v65, &qword_27F2462F8, &qword_24FA023B8);
    sub_24E60169C(v49, v71, &qword_27F2462F8, &qword_24FA023B8);
  }

  swift_storeEnumTagMultiPayload();
  sub_24F4E09E0();
  sub_24F4E0C8C();
  sub_24F924E28();
  return sub_24E601704(v49, v47, v48);
}

uint64_t sub_24F4DE768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v53 = a1;
  v56 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246370, &qword_24FA02430);
  MEMORY[0x28223BE20](v55);
  v3 = &v52 - v2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246378, &unk_24FA02438);
  MEMORY[0x28223BE20](v54);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217DD8, &qword_24F9476C0);
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = sub_24F924258();
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246380, &qword_24FA02448);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AchievementCard(0);
  sub_24F4E0D54(v53 + *(v18 + 40), v17, type metadata accessor for AchievementProgressStatus);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24F4E0DBC(v17, type metadata accessor for AchievementProgressStatus);
    v19 = &v3[*(v55 + 36)];
    v20 = *(v9 + 20);
    v21 = *MEMORY[0x277CE0118];
    v22 = sub_24F924B38();
    (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
    __asm { FMOV            V0.2D, #26.0 }

    *v19 = _Q0;
    *v3 = swift_getKeyPath();
    v3[8] = 0;
    sub_24E60169C(v3, v5, &qword_27F246370, &qword_24FA02430);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F246388, &qword_27F246380, &qword_24FA02448, MEMORY[0x277CE0458]);
    sub_24E602068(&qword_27F246390, &qword_27F246370, &qword_24FA02430, &unk_24F9FE4E8);
    sub_24F924E28();
    return sub_24E601704(v3, &qword_27F246370, &qword_24FA02430);
  }

  else
  {
    v29 = v8;
    v30 = sub_24F91F648();
    (*(*(v30 - 8) + 8))(v17, v30);
    v31 = *(v9 + 20);
    v32 = *MEMORY[0x277CE0118];
    v33 = sub_24F924B38();
    (*(*(v33 - 8) + 104))(&v11[v31], v32, v33);
    __asm { FMOV            V0.2D, #26.0 }

    *v11 = _Q0;
    if (qword_27F2112E8 != -1)
    {
      swift_once();
    }

    v35 = xmmword_27F246260;
    v36 = *(v6 + 36);
    v37 = *MEMORY[0x277CE13B8];
    v38 = sub_24F927748();
    v39 = *(*(v38 - 8) + 104);
    v52 = *&algn_27F246270[8];
    v53 = *(&xmmword_27F246260 + 8);
    v39(v29 + v36, v37, v38);
    *v29 = v35;
    v40 = v53;
    *(v29 + 24) = v52;
    *(v29 + 8) = v40;

    sub_24F923658();
    v41 = MEMORY[0x277CDFC08];
    v42 = v14;
    sub_24F4E0D54(v11, v14, MEMORY[0x277CDFC08]);
    v43 = *&v57 * 0.5;
    v44 = &v14[*(v12 + 68)];
    sub_24F4E0D54(v11, v44, v41);
    *(v44 + *(sub_24F924248() + 20)) = v43;
    v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BF8, &qword_24FA02480) + 36);
    v46 = v58;
    *v45 = v57;
    *(v45 + 16) = v46;
    *(v45 + 32) = v59;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246398, &qword_24FA02488);
    sub_24E60169C(v29, v44 + *(v47 + 52), &qword_27F217DD8, &qword_24F9476C0);
    *(v44 + *(v47 + 56)) = 256;
    v48 = sub_24F927618();
    v50 = v49;
    sub_24E601704(v29, &qword_27F217DD8, &qword_24F9476C0);
    sub_24F4E0DBC(v11, MEMORY[0x277CDFC08]);
    v51 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2463A0, &unk_24FA02490) + 36));
    *v51 = v48;
    v51[1] = v50;
    sub_24E60169C(v42, v5, &qword_27F246380, &qword_24FA02448);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F246388, &qword_27F246380, &qword_24FA02448, MEMORY[0x277CE0458]);
    sub_24E602068(&qword_27F246390, &qword_27F246370, &qword_24FA02430, &unk_24F9FE4E8);
    sub_24F924E28();
    return sub_24E601704(v42, &qword_27F246380, &qword_24FA02448);
  }
}

uint64_t sub_24F4DEE7C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v157 = a3;
  v175 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v145 = *(v175 - 8);
  MEMORY[0x28223BE20](v175 - 8);
  v166 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v6 - 8);
  v174 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v173 = &v144 - v9;
  v172 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v172);
  v183 = (&v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = type metadata accessor for PlayerAvatarView(0);
  v171 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v170 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v181 = &v144 - v13;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v146);
  v149 = &v144 - v14;
  v147 = type metadata accessor for OverlappingPlayerAvatarsView(0);
  MEMORY[0x28223BE20](v147);
  v148 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlayerWithTimeStamp(0);
  v144 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v169 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246448, &qword_24FA02648);
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v160 = &v144 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246450, &unk_24FA02650);
  MEMORY[0x28223BE20](v19 - 8);
  v156 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v165 = &v144 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v23 - 8);
  v150 = &v144 - v24;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246458, &unk_24FA3B6A0);
  MEMORY[0x28223BE20](v176);
  v26 = &v144 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246460, &qword_24FA02660);
  MEMORY[0x28223BE20](v27 - 8);
  v179 = &v144 - v28;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246468, &qword_24FA02668);
  MEMORY[0x28223BE20](v178);
  v154 = &v144 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v177 = &v144 - v31;
  MEMORY[0x28223BE20](v32);
  v164 = &v144 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246470, &qword_24FA02670);
  v35 = v34 - 8;
  MEMORY[0x28223BE20](v34);
  v152 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v144 - v38;
  v40 = type metadata accessor for AchievementBadge(0);
  v41 = v40 - 8;
  MEMORY[0x28223BE20](v40);
  v163 = &v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = (&v144 - v44);
  v151 = type metadata accessor for AchievementCard(0);
  sub_24F4E0D54(a1 + *(v151 + 28), v45 + *(v41 + 28), type metadata accessor for AchievementBadgeModel);
  v46 = *(a1 + *(type metadata accessor for AchievementCardComponent.AchievementCardContent(0) + 20));
  v184 = a1;
  sub_24F4DBB80(v194, v46);
  *v45 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v47 = *(v41 + 32);
  v161 = v45;
  v48 = v45 + v47;
  v49 = v194[3];
  *(v48 + 2) = v194[2];
  *(v48 + 3) = v49;
  *(v48 + 8) = v195;
  v50 = v194[1];
  *v48 = v194[0];
  *(v48 + 1) = v50;
  sub_24F4E02E8(&v196);
  LOBYTE(v45) = v198;
  v180 = v196;
  v168 = v197;
  KeyPath = swift_getKeyPath();
  v52 = a2;
  v53 = sub_24F4DD21C(a2);
  v54 = swift_getKeyPath();
  v185[0] = v45;
  v196 = v180;
  v197 = v168;
  LOBYTE(v198) = v45;
  *(&v198 + 1) = KeyPath;
  LOBYTE(v199) = 1;
  *(&v199 + 1) = v54;
  v200 = v53;
  v191 = v198;
  v192 = v199;
  v193 = v53;
  v189 = v180;
  v190 = v168;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246478, &qword_24FA02710);
  sub_24F4E13B8();
  sub_24F9268B8();
  sub_24E601704(&v196, &qword_27F246478, &qword_24FA02710);
  v55 = swift_getKeyPath();
  v56 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246498, &unk_24FA02758) + 36)];
  *v56 = v55;
  *(v56 + 1) = 2;
  v56[16] = 0;
  v57 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v58 = *(v35 + 44);
  v162 = v39;
  *&v39[v58] = v57;
  v59 = v184[8];
  *&v189 = v184[7];
  *(&v189 + 1) = v59;
  sub_24E600AEC();

  v60 = sub_24F925E18();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = swift_getKeyPath();
  LODWORD(v180) = v52;
  v167 = v62;
  *&v168 = v60;
  v158 = v67;
  v159 = v66;
  if (v52 >= 2u)
  {
    v69 = sub_24F925908();
    v70 = v150;
    (*(*(v69 - 8) + 56))(v150, 1, 1, v69);
    v68 = sub_24F925968();
    sub_24E601704(v70, &qword_27F214698, &unk_24F95F810);
  }

  else
  {
    v68 = sub_24F925A08();
  }

  v71 = v176;
  v72 = swift_getKeyPath();
  v73 = v64 & 1;
  v187 = v64 & 1;
  v74 = swift_getKeyPath();
  v188 = 0;
  v75 = sub_24F9251C8();
  v76 = &v26[*(v71 + 36)];
  v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v78 = *MEMORY[0x277CE13B8];
  v79 = sub_24F927748();
  (*(*(v79 - 8) + 104))(&v76[v77], v78, v79);
  *v76 = v75;
  v80 = v167;
  *v26 = v168;
  *(v26 + 1) = v80;
  v26[16] = v73;
  v81 = v158;
  *(v26 + 3) = v159;
  *(v26 + 4) = v81;
  v26[40] = 1;
  *(v26 + 6) = v72;
  *(v26 + 7) = v68;
  *(v26 + 8) = v74;
  *(v26 + 9) = 2;
  v26[80] = 0;
  v82 = v179;
  sub_24E6009C8(v26, v179, &qword_27F246458, &unk_24FA3B6A0);
  v83 = sub_24F925818();
  v84 = v180;
  sub_24F923318();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v82;
  v94 = v177;
  sub_24E6009C8(v93, v177, &qword_27F246460, &qword_24FA02660);
  v95 = v94 + *(v178 + 36);
  *v95 = v83;
  *(v95 + 8) = v86;
  *(v95 + 16) = v88;
  *(v95 + 24) = v90;
  *(v95 + 32) = v92;
  *(v95 + 40) = 0;
  sub_24E6009C8(v94, v164, &qword_27F246468, &qword_24FA02668);
  if (v84 > 1u)
  {
    v97 = v160;
    v96 = v165;
  }

  else
  {
    v96 = v165;
    v97 = v160;
    if (!v84)
    {

      goto LABEL_9;
    }
  }

  v98 = sub_24F92CE08();

  if ((v98 & 1) == 0)
  {
    (*(v153 + 56))(v96, 1, 1, v155);
LABEL_27:
    v136 = v163;
    sub_24F4E0D54(v161, v163, type metadata accessor for AchievementBadge);
    v137 = v152;
    sub_24E60169C(v162, v152, &qword_27F246470, &qword_24FA02670);
    v138 = v164;
    v139 = v154;
    sub_24E60169C(v164, v154, &qword_27F246468, &qword_24FA02668);
    v140 = v156;
    sub_24E60169C(v96, v156, &qword_27F246450, &unk_24FA02650);
    v141 = v157;
    sub_24F4E0D54(v136, v157, type metadata accessor for AchievementBadge);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2464A0, &unk_24FA02768);
    sub_24E60169C(v137, v141 + v142[12], &qword_27F246470, &qword_24FA02670);
    sub_24E60169C(v139, v141 + v142[16], &qword_27F246468, &qword_24FA02668);
    v143 = v141 + v142[20];
    *v143 = 0;
    *(v143 + 8) = 1;
    sub_24E60169C(v140, v141 + v142[24], &qword_27F246450, &unk_24FA02650);
    sub_24E601704(v165, &qword_27F246450, &unk_24FA02650);
    sub_24E601704(v138, &qword_27F246468, &qword_24FA02668);
    sub_24E601704(v162, &qword_27F246470, &qword_24FA02670);
    sub_24F4E0DBC(v161, type metadata accessor for AchievementBadge);
    sub_24E601704(v140, &qword_27F246450, &unk_24FA02650);
    sub_24E601704(v139, &qword_27F246468, &qword_24FA02668);
    sub_24E601704(v137, &qword_27F246470, &qword_24FA02670);
    return sub_24F4E0DBC(v163, type metadata accessor for AchievementBadge);
  }

LABEL_9:
  v99 = *(v184 + *(v151 + 32));
  if (!v99)
  {
    v127 = 1;
LABEL_26:
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2344F8, &qword_24F9B2ED0);
    (*(*(v135 - 8) + 56))(v97, v127, 1, v135);
    sub_24F4E1530(v97, v96);
    (*(v153 + 56))(v96, 0, 1, v155);
    goto LABEL_27;
  }

  v100 = *(v99 + 16);
  if (v100)
  {
    v101 = v99 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
    v102 = *(v144 + 72);
    v167 = (v145 + 56);
    *&v168 = v102;
    v184 = MEMORY[0x277D84F90];
    do
    {
      v179 = v101;
      *&v180 = v100;
      v103 = v169;
      sub_24F4E0D54(v101, v169, type metadata accessor for PlayerWithTimeStamp);
      v104 = *(v103 + 24);
      v176 = *(v103 + 16);
      v105 = type metadata accessor for PlayerAvatar.Overlay(0);
      v106 = *(v105 - 8);
      v177 = v105;
      v178 = v106;
      v107 = *(v106 + 56);
      v108 = v173;
      v107(v173, 1, 1, v105);
      *&v191 = 0;
      v189 = 0u;
      v190 = 0u;
      v109 = v172;
      v110 = *(v172 + 20);
      v111 = v183;
      v107(v183 + v110, 1, 1, v105);
      v112 = v111 + *(v109 + 24);
      v186 = 0;
      memset(v185, 0, sizeof(v185));
      *v112 = 0u;
      *(v112 + 16) = 0u;
      *(v112 + 32) = 0;

      sub_24E61DA68(v185, v112, qword_27F21B590, &unk_24F93BE30);
      *v111 = v176;
      v111[1] = v104;

      sub_24E61DA68(v108, v111 + v110, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v189, v112, qword_27F21B590, &unk_24F93BE30);
      v113 = v170;
      sub_24F928948();
      sub_24F4E0DBC(v103, type metadata accessor for PlayerWithTimeStamp);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v114 = v174;
      sub_24E60169C(v111 + v110, v174, &qword_27F22DF80, &unk_24F942E50);
      v115 = *(v182 + 20);
      if ((*(v178 + 48))(v114, 1, v177) == 1)
      {
        sub_24E601704(v114, &qword_27F22DF80, &unk_24F942E50);
        v116 = 1;
        v117 = v175;
      }

      else
      {
        v118 = v166;
        sub_24F4E15A0(v114, v166, type metadata accessor for PlayerAvatar.Overlay);
        v117 = v175;
        v119 = v118 + *(v175 + 20);
        *v119 = 0;
        *(v119 + 8) = 1;
        v120 = (v118 + *(v117 + 24));
        *v120 = 0;
        v120[1] = 0;
        sub_24F4E15A0(v118, v113 + v115, type metadata accessor for PlayerAvatarView.Overlay);
        v116 = 0;
      }

      (*v167)(v113 + v115, v116, 1, v117);
      v121 = v182;
      v122 = v113 + *(v182 + 24);
      sub_24E60169C(v112, &v189, qword_27F24EC90, &unk_24F93C1D0);
      sub_24F4E0DBC(v183, type metadata accessor for PlayerAvatar);
      v123 = v190;
      *v122 = v189;
      *(v122 + 16) = v123;
      *(v122 + 32) = v191;
      *(v113 + *(v121 + 28)) = 7;
      sub_24F4E15A0(v113, v181, type metadata accessor for PlayerAvatarView);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = sub_24E619074(0, v184[2] + 1, 1, v184);
      }

      v125 = v184[2];
      v124 = v184[3];
      if (v125 >= v124 >> 1)
      {
        v184 = sub_24E619074((v124 > 1), v125 + 1, 1, v184);
      }

      v126 = v184;
      v184[2] = v125 + 1;
      sub_24F4E15A0(v181, v126 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v125, type metadata accessor for PlayerAvatarView);
      v101 = v179 + v168;
      v100 = v180 - 1;
    }

    while (v180 != 1);
  }

  else
  {
    v184 = MEMORY[0x277D84F90];
  }

  *&v189 = 0x4010000000000000;
  sub_24E66ED98();
  v128 = v148;
  sub_24F9237C8();
  v129 = v147;
  *(v128 + *(v147 + 20)) = v184;
  v130 = v128 + *(v129 + 24);
  *v130 = 3;
  *(v130 + 8) = 0;
  *(v128 + *(v129 + 28)) = 2;
  v131 = *MEMORY[0x277CDFA10];
  v132 = sub_24F923E98();
  v133 = v149;
  (*(*(v132 - 8) + 104))(v149, v131, v132);
  sub_24F4DB9CC(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24F4DB9CC(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    v97 = v160;
    sub_24F9263F8();
    sub_24E601704(v133, &qword_27F21CCC8, &qword_24F957520);
    sub_24F4E0DBC(v128, type metadata accessor for OverlappingPlayerAvatarsView);
    v127 = 0;
    v96 = v165;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

double sub_24F4E02E8@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924A78();
  MEMORY[0x28223BE20](v3 - 8);
  if (*(v1 + *(type metadata accessor for AchievementCard(0) + 44) + 8))
  {

    sub_24F926E48();
    v4 = sub_24F925E28();
    v6 = v5;
    v8 = v7;
    LODWORD(v21) = sub_24F9251C8();
    v9 = sub_24F925C58();
    v11 = v10;
    v20 = a1;
    v13 = v12;
    sub_24E600B40(v4, v6, v8 & 1);

    sub_24F924A68();
    sub_24F924A58();
    sub_24F924A28();
    sub_24F924A58();
    sub_24F924A48();
    sub_24F924A58();
    sub_24F924A98();
    v14 = sub_24F925DE8();
    v16 = v15;
    LOBYTE(v6) = v17 & 1;
    sub_24E5FD138(v14, v15, v17 & 1);

    sub_24E5FD138(v14, v16, v6);

    sub_24F924E28();
    v18 = v13 & 1;
    a1 = v20;
    sub_24E600B40(v9, v11, v18);

    sub_24E600B40(v14, v16, v6);

    sub_24E600B40(v14, v16, v6);
  }

  else
  {
    v21 = *(v1 + 40);
    sub_24E600AEC();

    sub_24F925E18();
    sub_24F924E28();
  }

  result = *&v21;
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 32) = v23;
  return result;
}

uint64_t sub_24F4E05C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AchievementCard(0) + 36));
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246440, &qword_24FA02640);
  return sub_24F4DEE7C(v1, v3, a1 + *(v4 + 44));
}

__n128 sub_24F4E0640@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v14, &qword_27F213F18, &qword_24F93BE20);
  v3 = v14[1];
  *a2 = v14[0];
  *(a2 + 16) = v3;
  *(a2 + 32) = v15;
  v4 = sub_24F924258();
  *(a2 + 64) = v4;
  *(a2 + 72) = sub_24F4DB9CC(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 40));
  v6 = *(v4 + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_24F924B38();
  (*(*(v8 - 8) + 104))(boxed_opaque_existential_1 + v6, v7, v8);
  __asm { FMOV            V0.2D, #26.0 }

  *boxed_opaque_existential_1 = result;
  return result;
}

unint64_t sub_24F4E07E4()
{
  result = qword_27F2462B8;
  if (!qword_27F2462B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2462B8);
  }

  return result;
}

unint64_t sub_24F4E089C()
{
  result = qword_27F2462D8;
  if (!qword_27F2462D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2462C0, &qword_24FA02398);
    sub_24F4E0954();
    sub_24E602068(&qword_27F246348, &qword_27F2462D0, &qword_24FA023A8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2462D8);
  }

  return result;
}

unint64_t sub_24F4E0954()
{
  result = qword_27F2462E0;
  if (!qword_27F2462E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2462E8, &qword_24FA023B0);
    sub_24F4E09E0();
    sub_24F4E0C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2462E0);
  }

  return result;
}

unint64_t sub_24F4E09E0()
{
  result = qword_27F2462F0;
  if (!qword_27F2462F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2462F8, &qword_24FA023B8);
    sub_24F4E0A98();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48, &qword_24F9570D0, &unk_24FA0D350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2462F0);
  }

  return result;
}

unint64_t sub_24F4E0A98()
{
  result = qword_27F246300;
  if (!qword_27F246300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246308, &qword_24FA023C0);
    sub_24F4E0B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246300);
  }

  return result;
}

unint64_t sub_24F4E0B24()
{
  result = qword_27F246310;
  if (!qword_27F246310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246318, &qword_24FA023C8);
    sub_24F4E0BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246310);
  }

  return result;
}

unint64_t sub_24F4E0BB0()
{
  result = qword_27F246320;
  if (!qword_27F246320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246328, &unk_24FA023D0);
    sub_24F4DB9CC(&qword_27F246330, type metadata accessor for AchievementCardComponent.AchievementCardContent, &unk_24FA025F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246320);
  }

  return result;
}

unint64_t sub_24F4E0C8C()
{
  result = qword_27F246338;
  if (!qword_27F246338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246340, &qword_24FA023E0);
    sub_24F4E0B24();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48, &qword_24F9570D0, &unk_24FA0D350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246338);
  }

  return result;
}

uint64_t sub_24F4E0D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4E0DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F4E0E1C()
{
  result = qword_27F2463B8;
  if (!qword_27F2463B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2463B8);
  }

  return result;
}

uint64_t sub_24F4E0E70(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2462A0, &unk_24FA020D0);
    sub_24F4DB9CC(a2, type metadata accessor for PlayerWithTimeStamp, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F4E0F0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F4E0F58()
{
  result = qword_27F2463F8;
  if (!qword_27F2463F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2463F8);
  }

  return result;
}

uint64_t sub_24F4E0FD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementCard(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F4E1050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementCard(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F4E10C0(uint64_t a1)
{
  result = type metadata accessor for AchievementCard(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F4E1138()
{
  result = qword_27F246410;
  if (!qword_27F246410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246368, &qword_24FA02428);
    sub_24F4E11C4();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246410);
  }

  return result;
}

unint64_t sub_24F4E11C4()
{
  result = qword_27F246418;
  if (!qword_27F246418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246360, &qword_24FA02420);
    sub_24E602068(&qword_27F246420, &qword_27F246358, &qword_24FA023F0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246418);
  }

  return result;
}

unint64_t sub_24F4E1280()
{
  result = qword_27F246428;
  if (!qword_27F246428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246428);
  }

  return result;
}

unint64_t sub_24F4E12D8()
{
  result = qword_27F246430;
  if (!qword_27F246430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246430);
  }

  return result;
}

unint64_t sub_24F4E1330()
{
  result = qword_27F246438;
  if (!qword_27F246438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246438);
  }

  return result;
}

unint64_t sub_24F4E13B8()
{
  result = qword_27F246480;
  if (!qword_27F246480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246478, &qword_24FA02710);
    sub_24F4E1470();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246480);
  }

  return result;
}

unint64_t sub_24F4E1470()
{
  result = qword_27F246488;
  if (!qword_27F246488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246490, &qword_24FA02718);
    sub_24E8C5A10();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246488);
  }

  return result;
}

uint64_t sub_24F4E1530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246448, &qword_24FA02648);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4E15A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4E1608(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA5B320 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA75D70 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xED00006E6F697470 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEE00737574617453 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

double sub_24F4E19FC@<D0>(uint64_t a2@<X8>)
{
  sub_24F925808();
  sub_24F4E1C6C(v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2464B8, &qword_24FA028A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2464C0, &qword_24FA028A8);
  sub_24F4E1CA4(&qword_27F2464C8, &qword_27F2464B8, &qword_24FA028A0, sub_24EEF41F0);
  sub_24F4E1CA4(&qword_27F2464D0, &qword_27F2464C0, &qword_24FA028A8, sub_24EEF4244);
  sub_24F924E28();
  v4 = v12;
  *(a2 + 64) = v11;
  *(a2 + 80) = v4;
  *(a2 + 96) = *v13;
  *(a2 + 111) = *&v13[15];
  v5 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a2 + 32) = v9;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_24F4E1CA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F4E1D2C()
{
  result = qword_27F2464D8;
  if (!qword_27F2464D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2464E0, &unk_24FA028B0);
    sub_24F4E1CA4(&qword_27F2464C8, &qword_27F2464B8, &qword_24FA028A0, sub_24EEF41F0);
    sub_24F4E1CA4(&qword_27F2464D0, &qword_27F2464C0, &qword_24FA028A8, sub_24EEF4244);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2464D8);
  }

  return result;
}

uint64_t sub_24F4E1E10(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for ChallengeSuggestionCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E1E4C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for SearchCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E1E88(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for AchievementsCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E1EC4(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for ChallengeInviteCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E1F00(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for MediaCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E1F3C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for FriendsArePlayingCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E1F7C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for InviteFriendsCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E1FB8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for ArcadeUpsellCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E1FF4(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for ActivityInviteCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E2030(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for ActivityCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24F4E206C(char a1)
{
  result = 0x79726F6765746163;
  switch(a1)
  {
    case 1:
      result = 0x666E496172747865;
      break;
    case 2:
      result = 0x6C6175736976;
      break;
    case 3:
      result = 5294388599723750000;
      break;
    case 4:
      result = 0x676E6964616568;
      break;
    case 5:
      result = 0x48746361706D6F63;
      break;
    case 6:
      result = 0x54746361706D6F63;
      break;
    case 7:
      result = 0x656C746974;
      break;
    case 8:
      result = 0x656C746974627573;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x7470697263736564;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6B63614264726163;
      break;
    case 13:
      result = 0x427972616D697270;
      break;
    case 14:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F4E2270(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for ChallengeCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E22AC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for LeaderboardPersonalBestCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E22E8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for FriendRequestCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_24F4E2340()
{
  result = qword_27F2464E8;
  if (!qword_27F2464E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2464E8);
  }

  return result;
}

uint64_t sub_24F4E2398(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for LeaderboardWithFriendCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E23D4(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for AppEventCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E2410(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for AppEventSearchCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E244C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for ChallengeCompletedCard(0) + 32));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F4E2488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardLayoutMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4E24EC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + *(type metadata accessor for DebugErrorCard(0) + 36));
  if (v3 == 6)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

void sub_24F4E2528(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, void (**a3)(uint64_t a1, char a2, uint64_t a3, char a4)@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {

        sub_24F4E9E44(a2, a3);
        return;
      }

      if (qword_27F2112F8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E628;
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E640;
    }

    goto LABEL_24;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for CardLayoutMetrics(0);
      v5 = qword_27F39E658;
    }

LABEL_24:
    v6 = __swift_project_value_buffer(v4, v5);

    sub_24F4E2488(v6, a3);
    return;
  }

  sub_24F4E9558(a2, a3);
}

uint64_t sub_24F4E26DC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 24);
  v10 = swift_checkMetadataState();
  v9(v10, AssociatedConformanceWitness);
  v11 = *v7;
  sub_24F4E27F0(v7);
  if (v11 == 6)
  {
    return a2;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_24F4E27F0(uint64_t a1)
{
  v2 = type metadata accessor for CommonCardAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F4E2874(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24F4E2A0C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesHistoryGameLockup(uint64_t a1)
{
  result = qword_27F2464F0;
  if (!qword_27F2464F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F4E2BDC(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F9289E8();
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
        if (v4 <= 0x3F)
        {
          sub_24E61C938(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F4E2CF4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246578, &qword_24FA02C38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4E4E04();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengesHistoryGameLockup(0);
    v8[14] = 1;
    sub_24F9289E8();
    sub_24F4E4F20(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD18();
    v8[12] = 3;
    sub_24F92CD08();
    v8[11] = 4;
    sub_24F92CD38();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[8] = 7;
    sub_24F929608();
    sub_24F4E4F20(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F4E30D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v33 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v36);
  v37 = &v33 - v5;
  v6 = sub_24F9289E8();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246568, &qword_24FA02C30);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v33 - v9;
  v11 = type metadata accessor for ChallengesHistoryGameLockup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v13[*(v14 + 36)];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v43 = v15;
  sub_24E61DA68(&v45, v15, qword_27F21B590, &unk_24F93BE30);
  v16 = v11[10];
  v17 = sub_24F92A6D8();
  v18 = *(*(v17 - 8) + 56);
  v44 = v16;
  v18(&v13[v16], 1, 1, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4E4E04();
  v40 = v10;
  v19 = v42;
  sub_24F92D108();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = v44;
    sub_24E601704(v43, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v13[v20], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v33 = v8;
    v42 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v48 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v21 = v46;
    *v13 = v45;
    *(v13 + 1) = v21;
    *(v13 + 4) = v47;
    LOBYTE(v45) = 1;
    sub_24F4E4F20(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v22 = v33;
    v23 = v6;
    sub_24F92CC68();
    v24 = v11;
    (*(v38 + 32))(&v13[v11[5]], v22, v23);
    LOBYTE(v45) = 2;
    v25 = sub_24F92CC38();
    v26 = v43;
    v13[v11[6]] = v25 & 1;
    LOBYTE(v45) = 3;
    v27 = sub_24F92CC28();
    v28 = v44;
    v29 = &v13[v24[7]];
    *v29 = v27;
    v29[1] = v30;
    LOBYTE(v45) = 4;
    *&v13[v24[8]] = sub_24F92CC58();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v48 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v45, v26, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v45) = 6;
    sub_24E65CAA0();
    v31 = v37;
    sub_24F92CC68();
    sub_24E61DA68(v31, &v13[v28], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v45) = 7;
    sub_24F4E4F20(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    (*(v39 + 8))(v40, v41);
    sub_24E6009C8(v35, &v13[v24[11]], &qword_27F213E68, &unk_24F93BC80);
    sub_24F4E4E58(v13, v34, type metadata accessor for ChallengesHistoryGameLockup);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_24F4E4EC0(v13, type metadata accessor for ChallengesHistoryGameLockup);
  }
}

unint64_t sub_24F4E38DC()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x4D747865746E6F63;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD00000000000001BLL;
    if (v1 != 4)
    {
      v6 = 0x6575676573;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 25705;
    v3 = 0x6564616372417369;
    if (v1 != 2)
    {
      v3 = 1701667182;
    }

    if (*v0)
    {
      v2 = 0x6E6F6349656D6167;
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
}

uint64_t sub_24F4E39D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4E50E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4E39F8(uint64_t a1)
{
  v2 = sub_24F4E4E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4E3A34(uint64_t a1)
{
  v2 = sub_24F4E4E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4E3A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F4E3BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_24F924A78();
  MEMORY[0x28223BE20](v3 - 8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246548, &unk_24FA02B68);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760, &qword_24F945460);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v77 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  v18 = type metadata accessor for ChallengesHistoryGameLockup(0);
  v19 = *(v18 + 20);
  v20 = v18;
  v21 = sub_24F9289E8();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v17, a1 + v19, v21);
  (*(v22 + 56))(v17, 0, 1, v21);
  v23 = type metadata accessor for GameIcon(0);
  v24 = v23[8];
  *&v17[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v17[v23[5]] = 1;
  v17[v23[6]] = 1;
  v17[v23[7]] = 0;
  sub_24F927618();
  sub_24F9238C8();
  v25 = *(v13 + 44);
  v75 = v17;
  v26 = &v17[v25];
  v27 = v83;
  *v26 = v82;
  *(v26 + 1) = v27;
  *(v26 + 2) = v84;
  *v11 = sub_24F924C98();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246550, &qword_24FA02BB0) + 44);
  v76 = v11;
  v69 = a1;
  sub_24F4E4364(a1, &v11[v28]);
  sub_24F924A68();
  sub_24F924A58();
  v29 = v20;
  v79[0] = *(a1 + *(v20 + 32));
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v30 = sub_24F925DE8();
  v32 = v31;
  LOBYTE(v23) = v33;
  sub_24F925888();
  v34 = sub_24F925C98();
  v36 = v35;
  LOBYTE(v24) = v37;
  v39 = v38;

  sub_24E600B40(v30, v32, v23 & 1);

  v79[0] = v34;
  v79[1] = v36;
  v80 = v24 & 1;
  v81 = v39;
  v40 = v70;
  sub_24F9268B8();
  sub_24E600B40(v34, v36, v24 & 1);

  sub_24E60169C(v69 + *(v29 + 36), v79, qword_27F24EC90, &unk_24F93C1D0);
  v41 = v81;
  sub_24E601704(v79, qword_27F21B590, &unk_24F93BE30);
  if (v41)
  {
    v42 = sub_24F926DF8();
    v43 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v45 = sub_24F926D38();
    v46 = swift_getKeyPath();
    v69 = v42;

    v67 = KeyPath;

    v68 = v43;

    v66 = v45;
  }

  else
  {
    v69 = 0;
    v67 = 0;
    v68 = 0;
    v46 = 0;
    v66 = 0;
  }

  v47 = v77;
  sub_24E60169C(v75, v77, &qword_27F216760, &qword_24F945460);
  v48 = v78;
  sub_24F4E4D84(v76, v78);
  v49 = v71;
  v50 = *(v71 + 16);
  v51 = v73;
  v52 = v40;
  v53 = v40;
  v54 = v74;
  v50(v73, v53, v74);
  v55 = v47;
  v56 = v72;
  sub_24E60169C(v55, v72, &qword_27F216760, &qword_24F945460);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246558, &qword_24FA02BB8);
  sub_24F4E4D84(v48, v56 + v57[12]);
  v58 = v56 + v57[16];
  *v58 = 0;
  *(v58 + 8) = 1;
  v50((v56 + v57[20]), v51, v54);
  v59 = (v56 + v57[24]);
  v60 = v69;
  v61 = v67;
  v62 = v68;
  v63 = v66;
  sub_24E6DC040(v69, v67, v68, v46, v66);
  sub_24E6DC0B0(v60, v61, v62, v46, v63);
  *v59 = v60;
  v59[1] = v61;
  v59[2] = v62;
  v59[3] = v46;
  v59[4] = v63;
  v64 = *(v49 + 8);
  v64(v52, v54);
  sub_24E601704(v76, &qword_27F246548, &unk_24FA02B68);
  sub_24E601704(v75, &qword_27F216760, &qword_24F945460);
  sub_24E6DC0B0(v60, v61, v62, v46, v63);
  v64(v51, v54);
  sub_24E601704(v78, &qword_27F246548, &unk_24FA02B68);
  return sub_24E601704(v77, &qword_27F216760, &qword_24F945460);
}

uint64_t sub_24F4E4364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v46 - v6;
  v7 = type metadata accessor for ChallengesHistoryGameLockup(0);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (*(a1 + *(v7 + 24)) == 1)
  {
    v47 = v7;
    v48 = a1;
    if (qword_27F211498 != -1)
    {
      swift_once();
    }

    v54 = xmmword_27F39E9F8;
    sub_24E600AEC();

    v12 = sub_24F925E18();
    v14 = v13;
    v16 = v15;
    sub_24F925A18();
    v17 = sub_24F925C98();
    v19 = v18;
    v21 = v20;

    sub_24E600B40(v12, v14, v16 & 1);

    LODWORD(v54) = sub_24F9251C8();
    v8 = sub_24F925C58();
    v9 = v22;
    v24 = v23;
    v11 = v25;
    sub_24E600B40(v17, v19, v21 & 1);

    v10 = v24 & 1;
    sub_24E5FD138(v8, v9, v24 & 1);

    v7 = v47;
    a1 = v48;
  }

  v26 = (a1 + *(v7 + 28));
  v27 = v26[1];
  *&v54 = *v26;
  *(&v54 + 1) = v27;
  sub_24E600AEC();

  v28 = sub_24F925E18();
  v30 = v29;
  *&v54 = v28;
  *(&v54 + 1) = v29;
  v32 = v31 & 1;
  v55 = v31 & 1;
  v56 = v33;
  v34 = v53;
  sub_24F9268B8();
  sub_24E600B40(v28, v30, v32);

  v36 = v50;
  v35 = v51;
  v37 = *(v51 + 16);
  v38 = v52;
  v37(v50, v34, v52);
  v39 = v11;
  v40 = v9;
  v41 = v8;
  v42 = v49;
  *v49 = v41;
  v42[1] = v40;
  v42[2] = v10;
  v42[3] = v39;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246560, &unk_24FA02C20);
  v37(v42 + *(v43 + 48), v36, v38);
  sub_24E65D2B4(v41, v40, v10, v39);
  sub_24E65D2F8(v41, v40, v10, v39);
  v44 = *(v35 + 8);
  v44(v53, v38);
  v44(v36, v38);
  return sub_24E65D2F8(v41, v40, v10, v39);
}

uint64_t sub_24F4E4720(uint64_t a1)
{
  v2 = sub_24F9248C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246510, &qword_24FA02B40);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  *v8 = sub_24F9249A8();
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246518, &qword_24FA02B48);
  sub_24F4E3BB0(a1, &v8[*(v9 + 44)]);
  v8[*(v6 + 36)] = 0;
  sub_24F9248B8();
  sub_24F4E4BE0();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v3 + 8))(v5, v2);
  return sub_24E601704(v8, &qword_27F246510, &qword_24FA02B40);
}

uint64_t sub_24F4E48C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #12.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFBC8];
  sub_24F4E4E58(v7, v4, MEMORY[0x277CDFBC8]);
  sub_24F4E4F20(&qword_27F214338, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
  v19 = sub_24F927348();
  result = sub_24F4E4EC0(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24F4E4A7C(uint64_t a1)
{
  sub_24F47D9DC();

  return sub_24F9218E8();
}

unint64_t sub_24F4E4B0C()
{
  result = qword_27F246508;
  if (!qword_27F246508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246508);
  }

  return result;
}

unint64_t sub_24F4E4BE0()
{
  result = qword_27F246520;
  if (!qword_27F246520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246510, &qword_24FA02B40);
    sub_24F4E4C98();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246520);
  }

  return result;
}

unint64_t sub_24F4E4C98()
{
  result = qword_27F246528;
  if (!qword_27F246528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246530, &qword_24FA02B50);
    sub_24E602068(&qword_27F246538, &qword_27F246540, &unk_24FA02B58, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246528);
  }

  return result;
}

uint64_t sub_24F4E4D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246548, &unk_24FA02B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F4E4E04()
{
  result = qword_27F246570;
  if (!qword_27F246570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246570);
  }

  return result;
}

uint64_t sub_24F4E4E58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4E4EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4E4F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4E4F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246510, &qword_24FA02B40);
  sub_24F4E4BE0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F4E4FE4()
{
  result = qword_27F246580;
  if (!qword_27F246580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246580);
  }

  return result;
}

unint64_t sub_24F4E503C()
{
  result = qword_27F246588;
  if (!qword_27F246588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246588);
  }

  return result;
}

unint64_t sub_24F4E5094()
{
  result = qword_27F246590;
  if (!qword_27F246590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246590);
  }

  return result;
}

uint64_t sub_24F4E50E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564616372417369 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA75D90 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_24F4E53E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = *(type metadata accessor for ContinuePlayingShelfIntent(0) - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F4E5584, 0, 0);
}

uint64_t sub_24F4E5584()
{
  v1 = v0[12];
  v19 = v0[13];
  v20 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v16 = v0[5];
  v17 = v0[14];
  v7 = v0[3];
  v8 = v0[4];
  v18 = v0[2];
  v9 = sub_24E802CE0(&unk_2861C2338);
  sub_24F4E6BA8(v7, v3, type metadata accessor for ContinuePlayingShelfIntent);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_24F4E6A20(v3, v11 + v10);
  *(v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  v12 = swift_task_alloc();
  *(v12 + 16) = v9;
  *(v12 + 24) = &unk_24FA02DE8;
  *(v12 + 32) = v11;
  *(v12 + 40) = 257;
  type metadata accessor for GSKShelf(0);
  (*(v6 + 104))(v5, *MEMORY[0x277D85778], v16);

  sub_24F92B928();

  (*(v1 + 16))(v19, v17, v20);
  sub_24E613678();
  sub_24F9280F8();
  (*(v1 + 8))(v17, v20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v13 - 8) + 56))(v18, 0, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F4E5810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_24E614970;

  return sub_24F4E58C0(a1, a4, a5);
}

uint64_t sub_24F4E58C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = type metadata accessor for ContinuePlayingShelfConstructionIntent(0);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for ContinuePlayingDataIntent(0);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F4E5988, 0, 0);
}

uint64_t sub_24F4E5988()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = type metadata accessor for ContinuePlayingShelfIntent(0);
  *(v0 + 112) = v4;
  v5 = v4[5];
  *(v0 + 176) = v5;
  v6 = *(v3 + v4[7]);
  v7 = *(v3 + v4[6]);
  sub_24F4E6BA8(v3 + v5, v2, type metadata accessor for Player);
  *(v2 + *(v1 + 20)) = v6;
  *(v2 + *(v1 + 24)) = v7;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_24F4E5A9C;
  v9 = *(v0 + 104);
  v10 = *(v0 + 72);

  return sub_24E64A838(v9, v10);
}

uint64_t sub_24F4E5A9C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_24F4E6234;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_24F4E5BC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F4E5BC4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v7 = *v5;
  v6 = v5[1];
  sub_24F4E6BA8(v5 + *(v0 + 176), v3 + v4[5], type metadata accessor for Player);
  v8 = *(v5 + *(v2 + 32));
  *v3 = v7;
  v3[1] = v6;
  *(v3 + v4[6]) = v1;
  *(v3 + v4[7]) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);

  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_24F4E5CFC;

  return MEMORY[0x28217F228](v0 + 16, v9, v9);
}

uint64_t sub_24F4E5CFC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24F4E6020;
  }

  else
  {
    v2 = sub_24F4E5E10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F4E5E10()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_24F4E6C70(&qword_27F21D560, type metadata accessor for ContinuePlayingShelfConstructionIntent, &unk_24FA10540);
  *v3 = v0;
  v3[1] = sub_24F4E5F0C;
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x28217F4B0](v8, v5, v7, v6, v4, v1, v2);
}

uint64_t sub_24F4E5F0C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24F4E6180;
  }

  else
  {
    v2 = sub_24F4E60CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F4E6020()
{
  v1 = v0[13];
  sub_24F4E6C10(v0[11], type metadata accessor for ContinuePlayingShelfConstructionIntent);
  sub_24F4E6C10(v1, type metadata accessor for ContinuePlayingDataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F4E60CC()
{
  v1 = v0[13];
  v2 = v0[11];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F4E6C10(v2, type metadata accessor for ContinuePlayingShelfConstructionIntent);
  sub_24F4E6C10(v1, type metadata accessor for ContinuePlayingDataIntent);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24F4E6180()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[13];
  sub_24F4E6C10(v0[11], type metadata accessor for ContinuePlayingShelfConstructionIntent);
  sub_24F4E6C10(v1, type metadata accessor for ContinuePlayingDataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F4E6234()
{
  sub_24F4E6C10(*(v0 + 104), type metadata accessor for ContinuePlayingDataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F4E62C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E6541E4;

  return sub_24F4E53E0(a1, a2, a3);
}

uint64_t sub_24F4E6370()
{
  v1 = type metadata accessor for ContinuePlayingShelfIntent(0);
  v2 = *(*(v1 - 8) + 80);

  v3 = v0 + ((v2 + 16) & ~v2) + *(v1 + 20);

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v30 = *(v6 - 8);
  v29 = *(v30 + 8);
  v29(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle(0);
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v30 + 48))(v7 + v11, 1, v6))
      {
        v29(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v30 + 48))(v12 + v13, 1, v6))
      {
        v29(v12 + v13, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game(0);
    v29(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v30 + 48))(v14 + v17, 1, v6))
    {
      v29(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game(0);
    v29(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v30 + 48))(v21 + v24, 1, v6))
    {
      v29(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F4E6A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuePlayingShelfIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4E6A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for ContinuePlayingShelfIntent(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_24E614970;

  return sub_24F4E5810(a1, a2, a3, v3 + v9, v10);
}

uint64_t sub_24F4E6BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4E6C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4E6C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PlayerProfileOverviewShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for PlayerProfileOverviewShelfIntent(uint64_t a1)
{
  result = qword_27F2465C8;
  if (!qword_27F2465C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 PlayerProfileOverviewShelfIntent.playerProfileStats.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PlayerProfileOverviewShelfIntent(0) + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

unint64_t PlayerProfileOverviewShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x616C506C61636F6CLL;
  *(inited + 96) = 0xEB00000000726579;
  v6 = type metadata accessor for PlayerProfileOverviewShelfIntent(0);
  v7 = v6[5];
  v8 = type metadata accessor for Player(0);
  *(inited + 128) = v8;
  v9 = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  *(inited + 136) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F4E7AD4(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x726579616C70;
  *(inited + 152) = 0xE600000000000000;
  v11 = v6[6];
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  v12 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F4E7AD4(v1 + v11, v12, type metadata accessor for Player);
  strcpy((inited + 200), "isPlayerFriend");
  *(inited + 215) = -18;
  v13 = *(v1 + v6[7]);
  v14 = MEMORY[0x277D22598];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 248) = v14;
  *(inited + 216) = v13;
  *(inited + 256) = 0xD000000000000012;
  *(inited + 264) = 0x800000024FA75DB0;
  v15 = v1 + v6[8];
  v16 = *(v15 + 4);
  v17 = sub_24F4E70D8();
  v18 = swift_allocObject();
  v19 = *v15;
  v20 = *(v15 + 1);
  *(inited + 296) = &type metadata for PlayerProfileStats;
  *(inited + 304) = v17;
  *(inited + 272) = v18;
  *(v18 + 16) = v19;
  *(v18 + 32) = v20;
  *(v18 + 48) = v16;

  v21 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v21;
  return result;
}

unint64_t sub_24F4E70D8()
{
  result = qword_27F246598;
  if (!qword_27F246598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246598);
  }

  return result;
}

uint64_t sub_24F4E713C()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x726579616C70;
  v4 = 0x726579616C507369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616C506C61636F6CLL;
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

uint64_t sub_24F4E71E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4E7EBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4E7210(uint64_t a1)
{
  v2 = sub_24F4E79D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4E724C(uint64_t a1)
{
  v2 = sub_24F4E79D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerProfileOverviewShelfIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2465A0, &qword_24FA02E30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4E79D8();
  sub_24F92D128();
  LOBYTE(v14[0]) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for PlayerProfileOverviewShelfIntent(0);
    LOBYTE(v14[0]) = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    LOBYTE(v14[0]) = 2;
    sub_24F92CD48();
    LOBYTE(v14[0]) = 3;
    sub_24F92CD18();
    v10 = v3 + *(v9 + 32);
    v11 = *(v10 + 32);
    v12 = *(v10 + 16);
    v14[0] = *v10;
    v14[1] = v12;
    v15 = v11;
    v16 = 4;
    sub_24F4E7A2C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PlayerProfileOverviewShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v25);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2465B8, &qword_24FA02E38);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = v22 - v8;
  v10 = type metadata accessor for PlayerProfileOverviewShelfIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4E79D8();
  v26 = v9;
  v13 = v28;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v24;
  v28 = v4;
  LOBYTE(v29) = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v15;
  v22[1] = v15;
  LOBYTE(v29) = 1;
  v22[0] = sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v7, v12 + v10[5]);
  LOBYTE(v29) = 2;
  v16 = v28;
  sub_24F92CC68();
  sub_24E61C0A8(v16, v12 + v10[6]);
  LOBYTE(v29) = 3;
  v17 = v26;
  *(v12 + v10[7]) = sub_24F92CC38() & 1;
  v32 = 4;
  sub_24F4E7A80();
  sub_24F92CC68();
  (*(v14 + 8))(v17, v27);
  v19 = v31;
  v20 = v12 + v10[8];
  v21 = v30;
  *v20 = v29;
  *(v20 + 1) = v21;
  *(v20 + 4) = v19;
  sub_24F4E7AD4(v12, v23, type metadata accessor for PlayerProfileOverviewShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F4E7B3C(v12, type metadata accessor for PlayerProfileOverviewShelfIntent);
}

unint64_t sub_24F4E79D8()
{
  result = qword_27F2465A8;
  if (!qword_27F2465A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2465A8);
  }

  return result;
}

unint64_t sub_24F4E7A2C()
{
  result = qword_27F2465B0;
  if (!qword_27F2465B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2465B0);
  }

  return result;
}

unint64_t sub_24F4E7A80()
{
  result = qword_27F2465C0;
  if (!qword_27F2465C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2465C0);
  }

  return result;
}

uint64_t sub_24F4E7AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4E7B3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4E7BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F4E7C70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F4E7D14(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F4E7DB8()
{
  result = qword_27F2465D8;
  if (!qword_27F2465D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2465D8);
  }

  return result;
}

unint64_t sub_24F4E7E10()
{
  result = qword_27F2465E0;
  if (!qword_27F2465E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2465E0);
  }

  return result;
}

unint64_t sub_24F4E7E68()
{
  result = qword_27F2465E8;
  if (!qword_27F2465E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2465E8);
  }

  return result;
}

uint64_t sub_24F4E7EBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C506C61636F6CLL && a2 == 0xEB00000000726579 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726579616C507369 && a2 == 0xEE00646E65697246 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA75DB0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t LaunchGameClipAction.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LaunchGameClipAction.url.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LaunchGameClipAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LaunchGameClipAction(0) + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LaunchGameClipAction(uint64_t a1)
{
  result = qword_27F246608;
  if (!qword_27F246608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F4E81A8()
{
  v1 = 0x4449656C646E7562;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
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

uint64_t sub_24F4E822C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4E8C48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4E8254(uint64_t a1)
{
  v2 = sub_24F4E84F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4E8290(uint64_t a1)
{
  v2 = sub_24F4E84F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchGameClipAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2465F0, &qword_24FA03060);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4E84F4();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CD18();
    type metadata accessor for LaunchGameClipAction(0);
    v8[12] = 3;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F4E84F4()
{
  result = qword_27F2465F8;
  if (!qword_27F2465F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2465F8);
  }

  return result;
}

uint64_t LaunchGameClipAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_24F928AD8();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246600, &qword_24FA03068);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = type metadata accessor for LaunchGameClipAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4E84F4();
  v28 = v8;
  v12 = v29;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v29 = v5;
  v14 = v26;
  v15 = v27;
  v33 = 0;
  v16 = sub_24F92CC28();
  v18 = v17;
  *v11 = v16;
  *(v11 + 1) = v17;
  v32 = 1;
  *(v11 + 2) = sub_24F92CC28();
  *(v11 + 3) = v19;
  v31 = 2;
  v23[1] = 0;
  v20 = sub_24F92CC38();
  v23[0] = v18;
  v11[32] = v20 & 1;
  v30 = 3;
  sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
  v21 = v29;
  sub_24F92CC68();
  (*(v14 + 8))(v28, v15);
  (*(v24 + 32))(&v11[*(v9 + 28)], v21, v3);
  sub_24E755EE4(v11, v25);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24E7561C0(v11);
}

uint64_t sub_24F4E8940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F4E8A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F4E8AA4(uint64_t a1)
{
  result = sub_24F928AD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F4E8B44()
{
  result = qword_27F246618;
  if (!qword_27F246618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246618);
  }

  return result;
}

unint64_t sub_24F4E8B9C()
{
  result = qword_27F246620;
  if (!qword_27F246620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246620);
  }

  return result;
}

unint64_t sub_24F4E8BF4()
{
  result = qword_27F246628;
  if (!qword_27F246628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246628);
  }

  return result;
}

uint64_t sub_24F4E8C48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA75DD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F4E8DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v23 = a2;
  v25 = a4;
  v5 = type metadata accessor for CardHeightViewModifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924038();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  sub_24F4ED984(a1, v7, type metadata accessor for CardLayoutMetrics.CardHeight);
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  *&v7[v5[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  *&v7[v5[8]] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *&v7[v5[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221988, &qword_24FA3CD60);
  swift_storeEnumTagMultiPayload();
  *&v7[v5[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v17 = &v7[v5[5]];
  *v17 = KeyPath;
  v17[8] = 0;
  v18 = &v7[v5[6]];
  *v18 = v16;
  v18[8] = 0;
  v19 = v24;
  MEMORY[0x25304C420](v7, v23, v5, v24);
  sub_24F4ED30C(v7, type metadata accessor for CardHeightViewModifier);
  v20 = sub_24F4ED9EC(&qword_27F217CC0, type metadata accessor for CardHeightViewModifier, &unk_24FA033B0);
  v26 = v19;
  v27 = v20;
  swift_getWitnessTable();
  sub_24E7896B8();
  v21 = *(v9 + 8);
  v21(v11, v8);
  sub_24E7896B8();
  return (v21)(v14, v8);
}

uint64_t sub_24F4E9118()
{
  v0 = sub_24F9259C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CardLayoutMetrics(0);
  __swift_allocate_value_buffer(v7, qword_27F39E610);
  v8 = __swift_project_value_buffer(v7, qword_27F39E610);
  *v6 = CGSizeMake;
  v6[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_24F925A08();
  v9 = sub_24F9258E8();

  v30 = sub_24F9249A8();
  sub_24F925A08();
  v31 = sub_24F9258E8();

  sub_24F925988();
  sub_24F9258E8();

  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  v10 = sub_24F9259F8();

  (*(v1 + 8))(v3, v0);
  v11 = sub_24F925198();
  v33 = MEMORY[0x277CE04F8];
  v34 = MEMORY[0x277CE04E8];
  LODWORD(v32) = v11;
  sub_24F925A08();
  v12 = sub_24F9258E8();

  sub_24F925A18();
  v13 = sub_24F9258E8();

  sub_24F925A18();
  v14 = sub_24F9258E8();

  sub_24F925A08();
  sub_24F925938();
  v15 = sub_24F9259A8();

  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v29 = xmmword_27F254460;
  v16 = qword_27F254470;
  v17 = qword_27F254478;
  sub_24F4ED91C(v6, v8, type metadata accessor for CardLayoutMetrics.CardHeight);
  v18 = (v8 + v7[5]);
  __asm { FMOV            V0.2D, #10.0 }

  *v18 = _Q0;
  v18[1] = xmmword_24F947C60;
  *(v8 + v7[6]) = v9;
  *(v8 + v7[7]) = 1;
  *(v8 + v7[8]) = 0;
  *(v8 + v7[9]) = 1;
  *(v8 + v7[10]) = 0;
  *(v8 + v7[11]) = v30;
  v24 = (v8 + v7[12]);
  *v24 = 0;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = 0x4030000000000000;
  *(v8 + v7[13]) = 0;
  v25 = (v8 + v7[14]);
  __asm { FMOV            V0.2D, #20.0 }

  *v25 = _Q0;
  v25[1] = _Q0;
  *(v8 + v7[15]) = 0;
  *(v8 + v7[16]) = 0x4024000000000000;
  *(v8 + v7[17]) = 1;
  *(v8 + v7[18]) = v31;
  *(v8 + v7[19]) = 1;
  *(v8 + v7[20]) = v10;
  *(v8 + v7[21]) = 4;
  sub_24E612C80(&v32, v8 + v7[22]);
  *(v8 + v7[23]) = v12;
  *(v8 + v7[24]) = 1;
  *(v8 + v7[25]) = v13;
  *(v8 + v7[26]) = 1;
  *(v8 + v7[27]) = v14;
  *(v8 + v7[28]) = 1;
  *(v8 + v7[29]) = v15;
  *(v8 + v7[30]) = 0x404E000000000000;
  *(v8 + v7[31]) = 0xBFC657184AE74487;
  v27 = v8 + v7[32];
  *v27 = v29;
  *(v27 + 16) = v16;
  *(v27 + 24) = v17;
}

uint64_t sub_24F4E9558@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1, char a2, uint64_t a3, char a4)@<X8>)
{
  v4 = sub_24F9259C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *a2 = sub_24F4E9D44;
  a2[1] = v13;
  type metadata accessor for CardLayoutMetrics.CardHeight(0);
  swift_storeEnumTagMultiPayload();
  sub_24F925A08();
  v14 = sub_24F9258E8();

  v15 = sub_24F9249A8();
  sub_24F925A08();
  v36 = sub_24F9258E8();

  sub_24F925898();
  sub_24F9258E8();

  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
  v16 = sub_24F9259F8();

  (*(v5 + 8))(v7, v4);
  LODWORD(v7) = sub_24F925198();
  v17 = type metadata accessor for CardLayoutMetrics(0);
  v18 = a2 + v17[22];
  v19 = MEMORY[0x277CE04E8];
  *(v18 + 3) = MEMORY[0x277CE04F8];
  *(v18 + 4) = v19;
  *v18 = v7;
  sub_24F925A08();
  v20 = sub_24F9258E8();

  sub_24F925A18();
  v21 = sub_24F9258E8();

  sub_24F925A18();
  v22 = sub_24F9258E8();

  sub_24F925A08();
  sub_24F925938();
  v23 = sub_24F9259A8();

  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v24 = (a2 + v17[5]);
  __asm { FMOV            V0.2D, #10.0 }

  *v24 = _Q0;
  v24[1] = xmmword_24F947C60;
  *(a2 + v17[6]) = v14;
  *(a2 + v17[7]) = 1;
  *(a2 + v17[8]) = 0;
  *(a2 + v17[9]) = 1;
  *(a2 + v17[10]) = 0;
  *&_Q0 = qword_27F254470;
  *(a2 + v17[11]) = v15;
  v30 = (a2 + v17[12]);
  *v30 = 0;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = 0x4030000000000000;
  *(a2 + v17[13]) = 0;
  v31 = (a2 + v17[14]);
  *v31 = xmmword_24FA03230;
  v31[1] = xmmword_24FA03230;
  *(a2 + v17[15]) = 0;
  *(a2 + v17[16]) = 0x4024000000000000;
  *(a2 + v17[17]) = 1;
  *(a2 + v17[18]) = v36;
  *(a2 + v17[19]) = 1;
  v32 = qword_27F254478;
  *(a2 + v17[20]) = v16;
  *(a2 + v17[21]) = 2;
  *(a2 + v17[23]) = v20;
  *(a2 + v17[24]) = 1;
  *(a2 + v17[25]) = v21;
  *(a2 + v17[26]) = 1;
  *(a2 + v17[27]) = v22;
  *(a2 + v17[28]) = 1;
  *(a2 + v17[29]) = v23;
  *(a2 + v17[30]) = 0x4044000000000000;
  *(a2 + v17[31]) = 0;
  v33 = a2 + v17[32];
  *v33 = xmmword_27F254460;
  *(v33 + 2) = _Q0;
  *(v33 + 3) = v32;
}

void sub_24F4E99CC(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = sub_24F922348();
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F923E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    (*(v11 + 16))(v13, a5, v10);
    v14 = (*(v11 + 88))(v13, v10);
    if (v14 == *MEMORY[0x277CDF9F8] || v14 == *MEMORY[0x277CDF9E0] || v14 == *MEMORY[0x277CDF9E8] || v14 == *MEMORY[0x277CDF9D8] || v14 == *MEMORY[0x277CDF9F0] || v14 == *MEMORY[0x277CDFA00] || v14 == *MEMORY[0x277CDFA10])
    {
      goto LABEL_22;
    }

    if (v14 != *MEMORY[0x277CDF988] && v14 != *MEMORY[0x277CDF998] && v14 != *MEMORY[0x277CDF9A8] && v14 != *MEMORY[0x277CDF9B8] && v14 != *MEMORY[0x277CDF9D0])
    {
      (*(v11 + 8))(v13, v10);
LABEL_22:
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      sub_24F922308();
      (*(v25 + 8))(v9, v7);
    }
  }
}

uint64_t sub_24F4E9CBC()
{
  v1 = sub_24F923E98();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24F4E9D44(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v7 = a2 & 1;
  v8 = a4 & 1;
  v9 = *(sub_24F923E98() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_24F4E99CC(a1, v7, a3, v8, v10);
}

double sub_24F4E9E44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v50 = sub_24F9259C8();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F923E98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  (*(v8 + 16))(v10, a1, v7, v15);
  v18 = (*(v8 + 88))(v10, v7);
  if (v18 == *MEMORY[0x277CDF9F8] || v18 == *MEMORY[0x277CDF9E0] || v18 == *MEMORY[0x277CDF9E8] || v18 == *MEMORY[0x277CDF9D8] || v18 == *MEMORY[0x277CDF9F0] || v18 == *MEMORY[0x277CDFA00] || v18 == *MEMORY[0x277CDFA10])
  {
    goto LABEL_21;
  }

  if (v18 == *MEMORY[0x277CDF988] || v18 == *MEMORY[0x277CDF998] || v18 == *MEMORY[0x277CDF9A8])
  {
    v25 = 0x407B000000000000;
  }

  else
  {
    if (v18 != *MEMORY[0x277CDF9B8] && v18 != *MEMORY[0x277CDF9D0])
    {
      (*(v8 + 8))(v10, v7);
LABEL_21:
      v25 = 0x4061C00000000000;
      goto LABEL_35;
    }

    v25 = 0x4081F80000000000;
  }

LABEL_35:
  *v13 = v25;
  swift_storeEnumTagMultiPayload();
  sub_24F4ED91C(v13, v17, type metadata accessor for CardLayoutMetrics.CardHeight);
  v28 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  sub_24F4ED984(v17, a2, type metadata accessor for CardLayoutMetrics.CardHeight);
  sub_24F9258D8();
  v47 = sub_24F9258E8();

  v48 = sub_24F9249A8();
  sub_24F925A08();
  v49 = sub_24F9258E8();

  sub_24F925A18();
  sub_24F9258E8();

  v29 = v50;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v50);
  v46 = sub_24F9259F8();

  (*(v4 + 8))(v6, v29);
  LODWORD(v29) = sub_24F925198();
  v30 = type metadata accessor for CardLayoutMetrics(0);
  v31 = a2 + v30[22];
  v32 = MEMORY[0x277CE04E8];
  *(v31 + 24) = MEMORY[0x277CE04F8];
  *(v31 + 32) = v32;
  *v31 = v29;
  sub_24F925A08();
  v33 = sub_24F9258E8();

  sub_24F925A18();
  v34 = sub_24F9258E8();

  v35 = sub_24F925A08();
  sub_24F925A08();
  sub_24F925938();
  v36 = sub_24F9259A8();

  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  if (v28)
  {
    v37 = 3;
  }

  else
  {
    v37 = 2;
  }

  v50 = xmmword_27F254460;
  v38 = qword_27F254470;
  v39 = qword_27F254478;

  sub_24F4ED30C(v17, type metadata accessor for CardLayoutMetrics.CardHeight);
  v40 = (a2 + v30[5]);
  *v40 = 0u;
  v40[1] = 0u;
  v41 = v48;
  *(a2 + v30[6]) = v47;
  *(a2 + v30[7]) = 2;
  *(a2 + v30[8]) = 0;
  *(a2 + v30[9]) = 0;
  *(a2 + v30[10]) = 0;
  *(a2 + v30[11]) = v41;
  v42 = (a2 + v30[12]);
  *v42 = 0;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = 0x4030000000000000;
  *(a2 + v30[13]) = 0;
  v43 = (a2 + v30[14]);
  *v43 = xmmword_24F956A30;
  v43[1] = xmmword_24F956A30;
  *(a2 + v30[15]) = 0;
  *(a2 + v30[16]) = 0;
  *(a2 + v30[17]) = 1;
  *(a2 + v30[18]) = v49;
  *(a2 + v30[19]) = 1;
  *(a2 + v30[20]) = v46;
  *(a2 + v30[21]) = v37;
  *(a2 + v30[23]) = v33;
  *(a2 + v30[24]) = 1;
  *(a2 + v30[25]) = v34;
  *(a2 + v30[26]) = 1;
  *(a2 + v30[27]) = v35;
  *(a2 + v30[28]) = 1;
  *(a2 + v30[29]) = v36;
  *(a2 + v30[30]) = 0x4042000000000000;
  *(a2 + v30[31]) = 0;
  v44 = a2 + v30[32];
  result = *&v50;
  *v44 = v50;
  *(v44 + 16) = v38;
  *(v44 + 24) = v39;
  return result;
}

uint64_t sub_24F4EA454()
{
  v0 = sub_24F9259C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CardLayoutMetrics(0);
  __swift_allocate_value_buffer(v7, qword_27F39E628);
  v8 = __swift_project_value_buffer(v7, qword_27F39E628);
  *v6 = CGSizeMake;
  v6[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_24F925A08();
  v9 = sub_24F9258E8();

  v29 = sub_24F9249A8();
  sub_24F925A08();
  v30 = sub_24F9258E8();

  sub_24F925A18();
  sub_24F9258E8();

  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  v10 = sub_24F9259F8();

  (*(v1 + 8))(v3, v0);
  v11 = sub_24F925198();
  v32 = MEMORY[0x277CE04F8];
  v33 = MEMORY[0x277CE04E8];
  LODWORD(v31) = v11;
  sub_24F925A08();
  v12 = sub_24F9258E8();

  sub_24F925A18();
  v13 = sub_24F9258E8();

  sub_24F925A08();
  v14 = sub_24F9258E8();

  sub_24F925A08();
  sub_24F925938();
  v15 = sub_24F9259A8();

  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v28 = xmmword_27F254460;
  v16 = qword_27F254470;
  v17 = qword_27F254478;
  sub_24F4ED91C(v6, v8, type metadata accessor for CardLayoutMetrics.CardHeight);
  v18 = (v8 + v7[5]);
  __asm { FMOV            V0.2D, #10.0 }

  *v18 = _Q0;
  v18[1] = _Q0;
  *(v8 + v7[6]) = v9;
  *(v8 + v7[7]) = 1;
  *(v8 + v7[8]) = 0;
  *(v8 + v7[9]) = 1;
  *(v8 + v7[10]) = 0;
  *(v8 + v7[11]) = v29;
  v24 = (v8 + v7[12]);
  *v24 = 0u;
  v24[1] = 0u;
  *(v8 + v7[13]) = 0;
  v25 = (v8 + v7[14]);
  *v25 = xmmword_24F9EA360;
  v25[1] = xmmword_24FA03230;
  *(v8 + v7[15]) = 0;
  *(v8 + v7[16]) = 0;
  *(v8 + v7[17]) = 1;
  *(v8 + v7[18]) = v30;
  *(v8 + v7[19]) = 1;
  *(v8 + v7[20]) = v10;
  *(v8 + v7[21]) = 3;
  sub_24E612C80(&v31, v8 + v7[22]);
  *(v8 + v7[23]) = v12;
  *(v8 + v7[24]) = 1;
  *(v8 + v7[25]) = v13;
  *(v8 + v7[26]) = 1;
  *(v8 + v7[27]) = v14;
  *(v8 + v7[28]) = 1;
  *(v8 + v7[29]) = v15;
  *(v8 + v7[30]) = 0x4038000000000000;
  *(v8 + v7[31]) = 0;
  v26 = v8 + v7[32];
  *v26 = v28;
  *(v26 + 16) = v16;
  *(v26 + 24) = v17;
}

uint64_t sub_24F4EA880()
{
  v0 = sub_24F9259C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CardLayoutMetrics(0);
  __swift_allocate_value_buffer(v7, qword_27F39E640);
  v8 = __swift_project_value_buffer(v7, qword_27F39E640);
  swift_storeEnumTagMultiPayload();
  sub_24F925A08();
  v9 = sub_24F9258E8();

  v24 = sub_24F9249A8();
  sub_24F925A08();
  v25 = sub_24F9258E8();

  sub_24F9258D8();
  sub_24F9258E8();

  (*(v1 + 104))(v3, *MEMORY[0x277CE0A10], v0);
  v10 = sub_24F9259F8();

  (*(v1 + 8))(v3, v0);
  v11 = sub_24F925198();
  v27 = MEMORY[0x277CE04F8];
  v28 = MEMORY[0x277CE04E8];
  LODWORD(v26) = v11;
  sub_24F925A08();
  v12 = sub_24F9258E8();

  sub_24F925A18();
  v13 = sub_24F9258E8();

  v14 = sub_24F925A18();
  sub_24F925A08();
  sub_24F925938();
  v15 = sub_24F9259A8();

  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v23 = xmmword_27F254460;
  v16 = qword_27F254470;
  v17 = qword_27F254478;
  sub_24F4ED91C(v6, v8, type metadata accessor for CardLayoutMetrics.CardHeight);
  v18 = (v8 + v7[5]);
  *v18 = 0u;
  v18[1] = 0u;
  *(v8 + v7[6]) = v9;
  *(v8 + v7[7]) = 1;
  *(v8 + v7[8]) = 0;
  *(v8 + v7[9]) = 0;
  *(v8 + v7[10]) = 0;
  *(v8 + v7[11]) = v24;
  v19 = (v8 + v7[12]);
  *v19 = 0u;
  v19[1] = 0u;
  *(v8 + v7[13]) = 0;
  v20 = (v8 + v7[14]);
  *v20 = xmmword_24F94BC80;
  v20[1] = xmmword_24F94BC80;
  *(v8 + v7[15]) = 0;
  *(v8 + v7[16]) = 0x4024000000000000;
  *(v8 + v7[17]) = 1;
  *(v8 + v7[18]) = v25;
  *(v8 + v7[19]) = 1;
  *(v8 + v7[20]) = v10;
  *(v8 + v7[21]) = 2;
  sub_24E612C80(&v26, v8 + v7[22]);
  *(v8 + v7[23]) = v12;
  *(v8 + v7[24]) = 1;
  *(v8 + v7[25]) = v13;
  *(v8 + v7[26]) = 1;
  *(v8 + v7[27]) = v14;
  *(v8 + v7[28]) = 1;
  *(v8 + v7[29]) = v15;
  *(v8 + v7[30]) = 0x4044000000000000;
  *(v8 + v7[31]) = 0xBFC657184AE74487;
  v21 = v8 + v7[32];
  *v21 = v23;
  *(v21 + 16) = v16;
  *(v21 + 24) = v17;
}

uint64_t sub_24F4EAC90()
{
  v0 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for CardLayoutMetrics(0);
  __swift_allocate_value_buffer(v3, qword_27F39E658);
  v4 = __swift_project_value_buffer(v3, qword_27F39E658);
  *v2 = 0;
  swift_storeEnumTagMultiPayload();
  v5 = sub_24F9258D8();
  v20 = sub_24F9249A8();
  sub_24F925898();
  v21 = sub_24F9258E8();

  sub_24F9258F8();
  v6 = sub_24F9258E8();

  v7 = sub_24F925198();
  v23 = MEMORY[0x277CE04F8];
  v24 = MEMORY[0x277CE04E8];
  LODWORD(v22) = v7;
  sub_24F925A08();
  v8 = sub_24F9258E8();

  sub_24F925A18();
  v9 = sub_24F9258E8();

  v10 = sub_24F925898();
  sub_24F925A08();
  sub_24F925938();
  v11 = sub_24F9259A8();

  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v19 = xmmword_27F254460;
  v12 = qword_27F254470;
  v13 = qword_27F254478;
  sub_24F4ED91C(v2, v4, type metadata accessor for CardLayoutMetrics.CardHeight);
  v14 = (v4 + v3[5]);
  *v14 = 0u;
  v14[1] = 0u;
  *(v4 + v3[6]) = v5;
  *(v4 + v3[7]) = 1;
  *(v4 + v3[8]) = 0;
  *(v4 + v3[9]) = 0;
  *(v4 + v3[10]) = 0;
  *(v4 + v3[11]) = v20;
  v15 = (v4 + v3[12]);
  *v15 = 0u;
  v15[1] = 0u;
  *(v4 + v3[13]) = 0;
  v16 = (v4 + v3[14]);
  *v16 = 0u;
  v16[1] = 0u;
  *(v4 + v3[15]) = 0;
  *(v4 + v3[16]) = 0x4020000000000000;
  *(v4 + v3[17]) = 1;
  *(v4 + v3[18]) = v21;
  *(v4 + v3[19]) = 1;
  *(v4 + v3[20]) = v6;
  *(v4 + v3[21]) = 2;
  sub_24E612C80(&v22, v4 + v3[22]);
  *(v4 + v3[23]) = v8;
  *(v4 + v3[24]) = 1;
  *(v4 + v3[25]) = v9;
  *(v4 + v3[26]) = 1;
  *(v4 + v3[27]) = v10;
  *(v4 + v3[28]) = 2;
  *(v4 + v3[29]) = v11;
  *(v4 + v3[30]) = 0x4030000000000000;
  *(v4 + v3[31]) = 0;
  v17 = v4 + v3[32];
  *v17 = v19;
  *(v17 + 16) = v12;
  *(v17 + 24) = v13;
}

uint64_t sub_24F4EAFAC()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CardHeightViewModifier(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

double sub_24F4EB104()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for CardHeightViewModifier(0) + 24));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_24F92BDC8();
  v8 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_24F4EB260@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CardHeightViewModifier(0);
  sub_24E60169C(v1 + *(v10 + 28), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F4EB438@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CardHeightViewModifier(0);
  sub_24E60169C(v1 + *(v10 + 32), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E667F6C(v9, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F4EB610@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221988, &qword_24FA3CD60);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CardHeightViewModifier(0);
  sub_24E60169C(v1 + *(v10 + 36), v9, &qword_27F221988, &qword_24FA3CD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921998();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24F4EB818@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CardHeightViewModifier(0);
  sub_24E60169C(v1 + *(v10 + 40), v9, &qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24F4EBA20()
{
  v1 = sub_24F923E98();
  v61 = *(v1 - 8);
  v62 = v1;
  MEMORY[0x28223BE20](v1);
  v59 = (&v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_24F925218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v6);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v11 - 8);
  v47 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v47 - v14;
  MEMORY[0x28223BE20](v15);
  v63 = (&v47 - v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = (&v47 - v24);
  v49 = sub_24F4EAFAC();
  v60 = v0;
  sub_24F4EB260(v25);
  v26 = v4[13];
  v53 = *MEMORY[0x277CE0558];
  v51 = v26;
  v52 = v4 + 13;
  v26(v22);
  v50 = v4[7];
  v50(v22, 0, 1, v3);
  v56 = v6;
  v27 = *(v6 + 48);
  sub_24E60169C(v25, v10, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v22, &v10[v27], &qword_27F215598, &qword_24F945EF0);
  v64 = v4;
  v28 = v4[6];
  v29 = v28(v10, 1, v3);
  v54 = v28;
  if (v29 == 1)
  {
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
    if (v28(&v10[v27], 1, v3) == 1)
    {
      sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
      v55 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24E60169C(v10, v19, &qword_27F215598, &qword_24F945EF0);
  if (v28(&v10[v27], 1, v3) == 1)
  {
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
    (v64[1])(v19, v3);
LABEL_6:
    sub_24E601704(v10, &unk_27F254F20, &qword_24F940790);
    v55 = 0;
    goto LABEL_8;
  }

  v30 = v48;
  (v64[4])(v48, &v10[v27], v3);
  sub_24F4ED9EC(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v55 = sub_24F92AFF8();
  v31 = v64[1];
  v31(v30, v3);
  sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
  v31(v19, v3);
  sub_24E601704(v10, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v32 = v57;
  v33 = v63;
  sub_24F4EB438(v63);
  v51(v32, v53, v3);
  v50(v32, 0, 1, v3);
  v34 = *(v56 + 48);
  v35 = v58;
  sub_24E60169C(v33, v58, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v32, v35 + v34, &qword_27F215598, &qword_24F945EF0);
  v36 = v54;
  if (v54(v35, 1, v3) == 1)
  {
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    if (v36(v35 + v34, 1, v3) == 1)
    {
      sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
      v37 = 1;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v38 = v47;
  sub_24E60169C(v35, v47, &qword_27F215598, &qword_24F945EF0);
  if (v36(v35 + v34, 1, v3) == 1)
  {
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    (v64[1])(v38, v3);
LABEL_13:
    sub_24E601704(v35, &unk_27F254F20, &qword_24F940790);
    v37 = 0;
    goto LABEL_15;
  }

  v39 = v64;
  v40 = v35 + v34;
  v41 = v48;
  (v64[4])(v48, v40, v3);
  sub_24F4ED9EC(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v37 = sub_24F92AFF8();
  v42 = v39[1];
  v42(v41, v3);
  sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v63, &qword_27F215598, &qword_24F945EF0);
  v42(v38, v3);
  sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
LABEL_15:
  v43 = v59;
  sub_24F4EB818(v59);
  v44 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v61 + 8))(v43, v62);
  v45 = 1;
  if (v55)
  {
    v45 = 2;
  }

  if (v44)
  {
    result = 1;
  }

  else
  {
    result = v45;
  }

  if (((v44 | v55) & 1) == 0 && (v37 & 1) == 0)
  {
    if ((v49 - 3) >= 6u)
    {
      return 1;
    }

    else
    {
      return qword_24FA03508[(v49 - 3)];
    }
  }

  return result;
}

uint64_t sub_24F4EC2E8()
{
  v0 = sub_24F922348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v22 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F923E98();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v20 - v7);
  v9 = sub_24F921998();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_24F4EBA20();
  if (result >= 1)
  {
    v20 = v1;
    v21 = v0;
    sub_24F4EB104();
    sub_24F4EB610(v12);
    sub_24F921988();
    (*(v10 + 8))(v12, v9);
    result = sub_24F4EBA20();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_24F4EBA20();
      sub_24F4EB818(v8);
      v14 = v23;
      (*(v3 + 16))(v5, v8, v23);
      v15 = (*(v3 + 88))(v5, v14);
      v17 = v20;
      v16 = v21;
      if (v15 == *MEMORY[0x277CDF9F8] || v15 == *MEMORY[0x277CDF9E0] || v15 == *MEMORY[0x277CDF9E8] || v15 == *MEMORY[0x277CDF9D8] || v15 == *MEMORY[0x277CDF9F0] || v15 == *MEMORY[0x277CDFA00] || v15 == *MEMORY[0x277CDFA10])
      {
        goto LABEL_16;
      }

      if (v15 == *MEMORY[0x277CDF988] || v15 == *MEMORY[0x277CDF998] || v15 == *MEMORY[0x277CDF9A8])
      {
        return (*(v3 + 8))(v8, v14);
      }

      else
      {
        v18 = *(v3 + 8);
        if (v15 != *MEMORY[0x277CDF9B8] && v15 != *MEMORY[0x277CDF9D0])
        {
          v18(v5, v14);
LABEL_16:
          v19 = v22;
          _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
          sub_24F922308();
          (*(v17 + 8))(v19, v16);
          return (*(v3 + 8))(v8, v14);
        }

        return (v18)(v8, v14);
      }
    }
  }

  return result;
}

uint64_t sub_24F4EC754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246678, &qword_24FA03400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v30 = sub_24F921998();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardHeightCustomLayout(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  sub_24F4ED984(v2, v11, type metadata accessor for CardLayoutMetrics.CardHeight);
  sub_24F4EC2E8();
  v20 = v19;
  sub_24F4EB610(v8);
  v21 = COERCE_DOUBLE(sub_24F921988());
  v23 = v22;
  (*(v6 + 8))(v8, v30);
  if (v23)
  {
    v24 = 12.0;
  }

  else
  {
    v24 = v21;
  }

  sub_24F4ED91C(v11, v18, type metadata accessor for CardLayoutMetrics.CardHeight);
  *&v18[*(v13 + 28)] = v20;
  *&v18[*(v13 + 32)] = v24;
  sub_24F4ED91C(v18, v15, type metadata accessor for CardHeightCustomLayout);
  sub_24F4ED984(v15, v5, type metadata accessor for CardHeightCustomLayout);
  v25 = v31;
  sub_24E60169C(v5, v31, &qword_27F246678, &qword_24FA03400);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246680, &qword_24FA03408) + 44);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246688, &unk_24FA03410);
  (*(*(v27 - 8) + 16))(v25 + v26, v32, v27);
  sub_24E601704(v5, &qword_27F246678, &qword_24FA03400);
  return sub_24F4ED30C(v15, type metadata accessor for CardHeightCustomLayout);
}

void sub_24F4ECA8C(unint64_t a1, char a2, uint64_t a3, int a4)
{
  v25 = a4;
  v26 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222CA0, &qword_24F96BC48);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24[-v8];
  v10 = sub_24F922348();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F4ED984(v4, v16, type metadata accessor for CardLayoutMetrics.CardHeight);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *v16;
      v19 = type metadata accessor for CardHeightCustomLayout(0);
      v20 = *(v4 + *(v19 + 20));
      v21 = *(v4 + *(v19 + 24));
      v28 = a2 & 1;
      v27 = v25 & 1;
      v18(a1, a2 & 1, v26, v25 & 1, v20, v21);
    }

    else
    {
      sub_24ECD08E4(v9);
      v22 = sub_24F923A38();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v9, 1, v22) == 1)
      {
        sub_24E601704(v9, &qword_27F222CA0, &qword_24F96BC48);
      }

      else
      {
        v30 = a2 & 1;
        v29 = v25 & 1;
        sub_24F923A18();
        (*(v23 + 8))(v9, v22);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v11 + 32))(v13, v16, v10);
    if (a2)
    {
      sub_24F9222F8();
    }

    else
    {
      sub_24F922308();
    }

    (*(v11 + 8))(v13, v10);
  }
}

void (*sub_24F4ECE98(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

unint64_t sub_24F4ECF20(uint64_t a1)
{
  result = sub_24F922348();
  if (v2 <= 0x3F)
  {
    result = sub_24E6C5550();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F4ECFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F4ED084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24F4ED13C(uint64_t a1)
{
  result = type metadata accessor for CardLayoutMetrics.CardHeight(319);
  if (v2 <= 0x3F)
  {
    result = sub_24F4ED258();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F4ED258()
{
  result = qword_27F246650;
  if (!qword_27F246650)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F246650);
  }

  return result;
}

uint64_t sub_24F4ED30C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F4ED380(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246658, &unk_24FA03380);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_24F4ED570(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246658, &unk_24FA03380);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

void sub_24F4ED750(uint64_t a1)
{
  type metadata accessor for CardLayoutMetrics.CardHeight(319);
  if (v1 <= 0x3F)
  {
    sub_24E746BEC(319, &qword_27F21CF60, &_s14descr2861A93B9C10BreakpointON);
    if (v2 <= 0x3F)
    {
      sub_24E746BEC(319, &qword_27F215590, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_24E684120(319);
        if (v4 <= 0x3F)
        {
          sub_24F4ED88C(319, &qword_27F246670, MEMORY[0x277D7EB40]);
          if (v5 <= 0x3F)
          {
            sub_24F4ED88C(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24F4ED88C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F4ED91C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4ED984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4ED9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4EDA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F4EDAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardLayoutMetrics.CardHeight(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F4EDB38(uint64_t a1)
{
  result = type metadata accessor for CardLayoutMetrics.CardHeight(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F4EDBB8()
{
  result = qword_27F2466A0;
  if (!qword_27F2466A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246680, &qword_24FA03408);
    sub_24E602068(&qword_27F2466A8, &qword_27F246678, &qword_24FA03400, MEMORY[0x277CDF510]);
    sub_24E602068(&qword_27F2466B0, &qword_27F246688, &unk_24FA03410, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2466A0);
  }

  return result;
}

uint64_t sub_24F4EDCE4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = sub_24F923A38();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222C98, &qword_24F96BC40);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = sub_24F923BB8();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  v16 = *(v12 + 44);
  sub_24F4ED9EC(&qword_27F2195F8, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (*&v14[v16] != v23[0])
  {
    v17 = (v8 + 16);
    v21 = a4;
    v18 = (v8 + 8);
    do
    {
      v19 = sub_24F92BC88();
      (*v17)(v10);
      v19(v23, 0);
      sub_24F92BC18();
      sub_24F927828();
      LOBYTE(v23[0]) = 0;
      v22 = 0;
      sub_24F923A28();
      (*v18)(v10, v7);
      sub_24F92BC08();
    }

    while (*&v14[v16] != v23[0]);
  }

  return sub_24E601704(v14, &qword_27F222C98, &qword_24F96BC40);
}

double PlayerLockup.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_24F4EE014@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t LockupAccessory.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  if (v4)
  {
    v5 = 0x6C6562616CLL;
  }

  else
  {
    v5 = 0x6567616D69;
  }

  if (v4)
  {
    v6 = 1954047348;
  }

  else
  {
    v6 = 1701667182;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x646E696B24;
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v5;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 88) = v5;
  *(inited + 96) = 0xE500000000000000;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_24F93DE60;
  *(v9 + 32) = v6;
  *(v9 + 72) = MEMORY[0x277D837D0];
  *(v9 + 80) = MEMORY[0x277D22580];
  *(v9 + 40) = 0xE400000000000000;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  sub_24E672C48(v2, v3);
  v10 = sub_24E607E40(v9);
  swift_setDeallocating();
  sub_24E601704(v9 + 32, &qword_27F212FB0, &unk_24F93A440);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  *(inited + 128) = v11;
  v12 = sub_24E6060B8();
  *(inited + 136) = v12;
  *(inited + 104) = v10;
  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  result = swift_arrayDestroy();
  a1[3] = v11;
  a1[4] = v12;
  *a1 = v13;
  return result;
}

uint64_t sub_24F4EE270()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_24F4EE29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F4EE370(uint64_t a1)
{
  v2 = sub_24F4F1C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4EE3AC(uint64_t a1)
{
  v2 = sub_24F4F1C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4EE3E8(uint64_t a1)
{
  v2 = sub_24F4F1D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4EE424(uint64_t a1)
{
  v2 = sub_24F4F1D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4EE460(uint64_t a1)
{
  v2 = sub_24F4F1CCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4EE49C(uint64_t a1)
{
  v2 = sub_24F4F1CCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LockupAccessory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2466C0, &qword_24FA03540);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2466C8, &qword_24FA03548);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2466D0, &qword_24FA03550);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4F1C78();
  sub_24F92D128();
  if (v13)
  {
    v26 = 1;
    sub_24F4F1CCC();
    v14 = v20;
    sub_24F92CC98();
    v15 = v22;
    sub_24F92CD08();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_24F4F1D20();
    sub_24F92CC98();
    v16 = v19;
    sub_24F92CD08();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t LockupAccessory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2466F0, &qword_24FA03558);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2466F8, &qword_24FA03560);
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246700, &qword_24FA03568);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24F4F1C78();
  v13 = v34;
  sub_24F92D108();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_24F92CC78();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_24E643430();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_24F92C918();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v26 = &type metadata for LockupAccessory;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_24F4F1CCC();
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_24F92CC28();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_24F4F1D20();
        v28 = v7;
        sub_24F92CBA8();
        v19 = v33;
        v18 = v34;
        v21 = sub_24F92CC28();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

double PlayerLockup.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlayerLockup(0);
  sub_24E60169C(v1 + *(v3 + 44), v6, qword_27F24EC90, &unk_24F93C1D0);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t PlayerLockup.contextMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for PlayerLockup(0);
  sub_24E60169C(v1 + *(v6 + 52), v5, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v5, a1);
}

uint64_t sub_24F4EEFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for PlayerLockup(0);
  sub_24E60169C(a1 + *(v7 + 52), v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v6, a2);
}

unint64_t sub_24F4EF0E8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6575676573;
    v6 = 0x654D6C6169636F73;
    if (a1 != 8)
    {
      v6 = 0x4D747865746E6F63;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x634170756B636F6CLL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x676E6964616568;
    v3 = 0x656C746974;
    if (a1 != 3)
    {
      v3 = 0x656C746974627573;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x726174617661;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F4EF230@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4F2938(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4EF258(uint64_t a1)
{
  v2 = sub_24F4F1D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4EF294(uint64_t a1)
{
  v2 = sub_24F4F1D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerLockup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246708, &unk_24FA03570);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4F1D94();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = type metadata accessor for PlayerLockup(0);
    LOBYTE(v15) = 1;
    type metadata accessor for PlayerAvatar(0);
    sub_24F4F1DE8(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CD48();
    LOBYTE(v15) = 2;
    sub_24F92CCA8();
    LOBYTE(v15) = 3;
    sub_24F92CD08();
    LOBYTE(v15) = 4;
    sub_24F92CCA8();
    v10 = v3 + *(v9 + 36);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    HIBYTE(v14) = 5;
    sub_24E672C48(v15, v11);
    sub_24ECECA8C();
    sub_24F92CD48();
    sub_24E63FFA4(v15, v16);
    LOBYTE(v15) = 6;
    sub_24F929608();
    sub_24F4F1DE8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    LOBYTE(v15) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v15 = *(v3 + *(v9 + 48));
    HIBYTE(v14) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    sub_24E7AA500();
    sub_24F92CD48();
    LOBYTE(v15) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PlayerLockup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v48);
  v49 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v44 - v5;
  v6 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246718, &qword_24FA03580);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v10 = &v44 - v9;
  v11 = type metadata accessor for PlayerLockup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 40);
  v16 = sub_24F929608();
  v17 = *(*(v16 - 8) + 56);
  v58 = v15;
  v17(&v13[v15], 1, 1, v16);
  v18 = &v13[v11[11]];
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v57 = v18;
  sub_24E61DA68(&v60, v18, qword_27F21B590, &unk_24F93BE30);
  v19 = v11[13];
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v56 = v19;
  v59 = v13;
  v21(&v13[v19], 1, 1, v20);
  v22 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F4F1D94();
  v52 = v10;
  v23 = v55;
  sub_24F92D108();
  if (v23)
  {
    v24 = v59;
    __swift_destroy_boxed_opaque_existential_1(v54);
    v26 = v57;
    v25 = v58;

    sub_24E601704(v24 + v25, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v26, qword_27F24EC90, &unk_24F93C1D0);

    return sub_24E601704(v24 + v56, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v63 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v27 = v61;
    v28 = v59;
    *v59 = v60;
    v28[1] = v27;
    *(v28 + 4) = v62;
    LOBYTE(v60) = 1;
    sub_24F4F1DE8(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CC68();
    sub_24F4F3280(v8, v28 + v11[5], type metadata accessor for PlayerAvatar);
    LOBYTE(v60) = 2;
    v29 = sub_24F92CBC8();
    v30 = (v28 + v11[6]);
    *v30 = v29;
    v30[1] = v31;
    v46 = v31;
    LOBYTE(v60) = 3;
    v32 = sub_24F92CC28();
    v33 = (v28 + v11[7]);
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v60) = 4;
    v35 = sub_24F92CBC8();
    v45 = v11;
    v36 = (v28 + v11[8]);
    *v36 = v35;
    v36[1] = v37;
    v55 = v37;
    v63 = 5;
    sub_24ECED500();
    sub_24F92CC68();
    v38 = v58;
    v39 = v61;
    v40 = v28 + v11[9];
    *v40 = v60;
    v40[16] = v39;
    LOBYTE(v60) = 6;
    sub_24F4F1DE8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v41 = v50;
    sub_24F92CC18();
    sub_24E61DA68(v41, v28 + v38, &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v63 = 7;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v60, v57, qword_27F24EC90, &unk_24F93C1D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0, &qword_24F9576D0);
    v63 = 8;
    sub_24E7AA3E4();
    sub_24F92CC68();
    *(v28 + v45[12]) = v60;
    LOBYTE(v60) = 9;
    sub_24E65CAA0();
    sub_24F92CC68();
    (*(v51 + 8))(v52, v53);
    v42 = v59;
    sub_24E61DA68(v49, v59 + v56, &qword_27F215440, &unk_24F942BD0);
    sub_24F4F2F44(v42, v47, type metadata accessor for PlayerLockup);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return sub_24F4F1E30(v42, type metadata accessor for PlayerLockup);
  }
}

uint64_t sub_24F4F01AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 52), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F4F028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467B0, &qword_24FA03CA0);
  MEMORY[0x28223BE20](v51);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223608, &qword_24F96E728);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2235F8, &qword_24F96E720);
  v8 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467B8, &qword_24FA03CA8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467C0, &unk_24FA03CB0);
  sub_24F4F07EC(a1, &v7[*(v14 + 44)]);
  v15 = sub_24F925868();
  sub_24F923318();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223630, &qword_24F96E738) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223620, &qword_24F96E730) + 36)] = 0;
  v25 = type metadata accessor for PlayerLockup(0);
  sub_24E60169C(a1 + *(v25 + 44), v53, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v53, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v26 = sub_24F9248C8();
  __swift_project_value_buffer(v26, qword_27F39F078);
  sub_24E99C310();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v7, &qword_27F223608, &qword_24F96E728);
  sub_24E994330(*(a1 + *(v25 + 48)));
  (*(v8 + 8))(v10, v49);
  v27 = v4;
  sub_24F4F2F44(v50, v4, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v28 = sub_24F926D08();

  *&v4[*(v51 + 52)] = v28;
  v29 = v4;
  v30 = v52;
  sub_24E60169C(v29, v52, &qword_27F2467B0, &qword_24FA03CA0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467C8, &qword_24FA03CC0);
  sub_24E60169C(v13, v30 + v31[9], &qword_27F2467B8, &qword_24FA03CA8);
  v32 = v30 + v31[10];
  *v32 = sub_24F923398() & 1;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34 & 1;
  v35 = v30 + v31[11];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v36 = qword_27F24E488;
  v37 = sub_24F923398();
  v39 = v38;
  v41 = v40;
  v42 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467D0, &qword_24FA03CF0) + 36);
  *v42 = v36;
  *(v42 + 8) = v37 & 1;
  *(v42 + 16) = v39;
  *(v42 + 24) = v41 & 1;
  LOBYTE(v36) = sub_24F923398();
  v44 = v43;
  LOBYTE(v39) = v45;
  sub_24E601704(v27, &qword_27F2467B0, &qword_24FA03CA0);
  sub_24E601704(v13, &qword_27F2467B8, &qword_24FA03CA8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467D8, &qword_24FA03CF8);
  v47 = v30 + *(result + 36);
  *v47 = v36 & 1;
  *(v47 + 8) = v44;
  *(v47 + 16) = v39 & 1;
  return result;
}

uint64_t sub_24F4F07EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v78);
  v77 = &v74 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAC0, &unk_24F996640);
  MEMORY[0x28223BE20](v82);
  v5 = &v74 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD0, &qword_24F996650);
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v74 = &v74 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD8, &qword_24F996658);
  MEMORY[0x28223BE20](v81);
  v9 = &v74 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAC8, &qword_24FA03D00);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v74 - v13;
  v14 = type metadata accessor for PlayerLockup(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467E0, &qword_24FA03D08);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v80 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  sub_24F4F2F44(a1, v17, type metadata accessor for PlayerLockup);
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject();
  sub_24F4F3280(v17, v25 + v24, type metadata accessor for PlayerLockup);
  v26 = sub_24F924C98();
  v27 = sub_24F9249A8();
  v28 = *(v19 + 60);
  *&v23[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  *v23 = sub_24F4F32E8;
  *(v23 + 1) = v25;
  *(v23 + 2) = v26;
  *(v23 + 3) = 0x4028000000000000;
  v23[32] = 0;
  *(v23 + 5) = v27;
  *(v23 + 6) = 0;
  v23[56] = 1;
  v29 = a1 + *(v14 + 36);
  v30 = *(v29 + 8);
  if (*(v29 + 16))
  {
    v85 = *v29;
    v86 = v30;
    sub_24E600AEC();

    v31 = sub_24F925E18();
    v33 = v32;
    v35 = v34;
    sub_24F925898();
    v36 = v5;
    v37 = sub_24F925C98();
    v75 = v39;
    v76 = v38;
    v41 = v40;

    sub_24E600B40(v31, v33, v35 & 1);

    v42 = sub_24F9251C8();
    v43 = *(v78 + 36);
    v44 = *MEMORY[0x277CE13B8];
    v45 = sub_24F927748();
    v46 = v77;
    (*(*(v45 - 8) + 104))(&v77[v43], v44, v45);
    *v46 = v42;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    LOBYTE(v42) = v41;
    v47 = v37;
    v48 = v76;
    v49 = sub_24F925C58();
    v51 = v50;
    v53 = v52;
    v78 = v54;
    sub_24E600B40(v47, v48, v42 & 1);

    sub_24E601704(v46, &qword_27F213F10, &unk_24F93BE10);
    *v36 = v49;
    *(v36 + 1) = v51;
    v36[16] = v53 & 1;
    *(v36 + 3) = v78;
    swift_storeEnumTagMultiPayload();
    sub_24ECEFAE0();
    v55 = v79;
    sub_24F924E28();
  }

  else
  {
    sub_24E60169C(a1 + *(v14 + 44), &v85, qword_27F24EC90, &unk_24F93C1D0);
    if (v88)
    {

      sub_24E601704(&v85, qword_27F21B590, &unk_24F93BE30);
      v56 = sub_24F926DF8();
      v57 = sub_24F925898();
      KeyPath = swift_getKeyPath();
      v59 = v5;
      v85 = v56;
      v86 = KeyPath;
      v87 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0, &unk_24F9B2BE0);
      sub_24E60156C();
      v60 = v74;
      sub_24F9268B8();

      LODWORD(v56) = sub_24F9251C8();
      v61 = v76;
      v62 = (v60 + *(v76 + 36));
      v63 = *(v78 + 36);
      v64 = *MEMORY[0x277CE13B8];
      v65 = sub_24F927748();
      v66 = v62 + v63;
      v5 = v59;
      (*(*(v65 - 8) + 104))(v66, v64, v65);
      *v62 = v56;
      sub_24F4F3368(v60, v9);
      v67 = 0;
      v55 = v79;
    }

    else
    {
      sub_24E601704(&v85, qword_27F21B590, &unk_24F93BE30);
      v67 = 1;
      v55 = v79;
      v61 = v76;
    }

    (*(v75 + 56))(v9, v67, 1, v61);
    sub_24E60169C(v9, v5, &qword_27F22DAD8, &qword_24F996658);
    swift_storeEnumTagMultiPayload();
    sub_24ECEFAE0();
    sub_24F924E28();
    sub_24E601704(v9, &qword_27F22DAD8, &qword_24F996658);
  }

  v68 = v80;
  sub_24E60169C(v23, v80, &qword_27F2467E0, &qword_24FA03D08);
  v69 = v83;
  sub_24E60169C(v55, v83, &qword_27F22DAC8, &qword_24FA03D00);
  v70 = v84;
  sub_24E60169C(v68, v84, &qword_27F2467E0, &qword_24FA03D08);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467E8, &qword_24FA03D40);
  v72 = v70 + *(v71 + 48);
  *v72 = 0;
  *(v72 + 8) = 1;
  sub_24E60169C(v69, v70 + *(v71 + 64), &qword_27F22DAC8, &qword_24FA03D00);
  sub_24E601704(v55, &qword_27F22DAC8, &qword_24FA03D00);
  sub_24E601704(v23, &qword_27F2467E0, &qword_24FA03D08);
  sub_24E601704(v69, &qword_27F22DAC8, &qword_24FA03D00);
  return sub_24E601704(v68, &qword_27F2467E0, &qword_24FA03D08);
}

uint64_t sub_24F4F10D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467F0, &unk_24FA03D78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  v10 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v26 - v18;
  v20 = type metadata accessor for PlayerLockup(0);
  sub_24F4F2F44(a1 + *(v20 + 20), v12, type metadata accessor for PlayerAvatar);
  LOBYTE(v26[0]) = 7;
  sub_24F8319B8(v12, v26, v19);
  sub_24F927618();
  sub_24F9238C8();
  v21 = &v19[*(v14 + 44)];
  v22 = v26[1];
  *v21 = v26[0];
  *(v21 + 1) = v22;
  *(v21 + 2) = v26[2];
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2467F8, &qword_24FA03D88);
  sub_24F4F13B8(a1, &v9[*(v23 + 44)]);
  sub_24E60169C(v19, v16, &qword_27F2233D0, &qword_24F958810);
  sub_24E60169C(v9, v6, &qword_27F2467F0, &unk_24FA03D78);
  sub_24E60169C(v16, a2, &qword_27F2233D0, &qword_24F958810);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246800, &unk_24FA03D90);
  sub_24E60169C(v6, a2 + *(v24 + 48), &qword_27F2467F0, &unk_24FA03D78);
  sub_24E601704(v9, &qword_27F2467F0, &unk_24FA03D78);
  sub_24E601704(v19, &qword_27F2233D0, &qword_24F958810);
  sub_24E601704(v6, &qword_27F2467F0, &unk_24FA03D78);
  return sub_24E601704(v16, &qword_27F2233D0, &qword_24F958810);
}

uint64_t sub_24F4F13B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v84);
  v85 = (&v83 - v3);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v90 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v96 = &v83 - v6;
  v91 = type metadata accessor for PlayerLockup(0);
  v7 = v91[6];
  v86 = a1;
  v8 = (a1 + v7);
  v9 = v8[1];
  if (v9)
  {
    v97 = *v8;
    v98 = v9;
    sub_24E600AEC();

    v10 = sub_24F925E18();
    v12 = v11;
    v14 = v13;
    sub_24F925898();
    v15 = sub_24F925C98();
    v17 = v16;
    v19 = v18;

    sub_24E600B40(v10, v12, v14 & 1);

    LODWORD(v97) = sub_24F9251C8();
    v20 = sub_24F925C58();
    v22 = v21;
    LOBYTE(v10) = v23;
    v25 = v24;
    sub_24E600B40(v15, v17, v19 & 1);

    v92 = v20;
    v87 = v10 & 1;
    v88 = v22;
    sub_24E5FD138(v20, v22, v10 & 1);
    v95 = v25;
  }

  else
  {
    v92 = 0;
    v87 = 0;
    v88 = 0;
    v95 = 0;
  }

  v26 = v86;
  v27 = (v86 + v91[7]);
  v28 = v27[1];
  v97 = *v27;
  v98 = v28;
  v29 = sub_24E600AEC();

  v83 = v29;
  v30 = sub_24F925E18();
  v32 = v31;
  v34 = v33;
  sub_24F9258D8();
  v35 = sub_24F925C98();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_24E600B40(v30, v32, v34 & 1);

  v97 = v35;
  v98 = v37;
  v99 = v39 & 1;
  v100 = v41;
  sub_24F9268B8();
  sub_24E600B40(v35, v37, v39 & 1);

  v42 = (v26 + v91[8]);
  v43 = v42[1];
  if (v43)
  {
    v97 = *v42;
    v98 = v43;

    v44 = sub_24F925E18();
    v46 = v45;
    v48 = v47;
    sub_24F925898();
    v49 = sub_24F925C98();
    v51 = v50;
    v53 = v52;

    sub_24E600B40(v44, v46, v48 & 1);

    LODWORD(v44) = sub_24F9251C8();
    v54 = *(v84 + 36);
    v55 = *MEMORY[0x277CE13B8];
    v56 = sub_24F927748();
    v57 = v85;
    (*(*(v56 - 8) + 104))(v85 + v54, v55, v56);
    *v57 = v44;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    v58 = sub_24F925C58();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_24E600B40(v49, v51, v53 & 1);

    sub_24E601704(v57, &qword_27F213F10, &unk_24F93BE10);
    v91 = v58;
    v86 = v60;
    v84 = v62 & 1;
    sub_24E5FD138(v58, v60, v62 & 1);
    v85 = v64;
  }

  else
  {
    v91 = 0;
    v86 = 0;
    v84 = 0;
    v85 = 0;
  }

  v65 = v90;
  v66 = *(v90 + 16);
  v67 = v93;
  v68 = v94;
  v66(v93, v96, v94);
  v70 = v88;
  v69 = v89;
  *v89 = v92;
  *(v69 + 1) = v70;
  v71 = v87;
  v72 = v95;
  *(v69 + 2) = v87;
  *(v69 + 3) = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246808, &unk_24FA03DA0);
  v66(&v69[*(v73 + 48)], v67, v68);
  v74 = &v69[*(v73 + 64)];
  v75 = v92;
  v95 = v72;
  sub_24E65D2B4(v92, v70, v71, v72);
  v76 = v91;
  v78 = v85;
  v77 = v86;
  v79 = v84;
  sub_24E65D2B4(v91, v86, v84, v85);
  sub_24E65D2F8(v75, v70, v71, v72);
  sub_24E65D2F8(v76, v77, v79, v78);
  *v74 = v76;
  v74[1] = v77;
  v74[2] = v79;
  v74[3] = v78;
  v80 = *(v65 + 8);
  v81 = v94;
  v80(v96, v94);
  sub_24E65D2F8(v76, v77, v79, v78);
  v80(v93, v81);
  return sub_24E65D2F8(v75, v70, v71, v95);
}

uint64_t sub_24F4F1A3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AsymmetricalInsetRoundedRectangle(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_24F4F2F44(v1, &v12 - v7, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v9 = sub_24F926D08();

  sub_24F4F2F44(v8, v5, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  sub_24F4F1DE8(&qword_27F215938, type metadata accessor for AsymmetricalInsetRoundedRectangle, &unk_24F9DB160);
  v10 = sub_24F927348();
  result = sub_24F4F1E30(v8, type metadata accessor for AsymmetricalInsetRoundedRectangle);
  *(a1 + 40) = v10;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_24F4F1BB4(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24F47D218(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F4F1DE8(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent, &unk_24FA03C38);
  return sub_24F9218E8();
}

unint64_t sub_24F4F1C78()
{
  result = qword_27F2466D8;
  if (!qword_27F2466D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2466D8);
  }

  return result;
}

unint64_t sub_24F4F1CCC()
{
  result = qword_27F2466E0;
  if (!qword_27F2466E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2466E0);
  }

  return result;
}

unint64_t sub_24F4F1D20()
{
  result = qword_27F2466E8;
  if (!qword_27F2466E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2466E8);
  }

  return result;
}

unint64_t sub_24F4F1D94()
{
  result = qword_27F246710;
  if (!qword_27F246710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246710);
  }

  return result;
}

uint64_t sub_24F4F1DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4F1E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_24F4F1ED8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24F4F1F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlayerLockup(0);
  sub_24E60169C(a1 + *(v4 + 44), v7, qword_27F24EC90, &unk_24F93C1D0);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24F4F2064(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[13];

  return v15(v16, a2, v14);
}

uint64_t sub_24F4F21FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

void sub_24F4F2380(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F21C120, &qword_27F213840, &unk_24F93B3C0);
            if (v6 <= 0x3F)
            {
              sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_24F4F251C()
{
  result = qword_27F246738;
  if (!qword_27F246738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246738);
  }

  return result;
}

unint64_t sub_24F4F2574()
{
  result = qword_27F246740;
  if (!qword_27F246740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246740);
  }

  return result;
}

unint64_t sub_24F4F25CC()
{
  result = qword_27F246748;
  if (!qword_27F246748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246748);
  }

  return result;
}

unint64_t sub_24F4F2624()
{
  result = qword_27F246750;
  if (!qword_27F246750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246750);
  }

  return result;
}

unint64_t sub_24F4F267C()
{
  result = qword_27F246758;
  if (!qword_27F246758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246758);
  }

  return result;
}

unint64_t sub_24F4F26D4()
{
  result = qword_27F246760;
  if (!qword_27F246760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246760);
  }

  return result;
}

unint64_t sub_24F4F272C()
{
  result = qword_27F246768;
  if (!qword_27F246768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246768);
  }

  return result;
}

unint64_t sub_24F4F2784()
{
  result = qword_27F246770;
  if (!qword_27F246770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246770);
  }

  return result;
}

unint64_t sub_24F4F27DC()
{
  result = qword_27F246778;
  if (!qword_27F246778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246778);
  }

  return result;
}

unint64_t sub_24F4F2834()
{
  result = qword_27F246780;
  if (!qword_27F246780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246780);
  }

  return result;
}

unint64_t sub_24F4F288C()
{
  result = qword_27F246788;
  if (!qword_27F246788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246788);
  }

  return result;
}

unint64_t sub_24F4F28E4()
{
  result = qword_27F246790;
  if (!qword_27F246790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246790);
  }

  return result;
}

uint64_t sub_24F4F2938(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6964616568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x634170756B636F6CLL && a2 == 0xEF79726F73736563 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x654D6C6169636F73 && a2 == 0xEA0000000000756ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24F4F2C80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsymmetricalInsetRoundedRectangle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F4F2D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsymmetricalInsetRoundedRectangle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F4F2D90(uint64_t a1)
{
  result = type metadata accessor for AsymmetricalInsetRoundedRectangle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F4F2F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4F2FB4()
{
  v1 = type metadata accessor for PlayerLockup(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);
  v3 = &v2[v1[5]];

  v4 = type metadata accessor for PlayerAvatar(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for PlayerAvatar.Overlay(0);
  if (!(*(*(v6 - 8) + 48))(&v3[v5], 1, v6) && !swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24F9289E8();
    (*(*(v7 - 8) + 8))(&v3[v5], v7);
  }

  v8 = &v3[*(v4 + 24)];
  if (*(v8 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  sub_24E63FFA4(*&v2[v1[9]], *&v2[v1[9] + 8]);
  v9 = v1[10];
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(&v2[v9], 1, v10))
  {
    (*(v11 + 8))(&v2[v9], v10);
  }

  v12 = &v2[v1[11]];
  if (*(v12 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v13 = v1[13];
  v14 = sub_24F92A6D8();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v2[v13], 1, v14))
  {
    (*(v15 + 8))(&v2[v13], v14);
  }

  return swift_deallocObject();
}

uint64_t sub_24F4F3280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4F32E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayerLockup(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F4F10D0(v4, a1);
}

uint64_t sub_24F4F3368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DAD0, &qword_24F996650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F4F33E0()
{
  result = qword_27F246810;
  if (!qword_27F246810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2467D8, &qword_24FA03CF8);
    sub_24F4F346C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246810);
  }

  return result;
}

unint64_t sub_24F4F346C()
{
  result = qword_27F246818;
  if (!qword_27F246818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2467D0, &qword_24FA03CF0);
    sub_24E602068(&qword_27F246820, &qword_27F2467C8, &qword_24FA03CC0, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246818);
  }

  return result;
}

uint64_t ChallengesSuggestedLeaderboardDataIntent.initiatorID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengesSuggestedLeaderboardDataIntent.gameBundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24F4F35E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for ChallengesPlayerInviteType(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v11 = type metadata accessor for Player(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[11];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[14]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24F4F37A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = type metadata accessor for ChallengesPlayerInviteType(0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      v13 = type metadata accessor for Player(0);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[10];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[14]) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[11];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

void sub_24F4F3974(uint64_t a1)
{
  sub_24E600550(319);
  if (v1 <= 0x3F)
  {
    sub_24F4FBB98(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24F4FBE18(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ChallengesPlayerInviteType(319);
        if (v4 <= 0x3F)
        {
          sub_24F4FBE18(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Player(319);
            if (v6 <= 0x3F)
            {
              sub_24F4FBB98(319, &qword_27F21FB48, type metadata accessor for GameActivityDraftGameInfo, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24E6C5550();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

id sub_24F4F3B60()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF0]) init];
  qword_27F246828 = result;
  return result;
}

BOOL sub_24F4F3B94()
{
  v1 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  sub_24F4FB334(v0 + *(v7 + 28), v6, type metadata accessor for ChallengesPlayerInviteType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0, &qword_24FA3ACB0) + 48);
      sub_24F4FB39C(v6, v3, type metadata accessor for Player);
      if (*(v0 + *(v7 + 52)) == 2)
      {
        v10 = v1[21];
      }

      else
      {
        v10 = v1[20];
      }

      v12 = v3[v10];
      if (v12 == 2 || (v12 & 1) != 0)
      {
        sub_24F4FB6DC(v3, type metadata accessor for Player);
        sub_24E601704(&v6[v9], &qword_27F2212F8, &unk_24F965E50);
        return 0;
      }

      else
      {
        v13 = *&v3[v1[10] + 8];

        sub_24F4FB6DC(v3, type metadata accessor for Player);
        if (v13)
        {
        }

        sub_24E601704(&v6[v9], &qword_27F2212F8, &unk_24F965E50);
        return v13 != 0;
      }
    }

    else
    {
      sub_24F4FB6DC(v6, type metadata accessor for ChallengesPlayerInviteType);
      return 1;
    }
  }

  else
  {
    sub_24F4FB6DC(v6, type metadata accessor for ChallengesPlayerInviteType);
    return 0;
  }
}

BOOL sub_24F4F3DEC()
{
  v1 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  sub_24F4FB334(v0 + *(v7 + 28), v6, type metadata accessor for ChallengesPlayerInviteType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24F4FB6DC(v6, type metadata accessor for ChallengesPlayerInviteType);
    return 1;
  }

  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0, &qword_24FA3ACB0) + 48);
  sub_24F4FB39C(v6, v3, type metadata accessor for Player);
  if (*(v0 + *(v7 + 52)) == 2)
  {
    v9 = v1[21];
  }

  else
  {
    v9 = v1[20];
  }

  v10 = v3[v9];
  if (v10 == 2 || (v10 & 1) != 0)
  {
    sub_24F4FB6DC(v3, type metadata accessor for Player);
    sub_24E601704(&v6[v8], &qword_27F2212F8, &unk_24F965E50);
    return 1;
  }

  v12 = *&v3[v1[10] + 8];

  sub_24F4FB6DC(v3, type metadata accessor for Player);
  if (v12)
  {
  }

  sub_24E601704(&v6[v8], &qword_27F2212F8, &unk_24F965E50);
  return v12 != 0;
}

uint64_t sub_24F4F401C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_24F9241F8();
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246848, &qword_24FA03ED8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  sub_24F4FB334(v2, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayTogetherPlayerSelectionRow);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_24F4FB39C(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PlayTogetherPlayerSelectionRow);
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246850, &qword_24FA03EE0);
  sub_24F4F7B34();
  sub_24F926F88();
  sub_24F9241E8();
  sub_24E602068(&qword_27F246880, &qword_27F246848, &qword_24FA03ED8, MEMORY[0x277CDF028]);
  sub_24F4FC16C(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v17 = v32;
  v18 = v30;
  sub_24F926178();
  (*(v31 + 8))(v6, v18);
  (*(v12 + 8))(v14, v11);
  v19 = sub_24F4F4FF4();
  v21 = v20;
  v22 = v2 + *(v8 + 32);
  v23 = *v22;
  v24 = *(v22 + 8);
  v37 = v23;
  v38 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F58();
  v25 = v34;
  v26 = v35;
  LOBYTE(v8) = v36;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246888, &qword_24FA03F00);
  v28 = v17 + *(result + 36);
  *v28 = v19;
  *(v28 + 8) = v21;
  *(v28 + 16) = v25;
  *(v28 + 24) = v26;
  *(v28 + 32) = v8;
  return result;
}

double sub_24F4F43D4(uint64_t a1, __n128 a2)
{
  sub_24F9276F8();
  sub_24F923B18();

  return result;
}

uint64_t sub_24F4F4440@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246890, &qword_24FA03F08);
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246898, &qword_24FA03F10);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468A0, &qword_24FA03F18);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  sub_24F4F4864(v7);
  v7[*(v5 + 36)] = 0;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9248C8();
  __swift_project_value_buffer(v12, qword_27F39F078);
  sub_24F4FB404();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v7, &qword_27F246898, &qword_24FA03F10);
  v13 = *(sub_24F924258() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_24F924B38();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  __asm { FMOV            V0.2D, #10.0 }

  *v4 = _Q0;
  *&v4[*(sub_24F924248() + 20)] = 0xC018000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v21 = sub_24F926D08();

  *&v4[*(v2 + 52)] = v21;
  sub_24E60169C(v4, a1, &qword_27F246890, &qword_24FA03F08);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246878, &unk_24FA03EF0);
  (*(v9 + 16))(a1 + v22[9], v11, v8);
  v23 = a1 + v22[10];
  *v23 = sub_24F923398() & 1;
  *(v23 + 8) = v24;
  *(v23 + 16) = v25 & 1;
  v26 = a1 + v22[11];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v27 = qword_27F24E488;
  v28 = sub_24F923398();
  v30 = v29;
  v32 = v31;
  v33 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246868, &qword_24FA03EE8) + 36);
  *v33 = v27;
  *(v33 + 8) = v28 & 1;
  *(v33 + 16) = v30;
  *(v33 + 24) = v32 & 1;
  LOBYTE(v27) = sub_24F923398();
  v35 = v34;
  LOBYTE(v30) = v36;
  sub_24E601704(v4, &qword_27F246890, &qword_24FA03F08);
  (*(v9 + 8))(v11, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246850, &qword_24FA03EE0);
  v38 = a1 + *(result + 36);
  *v38 = v27 & 1;
  *(v38 + 8) = v35;
  *(v38 + 16) = v30 & 1;
  return result;
}

uint64_t sub_24F4F4864@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v50);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F929888();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v45 - v9;
  v10 = sub_24F91F7C8();
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F92B088();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_24F925508();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468C0, &qword_24FA03F28);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468E0, &qword_24FA03F60);
  v20 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v22 = &v45 - v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468B0, &qword_24FA03F20);
  MEMORY[0x28223BE20](v48);
  v24 = &v45 - v23;
  *v19 = sub_24F9249A8();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v25 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2468E8, &unk_24FA03F68) + 44)];
  v51 = v2;
  sub_24F4F5830(v2, v25);
  sub_24F9254E8();
  v26 = sub_24F4FB5F0();
  sub_24F926678();
  (*(v14 + 8))(v16, v13);
  sub_24E601704(v19, &qword_27F2468C0, &qword_24FA03F28);
  sub_24F92B018();
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v27 = qword_27F24F280;
  sub_24F91F778();
  v58 = sub_24F92B148();
  v59 = v28;
  *&v57[0] = v17;
  *(&v57[0] + 1) = v26;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  v29 = v46;
  sub_24F9264D8();

  (*(v20 + 8))(v22, v29);
  v30 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  v31 = v51;
  v32 = v49;
  sub_24F4FB334(v51 + *(v30 + 28), v49, type metadata accessor for ChallengesPlayerInviteType);
  v33 = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0, &qword_24FA3ACB0) + 48);
    v35 = v45;
    sub_24F4FB39C(v32, v45, type metadata accessor for Player);
    v37 = *v35;
    v36 = v35[1];

    sub_24F4FB6DC(v35, type metadata accessor for Player);
    sub_24E601704(v32 + v34, &qword_27F2212F8, &unk_24F965E50);
    v38 = MEMORY[0x277D837D0];
  }

  else
  {
    sub_24F4FB6DC(v32, type metadata accessor for ChallengesPlayerInviteType);
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v60 = 0;
  }

  v61 = v38;
  v58 = v37;
  v59 = v36;
  memset(v57, 0, sizeof(v57));
  v39 = v52;
  sub_24F9297C8();
  sub_24E601704(v57, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v58, &qword_27F2129B0, &unk_24F945320);
  v40 = *(v31 + *(v30 + 32));
  v61 = MEMORY[0x277D839B0];
  LOBYTE(v58) = v40;
  v41 = v53;
  sub_24F929868();
  v42 = v55;
  v43 = *(v54 + 8);
  v43(v39, v55);
  sub_24E601704(&v58, &qword_27F2129B0, &unk_24F945320);
  sub_24F4FB4F8();
  sub_24F925EE8();
  v43(v41, v42);
  return sub_24E601704(v33, &qword_27F2468B0, &qword_24FA03F20);
}

uint64_t sub_24F4F4FF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F68, &qword_24F93A2E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v60 - v2;
  v4 = sub_24F91F1A8();
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Player(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v60 - v12;
  v14 = type metadata accessor for ChallengesPlayerInviteType(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PlayTogetherPlayerSelectionRow(0);
  sub_24F4FB334(v0 + *(v17 + 28), v16, type metadata accessor for ChallengesPlayerInviteType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = v8;
    v22 = v74;
    v65 = v13;
    v66 = v7;
    v23 = v16[2];
    v24 = *(v23 + 16);
    if (v24)
    {
      v60[2] = v16[1];
      v63 = v6;
      v64 = v3;
      v75 = v4;
      v80 = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v24, 0);
      v25 = v80;
      v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v60[1] = v23;
      v27 = v23 + v26;
      v28 = objc_opt_self();
      v78 = "dCAIDFriendRequests";
      v79 = v28;
      v29 = *(v21 + 72);
      v31 = v65;
      v30 = v66;
      v76 = v65 + 8;
      v77 = v29;
      v61 = (v22 + 8);
      v62 = (v22 + 56);
      do
      {
        sub_24F4FB334(v27, v31, type metadata accessor for Player);
        v32 = [v79 standardUserDefaults];
        v33 = sub_24F92B098();
        v34 = [v32 BOOLForKey_];

        if (v34)
        {
          v35 = (v31 + v30[9]);
          if (v35[1] == 1)
          {
            v36 = (v31 + v30[8]);
            if (!v36[1])
            {
              v36 = (v31 + v30[7]);
            }

            v40 = v36[1];
            v39 = *v36;
          }

          else
          {
            v41 = v35[10];
            v42 = v35[9];
            v71 = v35[8];
            v72 = v41;
            v43 = v35[6];
            v73 = v35[4];
            v74 = v43;
            v69 = v35[2];
            v44 = *v35;
            v67 = v42;
            v68 = v44;
            v70 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
            [v70 setStyle_];
            (*v62)(v64, 1, 1, v75);

            v31 = v65;
            v45 = v63;
            sub_24F91F178();
            v46 = sub_24F91F188();
            v30 = v66;
            (*v61)(v45, v75);
            v47 = v70;
            v48 = [v70 stringFromPersonNameComponents_];

            v39 = sub_24F92B0D8();
            v40 = v49;
          }
        }

        else
        {
          v37 = (v31 + v30[7]);
          v39 = *v37;
          v38 = v37[1];

          v40 = v38;
        }

        sub_24F4FB6DC(v31, type metadata accessor for Player);

        v80 = v25;
        v51 = *(v25 + 16);
        v50 = *(v25 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_24F4578E0((v50 > 1), v51 + 1, 1);
          v25 = v80;
        }

        *(v25 + 16) = v51 + 1;
        v52 = v25 + 16 * v51;
        *(v52 + 32) = v39;
        *(v52 + 40) = v40;
        v27 += v77;
        --v24;
      }

      while (v24);
    }

    if (qword_27F211310 != -1)
    {
      swift_once();
    }

    v56 = qword_27F246828;
    v57 = sub_24F92B588();

    v58 = [v56 stringForObjectValue_];

    if (v58)
    {
      v20 = sub_24F92B0D8();

      return v20;
    }

    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v53 = *v16;
    v54 = [objc_opt_self() stringFromContact:*v16 style:0];
    if (v54)
    {
      v55 = v54;
      v20 = sub_24F92B0D8();

      return v20;
    }

    return 0;
  }

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2212F0, &qword_24FA3ACB0) + 48);
  sub_24F4FB39C(v16, v10, type metadata accessor for Player);
  v20 = sub_24F37B534();
  sub_24F4FB6DC(v10, type metadata accessor for Player);

  sub_24E601704(v16 + v19, &qword_27F2212F8, &unk_24F965E50);
  return v20;
}