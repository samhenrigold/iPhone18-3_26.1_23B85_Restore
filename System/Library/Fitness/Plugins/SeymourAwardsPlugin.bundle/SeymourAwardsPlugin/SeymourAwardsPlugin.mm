uint64_t sub_23397F490(void *a1)
{
  v1 = [a1 sourceName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2339816A4();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_233981634();
  v6 = sub_233981624();
  if (v5)
  {
    if (v3 == v6 && v5 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_233981714();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_23397F5C8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

char *sub_23397F610(unint64_t a1)
{
  v3 = sub_23397FEB8(&qword_27DE3E388, &qword_233981E98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v25 = *(v1 + OBJC_IVAR____TtC19SeymourAwardsPlugin21AwardProgressProvider_achievementClient);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_233981704())
  {
    if (!i)
    {
LABEL_16:
      sub_2339815F4();

      v19 = sub_2339815E4();
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      v19(sub_23397FA30, v20);

      return (*(v4 + 1))(v6, v3);
    }

    v28 = MEMORY[0x277D84F90];
    result = sub_23397FA0C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v22 = v6;
    v23 = v4;
    v24 = v3;
    v6 = 0;
    v9 = v28;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v3 = i;
    while (1)
    {
      v4 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v27)
      {
        v10 = MEMORY[0x2383AD6E0](v6, a1);
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_18;
        }

        v10 = *(a1 + 8 * v6 + 32);
      }

      v11 = v10;
      result = [v10 uniqueName];
      if (!result)
      {
        goto LABEL_21;
      }

      v12 = result;
      v13 = sub_2339816A4();
      v15 = v14;

      v28 = v9;
      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23397FA0C((v16 > 1), v17 + 1, 1);
        v9 = v28;
      }

      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      ++v6;
      if (v4 == v3)
      {
        v4 = v23;
        v3 = v24;
        v6 = v22;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23397F8C0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *sub_23397F900(char *result, int64_t a2, char a3, char *a4)
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
    sub_23397FEB8(&unk_27DE3E390, qword_233981EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_23397FA0C(char *a1, int64_t a2, char a3)
{
  result = sub_23397F900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t *sub_23397FA30(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

id sub_23397FB40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourAwardPlugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23397FBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = [objc_allocWithZone((a3)(0 a2))];

  return v3;
}

id sub_23397FC1C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_233981664();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19SeymourAwardsPlugin21AwardProgressProvider_achievementClient;
  sub_233981614();
  sub_23397F5C8(0, &qword_2813064B8, 0x277D85C78);
  sub_2339816D4();
  (*(v3 + 104))(v5, *MEMORY[0x277D4F368], v2);
  v10[3] = sub_233981654();
  v10[4] = MEMORY[0x277D4F358];
  sub_23397FF00(v10);
  sub_233981644();
  sub_233981684();
  swift_allocObject();
  sub_233981674();
  sub_2339816D4();
  *&v0[v6] = sub_233981604();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_23397FDF8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23397FEB8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_23397FF00(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23397FFC4()
{
  v0 = sub_2339815C4();
  sub_233981530(v0, qword_281306500);
  sub_2339814F8(v0, qword_281306500);
  return sub_233981594();
}

uint64_t sub_233980028()
{
  v0 = sub_2339815C4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233981530(v2, qword_2813064E8);
  sub_2339814F8(v0, qword_2813064E8);
  if (qword_2813064E0 != -1)
  {
    swift_once();
  }

  v5 = sub_2339814F8(v0, qword_281306500);
  (*(v1 + 16))(v4, v5, v0);
  sub_2339815B4();
  return (*(v1 + 8))(v4, v0);
}

id sub_2339801F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourTemplateAssetSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23398025C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_2339815C4();
  v4 = *(v59 - 8);
  v5 = MEMORY[0x28223BE20](v59);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v57 = &v56 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v15 = [a1 uniqueName];
  if (!v15)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = v15;
  v17 = sub_2339816A4();
  v19 = v18;

  v62 = v17;
  v63 = v19;
  v60 = 45;
  v61 = 0xE100000000000000;
  sub_2339814A4();
  v20 = sub_2339816E4();

  if (!v20[2])
  {

    v28 = *(v4 + 56);
    v29 = a2;
    v30 = 1;
    v31 = v59;
    return v28(v29, v30, 1, v31);
  }

  v58 = a2;
  a2 = 0xD00000000000001BLL;
  v21 = v20[4];
  v22 = v20[5];

  if (v21 == 0xD00000000000001CLL && 0x8000000233981D50 == v22 || (sub_233981714() & 1) != 0 || v21 == 0xD00000000000001BLL && 0x8000000233981D70 == v22 || (sub_233981714() & 1) != 0)
  {
    if (qword_2813064D8 != -1)
    {
      swift_once();
    }

    v23 = v59;
    sub_2339814F8(v59, qword_2813064E8);
    sub_2339815B4();
    v24 = [a1 uniqueName];
    if (v24)
    {
      v25 = v24;

      sub_2339816A4();

      v26 = v58;
      sub_2339815B4();

      (*(v4 + 8))(v14, v23);
      return (*(v4 + 56))(v26, 0, 1, v23);
    }

    goto LABEL_41;
  }

  if ((v21 != 0xD000000000000027 || 0x8000000233981D90 != v22) && (sub_233981714() & 1) == 0)
  {
    if (qword_2813064E0 != -1)
    {
      swift_once();
    }

    v44 = v59;
    v45 = sub_2339814F8(v59, qword_281306500);
    (*(v4 + 16))(v7, v45, v44);
    result = [a1 uniqueName];
    if (result)
    {
      v46 = result;

      sub_2339816A4();

      sub_2339815B4();

      v47 = *(v4 + 8);
      v47(v7, v44);
      v48 = v58;
      sub_2339815B4();
      v47(v10, v44);
      return (*(v4 + 56))(v48, 0, 1, v44);
    }

    goto LABEL_44;
  }

  result = [a1 uniqueName];
  v32 = v58;
  if (!result)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  v33 = result;

  v34 = sub_2339816A4();
  v36 = v35;

  v62 = v34;
  v63 = v36;
  v60 = 45;
  v61 = 0xE100000000000000;
  v37 = sub_2339816E4();

  if (v37[2] >= 3uLL)
  {
    v39 = v37[6];
    v38 = v37[7];
    v40 = v37[5];
    v62 = v37[4];
    v63 = v40;

    MEMORY[0x2383AD6A0](45, 0xE100000000000000);
    a2 = v59;
    if (v37[2] < 3uLL)
    {
      __break(1u);
      goto LABEL_39;
    }

    v41 = v37[8];
    v42 = v37[9];

    MEMORY[0x2383AD6A0](v41, v42);

    v14 = v62;
    v37 = v63;
    if (MEMORY[0x2383AD5C0](8) == v39 && v43 == v38)
    {
      goto LABEL_23;
    }

    v49 = sub_233981714();

    if ((v49 & 1) == 0)
    {
      if (MEMORY[0x2383AD5C0](0) == v39 && v52 == v38)
      {
LABEL_23:

        goto LABEL_30;
      }

      v53 = sub_233981714();

      if ((v53 & 1) == 0)
      {

        if (qword_2813064D8 == -1)
        {
LABEL_37:
          sub_2339814F8(a2, qword_2813064E8);
          v54 = v57;
          sub_2339815B4();
          v55 = v58;
          sub_2339815B4();

          (*(v4 + 8))(v54, a2);
          v28 = *(v4 + 56);
          v29 = v55;
          goto LABEL_32;
        }

LABEL_42:
        swift_once();
        goto LABEL_37;
      }
    }

LABEL_30:
    if (qword_2813064D8 == -1)
    {
LABEL_31:
      sub_2339814F8(a2, qword_2813064E8);
      v50 = v57;
      sub_2339815B4();
      v62 = v14;
      v63 = v37;
      MEMORY[0x2383AD6A0](45, 0xE100000000000000);
      MEMORY[0x2383AD6A0](v39, v38);

      v51 = v58;
      sub_2339815B4();

      (*(v4 + 8))(v50, a2);
      v28 = *(v4 + 56);
      v29 = v51;
LABEL_32:
      v30 = 0;
      v31 = a2;
      return v28(v29, v30, 1, v31);
    }

LABEL_39:
    swift_once();
    goto LABEL_31;
  }

  (*(v4 + 56))(v32, 1, 1, v59);
}

id sub_233980A90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2339815C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  result = [a1 uniqueName];
  if (result)
  {
    v12 = result;
    v13 = sub_2339816A4();
    v15 = v14;

    v23[2] = v13;
    v23[3] = v15;
    v23[0] = 45;
    v23[1] = 0xE100000000000000;
    sub_2339814A4();
    v16 = sub_2339816E4();

    if (!v16[2])
    {

      v19 = 1;
      return (*(v5 + 56))(a2, v19, 1, v4);
    }

    v18 = v16[4];
    v17 = v16[5];

    if (v18 == 0xD00000000000001CLL && 0x8000000233981D50 == v17 || (sub_233981714() & 1) != 0 || v18 == 0xD00000000000001BLL && 0x8000000233981D70 == v17 || (sub_233981714() & 1) != 0 || v18 == 0xD000000000000027 && 0x8000000233981D90 == v17 || (sub_233981714() & 1) != 0)
    {

      if (qword_2813064D8 != -1)
      {
        swift_once();
      }

      sub_2339814F8(v4, qword_2813064E8);
      sub_2339815B4();
      goto LABEL_15;
    }

    if (qword_2813064E0 != -1)
    {
      swift_once();
    }

    v20 = sub_2339814F8(v4, qword_281306500);
    (*(v5 + 16))(v8, v20, v4);
    result = [a1 uniqueName];
    if (result)
    {
      v21 = result;

      sub_2339816A4();

      sub_2339815B4();

      v22 = *(v5 + 8);
      v22(v8, v4);
      sub_2339815B4();
      v22(v10, v4);
LABEL_15:
      v19 = 0;
      return (*(v5 + 56))(a2, v19, 1, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_233980E84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_2339815C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v29 = &v29 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  result = [a1 uniqueName];
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = result;
  v17 = sub_2339816A4();
  v19 = v18;

  v33 = v17;
  v34 = v19;
  v31 = 45;
  v32 = 0xE100000000000000;
  sub_2339814A4();
  v20 = sub_2339816E4();

  if (!v20[2])
  {

    v26 = 1;
    v25 = v30;
    return (*(v4 + 56))(v25, v26, 1, v3);
  }

  v21 = v20[4];
  v22 = v20[5];

  if (v21 == 0xD00000000000001CLL && 0x8000000233981D50 == v22 || (sub_233981714() & 1) != 0 || v21 == 0xD00000000000001BLL && 0x8000000233981D70 == v22 || (sub_233981714() & 1) != 0 || v21 == 0xD000000000000027 && 0x8000000233981D90 == v22 || (sub_233981714() & 1) != 0)
  {
    if (qword_2813064D8 != -1)
    {
      swift_once();
    }

    sub_2339814F8(v3, qword_2813064E8);
    sub_2339815B4();
    result = [a1 uniqueName];
    if (result)
    {
      v23 = result;

      sub_2339816A4();

      sub_2339815B4();

      v24 = *(v4 + 8);
      v24(v12, v3);
      v25 = v30;
LABEL_16:
      sub_2339815B4();
      v24(v14, v3);
      v26 = 0;
      return (*(v4 + 56))(v25, v26, 1, v3);
    }

    goto LABEL_24;
  }

  if (qword_2813064E0 != -1)
  {
    swift_once();
  }

  v27 = sub_2339814F8(v3, qword_281306500);
  (*(v4 + 16))(v7, v27, v3);
  result = [a1 uniqueName];
  if (result)
  {
    v28 = result;

    sub_2339816A4();

    v14 = v29;
    sub_2339815B4();

    v24 = *(v4 + 8);
    v24(v7, v3);
    v25 = v30;
    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_23398135C(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v7 = sub_23397FEB8(&qword_27DE3E410, &qword_233981EF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = a3;
  v11 = a1;
  a4(v10);

  v12 = sub_2339815C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_2339815A4();
    (*(v13 + 8))(v9, v12);
    v15 = v16;
  }

  return v15;
}

unint64_t sub_2339814A4()
{
  result = qword_2813064C8;
  if (!qword_2813064C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813064C8);
  }

  return result;
}

uint64_t sub_2339814F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_233981530(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}