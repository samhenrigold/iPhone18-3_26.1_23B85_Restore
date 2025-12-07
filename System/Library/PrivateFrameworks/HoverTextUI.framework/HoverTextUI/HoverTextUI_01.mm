void sub_254634A38(uint64_t a1)
{
  if (*(a1 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254634CEC();
    sub_25467F770();
  }

  else
  {
    *(a1 + 24) = 0;
  }
}

uint64_t sub_254634B20()
{

  v1 = OBJC_IVAR____TtC11HoverTextUI31HoverTypingTextReplacementModel___observationRegistrar;
  v2 = sub_25467F7C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HoverTypingTextReplacementModel(uint64_t a1)
{
  result = qword_27F60BB98;
  if (!qword_27F60BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254634C28(uint64_t a1)
{
  result = sub_25467F7C0();
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

unint64_t sub_254634CEC()
{
  result = qword_27F60BBA8;
  if (!qword_27F60BBA8)
  {
    type metadata accessor for HoverTypingTextReplacementModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BBA8);
  }

  return result;
}

uint64_t sub_254634D44(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_2546350E4();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C147A0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x259C147A0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_2546807E0();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_2546807E0();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_2546809C0();
  }

  result = sub_2546809C0();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_254634F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_254680A90() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25463504C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2546350A8()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

unint64_t sub_2546350E4()
{
  result = qword_27F60C680;
  if (!qword_27F60C680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F60C680);
  }

  return result;
}

unint64_t sub_25463515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BBB0;
  if (!qword_27F60BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BBB0);
  }

  return result;
}

uint64_t sub_2546351B0@<X0>(uint64_t a1@<X8>)
{
  sub_25467FA70();
  sub_254635AC0(&qword_27F60BBC8, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  sub_254680670();
  sub_254680690();
  if (v9[4] == v9[0])
  {
    v2 = sub_25467FA00();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_2546806B0();
    v6 = v5;
    v7 = sub_25467FA00();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_254635348(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBC0, &qword_2546834D0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v47 - v19;
  v21 = sub_25467FA00();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2546351B0(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_254635A34(v20);
  }

  (*(v22 + 32))(v24, v20, v21);
  sub_25467FB00();
  LOBYTE(v48) = v26 & 1;
  v49 = v27 & 1;
  sub_25467F9E0();
  v29 = v28;
  v31 = v30;
  swift_getKeyPath();
  v48 = a11;
  sub_254635AC0(&qword_27F60B9E0, type metadata accessor for HoverTypingStore, &unk_254684A20);
  sub_25467F780();

  v32 = 10.0;
  v33 = *(a11 + 128) + v29 * -0.5 + 10.0;
  if (v33 >= 0.0)
  {
    v34 = *&a1;
    if (a2)
    {
      v34 = 10.0;
    }

    v35 = v34 - v29;
    v32 = *(a11 + 128) + v29 * -0.5 + 10.0;
    if (v35 < v33)
    {
      v32 = v35 + -10.0;
    }
  }

  sub_2546802E0();
  v37 = v32 - v29 * v36;
  *v47 = a3;
  v50.origin.x = a3;
  v38 = a4;
  v50.origin.y = a4;
  v39 = a5;
  v50.size.width = a5;
  v40 = a6;
  v50.size.height = a6;
  MinY = CGRectGetMinY(v50);
  sub_2546802E0();
  v43 = MinY - v31 * v42;
  v52.origin.x = v37;
  v52.origin.y = v43;
  v52.size.width = v29;
  v52.size.height = v31;
  if (CGRectEqualToRect(*(a11 + 184), v52))
  {
    *(a11 + 184) = v37;
    *(a11 + 192) = v43;
    *(a11 + 200) = v29;
    *(a11 + 208) = v31;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v47[-6] = a11;
    *&v47[-5] = v37;
    *&v47[-4] = v43;
    *&v47[-3] = v29;
    *&v47[-2] = v31;
    v48 = a11;
    sub_25467F770();
  }

  *&v51.origin.x = v47[0];
  v51.origin.y = v38;
  v51.size.width = v39;
  v51.size.height = v40;
  CGRectGetMinY(v51);
  sub_2546802E0();
  sub_25467FB00();
  LOBYTE(v48) = v45 & 1;
  v49 = v46 & 1;
  sub_25467F9E0();
  LOBYTE(v48) = 0;
  v49 = 0;
  sub_25467F9F0();
  return (*(v22 + 8))(v24, v21);
}

uint64_t (*sub_254635830(uint64_t *a1))()
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
  *(v2 + 32) = sub_25467F8A0();
  return sub_2546358B8;
}

void sub_2546358B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_254635908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BBB8;
  if (!qword_27F60BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BBB8);
  }

  return result;
}

__n128 sub_25463595C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254635AC0(&qword_27F60B9E0, type metadata accessor for HoverTypingStore, &unk_254684A20);
  sub_25467F780();

  result = *(v3 + 184);
  v5 = *(v3 + 200);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_254635A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBC0, &qword_2546834D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254635AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_254635B08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254635B88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254635B28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254635D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254635B48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254635E6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254635B68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254635F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254635B88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B728, &unk_254682A80);
  v10 = *(sub_25467F5A0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_25467F5A0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_254635D60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBD8, &qword_254683530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_254635E6C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBD0, &qword_254683528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_254635F70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBE0, &qword_254683538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_254636074(uint64_t a1, int a2, uint64_t a3)
{
  v40 = sub_25467FA00();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25467FA70();
  sub_254635AC0(&qword_27F60BBC8, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v9 = sub_254680680();
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    goto LABEL_7;
  }

  v11 = v9;
  v38 = v6;
  v43 = MEMORY[0x277D84F90];
  sub_254635B48(0, v9 & ~(v9 >> 63), 0);
  v10 = v43;
  result = sub_254680670();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a2;
    v39 = (v38 + 16);
    v13 = (v38 + 8);
    do
    {
      v14 = sub_2546806B0();
      v15 = v40;
      (*v39)(v8);
      v14(v42, 0);
      sub_25467FB00();
      v42[0] = v16 & 1;
      v41 = v17 & 1;
      sub_25467F9E0();
      v19 = v18;
      v21 = v20;
      (*v13)(v8, v15);
      v43 = v10;
      v22 = a3;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_254635B48((v23 > 1), v24 + 1, 1);
        v10 = v43;
      }

      *(v10 + 16) = v24 + 1;
      v25 = v10 + 16 * v24;
      *(v25 + 32) = v19;
      *(v25 + 40) = v21;
      sub_2546806A0();
      --v11;
      a3 = v22;
    }

    while (v11);
LABEL_7:
    v26 = *(v10 + 16);
    if (v26)
    {
      if (v26 == 1)
      {
        v27 = 0;
        v28 = 0.0;
      }

      else
      {
        v27 = v26 & 0x7FFFFFFFFFFFFFFELL;
        v29 = (v10 + 56);
        v28 = 0.0;
        v30 = v26 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v31 = *(v29 - 2);
          v32 = *v29;
          v29 += 4;
          v28 = v28 + v31 + v32;
          v30 -= 2;
        }

        while (v30);
        if (v26 == v27)
        {
        }
      }

      v33 = v26 - v27;
      v34 = (v10 + 16 * v27 + 40);
      do
      {
        v35 = *v34;
        v34 += 2;
        v28 = v28 + v35;
        --v33;
      }

      while (v33);
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HoverTextPresentationEvent.processEvent()()
{
  v1 = sub_25467F620();
  MEMORY[0x28223BE20](v1 - 8);
  v100 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25467F440();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_25467F840();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25467F5A0();
  v9 = MEMORY[0x28223BE20](v8);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0[1];
  v116 = *v0;
  v117 = v13;
  v14 = v0[3];
  v118 = v0[2];
  v119 = v14;
  v102 = v0;
  v15 = *(v0 + 64);
  v120 = v15;
  v16 = v116;
  v17 = v118;
  v18 = v15 >> 6;
  v19 = v14;
  if (v15 >> 6 <= 1)
  {
    if (!v18)
    {
      if ((v14 & 0x80) != 0)
      {
        v106[0] = v116;
        v106[1] = v117;
        v106[2] = v118;
        v107 = v14 & 1;
        sub_25463D06C(v116, *(&v116 + 1), v117, *(&v117 + 1), v118, *(&v118 + 1), v14);
        sub_254639B10(v106);
      }

      else
      {
        v20 = v116;
        v21 = v117;
        sub_25463D07C(&v116, v103);
        sub_25463D06C(v20, *(&v16 + 1), v21, *(&v21 + 1), v17, *(&v17 + 1), v19);
        v22 = v101;
        v23 = sub_254638910(v20);
        if (v22)
        {
          sub_254636CC4(&v116);
        }

        else
        {
          memset(v104, 0, sizeof(v104));
          v105 = 1;
          v24 = v23;
          v25 = v23;
          sub_254638CC8(v24, 0, 0, v104);
          sub_254636CC4(&v116);
        }
      }

      sub_254636CC4(&v116);
      return;
    }

    v32 = v12;
    v33 = v10;
    v99 = v9;
    v103[0] = v116;

    v34 = sub_25467F420();
    sub_25462C080(v34, v35, v36);
    v37 = sub_254680850();
    v39 = v38;
    (*(v4 + 8))(v6, v3);
    sub_254636CC4(&v116);
    if (sub_254680540())
    {

      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (!v40)
    {

      sub_254636D40(v67, v68, v69);
      swift_allocError();
      *v70 = xmmword_254683540;
      swift_willThrow();
      return;
    }

    sub_25467F610();
    sub_25467F5B0();
    v41 = type metadata accessor for HoverTextPresentationEvent(0);
    v42 = v102;
    (*(v33 + 40))(v102 + v41[7], v32, v99);
    v43 = (v42 + v41[8]);

    *v43 = 0;
    v43[1] = 0;
    v44 = v41[9];
LABEL_18:
    v45 = (v42 + v44);
    *v45 = 0u;
    v45[1] = 0u;
    return;
  }

  v26 = *(&v119 + 1);
  if (v18 == 2)
  {
    v27 = v116;
    v96 = *(&v117 + 1);
    v100 = v117;
    v28 = *(&v117 + 1);

    if (!AXDeviceSupportsHoverTextTyping() || (v15 & 1) != 0)
    {
      if (!AXDeviceSupportsHoverTextTyping() || v100 == 12)
      {
        v71 = v101;
        v72 = sub_254638910(0);
        if (!v71)
        {
          v80 = v28;
          memset(v114, 0, sizeof(v114));
          v115 = 1;
          v81 = v72;
          v82 = v72;
          sub_254638CC8(v81, v27, *(&v16 + 1), v114);

          return;
        }
      }

      else
      {

        v52 = sub_25467F810();
        swift_beginAccess();
        v53 = v97;
        v54 = v98;
        v55 = v99;
        (*(v97 + 16))(v98, v52, v99);
        v56 = sub_25467F830();
        v57 = sub_254680710();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v95 = v28;
          v60 = v59;
          v121 = v59;
          *v58 = 136315138;
          v61 = v53;
          v62 = v100;
          v63 = HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v100);
          v65 = sub_25463CAC4(v63, v64, &v121);

          *(v58 + 4) = v65;
          _os_log_impl(&dword_254615000, v56, v57, "Received value change with event type %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          v66 = v60;
          v28 = v95;
          MEMORY[0x259C155A0](v66, -1, -1);
          MEMORY[0x259C155A0](v58, -1, -1);

          (*(v61 + 8))(v98, v99);
        }

        else
        {

          (*(v53 + 8))(v54, v55);
          v62 = v100;
        }

        sub_254639CE4(v62, v96);
      }
    }

    else
    {
      v95 = v28;
      v29 = v101;
      v30 = sub_254638910(0);
      if (v29)
      {

        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      v110 = v17;
      v111 = v19;
      v112 = v26;
      v113 = 0;
      v73 = v102;
      sub_254638CC8(v31, v27, *(&v16 + 1), &v110);

      *(v73 + 66) = v100;
    }
  }

  else
  {
    v46 = v118 | *(&v118 + 1) | v14;
    if (v117 | *(&v116 + 1) | v116 | *(&v117 + 1) | v46 | *(&v119 + 1) || v15 != 192)
    {
      v47 = v117 | *(&v116 + 1) | *(&v117 + 1) | v46 | *(&v119 + 1);
      if ((v15 != 192 || v116 != 1 || v47) && (v15 != 192 || v116 != 2 || v47))
      {
        v74 = v10;
        v75 = v9;
        if (v15 != 192 || v116 != 3 || v47)
        {
          v83 = v12;
          sub_25467F500();
          v84 = type metadata accessor for HoverTextPresentationEvent(0);
          v85 = *(v74 + 40);
          v86 = v102;
          v85(v102 + v84[7], v83, v75);
          v87 = (v86 + v84[8]);

          *v87 = 0;
          v87[1] = 0;
          v88 = (v86 + v84[9]);
          __asm { FMOV            V1.2D, #1.0 }

          *v88 = *(v86 + v84[14]);
          v88[1] = _Q1;
          return;
        }

        v76 = v12;
        sub_25467F500();
        v77 = type metadata accessor for HoverTextPresentationEvent(0);
        v78 = *(v74 + 40);
        v42 = v102;
        v78(v102 + v77[7], v76, v75);
        v79 = (v42 + v77[8]);

        *v79 = 0;
        v79[1] = 0;
        v44 = v77[9];
        goto LABEL_18;
      }
    }

    v48 = v101;
    v49 = sub_254638910(0);
    if (!v48)
    {
      memset(v108, 0, sizeof(v108));
      v109 = 1;
      v50 = v49;
      v51 = v49;
      sub_254638CC8(v50, 0, 0, v108);
    }
  }
}

uint64_t type metadata accessor for HoverTextPresentationEvent(uint64_t a1)
{
  result = qword_27F60BC20;
  if (!qword_27F60BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_254636D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BC10;
  if (!qword_27F60BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BC10);
  }

  return result;
}

char *sub_254636D94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v103 = a2;
  v5 = sub_25467F650();
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B9A8, &qword_2546838A0);
  v7 = MEMORY[0x28223BE20](v100);
  v98 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v74 - v9;
  v82 = sub_25467F550();
  v10 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v101 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC88, &qword_2546838A8);
  MEMORY[0x28223BE20](v12 - 8);
  v89 = &v74 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC90, &unk_2546838B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v74 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC98, &qword_254684E60);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v78 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v105 = &v74 - v22;
  MEMORY[0x28223BE20](v21);
  v106 = &v74 - v23;
  v24 = sub_25467F5A0();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v77 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v80 = &v74 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v74 - v30;
  v107 = a1;
  v108 = v103;
  v32 = *(v25 + 16);
  v103 = v33;
  v76 = v25 + 16;
  v75 = v32;
  (v32)(&v74 - v30, v3);
  v88 = sub_25467F750();
  v34 = *(v88 - 8);
  v87 = *(v34 + 56);
  v86 = v34 + 56;
  v85 = (v18 + 48);
  v35 = v31;
  v36 = v17;
  v96 = (v10 + 16);
  v97 = (v10 + 32);
  v95 = (v10 + 8);
  v102 = MEMORY[0x277D84F90];
  v84 = v25;
  v83 = v25 + 32;
  v79 = v16;
  v104 = v17;
  v94 = v31;
  v37 = v82;
  while (1)
  {
    v38 = v89;
    v87(v89, 1, 1, v88);
    v39 = sub_25463DB1C(&qword_27F60B9A0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
    sub_25462C080(v39, v40, v41);
    sub_25467F6A0();
    sub_254626CC4(v38, &qword_27F60BC88, &qword_2546838A8);
    if ((*v85)(v16, 1, v36) == 1)
    {
      break;
    }

    v42 = v106;
    sub_25462CC24(v16, v106, &qword_27F60BC98, &qword_254684E60);
    v43 = v101;
    sub_25467F4B0();
    v44 = sub_25463DB1C(&qword_27F60B9B8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    if ((sub_254680420() & 1) == 0)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v93 = v44;
    v45 = *v97;
    v46 = v99;
    (*v97)(v99, v43, v37);
    v47 = v100;
    v48 = v46 + *(v100 + 48);
    v90 = *v96;
    v90(v48, v42, v37);
    v49 = v98;
    sub_25462CC8C(v46, v98, &qword_27F60B9A8, &qword_2546838A0);
    v50 = *(v47 + 48);
    v45(v105, v49, v37);
    v51 = *v95;
    (*v95)(v49 + v50, v37);
    sub_25462CC24(v46, v49, &qword_27F60B9A8, &qword_2546838A0);
    v52 = &v105[*(v104 + 36)];
    v53 = v49 + *(v47 + 48);
    v92 = v45;
    v45(v52, v53, v37);
    v91 = v51;
    v51(v49, v37);
    v31 = sub_25462C9F0(&qword_27F60BCA0, &qword_27F60BC98, &qword_254684E60, MEMORY[0x277D83D30]);
    sub_25467F5E0();
    v54 = v80;
    sub_25467F600();
    v55 = v102;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_254626008(0, v55[2] + 1, 1, v55);
    }

    v57 = v55[2];
    v56 = v55[3];
    v16 = v101;
    v58 = v106;
    if (v57 >= v56 >> 1)
    {
      v55 = sub_254626008((v56 > 1), v57 + 1, 1, v55);
    }

    v55[2] = v57 + 1;
    (*(v84 + 32))(v55 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v57, v54, v103);
    sub_25467F4B0();
    v44 = v104;
    v59 = *(v104 + 36);
    if ((sub_254680420() & 1) == 0)
    {
      goto LABEL_15;
    }

    v102 = v55;
    v60 = v99;
    v93 = v31;
    v31 = v97;
    v61 = v92;
    v92(v99, v16, v37);
    v62 = v100;
    v90(v60 + *(v100 + 48), v58 + v59, v37);
    v63 = v98;
    sub_25462CC8C(v60, v98, &qword_27F60B9A8, &qword_2546838A0);
    v64 = *(v62 + 48);
    v65 = v78;
    v61(v78, v63, v37);
    v66 = v91;
    v91(v63 + v64, v37);
    sub_25462CC24(v60, v63, &qword_27F60B9A8, &qword_2546838A0);
    v67 = *(v62 + 48);
    v36 = v104;
    v61((v65 + *(v104 + 36)), (v63 + v67), v37);
    v66(v63, v37);
    v35 = v94;
    sub_25467F510();
    sub_254626CC4(v65, &qword_27F60BC98, &qword_254684E60);
    sub_254626CC4(v105, &qword_27F60BC98, &qword_254684E60);
    sub_254626CC4(v106, &qword_27F60BC98, &qword_254684E60);
    v16 = v79;
  }

  sub_254626CC4(v16, &qword_27F60BC90, &unk_2546838B0);
  v44 = v77;
  v16 = v35;
  v75(v77, v35, v103);
  v31 = v102;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

LABEL_16:
  v31 = sub_254626008(0, *(v31 + 2) + 1, 1, v31);
LABEL_11:
  v69 = *(v31 + 2);
  v68 = *(v31 + 3);
  if (v69 >= v68 >> 1)
  {
    v31 = sub_254626008((v68 > 1), v69 + 1, 1, v31);
  }

  v70 = v84 + 8;
  v71 = v16;
  v72 = v103;
  (*(v84 + 8))(v71, v103);
  *(v31 + 2) = v69 + 1;
  (*(v70 + 24))(&v31[((*(v70 + 72) + 32) & ~*(v70 + 72)) + *(v70 + 64) * v69], v44, v72);
  return v31;
}

double static HoverTextPresentationEvent.didReceiveAnnouncement(text:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 66) = 12;
  v6 = type metadata accessor for HoverTextPresentationEvent(0);

  sub_25467F500();
  v7 = (a3 + v6[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a3 + v6[9]);
  result = 0.0;
  *v8 = 0u;
  v8[1] = 0u;
  v10 = a3 + v6[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a3 + v6[11]);
  *v11 = 0;
  v11[1] = 0;
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  v12 = (a3 + v6[14]);
  *v12 = 0;
  v12[1] = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 64) = 320;
  return result;
}

unint64_t HoverTextPresentationEvent.Error.errorDescription.getter(uint64_t a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      return 0xD000000000000018;
    }

    if (a2 == 1)
    {
      return 0xD000000000000022;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return 0xD00000000000002DLL;
      case 3:
        return 0xD000000000000029;
      case 4:
        return 0xD00000000000001CLL;
    }
  }

  sub_254680910();

  MEMORY[0x259C14370](a1, a2);
  return 0xD00000000000001DLL;
}

unint64_t HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1 > 5u)
  {
    v5 = 0xD00000000000001BLL;
    v6 = 0xD000000000000026;
    if (a1 != 10)
    {
      v6 = 0xD000000000000020;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000016;
    if (a1 == 7)
    {
      v7 = 0xD00000000000001DLL;
    }

    if (a1 != 6)
    {
      v1 = v7;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    v3 = 0xD00000000000001ALL;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000017;
    }

    if (!a1)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_254637BF8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_254680A90();
  }

  return v8 & 1;
}

uint64_t sub_254637C80()
{
  v1 = *v0;
  sub_254680B20();
  HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v1);
  sub_2546804C0();

  return sub_254680B80();
}

uint64_t sub_254637CE4(uint64_t a1)
{
  HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(*v1);
  sub_2546804C0();
}

uint64_t sub_254637D38()
{
  v1 = *v0;
  sub_254680B20();
  HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v1);
  sub_2546804C0();

  return sub_254680B80();
}

unint64_t sub_254637D98@<X0>(Swift::String *a1@<X0>, HoverTextUI::HoverTextPresentationEvent::ValueChangeEventType_optional *a2@<X8>)
{
  result = _s11HoverTextUI0aB17PresentationEventV011ValueChangeE4TypeO03rawF0AESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_254637DC8@<X0>(unint64_t *a1@<X8>)
{
  result = HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t HoverTextPresentationEvent.displayText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HoverTextPresentationEvent(0) + 28);
  v4 = sub_25467F5A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HoverTextPresentationEvent.displayText.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HoverTextPresentationEvent(0) + 28);
  v4 = sub_25467F5A0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HoverTextPresentationEvent.secondaryText.getter()
{
  v1 = *(v0 + *(type metadata accessor for HoverTextPresentationEvent(0) + 32));

  return v1;
}

uint64_t HoverTextPresentationEvent.secondaryText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HoverTextPresentationEvent(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HoverTextPresentationEvent.anchorRect.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for HoverTextPresentationEvent(0);
  v10 = (v4 + *(result + 36));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t HoverTextPresentationEvent.displayMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HoverTextPresentationEvent(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HoverTextPresentationEvent.selectedTextRange.setter(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for HoverTextPresentationEvent(0);
  v6 = (v2 + *(result + 44));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t HoverTextPresentationEvent.paragraphIndex.setter(uint64_t a1)
{
  result = type metadata accessor for HoverTextPresentationEvent(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

void *HoverTextPresentationEvent.axAttributedString.getter()
{
  v1 = *(v0 + *(type metadata accessor for HoverTextPresentationEvent(0) + 52));
  v2 = v1;
  return v1;
}

void HoverTextPresentationEvent.axAttributedString.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HoverTextPresentationEvent(0) + 52);

  *(v1 + v3) = a1;
}

uint64_t HoverTextPresentationEvent.location.setter(double a1, double a2)
{
  result = type metadata accessor for HoverTextPresentationEvent(0);
  v6 = (v2 + *(result + 56));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

__n128 HoverTextPresentationEvent.init(_:shouldFetchFocusedElementIfNeeded:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 66) = 12;
  v6 = type metadata accessor for HoverTextPresentationEvent(0);
  sub_25467F500();
  v7 = (a3 + v6[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a3 + v6[9]);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = a3 + v6[10];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a3 + v6[11]);
  *v10 = 0;
  v10[1] = 0;
  *(a3 + v6[12]) = 0;
  *(a3 + v6[13]) = 0;
  v11 = (a3 + v6[14]);
  *v11 = 0;
  v11[1] = 0;
  v12 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v12;
  *(a3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 65) = a2;
  return result;
}

__n128 static HoverTextPresentationEvent.focusDidChange(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *(a2 + 66) = 12;
  v7 = type metadata accessor for HoverTextPresentationEvent(0);
  v14 = *(a1 + 16);
  v15 = *a1;
  sub_25463D42C(a1, v16);
  sub_25467F500();
  v8 = (a2 + v7[8]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7[9]);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = a2 + v7[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a2 + v7[11]);
  *v11 = 0;
  v11[1] = 0;
  *(a2 + v7[12]) = 0;
  *(a2 + v7[13]) = 0;
  v12 = (a2 + v7[14]);
  *v12 = 0;
  v12[1] = 0;
  result = v15;
  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = 256;
  return result;
}

double static HoverTextPresentationEvent.primaryAppsDidChange.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 66) = 12;
  v2 = type metadata accessor for HoverTextPresentationEvent(0);
  sub_25467F500();
  v3 = (a1 + v2[8]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[9]);
  result = 0.0;
  *v4 = 0u;
  v4[1] = 0u;
  v6 = a1 + v2[10];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + v2[11]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v2[12]) = 0;
  *(a1 + v2[13]) = 0;
  v8 = (a1 + v2[14]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 448;
  return result;
}

__n128 static HoverTextPresentationEvent.valueChanged(text:eventType:keyInputDelegate:frame:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a3;
  v12 = *(a5 + 32) & 1 | 0x80;
  *(a6 + 66) = 12;
  v13 = type metadata accessor for HoverTextPresentationEvent(0);
  v14 = a4;

  sub_25467F500();
  v15 = (a6 + v13[8]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a6 + v13[9]);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = a6 + v13[10];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (a6 + v13[11]);
  *v18 = 0;
  v18[1] = 0;
  *(a6 + v13[12]) = 0;
  *(a6 + v13[13]) = 0;
  v19 = (a6 + v13[14]);
  *v19 = 0;
  v19[1] = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v11;
  *(a6 + 24) = a4;
  result = *a5;
  v21 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v21;
  *(a6 + 64) = v12;
  *(a6 + 65) = 1;
  return result;
}

double sub_254638848@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 66) = 12;
  v4 = type metadata accessor for HoverTextPresentationEvent(0);
  sub_25467F500();
  v5 = (a2 + v4[8]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4[9]);
  result = 0.0;
  *v6 = 0u;
  v6[1] = 0u;
  v8 = a2 + v4[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a2 + v4[11]);
  *v9 = 0;
  v9[1] = 0;
  *(a2 + v4[12]) = 0;
  *(a2 + v4[13]) = 0;
  v10 = (a2 + v4[14]);
  *v10 = 0;
  v10[1] = 0;
  *a2 = a1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 64) = 448;
  return result;
}

id sub_254638910(void *a1)
{
  v3 = sub_25467F840();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v12 = &v34 - v11;
  if (a1)
  {
    return a1;
  }

  if (*(v1 + 65) != 1)
  {
    goto LABEL_17;
  }

  v13 = sub_25467F810();
  swift_beginAccess();
  v35 = *(v4 + 16);
  v36 = v13;
  v35(v12, v13, v3);
  v14 = sub_25467F830();
  v15 = sub_254680710();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_254615000, v14, v15, "Focus element given to us resolved to nil. reaching out to get focused element", v16, 2u);
    MEMORY[0x259C155A0](v16, -1, -1);
  }

  v17 = *(v4 + 8);
  v17(v12, v3);
  v18 = AXUIElementSharedSystemApp();
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277CE6BA0]) initWithAXUIElement_];
  if (!v20)
  {

LABEL_14:
    v27 = v36;
    swift_beginAccess();
    v35(v7, v27, v3);
    v28 = sub_25467F830();
    v29 = sub_254680710();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_254615000, v28, v29, "Shared system app unexpectedly nil!", v30, 2u);
      MEMORY[0x259C155A0](v30, -1, -1);
    }

    result = (v17)(v7, v3);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v20 currentApplications];
  if (!v22)
  {
LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  v23 = v22;
  v24 = sub_2546805B0();

  if (!*(v24 + 16))
  {

    goto LABEL_20;
  }

  sub_25463504C(v24 + 32, v37);

  sub_254626E64(0, &qword_27F60C680, 0x277CE6BA0);
  v25 = swift_dynamicCast();
  v26 = v38;
  if (!v25)
  {
    v26 = 0;
  }

LABEL_21:
  v32 = v26;
  v33 = [v32 nativeFocusPreferredElement];

  result = v33;
  if (!v33)
  {
LABEL_17:
    sub_254636D40(result, v9, v10);
    swift_allocError();
    *v31 = 0;
    v31[1] = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_254638CC8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v119 = a3;
  v104 = a2;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[3];
  v100 = a4;
  v115 = sub_25467F550();
  v114 = *(v115 - 8);
  v11 = MEMORY[0x28223BE20](v115);
  v113 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = &v99 - v13;
  v112 = sub_25467F4F0();
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25467F620();
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC78, &qword_254683890);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v123 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v116 = &v99 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v118 = &v99 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v117 = &v99 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v99 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v106 = &v99 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v99 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v99 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v99 - v37;
  v39 = sub_25467F5A0();
  v126 = *(v39 - 8);
  v121 = *(v126 + 56);
  v122 = v126 + 56;
  v121(v38, 1, 1, v39);
  v103 = v5;
  v102 = v4;
  v101 = a1;
  v125 = v39;
  if (!a1)
  {
    v120 = 0;
    v124 = 0;
    goto LABEL_23;
  }

  v40 = a1;
  if (![v40 isKeyboardKey])
  {
    goto LABEL_9;
  }

  v107 = v40;
  result = [v107 application];
  if (result)
  {
    v42 = result;
    v43 = [result firstResponder];

    if (v43)
    {
      v44 = [v43 value];
      if (v44)
      {
        v45 = v44;
        sub_254680470();
      }

      sub_25467F610();
      sub_25467F5B0();
      sub_254626CC4(v38, &qword_27F60BC78, &qword_254683890);
      v121(v36, 0, 1, v125);
      sub_25462CC24(v36, v38, &qword_27F60BC78, &qword_254683890);
      v46 = v107;
      v47 = [v107 label];
      if (v47)
      {
        v48 = v47;
        v120 = sub_254680470();
        v124 = v49;
      }

      else
      {

        v124 = 0xE100000000000000;
        v120 = 32;
      }

      goto LABEL_13;
    }

LABEL_9:
    v120 = 0;
    v124 = 0;
LABEL_13:
    sub_25462CC8C(v38, v33, &qword_27F60BC78, &qword_254683890);
    if ((*(v126 + 48))(v33, 1, v125) == 1)
    {
      sub_254626CC4(v33, &qword_27F60BC78, &qword_254683890);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC60, &unk_254683880);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_254683550;
      *(inited + 32) = v40;
      v51 = v40;
      v52 = [v51 elementsForAttribute_];
      if (v52)
      {
        v53 = v52;
        sub_254626E64(0, &qword_27F60C680, 0x277CE6BA0);
        v54 = sub_2546805B0();
      }

      else
      {
        v54 = MEMORY[0x277D84F90];
      }

      if (qword_27F60B410 != -1)
      {
        swift_once();
      }

      v56 = sub_254634D44(v55, v54);

      if ((v56 & 1) == 0)
      {
        v127 = v54;

        sub_25463D0B4(inited);
        inited = v127;
      }

      qword_27F60BBE8 = v54;

      v57 = v106;
      sub_25463B384(inited, v106);

      sub_254626CC4(v38, &qword_27F60BC78, &qword_254683890);
      v39 = v125;
      v121(v57, 0, 1, v125);
      sub_25462CC24(v57, v38, &qword_27F60BC78, &qword_254683890);
    }

    else
    {

      sub_254626CC4(v33, &qword_27F60BC78, &qword_254683890);
      v39 = v125;
    }

LABEL_23:
    sub_25462CC8C(v38, v28, &qword_27F60BC78, &qword_254683890);
    v58 = *(v126 + 48);
    v59 = v58(v28, 1, v39);
    sub_254626CC4(v28, &qword_27F60BC78, &qword_254683890);
    v108 = v38;
    v107 = v58;
    if (v59 == 1)
    {
      if (!v119)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v60 = v117;
      sub_25462CC8C(v38, v117, &qword_27F60BC78, &qword_254683890);
      result = v58(v60, 1, v39);
      if (result == 1)
      {
        goto LABEL_46;
      }

      v61 = v109;
      sub_25467F4A0();
      sub_25463DB1C(&qword_27F60B6B0, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
      v62 = v111;
      v63 = v112;
      sub_254680670();
      v64 = v113;
      sub_254680690();
      sub_25463DB1C(&qword_27F60B6B8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
      v65 = v115;
      v66 = sub_254680430();
      v67 = *(v114 + 8);
      v67(v64, v65);
      v67(v62, v65);
      (*(v110 + 8))(v61, v63);
      v39 = v125;
      (*(v126 + 8))(v117, v125);
      v38 = v108;
      v58 = v107;
      if ((v66 & 1) == 0 || !v119)
      {
LABEL_30:
        v69 = v118;
        sub_25462CC8C(v38, v118, &qword_27F60BC78, &qword_254683890);
        v70 = v58(v69, 1, v39);
        v71 = sub_254626CC4(v69, &qword_27F60BC78, &qword_254683890);
        v74 = v124;
        if (v70 == 1)
        {
          goto LABEL_36;
        }

        v75 = v116;
        sub_25462CC8C(v38, v116, &qword_27F60BC78, &qword_254683890);
        result = v58(v75, 1, v39);
        if (result == 1)
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v76 = v109;
        sub_25467F4A0();
        sub_25463DB1C(&qword_27F60B6B0, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
        v77 = v111;
        v78 = v112;
        sub_254680670();
        v79 = v113;
        sub_254680690();
        sub_25463DB1C(&qword_27F60B6B8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
        v80 = v115;
        v81 = sub_254680430();
        v82 = *(v114 + 8);
        v82(v79, v80);
        v82(v77, v80);
        (*(v110 + 8))(v76, v78);
        v39 = v125;
        v71 = (*(v126 + 8))(v116, v125);
        v38 = v108;
        v74 = v124;
        v58 = v107;
        if (v81)
        {
LABEL_36:
          if (!v74)
          {
            goto LABEL_41;
          }

          v83 = HIBYTE(v74) & 0xF;
          if ((v74 & 0x2000000000000000) == 0)
          {
            v83 = v120 & 0xFFFFFFFFFFFFLL;
          }

          if (!v83)
          {
LABEL_41:
            sub_254636D40(v71, v72, v73);
            swift_allocError();
            *v97 = xmmword_254683540;
            swift_willThrow();

            return sub_254626CC4(v38, &qword_27F60BC78, &qword_254683890);
          }
        }

        v84 = v123;
        sub_25462CC8C(v38, v123, &qword_27F60BC78, &qword_254683890);
        result = v58(v84, 1, v39);
        if (result != 1)
        {
          v85 = type metadata accessor for HoverTextPresentationEvent(0);
          v86 = v102;
          (*(v126 + 40))(v102 + v85[7], v123, v39);
          v87 = (v86 + v85[8]);

          *v87 = v120;
          v87[1] = v74;
          if (!v101)
          {
            result = sub_254626CC4(v38, &qword_27F60BC78, &qword_254683890);
            v90 = 0;
            v92 = 0;
            v94 = 0;
            v96 = 0;
            if ((v100[4] & 1) == 0)
            {
              v90 = v7;
              v92 = v8;
              v94 = v9;
              v96 = v10;
            }

            goto LABEL_44;
          }

          result = [v101 uiElement];
          if (result)
          {
            v88 = result;
            [result rectWithAXAttribute_];
            v90 = v89;
            v92 = v91;
            v94 = v93;
            v96 = v95;

            result = sub_254626CC4(v38, &qword_27F60BC78, &qword_254683890);
LABEL_44:
            v98 = (v86 + v85[9]);
            *v98 = v90;
            v98[1] = v92;
            v98[2] = v94;
            v98[3] = v96;
            return result;
          }

          goto LABEL_48;
        }

        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    sub_25467F610();
    v68 = v106;
    sub_25467F5B0();
    sub_254626CC4(v38, &qword_27F60BC78, &qword_254683890);
    v121(v68, 0, 1, v39);
    sub_25462CC24(v68, v38, &qword_27F60BC78, &qword_254683890);
    goto LABEL_30;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_254639B10(uint64_t *a1)
{
  v3 = sub_25467F620();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25467F5A0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {

    sub_25467F610();
    sub_25467F5B0();
    v13 = type metadata accessor for HoverTextPresentationEvent(0);
    (*(v5 + 40))(v1 + v13[7], v10, v4);
    v14 = (v1 + v13[8]);

    *v14 = 0;
    v14[1] = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    if ((a1[6] & 1) == 0)
    {
      v16 = *(a1 + 1);
      v17 = *(a1 + 2);
    }

    v18 = (v1 + v13[9]);
    *v18 = v16;
    v18[1] = v17;
  }

  else
  {
    sub_254636D40(v6, v7, v8);
    swift_allocError();
    *v19 = xmmword_254683540;
    return swift_willThrow();
  }

  return result;
}

void sub_254639CE4(int a1, void *a2)
{
  v3 = v2;
  v199 = a1;
  v210[4] = *MEMORY[0x277D85DE8];
  v5 = sub_25467F840();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v175 - v11;
  MEMORY[0x28223BE20](v10);
  v196 = v175 - v13;
  v14 = sub_25467F620();
  MEMORY[0x28223BE20](v14 - 8);
  v198 = sub_25467F5A0();
  v197 = *(v198 - 1);
  MEMORY[0x28223BE20](v198);
  v16 = v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() primaryApp];
  if (!v17)
  {
    goto LABEL_13;
  }

  v20 = v17;
  v194 = v12;
  v193 = v9;
  v195 = v5;
  v21 = [v17 uiElement];
  if (!v21)
  {

LABEL_13:
    sub_254636D40(v17, v18, v19);
    swift_allocError();
    *v47 = xmmword_254683590;
    swift_willThrow();
    return;
  }

  v22 = v21;
  v23 = a2;
  if (!a2)
  {
    v24 = [v20 firstResponder];
    v23 = v24;
    if (!v24)
    {
      goto LABEL_15;
    }
  }

  v27 = a2;
  v23 = v23;
  v28 = [v23 uiElement];
  if (!v28)
  {

LABEL_15:
    sub_254636D40(v24, v25, v26);
    swift_allocError();
    *v48 = xmmword_254683580;
    swift_willThrow();

    return;
  }

  v29 = v28;
  v187 = v6;
  v190 = v23;
  v192 = v22;
  v30 = sub_254680660();
  v31 = sub_254680660();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC60, &unk_254683880);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_254683560;
  *(v32 + 32) = v30;
  *(v32 + 40) = v31;
  sub_254626E64(0, &qword_27F60BC68, 0x277CCABB0);
  v188 = v30;
  v189 = v31;
  v33 = sub_2546805A0();

  v191 = v29;
  v34 = [v29 valueArrayWithAXAttributes_];

  if (!v34)
  {
    v39 = v192;
    v40 = v190;
    goto LABEL_18;
  }

  v38 = sub_2546805B0();

  v39 = v192;
  v40 = v190;
  if (!v38)
  {
LABEL_18:
    sub_254636D40(v35, v36, v37);
    swift_allocError();
    *v49 = xmmword_254683570;
    swift_willThrow();

    return;
  }

  if (!*(v38 + 16))
  {

    goto LABEL_18;
  }

  if (!*(v38 + 16))
  {
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  sub_25463504C(v38 + 32, v210);

  sub_25463504C(v210, v209);
  type metadata accessor for AXValue(0);
  swift_dynamicCast();
  v41 = v207;
  v203 = 0;
  valuePtr = 0;
  AXValueGetValue(v207, kAXValueTypeCFRange, &valuePtr);
  v42 = valuePtr;
  v43 = v203;
  v44 = type metadata accessor for HoverTextPresentationEvent(0);
  v45 = (v200 + *(v44 + 44));
  v183 = v42;
  *v45 = v42;
  v45[1] = v43;
  v182 = v43;
  v178 = v45;
  v46 = *(v38 + 16);
  v180 = v41;
  if (v46)
  {
    sub_25463504C(v38 + 32 * v46, v209);
  }

  else
  {

    memset(v209, 0, sizeof(v209));
  }

  v50 = HoverTextPresentationEvent.ValueChangeEventType.rawValue.getter(v199);
  v52 = v191;
  v53 = v44;
  if (v50 == 0xD000000000000026 && 0x8000000254685CF0 == v51)
  {

    v54 = 0;
    v55 = 0xE000000000000000;
    v56 = v192;
    goto LABEL_29;
  }

  v57 = sub_254680A90();

  v56 = v192;
  if ((v57 & 1) == 0)
  {
    sub_25462CC8C(v209, &v207, &qword_27F60BC70, &qword_254684220);
    if (*(&v208 + 1))
    {
      if (swift_dynamicCast())
      {
        v55 = *(&v205 + 1);
        v54 = v205;
        goto LABEL_29;
      }
    }

    else
    {
      sub_254626CC4(&v207, &qword_27F60BC70, &qword_254684220);
    }
  }

  v54 = 0;
  v55 = 0xE000000000000000;
LABEL_29:
  v58 = sub_2546806C0();
  v185 = v53;
  v186 = v55;
  v184 = v20;
  if (v60)
  {
    goto LABEL_74;
  }

  v176 = v59;
  v179 = v2;
  v177 = v58;
  v181 = v54;
  v61 = sub_254680580();
  v63 = v62;
  while (1)
  {
    if ((v63 ^ v61) < 0x4000)
    {

      v66 = v186;

      v177 = 15;
      v67 = v181;
      goto LABEL_38;
    }

    v63 = sub_254680820();
    if (sub_254680840() == 10 && v65 == 0xE100000000000000)
    {
      break;
    }

    v64 = sub_254680A90();

    if (v64)
    {
      goto LABEL_37;
    }
  }

LABEL_37:

  v66 = v186;

  v67 = v181;
  sub_254680580();
  v177 = sub_254680810();

LABEL_38:
  v68 = sub_25463B338(v176, v67, v66);
  v70 = v69;

  if ((v68 ^ v70) < 0x4000)
  {
LABEL_44:

    v74 = HIBYTE(v186) & 0xF;
    if ((v186 & 0x2000000000000000) == 0)
    {
      v74 = v181;
    }

    v75 = v74 << 16;
    v3 = v179;
    if ((v186 & 0x1000000000000000) == 0 || (v181 & 0x800000000000000) != 0)
    {
      v71 = v75 | 7;
    }

    else
    {
      v71 = v75 | 0xB;
    }
  }

  else
  {
    v71 = v68;
    while (sub_254680840() != 10 || v72 != 0xE100000000000000)
    {
      v73 = sub_254680A90();

      if (v73)
      {
        goto LABEL_51;
      }

      v71 = sub_254680810();
      if (!((v71 ^ v70) >> 14))
      {
        goto LABEL_44;
      }
    }

LABEL_51:

    v3 = v179;
  }

  v76 = v177;
  v77 = sub_254680520();
  if (v71 >> 14 < v76 >> 14)
  {
    goto LABEL_97;
  }

  v78 = v77;
  v79 = sub_254680580();
  v81 = v80;
  v83 = v82;

  sub_25467F610();
  v179 = v79;
  v176 = v81;
  v175[1] = v83;
  sub_25467F5C0();
  v84 = v185;
  v85 = v200;
  (v197)[5](v200 + v185[7], v16, v198);
  if (__OFSUB__(v183, v78))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v86 = v178;
  *v178 = v183 - v78;
  v86[1] = v182;
  *(v85 + v84[12]) = v78;
  v87 = sub_2546804D0();
  v201[0] = 0;
  v201[1] = v87;
  v88 = AXValueCreate(kAXValueTypeCFRange, v201);
  if ([v191 objectWithAXAttribute:92508 parameter:v88])
  {
    sub_254680870();
    swift_unknownObjectRelease();
  }

  else
  {
    v206 = 0u;
    v205 = 0u;
  }

  v207 = v205;
  v208 = v206;
  v53 = v185;
  if (*(&v206 + 1))
  {
    sub_254626E64(0, &qword_27F60BC50, 0x277CE6B98);
    if (swift_dynamicCast())
    {
      v89 = v204;
      goto LABEL_62;
    }
  }

  else
  {
    sub_254626CC4(&v207, &qword_27F60BC70, &qword_254684220);
  }

  v89 = 0;
LABEL_62:
  v90 = sub_254680520();
  v91 = sub_254680830();

  v198 = v88;
  if (!v89)
  {
    goto LABEL_68;
  }

  v92 = v89;
  if (v90 == sub_25467F410())
  {

    goto LABEL_68;
  }

  v93 = v91;
  v94 = __OFADD__(v90, v91);
  v95 = v90 + v91;
  if (v94)
  {
LABEL_99:
    __break(1u);
  }

  v96 = [v92 length];

  v97 = v96 < v95;
  v98 = v93;
  v99 = v198;
  if (!v97)
  {
    v121 = [v92 substringWithRange_];

    v122 = v53[13];
    *(v85 + v122) = v121;
    v20 = v184;
    v56 = v192;
    v52 = v191;
    goto LABEL_74;
  }

LABEL_68:
  v197 = v89;
  v100 = sub_25467F810();
  swift_beginAccess();
  v101 = v187;
  v102 = v196;
  v103 = v100;
  v104 = v195;
  (*(v187 + 16))(v196, v103, v195);
  v105 = v184;
  v106 = v101;
  v107 = sub_25467F830();
  v108 = sub_2546806F0();

  if (os_log_type_enabled(v107, v108))
  {
    LODWORD(v183) = v108;
    v109 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    *&v207 = v182;
    *v109 = 136315394;
    v110 = sub_2546807F0();
    v112 = sub_25463CAC4(v110, v111, &v207);

    *(v109 + 4) = v112;
    *(v109 + 12) = 2080;
    v113 = [v105 label];
    if (v113)
    {
      v114 = v113;
      v115 = sub_254680470();
      v117 = v116;
    }

    else
    {
      v117 = 0xEC0000006C696E20;
      v115 = 0x7369206C6562616CLL;
    }

    v118 = v198;
    v119 = sub_25463CAC4(v115, v117, &v207);

    *(v109 + 14) = v119;
    _os_log_impl(&dword_254615000, v107, v183, "Invalid substring range %s %s", v109, 0x16u);
    v120 = v182;
    swift_arrayDestroy();
    MEMORY[0x259C155A0](v120, -1, -1);
    MEMORY[0x259C155A0](v109, -1, -1);

    (*(v187 + 8))(v102, v195);
    v20 = v184;
    v56 = v192;
    v53 = v185;
    v52 = v191;
  }

  else
  {

    (*(v106 + 8))(v102, v104);
    v20 = v184;
    v56 = v192;
    v52 = v191;
    v53 = v185;
  }

LABEL_74:
  v123 = [objc_opt_self() sharedInstance];
  v124 = [v123 hoverTextTypingDisplayMode];

  v125 = v200;
  v126 = (v200 + v53[10]);
  *v126 = v124;
  v198 = v126;
  v126[8] = 0;
  [v56 rectWithAXAttribute_];
  [v52 rectWithAXAttribute_];
  [v52 rectWithAXAttribute_];
  v215.origin.x = 0.0;
  v215.origin.y = 0.0;
  v215.size.width = 0.0;
  v215.size.height = 0.0;
  if (CGRectEqualToRect(v211, v215))
  {
    [v56 rectWithAXAttribute_];
  }

  CGSizeMake();
  v197 = v127;
  v196 = v128;
  v183 = v129;
  v182 = v130;
  [v52 rectWithAXAttribute_];
  x = v212.origin.x;
  y = v212.origin.y;
  width = v212.size.width;
  height = v212.size.height;
  if (CGRectIsNull(v212) || (v213.origin.x = x, v213.origin.y = y, v213.size.width = width, v213.size.height = height, CGRectIsInfinite(v213)))
  {
    v135 = sub_25467F810();
    swift_beginAccess();
    v136 = v187;
    v137 = *(v187 + 16);
    v138 = v194;
    v139 = v195;
    v181 = v187 + 16;
    v178 = v137;
    (v137)(v194, v135, v195);
    v140 = sub_25467F830();
    v141 = sub_2546806F0();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      *&v205 = v177;
      *v142 = 136315138;
      v214.origin.x = x;
      v214.origin.y = y;
      v214.size.width = width;
      v214.size.height = height;
      v143 = NSStringFromCGRect(v214);
      v144 = v135;
      v145 = v124;
      v146 = sub_254680470();
      v179 = v3;
      v148 = v147;

      v149 = v146;
      v124 = v145;
      v135 = v144;
      v150 = sub_25463CAC4(v149, v148, &v205);

      *(v142 + 4) = v150;
      _os_log_impl(&dword_254615000, v140, v141, "Text cursor frame had infinite coordinates. %s. Falling back to cachedTextCursorFrame.", v142, 0xCu);
      v151 = v177;
      __swift_destroy_boxed_opaque_existential_0(v177);
      MEMORY[0x259C155A0](v151, -1, -1);
      MEMORY[0x259C155A0](v142, -1, -1);

      v152 = *(v187 + 8);
      v152(v138, v195);
    }

    else
    {

      v152 = *(v136 + 8);
      v152(v138, v139);
    }

    v153 = v190;
    v216.origin.x = 0.0;
    v216.origin.y = 0.0;
    v216.size.width = 0.0;
    v216.size.height = 0.0;
    v154 = CGRectEqualToRect(*ymmword_27F60BBF0, v216);
    v20 = v184;
    if (v154)
    {
      v194 = v124;
      swift_beginAccess();
      v155 = v193;
      v156 = v135;
      v157 = v195;
      (v178)(v193, v156, v195);
      v158 = sub_25467F830();
      v159 = sub_254680710();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_254615000, v158, v159, "cachedTextCursorFrame is zero. Falling back to first responder frame.", v160, 2u);
        v161 = v191;
        MEMORY[0x259C155A0](v160, -1, -1);

        v152(v155, v157);
        v52 = v161;
        v125 = v200;
        v56 = v192;
        v153 = v190;
        v53 = v185;
        v124 = v194;
        goto LABEL_88;
      }

      v152(v155, v157);
      v125 = v200;
      v56 = v192;
      v153 = v190;
      v53 = v185;
      v124 = v194;
    }

    else
    {
      v125 = v200;
      v56 = v192;
      v53 = v185;
    }

    v52 = v191;
  }

  else
  {
    *ymmword_27F60BBF0 = x;
    *&ymmword_27F60BBF0[8] = y;
    *&ymmword_27F60BBF0[16] = width;
    *&ymmword_27F60BBF0[24] = height;
    v153 = v190;
  }

LABEL_88:
  CGSizeMake();
  v163 = v162;
  v165 = v164;
  v167 = v166;
  v169 = v168;
  if (v124 == 2)
  {
    v170 = v153;
    v171 = [v153 hoverTypingShouldAdjustDockedMode];

    sub_254626CC4(v209, &qword_27F60BC70, &qword_254684220);
    __swift_destroy_boxed_opaque_existential_0(v210);
    if (v171)
    {
      v172 = v198;
      *v198 = 3;
      *(v172 + 8) = 0;
    }

    else
    {
      v163 = v197;
      v165 = v196;
      v167 = v183;
      v169 = v182;
    }
  }

  else
  {

    sub_254626CC4(v209, &qword_27F60BC70, &qword_254684220);
    __swift_destroy_boxed_opaque_existential_0(v210);
    if (v124 != 3)
    {
      goto LABEL_95;
    }
  }

  v173 = (v125 + v53[9]);
  *v173 = v163;
  v173[1] = v165;
  v173[2] = v167;
  v173[3] = v169;
LABEL_95:
  v174 = (v125 + v53[8]);

  *v174 = 0;
  v174[1] = 0;
  *(v125 + 66) = v199;
}

unint64_t sub_25463B338(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_254680580();
  }

  __break(1u);
  return result;
}

void sub_25463B384(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v82 = sub_25467F550();
  v3 = *(v82 - 8);
  v4 = MEMORY[0x28223BE20](v82);
  v81 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v62 - v6;
  v79 = sub_25467F4F0();
  v7 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC78, &qword_254683890);
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v93 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = sub_25467F620();
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25467F5A0();
  v95 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v77 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v62 - v20);
  v22 = MEMORY[0x28223BE20](v19);
  v96 = &v62 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v83 = &v62 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v62 - v26;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2546809C0())
  {
    v29 = MEMORY[0x277D84F90];
    v94 = v16;
    if (!i)
    {
      break;
    }

    v76 = v27;
    v98 = MEMORY[0x277D84F90];
    v27 = &v98;
    sub_254635B08(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v74 = i;
    v62 = v7;
    v63 = v3;
    v64 = v21;
    v30 = 0;
    v29 = v98;
    v73 = *MEMORY[0x277CE6DD0];
    v75 = a1 & 0xC000000000000001;
    v67 = a1 & 0xFFFFFFFFFFFFFF8;
    v70 = a1;
    v66 = a1 + 32;
    v72 = (v95 + 56);
    v68 = "No display element found";
    v31 = (v95 + 48);
    v97 = (v95 + 32);
    v71 = (v95 + 8);
    v7 = &qword_27F60BC78;
    v21 = &qword_254683890;
    while (1)
    {
      v89 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v75)
      {
        v32 = MEMORY[0x259C147A0]();
      }

      else
      {
        if (v30 >= *(v67 + 16))
        {
          goto LABEL_42;
        }

        v32 = *(v66 + 8 * v30);
      }

      v90 = v29;
      v91 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC80, &qword_254683898);
      v33 = *(v84 + 72);
      v34 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v86 = swift_allocObject();
      v35 = v86 + v34;
      sub_25463C098(v86 + v34);
      sub_25463C88C(v35 + v33);
      v36 = [v91 hasAnyTraits_];
      v88 = v35;
      if (v36)
      {
        v37 = sub_254680440();
        v38 = HTUILocString(v37);

        sub_254680470();
        sub_25467F610();
        v35 = v88;
        sub_25467F5B0();
        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v40 = v93;
      v87 = v89;
      (*v72)(v35 + 2 * v33, v39, 1, v16);
      v41 = 3;
      v42 = MEMORY[0x277D84F90];
      v92 = v33;
      do
      {
        sub_25462CC8C(v35, v13, v7, v21);
        sub_25462CC24(v13, v40, v7, v21);
        if ((*v31)(v40, 1, v16) == 1)
        {
          sub_254626CC4(v40, v7, v21);
        }

        else
        {
          v43 = v31;
          v44 = v21;
          v45 = v7;
          v46 = v13;
          v47 = *v97;
          (*v97)(v96, v40, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_254626008(0, v42[2] + 1, 1, v42);
          }

          v49 = v42[2];
          v48 = v42[3];
          if (v49 >= v48 >> 1)
          {
            v42 = sub_254626008((v48 > 1), v49 + 1, 1, v42);
          }

          v42[2] = v49 + 1;
          v50 = v42 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v49;
          v16 = v94;
          v47(v50, v96, v94);
          v13 = v46;
          v7 = v45;
          v21 = v44;
          v31 = v43;
          v33 = v92;
          v40 = v93;
        }

        v35 += v33;
        --v41;
      }

      while (v41);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v51 = v83;
      sub_25462EBC4(0x202C, 0xE200000000000000, v42);

      v52 = sub_254636D94(10, 0xE100000000000000);
      v27 = v76;
      sub_25462EBC4(0x202E, 0xE200000000000000, v52);

      (*v71)(v51, v16);
      v29 = v90;
      v98 = v90;
      a1 = *(v90 + 2);
      v53 = *(v90 + 3);
      v3 = a1 + 1;
      if (a1 >= v53 >> 1)
      {
        sub_254635B08((v53 > 1), a1 + 1, 1);
        v27 = v76;
        v29 = v98;
      }

      *(v29 + 2) = v3;
      (*(v95 + 32))(&v29[((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * a1], v27, v16);
      v30 = v87;
      if (v89 == v74)
      {
        v21 = v64;
        v3 = v63;
        v7 = v62;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

LABEL_27:
  v92 = *(v29 + 2);
  if (v92)
  {
    v13 = 0;
    v91 = (v95 + 16);
    v88 = (v7 + 8);
    v89 = (v3 + 8);
    v86 = (v95 + 8);
    v87 = (v95 + 32);
    v27 = MEMORY[0x277D84F90];
    v90 = v29;
    v54 = v80;
    while (v13 < *(v29 + 2))
    {
      v96 = ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v97 = v27;
      v93 = *(v95 + 72);
      (*(v95 + 16))(v21, &v96[v29 + v93 * v13], v16);
      v7 = v78;
      sub_25467F4A0();
      sub_25463DB1C(&qword_27F60B6B0, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
      v55 = v21;
      v56 = v79;
      sub_254680670();
      v57 = v81;
      sub_254680690();
      sub_25463DB1C(&qword_27F60B6B8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
      a1 = v82;
      v58 = sub_254680430();
      v3 = *v89;
      (*v89)(v57, a1);
      (v3)(v54, a1);
      (*v88)(v7, v56);
      if (v58)
      {
        v16 = v94;
        (*v86)(v55, v94);
        v21 = v55;
        v29 = v90;
        v27 = v97;
      }

      else
      {
        a1 = *v87;
        (*v87)(v77, v55, v94);
        v27 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v27;
        v21 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_254635B08(0, *(v27 + 2) + 1, 1);
          v27 = v98;
        }

        v29 = v90;
        v60 = v96;
        v7 = v93;
        v3 = *(v27 + 2);
        v61 = *(v27 + 3);
        if (v3 >= v61 >> 1)
        {
          sub_254635B08((v61 > 1), v3 + 1, 1);
          v27 = v98;
        }

        *(v27 + 2) = v3 + 1;
        v16 = v94;
        (a1)(&v60[v27 + v3 * v7], v77, v94);
      }

      if (v92 == ++v13)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_41;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_39:

  sub_25462EBC4(0x202C, 0xE200000000000000, v27);
}

uint64_t HoverTextPresentationEvent.description.getter()
{
  v1 = *(v0 + 64);
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 2)
    {
      return 0x61684365756C6156;
    }

    else
    {
      v4 = *v0;
      v5 = v0[1];
      result = 0xD000000000000014;
      v6 = v0[5];
      v7 = v0[6] | v0[7];
      v8 = v0[4] | v0[3] | v0[2];
      if (v1 != 192 || v7 | v4 | v6 | v8 | v5)
      {
        v9 = v7 | v6 | v8 | v5;
        if (v1 != 192 || v4 != 1 || v9)
        {
          if (v1 == 192 && v4 == 2 && !v9)
          {
            return 0xD000000000000011;
          }

          else if (v1 == 192 && v4 == 3 && !v9)
          {
            return 0xD00000000000001DLL;
          }

          else
          {
            return 0xD000000000000016;
          }
        }
      }
    }
  }

  else if (v2)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6469447375636F46;
  }

  return result;
}

uint64_t sub_25463C098@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_25467F550();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v59 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = v52 - v5;
  v56 = sub_25467F4F0();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25467F440();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25467F5A0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v52 - v14;
  v16 = sub_25467F620();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC78, &qword_254683890);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v52 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v52 - v24;
  v63 = v10;
  v65 = *(v10 + 56);
  v66 = v10 + 56;
  v65(v52 - v24, 1, 1, v9);
  v26 = [v1 uiElement];
  v64 = v9;
  if (!v26)
  {
    v69 = 0u;
    v70 = 0u;
    v29 = v13;
LABEL_9:
    sub_254626CC4(&v69, &qword_27F60BC70, &qword_254684220);
    goto LABEL_10;
  }

  v27 = v26;
  v28 = [v26 objectWithAXAttribute_];

  if (v28)
  {
    sub_254680870();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  v29 = v13;
  v69 = v67;
  v70 = v68;
  v9 = v64;
  if (!*(&v68 + 1))
  {
    goto LABEL_9;
  }

  sub_254626E64(0, &qword_27F60BC50, 0x277CE6B98);
  if (swift_dynamicCast())
  {
    v30 = v67;
    v31 = [v67 attributedString];
    sub_25467F5F0();

    goto LABEL_12;
  }

LABEL_10:
  v32 = [v1 label];
  if (!v32)
  {
    goto LABEL_13;
  }

  v33 = v32;
  sub_254680470();

  sub_25467F610();
  v9 = v64;
  sub_25467F5B0();
LABEL_12:
  sub_254626CC4(v25, &qword_27F60BC78, &qword_254683890);
  v65(v23, 0, 1, v9);
  sub_25462CC24(v23, v25, &qword_27F60BC78, &qword_254683890);
  v29 = v13;
LABEL_13:
  sub_25462CC8C(v25, v20, &qword_27F60BC78, &qword_254683890);
  v34 = v63;
  if ((*(v63 + 48))(v20, 1, v9) == 1)
  {
    sub_254626CC4(v25, &qword_27F60BC78, &qword_254683890);
    sub_254626CC4(v20, &qword_27F60BC78, &qword_254683890);
  }

  else
  {
    v35 = v34 + 32;
    v36 = *(v34 + 32);
    v37 = v15;
    v52[1] = v35;
    v52[0] = v36;
    v36(v15, v20, v9);
    sub_25467F420();
    sub_25462DB10(v8, v29);
    (*(v53 + 8))(v8, v54);
    v38 = v55;
    sub_25467F4A0();
    sub_25463DB1C(&qword_27F60B6B0, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
    v54 = v29;
    v39 = v56;
    v40 = v57;
    sub_254680670();
    v41 = v59;
    sub_254680690();
    sub_25463DB1C(&qword_27F60B6B8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
    v42 = v61;
    v43 = sub_254680430();
    v44 = *(v60 + 8);
    v45 = v41;
    v46 = v63;
    v44(v45, v42);
    v44(v40, v42);
    v9 = v64;
    (*(v58 + 8))(v38, v39);
    v47 = *(v46 + 8);
    v47(v37, v9);
    sub_254626CC4(v25, &qword_27F60BC78, &qword_254683890);
    if ((v43 & 1) == 0)
    {
      v50 = v62;
      (v52[0])(v62, v54, v9);
      v49 = v50;
      v48 = 0;
      return (v65)(v49, v48, 1, v9);
    }

    v47(v54, v9);
  }

  v48 = 1;
  v49 = v62;
  return (v65)(v49, v48, 1, v9);
}

uint64_t sub_25463C88C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25467F620();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = [v1 value];
  if (v4)
  {
    v5 = v4;
    if ([v1 hasAnyTraits_])
    {
      [v5 intValue];
      v6 = sub_254680440();
      v7 = HTUILocString(v6);

      v8 = sub_254680470();
      v10 = v9;
    }

    else
    {
      v8 = sub_254680470();
      v10 = v11;
    }

    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_25467F610();
      sub_25467F5B0();

      v13 = sub_25467F5A0();
      return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    }
  }

  v15 = sub_25467F5A0();
  v16 = *(*(v15 - 8) + 56);

  return v16(a1, 1, 1, v15);
}

unint64_t sub_25463CAC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25463CB90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25463504C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25463CB90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25463CC9C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_254680940();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25463CC9C(uint64_t a1, unint64_t a2)
{
  v3 = sub_25463CCE8(a1, a2);
  sub_25463CE18(&unk_28667B4C8);
  return v3;
}

void *sub_25463CCE8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25463CF04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_254680940();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_254680500();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25463CF04(v10, 0);
        result = sub_2546808E0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25463CE18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25463CF78(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25463CF04(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC58, "fb");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25463CF78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC58, "fb");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_25463D06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 < 0)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_25463D0B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2546809C0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2546809C0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_254654D18();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25463D1A4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25463D1A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2546809C0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2546809C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25462C9F0(&qword_27F60BCB0, &qword_27F60BCA8, &qword_2546838C0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCA8, &qword_2546838C0);
            v9 = sub_25463D358(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_254626E64(0, &qword_27F60C680, 0x277CE6BA0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_25463D358(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C147A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25463D3D8;
  }

  __break(1u);
  return result;
}

unint64_t _s11HoverTextUI0aB17PresentationEventV011ValueChangeE4TypeO03rawF0AESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_254680A60();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25463D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BC18;
  if (!qword_27F60BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BC18);
  }

  return result;
}

void sub_25463D50C(uint64_t a1)
{
  sub_25463D660(319, &qword_27F60BC30, &type metadata for HoverTextPresentationEvent.ValueChangeEventType);
  if (v1 <= 0x3F)
  {
    sub_25467F5A0();
    if (v2 <= 0x3F)
    {
      sub_25463D660(319, &qword_27F60BC38, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGRect(319);
        if (v4 <= 0x3F)
        {
          sub_25463D6AC(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for _NSRange(319);
            if (v6 <= 0x3F)
            {
              sub_25463D704(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for CGPoint(319);
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

void sub_25463D660(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_254680800();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25463D6AC(uint64_t a1)
{
  if (!qword_27F60BC40)
  {
    type metadata accessor for AXHoverTextDisplayMode(255);
    v1 = sub_254680800();
    if (!v2)
    {
      atomic_store(v1, &qword_27F60BC40);
    }
  }
}

void sub_25463D704(uint64_t a1)
{
  if (!qword_27F60BC48)
  {
    sub_254626E64(255, &qword_27F60BC50, 0x277CE6B98);
    v1 = sub_254680800();
    if (!v2)
    {
      atomic_store(v1, &qword_27F60BC48);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11HoverTextUI0aB17PresentationEventV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25463D784(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25463D7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_25463D82C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11HoverTextUI0aB17PresentationEventV0E4TypeO(uint64_t a1)
{
  v1 = *(a1 + 64) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25463D8A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 65))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 64) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 64) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25463D8FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_25463D97C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 64) = *(result + 64) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = -64;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverTextPresentationEvent.ValueChangeEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverTextPresentationEvent.ValueChangeEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25463DB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25463DB64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25463DBAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25463DC10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = **v0;
  v4 = v2[18];
  if (v4(v3, v2))
  {
    if (v4(v3, v2) == 1)
    {
      v5 = *(*v1 + 128);
      v6 = v5();
      (v5)(v6);
      CGRectMake();
    }
  }

  else
  {
    (*(*v1 + 128))();
    CGRectMake();
  }
}

double sub_25463DD58(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v44 = CGRectUnion(*&a1, *&a5);
  x = v44.origin.x;
  v43 = a8;
  width = v44.size.width;
  y = v44.origin.y;
  v35 = a7;
  rect = v44.size.height;
  v33 = a5;
  v34 = a6;
  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  MinX = CGRectGetMinX(v44);
  v39 = a1;
  v40 = a2;
  v45.origin.x = a1;
  v45.origin.y = a2;
  v17 = a3;
  v45.size.width = a3;
  v18 = a4;
  v45.size.height = a4;
  if (MinX >= CGRectGetMinX(v45))
  {
    v26 = v33;
    v25 = v34;
    v48.origin.x = v33;
    v48.origin.y = v34;
    v24 = v35;
    v48.size.width = v35;
    v48.size.height = v43;
    MaxX = CGRectGetMaxX(v48);
    v49.origin.x = v39;
    v20 = v40;
    v49.origin.y = v40;
    v21 = v17;
    v22 = v39;
    v49.size.width = v21;
    v49.size.height = v18;
    v28 = CGRectGetMaxX(v49);
    v23 = 0.0;
    if (v28 < MaxX)
    {
      v50.origin.x = v33;
      v50.origin.y = v34;
      v50.size.width = v35;
      v50.size.height = v43;
      v29 = CGRectGetMaxX(v50);
      v51.origin.x = v39;
      v51.origin.y = v40;
      v51.size.width = v21;
      v51.size.height = v18;
      v23 = v29 - CGRectGetMaxX(v51);
    }
  }

  else
  {
    v46.origin.x = x;
    v46.size.width = width;
    v46.origin.y = y;
    v46.size.height = rect;
    v19 = CGRectGetMinX(v46);
    v47.origin.x = a1;
    v20 = v40;
    v47.origin.y = v40;
    v21 = v17;
    v22 = a1;
    v47.size.width = v21;
    v47.size.height = v18;
    v23 = v19 - CGRectGetMinX(v47);
    v25 = a6;
    v24 = v35;
    v26 = v33;
  }

  v41 = v23;
  v52.origin.x = v26;
  v52.origin.y = v25;
  v52.size.width = v24;
  v52.size.height = v43;
  MinY = CGRectGetMinY(v52);
  v53.origin.x = v22;
  v53.origin.y = v20;
  v53.size.width = v21;
  v53.size.height = v18;
  if (MinY >= CGRectGetMinY(v53))
  {
    v56.origin.x = v26;
    v56.origin.y = v25;
    v56.size.width = v24;
    v56.size.height = v43;
    MaxY = CGRectGetMaxY(v56);
    v57.origin.x = v22;
    v57.origin.y = v20;
    v57.size.width = v21;
    v57.size.height = v18;
    if (CGRectGetMaxY(v57) < MaxY)
    {
      v58.origin.x = v26;
      v58.origin.y = v25;
      v58.size.width = v24;
      v58.size.height = v43;
      CGRectGetMaxY(v58);
      v59.origin.x = v22;
      v59.origin.y = v20;
      v59.size.width = v21;
      v59.size.height = v18;
      CGRectGetMaxY(v59);
    }
  }

  else
  {
    v54.origin.x = x;
    v54.size.width = width;
    v54.origin.y = y;
    v54.size.height = rect;
    CGRectGetMinY(v54);
    v55.origin.x = v22;
    v55.origin.y = v20;
    v55.size.width = v21;
    v55.size.height = v18;
    CGRectGetMinY(v55);
  }

  return v41;
}

double sub_25463DF90(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_25463E004(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_25467F8A0();
  return sub_2546358B8;
}

unint64_t sub_25463E090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BCB8;
  if (!qword_27F60BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BCB8);
  }

  return result;
}

uint64_t sub_25463E0E4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BBC0, &qword_2546834D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v82 - v11;
  v13 = sub_25467FA00();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2546351B0(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_254635A34(v12);
  }

  v91 = v14;
  v18 = *(v14 + 32);
  v93 = v13;
  v19 = v18(v16, v12, v13);
  if (a2)
  {
    v20 = 10.0;
  }

  else
  {
    v20 = *&a1;
  }

  if (a4)
  {
    v21 = 10.0;
  }

  else
  {
    v21 = *&a3;
  }

  v22 = *v4;
  v23 = *(v4 + 8);
  v24 = **v4;
  v25 = *(v24 + 152);
  v26 = (v25)(v19);
  v28 = v27;
  v87 = v25;
  v29 = (v25)(v26);
  sub_25463E8C8(v4, &v101);
  v30 = UIEdgeInsetsInsetRect(v28, v29, v20, v21, 10.0, 10.0);
  v98 = v31;
  v99 = v30;
  v33 = v32;
  v35 = v34;
  type metadata accessor for HoverTypingStore(0);
  if (!swift_dynamicCastClass())
  {
    v101 = v22;
    v36 = *(v23 + 144);
    if (v36(v24, v23))
    {
      v101 = v22;
      v36(v24, v23);
    }
  }

  v97 = v33;
  v94 = v35;
  LOBYTE(v101) = 0;
  v100 = 0;
  sub_25467F9E0();
  v38 = v37;
  v40 = v39;
  sub_25463DC10();
  v45 = UIEdgeInsetsInsetRect(v41, v42, v43, v44, -15.0, -15.0);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  if (*(v4 + 64))
  {
    sub_254680300();
  }

  else
  {
    v52 = *(v4 + 48);
    v53 = *(v4 + 56);
  }

  v54 = v93;
  v89 = v49;
  v55 = v45 + v49 * v52;
  v56 = 1.0 - v52;
  v57 = v55 - v38 * (1.0 - v52);
  v96 = 1.0 - v53;
  v95 = v47 + v51 * v53;
  v88 = v40 * (1.0 - v53);
  v92 = v51;
  v58 = v95 - v88;
  v102.origin.y = v98;
  v102.origin.x = v99;
  v102.size.width = v97;
  v90 = v47;
  v59 = v94;
  v102.size.height = v94;
  v109.origin.x = v57;
  v109.origin.y = v95 - v88;
  v109.size.width = v38;
  v109.size.height = v40;
  v60 = CGRectContainsRect(v102, v109);
  v61 = v91;
  if (!v60)
  {
    v62 = sub_25463DD58(v99, v98, v97, v59, v57, v58, v38, v40);
    v83 = v63;
    v64 = -v62;
    v103.origin.x = v57;
    v103.origin.y = v58;
    v103.size.width = v38;
    v103.size.height = v40;
    v104 = CGRectOffset(v103, v64, 0.0);
    v110.origin.x = v45;
    v110.origin.y = v90;
    v65 = v89;
    v110.size.width = v89;
    v110.size.height = v92;
    v66 = CGRectIntersectsRect(v104, v110);
    v84 = v45;
    v67 = v45 + v65 * v56;
    if (v66)
    {
      v56 = 1.0 - v56;
      v55 = v67;
    }

    v57 = v55 - v38 * v56;
    v105.origin.y = v98;
    v105.origin.x = v99;
    v105.size.width = v97;
    v105.size.height = v59;
    v111.origin.x = v57;
    v111.origin.y = v58;
    v111.size.width = v38;
    v111.size.height = v40;
    v68 = CGRectContainsRect(v105, v111);
    v82 = v38 * v56;
    if (!v68)
    {
      v55 = v55 - sub_25463DD58(v99, v98, v97, v59, v55 - v38 * v56, v58, v38, v40);
      v57 = v55 - v38 * v56;
      v95 = v95 + 0.0;
      v58 = v95 - v88;
    }

    v69 = v96;
    v106.origin.x = v57;
    v106.origin.y = v58;
    v106.size.width = v38;
    v106.size.height = v40;
    v107 = CGRectOffset(v106, 0.0, -v83);
    v112.origin.x = v84;
    v70 = v90;
    v112.origin.y = v90;
    v112.size.width = v89;
    v112.size.height = v92;
    v71 = CGRectIntersectsRect(v107, v112);
    v86 = v56;
    v85 = v55;
    if (v71)
    {
      if (swift_dynamicCastClass())
      {
        v87();
      }

      else
      {
        v72 = v70 + v92 * v69;
      }

      v96 = 1.0 - v69;
      v88 = v40 * (1.0 - v69);
      v95 = v72;
      v73 = v72 - v88;
    }

    else
    {
      v73 = v58;
    }

    v74 = v98;
    v75 = v99;
    v108.origin.x = v99;
    v108.origin.y = v98;
    v76 = v97;
    v108.size.width = v97;
    v77 = v94;
    v108.size.height = v94;
    v113.origin.x = v57;
    v113.origin.y = v73;
    v113.size.width = v38;
    v113.size.height = v40;
    if (CGRectContainsRect(v108, v113))
    {
      v58 = v73;
    }

    else
    {
      sub_25463DD58(v75, v74, v76, v77, v57, v73, v38, v40);
      v57 = v85 + 0.0 - v82;
      v58 = v95 - v78 - v88;
    }
  }

  v79 = swift_dynamicCastClass();
  if (v79)
  {
    v80 = v79;
    v114.origin.x = v57;
    v114.origin.y = v58;
    v114.size.width = v38;
    v114.size.height = v40;
    if (!CGRectEqualToRect(*(v79 + 152), v114))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v82 - 6) = v80;
      *(&v82 - 5) = v57;
      *(&v82 - 4) = v58;
      *(&v82 - 3) = v38;
      *(&v82 - 2) = v40;
      v101 = v80;
      sub_254631FE4();
      sub_25467F770();

      sub_25463E900(v5);
      v54 = v93;
      goto LABEL_35;
    }

    v80[19] = v57;
    v80[20] = v58;
    v80[21] = v38;
    v80[22] = v40;
  }

  sub_25463E900(v5);
LABEL_35:
  LOBYTE(v101) = 0;
  v100 = 0;
  sub_25467F9F0();
  return (*(v61 + 8))(v16, v54);
}

uint64_t sub_25463E970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v27 = sub_25467FCE0();
  MEMORY[0x28223BE20](v27);
  v28 = sub_25467F930();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B748, &qword_254682CA8);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B750, &qword_254682CB0);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCC0, &qword_254683A78);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  *v16 = sub_25467FBF0();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCC8, &qword_254683A80);
  sub_25463EF24(a1, &v16[*(v17 + 44)]);
  v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCD0, &qword_254683A88) + 36)] = 0;
  swift_getKeyPath();
  *&v34 = a1;
  sub_25463F200(&qword_27F60B9E0, type metadata accessor for HoverTypingStore, &unk_254684A20);
  sub_25467F780();

  CGRectGetHeight(*(a1 + 152));
  sub_254680250();
  sub_25467F990();
  v18 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BCD8, &qword_254683AB8) + 36)];
  v19 = v35;
  *v18 = v34;
  *(v18 + 1) = v19;
  *(v18 + 2) = v36;
  sub_2546615AC();
  v20 = &v16[*(v14 + 36)];
  *v20 = v21;
  *(v20 + 1) = 0;
  sub_25467FD10();
  sub_25467F900();
  sub_25463F200(&qword_27F60B780, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_25463F200(&qword_27F60B788, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);

  v22 = v28;
  sub_254680210();

  (*(v3 + 8))(v5, v22);
  sub_25462C9F0(&qword_27F60B790, &qword_27F60B748, &qword_254682CA8, MEMORY[0x277CDFB18]);

  v23 = v29;
  sub_254680200();

  (*(v30 + 8))(v9, v23);
  sub_25467F940();
  sub_25463F24C();
  sub_25462C9F0(&qword_27F60B910, &qword_27F60B750, &qword_254682CB0, MEMORY[0x277CDF728]);
  v24 = v31;
  sub_25467FF50();
  (*(v32 + 8))(v13, v24);
  return sub_254626CC4(v16, &qword_27F60BCC0, &qword_254683A78);
}

uint64_t sub_25463EF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD18, &qword_254683AD0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_25467FC20();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  swift_getKeyPath();
  *&v20 = a1;
  sub_25463F200(&qword_27F60B9E0, type metadata accessor for HoverTypingStore, &unk_254684A20);
  sub_25467F780();

  v13 = *(a1 + OBJC_IVAR____TtC11HoverTextUI16HoverTypingStore__uiFont);
  CTFontGetAscent(v13);
  CTFontGetDescent(v13);
  CTFontGetLeading(v13);

  sub_254680250();
  sub_25467F990();
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD20, &qword_254683B00) + 36)];
  v15 = v21;
  *v14 = v20;
  *(v14 + 1) = v15;
  *(v14 + 2) = v22;
  swift_getKeyPath();
  v19[1] = a1;
  sub_25467F780();

  *&v10[*(v5 + 44)] = *(a1 + 104);
  sub_25463F448(v10, v8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD28, &unk_254683B30);
  sub_25463F448(v8, a2 + *(v16 + 48));
  v17 = a2 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;

  sub_254626CC4(v10, &qword_27F60BD18, &qword_254683AD0);
  return sub_254626CC4(v8, &qword_27F60BD18, &qword_254683AD0);
}

uint64_t sub_25463F200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25463F24C()
{
  result = qword_27F60BCE0;
  if (!qword_27F60BCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BCC0, &qword_254683A78);
    sub_25463F2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BCE0);
  }

  return result;
}

unint64_t sub_25463F2D8()
{
  result = qword_27F60BCE8;
  if (!qword_27F60BCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BCD8, &qword_254683AB8);
    sub_25463F364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BCE8);
  }

  return result;
}

unint64_t sub_25463F364()
{
  result = qword_27F60BCF0;
  if (!qword_27F60BCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BCD0, &qword_254683A88);
    sub_25462C9F0(&qword_27F60BCF8, &qword_27F60BD00, &qword_254683AC0, MEMORY[0x277CE1138]);
    sub_25462C9F0(&qword_27F60BD08, &qword_27F60BD10, &qword_254683AC8, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BCF0);
  }

  return result;
}

uint64_t sub_25463F448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD18, &qword_254683AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25463F4B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD40, &qword_254683C88);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v27 - v3;
  v5 = sub_254680760();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD48, &qword_254683C90);
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x28223BE20](v8);
  v37 = v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD50, &qword_254683C98);
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  MEMORY[0x28223BE20](v11);
  v30 = v27 - v13;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v14 = *(MEMORY[0x277D768C8] + 16);
  *(v0 + 32) = *MEMORY[0x277D768C8];
  *(v0 + 48) = v14;
  *(v0 + 64) = 1;
  *(v0 + 72) = sub_25464558C(MEMORY[0x277D84F90]);
  *(v0 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD58, &qword_254683CA0);
  swift_allocObject();
  v15 = sub_25467F860();
  *(v0 + 88) = v15;
  v39 = v15;

  sub_254680750();
  sub_25462C168();
  v16 = sub_254680780();
  v38 = v16;
  v17 = sub_254680740();
  v18 = *(v17 - 8);
  v28 = *(v18 + 56);
  v29 = v18 + 56;
  v28(v4, 1, 1, v17);
  sub_25462C9F0(&qword_27F60BD60, &qword_27F60BD58, &qword_254683CA0, MEMORY[0x277CBCE20]);
  v27[1] = sub_254640918();
  sub_25467F880();
  v19 = v4;
  sub_254626CC4(v4, &qword_27F60BD40, &qword_254683C88);

  (*(v31 + 8))(v7, v32);

  v20 = sub_254680780();
  v39 = v20;
  v28(v19, 1, 1, v17);
  sub_25462C9F0(&qword_27F60BD70, &qword_27F60BD48, &qword_254683C90, MEMORY[0x277CBCCF8]);
  v21 = v30;
  v22 = v33;
  v23 = v37;
  sub_25467F870();
  sub_254626CC4(v19, &qword_27F60BD40, &qword_254683C88);

  (*(v34 + 8))(v23, v22);
  swift_allocObject();
  swift_weakInit();
  sub_25462C9F0(&qword_27F60BD78, &qword_27F60BD50, &qword_254683C98, MEMORY[0x277CBCD60]);
  v24 = v35;
  v25 = sub_25467F890();

  (*(v36 + 8))(v21, v24);
  *(v1 + 80) = v25;

  return v1;
}

void sub_25463F9BC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25467F840();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v14)
  {
    v15 = v14;
    if (a1)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a2;
      *(v16 + 24) = a3;
      v17 = a1;
      swift_beginAccess();
      v18 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v3[9];
      v3[9] = 0x8000000000000000;
      sub_25467E378(sub_254640510, v16, v18, isUniquelyReferenced_nonNull_native);

      v3[9] = v28;
      swift_endAccess();
      CFNotificationCenterAddObserver(v15, v3, sub_2546402E0, v18, 0, HTSuspensionBehavior);
    }

    else
    {
      v24 = sub_25467F810();
      swift_beginAccess();
      (*(v8 + 16))(v13, v24, v7);
      v25 = sub_25467F830();
      v26 = sub_254680710();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_254615000, v25, v26, "Notification name nil", v27, 2u);
        MEMORY[0x259C155A0](v27, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    v20 = sub_25467F810();
    swift_beginAccess();
    (*(v8 + 16))(v11, v20, v7);
    v21 = sub_25467F830();
    v22 = sub_254680710();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_254615000, v21, v22, "Darwin Center unavailable", v23, 2u);
      MEMORY[0x259C155A0](v23, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }
}

__n128 sub_25463FD30(uint64_t a1, uint64_t a2, __n128 result, double a4)
{
  *(v4 + 16) = result.n128_u64[0];
  *(v4 + 24) = a4;
  *(v4 + 64) = a1;
  if ((*(a2 + 32) & 1) == 0)
  {
    result = *a2;
    v5 = *(a2 + 16);
    *(v4 + 32) = *a2;
    *(v4 + 48) = v5;
  }

  return result;
}

uint64_t sub_25463FD4C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v10[0] = Strong, type metadata accessor for HoverStoreCommon(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD88, &qword_254683CB0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v8 + 1))
    {
      sub_254640978(&v7, v10);
      v4 = v11;
      v5 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v5 + 296))(v2, v4, v5);
      return __swift_destroy_boxed_opaque_existential_0(v10);
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  return sub_254626CC4(&v7, &qword_27F60BD80, &qword_254683CA8);
}

void sub_25463FE54()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    v3 = v0[9];
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      CFNotificationCenterRemoveObserver(v2, v0, *(*(v3 + 48) + ((v9 << 9) | (8 * v10))), 0);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_25463FF6C()
{
  sub_25463FE54();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for HoverStoreCommon.Feature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverStoreCommon.Feature(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HoverStoreCommon.StyleItem(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HoverStoreCommon.StyleItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25464028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BD30;
  if (!qword_27F60BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BD30);
  }

  return result;
}

void sub_2546402E0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_25464053C(a2, a3);
}

unint64_t sub_25464037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BD38;
  if (!qword_27F60BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BD38);
  }

  return result;
}

uint64_t sub_2546403EC(unsigned __int8 a1)
{
  if (a1 <= 0xCu)
  {
    if (a1 - 10 < 3 || a1 - 3 < 2)
    {

      return sub_254680060();
    }

    if (a1 == 5)
    {
LABEL_14:
      v3 = [objc_opt_self() systemBackgroundColor];
      sub_25467FFA0();
      v4 = [objc_opt_self() sharedInstance];
      [v4 hoverTextBackgroundOpacity];

      v5 = sub_254680050();

      return v5;
    }

    goto LABEL_18;
  }

  switch(a1)
  {
    case 0xDu:
      goto LABEL_14;
    case 0x10u:

      return sub_25467FFD0();
    case 0x11u:

      return sub_25467FFE0();
    default:
LABEL_18:

      return MEMORY[0x282133480]();
  }
}

void sub_25464053C(uint64_t a1, void *a2)
{
  v4 = sub_25467F840();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v32 - v12;
  if (a1)
  {
    if (a2)
    {

      swift_beginAccess();
      v14 = *(a1 + 72);
      v15 = *(v14 + 16);
      v16 = a2;
      if (v15)
      {

        v17 = sub_25467D0C0(v16);
        if (v18)
        {
          v19 = *(*(v14 + 56) + 16 * v17);

          v32[0] = a1;
          v19(v32);

          return;
        }
      }

      v28 = sub_25467F810();
      swift_beginAccess();
      (*(v5 + 16))(v8, v28, v4);
      v29 = sub_25467F830();
      v30 = sub_254680710();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_254615000, v29, v30, "No handler found ", v31, 2u);
        MEMORY[0x259C155A0](v31, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v24 = sub_25467F810();
      swift_beginAccess();
      (*(v5 + 16))(v11, v24, v4);
      v25 = sub_25467F830();
      v26 = sub_254680710();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_254615000, v25, v26, "cfNotificationName for darwin callback handler not found", v27, 2u);
        MEMORY[0x259C155A0](v27, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    v20 = sub_25467F810();
    swift_beginAccess();
    (*(v5 + 16))(v13, v20, v4);
    v21 = sub_25467F830();
    v22 = sub_254680710();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_254615000, v21, v22, "Observer for darwin callback handler not found", v23, 2u);
      MEMORY[0x259C155A0](v23, -1, -1);
    }

    (*(v5 + 8))(v13, v4);
  }
}

unint64_t sub_254640918()
{
  result = qword_27F60BD68;
  if (!qword_27F60BD68)
  {
    sub_25462C168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BD68);
  }

  return result;
}

uint64_t sub_254640978(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2546409D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v5 = a3 & 1;
  *(a5 + 16) = v5;
  *(a5 + 24) = a4;
  sub_254643DEC(a1, a2, v5);
}

double HoverTextMarqueeingContentView.init(delay:rate:multiplier:startingPosition:marqueeBegan:marqueeCompleted:content:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13)
{
  *a9 = 0x4028000000000000;
  v24 = type metadata accessor for HoverTextMarqueeingContentView(0, a8, a13, a4);
  v25 = v24[16];
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418, &qword_254681E00);
  swift_storeEnumTagMultiPayload();
  v26 = (a9 + v24[17]);
  v27 = property wrapper backing initializer of HoverTextMarqueeingContentView.contentSize();
  *v26 = v28;
  v26[1] = v29;
  v26[2] = v27;
  v30 = (a9 + v24[18]);
  sub_254680120();
  *v30 = v33;
  v31 = v24[19];
  sub_254680120();
  result = *&v33;
  *(a9 + v31) = v33;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a12;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  return result;
}

double sub_254640B90()
{
  v0 = sub_25467FBE0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  sub_25467FBD0();
  sub_25467FB40();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  sub_25467FBD0();
  sub_25467FB40();
  v11 = v10;
  v9(v4, v0);
  return v8 + v11;
}

uint64_t sub_254640CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25467FBE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418, &qword_254681E00);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_25462CC8C(v2 + *(a1 + 64), &v15 - v10, &qword_27F60B418, &qword_254681E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_25467FAB0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_254680700();
    v14 = sub_25467FD50();
    sub_25467F820();

    sub_25467FBD0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_254640EDC(uint64_t a1)
{
  v2 = sub_25467FAB0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25467FB80();
}

uint64_t property wrapper backing initializer of HoverTextMarqueeingContentView.contentSize()
{
  type metadata accessor for CGSize(0);
  sub_254680120();
  return v1;
}

double sub_254641058(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800, &qword_254682D70);
  sub_254680130();
  return v2;
}

uint64_t HoverTextMarqueeingContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD90, &qword_254683CF8);
  v3 = MEMORY[0x28223BE20](v60);
  v59 = &v46 - v4;
  v5 = *(a1 - 8);
  v66 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(a1 + 16);
  sub_25467FAE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BD98, &qword_254683D00);
  v8 = sub_25467FAE0();
  type metadata accessor for CGSize(255);
  v10 = v9;
  v64 = *(a1 + 24);
  v81 = v64;
  v82 = MEMORY[0x277CDFC48];
  v11 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v13 = sub_25462C9F0(&qword_27F60BDA0, &qword_27F60BD98, &qword_254683D00, MEMORY[0x277CE0598]);
  v79 = WitnessTable;
  v80 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_254644268(&qword_27F60BDA8, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  v75 = v8;
  v76 = v10;
  v77 = v14;
  v78 = v15;
  v16 = v15;
  v58 = v15;
  swift_getOpaqueTypeMetadata2();
  v17 = sub_25467FAE0();
  v75 = v8;
  v76 = v10;
  v77 = v14;
  v78 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = MEMORY[0x277CDF748];
  v56 = v11;
  v18 = swift_getWitnessTable();
  v75 = v17;
  v76 = MEMORY[0x277D83B88];
  v77 = v18;
  v78 = MEMORY[0x277D83B98];
  sub_254680170();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDB0, &qword_254683D08);
  sub_25467FAE0();
  v19 = swift_getWitnessTable();
  v20 = sub_25462C9F0(&qword_27F60BDB8, &qword_27F60BDB0, &qword_254683D08, &protocol conformance descriptor for AnimationCompletionModifier<A>);
  v71 = v19;
  v72 = v20;
  v48 = swift_getWitnessTable();
  v50 = sub_25467FA60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDC0, &qword_254683D10);
  v52 = sub_25467FAE0();
  v55 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v62 = &v46 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDC8, &qword_254683D18);
  v54 = sub_25467FAE0();
  v57 = *(v54 - 8);
  v22 = MEMORY[0x28223BE20](v54);
  v51 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v53 = &v46 - v24;
  v49 = *(v5 + 16);
  v46 = v7;
  v49(v7, v63, a1);
  v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = swift_allocObject();
  v27 = v64;
  *(v26 + 16) = v65;
  *(v26 + 24) = v27;
  v47 = *(v5 + 32);
  v47(v26 + v25, v7, a1);
  v75 = sub_25467FA50();
  v76 = v28;
  v29 = v59;
  sub_254642A80(v59);
  v30 = swift_getWitnessTable();
  sub_254642D68();
  sub_25467FF30();
  sub_254626CC4(v29, &qword_27F60BD90, &qword_254683CF8);

  v31 = v46;
  v49(v46, v63, a1);
  v32 = swift_allocObject();
  v33 = v64;
  *(v32 + 16) = v65;
  *(v32 + 24) = v33;
  v47(v32 + v25, v31, a1);
  v34 = sub_25462C9F0(&qword_27F60BE08, &qword_27F60BDC0, &qword_254683D10, MEMORY[0x277CDF520]);
  v69 = v30;
  v70 = v34;
  v35 = v52;
  v36 = swift_getWitnessTable();
  sub_254642FE8(v36, v37, v38);
  v39 = v51;
  v40 = v62;
  sub_25467FF00();

  (*(v55 + 8))(v40, v35);
  v41 = sub_25462C9F0(&qword_27F60BE18, &qword_27F60BDC8, &qword_254683D18, MEMORY[0x277CE07C8]);
  v67 = v36;
  v68 = v41;
  v42 = v54;
  swift_getWitnessTable();
  v43 = v53;
  sub_254646298();
  v44 = *(v57 + 8);
  v44(v39, v42);
  sub_254646298();
  return (v44)(v43, v42);
}

uint64_t sub_2546418FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v124 = a2;
  v119 = a1;
  v115 = a5;
  v111 = type metadata accessor for HoverTextMarqueeingContentView(0, a3, a4, a4);
  v113 = *(v111 - 8);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v111);
  v121 = &v83 - v7;
  v118 = sub_25467F9C0();
  v123 = *(v118 - 8);
  v122 = *(v123 + 64);
  v8 = MEMORY[0x28223BE20](v118);
  v99 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(a3 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25467FAE0();
  v104 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v85 = &v83 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BD98, &qword_254683D00);
  v87 = v12;
  v14 = sub_25467FAE0();
  v110 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v120 = &v83 - v15;
  type metadata accessor for CGSize(255);
  v17 = v16;
  v135 = a4;
  v136 = MEMORY[0x277CDFC48];
  v117 = a4;
  v18 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v86 = WitnessTable;
  v20 = sub_25462C9F0(&qword_27F60BDA0, &qword_27F60BD98, &qword_254683D00, MEMORY[0x277CE0598]);
  v133 = WitnessTable;
  v134 = v20;
  v112 = v18;
  v21 = swift_getWitnessTable();
  v22 = sub_254644268(&qword_27F60BDA8, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  *&v130 = v14;
  *(&v130 + 1) = v17;
  v88 = v14;
  v91 = v17;
  v131 = v21;
  v132 = v22;
  v90 = v21;
  v89 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v94 = &v83 - v23;
  v24 = sub_25467FAE0();
  v105 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v95 = &v83 - v25;
  *&v130 = v14;
  *(&v130 + 1) = v17;
  v131 = v21;
  v132 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v128 = OpaqueTypeConformance2;
  v129 = MEMORY[0x277CDF748];
  v98 = v24;
  v97 = swift_getWitnessTable();
  *&v130 = v24;
  *(&v130 + 1) = MEMORY[0x277D83B88];
  v131 = v97;
  v132 = MEMORY[0x277D83B98];
  v102 = sub_254680170();
  v108 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v92 = &v83 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDB0, &qword_254683D08);
  v107 = sub_25467FAE0();
  v109 = *(v107 - 8);
  v27 = MEMORY[0x28223BE20](v107);
  v101 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v106 = &v83 - v30;
  (*(v124 + 72))(v29);
  v31 = v85;
  v116 = a3;
  sub_25467FF90();
  (*(v96 + 8))(v11, a3);
  sub_254680160();
  v32 = v123;
  v96 = *(v123 + 16);
  v33 = v99;
  v34 = v118;
  (v96)(v99, v119, v118);
  v35 = *(v32 + 80);
  v36 = swift_allocObject();
  v37 = *(v32 + 32);
  v123 = v32 + 32;
  v84 = v37;
  v37(v36 + ((v35 + 16) & ~v35), v33, v34);
  type metadata accessor for CGRect(0);
  sub_254642FE8(v38, v39, v40);
  v41 = v87;
  sub_25467FEE0();

  (*(v104 + 1))(v31, v41);
  v42 = v111;
  v43 = v124;
  v44 = v124 + *(v111 + 68);
  v45 = *(v44 + 16);
  v130 = *v44;
  v131 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800, &qword_254682D70);
  sub_254680130();
  v130 = v127;
  v46 = v113;
  v47 = *(v113 + 16);
  v87 = v113 + 16;
  v104 = v47;
  v48 = v121;
  v47(v121, v43, v42);
  v49 = v119;
  v50 = v118;
  (v96)(v33, v119, v118);
  v51 = *(v46 + 80);
  v52 = (v51 + 32) & ~v51;
  v114 += v52;
  v96 = v51 | 7;
  v53 = (v114 + v35) & ~v35;
  v54 = swift_allocObject();
  v55 = v117;
  *(v54 + 16) = v116;
  *(v54 + 24) = v55;
  v122 = *(v46 + 32);
  v56 = v42;
  v122(v54 + v52, v48, v42);
  v84(v54 + v53, v33, v50);
  v57 = v94;
  v58 = v88;
  v59 = v120;
  sub_25467FF70();

  (*(v110 + 8))(v59, v58);
  v60 = v124;
  sub_254642814(v49, v56);
  v61 = v95;
  v62 = OpaqueTypeMetadata2;
  sub_25467FF40();
  (*(v103 + 8))(v57, v62);
  v63 = v60;
  v130 = *(v60 + *(v56 + 76));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEE8, &qword_254683E50);
  sub_254680130();
  v64 = v92;
  v65 = v98;
  sub_25467FF20();
  (*(v105 + 8))(v61, v65);
  v66 = (v63 + *(v56 + 72));
  v67 = *v66;
  v68 = v66[1];
  *&v130 = v67;
  *(&v130 + 1) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0, &qword_254683E58);
  sub_254680130();
  v69 = v121;
  v104(v121, v63, v56);
  v70 = swift_allocObject();
  v71 = v117;
  *(v70 + 16) = v116;
  *(v70 + 24) = v71;
  v122(v70 + v52, v69, v56);
  v72 = v102;
  v73 = swift_getWitnessTable();
  v76 = sub_254644150(v73, v74, v75);
  v77 = v101;
  View.onAnimationCompletion<A>(for:completion:)(&v127, sub_2546440E0, v70, v72, MEMORY[0x277D85048], v73, v76, v101);

  (*(v108 + 8))(v64, v72);
  v78 = sub_25462C9F0(&qword_27F60BDB8, &qword_27F60BDB0, &qword_254683D08, &protocol conformance descriptor for AnimationCompletionModifier<A>);
  v125 = v73;
  v126 = v78;
  v79 = v107;
  swift_getWitnessTable();
  v80 = v106;
  sub_254646298();
  v81 = *(v109 + 8);
  v81(v77, v79);
  sub_254646298();
  return (v81)(v80, v79);
}

uint64_t sub_25464265C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for HoverTextMarqueeingContentView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_2546418FC(a1, v9, v6, v7, a3);
}

void sub_2546426F8(uint64_t a1, uint64_t a2, double a3)
{
  sub_25464396C(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0, &qword_254683E58);
  sub_254680140();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEE8, &qword_254683E50);
  sub_254680130();
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_254680140();

    sub_254643344(a3, a1, a2);
  }
}

void sub_254642814(uint64_t a1, uint64_t a2)
{
  v4 = sub_25467FAB0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = sub_254641058(a2);
  sub_25467F9A0();
  if (v12 + sub_254640B90() <= v11)
  {
    v13 = (v2 + *(a2 + 72));
    v14 = *v13;
    v15 = v13[1];
    v18[2] = v14;
    v18[3] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0, &qword_254683E58);
    sub_254680130();
    if (v18[1] == 0.0)
    {
      sub_254640CB4(a2, v10);
      (*(v5 + 104))(v8, *MEMORY[0x277CDFA88], v4);
      v16 = sub_25467FAA0();
      v17 = *(v5 + 8);
      v17(v8, v4);
      v17(v10, v4);
      if ((v16 & 1) == 0)
      {
        sub_25467F9A0();
      }
    }

    else
    {
      sub_254641058(a2);
      sub_25467F9A0();
    }
  }

  else
  {
    sub_25467FC60();
    if (sub_25467FC50() & 1) != 0 || (sub_25467FC70(), (sub_25467FC50()))
    {
      sub_25467F9A0();
      sub_254641058(a2);
    }
  }
}

double sub_254642A80@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_25467FBF0();
  v40 = 0;
  sub_254643080(&v27);
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v45 = v31;
  v46 = v32;
  v47 = v33;
  v48 = v34;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v53[8] = v35;
  v53[9] = v36;
  v53[10] = v37;
  v53[4] = v31;
  v53[5] = v32;
  v53[6] = v33;
  v53[7] = v34;
  v53[0] = v27;
  v53[1] = v28;
  v52 = v38;
  v54 = v38;
  v53[2] = v29;
  v53[3] = v30;
  sub_25462CC8C(&v41, v26, &qword_27F60BED8, &unk_254683E38);
  sub_254626CC4(v53, &qword_27F60BED8, &unk_254683E38);
  *(&v39[8] + 7) = v49;
  *(&v39[9] + 7) = v50;
  *(&v39[10] + 7) = v51;
  *(&v39[4] + 7) = v45;
  *(&v39[5] + 7) = v46;
  *(&v39[6] + 7) = v47;
  *(&v39[7] + 7) = v48;
  *(v39 + 7) = v41;
  *(&v39[1] + 7) = v42;
  *(&v39[2] + 7) = v43;
  *(&v39[11] + 7) = v52;
  *(&v39[3] + 7) = v44;
  v5 = v40;
  v6 = sub_25467FD60();
  sub_25467F8D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v26[0] = 0;
  KeyPath = swift_getKeyPath();
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BD90, &qword_254683CF8) + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BE00, &qword_254683D30) + 28);
  v18 = *MEMORY[0x277CDFA88];
  v19 = sub_25467FAB0();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = KeyPath;
  v20 = v39[9];
  *(a2 + 145) = v39[8];
  *(a2 + 161) = v20;
  *(a2 + 177) = v39[10];
  *(a2 + 192) = *(&v39[10] + 15);
  v21 = v39[5];
  *(a2 + 81) = v39[4];
  *(a2 + 97) = v21;
  v22 = v39[7];
  *(a2 + 113) = v39[6];
  *(a2 + 129) = v22;
  v23 = v39[1];
  *(a2 + 17) = v39[0];
  *(a2 + 33) = v23;
  result = *&v39[2];
  v25 = v39[3];
  *(a2 + 49) = v39[2];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 65) = v25;
  *(a2 + 208) = v6;
  *(a2 + 209) = v27;
  *(a2 + 212) = *(&v27 + 3);
  *(a2 + 216) = v8;
  *(a2 + 224) = v10;
  *(a2 + 232) = v12;
  *(a2 + 240) = v14;
  *(a2 + 248) = 0;
  return result;
}

unint64_t sub_254642D68()
{
  result = qword_27F60BDD0;
  if (!qword_27F60BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BD90, &qword_254683CF8);
    sub_254642E20();
    sub_25462C9F0(&qword_27F60BDF8, &qword_27F60BE00, &qword_254683D30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BDD0);
  }

  return result;
}

unint64_t sub_254642E20()
{
  result = qword_27F60BDD8;
  if (!qword_27F60BDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BDE0, &qword_254683D20);
    sub_25462C9F0(&qword_27F60BDE8, &qword_27F60BDF0, &qword_254683D28, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BDD8);
  }

  return result;
}

void sub_254642ED8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HoverTextMarqueeingContentView(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B800, &qword_254682D70);
  sub_254680140();
}

void sub_254642F5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for HoverTextMarqueeingContentView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_254642ED8(a1, v9, v6, v7);
}

unint64_t sub_254642FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BE10;
  if (!qword_27F60BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BE10);
  }

  return result;
}

uint64_t sub_254643080@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BAF0, &qword_254683200);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_254681DC0;
  *(v3 + 32) = sub_254680030();
  *(v3 + 40) = sub_254680020();
  MEMORY[0x259C140A0](v3);
  sub_254680320();
  sub_254680330();
  sub_25467FA80();
  sub_254680250();
  sub_25467F990();
  v4 = sub_254680020();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_254681DC0;
  *(v5 + 32) = sub_254680020();
  *(v5 + 40) = sub_254680030();
  MEMORY[0x259C140A0](v5);
  sub_254680320();
  sub_254680330();
  sub_25467FA80();
  sub_254680250();
  sub_25467F990();
  v19[2] = v15;
  v19[3] = v16;
  v19[4] = v17;
  v19[0] = v13;
  v19[1] = v14;
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v11;
  v21[0] = v7;
  v21[1] = v8;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
  *(a2 + 32) = v15;
  *(a2 + 128) = v9;
  *(a2 + 144) = v10;
  *(a2 + 160) = v11;
  *(a2 + 96) = v7;
  *(a2 + 112) = v8;
  v20 = v18;
  v22 = v12;
  *(a2 + 80) = v18;
  *(a2 + 88) = v4;
  *(a2 + 176) = v12;
  v23[0] = v7;
  v23[1] = v8;
  v24 = v12;
  v23[3] = v10;
  v23[4] = v11;
  v23[2] = v9;
  sub_25462CC8C(v19, v25, &qword_27F60BEE0, &qword_254683E48);

  sub_25462CC8C(v21, v25, &qword_27F60BEE0, &qword_254683E48);
  sub_254626CC4(v23, &qword_27F60BEE0, &qword_254683E48);

  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v26 = v18;
  v25[0] = v13;
  v25[1] = v14;
  return sub_254626CC4(v25, &qword_27F60BEE0, &qword_254683E48);
}

void sub_254643344(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_254680380();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2546803B0();
  v36 = *(v38 - 8);
  v7 = MEMORY[0x28223BE20](v38);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2546803D0();
  v34 = *(v40 - 8);
  v12 = MEMORY[0x28223BE20](v40);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = sub_254641058(a3);
  sub_25467F9A0();
  v33 = *(a3 + 16);
  if (v18 + sub_254640B90() <= v17)
  {
    sub_25467F9A0();
    sub_254641058(a3);
    sub_2546802A0();
    sub_254680280();
    v32 = v5;

    v19 = sub_254680290();
    v30 = v16;
    v20 = v19;

    sub_25462C168();
    v31 = sub_254680780();
    sub_2546803C0();
    sub_2546803E0();
    v34 = *(v34 + 8);
    (v34)(v14, v40);
    (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a3);
    v21 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v33;
    *(v22 + 32) = v20;
    (*(v9 + 32))(v22 + v21, v11, a3);
    aBlock[4] = sub_2546441A4;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2546274BC;
    aBlock[3] = &block_descriptor_3;
    v23 = _Block_copy(aBlock);

    v24 = v35;
    sub_254680390();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_254644268(&qword_27F60B7E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFF0, &qword_254682D60);
    sub_25462C9F0(&qword_27F60B7F0, &unk_27F60BFF0, &qword_254682D60, MEMORY[0x277D83970]);
    v25 = v37;
    v26 = v32;
    sub_254680890();
    v27 = v30;
    v28 = v31;
    MEMORY[0x259C145B0](v30, v24, v25, v23);
    _Block_release(v23);

    (*(v39 + 8))(v25, v26);
    (*(v36 + 8))(v24, v38);
    (v34)(v27, v40);
  }
}

double sub_2546438BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = a3;
    v6 = a2;
    v4();
    a2 = v6;
    a3 = v5;
  }

  type metadata accessor for HoverTextMarqueeingContentView(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0, &qword_254683E58);
  sub_254680140();
  return result;
}

double sub_25464396C(uint64_t a1)
{
  sub_2546802A0();
  sub_25467FA40();

  return result;
}

double sub_2546439EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HoverTextMarqueeingContentView(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BEF0, &qword_254683E58);
  sub_254680140();
  return result;
}

void sub_254643A70(uint64_t a1)
{
  sub_254643C28(319);
  if (v1 <= 0x3F)
  {
    sub_254643C8C();
    if (v2 <= 0x3F)
    {
      sub_254643CDC(319, &qword_27F60BEB8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_254643CDC(319, &qword_27F60BEC0, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_254643D40(319, &qword_27F60BEC8, MEMORY[0x277D85048]);
          if (v5 <= 0x3F)
          {
            sub_254643D40(319, &qword_27F60BED0, MEMORY[0x277D83B88]);
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

void sub_254643C28(uint64_t a1)
{
  if (!qword_27F60BEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F60BEB0, qword_254683DC0);
    v1 = sub_254680800();
    if (!v2)
    {
      atomic_store(v1, &qword_27F60BEA8);
    }
  }
}

unint64_t sub_254643C8C()
{
  result = qword_27F60BFA0;
  if (!qword_27F60BFA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F60BFA0);
  }

  return result;
}

void sub_254643CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_254643D40(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_254680150();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_254643DA4(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_254643DEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_254643DFC@<D0>(_OWORD *a2@<X8>)
{
  sub_25467F9C0();
  type metadata accessor for CGRect(0);
  sub_25467F9D0();
  result = *&v4;
  *a2 = v4;
  return result;
}

void sub_254643E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HoverTextMarqueeingContentView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(sub_25467F9C0() - 8);
  sub_2546426F8(v4 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), v5, *(v4 + v6 + 8));
}

uint64_t objectdestroyTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HoverTextMarqueeingContentView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = v4 + v7;
  if (*(v4 + v7 + 40))
  {
  }

  if (*(v9 + 56))
  {
  }

  v10 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B418, &qword_254681E00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25467FAB0();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, v7 + v8, v6 | 7);
}

uint64_t sub_2546440E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HoverTextMarqueeingContentView(0, *(v4 + 16), *(v4 + 24), a4);
  v7 = *(v5 - 8);
  result = v5 - 8;
  v8 = *(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 56);
  if (v8)
  {
    return v8();
  }

  return result;
}

unint64_t sub_254644150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F60BEF8;
  if (!qword_27F60BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60BEF8);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_254644268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double UIFont.hoverTextLineHeight.getter()
{
  Ascent = CTFontGetAscent(v0);
  v2 = Ascent + CTFontGetDescent(v0);
  return v2 + CTFontGetLeading(v0);
}

uint64_t sub_2546443A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25467FCB0();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25467FCC0();
}

uint64_t sub_25464449C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25467FCB0();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25467FCC0();
}

uint64_t View.if<A>(_:transform:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v39 = a1;
  v42 = a7;
  v43 = a6;
  v35[1] = a3;
  v36 = a2;
  v38 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v37 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v35 - v14;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v35 - v21;
  v41 = sub_25467FCD0();
  v23 = *(v41 - 8);
  v24 = MEMORY[0x28223BE20](v41);
  v26 = v35 - v25;
  if (v39(v24))
  {
    v36(v40);
    v27 = *(v17 + 16);
    v27(v22, v20, a5);
    v40 = a8;
    v28 = *(v17 + 8);
    v28(v20, a5);
    v27(v20, v22, a5);
    sub_2546443A4(v20, a5, a4, v42, v43);
    v28(v20, a5);
    v28(v22, a5);
    a8 = v40;
  }

  else
  {
    v29 = v38;
    v30 = *(v38 + 16);
    v30(v15, v40, a4);
    v31 = v37;
    v30(v37, v15, a4);
    sub_25464449C(v31, a5, a4, v42, v43);
    v32 = *(v29 + 8);
    v32(v31, a4);
    v32(v15, a4);
  }

  v44 = v42;
  v45 = v43;
  v33 = v41;
  swift_getWitnessTable();
  (*(v23 + 16))(a8, v26, v33);
  return (*(v23 + 8))(v26, v33);
}

uint64_t View.onAnimationCompletion<A>(for:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a6;
  v24 = a8;
  v25 = a4;
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AnimationCompletionModifier(0, v17, v18, v16);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v24 - v21;
  (*(v13 + 16))(v15, a1, a5);
  sub_254644C78(v15, a2, a3, a5, a7, v22);

  MEMORY[0x259C13DE0](v22, v25, v19, v26);
  return (*(v20 + 8))(v22, v19);
}

CGSize __swiftcall String.size(usingFont:)(UIFont usingFont)
{
  v2 = sub_254680440();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BF00, &unk_2546845F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254683E60;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_254626E64(0, &qword_27F60B708, 0x277D74300);
  *(inited + 40) = usingFont;
  v5 = v4;
  v6 = usingFont.super.isa;
  sub_254645900(inited);
  swift_setDeallocating();
  sub_254645A28(inited + 32);
  type metadata accessor for Key(0);
  sub_2546461EC(&qword_27F60B6A0, type metadata accessor for Key, &unk_25468262C);
  v7 = sub_2546803F0();

  [v2 sizeWithAttributes_];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

uint64_t sub_254644C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for AnimationCompletionModifier(0, a4, a5, a4);
  v12 = (a6 + *(v11 + 40));
  *v12 = a2;
  v12[1] = a3;
  v16 = *(a4 - 8);
  (*(v16 + 16))(a6, a1, a4);
  v13 = *(v16 + 32);
  v14 = a6 + *(v11 + 36);

  return v13(v14, a1, a4);
}

uint64_t sub_254644D70(uint64_t a1)
{
  v3 = sub_254680380();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2546803B0();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);
  result = sub_254680430();
  if (result)
  {
    sub_254626E64(0, &qword_27F60BFE0, 0x277D85C78);
    v22 = sub_254680780();
    (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v13;
    (*(v10 + 32))(v17 + v16, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    aBlock[4] = sub_254646164;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2546274BC;
    aBlock[3] = &block_descriptor_4;
    v18 = _Block_copy(aBlock);

    sub_254680390();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2546461EC(&qword_27F60B7E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFF0, &qword_254682D60);
    sub_254646234();
    v19 = v26;
    sub_254680890();
    v20 = v22;
    MEMORY[0x259C14620](0, v9, v5, v18);
    _Block_release(v18);

    (*(v25 + 8))(v5, v19);
    return (*(v23 + 8))(v9, v24);
  }

  return result;
}

uint64_t AnimationCompletionModifier.animatableData.setter(uint64_t a1, uint64_t a2)
{
  sub_254645CA8(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t *(*AnimationCompletionModifier.animatableData.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_2546451D4;
}

uint64_t *sub_2546451D4(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_254644D70(*result);
  }

  return result;
}

uint64_t AnimationCompletionModifier.body(content:)@<X0>(uint64_t a1@<X0>, char *a4@<X8>)
{
  swift_getWitnessTable();
  v6 = sub_25467FD00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  swift_getWitnessTable();
  v10 = *(v7 + 16);
  v10(v9, a1, v6);
  v10(a4, v9, v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_254645348(uint64_t a1, uint64_t a2)
{
  sub_254645CA8(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*sub_2546453B4(void *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = AnimationCompletionModifier.animatableData.modify(v4, a2);
  return sub_2546358B8;
}

uint64_t sub_254645430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212DFC8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_2546454C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212DFC0](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t sub_25464558C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFD0, &qword_254683FC0);
    v3 = sub_254680A40();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_25467D0C0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_254645694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BFC0, &qword_254683FB0);
    v3 = sub_254680A40();
    v4 = a1 + 32;

    while (1)
    {
      sub_25462CC8C(v4, v13, &qword_27F60BFC8, &qword_254683FB8);
      result = sub_25467D1EC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_254646154(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2546457D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60BFB0, &unk_254683FA0);
    v3 = sub_254680A40();
    v4 = a1 + 32;

    while (1)
    {
      sub_25462CC8C(v4, &v13, &qword_27F60B700, &qword_254683390);
      v5 = v13;
      v6 = v14;
      result = sub_25467D174(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_254646154(&v15, (v3[7] + 32 * result));
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

unint64_t sub_254645900(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C000, &qword_254683FC8);
    v3 = sub_254680A40();
    v4 = a1 + 32;

    while (1)
    {
      sub_25462CC8C(v4, &v11, qword_27F60BF10, &qword_254683E80);
      v5 = v11;
      result = sub_25467D230(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_254646154(&v12, (v3[7] + 32 * result));
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

uint64_t sub_254645A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F60BF10, &qword_254683E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254645A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60C060, &unk_254685970);
    v3 = sub_254680A40();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_25467D2C4(v6);
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

unint64_t sub_254645B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BFA8, &unk_254685960);
    v3 = sub_254680A40();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_25467D308(v5 | (v6 << 32), v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 4) = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v3[7] + 8 * result) = v9;
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

uint64_t sub_254645CA8(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_254644D70(a2);
}

unint64_t sub_254645D9C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_254643C8C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254645E24(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v20 = *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *sub_254645F78(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((v12 + v11) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v23 = ((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          *v23 = a2 - 1;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

_OWORD *sub_254646154(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2546461EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_254646234()
{
  result = qword_27F60B7F0;
  if (!qword_27F60B7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F60BFF0, &qword_254682D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F60B7F0);
  }

  return result;
}

void *sub_25464629C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2546809D0();

    if (v4)
    {
      type metadata accessor for HoverTextRootViewController(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_25467D2C4(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t HoverTextCoordinator.__allocating_init(withService:isHoverTextTyping:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  v4 = sub_254655028(a1, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t HoverTextCoordinator.init(withService:isHoverTextTyping:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_254655028(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_2546463E0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 32);

    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 hoverTextPreferredActivatorKey];

    *&v2[OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationKey] = v4;
  }
}

id sub_254646494()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
LABEL_5:
    v5 = v1;
    return v2;
  }

  result = [objc_opt_self() sharedDisplayManager];
  if (result)
  {
    v4 = *(v0 + 56);
    *(v0 + 56) = result;
    v2 = result;

    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t HoverTextCoordinator.startHoverText()()
{
  v1[65] = v0;
  v1[66] = type metadata accessor for HoverTextPresentationEvent(0);
  v1[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v2 = sub_25467F840();
  v1[70] = v2;
  v1[71] = *(v2 - 8);
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = sub_254680620();
  v1[77] = sub_254680610();
  v4 = sub_254680600();
  v1[78] = v4;
  v1[79] = v3;

  return MEMORY[0x2822009F8](sub_2546466A4, v4, v3);
}

uint64_t sub_2546466A4(uint64_t a1)
{
  v39 = v1;
  v2 = v1[75];
  v3 = v1[71];
  v4 = v1[70];
  v5 = sub_25467F810();
  v1[80] = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v1[81] = v6;
  v1[82] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);

  v7 = sub_25467F830();
  v8 = sub_2546806D0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[65];
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = *(v10 + 104);
    *(v11 + 8) = 1024;
    *(v11 + 10) = (*(v10 + 16) & 1) == 0;

    _os_log_impl(&dword_254615000, v7, v8, "Coordinator asked to start HoverText. isRunning=%{BOOL}d isHoverTextTyping=%{BOOL}d", v11, 0xEu);
    MEMORY[0x259C155A0](v11, -1, -1);
  }

  else
  {
  }

  v12 = v1[75];
  v13 = v1[71];
  v14 = v1[70];
  v15 = v1[65];
  v16 = *(v13 + 8);
  v1[83] = v16;
  v1[84] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v14);
  if (*(v15 + 104))
  {

LABEL_14:

    v36 = v1[1];

    return v36();
  }

  v1[85] = *(v1[65] + 24);
  AXRuntimeClient.enableAccessibility()();
  if (v17)
  {

    v18 = v1[81];
    v19 = v1[80];
    v20 = v1[72];
    v21 = v1[70];
    swift_beginAccess();
    v18(v20, v19, v21);
    v22 = v17;
    v23 = sub_25467F830();
    v24 = sub_2546806F0();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v1[83];
    v27 = v1[72];
    v28 = v1[70];
    if (v25)
    {
      v37 = v1[83];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_254680AC0();
      v33 = sub_25463CAC4(v31, v32, &v38);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_254615000, v23, v24, "Coordinator could not start HoverText: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C155A0](v30, -1, -1);
      MEMORY[0x259C155A0](v29, -1, -1);

      v37(v27, v28);
    }

    else
    {

      v26(v27, v28);
    }

    *(v1[65] + 104) = 1;
    goto LABEL_14;
  }

  v34 = swift_task_alloc();
  v1[86] = v34;
  *v34 = v1;
  v34[1] = sub_254646AD8;

  return sub_254648940(0, 1);
}

uint64_t sub_254646AD8(uint64_t a1, __n128 a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 696) = a1;
  *(v5 + 704) = v2;

  v6 = *(v4 + 632);
  v7 = *(v4 + 624);
  if (v2)
  {
    v8 = sub_2546486E4;
  }

  else
  {
    v8 = sub_254646C20;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_254646C20()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[74];
  v4 = v0[70];
  swift_beginAccess();
  v1(v3, v2, v4);
  v5 = sub_25467F830();
  v6 = sub_2546806D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_254615000, v5, v6, "Coordinator did show HoverText UI on main screen", v7, 2u);
    MEMORY[0x259C155A0](v7, -1, -1);
  }

  v8 = v0[87];
  v9 = v0[83];
  v10 = v0[74];
  v11 = v0[70];
  v12 = v0[65];

  v9(v10, v11);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = (v8 + direct field offset for HoverTextRootViewController.showStatusAlertForActivationLockDidChange);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  *v14 = sub_2546552D0;
  v14[1] = v13;

  sub_254619940(v15, v16);

  HoverTextRootViewController.startHoverText()();
  if (*(v12 + 16))
  {
    v17 = &selRef_hoverTextShowedBanner;
    v18 = &selRef_setHoverTextShowedBanner_;
    v19 = 0x6C62616E652E7468;
    v20 = 0xEA00000000006465;
  }

  else
  {
    v17 = &selRef_hoverTextTypingShowedBanner;
    v18 = &selRef_setHoverTextTypingShowedBanner_;
    v19 = 0x62616E652E747468;
    v20 = 0xEB0000000064656CLL;
  }

  sub_254649098(v17, v19, v20, v18);
  v21 = v0[87];
  v22 = v0[65];
  v23 = *(v22 + 80);
  *(v22 + 80) = v21;
  v24 = v21;

  swift_beginAccess();
  v25 = *(v22 + 72);
  v0[89] = v25;
  if (v25 >> 62)
  {
    v26 = sub_2546809C0();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[90] = v26;

  v27 = swift_beginAccess();
  v29 = v0[89];
  if (v26)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x259C147A0](0);
    }

    else
    {
      if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v27, v29, v28);
      }

      v30 = *(v29 + 32);
    }

    v0[91] = v30;
    v0[92] = 1;
    v31 = v30;
    v0[93] = sub_254680610();
    v32 = sub_254680600();
    v28 = v33;
    v0[94] = v32;
    v0[95] = v33;
    v27 = sub_2546475CC;
    v29 = v32;

    return MEMORY[0x2822009F8](v27, v29, v28);
  }

  v34 = v0[65];

  v35 = *(v34 + 16);
  v36 = v0[85];
  v37 = v0[65];
  v38 = sub_2546555C4;
  v39 = sub_25465558C;
  if (v35)
  {
    v40 = sub_254655584;
    v106 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_elementVisualsUpdated;
    v104 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveAnnouncement;
    v41 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_focusedApplicationsDidChange;
    v42 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_nativeFocusItemDidChange;
    v105 = sub_2546555CC;
  }

  else
  {
    v43 = (v36 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged);
    swift_beginAccess();
    v44 = *v43;
    v45 = v43[1];
    *v43 = sub_2546553A0;
    v43[1] = v37;

    sub_254619940(v44, v45);
    v46 = (v36 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillHide);
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    *v46 = sub_2546553A8;
    v46[1] = v37;

    sub_254619940(v47, v48);
    v105 = sub_254655458;
    v106 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_updateTypingDisplayMode;
    v38 = sub_254655450;
    v104 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_loupeStateChanged;
    v41 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillChangeFrame;
    v39 = sub_254655418;
    v40 = sub_2546553E0;
    v42 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_currentInputModeDidChange;
  }

  v49 = v36;
  v50 = (v36 + *v42);
  swift_beginAccess();
  v52 = *v50;
  v51 = v50[1];
  *v50 = v40;
  v50[1] = v37;

  sub_254619940(v52, v51);
  v53 = (v49 + *v41);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  *v53 = v39;
  v53[1] = v37;

  sub_254619940(v54, v55);
  v56 = (v49 + *v104);
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  *v56 = v38;
  v56[1] = v37;

  sub_254619940(v57, v58);
  v59 = (v49 + *v106);
  swift_beginAccess();
  v60 = *v59;
  v61 = v59[1];
  *v59 = v105;
  v59[1] = v37;

  sub_254619940(v60, v61);
  v62 = v0[65];
  v63 = (v0[85] + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveNotification);
  swift_beginAccess();
  v64 = *v63;
  v65 = v63[1];
  *v63 = sub_25464977C;
  v63[1] = 0;
  sub_254619940(v64, v65);
  v66 = *(v62 + 16);
  v67 = *(v62 + 32);
  v68 = v0[65];
  v69 = sub_254655490;
  if (v66 == 1)
  {
    v70 = (v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange);
    v71 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange);
    v72 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange + 8);
    *v70 = sub_254655498;
    v70[1] = v68;

    sub_254619940(v71, v72);
    v73 = (v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange);
    v74 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange);
    v75 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange + 8);
    *v73 = sub_2546554A0;
    v73[1] = v68;

    sub_254619940(v74, v75);
    v76 = (v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved);
    v77 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved);
    v78 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved + 8);
    *v76 = sub_2546554A8;
    v76[1] = v68;

    sub_254619940(v77, v78);
    v79 = (v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents);
    v80 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents);
    v81 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents + 8);
    *v79 = sub_2546554B0;
    v79[1] = v68;

    sub_254619940(v80, v81);
    v82 = (v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange);
    v83 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange);
    v84 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange + 8);
    *v82 = sub_2546554B8;
    v82[1] = v68;

    sub_254619940(v83, v84);
    v85 = (v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred);
    v86 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred);
    v87 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred + 8);
    *v85 = sub_2546554D4;
    v85[1] = v68;

    sub_254619940(v86, v87);
    v88 = (v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed);
    v89 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed);
    v90 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed + 8);
    *v88 = sub_25465550C;
    v88[1] = v68;

    sub_254619940(v89, v90);
    v91 = (v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased);
    v92 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased);
    v93 = *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased + 8);
    *v91 = sub_254655544;
    v91[1] = v68;

    sub_254619940(v92, v93);
    v69 = sub_25465557C;
    v94 = &OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_stylusMoved;
  }

  else
  {
    v94 = &OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_handleTapGesture;
  }

  v95 = (v67 + *v94);
  v96 = *v95;
  v97 = v95[1];
  *v95 = v69;
  v95[1] = v68;

  sub_254619940(v96, v97);
  v98 = v0[65];
  v99 = [objc_opt_self() sharedInstance];
  v100 = [v99 hoverTextPreferredActivatorKey];

  *(v67 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationKey) = v100;
  sub_254679FC0();
  v101 = v0[87];
  if (*(v98 + 16) == 1)
  {
    sub_25464A344();
  }

  *(v0[65] + 104) = 1;

  v102 = v0[1];

  return v102();
}

uint64_t sub_2546475CC()
{
  v1 = v0[91];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[65];
  v5 = sub_254680640();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 1, 1, v5);

  v7 = v1;
  v8 = sub_254680610();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = 0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v4;
  sub_25462CC8C(v2, v3, &unk_27F60C010, &qword_254684C30);
  LODWORD(v3) = (*(v6 + 48))(v3, 1, v5);

  v11 = v0[68];
  if (v3 == 1)
  {
    sub_254626CC4(v0[68], &unk_27F60C010, &qword_254684C30);
  }

  else
  {
    sub_254680630();
    (*(v6 + 8))(v11, v5);
  }

  v12 = *(v9 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v13 = sub_254680600();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_254626CC4(v0[69], &unk_27F60C010, &qword_254684C30);
  v16 = type metadata accessor for HoverTextRootViewController(0);
  if (v15 | v13)
  {
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = v13;
    v0[5] = v15;
  }

  v17 = swift_task_create();
  v0[96] = v17;
  v18 = swift_task_alloc();
  v0[97] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B6C0, &qword_254682990);
  v0[98] = v19;
  *v18 = v0;
  v18[1] = sub_2546478A0;
  v20 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 60, v17, v16, v19, v20);
}

uint64_t sub_2546478A0(__n128 a1)
{
  v2 = *v1;

  v3 = *(v2 + 760);
  v4 = *(v2 + 752);

  return MEMORY[0x2822009F8](sub_2546479C0, v4, v3);
}

uint64_t sub_2546479C0()
{

  v1 = *(v0 + 480);
  *(v0 + 792) = v1;
  if (*(v0 + 488))
  {
    v2 = *(v0 + 728);

    *(v0 + 504) = v1;
    swift_willThrowTypedImpl();

    v3 = *(v0 + 632);
    v4 = *(v0 + 624);
    v5 = sub_254648478;
  }

  else
  {

    v3 = *(v0 + 632);
    v4 = *(v0 + 624);
    v5 = sub_254647AA4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_254647AA4()
{
  v103 = *(v0 + 648);
  v102 = *(v0 + 640);
  v1 = *(v0 + 584);
  v2 = *(v0 + 560);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 792) + qword_27F60BB60;
  v6 = *(v5 + 8);
  v7 = **v5;
  *(v0 + 512) = *v5;
  *(v3 + 66) = 12;

  sub_25467F500();
  v8 = (v3 + v4[8]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v3 + v4[9]);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = v3 + v4[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v3 + v4[11]);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + v4[12]) = 0;
  *(v3 + v4[13]) = 0;
  v12 = (v3 + v4[14]);
  *v12 = 0;
  v12[1] = 0;
  *v3 = 2;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 64) = 448;
  (*(v6 + 304))(v3, v7, v6);
  sub_254655F04(v3, type metadata accessor for HoverTextPresentationEvent);

  v103(v1, v102, v2);

  v13 = sub_25467F830();
  v14 = sub_2546806D0();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 792);
  v17 = *(v0 + 728);
  v18 = *(v0 + 520);
  if (v15)
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = *(v18 + 104);

    _os_log_impl(&dword_254615000, v13, v14, "Coordinator did show HoverText UI on external screen (isRunning=%{BOOL}d)", v19, 8u);
    MEMORY[0x259C155A0](v19, -1, -1);

    sub_2546187D8(v16);
  }

  else
  {

    sub_2546187D8(v16);

    v17 = v13;
  }

  v20 = *(v0 + 736);
  v21 = *(v0 + 720);
  v22 = (*(v0 + 664))(*(v0 + 584), *(v0 + 560));
  if (v20 != v21)
  {
    v33 = *(v0 + 736);
    v34 = *(v0 + 712);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x259C147A0](*(v0 + 736));
    }

    else
    {
      if (v33 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v22 = *(v34 + 8 * v33 + 32);
    }

    *(v0 + 728) = v22;
    *(v0 + 736) = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
      v35 = v22;
      *(v0 + 744) = sub_254680610();
      v36 = sub_254680600();
      v23 = v37;
      *(v0 + 752) = v36;
      *(v0 + 760) = v37;
      v22 = sub_2546475CC;
      v34 = v36;

      return MEMORY[0x2822009F8](v22, v34, v23);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return MEMORY[0x2822009F8](v22, v34, v23);
  }

  v24 = *(v0 + 520);

  v25 = *(v24 + 16);
  v26 = *(v0 + 680);
  v27 = *(v0 + 520);
  v28 = sub_2546555C4;
  v29 = sub_25465558C;
  if (v25)
  {
    v30 = sub_254655584;
    v101 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_elementVisualsUpdated;
    v99 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveAnnouncement;
    v31 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_focusedApplicationsDidChange;
    v32 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_nativeFocusItemDidChange;
    v100 = sub_2546555CC;
  }

  else
  {
    v38 = (v26 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_valueChanged);
    swift_beginAccess();
    v39 = *v38;
    v40 = v38[1];
    *v38 = sub_2546553A0;
    v38[1] = v27;

    sub_254619940(v39, v40);
    v41 = (v26 + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillHide);
    swift_beginAccess();
    v42 = *v41;
    v43 = v41[1];
    *v41 = sub_2546553A8;
    v41[1] = v27;

    sub_254619940(v42, v43);
    v100 = sub_254655458;
    v101 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_updateTypingDisplayMode;
    v28 = sub_254655450;
    v99 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_loupeStateChanged;
    v31 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_keyboardWillChangeFrame;
    v29 = sub_254655418;
    v30 = sub_2546553E0;
    v32 = &OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_currentInputModeDidChange;
  }

  v44 = v26;
  v45 = (v26 + *v32);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  *v45 = v30;
  v45[1] = v27;

  sub_254619940(v47, v46);
  v48 = (v44 + *v31);
  swift_beginAccess();
  v49 = *v48;
  v50 = v48[1];
  *v48 = v29;
  v48[1] = v27;

  sub_254619940(v49, v50);
  v51 = (v44 + *v99);
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  *v51 = v28;
  v51[1] = v27;

  sub_254619940(v52, v53);
  v54 = (v44 + *v101);
  swift_beginAccess();
  v55 = *v54;
  v56 = v54[1];
  *v54 = v100;
  v54[1] = v27;

  sub_254619940(v55, v56);
  v57 = *(v0 + 520);
  v58 = (*(v0 + 680) + OBJC_IVAR____TtC11HoverTextUI15AXRuntimeClient_didReceiveNotification);
  swift_beginAccess();
  v59 = *v58;
  v60 = v58[1];
  *v58 = sub_25464977C;
  v58[1] = 0;
  sub_254619940(v59, v60);
  v61 = *(v57 + 16);
  v62 = *(v57 + 32);
  v63 = *(v0 + 520);
  v64 = sub_254655490;
  if (v61 == 1)
  {
    v65 = (v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange);
    v66 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange);
    v67 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtPointerDidChange + 8);
    *v65 = sub_254655498;
    v65[1] = v63;

    sub_254619940(v66, v67);
    v68 = (v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange);
    v69 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange);
    v70 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_elementAtHandDidChange + 8);
    *v68 = sub_2546554A0;
    v68[1] = v63;

    sub_254619940(v69, v70);
    v71 = (v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved);
    v72 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved);
    v73 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_pointerMoved + 8);
    *v71 = sub_2546554A8;
    v71[1] = v63;

    sub_254619940(v72, v73);
    v74 = (v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents);
    v75 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents);
    v76 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_consumeHandEvents + 8);
    *v74 = sub_2546554B0;
    v74[1] = v63;

    sub_254619940(v75, v76);
    v77 = (v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange);
    v78 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange);
    v79 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_azimuthDidChange + 8);
    *v77 = sub_2546554B8;
    v77[1] = v63;

    sub_254619940(v78, v79);
    v80 = (v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred);
    v81 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred);
    v82 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationLockSequenceOccurred + 8);
    *v80 = sub_2546554D4;
    v80[1] = v63;

    sub_254619940(v81, v82);
    v83 = (v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed);
    v84 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed);
    v85 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonPressed + 8);
    *v83 = sub_25465550C;
    v83[1] = v63;

    sub_254619940(v84, v85);
    v86 = (v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased);
    v87 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased);
    v88 = *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationButtonReleased + 8);
    *v86 = sub_254655544;
    v86[1] = v63;

    sub_254619940(v87, v88);
    v64 = sub_25465557C;
    v89 = &OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_stylusMoved;
  }

  else
  {
    v89 = &OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_handleTapGesture;
  }

  v90 = (v62 + *v89);
  v91 = *v90;
  v92 = v90[1];
  *v90 = v64;
  v90[1] = v63;

  sub_254619940(v91, v92);
  v93 = *(v0 + 520);
  v94 = [objc_opt_self() sharedInstance];
  v95 = [v94 hoverTextPreferredActivatorKey];

  *(v62 + OBJC_IVAR____TtC11HoverTextUI21HoverTextEventHandler_activationKey) = v95;
  sub_254679FC0();
  v96 = *(v0 + 696);
  if (*(v93 + 16) == 1)
  {
    sub_25464A344();
  }

  *(*(v0 + 520) + 104) = 1;

  v97 = *(v0 + 8);

  return v97();
}

uint64_t sub_254648478()
{
  v25 = v0;
  v1 = v0[91];
  v2 = v0[87];

  v3 = v0[99];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[72];
  v7 = v0[70];
  swift_beginAccess();
  v4(v6, v5, v7);
  v8 = v3;
  v9 = sub_25467F830();
  v10 = sub_2546806F0();

  if (os_log_type_enabled(v9, v10))
  {
    v23 = v0[83];
    v11 = v0[72];
    v12 = v0[70];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = sub_254680AC0();
    v17 = sub_25463CAC4(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_254615000, v9, v10, "Coordinator could not start HoverText: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x259C155A0](v14, -1, -1);
    MEMORY[0x259C155A0](v13, -1, -1);

    v23(v11, v12);
  }

  else
  {
    v18 = v0[83];
    v19 = v0[72];
    v20 = v0[70];

    v18(v19, v20);
  }

  *(v0[65] + 104) = 1;

  v21 = v0[1];

  return v21();
}

uint64_t sub_2546486E4()
{
  v23 = v0;

  v1 = v0[88];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[72];
  v5 = v0[70];
  swift_beginAccess();
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_25467F830();
  v8 = sub_2546806F0();

  if (os_log_type_enabled(v7, v8))
  {
    v21 = v0[83];
    v9 = v0[72];
    v10 = v0[70];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_254680AC0();
    v15 = sub_25463CAC4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_254615000, v7, v8, "Coordinator could not start HoverText: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C155A0](v12, -1, -1);
    MEMORY[0x259C155A0](v11, -1, -1);

    v21(v9, v10);
  }

  else
  {
    v16 = v0[83];
    v17 = v0[72];
    v18 = v0[70];

    v16(v17, v18);
  }

  *(v0[65] + 104) = 1;

  v19 = v0[1];

  return v19();
}

uint64_t sub_254648940(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = sub_254680620();
  *(v3 + 72) = sub_254680610();
  v5 = sub_254680600();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x2822009F8](sub_254648A18, v5, v4);
}

uint64_t sub_254648A18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 25);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = sub_254680640();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = v4;

  v7 = sub_254680610();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  v10 = sub_25464DF34(0, 0, v1, &unk_254684290, v8);
  *(v0 + 96) = v10;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v12 = type metadata accessor for HoverTextRootViewController(0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60B6C0, &qword_254682990);
  *(v0 + 112) = v13;
  *v11 = v0;
  v11[1] = sub_254648BB0;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 16, v10, v12, v13, v14);
}

uint64_t sub_254648BB0(__n128 a1)
{
  v2 = *v1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_254648CD0, v4, v3);
}

uint64_t sub_254648CD0()
{

  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    *(v0 + 32) = v1;
    swift_willThrowTypedImpl();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {

    v4 = *(v0 + 8);

    return v4(v1);
  }
}

double sub_254648DC8(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    sub_254648E50();
  }

  else
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    sub_254648F74();
  }

  return result;
}

uint64_t sub_254648E50()
{
  sub_2546547A0();
  v1 = sub_254646494();
  v2 = sub_254680440();
  v3 = HTUILocString(v2);

  if (!v3)
  {
    sub_254680470();
    v3 = sub_254680440();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [v1 showAlertWithText:v3 subtitleText:0 iconImage:0 type:0 priority:20 duration:result forService:1.0];

    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = sub_254680470();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v0 + 88) = v6;
    *(v0 + 96) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_254648F74()
{
  sub_2546547A0();
  v1 = sub_254646494();
  v2 = sub_254680440();
  v3 = HTUILocString(v2);

  if (!v3)
  {
    sub_254680470();
    v3 = sub_254680440();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = [v1 showAlertWithText:v3 subtitleText:0 iconImage:0 type:0 priority:20 duration:result forService:1.0];

    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = sub_254680470();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v0 + 88) = v6;
    *(v0 + 96) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_254649098(SEL *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = objc_opt_self();
  v8 = [v7 sharedInstance];
  LOBYTE(a1) = [v8 *a1];

  if ((a1 & 1) == 0)
  {
    sub_2546547A0();
    v9 = sub_254646494();
    v10 = sub_254680440();
    v11 = HTUILocString(v10);

    if (!v11)
    {
      sub_254680470();
      v11 = sub_254680440();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = [v9 showAlertWithText:v11 subtitleText:0 iconImage:0 type:0 priority:20 duration:Strong forService:2.0];

      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = sub_254680470();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      *(v4 + 88) = v14;
      *(v4 + 96) = v16;

      v17 = [v7 sharedInstance];
      [v17 *a4];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_254649250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_254680640();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_254680620();
  sub_25463D42C(a1, v14);

  v8 = sub_254680610();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  v11 = *(a1 + 16);
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  *(v9 + 64) = *(a1 + 32);
  *(v9 + 80) = *(a1 + 48);
  *(v9 + 88) = a2;
  sub_25464CB40(0, 0, v6, &unk_254684140, v9);

  return result;
}

double sub_2546493A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_254680640();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_254680620();

  v10 = sub_254680610();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  sub_25464CB40(0, 0, v8, &unk_254684120, v11);

  return result;
}

double sub_2546494E0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_254680640();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_254680620();
  v16 = a4;

  v17 = sub_254680610();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  v20 = *(a5 + 16);
  *(v18 + 64) = *a5;
  *(v18 + 80) = v20;
  *(v18 + 96) = *(a5 + 32);
  *(v18 + 104) = a6;
  sub_25464CB40(0, 0, v14, &unk_254684280, v18);

  return result;
}

double sub_254649650(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_254680640();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_254680620();

  v8 = sub_254680610();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  sub_25464CB40(0, 0, v6, &unk_254684240, v9);

  return result;
}

uint64_t sub_25464977C(int a1, uint64_t a2)
{
  v4 = sub_25467F840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25467F810();
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_25462CC8C(a2, v23, &qword_27F60BC70, &qword_254684220);
  v9 = sub_25467F830();
  v10 = sub_2546806E0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v4;
    v13 = v12;
    v22 = v12;
    *v11 = 67109378;
    *(v11 + 4) = a1;
    *(v11 + 8) = 2080;
    sub_25462CC8C(v23, v21, &qword_27F60BC70, &qword_254684220);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F60BC70, &qword_254684220);
    v14 = sub_254680480();
    v16 = v15;
    sub_254626CC4(v23, &qword_27F60BC70, &qword_254684220);
    v17 = sub_25463CAC4(v14, v16, &v22);

    *(v11 + 10) = v17;
    _os_log_impl(&dword_254615000, v9, v10, "Coordinator got AX notification: %d. data: %s", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x259C155A0](v13, -1, -1);
    MEMORY[0x259C155A0](v11, -1, -1);

    return (*(v5 + 8))(v7, v20);
  }

  else
  {

    sub_254626CC4(v23, &qword_27F60BC70, &qword_254684220);
    return (*(v5 + 8))(v7, v4);
  }
}

void sub_2546499FC(void *a1, char a2, uint64_t a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_254680640();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_254680620();
  v14 = a1;

  v15 = sub_254680610();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v14;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a3;
  *(v16 + 64) = a2;
  sub_25464CB40(0, 0, v12, &unk_254684208, v16);
}

void sub_254649B58(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_254680640();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_254680620();
  v12 = a1;

  v13 = sub_254680610();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = a1;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a2;
  sub_25464CB40(0, 0, v10, &unk_2546841F8, v14);
}

void sub_254649C9C(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_254680640();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_254680620();

  v10 = sub_254680610();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a1;
  sub_25464CB40(0, 0, v8, &unk_2546841E8, v11);
}

uint64_t sub_254649DD4(char a1, uint64_t a2, double a3, double a4)
{
  sub_254626E64(0, &qword_27F60BFE0, 0x277D85C78);
  v4 = sub_254680780();
  sub_254680790();

  return v6;
}

double sub_254649E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_254680640();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_254680620();

  v8 = sub_254680610();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  *(v9 + 44) = BYTE4(a1) & 1;
  sub_25464CE40(0, 0, v6, &unk_254684190, v9);

  return result;
}

double sub_254649FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_254680640();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_254680620();

  v9 = sub_254680610();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  sub_25464CB40(0, 0, v7, a3, v10);

  return result;
}

void sub_25464A0D0(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_254680640();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_254680620();

  v10 = sub_254680610();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  sub_25464CB40(0, 0, v8, &unk_254684150, v11);
}

double sub_25464A208(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F60C010, &qword_254684C30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_254680640();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_254680620();

  v8 = a1;
  v9 = sub_254680610();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = v8;
  sub_25464CB40(0, 0, v6, &unk_254684218, v10);

  return result;
}

uint64_t sub_25464A344()
{
  v1 = v0;
  v2 = sub_25467F840();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v0 + 40) <= 0)
  {
    sub_254626E64(0, &qword_27F60BFE0, 0x277D85C78);
    v7 = sub_254680780();
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_254656BB4;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25465474C;
    aBlock[3] = &block_descriptor_114;
    v9 = _Block_copy(aBlock);

    swift_beginAccess();
    v10 = notify_register_dispatch("com.apple.springboard.lockstate", (v1 + 40), v7, v9);
    swift_endAccess();
    _Block_release(v9);

    v11 = sub_25467F810();
    swift_beginAccess();
    (*(v3 + 16))(v5, v11, v2);
    v12 = sub_25467F830();
    v13 = sub_2546806D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v10;
      _os_log_impl(&dword_254615000, v12, v13, "registerForScreenEvents result=%u", v14, 8u);
      MEMORY[0x259C155A0](v14, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}