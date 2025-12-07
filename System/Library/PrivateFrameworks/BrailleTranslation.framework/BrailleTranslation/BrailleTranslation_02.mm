unint64_t sub_241E31B20(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = *(*v2 + 184);
  v7 = v6();
  if (v8)
  {
    v7 = (*(*v2 + 232))(v7);
  }

  v9 = v7;
  v10 = *(*v2 + 160);
  v11 = v10();
  v12 = sub_241E334D0(a1, a2);
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v52 = sub_241E3318C(v12, v14, 0);
  v16 = [v52 matchesInString:v11 options:0 range:{0, v9}];
  sub_241E33740();
  v17 = sub_241E359A4();

  if (v17 >> 62)
  {
    v18 = sub_241E35B34();
    if (v18)
    {
LABEL_5:
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v53 = v10;
        if ((v17 & 0xC000000000000001) == 0)
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v20 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v21 = v6;
            v22 = *(v17 + 8 * v20 + 32);
LABEL_10:
            v23 = v22;

            v24 = [v23 range];

            v6 = v21;
            v10 = v53;
            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      v21 = v6;
      v22 = MEMORY[0x245D01690](v20, v17);
      goto LABEL_10;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  v24 = sub_241E35714();

LABEL_13:
  if (v24 == sub_241E35714())
  {
    v11 = v10();
    v25 = [v11 length];
    v26 = sub_241E334D0(a1, a2);
    v28 = v27;
    v29 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    a2 = sub_241E3318C(v26, v28, 0);
    v30 = [a2 matchesInString:v11 options:0 range:{0, v25}];
    sub_241E33740();
    v17 = sub_241E359A4();

    if (!(v17 >> 62))
    {
      v31 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }

LABEL_26:
    v31 = sub_241E35B34();
    if (v31)
    {
LABEL_16:
      v19 = __OFSUB__(v31, 1);
      result = v31 - 1;
      if (v19)
      {
        __break(1u);
      }

      else if ((v17 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v33 = *(v17 + 8 * result + 32);
LABEL_21:
          v34 = v33;

          v24 = [v34 range];

LABEL_28:
          goto LABEL_29;
        }

        __break(1u);
        return result;
      }

      v33 = MEMORY[0x245D01690](result, v17);
      goto LABEL_21;
    }

LABEL_27:

    v24 = sub_241E35714();

    goto LABEL_28;
  }

LABEL_29:
  v35 = sub_241E35714();
  if (v24 != v35)
  {
    v54 = v10;
    v36 = v6();
    v38 = v37;
    v39 = v6;
    v41 = v40;
    v42 = (*(*v3 + 232))();
    v44 = v43;
    type metadata accessor for BRLTBrailleUIModel.Action();
    v45 = swift_allocObject();
    *(v45 + 16) = v36;
    *(v45 + 24) = v38;
    *(v45 + 32) = v41 & 1;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 1;
    *(v45 + 64) = v42;
    *(v45 + 72) = v44;
    *(v45 + 80) = 0;
    *(v45 + 88) = 0;
    *(v45 + 96) = 0;
    *(v45 + 104) = 1;
    *(v45 + 112) = MEMORY[0x277D84F90];
    v46 = v39();
    if ((v47 & 1) == 0)
    {
      v46 = swift_beginAccess();
      *(v3 + 24) = v24;
      *(v3 + 32) = v24;
      *(v3 + 40) = 0;
    }

    v48 = (v54)(v46);
    v49 = sub_241E2D9E8(v24);
    v51 = v50;

    swift_beginAccess();
    *(v3 + 48) = v49;
    *(v3 + 56) = v51;
    sub_241E2D244();
    sub_241E32A28(v45);
  }

  return v24 != v35;
}

void sub_241E32034(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = v1;
    v4 = *(*v1 + 160);
    v5 = v4();
    v6 = [v5 length];

    if (v6 > a1)
    {
      v7 = (*(*v2 + 184))();
      v9 = v8;
      v11 = v10;
      v12 = (*(*v2 + 232))();
      v14 = v13;
      type metadata accessor for BRLTBrailleUIModel.Action();
      v15 = swift_allocObject();
      *(v15 + 16) = v7;
      *(v15 + 24) = v9;
      *(v15 + 32) = v11 & 1;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 1;
      *(v15 + 64) = v12;
      *(v15 + 72) = v14;
      *(v15 + 80) = 0;
      *(v15 + 88) = 0;
      *(v15 + 96) = 0;
      *(v15 + 104) = 1;
      *(v15 + 112) = MEMORY[0x277D84F90];
      v16 = v4();
      v17 = sub_241E2D9E8(a1);
      v19 = v18;

      swift_beginAccess();
      v2[6] = v17;
      v2[7] = v19;
      sub_241E2D244();
      sub_241E32A28(v15);
    }
  }
}

uint64_t sub_241E321C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_241E357E4();
  v14 = [v13 length];
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v14 >= a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = v14;
    }

    if (a3 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a4 & ~(a4 >> 63);
    if (v14 < a4)
    {
      v17 = v14;
    }

    if (!__OFSUB__(v17, v16))
    {
      v18 = [v13 substringWithRange_];
      v7 = sub_241E357F4();
      v8 = v19;

      swift_beginAccess();
      v13 = *(v6 + 112);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 112) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v13 = sub_241E33268(0, v13[2] + 1, 1, v13);
  *(v6 + 112) = v13;
LABEL_12:
  v22 = v13[2];
  v21 = v13[3];
  if (v22 >= v21 >> 1)
  {
    v13 = sub_241E33268((v21 > 1), v22 + 1, 1, v13);
  }

  v13[2] = v22 + 1;
  v23 = &v13[6 * v22];
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = v7;
  v23[7] = v8;
  v23[8] = a5;
  v23[9] = a6;
  *(v6 + 112) = v13;
  return swift_endAccess();
}

uint64_t sub_241E32338()
{
  if ((*(v0 + 32) & 1) == 0 && (*(v0 + 56) & 1) == 0 && (*(v0 + 16) != *(v0 + 24) || *(v0 + 40) != *(v0 + 48)))
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    for (i = (v2 + 72); ; i += 6)
    {
      v5 = *(i - 3) == *(i - 1) && *(i - 2) == *i;
      if (!v5 && (sub_241E35B64() & 1) == 0)
      {
        break;
      }

      if (!--v3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_241E323E0()
{

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

void sub_241E32418(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v38 = a1;
    v5 = (v1 + 16);
    v40 = v1;
    v39 = *(*v1 + 160);

    swift_beginAccess();
    v6 = v3 + 48 * v4 + 8;
    while (v4 <= *(v3 + 16))
    {
      v9 = *(v6 - 24);

      v10 = sub_241E35874();

      v12 = v9 + v10;
      if (__OFADD__(v9, v10))
      {
        goto LABEL_20;
      }

      if (v12 < v9)
      {
        goto LABEL_21;
      }

      v13 = v39(v11);
      v14 = [v13 length];
      if (v14 < 0)
      {
        goto LABEL_22;
      }

      if (v14 >= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v14;
      }

      if (v9 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v12 & ~(v12 >> 63);
      if (v14 < v12)
      {
        v17 = v14;
      }

      v18 = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_23;
      }

      v19 = sub_241E357E4();

      v20 = [v13 stringByReplacingCharactersInRange:v16 withString:{v18, v19}];

      if (!v20)
      {
        sub_241E357F4();
        v20 = sub_241E357E4();
      }

      --v4;
      v7 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

      v8 = *v5;
      *v5 = v7;

      v6 -= 48;
      if (!v4)
      {
        goto LABEL_24;
      }
    }

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

    v1 = v40;
    a1 = v38;
  }

  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = *(a1 + 32);
  v24 = swift_beginAccess();
  *(v1 + 24) = v21;
  *(v1 + 32) = v22;
  *(v1 + 40) = v23;
  if (*(a1 + 80))
  {
    v25 = *(*v1 + 160);
    v26 = v1;
    v27 = v25(v24);
    v28 = (*(*v1 + 184))();
    if (v30)
    {
      v31 = v25(v28);
      v32 = [v31 length];

      v33 = v32;
    }

    else
    {
      v33 = v29;
    }

    v36 = sub_241E2D9E8(v33);
    v35 = v37;

    swift_beginAccess();
    *(v26 + 48) = v36;
    v1 = v26;
  }

  else
  {
    v34 = *(a1 + 64);
    v35 = *(a1 + 72);
    swift_beginAccess();
    *(v1 + 48) = v34;
  }

  *(v1 + 56) = v35;
  sub_241E2D244();
}

void sub_241E32744(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(a1 + 112);
  v5 = *(v4 + 16);
  if (v5)
  {
    v38 = a1;
    v6 = v1 + 2;
    v7 = v1;
    v39 = *(*v1 + 20);

    swift_beginAccess();
    v8 = v4 + 72;
    while (1)
    {
      v11 = *(v8 - 40);
      v12 = *(v8 - 32);

      v14 = v39(v13);
      v15 = [v14 length];
      if (v15 < 0)
      {
        break;
      }

      if (v15 >= v11)
      {
        v16 = v11;
      }

      else
      {
        v16 = v15;
      }

      if (v11 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v12 & ~(v12 >> 63);
      if (v15 < v12)
      {
        v18 = v15;
      }

      v19 = v18 - v17;
      if (__OFSUB__(v18, v17))
      {
        goto LABEL_25;
      }

      v20 = sub_241E357E4();

      v21 = [v14 stringByReplacingCharactersInRange:v17 withString:{v19, v20}];

      if (!v21)
      {
        sub_241E357F4();
        v21 = sub_241E357E4();
      }

      v9 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

      v10 = *v6;
      *v6 = v9;

      v8 += 48;
      if (!--v5)
      {

        v2 = v7;
        a1 = v38;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_17:
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = swift_beginAccess();
    v2[3] = v22;
    v2[4] = v23;
    *(v2 + 40) = v24;
    if (*(a1 + 104))
    {
      v26 = *(*v2 + 20);
      v27 = v26(v25);
      v28 = (*(*v2 + 23))();
      if (v30)
      {
        v31 = v26(v28);
        v32 = [v31 length];

        v33 = v32;
      }

      else
      {
        v33 = v29;
      }

      v36 = sub_241E2D9E8(v33);
      v35 = v37;

      swift_beginAccess();
      v2[6] = v36;
    }

    else
    {
      v34 = *(a1 + 88);
      v35 = *(a1 + 96);
      swift_beginAccess();
      v2[6] = v34;
    }

    v2[7] = v35;
    sub_241E2D244();
  }
}

uint64_t sub_241E32A28(uint64_t a1)
{
  v3 = (*(*v1 + 184))();
  v5 = v4;
  v7 = v6;
  v8 = (*(*v1 + 232))();
  *(a1 + 40) = v3;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7 & 1;
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = 0;
  result = sub_241E32338();
  if ((result & 1) == 0)
  {
    sub_241E32E20(a1);
    swift_beginAccess();
    v1[10] = MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_241E32B0C()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  if (v2 >> 62)
  {
    result = sub_241E35B34();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  swift_beginAccess();
  v4 = *(v0 + 72);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!sub_241E35B34())
  {
    goto LABEL_15;
  }

LABEL_5:
  v5 = sub_241E3346C();
  if (v5)
  {
    goto LABEL_9;
  }

  v6 = *(v0 + 72);
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = __OFSUB__(v7, 1);
  result = v7 - 1;
  if (v8)
  {
LABEL_20:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v5 = sub_241E22158(result);
LABEL_9:
      v1 = v5;
      swift_endAccess();
      sub_241E32418(v1);
      swift_beginAccess();
      if (!(*(v0 + 80) >> 62))
      {
        break;
      }

LABEL_16:
      if ((sub_241E35B34() & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_18:
      v9 = sub_241E35B34();
      v8 = __OFSUB__(v9, 1);
      result = v9 - 1;
      if (v8)
      {
        goto LABEL_20;
      }
    }

    sub_241E338A8(0, 0, v1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_241E32C90()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    result = sub_241E35B34();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_241E32D48();
  v4 = v3;
  swift_endAccess();
  sub_241E32744(v4);
  sub_241E32E20(v4);
}

void sub_241E32D48()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_241E35B34())
  {
    if (sub_241E35B34())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x245D01690](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_241E35B34();
LABEL_13:
      if (v3)
      {
        sub_241E33AB4(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_241E32E20(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();

  MEMORY[0x245D01530](v3);
  if (*((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_43:
    sub_241E359C4();
  }

  sub_241E359D4();
  swift_endAccess();
  while (1)
  {
    v4 = *(v2 + 72);
    if (v4 >> 62)
    {
      result = sub_241E35B34();
      if (result < 101)
      {
        return result;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result < 101)
      {
        return result;
      }
    }

    swift_beginAccess();
    v6 = *(v2 + 72);
    v7 = v6 >> 62;
    if (v6 >> 62)
    {
      break;
    }

    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_7:
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x245D01690](0, v6);
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!v7)
      {
LABEL_10:
        v9 = *(v8 + 16);
        if (!v9)
        {
          goto LABEL_41;
        }

        goto LABEL_21;
      }
    }

    if (!sub_241E35B34())
    {
      goto LABEL_41;
    }

    if (sub_241E35B34() < 1)
    {
      goto LABEL_42;
    }

    v9 = sub_241E35B34();
LABEL_21:
    v10 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      goto LABEL_39;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v2 + 72) = v6;
    if (v7)
    {
      isUniquelyReferenced_nonNull_bridgeObject = 0;
    }

    if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v12 = (v6 & 0xFFFFFFFFFFFFFF8), v10 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
    {
      if (v7)
      {
        sub_241E35B34();
      }

      v6 = sub_241E35B04();
      *(v2 + 72) = v6;
      v12 = (v6 & 0xFFFFFFFFFFFFFF8);
    }

    if (v6 >> 62)
    {
      result = sub_241E35B34();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_46;
      }

      memmove(v12 + 4, v12 + 5, 8 * (result - 1));
      v15 = sub_241E35B34();
      v14 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v13 = v12[2];
      memmove(v12 + 4, v12 + 5, 8 * v13 - 8);
      v14 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_40;
      }
    }

    v12[2] = v14;
    *(v2 + 72) = v6;
    swift_endAccess();
  }

  result = sub_241E35B34();
  if (result)
  {
    result = sub_241E35B34();
    if (!result)
    {
      goto LABEL_45;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_241E33114()
{

  return v0;
}

uint64_t sub_241E33144()
{

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

id sub_241E3318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_241E357E4();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_241E35754();

    swift_willThrow();
  }

  return v6;
}

void *sub_241E33268(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC747C8, &qword_241E39048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EC747D0, &unk_241E39050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_241E333B0(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_241E35B34();
    }

    result = sub_241E35B04();
    *v2 = result;
  }

  return result;
}

unint64_t sub_241E3346C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_241E23108(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_241E334D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = sub_241E357E4();
  v5 = [v3 escapedPatternForString_];

  sub_241E357F4();
  v6 = sub_241E35874();
  if (!v6)
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC74718, &unk_241E38F50);
    sub_241E2CAAC();
    sub_241E357D4();

    sub_241E0F234();
    v17 = sub_241E35A54();

    return v17;
  }

  v7 = v6;
  v18 = MEMORY[0x277D84F90];
  result = sub_241E28B74(0, v6 & ~(v6 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v18;
    do
    {
      v10 = sub_241E35954();
      v19 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_241E28B74((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v9 = v19;
      }

      *(v9 + 16) = v13 + 1;
      v14 = v9 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      sub_241E35884();
      --v7;
    }

    while (v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_241E33740()
{
  result = qword_27EC747C0;
  if (!qword_27EC747C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC747C0);
  }

  return result;
}

uint64_t sub_241E3378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for BRLTBrailleUIModel.Action();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_241E35B34();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_241E35B34();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_241E338A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_241E35B34();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_241E35B34();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_241E333B0(result, 1);

  return sub_241E3378C(v7, v6, 1, v4);
}

uint64_t sub_241E339B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for BRLTBrailleUIModel.Action();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_241E35B34();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_241E35B34();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_241E33AB4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_241E35B34();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_241E35B34();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_241E333B0(result, 1);

  return sub_241E339B8(v5, v3, 0);
}

uint64_t sub_241E33BC0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_241E33C00()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_241E33C4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_241E33CD4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_241E33D14(char a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0xE000000000000000;
  v3 = MEMORY[0x277D84F90];
  *(result + 56) = MEMORY[0x277D84F90];
  *(result + 64) = v3;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = 0;
  *(result + 72) = a1;
  return result;
}

uint64_t sub_241E33D64(char a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 56) = MEMORY[0x277D84F90];
  *(v1 + 64) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = 0;
  *(v1 + 72) = a1;
  return v1;
}

void *sub_241E33D8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = 1;
  v5 = [objc_allocWithZone(BRLTJMecabraWrapper) initWithUnitTesting_];
  v6 = *(v2 + 48);
  *(v2 + 48) = v5;

  swift_beginAccess();
  v7 = MEMORY[0x277D84F90];
  *(v2 + 56) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v2 + 64) = v7;

  swift_beginAccess();
  *(v2 + 40) = 0;
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  if (sub_241E35874() < 33)
  {
  }

  else
  {
    sub_241E358A4();
    v8 = sub_241E35984();
    MEMORY[0x245D013C0](v8);
  }

  v10 = *(v2 + 48);
  if (!v10)
  {
    __break(1u);
    goto LABEL_29;
  }

  v11 = v10;
  v12 = sub_241E357E4();
  [v11 analyzeString_];

  result = *(v2 + 48);
  if (!result)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (![result moveToNextCandidate])
  {

    swift_beginAccess();
    v33 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 56) = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_241E0EDB0(0, *(v33 + 2) + 1, 1, v33);
      *(v2 + 56) = v33;
    }

    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    if (v36 >= v35 >> 1)
    {
      v33 = sub_241E0EDB0((v35 > 1), v36 + 1, 1, v33);
    }

    *(v33 + 2) = v36 + 1;
    v37 = &v33[16 * v36];
    *(v37 + 4) = 0;
    *(v37 + 5) = 0xE000000000000000;
    *(v2 + 56) = v33;
    swift_endAccess();
    swift_beginAccess();
    v28 = *(v2 + 64);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 64) = v28;
    if ((v38 & 1) == 0)
    {
      v28 = sub_241E0EDB0(0, *(v28 + 2) + 1, 1, v28);
      *(v2 + 64) = v28;
    }

    v40 = *(v28 + 2);
    v39 = *(v28 + 3);
    if (v40 >= v39 >> 1)
    {
      v28 = sub_241E0EDB0((v39 > 1), v40 + 1, 1, v28);
    }

    *(v28 + 2) = v40 + 1;
    v41 = &v28[16 * v40];
    *(v41 + 4) = a1;
    *(v41 + 5) = a2;
    goto LABEL_27;
  }

  result = *(v2 + 48);
  if (!result)
  {
    goto LABEL_30;
  }

  v13 = [result getCurrentCandidateSurface];
  v14 = sub_241E357F4();
  v16 = v15;

  swift_beginAccess();
  v17 = *(v2 + 56);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 56) = v17;
  if ((v18 & 1) == 0)
  {
    v17 = sub_241E0EDB0(0, *(v17 + 2) + 1, 1, v17);
    *(v2 + 56) = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_241E0EDB0((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[16 * v20];
  *(v21 + 4) = v14;
  *(v21 + 5) = v16;
  *(v2 + 56) = v17;
  result = swift_endAccess();
  v22 = *(v2 + 48);
  if (v22)
  {
    v23 = v22;

    v24 = [v23 getCurrentCandidateAnalysisString];

    v25 = sub_241E357F4();
    v27 = v26;

    swift_beginAccess();
    v28 = *(v2 + 64);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 64) = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_241E0EDB0(0, *(v28 + 2) + 1, 1, v28);
      *(v2 + 64) = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_241E0EDB0((v30 > 1), v31 + 1, 1, v28);
    }

    *(v28 + 2) = v31 + 1;
    v32 = &v28[16 * v31];
    *(v32 + 4) = v25;
    *(v32 + 5) = v27;
LABEL_27:
    *(v2 + 64) = v28;
    return swift_endAccess();
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_241E34248()
{
  swift_beginAccess();
  *(v0 + 16) = 0;
  v1 = *(v0 + 48);
  *(v0 + 48) = 0;

  swift_beginAccess();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
}

uint64_t sub_241E342AC()
{
  v1 = sub_241E357A4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*v0 + 184))(v3);
  swift_beginAccess();
  if (v6 != *(v0[7] + 16) - 1)
  {
    return 1;
  }

  v7 = v0[6];
  if (v7 && [v7 moveToNextCandidate])
  {
    result = v0[6];
    if (result)
    {
      v9 = [result getCurrentCandidateSurface];
      v10 = sub_241E357F4();
      v12 = v11;

      swift_beginAccess();
      v13 = v0[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[7] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_241E0EDB0(0, *(v13 + 2) + 1, 1, v13);
        v0[7] = v13;
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v36 = v16 + 1;
        v33 = sub_241E0EDB0((v15 > 1), v16 + 1, 1, v13);
        v17 = v36;
        v13 = v33;
      }

      *(v13 + 2) = v17;
      v18 = &v13[16 * v16];
      *(v18 + 4) = v10;
      *(v18 + 5) = v12;
      v0[7] = v13;
      swift_endAccess();
      result = v0[6];
      if (result)
      {
        v19 = [result getCurrentCandidateAnalysisString];
        v20 = sub_241E357F4();
        v22 = v21;

        swift_beginAccess();
        v23 = v0[8];
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v0[8] = v23;
        if ((v24 & 1) == 0)
        {
          v23 = sub_241E0EDB0(0, *(v23 + 2) + 1, 1, v23);
          v0[8] = v23;
        }

        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v36 = v26 + 1;
          v34 = sub_241E0EDB0((v25 > 1), v26 + 1, 1, v23);
          v27 = v36;
          v23 = v34;
        }

        *(v23 + 2) = v27;
        v28 = &v23[16 * v26];
        *(v28 + 4) = v20;
        *(v28 + 5) = v22;
        v0[8] = v23;
        swift_endAccess();
        return 1;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v29 = sub_241E247EC();
    swift_beginAccess();
    (*(v2 + 16))(v5, v29, v1);
    v30 = sub_241E35784();
    v31 = sub_241E35A04();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_241DFD000, v30, v31, "Candidate Manager: no more candidates", v32, 2u);
      MEMORY[0x245D02050](v32, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return result;
}

uint64_t sub_241E3462C()
{
  result = (*(*v0 + 328))();
  if (result)
  {
    result = swift_beginAccess();
    v2 = v0[5];
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v0[5] = v4;
    }
  }

  return result;
}

uint64_t sub_241E346E0()
{
  result = (*(*v0 + 344))();
  if (result)
  {
    result = swift_beginAccess();
    v2 = v0[5];
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v0[5] = v4;
    }
  }

  return result;
}

uint64_t sub_241E34754()
{
  v1 = [objc_opt_self() sharedInstance];
  (*(*v0 + 376))();
  v2 = sub_241E357E4();

  v3 = sub_241E357E4();
  v4 = [v1 descriptionOfWord:v2 forLanguage:v3];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_241E357F4();

  return v5;
}

uint64_t sub_241E3485C()
{
  v1 = sub_241E357A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(BRLTJJapaneseProcessor) init];
  (*(*v0 + 360))();
  v6 = sub_241E357E4();

  v7 = [v5 spacedYomiOfWordDescription_];

  v8 = sub_241E357F4();
  v10 = v9;

  v11 = sub_241E247EC();
  swift_beginAccess();
  (*(v2 + 16))(v4, v11, v1);

  v12 = sub_241E35784();
  v13 = sub_241E35A04();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_241E22990(v8, v10, &v17);
    _os_log_impl(&dword_241DFD000, v12, v13, "Candidate Manager: current description = '%s'", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x245D02050](v15, -1, -1);
    MEMORY[0x245D02050](v14, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_241E34ADC()
{
  v1 = sub_241E357A4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*v0 + 184))(v3);
  result = swift_beginAccess();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v0[7];
  if (v6 >= *(v8 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = v8 + 16 * v6;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);

  v12 = sub_241E247EC();
  swift_beginAccess();
  (*(v2 + 16))(v5, v12, v1);

  v13 = sub_241E35784();
  v14 = sub_241E35A04();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_241E22990(v10, v11, &v18);
    _os_log_impl(&dword_241DFD000, v13, v14, "Candidate Manager: current candidate = '%s'", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x245D02050](v16, -1, -1);
    MEMORY[0x245D02050](v15, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return v10;
}

void sub_241E34D20()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = *(*v0 + 376);
    v3 = v1;
    v2();
    v4 = sub_241E357E4();

    [v3 learnCandidate_];
  }
}

uint64_t sub_241E34DDC()
{
  v1 = *(*v0 + 160);
  v1();
  v1();

  v3 = (*(*v0 + 184))(v2);
  result = swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(v0[8] + 16))
  {

    sub_241E35874();

    v5 = sub_241E358A4();

    v7 = (v1)(v6);
    v9 = sub_241E0FC00(v5, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x245D013C0](v9, v11, v13, v15);

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_241E34F60()
{

  return v0;
}

uint64_t sub_241E34F98()
{

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

void BRLTTranslatorClassIsValid_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241DFD000, a2, OS_LOG_TYPE_ERROR, "%@ doesn't conform to BRLTTranslatorProtocol", &v2, 0xCu);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}