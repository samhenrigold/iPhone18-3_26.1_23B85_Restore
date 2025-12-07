id sub_22BE65AC8(uint64_t a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277D1F4C0]) init];
  sub_22C273AA4();

  v16[1] = 0x800000022C2D2B30;
  MEMORY[0x2318AB8D0](a1, a2);
  MEMORY[0x2318AB8D0](10535, 0xE200000000000000);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_22BE45D84(0, &qword_28106DAE8, 0x277CCABB0);
  v6 = sub_22C273804();
  v7 = objc_allocWithZone(MEMORY[0x277D1F440]);
  v8 = sub_22BE29454();
  v11 = sub_22BE6605C(v8, v9, 0xD000000000000011, v10, v5, v6);
  v16[0] = 0;
  v12 = [v4 executeKGQ:v11 error:v16];

  if (v12)
  {
    v13 = v16[0];
  }

  else
  {
    v14 = v16[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  return v12;
}

void sub_22BE65CA8()
{
  sub_22BE3D0F0();
  v1 = v0;
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  sub_22BE698CC(v3, v1, v4);
  v18 = v4;
  v5 = sub_22C273774();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 40);
    v8 = MEMORY[0x277D84F90];
    while (*v7 >> 14 >= *(v7 - 1) >> 14)
    {
      v9 = sub_22C2732E4();
      v10 = MEMORY[0x2318AB7C0](v9);
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE1B8F8();
        sub_22BE66214();
        v8 = v16;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22BE1AAE4(v13);
        sub_22BE66214();
        v8 = v17;
      }

      v7 += 2;
      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_22BE25A18();
  }
}

uint64_t GlobalEntityMatcherShim.deinit()
{
  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport23GlobalEntityMatcherShim_matcherType;
  sub_22C270F94();
  sub_22BE18000();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_22BE65EB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE65F5C;

  return sub_22BE63980(a1, a2);
}

uint64_t sub_22BE65F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v6;

  v9 = *(v11 + 8);
  if (!v5)
  {
    v8 = a1;
  }

  return v9(v8);
}

id sub_22BE6605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_22C272FF4();

  v10 = sub_22C272FF4();

  v11 = [v6 initWithKGQ:v9 query:v10 limit:a5 offset:a6];

  return v11;
}

unint64_t sub_22BE66104(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BE66128(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22C273CE4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_22BE6614C()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE1C218();
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D907300, &qword_22C2B5FD0);
    v7 = sub_22BE2B740();
    j__malloc_size(v7);
    sub_22BE1A4B8();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE372CC();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_22BE66214()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
    v7 = sub_22BE2B740();
    j__malloc_size(v7);
    sub_22BE1A4B8();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE19E08();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE662E4()
{
  sub_22BE23668();
  if (v6)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&unk_27D9077C0, &qword_22C2752D8);
    v9 = sub_22BE2B740();
    j__malloc_size(v9);
    sub_22BE1A4B8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_22BE253F4();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_22BE29454();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907370, &qword_22C2752E0);
    sub_22BE29454();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE663D4()
{
  sub_22BE23668();
  if (v6)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907378, &qword_22C2752E8);
    v4 = 24;
    v9 = swift_allocObject();
    sub_22BE2896C(v9);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v10 / 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_22BE253F4();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v12 = sub_22BE29454();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907380, &qword_22C2752F0);
    sub_22BE29454();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE66558(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    sub_22BE1BD80();
    if (v12 != v13)
    {
      sub_22BE22FB8();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  a6(0);
  sub_22BE19E14();
  if (a1)
  {
    sub_22BE685CC(a4 + v16, v14, v15 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE66648()
{
  sub_22BE23668();
  if (v6)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D9073E0, &qword_22C275350);
    v9 = sub_22BE2B740();
    sub_22BE2896C(v9);
    sub_22BE190B4(v10);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  sub_22BE253F4();
  if (v1)
  {
    if (v3 != v0 || v5 + 32 * v2 <= v4)
    {
      v12 = sub_22BE29454();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907840, &qword_22C275348);
    sub_22BE29454();
    swift_arrayInitWithCopy();
  }
}

void *sub_22BE66734(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_22BE5CE4C(&qword_27D9073E8, &qword_22C275358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(&unk_27D9073F0, &qword_22C275360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22BE66894()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE1C218();
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D9073B8, &unk_22C275A20);
    v7 = sub_22BE2B740();
    sub_22BE23B90(v7);
    sub_22BE3826C();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE372CC();
  if (v1)
  {
    if (v7 != v0 || &v10[2 * v3] <= v9)
    {
      memmove(v9, v10, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 2 * v3);
  }
}

void sub_22BE66A18()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D9072F8, &unk_22C275220);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE19E08();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_22BE66B20(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = a1;
  if (a3)
  {
    sub_22BE1BD80();
    if (v10 != v11)
    {
      sub_22BE22FB8();
      if (v10)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    sub_22BE2F100(a1, a2, a3, a4, a5, a6);
    v14 = sub_22BE2B740();
    sub_22BE23B90(v14);
    sub_22BE3826C();
    *(v14 + 2) = v12;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v14 != a4 || &v17[8 * v12] <= v16)
    {
      memmove(v16, v17, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE66D18()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE2F100(v7, v8, v9, v10, v11, v12);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v2;
    v13[3] = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = sub_22BE19E08();
  if (v1)
  {
    if (v13 != v0 || &v16[v2] <= v15)
    {
      memmove(v15, v16, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

void sub_22BE66EFC()
{
  sub_22BE25874();
  if (v6)
  {
    sub_22BE1BD80();
    if (v11 != v12)
    {
      sub_22BE22FB8();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    sub_22BE2F100(v4, v5, v6, v7, v8, v9);
    v15 = swift_allocObject();
    sub_22BE23B90(v15);
    v15[2] = v13;
    v15[3] = 2 * (v16 / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[5 * v13 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, v0 + 4, 40 * v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(v2, v1);
    sub_22BE19478();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE6702C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  if (a3)
  {
    sub_22BE1BD80();
    if (v12 != v13)
    {
      sub_22BE22FB8();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  sub_22BE5CE4C(a6, a7);
  sub_22BE19E14();
  if (a1)
  {
    sub_22BE68694(a4 + v16, v14, v15 + v16, a6, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67160()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907308, &qword_22C275240);
    v7 = sub_22BE2B740();
    j__malloc_size(v7);
    sub_22BE1A4B8();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE19E08();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67230()
{
  sub_22BE23668();
  if (v6)
  {
    sub_22BE1BD80();
    if (v7 != v8)
    {
      sub_22BE22FB8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907710, &qword_22C275248);
    v9 = sub_22BE2B740();
    j__malloc_size(v9);
    sub_22BE1A4B8();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_22BE253F4();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = sub_22BE29454();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(&qword_27D907310, &unk_22C275250);
    sub_22BE29454();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67320()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907340, &qword_22C275298);
    v7 = swift_allocObject();
    sub_22BE2896C(v7);
    sub_22BE190B4(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE19E08();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67418()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE1C218();
  if (v2)
  {
    sub_22BE5CE4C(&unk_27D907730, &qword_22C275270);
    v7 = sub_22BE2B740();
    sub_22BE23B90(v7);
    sub_22BE3826C();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE372CC();
  if (v1)
  {
    if (v7 != v0 || &v10[2 * v3] <= v9)
    {
      memmove(v9, v10, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 2 * v3);
  }
}

void sub_22BE674E4()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE1C218();
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D907330, &qword_22C2757B0);
    v7 = sub_22BE2B740();
    sub_22BE23B90(v7);
    sub_22BE3826C();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE372CC();
  if (v1)
  {
    if (v7 != v0 || &v10[4 * v3] <= v9)
    {
      memmove(v9, v10, 4 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 4 * v3);
  }
}

void sub_22BE675B0()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907348, &qword_22C2752A0);
    v7 = swift_allocObject();
    sub_22BE2896C(v7);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v8 / 56);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE19E08();
  if (v1)
  {
    if (v3 != v0 || &v10[56 * v2] <= v9)
    {
      memmove(v9, v10, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE676C0()
{
  sub_22BE25874();
  if (v6)
  {
    sub_22BE1BD80();
    if (v11 != v12)
    {
      sub_22BE22FB8();
      if (v11)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    sub_22BE2F100(v4, v5, v6, v7, v8, v9);
    v15 = sub_22BE2B740();
    sub_22BE23B90(v15);
    sub_22BE3826C();
    v15[2] = v13;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[v13 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, v0 + 4, 8 * v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_22BE5CE4C(v2, v1);
    sub_22BE19478();
    swift_arrayInitWithCopy();
  }
}

void sub_22BE677F4()
{
  sub_22BE23668();
  if (v4)
  {
    sub_22BE1BD80();
    if (v5 != v6)
    {
      sub_22BE22FB8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE187C0();
  if (v3)
  {
    sub_22BE5CE4C(&qword_27D907360, &qword_22C2752B8);
    v7 = sub_22BE2B740();
    sub_22BE2896C(v7);
    sub_22BE190B4(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = sub_22BE19E08();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE67BD4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = a1;
  if (a3)
  {
    sub_22BE1BD80();
    if (v10 != v11)
    {
      sub_22BE22FB8();
      if (v10)
      {
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    sub_22BE2F100(a1, a2, a3, a4, a5, a6);
    v14 = sub_22BE2B740();
    sub_22BE23B90(v14);
    sub_22BE3826C();
    *(v14 + 2) = v12;
    *(v14 + 3) = v15;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v14 != a4 || &v17[32 * v12] <= v16)
    {
      memmove(v16, v17, 32 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_22BE67CB0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE67CD0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE68018(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_22BE68148(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE68170(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE68280(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE682A0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

char *sub_22BE682C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return sub_22BE18C08(a3, result);
  }

  return result;
}

void sub_22BE685CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_22BE354BC();
  if (v8 && (a4(0), sub_22BE18000(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_22BE22FA4();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_22BE22FA4();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_22BE68694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_22BE354BC();
  if (v10 && (sub_22BE5CE4C(a4, a5), sub_22BE18000(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_22BE22FA4();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_22BE5CE4C(a4, a5);
    sub_22BE22FA4();

    swift_arrayInitWithTakeFrontToBack();
  }
}

size_t sub_22BE6875C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_22BEDDBF4(*(a1 + 16), 0);
  v3 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  sub_22BE19448(v3);
  sub_22BE19E14();
  sub_22BEDE304();
  v5 = v4;

  v6 = sub_22BE29454();
  sub_22BE4926C(v6);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22BE68858(uint64_t a1)
{
  result = sub_22C270F94();
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

uint64_t dispatch thunk of GlobalEntityMatcherShim.matchEntitySpans(query:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22BE637C4;

  return v8(a1, a2);
}

void sub_22BE68A80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    v6 = sub_22BE25170();
    sub_22BEDDD50(v6, v7);
    if (v5 != v4)
    {
      sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
      sub_22BE3D3B0();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_22BE68B50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
      v8 = sub_22BE2B740();
      sub_22BE2896C(v8);
      *(v4 + 16) = v6;
      *(v4 + 24) = (2 * (v9 / 8)) | 1;
    }

    if (v5 != a3)
    {
      sub_22BE45D84(0, &qword_27D9073A0, 0x277CD3E98);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

size_t sub_22BE68C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_22BEDDDEC(*(a3 + 16), 0);
  v5 = type metadata accessor for ProgramStatement(0);
  sub_22BE19448(v5);
  sub_22BE19E14();
  sub_22BEDE980();
  v7 = v6;

  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_22BE68D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    v9 = sub_22BE25170();
    v10(v9);
    if (v7 != v6)
    {
      a6(0);
      sub_22BE3D3B0();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_22BE68EA4(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void *, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = a3(v16, v8 + 32, v4, a1);
  v10 = v16[0];
  v11 = v16[1];
  v12 = v16[2];
  v13 = v16[3];
  v14 = v16[4];

  a4(v10, v11, v12, v13, v14);
  if (v9 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t sub_22BE68F78(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C273FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BE5CE4C(&qword_27D907840, &qword_22C275348);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_22BE690FC(v7, v8, a1, v4);
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
    return sub_22BE6907C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BE6907C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 24);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*v9 >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 24);
        v13 = *(v9 - 8);
        *(v9 + 8) = *(v9 - 24);
        *(v9 + 24) = v13;
        *(v9 - 24) = v10;
        *(v9 - 16) = v11;
        *(v9 - 8) = v12;
        *v9 = v7;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BE690FC(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v86 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 24);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 24);
        v14 = (v11 + 88);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6 - 16;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = *(v24 + 2);
                v28 = *(v24 + 3);
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[1] = v29;
                *(v25 - 1) = v26;
                *v25 = v27;
                *(v25 + 1) = v28;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9 - 8;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 24);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*v35 >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 8);
                v37 = *(v35 + 16);
                v38 = *(v35 + 24);
                v39 = *(v35 - 8);
                *(v35 + 8) = *(v35 - 24);
                *(v35 + 24) = v39;
                *(v35 - 24) = v36;
                *(v35 - 16) = v37;
                *(v35 - 8) = v38;
                *v35 = v33;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v88 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE6614C();
        v8 = v84;
      }

      v41 = v8[2];
      v42 = v41 + 1;
      if (v41 >= v8[3] >> 1)
      {
        sub_22BE6614C();
        v8 = v85;
      }

      v8[2] = v42;
      v43 = v8 + 4;
      v44 = &v8[2 * v41 + 4];
      *v44 = v7;
      v44[1] = v9;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v8[2 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = v8[4];
            v49 = v8[5];
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_56:
            if (v51)
            {
              goto LABEL_96;
            }

            v63 = *v47;
            v62 = v47[1];
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_99;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_104;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v42 < 2)
          {
            goto LABEL_98;
          }

          v70 = *v47;
          v69 = v47[1];
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_71:
          if (v66)
          {
            goto LABEL_101;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_103;
          }

          if (v73 < v65)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v45 - 1 >= v42)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v77 = &v43[2 * v45 - 2];
          v78 = *v77;
          v79 = &v43[2 * v45];
          v80 = v79[1];
          sub_22BE69728((*a3 + 32 * *v77), (*a3 + 32 * *v79), (*a3 + 32 * v80), v89);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v80 < v78)
          {
            goto LABEL_91;
          }

          v81 = v8;
          v82 = v8[2];
          if (v45 > v82)
          {
            goto LABEL_92;
          }

          *v77 = v78;
          v77[1] = v80;
          if (v45 >= v82)
          {
            goto LABEL_93;
          }

          v42 = v82 - 1;
          memmove(&v43[2 * v45], v79 + 2, 16 * (v82 - 1 - v45));
          v81[2] = v82 - 1;
          v83 = v82 > 2;
          v8 = v81;
          v5 = 0;
          if (!v83)
          {
            goto LABEL_85;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_94;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_95;
        }

        v59 = v47[1];
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_97;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_100;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_105;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v88;
      a4 = v86;
      if (v88 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_22BE695FC(&v91, *a1, a3);
LABEL_89:
}

uint64_t sub_22BE695FC(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C115CA4(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_22BE69728((*a3 + 32 * *v12), (*a3 + 32 * *v14), (*a3 + 32 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_22BE69728(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[4 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (v4[3] >= v6[3])
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 4;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 4;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 4;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[4 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[4 * v9];
LABEL_25:
  for (v5 -= 4; v11 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v6 - 1) < *(v11 - 1))
    {
      v19 = v6 - 4;
      v14 = v5 + 4 == v6;
      v6 -= 4;
      if (!v14)
      {
        v20 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
        v6 = v19;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 4)
    {
      v18 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v18;
    }

    v11 -= 4;
  }

LABEL_38:
  v21 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v21])
  {
    memmove(v6, v4, 32 * v21);
  }

  return 1;
}

void sub_22BE698CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22C272FF4();
  [a3 setString_];
}

uint64_t sub_22BE69924(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22C273024();

  return v4;
}

uint64_t sub_22BE69984(uint64_t result, uint64_t a2, uint64_t a3)
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

unint64_t sub_22BE699D0()
{
  result = qword_28106DEB0;
  if (!qword_28106DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DEB0);
  }

  return result;
}

void sub_22BE69A3C(uint64_t *a1)
{
  v2 = *(sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C116048(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_22BE6E9B4(v9);
  *a1 = v3;
}

uint64_t sub_22BE69B14(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v3 = [v1 matchSpans:a1 error:v9];
  v4 = v9[0];
  if (v3)
  {
    v5 = v3;
    sub_22BE45D84(0, &unk_28106DB18, 0x277D55D30);
    v2 = sub_22C273494();
    v6 = v4;
  }

  else
  {
    v7 = v9[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_22BE69C40(void *a1, uint64_t a2, int a3)
{
  v61 = a3;
  v60 = a2;
  v67 = a1;
  v72[1] = *MEMORY[0x277D85DE8];
  sub_22C270F94();
  sub_22BE179D8();
  v62 = v5;
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v64 = v7 - v6;
  sub_22BE183BC();
  sub_22C2720A4();
  sub_22BE179D8();
  v65 = v9;
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v69 = (v11 - v10);
  v12 = sub_22BE5CE4C(&qword_27D9073C8, &qword_22C275338);
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  v16 = sub_22C26E244();
  sub_22BE179D8();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BE183AC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  v29 = [objc_opt_self() indexMatcher];
  v70 = 0;
  v68 = v29;
  v30 = [v29 indexLocale_];
  v31 = v70;
  if (v30)
  {
    v32 = v30;
    sub_22C26E224();
    v33 = v31;

    v34 = *(v18 + 32);
    v34(v15, v25, v16);
    sub_22BE19DC4(v15, 0, 1, v16);
    v34(v28, v15, v16);
    v35 = v3;
  }

  else
  {
    v36 = v70;
    v37 = sub_22C26DE84();

    swift_willThrow();
    v35 = 0;

    sub_22BE19DC4(v15, 1, 1, v16);
    sub_22C26E234();
    if (sub_22BE1AEA8(v15, 1, v16) != 1)
    {
      sub_22BE33928(v15, &qword_27D9073C8, &qword_22C275338);
    }
  }

  v38 = v18;
  (*(v18 + 16))(v22, v28, v16);
  v39 = objc_allocWithZone(MEMORY[0x277D55D40]);
  v40 = sub_22BE45C28(v22);
  if (v35)
  {

    v41 = v69;
  }

  else
  {
    v54 = v40;
    v41 = v69;
    if (v40)
    {
      v69 = *(v18 + 32);
      v69(v25, v28, v16);
      v55 = v62;
      v56 = v63;
      (*(v62 + 104))(v64, *MEMORY[0x277D1EE78], v63);
      type metadata accessor for SiriEntityMatcherShim(0);
      v41 = swift_allocObject();
      v57 = (v41 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_spanMatcher);
      v57[3] = sub_22BE45D84(0, &unk_28106DB50, 0x277D55D38);
      v57[4] = &protocol witness table for SEMSpanMatcher;
      *v57 = v68;
      v58 = v41 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_maxEntityCount;
      *v58 = v60;
      *(v58 + 8) = v61 & 1;
      v69((v41 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_locale), v25, v16);
      (*(v55 + 32))(v41 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_matcherType, v64, v56);
      *(v41 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_tokenizer) = v54;
      *(v41 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_selectedEntityTypes) = v67;
      return v41;
    }
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD000000000000052, 0x800000022C2D2BF0);
  sub_22BE74518(&qword_27D907830, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
  v42 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v42);

  v44 = v70;
  v43 = v71;
  sub_22C271AE4();

  v45 = sub_22C272084();
  v46 = sub_22C2737A4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v67 = v44;
    v48 = v47;
    v49 = swift_slowAlloc();
    v64 = v38;
    v50 = v49;
    v71 = v43;
    v72[0] = v49;
    *v48 = 136315138;
    v70 = v67;
    sub_22BE74560();
    v51 = sub_22C2740E4();
    v41 = sub_22BE61C88(v51, v52, v72);

    *(v48 + 4) = v41;
    _os_log_impl(&dword_22BE15000, v45, v46, "%s", v48, 0xCu);
    sub_22BE26B64(v50);
    v38 = v64;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    v44 = v67;
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    (*(v65 + 8))(v69, v66);
  }

  else
  {

    (*(v65 + 8))(v41, v66);
  }

  sub_22BE74560();
  swift_allocError();
  *v53 = v44;
  v53[1] = v43;
  swift_willThrow();

  (*(v38 + 8))(v28, v16);
  return v41;
}

void SiriEntityMatcherShim.__allocating_init(tokenizer:spanMatcher:)()
{
  sub_22BE3C358();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C270F94();
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = sub_22C26E244();
  v13 = sub_22BE19448(v12);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v16 = v15 - v14;
  sub_22BE26B00(v2, v25);
  v17 = [v4 locale];
  sub_22C26E224();

  sub_22BE26B64(v2);
  (*(v7 + 104))(v11, *MEMORY[0x277D1EE78], v5);
  v18 = v26;
  v19 = v27;
  v20 = sub_22BE73F10(v25, v26);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21);
  sub_22BE73D88(0, 1, v23, v16, v11, v4, 0, v0, v18, v19);
  sub_22BE26B64(v25);
  sub_22BE267B8();
}

uint64_t sub_22BE6A588@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  a2(0);
  sub_22BE18000();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

uint64_t sub_22BE6A5F8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_22C272984();
  v3[7] = v4;
  sub_22BE17A18(v4);
  v3[8] = v5;
  v3[9] = sub_22BE25184();
  v6 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v6);
  v3[10] = sub_22BE3602C();
  v3[11] = swift_task_alloc();
  v7 = sub_22C270AF4();
  v3[12] = v7;
  sub_22BE17A18(v7);
  v3[13] = v8;
  v3[14] = sub_22BE25184();
  v9 = sub_22BE5CE4C(&qword_27D907408, &qword_22C275380);
  v3[15] = v9;
  sub_22BE19448(v9);
  v3[16] = sub_22BE25184();
  v10 = sub_22BE5CE4C(&unk_27D907410, qword_22C275388);
  sub_22BE19448(v10);
  v3[17] = sub_22BE3602C();
  v3[18] = swift_task_alloc();
  v11 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v3[19] = v11;
  sub_22BE17A18(v11);
  v3[20] = v12;
  v3[21] = sub_22BE3602C();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v13 = sub_22C2720A4();
  v3[24] = v13;
  sub_22BE17A18(v13);
  v3[25] = v14;
  v3[26] = sub_22BE3602C();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE6A860, 0, 0);
}

uint64_t sub_22BE6A860()
{
  v151 = v0;
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_tokenizer);
  v3 = sub_22C272FF4();
  v4 = [v2 queryFromText_];

  v5 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_selectedEntityTypes);
  v127 = v4;
  if (!v5)
  {
    goto LABEL_21;
  }

  sub_22C271AE4();

  v6 = sub_22C272084();
  v7 = sub_22C273794();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[27];
  v11 = v0[24];
  v10 = v0[25];
  if (v8)
  {
    v146 = v0[27];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v150[0] = v13;
    *v12 = 136315138;
    v14 = sub_22C273674();
    v16 = sub_22BE61C88(v14, v15, v150);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22BE15000, v6, v7, "[SiriEntityMatcherShim] Entity type filters applied to allow only the following CCItemTypes: %s", v12, 0xCu);
    sub_22BE26B64(v13);
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();
    sub_22BE1B2A4();
    MEMORY[0x2318AD180]();

    (*(v10 + 8))(v146, v11);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = *(v5 + 56);
  v18 = MEMORY[0x277D84F90];
  v150[0] = MEMORY[0x277D84F90];
  v19 = -1;
  v20 = -1 << *(v5 + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & v17;
  v22 = (63 - v20) >> 6;

  v23 = 0;
  while (v21)
  {
LABEL_13:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = *(*(v5 + 48) + ((v23 << 7) | (2 * v25)));
    v27 = objc_allocWithZone(MEMORY[0x277D55D20]);
    if (sub_22BE6E900(v26))
    {
      MEMORY[0x2318ABB70]();
      if (*((v150[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v18 = v150[0];
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_60;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v5 + 56 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_13;
    }
  }

  if (v18 >> 62)
  {
    goto LABEL_63;
  }

  v28 = v18 & 0xFFFFFFFFFFFFFF8;

  sub_22C274054();
  sub_22BE5CE4C(&unk_27D907420, &qword_22C2753A8);
  sub_22BE23BA8();
  v4 = v127;
  if (swift_dynamicCastMetatype() || (v62 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_19:
  }

  else
  {
    v63 = v28 + 32;
    while (1)
    {
      v0[2] = &unk_283FA6A00;
      v0[3] = &unk_283FA7CA8;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        break;
      }

      v63 += 8;
      if (!--v62)
      {
        goto LABEL_19;
      }
    }

    v18 = v28 | 1;
  }

  while (1)
  {
    sub_22BE738C8(v18, v4);
LABEL_21:
    v29 = (v0[6] + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_spanMatcher);
    v30 = v29[3];
    v31 = v29[4];
    sub_22BE1BD3C(v29, v30);
    v32 = (*(v31 + 8))(v4, v30, v31);
    v33 = v0[20];
    v147 = v0[19];
    v149 = MEMORY[0x277D84F90];
    v34 = 0;
    v135 = v32 & 0xC000000000000001;
    v138 = sub_22BE69A28();
    v134 = v32 + 32;
    v148 = v0;
    v132 = v32;
LABEL_22:
    if (v34 == v138)
    {
      break;
    }

    sub_22BE69A38();
    if (v135)
    {
      v35 = MEMORY[0x2318AC200](v34, v32);
    }

    else
    {
      v35 = *(v134 + 8 * v34);
    }

    v36 = v35;
    if (!__OFADD__(v34++, 1))
    {
      v38 = 0;
      v39 = sub_22BE6B588(v35, v0[4], v0[5]);
      v140 = v36;
      v40 = *(v39 + 16);
      v144 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v40 == v38)
        {

          sub_22BE3D108();
          sub_22BE6E118();
          v32 = v132;
          goto LABEL_22;
        }

        if (v38 >= *(v39 + 16))
        {
          break;
        }

        v41 = v0[23];
        sub_22BE3D108();
        sub_22BE2B984(v42, v43, v44, v45);
        v46 = *(v147 + 48);
        v47 = sub_22C272874();
        v48 = v41 + v46;
        v0 = v148;
        if (sub_22BE1AEA8(v48, 1, v47) == 1)
        {
          sub_22BE33928(v148[23], &qword_27D9073B0, &unk_22C275320);
          ++v38;
        }

        else
        {
          sub_22BE3D108();
          sub_22BE73F60(v49, v50, v51, v52);
          v53 = v144;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v150[0] = v144;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22BE701EC(0, *(v144 + 16) + 1, 1);
            v53 = v150[0];
          }

          v56 = *(v53 + 16);
          v55 = *(v53 + 24);
          v57 = v56 + 1;
          if (v56 >= v55 >> 1)
          {
            sub_22BE701EC(v55 > 1, v56 + 1, 1);
            v57 = v56 + 1;
            v53 = v150[0];
          }

          ++v38;
          *(v53 + 16) = v57;
          v144 = v53;
          v0 = v148;
          sub_22BE3D108();
          sub_22BE73F60(v58, v59, v60, v61);
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:

    sub_22BE5CE4C(&unk_27D907420, &qword_22C2753A8);
    v125 = sub_22C273CA4();
    swift_bridgeObjectRelease_n();
    v18 = v125;
    v4 = v127;
  }

  v64 = v0[25];
  v139 = v0[15];
  v65 = v148[13];
  v66 = v148[8];

  v67 = 0;
  v131 = (v65 + 8);
  v133 = (v65 + 32);
  v0 = v148;
  v68 = v149;
  v130 = (v64 + 8);
  v69 = *(v149 + 16);
  v126 = (v66 + 8);
  v70 = &qword_27D907400;
  v71 = &unk_22C274F90;
  v129 = v69;
  while (1)
  {
    if (v67 == v69)
    {
      v72 = 1;
      v73 = v69;
    }

    else
    {
      if (v67 >= *(v68 + 16))
      {
        goto LABEL_62;
      }

      v74 = v0[16];
      v73 = v67 + 1;
      sub_22BE19E14();
      v77 = v68 + v75 + *(v33 + 72) * v76;
      v78 = *(v139 + 48);
      *v74 = v76;
      sub_22BE2B984(v77, v74 + v78, &qword_27D9073B0, &unk_22C275320);
      v79 = sub_22BE19454();
      sub_22BE73F60(v79, v80, &qword_27D907408, &qword_22C275380);
      v72 = 0;
      v0 = v148;
    }

    v81 = v0[18];
    v82 = v0[15];
    sub_22BE19DC4(v0[17], v72, 1, v82);
    v83 = sub_22BE19454();
    sub_22BE73F60(v83, v84, &unk_27D907410, qword_22C275388);
    if (sub_22BE1AEA8(v81, 1, v82) == 1)
    {
      break;
    }

    v85 = v0[21];
    v86 = v0[18];
    v141 = v0[14];
    v87 = v0[12];
    v142 = v0[11];
    v145 = v73;
    v136 = *v86;
    v88 = v71;
    v89 = v70;
    v90 = v86 + *(v139 + 48);
    v91 = *(v147 + 48);
    v92 = *v133;
    (*v133)(v85, v90, v87);
    v93 = &v90[v91];
    v70 = v89;
    v71 = v88;
    sub_22BE73F60(v93, &v85[v91], v70, v88);
    sub_22C271AE4();
    v92(v141, v85, v87);
    sub_22BE73F60(&v85[v91], v142, v70, v88);
    v94 = sub_22C272084();
    v95 = sub_22C273794();
    if (os_log_type_enabled(v94, v95))
    {
      v143 = v95;
      v0 = v148;
      v96 = v148[14];
      v97 = v148[12];
      v128 = v148[11];
      v98 = v148[10];
      v99 = swift_slowAlloc();
      v150[0] = swift_slowAlloc();
      *v99 = 134218498;
      *(v99 + 4) = v136;
      *(v99 + 12) = 2080;
      v100 = sub_22C270A74();
      v102 = v101;
      (*v131)(v96, v97);
      v103 = sub_22BE61C88(v100, v102, v150);

      *(v99 + 14) = v103;
      *(v99 + 22) = 2080;
      sub_22BE2B984(v128, v98, &qword_27D907400, v71);
      v104 = sub_22C272874();
      v105 = sub_22BE1AEA8(v98, 1, v104);
      v106 = v148[10];
      if (v105 == 1)
      {
        sub_22BE33928(v148[10], &qword_27D907400, v71);
        v107 = 0xE700000000000000;
        v108 = v71;
        v109 = 0x6E776F6E6B6E75;
      }

      else
      {
        v115 = v148[9];
        v116 = v148[7];
        sub_22C272814();
        (*(*(v104 - 8) + 8))(v106, v104);
        v108 = v71;
        v109 = sub_22C272944();
        v107 = v117;
        (*v126)(v115, v116);
      }

      v69 = v129;
      v137 = v148[26];
      v118 = v148[24];
      sub_22BE33928(v148[11], &qword_27D907400, v108);
      v119 = sub_22BE61C88(v109, v107, v150);

      *(v99 + 24) = v119;
      _os_log_impl(&dword_22BE15000, v94, v143, "[SiriEntityMatcherShim] Span match [%ld]: %s \nWith entity type: %s", v99, 0x20u);
      swift_arrayDestroy();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();
      sub_22BE1B2A4();
      MEMORY[0x2318AD180]();

      (*v130)(v137, v118);
      v68 = v149;
      v70 = &qword_27D907400;
      v71 = v108;
      v67 = v145;
    }

    else
    {
      v0 = v148;
      v110 = v148[26];
      v111 = v148[24];
      v112 = v148[14];
      v114 = v148[11];
      v113 = v148[12];

      sub_22BE33928(v114, v70, v71);
      (*v131)(v112, v113);
      (*v130)(v110, v111);
      v68 = v149;
      v69 = v129;
      v67 = v145;
    }
  }

  sub_22BE6CFA0(v68);

  v121 = sub_22BE6C35C(v120);
  v122 = sub_22BE6CC4C(v121);

  sub_22BE2589C();

  return v123(v122);
}

uint64_t sub_22BE6B588(char *a1, uint64_t a2, uint64_t a3)
{
  sub_22C270F94();
  sub_22BE179D8();
  v114 = v7;
  v115 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v117 = v9 - v8;
  sub_22BE183BC();
  v10 = sub_22C270AF4();
  sub_22BE179D8();
  v119 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v121 = v14 - v13;
  v15 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v16 = sub_22BE19448(v15);
  MEMORY[0x28223BE20](v16);
  v122 = (v103 - v17);
  sub_22BE183BC();
  v123 = sub_22C272874();
  sub_22BE179D8();
  v118 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  v120 = v21 - v20;
  sub_22BE183BC();
  sub_22C270E54();
  sub_22BE179D8();
  v125 = v23;
  v126 = v22;
  MEMORY[0x28223BE20](v22);
  sub_22BE183AC();
  v113 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v103 - v27;
  v29 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  v30 = sub_22BE19448(v29);
  MEMORY[0x28223BE20](v30);
  sub_22BE183AC();
  v33 = v31 - v32;
  *&v35 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v37 = v103 - v36;
  v128 = a1;
  v38 = [a1 spanInfo];
  v39 = [v38 spanRange];
  v41 = v39 + v40;
  if (__OFADD__(v39, v40))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v112 = v10;
  v130 = a2;
  v131 = a3;
  sub_22BE699D0();
  v127 = v37;

  v110 = sub_22C273164();
  v111 = a2;
  v130 = a2;
  v131 = a3;
  v129 = a3;

  v42 = v127;
  v43 = sub_22C273164();
  [v38 aliasMatchOptions];
  sub_22BE6C160();
  [v38 maxTokenCount];
  [v38 matchedTokenCount];
  sub_22BE2B984(v42, v33, &qword_27D9073C0, &qword_22C275330);
  v44 = v28;
  sub_22C270E14();
  v28 = v128;
  v45 = [v128 entityInfo];
  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
    v54 = sub_22C270FE4();
    sub_22BE1B28C();
    sub_22BE74518(v55, v56, MEMORY[0x277D1EEE8]);
    sub_22BE23BA8();
    swift_allocError();
    (*(*(v54 - 8) + 104))(v57, *MEMORY[0x277D1EED8], v54);
    swift_willThrow();

LABEL_10:
    (*(v125 + 8))(v44, v126);
    sub_22BE33928(v42, &qword_27D9073C0, &qword_22C275330);
    return v54;
  }

  v47 = v46;
  v48 = sub_22BE73948(v46);
  if (!v48)
  {
    v54 = sub_22C270FE4();
    sub_22BE1B28C();
    sub_22BE74518(v58, v59, MEMORY[0x277D1EEE8]);
    sub_22BE23BA8();
    swift_allocError();
    (*(*(v54 - 8) + 104))(v60, *MEMORY[0x277D1EED0], v54);
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v41 = v48;
  v49 = sub_22BE69A28();
  v108 = v44;
  v107 = v38;
  v105 = v45;
  v103[1] = v43;
  v104 = v47;
  if (v49)
  {
    sub_22BE69A38();
    if ((v41 & 0xC000000000000001) == 0)
    {
      v50 = *(v41 + 32);
LABEL_7:
      v51 = v50;

      v52 = [v51 sourceItemIdentifier];

      v106 = sub_22C273024();
      v109 = v53;

      goto LABEL_12;
    }

LABEL_34:
    v50 = MEMORY[0x2318AC200](0, v41);
    goto LABEL_7;
  }

  v106 = 0;
  v109 = 0xE000000000000000;
LABEL_12:
  v61 = [v28 fieldMatches];
  sub_22BE45D84(0, &qword_28106DB60, 0x277D55D28);
  sub_22BE23BA8();
  v41 = sub_22C273494();

  v62 = sub_22BE69A28();
  v28 = 0;
  v124 = MEMORY[0x277D84F90];
  while (v62 != v28)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x2318AC200](v28, v41);
    }

    else
    {
      if (v28 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v63 = *(v41 + 8 * v28 + 32);
    }

    v64 = v63;
    v65 = (v28 + 1);
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v66 = [v63 entityFieldInfo];
    objc_opt_self();
    sub_22BE23BA8();
    v67 = swift_dynamicCastObjCClass();
    if (v67)
    {
      v68 = v67;
      swift_unknownObjectRetain();
      v69 = [v68 fieldType];
      swift_unknownObjectRelease_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BE66894();
        v124 = v72;
      }

      v70 = *(v124 + 16);
      if (v70 >= *(v124 + 24) >> 1)
      {
        sub_22BE66894();
        v124 = v73;
      }

      v71 = v124;
      *(v124 + 16) = v70 + 1;
      *(v71 + 2 * v70 + 32) = v69;
      v28 = v65;
    }

    else
    {

      swift_unknownObjectRelease();
      ++v28;
    }
  }

  v74 = v128;
  v75 = [v128 spanValue];
  v76 = sub_22C273024();
  v78 = v77;

  v79 = v122;
  v80 = v109;
  v81 = v104;
  sub_22BE746AC(v106, v109, v76, v78, v124, v122);

  v82 = v123;
  if (sub_22BE1AEA8(v79, 1, v123) == 1)
  {

    sub_22BE33928(v79, &qword_27D907400, &unk_22C274F90);

    swift_unknownObjectRelease();
    v54 = MEMORY[0x277D84F90];
    v84 = v125;
    v83 = v126;
    v85 = v108;
  }

  else
  {
    v109 = v80;
    v86 = v118;
    (*(v118 + 32))(v120, v79, v82);

    v87 = [v74 spanValue];
    v129 = sub_22C273024();

    [v107 matchScore];
    v84 = v125;
    (*(v125 + 16))(v113, v108, v126);
    (*(v114 + 16))(v117, v116 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_matcherType, v115);
    v88 = [v81 sourceIdentifierOrConstant];
    sub_22C273024();

    v89 = v121;
    sub_22C270A34();
    sub_22BE5CE4C(&qword_27D907810, &unk_22C288170);
    v90 = (sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320) - 8);
    v91 = (*(*v90 + 80) + 32) & ~*(*v90 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_22C275160;
    v92 = v54 + v91;
    v93 = v90[14];
    v94 = v119;
    v95 = v89;
    v96 = v112;
    (*(v119 + 16))(v92, v95, v112);
    v97 = v86;
    v98 = *(v86 + 16);
    v99 = v120;
    v100 = v123;
    v98(v92 + v93, v120, v123);
    sub_22BE19DC4(v92 + v93, 0, 1, v100);

    swift_unknownObjectRelease();
    (*(v94 + 8))(v121, v96);
    (*(v97 + 8))(v99, v100);
    v85 = v108;
    v83 = v126;
  }

  v101 = v127;
  (*(v84 + 8))(v85, v83);
  sub_22BE33928(v101, &qword_27D9073C0, &qword_22C275330);
  return v54;
}

void sub_22BE6C160()
{
  sub_22BE3C358();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C270944();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v18 - v15;
  v18[3] = 0;
  sub_22BE74518(&qword_28107F1D0, MEMORY[0x277D1E9E8], MEMORY[0x277D1EA00]);
  sub_22C2742B4();
  switch(v1)
  {
    case 1:
      sub_22C2708D4();
      goto LABEL_6;
    case 2:
      sub_22C270924();
      goto LABEL_6;
    case 4:
      sub_22C270914();
      goto LABEL_6;
    case 8:
      sub_22C270904();
LABEL_6:
      sub_22C1AE63C(v13, v10);
      v17 = *(v6 + 8);
      v17(v10, v4);
      v17(v13, v4);
      break;
    default:
      break;
  }

  (*(v6 + 32))(v3, v16, v4);
  sub_22BE19DC4(v3, 0, 1, v4);
  sub_22BE267B8();
}

void *sub_22BE6C35C(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v52 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v68 = MEMORY[0x277D84F98];
  v59 = *(a1 + 16);
  v53 = xmmword_22C275160;
  v54 = a1;
  while (1)
  {
    if (v59 == v9)
    {

      return v10;
    }

    if (v9 >= *(a1 + 16))
    {
      break;
    }

    v11 = *(v57 + 80);
    v61 = *(v57 + 72);
    v62 = (v11 + 32) & ~v11;
    v60 = v9;
    sub_22BE2B984(a1 + v62 + v61 * v9, v8, &qword_27D9073B0, &unk_22C275320);
    v12 = v8;
    v13 = v56;
    sub_22BE2B984(v8, v56, &qword_27D9073B0, &unk_22C275320);
    v64 = *(v58 + 48);
    v63 = sub_22C270AD4();
    v15 = v14;
    v16 = v10;
    v17 = sub_22C270AC4();
    v19 = v18;
    v20 = sub_22C270AB4();
    v22 = v21;
    v23 = sub_22C270AF4();
    (*(*(v23 - 8) + 8))(v13, v23);
    sub_22BE33928(v13 + v64, &qword_27D907400, &unk_22C274F90);
    *&v65 = v63;
    *(&v65 + 1) = v15;
    *&v66 = v17;
    *(&v66 + 1) = v19;
    v10 = v16;
    *&v67 = v20;
    *(&v67 + 1) = v22;
    v25 = sub_22BE605E8();
    v26 = v16[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v10[3] < v28)
    {
      sub_22C24F890(v28, 1);
      v10 = v68;
      v30 = sub_22BE605E8();
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_21;
      }

      v25 = v30;
    }

    v8 = v12;
    if (v29)
    {

      v32 = v10[7];
      sub_22BE73F60(v12, v55, &qword_27D9073B0, &unk_22C275320);
      v33 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v33;
      v35 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BE6686C(0, *(v33 + 16) + 1, 1, v33);
        v33 = v49;
        *(v32 + 8 * v25) = v49;
      }

      v36 = v62;
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_22BE6686C(v37 > 1, v38 + 1, 1, v33);
        v33 = v50;
        *(v32 + 8 * v25) = v50;
      }

      a1 = v54;
      v39 = v55;
      v41 = v60;
      v40 = v61;
      *(v33 + 16) = v38 + 1;
      sub_22BE73F60(v39, v33 + v36 + v38 * v40, &qword_27D9073B0, &unk_22C275320);
      v10 = v35;
    }

    else
    {
      sub_22BE5CE4C(&qword_27D907810, &unk_22C288170);
      v42 = v62;
      v43 = swift_allocObject();
      *(v43 + 16) = v53;
      sub_22BE73F60(v12, v43 + v42, &qword_27D9073B0, &unk_22C275320);
      v10[(v25 >> 6) + 8] |= 1 << v25;
      v44 = (v10[6] + 48 * v25);
      v45 = v66;
      *v44 = v65;
      v44[1] = v45;
      v44[2] = v67;
      *(v10[7] + 8 * v25) = v43;
      v46 = v10[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_20;
      }

      v10[2] = v48;
      a1 = v54;
      v41 = v60;
    }

    v9 = v41 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C2740B4();
  __break(1u);
  return result;
}

uint64_t sub_22BE6C7D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v37 - v7;
  v8 = sub_22C270AF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BE5CE4C(&qword_27D907808, &unk_22C275820);
  MEMORY[0x28223BE20](v12 - 8);
  v41 = &v37 - v13;
  v14 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v37 = &v37 - v18;
    v38 = v16;
    v40 = a2;
    v46 = MEMORY[0x277D84F90];
    sub_22BE7020C(0, v20, 0);
    v21 = v46;
    v22 = *(v42 + 80);
    v39 = a1;
    v23 = a1 + ((v22 + 32) & ~v22);
    v45 = v9;
    v24 = (v9 + 32);
    v42 = *(v42 + 72);
    do
    {
      v25 = v44;
      sub_22BE2B984(v23, v44, &qword_27D9073B0, &unk_22C275320);
      v26 = v25;
      v27 = v43;
      sub_22BE73F60(v26, v43, &qword_27D9073B0, &unk_22C275320);
      v28 = v4;
      v29 = *(v4 + 48);
      v30 = *v24;
      (*v24)(v11, v27, v8);
      sub_22BE33928(v27 + v29, &qword_27D907400, &unk_22C274F90);
      v46 = v21;
      v31 = v8;
      v33 = *(v21 + 16);
      v32 = *(v21 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_22BE7020C(v32 > 1, v33 + 1, 1);
        v21 = v46;
      }

      *(v21 + 16) = v33 + 1;
      v30((v21 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33), v11, v31);
      v23 += v42;
      --v20;
      v4 = v28;
      v8 = v31;
    }

    while (v20);
    a1 = v39;
    v9 = v45;
    v19 = v37;
    v16 = v38;
  }

  v34 = v41;
  sub_22BF2DA90(a1);
  if (sub_22BE1AEA8(v34, 1, v4) == 1)
  {
    sub_22BE33928(v34, &qword_27D907808, &unk_22C275820);
    v35 = sub_22C272874();
    sub_22BE19DC4(v19, 1, 1, v35);
  }

  else
  {
    sub_22BE73F60(v34 + *(v4 + 48), v19, &qword_27D907400, &unk_22C274F90);
    (*(v9 + 8))(v34, v8);
  }

  sub_22BE2B984(v19, v16, &qword_27D907400, &unk_22C274F90);
  sub_22C270FA4();
  return sub_22BE33928(v19, &qword_27D907400, &unk_22C274F90);
}

uint64_t sub_22BE6CC4C(uint64_t a1)
{
  v40 = sub_22C270FD4();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v32 = v1;
  v50 = MEMORY[0x277D84F90];
  sub_22BE70194(0, v6, 0);
  v7 = v50;
  result = sub_22C259374();
  v11 = result;
  v12 = 0;
  v13 = a1 + 64;
  v37 = v3 + 32;
  v38 = a1 + 64;
  v34 = v9;
  v35 = v6;
  v33 = a1 + 72;
  v39 = v3;
  v36 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    if (*(a1 + 36) != v9)
    {
      goto LABEL_23;
    }

    v42 = v12;
    v43 = v9;
    v41 = v10;
    v15 = (*(a1 + 48) + 48 * v11);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    v20 = v15[5];
    v21 = *(*(a1 + 56) + 8 * v11);
    v44 = *v15;
    v45 = v16;
    v46 = v17;
    v47 = v18;
    v48 = v19;
    v49 = v20;

    sub_22BE6C7D0(v21, v5);

    v50 = v7;
    v23 = *(v7 + 16);
    v22 = *(v7 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_22BE70194(v22 > 1, v23 + 1, 1);
      v7 = v50;
    }

    *(v7 + 16) = v23 + 1;
    result = (*(v39 + 32))(v7 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v23, v5, v40);
    a1 = v36;
    v24 = 1 << *(v36 + 32);
    v13 = v38;
    if (v11 >= v24)
    {
      goto LABEL_24;
    }

    v25 = *(v38 + 8 * v14);
    if ((v25 & (1 << v11)) == 0)
    {
      goto LABEL_25;
    }

    if (*(v36 + 36) != v43)
    {
      goto LABEL_26;
    }

    v26 = v25 & (-2 << (v11 & 0x3F));
    if (v26)
    {
      v24 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v14 << 6;
      v28 = v14 + 1;
      v29 = (v33 + 8 * v14);
      while (v28 < (v24 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_22BE2FC64(v11, v43, v41 & 1);
          v24 = __clz(__rbit64(v30)) + v27;
          goto LABEL_19;
        }
      }

      result = sub_22BE2FC64(v11, v43, v41 & 1);
    }

LABEL_19:
    v10 = 0;
    v12 = v42 + 1;
    v11 = v24;
    v9 = v34;
    if (v42 + 1 == v35)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22BE6CFA0(uint64_t a1)
{
  v15 = a1;

  v4 = 0;
  sub_22BE69A3C(&v15);
  v5 = v15;
  if (*(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_maxEntityCount + 8))
  {
    return v5;
  }

  v6 = *(v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_maxEntityCount);
  if (v6 >= *(a1 + 16))
  {
    return v5;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_22C26A8C8(0, v6);
  v4 = v7;
  v2 = v8;

  if ((v2 & 1) == 0)
  {
LABEL_5:
    v9 = sub_22BE19454();
    sub_22BE68A80(v9, v10, v4, v2);
    v5 = v11;
LABEL_12:
    swift_unknownObjectRelease();
    return v5;
  }

  sub_22C274064();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v2 >> 1, v4))
  {
    goto LABEL_15;
  }

  if (v13 != (v2 >> 1) - v4)
  {
LABEL_16:
    swift_unknownObjectRelease_n();
    goto LABEL_5;
  }

  v5 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v5)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  return v5;
}

BOOL sub_22BE6D108(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  sub_22BE2B984(a1, &v19 - v8, &qword_27D9073B0, &unk_22C275320);
  v10 = *(v4 + 56);
  sub_22C270A54();
  v12 = v11;
  v13 = sub_22C270AF4();
  v14 = *(*(v13 - 8) + 8);
  v14(v9, v13);
  sub_22BE2B984(v20, v6, &qword_27D9073B0, &unk_22C275320);
  v15 = *(v4 + 56);
  sub_22C270A54();
  v17 = v16;
  v14(v6, v13);
  sub_22BE33928(&v6[v15], &qword_27D907400, &unk_22C274F90);
  sub_22BE33928(&v9[v10], &qword_27D907400, &unk_22C274F90);
  return v17 < v12;
}

uint64_t sub_22BE6D2B8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return sub_22C274014();
}

uint64_t sub_22BE6D360(uint64_t a1)
{
  sub_22C272F44();
  sub_22C272F44();

  return sub_22C272F44();
}

uint64_t sub_22BE6D3AC()
{
  sub_22C274154();
  sub_22C272F44();
  sub_22C272F44();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22BE6D4A8(uint64_t a1)
{
  sub_22C274154();
  sub_22C272F44();
  sub_22C272F44();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22BE6D528(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_22BE6D2B8(v7, v8) & 1;
}

uint64_t sub_22BE6D594(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22BE6D63C;

  return sub_22BE6A5F8(a1, a2);
}

uint64_t sub_22BE6D63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_22BE2589C();
  if (!v5)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t SiriEntityMatcherShim.matchApps(query:)()
{
  v1 = sub_22C272804();
  v0[2] = v1;
  sub_22BE17A18(v1);
  v0[3] = v2;
  v0[4] = sub_22BE25184();
  v3 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v3);
  v0[5] = sub_22BE25184();
  v4 = sub_22C272794();
  v0[6] = v4;
  sub_22BE17A18(v4);
  v0[7] = v5;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v6 = sub_22C270FD4();
  v0[11] = v6;
  sub_22BE17A18(v6);
  v0[12] = v7;
  v0[13] = sub_22BE25184();
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v9 = sub_22BE25888(v8);

  return sub_22BE6A5F8(v9, v10);
}

uint64_t sub_22BE6D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v6;
  *(v7 + 120) = a1;

  if (v5)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22BE6DA88, 0, 0);
  }
}

uint64_t sub_22BE6DA88()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v0[3];
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v46 = *(v3 + 56);
    v8 = (v3 - 8);
    v44 = *MEMORY[0x277D72A58];
    v42 = (v6 + 88);
    v43 = (v6 + 16);
    v41 = *MEMORY[0x277D72970];
    v36 = (v6 + 96);
    v37 = (v6 + 8);
    v40 = (v0[7] + 32);
    v9 = MEMORY[0x277D84F90];
    v45 = v5;
    v35 = (v3 - 8);
    do
    {
      v10 = v0[13];
      v11 = v0[11];
      v12 = v0[5];
      v4(v10, v7, v11);
      sub_22C270FB4();
      (*v8)(v10, v11);
      v13 = sub_22C272874();
      v14 = sub_22BE1AEA8(v12, 1, v13);
      v15 = v0[5];
      if (v14 == 1)
      {
        sub_22BE33928(v15, &qword_27D907400, &unk_22C274F90);
      }

      else
      {
        v16 = *(v13 - 8);
        if ((*(v16 + 88))(v15, v13) == v44)
        {
          v17 = v0[4];
          v18 = v0[2];
          (*(v16 + 96))(v0[5], v13);
          v19 = swift_projectBox();
          (*v43)(v17, v19, v18);
          if ((*v42)(v17, v18) == v41)
          {
            v20 = v0[9];
            v38 = v0[10];
            v39 = v9;
            v21 = v0[8];
            v22 = v0[6];
            v23 = v0[4];
            (*v36)(v23, v0[2]);
            v24 = *v40;
            (*v40)(v21, v23, v22);

            v24(v20, v21, v22);
            v25 = v22;
            v9 = v39;
            v24(v38, v20, v25);
            v26 = v24;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22BE66960(0, *(v39 + 16) + 1, 1, v39);
              v9 = v31;
            }

            v28 = *(v9 + 16);
            v27 = *(v9 + 24);
            v8 = v35;
            if (v28 >= v27 >> 1)
            {
              sub_22BE66960(v27 > 1, v28 + 1, 1, v9);
              v9 = v32;
            }

            *(v9 + 16) = v28 + 1;
            sub_22BE19E14();
            v26(v9 + v29 + *(v30 + 72) * v28);
          }

          else
          {
            (*v37)(v0[4], v0[2]);
          }
        }

        else
        {
          (*(v16 + 8))(v0[5], v13);
        }

        v4 = v45;
      }

      v7 += v46;
      --v2;
    }

    while (v2);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  sub_22BE2589C();

  return v33(v9);
}

uint64_t sub_22BE6DED0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22BE746A8;

  return SiriEntityMatcherShim.matchApps(query:)();
}

void sub_22BE6DF78(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22BE19E20();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C172174(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BE3E48C();
  if (v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E118()
{
  sub_22BE3C358();
  v4 = sub_22BE372D8(v3);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  v5(v4, 1);
  v11 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  sub_22BE5CE4C(v10, v9);
  if (v12 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v11;
    sub_22BE267B8();
    return;
  }

  v13 = *(v11 + 16);
  v8 = __OFADD__(v13, v0);
  v14 = v13 + v0;
  if (!v8)
  {
    *(v11 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E248(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_22C273174();
  sub_22BE19E20();
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22C172204(v11, 1);
  v3 = *v2;
  v12 = *(*v2 + 16);
  v13 = (*(*v2 + 24) >> 1) - v12;
  v14 = sub_22BE739B4(&v24, (*v4 + 16 * v12 + 32), (*(*v4 + 24) >> 1) - v12, a1, a2);
  if (v14 < v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= 1)
  {
    v15 = *(v3 + 16);
    v10 = __OFADD__(v15, v14);
    v16 = v15 + v14;
    if (v10)
    {
      __break(1u);
LABEL_19:
      *(v3 + 16) = a2;
      goto LABEL_7;
    }

    *(v3 + 16) = v16;
  }

  if (v14 != v13)
  {
    goto LABEL_7;
  }

LABEL_10:
  a2 = *(v3 + 16);
  v17 = sub_22C273204();
  if (v18)
  {
    while (1)
    {
      v19 = *(v3 + 24) >> 1;
      if (v19 < a2 + 1)
      {
        v21 = v17;
        v22 = v18;
        sub_22BE67160();
        v18 = v22;
        v3 = v23;
        v17 = v21;
        v19 = *(v3 + 24) >> 1;
      }

      v20 = (v3 + 16 * a2 + 40);
      while (a2 < v19)
      {
        *(v20 - 1) = v17;
        *v20 = v18;
        ++a2;
        v17 = sub_22C273204();
        v20 += 2;
        if (!v18)
        {
          goto LABEL_19;
        }
      }

      *(v3 + 16) = a2;
    }
  }

LABEL_7:

  *v4 = v3;
}

void sub_22BE6E3B0(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22BE19E20();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C17221C(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BE3E48C();
  if (v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_22BE5CE4C(&qword_27D907310, &unk_22C275250);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E47C(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22BE19E20();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C172234(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BE3E48C();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 2 * v6 + 32), (a1 + 32), 2 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E528()
{
  sub_22BE3C358();
  v2 = v1 >> 1;
  v4 = (v1 >> 1) - v3;
  if (__OFSUB__(v1 >> 1, v3))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_22BE19E20();
  if (__OFADD__(v7, v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v5;
  sub_22C172234(v7 + v4, 1);
  v10 = *v0;
  if (v2 == v8)
  {
    if (v4 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v0 = v10;
      sub_22BE267B8();
      return;
    }

    __break(1u);
  }

  v11 = *(v10 + 16);
  if ((*(v10 + 24) >> 1) - v11 < v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  memcpy((v10 + 2 * v11 + 32), (v9 + 2 * v8), 2 * v4);
  if (v4 <= 0)
  {
    goto LABEL_10;
  }

  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v10 + 16) = v14;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_22BE6E5F4(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_22BE19E20();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22C17224C(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BE3E48C();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 4 * v6 + 32), (a1 + 32), 4 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E6F8()
{
  sub_22BE3C358();
  v4 = sub_22BE372D8(v3);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(v4, 1);
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v8(0);
  if (v10 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    sub_22BE267B8();
    return;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v0);
  v12 = v11 + v0;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_22BE6E838(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(v12, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

id sub_22BE6E900(unsigned __int16 a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 initWithItemType:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_22C26DE84();

    swift_willThrow();
  }

  return v2;
}

void sub_22BE6E9B4(uint64_t *a1)
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
        sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BE6EEA0(v8, v9, a1, v4);
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
    sub_22BE6EAFC(0, v2, 1, a1);
  }
}

void sub_22BE6EAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  MEMORY[0x28223BE20](v54);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v38 - v10;
  MEMORY[0x28223BE20](v11);
  v48 = &v38 - v12;
  MEMORY[0x28223BE20](v13);
  v53 = &v38 - v14;
  MEMORY[0x28223BE20](v15);
  v52 = &v38 - v17;
  v40 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v45 = -v19;
    v46 = v18;
    v21 = a1 - a3;
    v39 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v43 = v20;
      v44 = a3;
      v41 = v22;
      v42 = v21;
      v50 = v21;
      v23 = v54;
      do
      {
        v24 = v52;
        sub_22BE2B984(v22, v52, &qword_27D9073B0, &unk_22C275320);
        v25 = v53;
        sub_22BE2B984(v20, v53, &qword_27D9073B0, &unk_22C275320);
        v26 = v48;
        sub_22BE2B984(v24, v48, &qword_27D9073B0, &unk_22C275320);
        v51 = *(v23 + 48);
        sub_22C270A54();
        v28 = v27;
        v29 = sub_22C270AF4();
        v30 = *(*(v29 - 8) + 8);
        v30(v26, v29);
        v31 = v49;
        sub_22BE2B984(v25, v49, &qword_27D9073B0, &unk_22C275320);
        v32 = *(v54 + 48);
        sub_22C270A54();
        v34 = v33;
        v30(v31, v29);
        v35 = v31 + v32;
        v23 = v54;
        sub_22BE33928(v35, &qword_27D907400, &unk_22C274F90);
        sub_22BE33928(v26 + v51, &qword_27D907400, &unk_22C274F90);
        sub_22BE33928(v53, &qword_27D9073B0, &unk_22C275320);
        sub_22BE33928(v52, &qword_27D9073B0, &unk_22C275320);
        if (v34 >= v28)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v36 = v47;
        sub_22BE73F60(v22, v47, &qword_27D9073B0, &unk_22C275320);
        swift_arrayInitWithTakeFrontToBack();
        sub_22BE73F60(v36, v20, &qword_27D9073B0, &unk_22C275320);
        v20 += v45;
        v22 += v45;
      }

      while (!__CFADD__(v50++, 1));
      a3 = v44 + 1;
      v20 = v43 + v39;
      v21 = v42 - 1;
      v22 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }
}

void sub_22BE6EEA0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v131 = a4;
  v133 = a1;
  v6 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  v141 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v147 = (&v129 - v8);
  MEMORY[0x28223BE20](v9);
  v150 = &v129 - v10;
  MEMORY[0x28223BE20](v11);
  v149 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v148 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v142 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_107:
    v4 = *v133;
    if (!*v133)
    {
      goto LABEL_150;
    }

    a3 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v121 = a3;
    }

    else
    {
LABEL_144:
      v121 = sub_22C115CA4(a3, v19, v20, v26);
    }

    v122 = v121 + 16;
    v123 = *(v121 + 2);
    while (v123 >= 2)
    {
      if (!*v142)
      {
        goto LABEL_147;
      }

      a3 = v121;
      v124 = &v121[16 * v123];
      v125 = *v124;
      v126 = &v122[2 * v123];
      v127 = *(v126 + 1);
      v128 = v143;
      sub_22BE6FA9C(*v142 + *(v141 + 72) * *v124, *v142 + *(v141 + 72) * *v126, *v142 + *(v141 + 72) * v127, v4);
      v143 = v128;
      if (v128)
      {
        break;
      }

      if (v127 < v125)
      {
        goto LABEL_135;
      }

      if (v123 - 2 >= *v122)
      {
        goto LABEL_136;
      }

      *v124 = v125;
      *(v124 + 1) = v127;
      v19 = *v122 - v123;
      if (*v122 < v123)
      {
        goto LABEL_137;
      }

      v123 = *v122 - 1;
      sub_22C115E84(v126 + 16, v19, v126);
      *v122 = v123;
      v121 = a3;
    }

LABEL_118:

    return;
  }

  v129 = &v129 - v21;
  v130 = v22;
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v151 = v6;
  v136 = v23;
  while (1)
  {
    v27 = v25++;
    v137 = v26;
    if (v25 >= v24)
    {
      goto LABEL_32;
    }

    v146 = v24;
    v28 = *v142;
    a3 = *(v141 + 72);
    v144 = v25;
    v29 = v28 + a3 * v25;
    v4 = v29;
    v30 = v129;
    sub_22BE2B984(v29, v129, &qword_27D9073B0, &unk_22C275320);
    v31 = v130;
    sub_22BE2B984(v28 + a3 * v27, v130, &qword_27D9073B0, &unk_22C275320);
    v32 = v143;
    LODWORD(v145) = sub_22BE6D108(v30, v31);
    v143 = v32;
    if (v32)
    {
      sub_22BE33928(v31, &qword_27D9073B0, &unk_22C275320);
      sub_22BE33928(v30, &qword_27D9073B0, &unk_22C275320);
      goto LABEL_118;
    }

    sub_22BE33928(v31, &qword_27D9073B0, &unk_22C275320);
    sub_22BE33928(v30, &qword_27D9073B0, &unk_22C275320);
    v132 = v27;
    v33 = v27 + 2;
    v34 = v28 + a3 * (v27 + 2);
    v25 = v144;
    v35 = v146;
    v140 = a3;
    while (1)
    {
      v36 = v33;
      v37 = v25 + 1;
      if (v37 >= v35)
      {
        break;
      }

      v38 = v154;
      v153 = v33;
      sub_22BE2B984(v34, v154, &qword_27D9073B0, &unk_22C275320);
      v39 = v148;
      sub_22BE2B984(v4, v148, &qword_27D9073B0, &unk_22C275320);
      v144 = v37;
      v40 = v149;
      sub_22BE2B984(v38, v149, &qword_27D9073B0, &unk_22C275320);
      v152 = *(v6 + 48);
      sub_22C270A54();
      v42 = v41;
      v43 = sub_22C270AF4();
      v44 = *(*(v43 - 8) + 8);
      v44(v40, v43);
      v45 = v150;
      sub_22BE2B984(v39, v150, &qword_27D9073B0, &unk_22C275320);
      v46 = *(v151 + 48);
      sub_22C270A54();
      v48 = v47;
      v44(v45, v43);
      v6 = v151;
      sub_22BE33928(v45 + v46, &qword_27D907400, &unk_22C274F90);
      v49 = v40 + v152;
      v25 = v144;
      sub_22BE33928(v49, &qword_27D907400, &unk_22C274F90);
      v50 = v39;
      a3 = v140;
      sub_22BE33928(v50, &qword_27D9073B0, &unk_22C275320);
      sub_22BE33928(v154, &qword_27D9073B0, &unk_22C275320);
      v36 = v153;
      v35 = v146;
      v34 += a3;
      v4 += a3;
      v33 = v153 + 1;
      if (((v145 ^ (v48 >= v42)) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v25 = v35;
LABEL_10:
    if (v145)
    {
      v27 = v132;
      v26 = v137;
      if (v25 < v132)
      {
        goto LABEL_143;
      }

      if (v132 >= v25)
      {
        goto LABEL_32;
      }

      v51 = v35 >= v36 ? v36 : v35;
      v52 = a3 * (v51 - 1);
      v26 = v137;
      v53 = a3 * v51;
      v54 = v132 * a3;
      v55 = v25;
      do
      {
        if (v27 != --v55)
        {
          v56 = *v142;
          if (!*v142)
          {
            goto LABEL_148;
          }

          v4 = v56 + v54;
          sub_22BE73F60(v56 + v54, v136, &qword_27D9073B0, &unk_22C275320);
          v57 = v54 < v52 || v4 >= v56 + v53;
          if (v57)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v54 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_22BE73F60(v136, v56 + v52, &qword_27D9073B0, &unk_22C275320);
          v26 = v137;
        }

        ++v27;
        v52 -= a3;
        v53 -= a3;
        v54 += a3;
      }

      while (v27 < v55);
      v6 = v151;
    }

    else
    {
      v26 = v137;
    }

    v27 = v132;
LABEL_32:
    v58 = v142[1];
    if (v25 >= v58)
    {
      goto LABEL_51;
    }

    if (__OFSUB__(v25, v27))
    {
      goto LABEL_140;
    }

    if (v25 - v27 >= v131)
    {
LABEL_40:
      v26 = v137;
      goto LABEL_51;
    }

    v59 = v27 + v131;
    if (__OFADD__(v27, v131))
    {
      goto LABEL_141;
    }

    if (v59 >= v58)
    {
      v59 = v142[1];
    }

    if (v59 < v27)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v25 == v59)
    {
      goto LABEL_40;
    }

    v60 = *v142;
    v61 = *(v141 + 72);
    v62 = *v142 + v61 * (v25 - 1);
    v145 = -v61;
    v132 = v27;
    v63 = v27 - v25;
    v146 = v60;
    v134 = v61;
    v64 = v60 + v25 * v61;
    v135 = v59;
LABEL_42:
    v144 = v25;
    v138 = v64;
    v139 = v63;
    v65 = v63;
    v140 = v62;
    v66 = v62;
LABEL_43:
    v152 = v65;
    v67 = v154;
    sub_22BE2B984(v64, v154, &qword_27D9073B0, &unk_22C275320);
    v68 = v148;
    sub_22BE2B984(v66, v148, &qword_27D9073B0, &unk_22C275320);
    v4 = v149;
    sub_22BE2B984(v67, v149, &qword_27D9073B0, &unk_22C275320);
    v153 = *(v6 + 48);
    sub_22C270A54();
    v70 = v69;
    v71 = sub_22C270AF4();
    v72 = *(*(v71 - 8) + 8);
    v72(v4, v71);
    v73 = v150;
    sub_22BE2B984(v68, v150, &qword_27D9073B0, &unk_22C275320);
    v74 = *(v6 + 48);
    sub_22C270A54();
    v76 = v75;
    v72(v73, v71);
    a3 = &qword_27D907400;
    sub_22BE33928(v73 + v74, &qword_27D907400, &unk_22C274F90);
    sub_22BE33928(v4 + v153, &qword_27D907400, &unk_22C274F90);
    sub_22BE33928(v68, &qword_27D9073B0, &unk_22C275320);
    sub_22BE33928(v154, &qword_27D9073B0, &unk_22C275320);
    if (v76 < v70)
    {
      break;
    }

    v6 = v151;
LABEL_49:
    v25 = v144 + 1;
    v62 = v140 + v134;
    v63 = v139 - 1;
    v64 = v138 + v134;
    if (v144 + 1 != v135)
    {
      goto LABEL_42;
    }

    v25 = v135;
    v26 = v137;
    v27 = v132;
LABEL_51:
    if (v25 < v27)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v26 = v137;
    }

    else
    {
      sub_22BE6614C();
      v26 = v119;
    }

    v78 = v26[2];
    v79 = v78 + 1;
    if (v78 >= v26[3] >> 1)
    {
      sub_22BE6614C();
      v26 = v120;
    }

    v26[2] = v79;
    v4 = (v26 + 4);
    v80 = &v26[2 * v78 + 4];
    *v80 = v27;
    v80[1] = v25;
    v153 = *v133;
    if (!v153)
    {
      goto LABEL_149;
    }

    if (v78)
    {
      v6 = v151;
      while (1)
      {
        v81 = v79 - 1;
        v82 = (v4 + 16 * (v79 - 1));
        a3 = v26;
        v83 = &v26[2 * v79];
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v84 = v26[4];
          v85 = v26[5];
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_72:
          if (v87)
          {
            goto LABEL_126;
          }

          v99 = *v83;
          v98 = v83[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_129;
          }

          v103 = v82[1];
          v104 = v103 - *v82;
          if (__OFSUB__(v103, *v82))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v101, v104))
          {
            goto LABEL_134;
          }

          if (v101 + v104 >= v86)
          {
            if (v86 < v104)
            {
              v81 = v79 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v79 < 2)
        {
          goto LABEL_128;
        }

        v106 = *v83;
        v105 = v83[1];
        v94 = __OFSUB__(v105, v106);
        v101 = v105 - v106;
        v102 = v94;
LABEL_87:
        if (v102)
        {
          goto LABEL_131;
        }

        v108 = *v82;
        v107 = v82[1];
        v94 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v94)
        {
          goto LABEL_133;
        }

        if (v109 < v101)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v81 - 1 >= v79)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v142)
        {
          goto LABEL_146;
        }

        v113 = (v4 + 16 * (v81 - 1));
        v114 = *v113;
        v115 = v4 + 16 * v81;
        v116 = *(v115 + 8);
        v117 = v143;
        sub_22BE6FA9C(*v142 + *(v141 + 72) * *v113, *v142 + *(v141 + 72) * *v115, *v142 + *(v141 + 72) * v116, v153);
        v143 = v117;
        if (v117)
        {
          goto LABEL_118;
        }

        if (v116 < v114)
        {
          goto LABEL_121;
        }

        v118 = a3[2];
        if (v81 > v118)
        {
          goto LABEL_122;
        }

        *v113 = v114;
        v113[1] = v116;
        if (v81 >= v118)
        {
          goto LABEL_123;
        }

        v79 = v118 - 1;
        sub_22C115E84((v115 + 16), v118 - 1 - v81, (v4 + 16 * v81));
        v26 = a3;
        a3[2] = v118 - 1;
        v6 = v151;
        if (v118 <= 2)
        {
          goto LABEL_103;
        }
      }

      v88 = v4 + 16 * v79;
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_124;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_125;
      }

      v95 = v83[1];
      v96 = v95 - *v83;
      if (__OFSUB__(v95, *v83))
      {
        goto LABEL_127;
      }

      v94 = __OFADD__(v86, v96);
      v97 = v86 + v96;
      if (v94)
      {
        goto LABEL_130;
      }

      if (v97 >= v91)
      {
        v111 = *v82;
        v110 = v82[1];
        v94 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v94)
        {
          goto LABEL_138;
        }

        if (v86 < v112)
        {
          v81 = v79 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v151;
LABEL_103:
    v24 = v142[1];
    if (v25 >= v24)
    {
      goto LABEL_107;
    }
  }

  v77 = v152;
  if (v146)
  {
    a3 = v147;
    sub_22BE73F60(v64, v147, &qword_27D9073B0, &unk_22C275320);
    v6 = v151;
    swift_arrayInitWithTakeFrontToBack();
    sub_22BE73F60(a3, v66, &qword_27D9073B0, &unk_22C275320);
    v66 += v145;
    v64 += v145;
    v57 = __CFADD__(v77, 1);
    v65 = v77 + 1;
    if (v57)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

void sub_22BE6FA9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  MEMORY[0x28223BE20](v78);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v63 - v10;
  MEMORY[0x28223BE20](v11);
  v69 = &v63 - v12;
  MEMORY[0x28223BE20](v13);
  v74 = &v63 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v21 = v17 / v16;
  v81 = a1;
  v80 = a4;
  v22 = v19 / v16;
  if (v17 / v16 >= v19 / v16)
  {
    sub_22BE67D34(a2, v19 / v16, a4);
    v41 = a4 + v22 * v16;
    v42 = -v16;
    v43 = v41;
    v75 = a1;
    v76 = a4;
    v66 = -v16;
LABEL_36:
    v44 = a2 + v42;
    v64 = v43;
    v77 = a2;
    v67 = a2 + v42;
    while (1)
    {
      if (v41 <= a4)
      {
        v81 = a2;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v65 = v43;
      v72 = a3;
      v73 = a3 + v42;
      v45 = v41 + v42;
      v46 = v74;
      sub_22BE2B984(v41 + v42, v74, &qword_27D9073B0, &unk_22C275320);
      v47 = v69;
      sub_22BE2B984(v44, v69, &qword_27D9073B0, &unk_22C275320);
      v48 = v70;
      sub_22BE2B984(v46, v70, &qword_27D9073B0, &unk_22C275320);
      v49 = v78;
      v68 = *(v78 + 48);
      sub_22C270A54();
      v51 = v50;
      v52 = sub_22C270AF4();
      v53 = *(*(v52 - 8) + 8);
      v53(v48, v52);
      v54 = v71;
      sub_22BE2B984(v47, v71, &qword_27D9073B0, &unk_22C275320);
      v55 = *(v49 + 48);
      sub_22C270A54();
      v57 = v56;
      v53(v54, v52);
      sub_22BE33928(v54 + v55, &qword_27D907400, &unk_22C274F90);
      sub_22BE33928(v48 + v68, &qword_27D907400, &unk_22C274F90);
      sub_22BE33928(v47, &qword_27D9073B0, &unk_22C275320);
      sub_22BE33928(v74, &qword_27D9073B0, &unk_22C275320);
      if (v57 < v51)
      {
        a4 = v76;
        a3 = v73;
        if (v72 < v77 || v73 >= v77)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v43 = v65;
          v42 = v66;
          a1 = v75;
        }

        else
        {
          v43 = v65;
          v42 = v66;
          v61 = v67;
          a2 = v67;
          a1 = v75;
          if (v72 != v77)
          {
            v62 = v65;
            swift_arrayInitWithTakeBackToFront();
            a2 = v61;
            v43 = v62;
          }
        }

        goto LABEL_36;
      }

      v58 = v73;
      v59 = v72 < v41 || v73 >= v41;
      a4 = v76;
      a2 = v77;
      if (v59)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v58;
        v41 = v45;
        v43 = v45;
        a1 = v75;
        v42 = v66;
        v44 = v67;
      }

      else
      {
        v43 = v45;
        v18 = v41 == v72;
        a3 = v73;
        v41 = v45;
        a1 = v75;
        v42 = v66;
        v44 = v67;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v58;
          v41 = v45;
          v43 = v45;
        }
      }
    }

    v81 = a2;
    v43 = v64;
LABEL_58:
    v79 = v43;
  }

  else
  {
    sub_22BE67D34(a1, v17 / v16, a4);
    v67 = v16;
    v68 = a4 + v21 * v16;
    v79 = v68;
    v73 = a3;
    while (a4 < v68 && a2 < a3)
    {
      v75 = a1;
      v24 = v74;
      sub_22BE2B984(a2, v74, &qword_27D9073B0, &unk_22C275320);
      v25 = v69;
      sub_22BE2B984(a4, v69, &qword_27D9073B0, &unk_22C275320);
      v26 = v70;
      sub_22BE2B984(v24, v70, &qword_27D9073B0, &unk_22C275320);
      v77 = a2;
      v27 = v78;
      v72 = *(v78 + 48);
      sub_22C270A54();
      v29 = v28;
      v30 = sub_22C270AF4();
      v76 = a4;
      v31 = v30;
      v32 = *(*(v30 - 8) + 8);
      v32(v26, v30);
      v33 = v71;
      sub_22BE2B984(v25, v71, &qword_27D9073B0, &unk_22C275320);
      v34 = *(v27 + 48);
      sub_22C270A54();
      v36 = v35;
      v32(v33, v31);
      sub_22BE33928(v33 + v34, &qword_27D907400, &unk_22C274F90);
      sub_22BE33928(v26 + v72, &qword_27D907400, &unk_22C274F90);
      sub_22BE33928(v25, &qword_27D9073B0, &unk_22C275320);
      sub_22BE33928(v24, &qword_27D9073B0, &unk_22C275320);
      if (v36 >= v29)
      {
        a2 = v77;
        v37 = v67;
        a4 = v76 + v67;
        v38 = v75;
        if (v75 < v76 || v75 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v73;
        }

        else
        {
          a3 = v73;
          if (v75 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v80 = a4;
      }

      else
      {
        v37 = v67;
        a4 = v76;
        a2 = v77 + v67;
        v38 = v75;
        if (v75 < v77 || v75 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v73;
        }

        else
        {
          a3 = v73;
          if (v75 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v38 + v37;
      v81 = a1;
    }
  }

  sub_22C115CD0(&v81, &v80, &v79);
}

void sub_22BE70158()
{
  sub_22BE1AAF0();
  sub_22BE731D8(v1, v2, v3, v4, v5, v6, v7, v8);
  *v0 = v9;
}

uint64_t sub_22BE70264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE72398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE70C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE724B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE71064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE726B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BE71084()
{
  sub_22BE3D3C8();
  sub_22BE734EC(v1, v2, v3, v4, v5, v6, v7, sub_22BE68194);
  *v0 = v8;
}

void sub_22BE710CC()
{
  sub_22BE24F88();
  sub_22BE734EC(v1, v2, v3, v4, v5, v6, v7, sub_22BE681AC);
  *v0 = v8;
}

uint64_t sub_22BE7121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE72908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22BE7123C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE72A20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE7125C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE72C28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE7127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE72D38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE7129C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE72E48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE71300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE72F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BE71378()
{
  sub_22BE2B758();
  sub_22BE734EC(v1, v2, v3, v4, v5, v6, v7, sub_22BE682FC);
  *v0 = v8;
}

uint64_t sub_22BE71A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE732C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BE71BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BE733D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BE71F38()
{
  sub_22BE23668();
  if ((v3 & 1) == 0 || (sub_22BE1BD80(), v4 == v5))
  {
LABEL_6:
    sub_22BE187C0();
    if (v2)
    {
      sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
      v6 = sub_22BE2B740();
      sub_22BE2896C(v6);
      sub_22BE2560C(v7 / 16);
      if (v1)
      {
LABEL_8:
        v8 = sub_22BE3C78C();
        sub_22BE67CB0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BE22FB8();
  if (!v4)
  {
    sub_22BE17A08();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BE7202C()
{
  sub_22BE23668();
  if ((v3 & 1) == 0 || (sub_22BE1BD80(), v4 == v5))
  {
LABEL_6:
    sub_22BE187C0();
    if (v2)
    {
      sub_22BE5CE4C(&unk_27D9077C0, &qword_22C2752D8);
      v6 = sub_22BE2B740();
      sub_22BE2896C(v6);
      sub_22BE2560C(v7 / 16);
      if (v1)
      {
LABEL_8:
        v8 = sub_22BE3C78C();
        sub_22BE67CB0(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22BE5CE4C(&qword_27D907370, &qword_22C2752E0);
    sub_22BE19618(v11);
    goto LABEL_11;
  }

  sub_22BE22FB8();
  if (!v4)
  {
    sub_22BE17A08();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_22BE720F0()
{
  sub_22BE3C358();
  sub_22BE23668();
  if (v3)
  {
    sub_22BE1BD80();
    if (v4 != v5)
    {
      sub_22BE22FB8();
      if (v4)
      {
        goto LABEL_19;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE1C228();
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D907788, &qword_22C2757D0);
    v6 = sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
    sub_22BE17A18(v6);
    v8 = *(v7 + 72);
    v9 = sub_22BE18384();
    j__malloc_size(v9);
    if (v8)
    {
      sub_22BE38278();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        sub_22BE1A14C(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  sub_22BE5CE4C(&unk_27D907790, &unk_22C27FE90);
  sub_22BE187D0();
  sub_22BE19E14();
  if (v1)
  {
    v13 = sub_22BE1B908(v12);
    sub_22BE67CF0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE3AEF8();
  }

  sub_22BE267B8();
}

void sub_22BE72244()
{
  sub_22BE3C358();
  sub_22BE23668();
  if (v3)
  {
    sub_22BE1BD80();
    if (v4 != v5)
    {
      sub_22BE22FB8();
      if (v4)
      {
        goto LABEL_19;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE1C228();
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D907810, &unk_22C288170);
    v6 = sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
    sub_22BE17A18(v6);
    v8 = *(v7 + 72);
    v9 = sub_22BE18384();
    j__malloc_size(v9);
    if (v8)
    {
      sub_22BE38278();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        sub_22BE1A14C(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  sub_22BE5CE4C(&qword_27D9073B0, &unk_22C275320);
  sub_22BE187D0();
  sub_22BE19E14();
  if (v1)
  {
    v13 = sub_22BE1B908(v12);
    sub_22BE67D34(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE3AEF8();
  }

  sub_22BE267B8();
}

uint64_t sub_22BE72398(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907398, &unk_22C275810);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22BE69A34((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D907800, &unk_22C275310);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE724B0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907628, &qword_22C2756B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_22BE68018((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE7259C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D9077D0, &qword_22C2757F8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_22BE68148((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D9077D8, &qword_22C275800);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE726B4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D9077B8, &qword_22C2757F0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22BE68170((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22BE72834()
{
  sub_22BE23668();
  if ((v3 & 1) == 0 || (sub_22BE1BD80(), v4 == v5))
  {
LABEL_6:
    sub_22BE187C0();
    if (v2)
    {
      sub_22BE5CE4C(&qword_27D9077A8, &unk_22C2757E0);
      v6 = swift_allocObject();
      sub_22BE2896C(v6);
      sub_22BE2560C(v7 / 40);
      if (v1)
      {
LABEL_8:
        v8 = sub_22BE3C78C();
        sub_22BE1B838(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_22BE5CE4C(&qword_27D9077B0, &qword_22C288AC0);
    sub_22BE19618(v11);
    goto LABEL_11;
  }

  sub_22BE22FB8();
  if (!v4)
  {
    sub_22BE17A08();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_22BE72908(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907318, &unk_22C275260);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_22BE69A34((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&unk_27D907760, &unk_22C28EC00);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22BE72A20(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_22BE5CE4C(&unk_27D907740, &unk_22C28EB90);
  v10 = *(sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22BE5CE4C(&qword_27D907338, &qword_22C275290) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_22BE68254(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22BE72C28(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907720, &qword_22C275798);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_22BE68280((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D907728, &unk_22C2757A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE72D38(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907710, &qword_22C275248);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_22BE67CB0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D907310, &unk_22C275250);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE72E48(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&unk_27D907730, &qword_22C275270);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 2);
      if (v5)
      {
LABEL_13:
        sub_22BE682A0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 2 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE72F40(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907348, &qword_22C2752A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_22BE682C0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22BE73048()
{
  sub_22BE3C358();
  sub_22BE23668();
  if (v3)
  {
    sub_22BE1BD80();
    if (v4 != v5)
    {
      sub_22BE22FB8();
      if (v4)
      {
        goto LABEL_19;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE1C228();
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D9076F8, &unk_22C275780);
    v6 = sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
    sub_22BE17A18(v6);
    v8 = *(v7 + 72);
    v9 = sub_22BE18384();
    j__malloc_size(v9);
    if (v8)
    {
      sub_22BE38278();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        sub_22BE1A14C(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  sub_22BE5CE4C(&unk_27D907700, &qword_22C290BA0);
  sub_22BE187D0();
  sub_22BE19E14();
  if (v1)
  {
    v13 = sub_22BE1B908(v12);
    sub_22BE682E8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE3AEF8();
  }

  sub_22BE267B8();
}

void sub_22BE731D8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_22BE1BD80();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_22BE5CE4C(a5, a6);
      v16 = sub_22BE2B740();
      v17 = j__malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_22BE22FB8();
  if (!v12)
  {
    sub_22BE17A08();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22BE732C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D907578, &unk_22C275600);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_22BE67CD0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D907580, &qword_22C2B85E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE733D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22BE5CE4C(&qword_27D9075E8, &qword_22C275670);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_22BE68148((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_22BE5CE4C(&qword_27D9075F0, &qword_22C275678);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_22BE734EC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  if (a3)
  {
    sub_22BE1BD80();
    if (v13 != v14)
    {
      sub_22BE22FB8();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_22BE17A08();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_22BE5CE4C(a5, a6);
  v17 = a7(0);
  sub_22BE17A18(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  a7(0);
  sub_22BE187D0();
  sub_22BE19E14();
  if (a1)
  {
    a8(a4 + v25, v15, v22 + v25);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_22BE73690()
{
  sub_22BE3C358();
  sub_22BE23668();
  if (v3)
  {
    sub_22BE1BD80();
    if (v4 != v5)
    {
      sub_22BE22FB8();
      if (v4)
      {
        goto LABEL_19;
      }

      sub_22BE17A08();
    }
  }

  sub_22BE1C228();
  if (v2)
  {
    sub_22BE5CE4C(&qword_27D9076C8, &unk_22C275750);
    v6 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
    sub_22BE17A18(v6);
    v8 = *(v7 + 72);
    v9 = sub_22BE18384();
    j__malloc_size(v9);
    if (v8)
    {
      sub_22BE38278();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        sub_22BE1A14C(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  sub_22BE187D0();
  sub_22BE19E14();
  if (v1)
  {
    v13 = sub_22BE1B908(v12);
    sub_22BE68680(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BE3AEF8();
  }

  sub_22BE267B8();
}

void sub_22BE737E4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_22BE1BD80();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_22BE5CE4C(a5, a6);
      v15 = sub_22BE2B740();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 4);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 4 * v13);
    goto LABEL_15;
  }

  sub_22BE22FB8();
  if (!v11)
  {
    sub_22BE17A08();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_22BE738C8(uint64_t a1, void *a2)
{
  sub_22BE5CE4C(&unk_27D907420, &qword_22C2753A8);
  v3 = sub_22C273484();

  [a2 setEntityFilters_];
}

uint64_t sub_22BE73948(void *a1)
{
  v1 = [a1 allMetaContent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_22BE5CE4C(&qword_27D907828, qword_22C275830);
  v3 = sub_22C273494();

  return v3;
}

uint64_t sub_22BE739B4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_22C273204();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE73A80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22C273CE4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22BE69A28();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_22BE45D84(0, &qword_27D9077E0, 0x277CCA9B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22BE74364(&unk_27D9077F0, &qword_27D9077E8, &qword_22C275808);
        for (i = 0; i != v7; ++i)
        {
          sub_22BE5CE4C(&qword_27D9077E8, &qword_22C275808);
          v9 = sub_22C25F09C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE73C04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_22C273CE4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_22BE69A28();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_22BE45D84(0, &qword_27D9073A0, 0x277CD3E98);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_22BE74364(&qword_27D907448, &qword_27D907440, &qword_22C2754D0);
        for (i = 0; i != v7; ++i)
        {
          sub_22BE5CE4C(&qword_27D907440, &qword_22C2754D0);
          v9 = sub_22C25F110(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BE73D88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a6;
  v26 = a7;
  v14 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v25 - v19;
  (*(v14 + 32))(&v25 - v19, v21, a9, v18);
  type metadata accessor for SiriEntityMatcherShim(0);
  v22 = swift_allocObject();
  (*(v14 + 16))(v16, v20, a9);
  v23 = sub_22BE743B8(a1, a2 & 1, v16, a4, a5, v25, v26, v22, a9, a10);
  (*(v14 + 8))(v20, a9);
  return v23;
}

uint64_t sub_22BE73F10(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22BE73F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BE190C4(a1, a2, a3, a4);
  sub_22BE18000();
  v5 = sub_22BE19454();
  v6(v5);
  return v4;
}

uint64_t sub_22BE73FDC(uint64_t a1)
{
  result = sub_22C270F94();
  if (v2 <= 0x3F)
  {
    result = sub_22C26E244();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriEntityMatcherShim.matchEntitySpans(query:)()
{
  v5 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = sub_22BE25888(v2);

  return v5(v3);
}

uint64_t sub_22BE74224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_22BE2589C();

  return v6(a1);
}

uint64_t sub_22BE7431C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22BE74364(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22BE743B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = (a8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_spanMatcher);
  v18[3] = a9;
  v18[4] = a10;
  v19 = sub_22BE62524(v18);
  (*(*(a9 - 8) + 32))(v19, a3, a9);
  v20 = a8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_maxEntityCount;
  *v20 = a1;
  *(v20 + 8) = a2 & 1;
  v21 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_locale;
  v22 = sub_22C26E244();
  (*(*(v22 - 8) + 32))(a8 + v21, a4, v22);
  v23 = OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_matcherType;
  v24 = sub_22C270F94();
  (*(*(v24 - 8) + 32))(a8 + v23, a5, v24);
  *(a8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_tokenizer) = a6;
  *(a8 + OBJC_IVAR____TtC30IntelligenceFlowPlannerSupport21SiriEntityMatcherShim_selectedEntityTypes) = a7;
  return a8;
}

uint64_t sub_22BE74518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22BE74560()
{
  result = qword_27D907838;
  if (!qword_27D907838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907838);
  }

  return result;
}

uint64_t sub_22BE745B4(uint64_t a1, int a2)
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

uint64_t sub_22BE745F4(uint64_t result, int a2, int a3)
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

unint64_t sub_22BE74654()
{
  result = qword_28107A508[0];
  if (!qword_28107A508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28107A508);
  }

  return result;
}

uint64_t sub_22BE746AC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v241[2] = a4;
  v242 = a5;
  v241[1] = a3;
  v250 = a2;
  v251 = a6;
  v247 = a1;
  v8 = sub_22BE5CE4C(&qword_27D907850, &qword_22C275978);
  MEMORY[0x28223BE20](v8 - 8);
  v241[0] = v241 - v9;
  sub_22C272984();
  sub_22BE179D8();
  v243 = v11;
  v244 = v10;
  MEMORY[0x28223BE20](v10);
  sub_22BE17A44();
  v245 = v12;
  v13 = sub_22BE5CE4C(&qword_27D907170, &unk_22C275980);
  MEMORY[0x28223BE20](v13 - 8);
  v246 = v241 - v14;
  sub_22C2720A4();
  sub_22BE179D8();
  v248 = v15;
  v249 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = v241 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v241 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v241 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v241 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v241 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = v241 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v241 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v241 - v38;
  *&v41 = MEMORY[0x28223BE20](v40).n128_u64[0];
  v43 = v241 - v42;
  v44 = [v7 itemType];
  switch(v44)
  {
    case 0x1E0Au:
      v162 = [v7 content];
      objc_opt_self();
      v163 = swift_dynamicCastObjCClass();
      if (!v163)
      {

        sub_22C271AE4();
        v231 = sub_22C272084();
        v232 = sub_22C2737A4();
        if (os_log_type_enabled(v231, v232))
        {
          v233 = sub_22BE202F8();
          *v233 = 0;
          _os_log_impl(&dword_22BE15000, v231, v232, "[SiriEntityMatcherShim] CCItemType_Home entity is missing content and cannot be converted to a TypedValue.entityIdentifier, skipping.", v233, 2u);
          sub_22BE17A28();
        }

        sub_22BE190E4();
        v191 = v27;
        goto LABEL_71;
      }

      v164 = sub_22BE76600([v163 entityType]);
      v166 = v251;
      if (!v165)
      {
        sub_22C271AE4();
        v234 = sub_22C272084();
        v235 = sub_22C2737A4();
        if (os_log_type_enabled(v234, v235))
        {
          *sub_22BE202F8() = 0;
          sub_22BE22FC4();
          _os_log_impl(v236, v237, v238, v239, v240, 2u);
          sub_22BE17A28();
        }

        (*(v249 + 8))(v30, v248);
        sub_22C272874();
        goto LABEL_72;
      }

      v167 = v164;
      v168 = v165;
      sub_22C2726F4();
      v169 = swift_allocBox();
      v60 = v170;
      sub_22BE1B2B0();
      v171 = swift_allocObject();
      if (qword_27D906330 != -1)
      {
        swift_once();
      }

      v172 = *algn_27D9BA598;
      v171[2] = qword_27D9BA590;
      v171[3] = v172;
      v171[4] = v167;
      v171[5] = v168;
      v173 = v245;
      *v245 = v171;
      sub_22BE3E49C();
      v174(v173);
      sub_22C272B84();
      sub_22BE1A140();
      sub_22BE19DC4(v175, v176, v177, v178);

      sub_22C2726E4();

      *v166 = v169;
      goto LABEL_43;
    case 0xF789u:
      v104 = [v7 content];
      v105 = objc_opt_self();
      v106 = sub_22BE38288(v105);
      if (!v106 || (v107 = sub_22BE69924(v106, &selRef_vocabularyIdentifier), !v108))
      {

        sub_22C271AE4();
        v201 = sub_22C272084();
        v202 = sub_22C2737A4();
        if (os_log_type_enabled(v201, v202))
        {
          *sub_22BE202F8() = 0;
          sub_22BE1BD90();
          _os_log_impl(v203, v204, v205, v206, v207, 2u);
          sub_22BE183C8();
        }

        (*(v249 + 8))(v21, v248);
        sub_22C272874();
        goto LABEL_72;
      }

      v60 = v107;
      sub_22C2726F4();
      v109 = swift_allocBox();
      sub_22BE1B2B0();
      v110 = swift_allocObject();
      v111 = v251;
      if (qword_27D906340 != -1)
      {
        swift_once();
      }

      v112 = unk_27D907860;
      *(v110 + 16) = qword_27D907858;
      *(v110 + 24) = v112;
      strcpy((v110 + 32), "smsGroupName");
      *(v110 + 45) = 0;
      *(v110 + 46) = -5120;
      v113 = v245;
      *v245 = v110;
      sub_22BE3E49C();
      v114(v113);
      sub_22C272B84();
      sub_22BE1A140();
      sub_22BE19DC4(v115, v116, v117, v118);

      sub_22C2726E4();

      *v111 = v109;
      goto LABEL_43;
    case 0x69F2u:
      if (!*(v242 + 16) || (v146 = sub_22BE76644(*(v242 + 32)), !v147))
      {
        sub_22C271AE4();
        v218 = sub_22C272084();
        v219 = sub_22C2737A4();
        if (os_log_type_enabled(v218, v219))
        {
          v220 = sub_22BE202F8();
          *v220 = 0;
          _os_log_impl(&dword_22BE15000, v218, v219, "[SiriEntityMatcherShim] couldn't find corresponding type name for given CCItemType_FindMyDevice entity.", v220, 2u);
          sub_22BE17A28();
        }

        sub_22BE190E4();
        v191 = v24;
        goto LABEL_71;
      }

      v148 = v146;
      v149 = v147;
      sub_22C2726F4();
      v150 = swift_allocBox();
      v60 = v151;
      sub_22BE1B2B0();
      v152 = swift_allocObject();
      v153 = v251;
      if (qword_27D906338 != -1)
      {
        swift_once();
      }

      v154 = *algn_27D9BA5A8;
      v152[2] = qword_27D9BA5A0;
      v152[3] = v154;
      v152[4] = v148;
      v152[5] = v149;
      v155 = v245;
      *v245 = v152;
      sub_22BE3E49C();
      v156(v155);
      sub_22C272B84();
      sub_22BE1A140();
      sub_22BE19DC4(v157, v158, v159, v160);

      sub_22C2726E4();
      *v153 = v150;
      sub_22C272874();
      sub_22BE18C18();
      sub_22BE354D0();
      v161();
LABEL_44:
      sub_22BE187DC();
      v57 = v60;
      return sub_22BE19DC4(v54, v55, v56, v57);
    case 0x7786u:
      v129 = [v7 content];
      v130 = objc_opt_self();
      v131 = sub_22BE38288(v130);
      if (v131 && (v132 = v131, sub_22BE69924(v131, &selRef_vocabularyString), v133))
      {
        sub_22BE69924(v132, &selRef_vocabularyIdentifier);
        if (v134)
        {
          v60 = sub_22C272804();
          v135 = swift_allocBox();
          v137 = v136;
          sub_22C272B64();
          sub_22BE1A140();
          sub_22BE19DC4(v138, v139, v140, v141);
          sub_22C272B74();
          sub_22C272B84();
          sub_22BE187DC();
          sub_22BE19DC4(v142, v143, v144, v145);
          sub_22C2727F4();

          (*(*(v60 - 8) + 104))(v137, *MEMORY[0x277D729C8], v60);
          *v251 = v135;
          goto LABEL_43;
        }
      }

      else
      {
      }

      sub_22C271AE4();
      v208 = v250;

      v209 = sub_22C272084();
      sub_22C2737A4();

      if (sub_22BE1A15C())
      {
        sub_22BE19E2C();
        v210 = sub_22BE1B918();
        v252 = v210;
        v211 = sub_22BE3AF18(4.8149e-34);
        *(v36 + 4) = sub_22BE61C88(v211, v208, v212);
        sub_22BE1BD90();
        _os_log_impl(v213, v214, v215, v216, v217, 0xCu);
        sub_22BE26B64(v210);
        sub_22BE17A28();
        sub_22BE183C8();
      }

      sub_22BE190E4();
      v191 = v33;
      goto LABEL_71;
    case 0x8E52u:
      v59 = sub_22C272804();
      v60 = swift_allocBox();
      v62 = v61;
      sub_22C272B84();
      sub_22BE1A140();
      sub_22BE19DC4(v63, v64, v65, v66);

      sub_22C272774();
      (*(*(v59 - 8) + 104))(v62, *MEMORY[0x277D72970], v59);
      *v251 = v60;
LABEL_43:
      sub_22C272874();
      sub_22BE18C18();
      sub_22BE354D0();
      v179();
      goto LABEL_44;
    case 0xA673u:
      v85 = [v7 content];
      v86 = objc_opt_self();
      v87 = sub_22BE38288(v86);
      if (v87 && (v88 = sub_22BE69924(v87, &selRef_typeIdentifier), v89))
      {
        v90 = v88;
        v91 = v89;
        v92 = sub_22BE69924(v7, &selRef_sourceIdentifier);
        if (v93)
        {
          v94 = v92;
          v95 = v93;
          sub_22C2726D4();
          v96 = swift_allocBox();
          sub_22BE1B2B0();
          v97 = swift_allocObject();
          v97[2] = v94;
          v97[3] = v95;
          v97[4] = v90;
          v97[5] = v91;
          v98 = v245;
          *v245 = v97;
          sub_22BE3E49C();
          v99(v98);
          sub_22C272B84();
          v60 = v246;
          sub_22BE1A140();
          sub_22BE19DC4(v100, v101, v102, v103);

          sub_22C2726C4();

          *v251 = v96;
          goto LABEL_43;
        }
      }

      else
      {
      }

      sub_22C271AE4();
      v192 = v250;

      v193 = sub_22C272084();
      sub_22C2737A4();

      if (sub_22BE1A15C())
      {
        v194 = sub_22BE19E2C();
        v195 = swift_slowAlloc();
        v252 = v195;
        *v194 = 136315138;
        *(v194 + 4) = sub_22BE61C88(v247, v192, &v252);
        sub_22BE22FC4();
        _os_log_impl(v196, v197, v198, v199, v200, 0xCu);
        sub_22BE26B64(v195);
        sub_22BE183C8();
        sub_22BE17A28();
      }

      sub_22BE190E4();
      v191 = v36;
      goto LABEL_71;
    case 0xB8EDu:
      v67 = [v7 content];
      v68 = objc_opt_self();
      v69 = sub_22BE38288(v68);
      if (v69 && (v70 = sub_22BE69924(v69, &selRef_typeIdentifier), v71))
      {
        v36 = v70;
        v72 = v71;
        v73 = sub_22BE69924(v7, &selRef_sourceIdentifier);
        if (v74)
        {
          v75 = v73;
          v76 = v74;
          sub_22C2726F4();
          v77 = swift_allocBox();
          sub_22BE1B2B0();
          v78 = swift_allocObject();
          v78[2] = v75;
          v78[3] = v76;
          v78[4] = v36;
          v78[5] = v72;
          v79 = v245;
          *v245 = v78;
          sub_22BE3E49C();
          v80(v79);
          sub_22C272B84();
          sub_22BE1A140();
          sub_22BE19DC4(v81, v82, v83, v84);
          v60 = v250;

          sub_22C2726E4();

          *v251 = v77;
          goto LABEL_43;
        }
      }

      else
      {
      }

      v180 = v250;
      sub_22C271AE4();

      v181 = sub_22C272084();
      sub_22C2737A4();

      if (sub_22BE1A15C())
      {
        sub_22BE19E2C();
        v182 = sub_22BE1B918();
        v252 = v182;
        v183 = sub_22BE3AF18(4.8149e-34);
        *(v36 + 4) = sub_22BE61C88(v183, v180, v184);
        sub_22BE1BD90();
        _os_log_impl(v185, v186, v187, v188, v189, 0xCu);
        sub_22BE26B64(v182);
        sub_22BE183C8();
        sub_22BE183C8();
      }

      sub_22BE190E4();
      v191 = v39;
      goto LABEL_71;
  }

  if (v44 != 19668)
  {
    sub_22C271AE4();
    v119 = v250;

    v120 = v7;
    v121 = sub_22C272084();
    sub_22C273794();

    if (sub_22BE1A15C())
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v252 = v123;
      *v122 = 136315394;
      *(v122 + 4) = sub_22BE61C88(v247, v119, &v252);
      *(v122 + 12) = 512;
      *(v122 + 14) = [v120 itemType];

      sub_22BE22FC4();
      _os_log_impl(v124, v125, v126, v127, v128, 0x10u);
      sub_22BE26B64(v123);
      sub_22BE183C8();
      sub_22BE17A28();
    }

    else
    {
    }

    (*(v249 + 8))(v18, v248);
    sub_22C272874();
    goto LABEL_72;
  }

  v45 = [v7 content];
  v46 = objc_opt_self();
  if (!sub_22BE38288(v46))
  {

    sub_22C271AE4();
    v221 = v250;

    v222 = sub_22C272084();
    sub_22C2737A4();

    if (sub_22BE1A15C())
    {
      sub_22BE19E2C();
      v223 = sub_22BE1B918();
      v252 = v223;
      v224 = sub_22BE3AF18(4.8149e-34);
      *(v36 + 4) = sub_22BE61C88(v224, v221, v225);
      sub_22BE1BD90();
      _os_log_impl(v226, v227, v228, v229, v230, 0xCu);
      sub_22BE26B64(v223);
      sub_22BE17A28();
      sub_22BE183C8();
    }

    sub_22BE190E4();
    v191 = v43;
LABEL_71:
    v190(v191, v248);
    sub_22C272874();
LABEL_72:
    sub_22BE1A140();
    return sub_22BE19DC4(v54, v55, v56, v57);
  }

  v47._countAndFlagsBits = v247;
  v47._object = v250;
  isa = CCContactContent.getAsINPerson(contactId:)(v47).super.isa;
  v49 = sub_22C272804();
  v50 = swift_allocBox();
  v52 = v51;
  sub_22C2727A4();

  (*(*(v49 - 8) + 104))(v52, *MEMORY[0x277D729B0], v49);
  *v251 = v50;
  sub_22C272874();
  sub_22BE18C18();
  sub_22BE354D0();
  v53();
  sub_22BE187DC();
  v57 = isa;

  return sub_22BE19DC4(v54, v55, v56, v57);
}

INPerson __swiftcall CCContactContent.getAsINPerson(contactId:)(Swift::String contactId)
{
  v2 = v1;
  v74 = contactId;
  v3 = sub_22BE5CE4C(&qword_27D907848, &qword_22C2758F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v72 - v7;
  v9 = sub_22C26DE64();
  sub_22BE179D8();
  v73 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v85 = v12;
  v13 = sub_22BE69924(v1, &selRef_namePrefix);
  sub_22BE69924(v1, &selRef_givenName);
  v15 = v14;
  v16 = sub_22BE69924(v1, &selRef_middleName);
  v82 = v17;
  v83 = v16;
  v18 = sub_22BE69924(v1, &selRef_familyName);
  v80 = v19;
  v81 = v18;
  v20 = sub_22BE69924(v1, &selRef_nameSuffix);
  v78 = v21;
  v79 = v20;
  v22 = sub_22BE69924(v1, &selRef_nickname);
  v76 = v23;
  v77 = v22;
  if (sub_22BE76190())
  {
    v24 = sub_22BE69924(v1, &selRef_phoneticGivenName);
    v72[1] = v25;
    v72[2] = v24;
    v72[0] = sub_22BE69924(v1, &selRef_phoneticMiddleName);
    v75 = v13;
    sub_22BE69924(v1, &selRef_phoneticFamilyName);
    v72[3] = v15;
    sub_22BE1A140();
    sub_22BE19DC4(v26, v27, v28, v9);
    sub_22C26DDF4();
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v75 = v9;
  sub_22BE19DC4(v8, v29, 1, v9);
  sub_22C26DDF4();
  v30 = MEMORY[0x277D84F90];
  v86 = MEMORY[0x277D84F90];
  v31 = sub_22BE76588(v1, &selRef_phoneNumbers, &qword_28106DB10, 0x277D20F70);
  v84 = v5;
  if (v31)
  {
    v32 = v31;
    v83 = v1;
    v33 = sub_22BE69A28();
    v34 = 0;
    v35 = v32 & 0xC000000000000001;
    while (1)
    {
      if (v33 == v34)
      {

        v2 = v83;
        v5 = v84;
        goto LABEL_16;
      }

      if (v35)
      {
        v36 = MEMORY[0x2318AC200](v34, v32);
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v36 = *(v32 + 8 * v34 + 32);
      }

      v37 = v36;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      sub_22BE76250(&selRef_stringValue, 2);
      MEMORY[0x2318ABB70]();
      v5 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v30 = v86;

      ++v34;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
LABEL_16:
    v38 = sub_22BE76588(v2, &selRef_emailAddresses, &qword_28106DB00, 0x277D20F58);
    if (v38)
    {
      v32 = v38;
      v39 = sub_22BE69A28();
      v40 = 0;
      v5 = (v32 & 0xC000000000000001);
      v35 = v32 & 0xFFFFFFFFFFFFFF8;
      while (v39 != v40)
      {
        if (v5)
        {
          v41 = MEMORY[0x2318AC200](v40, v32);
        }

        else
        {
          if (v40 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v41 = *(v32 + 8 * v40 + 32);
        }

        v42 = v41;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_48;
        }

        sub_22BE76250(&selRef_email, 1);
        MEMORY[0x2318ABB70]();
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22C2734F4();
        }

        sub_22C273554();
        v30 = v86;

        ++v40;
      }

      v5 = v84;
    }

    v43 = sub_22BE69A28();
    v35 = v75;
    if (!v43)
    {
      v44 = objc_allocWithZone(MEMORY[0x277CD3E98]);
      sub_22BE762F0(0, 0, 0, v45);
      MEMORY[0x2318ABB70]();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22C2734F4();
      }

      sub_22C273554();
      v30 = v86;
    }

    v32 = v30 & 0xC000000000000001;
    sub_22BE69A38();
    if ((v30 & 0xC000000000000001) == 0)
    {
      v46 = *(v30 + 32);
      goto LABEL_34;
    }
  }

  v46 = MEMORY[0x2318AC200](0, v30);
LABEL_34:
  v47 = v46;
  if (sub_22BE66128(v30) < 2)
  {
    v52 = 0;
    goto LABEL_60;
  }

  v48 = sub_22BE69A28();
  if (v48 < 1)
  {
    __break(1u);
    goto LABEL_52;
  }

  v49 = v48;
  sub_22BE76530(1, v30);
  sub_22BE76530(v49, v30);
  if (!v32 || v49 == 1)
  {
  }

  else
  {
    sub_22BE45D84(0, &qword_27D9073A0, 0x277CD3E98);

    v50 = 1;
    do
    {
      v51 = v50 + 1;
      sub_22C273AE4();
      v50 = v51;
    }

    while (v49 != v51);
  }

  if (v30 >> 62)
  {
LABEL_52:

    v53 = sub_22C273CF4();
    v54 = v58;
    v55 = v59;
    v56 = v60;
    if ((v60 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_53;
  }

  v53 = v30 & 0xFFFFFFFFFFFFFF8;
  v54 = (v30 & 0xFFFFFFFFFFFFFF8) + 32;
  v55 = 1;
  v56 = (2 * v49) | 1;
  if ((v56 & 1) == 0)
  {
LABEL_45:
    sub_22BE68B50(v53, v54, v55, v56);
    v52 = v57;
LABEL_59:
    swift_unknownObjectRelease();
    goto LABEL_60;
  }

LABEL_53:
  sub_22C274064();
  swift_unknownObjectRetain_n();
  v61 = swift_dynamicCastClass();
  if (!v61)
  {
    swift_unknownObjectRelease();
    v61 = MEMORY[0x277D84F90];
  }

  v62 = *(v61 + 16);

  if (__OFSUB__(v56 >> 1, v55))
  {
    __break(1u);
    goto LABEL_62;
  }

  if (v62 != (v56 >> 1) - v55)
  {
LABEL_62:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  v52 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v52)
  {
    v52 = MEMORY[0x277D84F90];
    goto LABEL_59;
  }

LABEL_60:
  v63 = v73;
  v64 = v85;
  (*(v73 + 16))(v5, v85, v35);
  sub_22BE187DC();
  sub_22BE19DC4(v65, v66, v67, v35);
  v68 = objc_allocWithZone(MEMORY[0x277CD3E90]);
  object = v74._object;

  v70 = sub_22BE7635C(v47, v5, 0, 0, 0, v74._countAndFlagsBits, object, 0, 0, v52, 0);
  (*(v63 + 8))(v64, v35);

  return v70;
}

BOOL sub_22BE76190()
{
  sub_22BE69924(v0, &selRef_phoneticGivenName);
  if (v1)
  {

    sub_22BE23BB4();
    if (v2)
    {
      return 1;
    }
  }

  sub_22BE69924(v0, &selRef_phoneticMiddleName);
  if (v3)
  {

    sub_22BE23BB4();
    if (v4)
    {
      return 1;
    }
  }

  v5 = sub_22BE69924(v0, &selRef_phoneticFamilyName);
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = v6;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

id sub_22BE76250(SEL *a1, uint64_t a2)
{
  sub_22BE69924(v2, &selRef_label);
  if (v5)
  {
    v6 = sub_22C272FF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_22BE69924(v2, a1);
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  return sub_22C25ED7C(v7, v9, a2, v6, v11);
}

id sub_22BE762F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v6 = sub_22C272FF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 initWithValue:v6 type:a3];

  return v7;
}

id sub_22BE7635C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = sub_22C26DE64();
  v17 = 0;
  if (sub_22BE1AEA8(a2, 1, v16) != 1)
  {
    v17 = sub_22C26DE24();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_22C272FF4();
  }

  else
  {
    v18 = 0;
  }

  if (a7)
  {
    v19 = sub_22C272FF4();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_22C272FF4();
  }

  else
  {
    v20 = 0;
  }

  if (a10)
  {
    sub_22BE45D84(0, &qword_27D9073A0, 0x277CD3E98);
    v21 = sub_22C273484();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20 aliases:v21 suggestionType:a11];

  return v22;
}

uint64_t sub_22BE76530(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_22C273CE4();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_22BE76588(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_22BE45D84(0, a3, a4);
  v8 = sub_22C273494();

  return v8;
}

uint64_t sub_22BE76600(int a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return sub_22C273024();
  }
}

unint64_t sub_22BE76644(unsigned __int16 a1)
{
  if (a1 == 27126)
  {
    v1 = 0xD000000000000010;
  }

  else
  {
    v1 = 0;
  }

  if (a1 - 27131 < 2 || a1 == 27127)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22BE766D0()
{
  result = sub_22C273024();
  qword_27D9BA590 = result;
  *algn_27D9BA598 = v1;
  return result;
}

uint64_t sub_22BE76700()
{
  result = sub_22C273024();
  qword_27D9BA5A0 = result;
  *algn_27D9BA5A8 = v1;
  return result;
}

uint64_t sub_22BE76730()
{
  result = sub_22C273024();
  qword_27D907858 = result;
  unk_27D907860 = v1;
  return result;
}

uint64_t static EntitySpanMatcherTypeBundleNames.messagesBundleName.getter()
{
  if (qword_27D906340 != -1)
  {
    swift_once();
  }

  v0 = qword_27D907858;

  return v0;
}

_BYTE *sub_22BE767D8(_BYTE *result, int a2, int a3)
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

uint64_t EntitySpanMatchService.__allocating_init(matcherRegistry:maxMatchTasks:)()
{
  sub_22BE1A8A8();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = v1;
  *(v2 + 120) = v0;
  return v2;
}

uint64_t EntitySpanMatchService.init(matcherRegistry:maxMatchTasks:)()
{
  sub_22BE1A8A8();
  swift_defaultActor_initialize();
  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return v1;
}

uint64_t sub_22BE7690C()
{
  sub_22BE183F0();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_22C270F94();
  v1[22] = v5;
  sub_22BE17A18(v5);
  v1[23] = v6;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v7 = sub_22C2720A4();
  v1[26] = v7;
  sub_22BE17A18(v7);
  v1[27] = v8;
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE76A24, v0, 0);
}

uint64_t sub_22BE76A24(uint64_t a1)
{
  sub_22C271AE4();

  v2 = sub_22C272084();
  v3 = sub_22C273794();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 216);
  v5 = *(v1 + 224);
  v7 = *(v1 + 208);
  if (v4)
  {
    v9 = *(v1 + 144);
    v8 = *(v1 + 152);
    v10 = sub_22BE19E2C();
    v11 = sub_22BE25618();
    v46 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_22BE61C88(v9, v8, &v46);
    _os_log_impl(&dword_22BE15000, v2, v3, "[EntitySpanMatchService] start finding entity matches for %s", v10, 0xCu);
    sub_22BE26B64(v11);
    sub_22BE183C8();
    sub_22BE183C8();
  }

  (*(v6 + 8))(v5, v7);
  v12 = *(v1 + 160);
  v13 = *(v1 + 168);
  swift_beginAccess();
  v14 = *(v13 + 112);
  *(v1 + 120) = v14;
  if (v12)
  {
    v15 = *(v1 + 184);
    v16 = *(v1 + 160);
    v43 = *(v14 + 16);
    v41 = v14 + 32;

    v17 = 0;
    v40 = MEMORY[0x277D84F90];
    for (i = v14; ; v14 = i)
    {
LABEL_5:
      if (v17 == v43)
      {

        v31 = v1 + 120;
        v14 = v40;
        *(v1 + 120) = v40;
        goto LABEL_19;
      }

      if (v17 >= *(v14 + 16))
      {
        break;
      }

      v44 = v17 + 1;
      sub_22BE26B00(v41 + 40 * v17, v1 + 16);
      sub_22BE1BD3C((v1 + 16), *(v1 + 40));
      sub_22C271924();
      if (*(v16 + 16))
      {
        sub_22BE187E8();
        sub_22BE79708(&qword_27D907880, 255, v18, MEMORY[0x277D1EE98]);
        v19 = sub_22C272ED4();
        v20 = ~(-1 << *(v16 + 32));
        while (1)
        {
          v21 = v19 & v20;
          if (((*(v16 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {
            break;
          }

          v22 = *(v1 + 192);
          v23 = *(v1 + 176);
          (*(v15 + 16))(v22, *(v16 + 48) + *(v15 + 72) * v21, v23);
          sub_22BE187E8();
          sub_22BE79708(&qword_27D907888, 255, v24, MEMORY[0x277D1EEA0]);
          v25 = sub_22C272FD4();
          v26 = *(v15 + 8);
          v26(v22, v23);
          v19 = v21 + 1;
          if (v25)
          {
            v26(*(v1 + 200), *(v1 + 176));
            sub_22BE49224((v1 + 16), v1 + 56);
            v27 = v40;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46 = v40;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22BE70264(0, *(v40 + 16) + 1, 1);
              v27 = v46;
            }

            v14 = i;
            v30 = *(v27 + 16);
            v29 = *(v27 + 24);
            if (v30 >= v29 >> 1)
            {
              sub_22BE70264(v29 > 1, v30 + 1, 1);
              v27 = v46;
            }

            *(v27 + 16) = v30 + 1;
            v40 = v27;
            sub_22BE49224((v1 + 56), v27 + 40 * v30 + 32);
            v17 = v44;
            goto LABEL_5;
          }
        }
      }

      (*(v15 + 8))(*(v1 + 200), *(v1 + 176));
      sub_22BE26B64((v1 + 16));
      v17 = v44;
    }

    __break(1u);
  }

  else
  {

    v31 = v1 + 120;
LABEL_19:
    v32 = *(v1 + 168);
    v34 = *(v1 + 144);
    v33 = *(v1 + 152);
    *(v1 + 128) = MEMORY[0x277D84F90];
    if (*(v14 + 16) >= *(v32 + 120))
    {
      v35 = *(v32 + 120);
    }

    else
    {
      v35 = *(v14 + 16);
    }

    *(v1 + 136) = v35;
    sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
    sub_22BE79708(&qword_281079E18, v36, type metadata accessor for EntitySpanMatchService, &protocol conformance descriptor for EntitySpanMatchService);
    v37 = swift_task_alloc();
    *(v1 + 232) = v37;
    v37[2] = v35;
    v37[3] = v31;
    v37[4] = v34;
    v37[5] = v33;
    v37[6] = v1 + 136;
    v37[7] = v1 + 128;
    v38 = swift_task_alloc();
    *(v1 + 240) = v38;
    *v38 = v1;
    v38[1] = sub_22BE76F54;
  }

  return MEMORY[0x282200740]();
}

uint64_t sub_22BE76F54()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  v5 = *v1;
  sub_22BE18C2C();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    v7 = *(v3 + 168);
    v8 = sub_22BE770F0;
  }

  else
  {
    v9 = *(v3 + 168);

    v8 = sub_22BE77064;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22BE77064()
{
  sub_22BE183FC();
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22BE770F0()
{
  sub_22BE183FC();

  sub_22BE17A94();

  return v0();
}

uint64_t sub_22BE77180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = a7;
  v8[44] = a8;
  v8[41] = a5;
  v8[42] = a6;
  v8[39] = a3;
  v8[40] = a4;
  v8[38] = a2;
  sub_22BE5CE4C(&qword_27D9078A0, &qword_22C275B90);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v9 = sub_22C270F94();
  v8[49] = v9;
  v10 = *(v9 - 8);
  v8[50] = v10;
  v8[51] = *(v10 + 64);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v11 = sub_22BE5CE4C(&qword_27D9078A8, &qword_22C275B98);
  v8[55] = v11;
  v8[56] = *(v11 - 8);
  v8[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE77330, 0, 0);
}

uint64_t sub_22BE77330(uint64_t a1)
{
  v2 = *(v1 + 312);
  if (v2 < 0)
  {
LABEL_20:
    __break(1u);
    return MEMORY[0x2822004E8](a1);
  }

  v3 = *(v1 + 408);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 7;
    v30 = *(v1 + 400);
    v31 = v3 + 7;
    v29 = **(v1 + 304);
    v6 = 32;
    while (1)
    {
      v7 = **(v1 + 320);
      if (v4 >= *(v7 + 16))
      {
        break;
      }

      v36 = v4;
      v8 = *(v1 + 424);
      v9 = *(v1 + 432);
      v11 = *(v1 + 384);
      v10 = *(v1 + 392);
      v33 = *(v1 + 336);
      v34 = *(v1 + 376);
      v32 = *(v1 + 328);
      v35 = v6;
      sub_22BE26B00(v7 + v6, v1 + 16);
      sub_22BE1BD3C((v1 + 16), *(v1 + 40));
      sub_22C271924();
      v12 = sub_22C273624();
      sub_22BE19DC4(v11, 1, 1, v12);
      (*(v30 + 16))(v8, v9, v10);
      sub_22BE26B00(v1 + 16, v1 + 56);
      v13 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v14 = (v13 + v5) & 0xFFFFFFFFFFFFFFF8;
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      (*(v30 + 32))(v15 + v13, v8, v10);
      sub_22BE49224((v1 + 56), v15 + v14);
      v16 = (v15 + ((v14 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v16 = v32;
      v16[1] = v33;
      sub_22BE794B4(v11, v34);
      v17 = sub_22BE1AEA8(v34, 1, v12);

      v18 = *(v1 + 376);
      if (v17 == 1)
      {
        sub_22BE23388(*(v1 + 376), &qword_27D9078A0, &qword_22C275B90);
      }

      else
      {
        sub_22C273614();
        (*(*(v12 - 8) + 8))(v18, v12);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = sub_22C2735D4();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
      v22 = v21 | v19;
      if (v21 | v19)
      {
        v22 = v1 + 176;
        *(v1 + 176) = 0;
        *(v1 + 184) = 0;
        *(v1 + 192) = v19;
        *(v1 + 200) = v21;
      }

      v4 = v36 + 1;
      v23 = *(v1 + 432);
      v25 = *(v1 + 384);
      v24 = *(v1 + 392);
      v26 = *(v1 + 312);
      *(v1 + 240) = 1;
      *(v1 + 248) = v22;
      *(v1 + 256) = v29;
      swift_task_create();

      sub_22BE23388(v25, &qword_27D9078A0, &qword_22C275B90);
      (*(v30 + 8))(v23, v24);
      a1 = sub_22BE26B64((v1 + 16));
      v6 = v35 + 40;
      v5 = v31;
      if (v36 + 1 == v26)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v5 = v3 + 7;
LABEL_16:
  *(v1 + 464) = v5;
  *(v1 + 472) = **(v1 + 304);
  *(v1 + 480) = sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C273644();
  v27 = swift_task_alloc();
  *(v1 + 488) = v27;
  *v27 = v1;
  a1 = sub_22BE17A58(v27);

  return MEMORY[0x2822004E8](a1);
}

uint64_t sub_22BE77770()
{
  sub_22BE183F0();
  sub_22BE190F0();
  v2 = *v1;
  sub_22BE18C2C();
  *v3 = v2;

  if (v0)
  {
    v4 = sub_22BE77DA0;
  }

  else
  {
    v4 = sub_22BE77870;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22BE77870(uint64_t a1)
{
  v2 = *(v1 + 288);
  if (!v2)
  {
    v16 = *(v1 + 456);
    sub_22BE3C79C();
    v17(v16);

    sub_22BE17A94();
    sub_22BE18174();

    __asm { BRAA            X1, X16 }
  }

  v3 = **(v1 + 344);
  v4 = **(v1 + 320);
  if (v3 < *(v4 + 16))
  {
    if (v3 < 0)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v47 = *(v1 + 288);
    v5 = *(v1 + 416);
    v6 = *(v1 + 424);
    v7 = *(v1 + 392);
    v8 = *(v1 + 400);
    v9 = *(v1 + 368);
    v48 = *(v1 + 464);
    v50 = *(v1 + 336);
    v51 = *(v1 + 360);
    v49 = *(v1 + 328);
    sub_22BE26B00(v4 + 40 * v3 + 32, v1 + 96);
    sub_22BE1BD3C((v1 + 96), *(v1 + 120));
    sub_22C271924();
    v10 = sub_22C273624();
    sub_22BE19DC4(v9, 1, 1, v10);
    (*(v8 + 16))(v6, v5, v7);
    sub_22BE26B00(v1 + 96, v1 + 136);
    v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v12 = (v11 + v48) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    (*(v8 + 32))(v13 + v11, v6, v7);
    sub_22BE49224((v1 + 136), v13 + v12);
    v14 = (v13 + ((v12 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v14 = v49;
    v14[1] = v50;
    sub_22BE794B4(v9, v51);
    LODWORD(v12) = sub_22BE1AEA8(v51, 1, v10);

    v15 = *(v1 + 360);
    if (v12 == 1)
    {
      sub_22BE23388(*(v1 + 360), &qword_27D9078A0, &qword_22C275B90);
    }

    else
    {
      sub_22C273614();
      (*(*(v10 - 8) + 8))(v15, v10);
    }

    if (*(v13 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v20 = sub_22C2735D4();
      v22 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    if (v22 | v20)
    {
      v23 = v1 + 208;
      *(v1 + 208) = 0;
      *(v1 + 216) = 0;
      *(v1 + 224) = v20;
      *(v1 + 232) = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v1 + 472);
    v25 = *(v1 + 416);
    v26 = *(v1 + 392);
    v27 = *(v1 + 400);
    v28 = *(v1 + 368);
    v29 = *(v1 + 344);
    *(v1 + 264) = 1;
    *(v1 + 272) = v23;
    *(v1 + 280) = v24;
    swift_task_create();

    sub_22BE23388(v28, &qword_27D9078A0, &qword_22C275B90);
    a1 = (*(v27 + 8))(v25, v26);
    if (__OFADD__(*v29, 1))
    {
      goto LABEL_38;
    }

    **(v1 + 344) = *v29 + 1;
    a1 = sub_22BE26B64((v1 + 96));
    v2 = v47;
  }

  v30 = *(v1 + 352);
  v31 = *(v2 + 16);
  v32 = *v30;
  v33 = *(*v30 + 16);
  v34 = v33 + v31;
  if (__OFADD__(v33, v31))
  {
    __break(1u);
    goto LABEL_35;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v32;
  if (!isUniquelyReferenced_nonNull_native || (v36 = *(v32 + 24) >> 1, v36 < v34))
  {
    v37 = *(v1 + 352);
    if (*(v32 + 16) <= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = *(v32 + 16);
    }

    sub_22BE66518(isUniquelyReferenced_nonNull_native, v38, 1, v32);
    v32 = v39;
    *v37 = v39;
    v36 = *(v39 + 24) >> 1;
  }

  if (*(v2 + 16))
  {
    v40 = v36 - *(v32 + 16);
    a1 = sub_22C270FD4();
    if (v40 >= v31)
    {
      swift_arrayInitWithCopy();

      if (!v31)
      {
        goto LABEL_31;
      }

      v41 = *(v32 + 16);
      v42 = __OFADD__(v41, v31);
      v43 = v41 + v31;
      if (!v42)
      {
        *(v32 + 16) = v43;
        goto LABEL_31;
      }

LABEL_39:
      __break(1u);
      return MEMORY[0x2822004E8](a1);
    }

    goto LABEL_36;
  }

  if (v31)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_31:
  **(v1 + 352) = v32;
  v44 = swift_task_alloc();
  *(v1 + 488) = v44;
  *v44 = v1;
  sub_22BE17A58(v44);
  sub_22BE18174();

  return MEMORY[0x2822004E8](a1);
}

uint64_t sub_22BE77DA0()
{
  v1 = *(v0 + 456);
  sub_22BE3C79C();
  v2(v1);

  sub_22BE17A94();

  return v3();
}

uint64_t sub_22BE77E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_22C270F94();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v9 = sub_22C2720A4();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE77FAC, 0, 0);
}

uint64_t sub_22BE77FAC()
{
  v31 = v3;
  sub_22BE23698();
  v5 = sub_22BE3E4A8();
  v6(v5);
  v7 = sub_22C272084();
  v8 = sub_22C273784();
  os_log_type_enabled(v7, v8);
  sub_22BE2B770();
  if (v9)
  {
    v29 = v4;
    v10 = sub_22BE19E2C();
    v11 = sub_22BE25618();
    v30 = v11;
    *v10 = 136315138;
    v26 = sub_22C270F84();
    v28 = v0;
    v13 = v12;
    v14 = sub_22BE183E0();
    v8(v14);
    sub_22BE61C88(v26, v13, &v30);
    sub_22BE3D3E0();

    *(v10 + 4) = v1;
    sub_22BE1C238(&dword_22BE15000, v15, v16, "[EntitySpanMatchService] finding span matches with %s", v17, v18, v19, v20, v26, v27, v8);
    sub_22BE26B64(v11);
    sub_22BE183C8();
    sub_22BE183C8();

    v21 = *(v2 + 8);
    v21(v28, v29);
  }

  else
  {

    v22 = sub_22BE183E0();
    v8(v22);
    v21 = *(v2 + 8);
    v21(v0, v4);
  }

  *(v3 + 136) = v21;
  *(v3 + 144) = v8;
  sub_22BE1BD3C(*(v3 + 32), *(*(v3 + 32) + 24));
  v23 = swift_task_alloc();
  *(v3 + 152) = v23;
  *v23 = v3;
  v24 = sub_22BE79754(v23);

  return MEMORY[0x282179510](v24);
}