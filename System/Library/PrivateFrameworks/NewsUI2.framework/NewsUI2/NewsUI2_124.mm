uint64_t sub_21949B194(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  sub_219BF7AA4();
  sub_218C65064(v3);
  sub_219BF5524();

  v5 = sub_219BF7AE4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 5)
      {
        if (*(*(v4 + 48) + v7) > 8u)
        {
          if (v8 == 9)
          {
            v10 = 0xE700000000000000;
            v9 = 0x73657069636572;
          }

          else if (v8 == 10)
          {
            v9 = 0x676E69646E657274;
            v10 = 0xEF73657069636552;
          }

          else
          {
            v9 = 0xD000000000000011;
            v10 = 0x8000000219CD6CE0;
          }
        }

        else if (v8 == 6)
        {
          v9 = 0xD000000000000011;
          v10 = 0x8000000219CD6CA0;
        }

        else if (v8 == 7)
        {
          v9 = 0x6867696C68676968;
          v10 = 0xEA00000000007374;
        }

        else
        {
          v9 = 0x6165486C61636F6CLL;
          v10 = 0xEE0073656E696C64;
        }
      }

      else if (*(*(v4 + 48) + v7) > 2u)
      {
        if (v8 == 3)
        {
          v9 = 0xD000000000000019;
          v10 = 0x8000000219CD6C50;
        }

        else if (v8 == 4)
        {
          v10 = 0xE700000000000000;
          v9 = 0x73656C7A7A7570;
        }

        else
        {
          v9 = 0xD000000000000010;
          v10 = 0x8000000219CD6C80;
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v8 == 1)
        {
          v9 = 0x736575737369;
        }

        else
        {
          v9 = 0xD000000000000017;
        }

        if (v8 == 1)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0x8000000219CD6C30;
        }
      }

      else
      {
        v9 = 0x6974724164656566;
        v10 = 0xEC00000073656C63;
      }

      v11 = 0x676E69646E657274;
      if (v3 != 10)
      {
        v11 = 0xD000000000000011;
      }

      v12 = 0xEF73657069636552;
      if (v3 != 10)
      {
        v12 = 0x8000000219CD6CE0;
      }

      if (v3 == 9)
      {
        v11 = 0x73657069636572;
        v12 = 0xE700000000000000;
      }

      v13 = 0x6867696C68676968;
      if (v3 != 7)
      {
        v13 = 0x6165486C61636F6CLL;
      }

      v14 = 0xEE0073656E696C64;
      if (v3 == 7)
      {
        v14 = 0xEA00000000007374;
      }

      if (v3 == 6)
      {
        v13 = 0xD000000000000011;
        v14 = 0x8000000219CD6CA0;
      }

      if (v3 <= 8u)
      {
        v11 = v13;
        v12 = v14;
      }

      v15 = 0xD000000000000019;
      v16 = 0xD000000000000010;
      if (v3 == 4)
      {
        v16 = 0x73656C7A7A7570;
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0x8000000219CD6C80;
      }

      if (v3 == 3)
      {
        v18 = 0x8000000219CD6C50;
      }

      else
      {
        v15 = v16;
        v18 = v17;
      }

      v19 = 0xD000000000000017;
      if (v3 == 1)
      {
        v19 = 0x736575737369;
      }

      v20 = 0xE600000000000000;
      if (v3 != 1)
      {
        v20 = 0x8000000219CD6C30;
      }

      if (!v3)
      {
        v19 = 0x6974724164656566;
        v20 = 0xEC00000073656C63;
      }

      if (v3 <= 2u)
      {
        v15 = v19;
        v18 = v20;
      }

      v21 = v3 <= 5u ? v15 : v11;
      v22 = v3 <= 5u ? v18 : v12;
      if (v9 == v21 && v10 == v22)
      {
        break;
      }

      v23 = sub_219BF78F4();

      if (v23)
      {
        goto LABEL_69;
      }

      v7 = (v7 + 1) & v28;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

LABEL_69:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_67:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_2194A4C40(v3, v7, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_21949B654(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_219BF7224();

    if (v17)
    {

      sub_2186C6148(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_219BF7214();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_21949C170(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2194A0644(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_2194A135C(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_2186C6148(0, a3, a4);
    v19 = sub_219BF6DC4();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_219BF6DD4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_2194A5298(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_21949B8D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_219BF1FE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_218751238(&unk_27CC0F7E0, MEMORY[0x277D336F0], MEMORY[0x277D336F8]);
  v33 = a2;
  v11 = sub_219BF52E4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_218751238(&qword_27CC1AC40, MEMORY[0x277D336F0], MEMORY[0x277D33700]);
      v21 = sub_219BF53A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2194A5440(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21949BBB0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_219BDC104();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_218751238(&qword_280EE9BC8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  v33 = a2;
  v11 = sub_219BF52E4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_218751238(&qword_280EE9BC0, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v21 = sub_219BF53A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2194A570C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21949BE90(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_219BEAAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_218751238(&unk_27CC1AC10, MEMORY[0x277D31B20], MEMORY[0x277D31B28]);
  v33 = a2;
  v11 = sub_219BF52E4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_218751238(&qword_27CC0F7D0, MEMORY[0x277D31B20], MEMORY[0x277D31B30]);
      v21 = sub_219BF53A4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2194A59D8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21949C170(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_21879F984(0, a3, a4, a5, a6);
    v10 = sub_219BF72D4();
    v23 = v10;
    sub_219BF71C4();
    if (sub_219BF7244())
    {
      sub_2186C6148(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2194A0644(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_219BF6DC4();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_219BF7244());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

void sub_21949C388(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2194B633C(0, &unk_280E8D620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_219BF7AA4();
      sub_219BF5524();
      v21 = sub_219BF7AE4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949C608(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SearchFilterItem(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B79E8(0);
  v7 = sub_219BF72C4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v34 = *(v32 + 72);
      sub_218754608(v20 + v34 * (v17 | (v9 << 6)), v5, type metadata accessor for SearchFilterItem);
      sub_219BF7AA4();
      sub_219BF5524();
      MEMORY[0x21CECE850](v5[32]);
      sub_219BF5524();
      sub_219BDBD34();
      sub_218751238(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_219BF52F4();
      v21 = sub_219BF7AE4();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v6 = v31;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v6 = v31;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_218754608(v5, *(v8 + 48) + v16 * v34, type metadata accessor for SearchFilterItem);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_21949C994(uint64_t a1)
{
  v2 = v1;
  v37 = sub_219BE5A04();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2194B54F4(0);
  v6 = sub_219BF72C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_218751238(&qword_280EE5E20, MEMORY[0x277D31AD0], MEMORY[0x277D31AD8]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_21949CCE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &unk_27CC1AA78, sub_218C3E51C, &type metadata for AudioFeedGroupKind, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v13 = sub_219BF7AE4();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949D00C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &unk_280E8D6B0, sub_2194B5C2C, &type metadata for EmailNewsletterFeature, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_219BF7AA4();
      MEMORY[0x21CECE850](v17);
      v18 = sub_219BF7AE4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949D288(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AudioFeedTrack(0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v1;
  sub_2194B567C(0);
  v6 = sub_219BF72C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v24 = v1;
    v25 = v6 + 56;
    for (i = v26; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v27 + 72);
      v19 = *(v5 + 48) + v18 * (v15 | (v8 << 6));
      v29 = type metadata accessor for AudioFeedTrack;
      v30 = v18;
      sub_218754608(v19, i, type metadata accessor for AudioFeedTrack);
      sub_219BF7AA4();
      v20 = [*i identifier];
      sub_219BF5414();

      sub_219BF5524();

      sub_2198DA178(v31);
      sub_219BF7AE4();
      v21 = v25;
      v22 = sub_219BF71A4();
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_218754608(i, *(v7 + 48) + v22 * v30, v29);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v23 = 1 << *(v5 + 32);
    if (v23 >= 64)
    {
      bzero((v5 + 56), ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v23;
    }

    v2 = v24;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_21949D564(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_280E8D670, sub_218B0099C, MEMORY[0x277D303D0], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_219BF7AA4();
      v18 = sub_219BED304();
      MEMORY[0x21CECE850](v18);
      v19 = sub_219BF7AE4();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949D7E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_27CC1A958, sub_2194B53C4, &type metadata for PuzzleArchiveFilterOption, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(v3 + 48) + 16 * (v11 | (v5 << 6));
      sub_2194A1250(*v14, *(v14 + 8), v4);
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      bzero((v3 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

void sub_21949D97C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B5EB8(0);
  v7 = sub_219BF72C4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      sub_218754608(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      sub_219BF7AA4();
      sub_219BDF0D4();
      sub_219BF5524();

      v21 = sub_219BF7AE4();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_218754608(v5, *(v8 + 48) + v16 * v20, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_21949DC94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2194B633C(0, &unk_27CC1A930, MEMORY[0x277D849A8], MEMORY[0x277D849B8], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      v18 = MEMORY[0x21CECE820](*(v5 + 40), v17, 4);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949DEDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2194B633C(0, &unk_27CC1AA60, MEMORY[0x277D83B88], MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_219BF7A94();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949E120(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &unk_27CC1AA30, sub_218A80DA8, MEMORY[0x277D336A8], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF1F64();
      sub_219BF5524();

      v18 = sub_219BF7AE4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949E3B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_280E8D678, sub_2194B6ADC, &type metadata for NotificationCategoriesAllowedItem, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
LABEL_13:
      sub_219BF7AA4();
      sub_219BF5524();
      v15 = sub_219BF7AE4();
      v16 = -1 << *(v5 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v12 + 8 * v18);
          if (v22 != -1)
          {
            v13 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v10 &= v10 - 1;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      ++*(v5 + 16);
    }

    while (1)
    {
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = v7[v14];
      ++v6;
      if (v10)
      {
        v6 = v14;
        goto LABEL_13;
      }
    }

    v23 = 1 << *(v3 + 32);
    if (v23 >= 64)
    {
      bzero((v3 + 56), ((v23 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v23;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949E618(uint64_t a1)
{
  v2 = v1;
  v37 = sub_219BF3924();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2194B5CFC(0);
  v6 = sub_219BF72C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_218751238(&qword_280E90050, MEMORY[0x277D33FB8], MEMORY[0x277D33FC0]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_21949E968(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_280E8D6C8, sub_218C3EB1C, &type metadata for MagazineFeedGroupKind, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v13 = sub_219BF7AE4();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949EDAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_27CC1AD20, sub_2194B745C, &type metadata for PuzzleRevealType, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v18 = sub_219BF7AE4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_21949F06C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  sub_2187F6AE4(0, a2, a3, a4, MEMORY[0x277D84098]);
  v7 = sub_219BF72C4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      sub_219BF7AA4();
      MEMORY[0x21CECE850](v20);
      v21 = sub_219BF7AE4();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
}

void sub_21949F2C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_219BF1E34();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2194B620C(0);
  v6 = sub_219BF72C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_218751238(&unk_280E905A0, MEMORY[0x277D33658], MEMORY[0x277D33660]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_21949F614(uint64_t a1)
{
  v2 = v1;
  sub_218B58CA4(0);
  v38 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B7728(0);
  v7 = sub_219BF72C4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v4 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v4 + 72) * (v17 | (v9 << 6));
      v21 = *(v4 + 32);
      v34 = *(v4 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_218751238(&qword_280EE5B50, sub_218B58CA4, MEMORY[0x277D6D400]);
      v22 = sub_219BF52E4();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_21949F964(uint64_t a1)
{
  v2 = v1;
  v37 = sub_219BE3514();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_21876F2F4(0);
  v6 = sub_219BF72C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_218751238(&qword_280EE66A0, MEMORY[0x277D31550], MEMORY[0x277D31560]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_21949FCB4(uint64_t a1)
{
  v2 = *v1;
  sub_2187F6AE4(0, &qword_280E8D6F0, sub_218990848, &type metadata for TodayFeedGroupKind, MEMORY[0x277D84098]);
  v3 = sub_219BF72C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v21 = *(*(v2 + 48) + (v18 | (v5 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v12 = sub_219BF7AE4();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = (-1 << v14) & ~*(v11 + 8 * (v14 >> 6));
      if (!v16)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v15);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64(v16)) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v4 + 48) + v17) = v21;
      ++*(v4 + 16);
    }

    v19 = v5;
    while (1)
    {
      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v20 = v6[v5];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v9 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v2 + 32);
    if (v26 >= 64)
    {
      bzero((v2 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v26;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

void sub_2194A01F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_280E8D698, sub_2194B74B0, &type metadata for TagFeedPoolServiceContent, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v13 = sub_219BF7AE4();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_2194A0644(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_21879F984(0, a2, a3, a4, a5);
  v8 = sub_219BF72C4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      v22 = sub_219BF6DC4();
      v23 = -1 << *(v9 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      bzero((v7 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
}

void sub_2194A0860(uint64_t a1)
{
  v2 = v1;
  v37 = sub_219BF1FE4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2194B6EB4(0);
  v6 = sub_219BF72C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_218751238(&unk_27CC0F7E0, MEMORY[0x277D336F0], MEMORY[0x277D336F8]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_2194A0BB0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_219BDC104();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2194B5E24(0);
  v6 = sub_219BF72C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_218751238(&qword_280EE9BC8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_2194A0F00(uint64_t a1)
{
  v2 = v1;
  v37 = sub_219BEAAD4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_2194B6E20(0);
  v6 = sub_219BF72C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_218751238(&unk_27CC1AC10, MEMORY[0x277D31B20], MEMORY[0x277D31B28]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

unint64_t sub_2194A1250(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  sub_219BF7AA4();
  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 6;
      goto LABEL_10;
    }

    MEMORY[0x21CECE850](0);
    v7 = a1 & 1;
  }

  else
  {
    if (a2 == 2)
    {
      v6 = 7;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v6 = 8;
LABEL_10:
      MEMORY[0x21CECE850](v6);
      v7 = a1;
      goto LABEL_11;
    }

    v7 = a1 + 1;
  }

LABEL_11:
  MEMORY[0x21CECE850](v7);
  sub_219BF7AE4();
  result = sub_219BF71A4();
  *(a3 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v9 = *(a3 + 48) + 16 * result;
  *v9 = a1;
  *(v9 + 8) = a2;
  ++*(a3 + 16);
  return result;
}

unint64_t sub_2194A135C(uint64_t a1, uint64_t a2)
{
  sub_219BF6DC4();
  result = sub_219BF71A4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2194A13E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21949C388(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2194A5CA4();
      goto LABEL_16;
    }

    sub_2194A6DA8(v8 + 1);
  }

  v10 = *v4;
  sub_219BF7AA4();
  sub_219BF5524();
  v11 = sub_219BF7AE4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_219BF78F4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_219BF7994();
  __break(1u);
}

uint64_t sub_2194A1560(void *a1, unint64_t a2, char a3)
{
  v35 = a1;
  v33 = type metadata accessor for SearchFilterItem(0);
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v30 = v6;
  v31 = v3;
  if (v10 <= v9 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21949C608(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_2194A5FE0(type metadata accessor for SearchFilterItem, sub_2194B79E8, type metadata accessor for SearchFilterItem, type metadata accessor for SearchFilterItem);
        goto LABEL_25;
      }

      sub_2194A7000(v9 + 1);
    }

    v11 = *v3;
    sub_219BF7AA4();
    v12 = v35;
    v13 = *v35;
    v14 = v35[1];
    sub_219BF5524();
    v16 = v12[2];
    v15 = v12[3];
    v17 = *(v12 + 32);
    MEMORY[0x21CECE850](v17);
    v34 = v15;
    sub_219BF5524();
    v18 = *(v33 + 24);
    sub_219BDBD34();
    sub_218751238(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v32 = v18;
    sub_219BF52F4();
    v19 = sub_219BF7AE4();
    v20 = -1 << *(v11 + 32);
    a2 = v19 & ~v20;
    if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v21 = ~v20;
      v22 = *(v6 + 72);
      do
      {
        sub_2194B7980(*(v11 + 48) + v22 * a2, v8, type metadata accessor for SearchFilterItem);
        v23 = *v8 == v13 && *(v8 + 1) == v14;
        if (!v23 && (sub_219BF78F4() & 1) == 0)
        {
          goto LABEL_11;
        }

        if (v8[32])
        {
          if ((v17 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v17)
        {
          goto LABEL_11;
        }

        if (*(v8 + 2) == v16 && *(v8 + 3) == v34 || (sub_219BF78F4()) && (sub_219BDBC94())
        {
          goto LABEL_28;
        }

LABEL_11:
        sub_2194B5710(v8, type metadata accessor for SearchFilterItem);
        a2 = (a2 + 1) & v21;
      }

      while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_25:
  v24 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_218754608(v35, *(v24 + 48) + *(v30 + 72) * a2, type metadata accessor for SearchFilterItem);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_28:
    sub_2194B5710(v8, type metadata accessor for SearchFilterItem);
    result = sub_219BF7994();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_2194A1910(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_219BE5A04();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949C994(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2194A6B74(MEMORY[0x277D31AD0], sub_2194B54F4);
      goto LABEL_12;
    }

    sub_2194A735C(v11 + 1);
  }

  v13 = *v3;
  sub_218751238(&qword_280EE5E20, MEMORY[0x277D31AD0], MEMORY[0x277D31AD8]);
  v14 = sub_219BF52E4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_218751238(&unk_280EE5E10, MEMORY[0x277D31AD0], MEMORY[0x277D31AE0]);
      v22 = sub_219BF53A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

void sub_2194A1BDC(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_21949CCE4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_2194A6794(&unk_27CC1AA78, sub_218C3E51C, &type metadata for AudioFeedGroupKind);
      goto LABEL_45;
    }

    sub_2194A766C(v5 + 1);
  }

  v7 = *v3;
  sub_219BF7AA4();
  sub_219BF5524();

  v8 = sub_219BF7AE4();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v13 = 0xE700000000000000;
          v12 = 0x6C6C6177796170;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 0x64657461727563;
          }

          else
          {
            v12 = 0x4C7974696C697475;
          }

          if (v11 == 4)
          {
            v13 = 0xE700000000000000;
          }

          else
          {
            v13 = 0xEC000000736B6E69;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 0x7478654E7075;
        }

        else
        {
          v12 = 0x756F59726F66;
        }

        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE400000000000000;
        v12 = 1869768040;
      }

      v14 = 0x4C7974696C697475;
      if (a1 == 4)
      {
        v14 = 0x64657461727563;
      }

      v15 = 0xEC000000736B6E69;
      if (a1 == 4)
      {
        v15 = 0xE700000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0x6C6C6177796170;
        v15 = 0xE700000000000000;
      }

      v16 = 0x756F59726F66;
      if (a1 == 1)
      {
        v16 = 0x7478654E7075;
      }

      v17 = 0xE600000000000000;
      if (!a1)
      {
        v16 = 1869768040;
        v17 = 0xE400000000000000;
      }

      v18 = a1 <= 2u ? v16 : v14;
      v19 = a1 <= 2u ? v17 : v15;
      if (v12 == v18 && v13 == v19)
      {
        goto LABEL_48;
      }

      v20 = sub_219BF78F4();

      if (v20)
      {
        goto LABEL_49;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_48:

LABEL_49:
  sub_219BF7994();
  __break(1u);
}

void sub_2194A1F94(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949D00C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2194A5E20();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2194A7964(v5 + 1);
  }

  v8 = *v3;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v4 & 1);
  v9 = sub_219BF7AE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_219BF7994();
  __break(1u);
}

uint64_t sub_2194A20E8(id *a1, unint64_t a2, char a3)
{
  v40 = a1;
  v37 = type metadata accessor for AudioFeedTrack(0);
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v34 = v6;
  v35 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_21949D288(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2194A5FE0(type metadata accessor for AudioFeedTrack, sub_2194B567C, type metadata accessor for AudioFeedTrack, type metadata accessor for AudioFeedTrack);
      goto LABEL_21;
    }

    sub_2194A7BB0(v9 + 1);
  }

  v11 = *v3;
  sub_219BF7AA4();
  v38 = *v40;
  v12 = [v38 identifier];
  sub_219BF5414();

  sub_219BF5524();

  v36 = *(v37 + 32);
  sub_2198DA178(v41);
  v13 = sub_219BF7AE4();
  v14 = v11 + 56;
  v39 = v11;
  v15 = -1 << *(v11 + 32);
  a2 = v13 & ~v15;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v6 + 72);
    do
    {
      sub_2194B7980(*(v39 + 48) + v17 * a2, v8, type metadata accessor for AudioFeedTrack);
      v18 = [*v8 identifier];
      v19 = sub_219BF5414();
      v21 = v20;

      v22 = [v38 identifier];
      v23 = sub_219BF5414();
      v25 = v24;

      if (v19 == v23 && v21 == v25)
      {
      }

      else
      {
        v27 = sub_219BF78F4();

        if ((v27 & 1) == 0)
        {
          sub_2194B5710(v8, type metadata accessor for AudioFeedTrack);
          goto LABEL_11;
        }
      }

      v28 = sub_2198DB278((v8 + *(v37 + 32)), (v40 + v36));
      sub_2194B5710(v8, type metadata accessor for AudioFeedTrack);
      if (v28)
      {
        sub_219BF7994();
        __break(1u);
        break;
      }

LABEL_11:
      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v29 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_218754608(v40, *(v29 + 48) + *(v34 + 72) * a2, type metadata accessor for AudioFeedTrack);
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }

  return result;
}

void sub_2194A24A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949D564(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_2194A61E8();
      goto LABEL_12;
    }

    sub_2194A7E68(v7 + 1);
  }

  v9 = *v3;
  sub_219BF7AA4();
  v10 = sub_219BED304();
  MEMORY[0x21CECE850](v10);
  v11 = sub_219BF7AE4();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = sub_219BED304();
      if (v14 == sub_219BED304())
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = result;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_219BF7994();
  __break(1u);
}

void sub_2194A2610(uint64_t result, unsigned __int8 a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_63;
  }

  if (a4)
  {
    sub_21949D7E4(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      sub_2194A6354();
      a3 = v9;
      goto LABEL_63;
    }

    sub_2194A80B8(v7 + 1);
  }

  v10 = *v4;
  sub_219BF7AA4();
  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 6;
      goto LABEL_17;
    }

    MEMORY[0x21CECE850](0);
    v12 = result & 1;
  }

  else
  {
    if (a2 == 2)
    {
      v11 = 7;
      goto LABEL_17;
    }

    if (a2 == 3)
    {
      v11 = 8;
LABEL_17:
      MEMORY[0x21CECE850](v11);
      v12 = result;
      goto LABEL_18;
    }

    v12 = result + 1;
  }

LABEL_18:
  MEMORY[0x21CECE850](v12);
  v13 = sub_219BF7AE4();
  v14 = -1 << *(v10 + 32);
  a3 = v13 & ~v14;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_63;
  }

  v15 = ~v14;
  v16 = a2 == 4;
  v17 = result == 4 && a2 == 4;
  v18 = result == 3 && a2 == 4;
  v19 = result == 2 && a2 == 4;
  v20 = result == 1 && a2 == 4;
  if (result)
  {
    v16 = 0;
  }

  while (1)
  {
    v21 = *(v10 + 48) + 16 * a3;
    v22 = *v21;
    v23 = *(v21 + 8);
    if (v23 <= 1)
    {
      break;
    }

    if (v23 == 2)
    {
      if (a2 != 2)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (v23 == 3)
    {
      if (a2 != 3)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (v22 <= 1)
    {
      if (v22)
      {
        if (v20)
        {
          goto LABEL_62;
        }
      }

      else if (v16)
      {
        goto LABEL_62;
      }
    }

    else if (v22 == 2)
    {
      if (v19)
      {
        goto LABEL_62;
      }
    }

    else if (v22 == 3)
    {
      if (v18)
      {
        goto LABEL_62;
      }
    }

    else if (v17)
    {
      goto LABEL_62;
    }

LABEL_35:
    a3 = (a3 + 1) & v15;
    if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  if (v23)
  {
    if (a2 != 1)
    {
      goto LABEL_35;
    }

LABEL_34:
    if (v22 == result)
    {
      goto LABEL_62;
    }

    goto LABEL_35;
  }

  if (a2 || ((v22 ^ result) & 1) != 0)
  {
    goto LABEL_35;
  }

LABEL_62:
  sub_219BF7994();
  __break(1u);
LABEL_63:
  v24 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v25 = *(v24 + 48) + 16 * a3;
  *v25 = result;
  *(v25 + 8) = a2;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }
}

uint64_t sub_2194A28AC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v8;
  v31 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    v29 = v9;
    sub_21949D97C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_2194A5FE0(type metadata accessor for SportsHeadlineExposureTracker.Exposure, sub_2194B5EB8, type metadata accessor for SportsHeadlineExposureTracker.Exposure, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      goto LABEL_14;
    }

    v29 = v9;
    sub_2194A8214(v12 + 1);
  }

  v14 = *v3;
  sub_219BF7AA4();
  sub_219BDF0D4();
  sub_219BF5524();

  v15 = sub_219BF7AE4();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_2194B7980(*(v14 + 48) + v18 * a2, v11, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      v19 = sub_219BDF0D4();
      v21 = v20;
      if (v19 == sub_219BDF0D4() && v21 == v22)
      {
        goto LABEL_17;
      }

      v23 = sub_219BF78F4();

      sub_2194B5710(v11, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      if (v23)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_14:
  v24 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_218754608(a1, *(v24 + 48) + *(v30 + 72) * a2, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_17:

  sub_2194B5710(v11, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
LABEL_18:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

void sub_2194A2BCC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949DC94(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2194A64D4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2194A84FC(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x21CECE820](*(*v3 + 40), v4, 4);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_219BF7994();
  __break(1u);
}

void sub_2194A2CF0(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949DEDC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2194A6634();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2194A8710(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_219BF7A94();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_219BF7994();
  __break(1u);
}

void sub_2194A2E10(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_21949E120(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_2194A6794(&unk_27CC1AA30, sub_218A80DA8, MEMORY[0x277D336A8]);
      goto LABEL_16;
    }

    sub_2194A8920(v7 + 1);
  }

  v9 = *v3;
  sub_219BF7AA4();
  sub_219BF1F64();
  sub_219BF5524();

  v10 = sub_219BF7AE4();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = sub_219BF1F64();
      v15 = v14;
      if (v13 == sub_219BF1F64() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_219BF78F4();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_219BF7994();
  __break(1u);
}

unint64_t sub_2194A300C(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_21949E3B8(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_2194A8B88(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_219BF7AA4();
      sub_219BF5524();
      result = sub_219BF7AE4() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_2194A68E8();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

uint64_t sub_2194A3130(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_219BF3924();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949E618(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2194A6B74(MEMORY[0x277D33FB8], sub_2194B5CFC);
      goto LABEL_12;
    }

    sub_2194A8DB8(v11 + 1);
  }

  v13 = *v3;
  sub_218751238(&qword_280E90050, MEMORY[0x277D33FB8], MEMORY[0x277D33FC0]);
  v14 = sub_219BF52E4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_218751238(&qword_280E90048, MEMORY[0x277D33FB8], MEMORY[0x277D33FC8]);
      v22 = sub_219BF53A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

void sub_2194A33FC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21949E968(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_2194A6794(&qword_280E8D6C8, sub_218C3EB1C, &type metadata for MagazineFeedGroupKind);
        goto LABEL_55;
      }

      sub_2194A90C8(v7 + 1);
    }

    v9 = *v3;
    sub_219BF7AA4();
    sub_21968898C(v6);
    sub_219BF5524();

    v10 = sub_219BF7AE4();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xEA00000000007365;
        v14 = 0x69726F6765746163;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0xD000000000000010;
            v13 = 0x8000000219CD66A0;
            break;
          case 2:
            v14 = 0x6465727574616566;
            v13 = 0xEF656C6369747241;
            break;
          case 3:
            v14 = 0x6465727574616566;
            v13 = 0xED00006575737349;
            break;
          case 4:
            v14 = 0xD000000000000014;
            v13 = 0x8000000219CD6680;
            break;
          case 5:
            v14 = 0x697A6167614D796DLL;
            v13 = 0xEB0000000073656ELL;
            break;
          case 6:
            v13 = 0xE800000000000000;
            v14 = 0x657573734977656ELL;
            break;
          case 7:
            v13 = 0xE700000000000000;
            v14 = 0x6C6C6177796170;
            break;
          case 8:
            v14 = 0xD000000000000011;
            v13 = 0x8000000219CD66C0;
            break;
          case 9:
            v13 = 0xE500000000000000;
            v14 = 0x6369706F74;
            break;
          case 0xA:
            v13 = 0xE800000000000000;
            v14 = 0x676E69646E657274;
            break;
          case 0xB:
            v14 = 0x7542664F74736562;
            v13 = 0xEC000000656C646ELL;
            break;
          case 0xC:
            v14 = 0x657061707377656ELL;
            v13 = 0xE900000000000072;
            break;
          case 0xD:
            v13 = 0xE700000000000000;
            v14 = 0x64657461727563;
            break;
          default:
            break;
        }

        v15 = 0x69726F6765746163;
        v16 = 0xEA00000000007365;
        switch(v6)
        {
          case 1:
            v16 = 0x8000000219CD66A0;
            if (v14 == 0xD000000000000010)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          case 2:
            v16 = 0xEF656C6369747241;
            if (v14 != 0x6465727574616566)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 3:
            v16 = 0xED00006575737349;
            if (v14 != 0x6465727574616566)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 4:
            v16 = 0x8000000219CD6680;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 5:
            v16 = 0xEB0000000073656ELL;
            if (v14 != 0x697A6167614D796DLL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 6:
            v16 = 0xE800000000000000;
            if (v14 != 0x657573734977656ELL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 7:
            v16 = 0xE700000000000000;
            if (v14 != 0x6C6C6177796170)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 8:
            v16 = 0x8000000219CD66C0;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 9:
            v16 = 0xE500000000000000;
            if (v14 != 0x6369706F74)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 10:
            v16 = 0xE800000000000000;
            v15 = 0x676E69646E657274;
            goto LABEL_48;
          case 11:
            v16 = 0xEC000000656C646ELL;
            if (v14 != 0x7542664F74736562)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 12:
            v16 = 0xE900000000000072;
            if (v14 != 0x657061707377656ELL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 13:
            v16 = 0xE700000000000000;
            if (v14 != 0x64657461727563)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          default:
LABEL_48:
            if (v14 != v15)
            {
              goto LABEL_50;
            }

LABEL_49:
            if (v13 == v16)
            {
              goto LABEL_58;
            }

LABEL_50:
            v17 = sub_219BF78F4();

            if (v17)
            {
              goto LABEL_59;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_55:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_58:

LABEL_59:
    sub_219BF7994();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void sub_2194A397C(unsigned __int8 a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21949EDAC(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_2194A6794(&qword_27CC1AD20, sub_2194B745C, &type metadata for PuzzleRevealType);
        goto LABEL_28;
      }

      sub_2194A94DC(v6 + 1);
    }

    v8 = *v3;
    sub_219BF7AA4();
    sub_219BF5524();

    v9 = sub_219BF7AE4();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0xE400000000000000;
            v13 = 1685221239;
            v14 = a1;
            if (!a1)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0xE600000000000000;
            v13 = 0x72657474656CLL;
            v14 = a1;
            if (!a1)
            {
LABEL_24:
              v16 = 0xE300000000000000;
              if (v13 == 7105633)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v12 = 0xE300000000000000;
          v13 = 7105633;
          v14 = a1;
          if (!a1)
          {
            goto LABEL_24;
          }
        }

        if (v14 == 1)
        {
          v15 = 1685221239;
        }

        else
        {
          v15 = 0x72657474656CLL;
        }

        if (v14 == 1)
        {
          v16 = 0xE400000000000000;
        }

        else
        {
          v16 = 0xE600000000000000;
        }

        if (v13 == v15)
        {
LABEL_25:
          if (v12 == v16)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = sub_219BF78F4();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    sub_219BF7994();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

uint64_t sub_2194A3C08(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_219BF1E34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949F2C4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2194A6B74(MEMORY[0x277D33658], sub_2194B620C);
      goto LABEL_12;
    }

    sub_2194A9994(v11 + 1);
  }

  v13 = *v3;
  sub_218751238(&unk_280E905A0, MEMORY[0x277D33658], MEMORY[0x277D33660]);
  v14 = sub_219BF52E4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_218751238(&qword_280E90598, MEMORY[0x277D33658], MEMORY[0x277D33668]);
      v22 = sub_219BF53A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

uint64_t sub_2194A3ED4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  sub_218B58CA4(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v8;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949F614(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_2194A6B74(sub_218B58CA4, sub_2194B7728);
      goto LABEL_12;
    }

    sub_2194A9CA4(v12 + 1);
  }

  v14 = *v3;
  sub_218751238(&qword_280EE5B50, sub_218B58CA4, MEMORY[0x277D6D400]);
  v15 = sub_219BF52E4();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v7);
      sub_218751238(&qword_280EE5B48, sub_218B58CA4, MEMORY[0x277D6D408]);
      v23 = sub_219BF53A4();
      (*(v20 - 8))(v11, v7);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v7, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

uint64_t sub_2194A41A0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_219BE3514();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949F964(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2194A6B74(MEMORY[0x277D31550], sub_21876F2F4);
      goto LABEL_12;
    }

    sub_2194A9FB4(v11 + 1);
  }

  v13 = *v3;
  sub_218751238(&qword_280EE66A0, MEMORY[0x277D31550], MEMORY[0x277D31560]);
  v14 = sub_219BF52E4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_218751238(&unk_280EE6690, MEMORY[0x277D31550], MEMORY[0x277D31568]);
      v22 = sub_219BF53A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

void sub_2194A446C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21949FCB4(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_2194A6794(&qword_280E8D6F0, sub_218990848, &type metadata for TodayFeedGroupKind);
        goto LABEL_91;
      }

      sub_2194AA2C4(v7 + 1);
    }

    v9 = *v3;
    sub_219BF7AA4();
    sub_219918738(v6);
    sub_219BF5524();

    v10 = sub_219BF7AE4();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE700000000000000;
        v14 = 0x64657461727563;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0xE900000000000072;
            v14 = 0x657061707377656ELL;
            break;
          case 2:
            v14 = 0x77654E6C61636F6CLL;
            goto LABEL_25;
          case 3:
            v13 = 0xE800000000000000;
            v14 = 0x676E69646E657274;
            break;
          case 4:
            v13 = 0xE600000000000000;
            v14 = 0x756F59726F66;
            break;
          case 5:
            v16 = 0x74736574616CLL;
            goto LABEL_30;
          case 6:
            v16 = 0x64657373696DLL;
LABEL_30:
            v14 = v16 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
            v17 = 1701409391;
            goto LABEL_36;
          case 7:
            v13 = 0xEA0000000000756FLL;
            v14 = 0x59726F4665726F6DLL;
            break;
          case 8:
            v13 = 0xE500000000000000;
            v14 = 0x6369706F74;
            break;
          case 9:
            v13 = 0xE800000000000000;
            v14 = 0x656E697A6167616DLL;
            break;
          case 0xA:
            v13 = 0xE900000000000077;
            v14 = 0x6F6C6C6F4677656ELL;
            break;
          case 0xB:
            v14 = 0x7069726373627573;
            v13 = 0xEC0000006E6F6974;
            break;
          case 0xC:
            v13 = 0xE200000000000000;
            v14 = 25697;
            break;
          case 0xD:
            v13 = 0xE900000000000074;
            v14 = 0x6867696C746F7073;
            break;
          case 0xE:
            v14 = 0x6974736567677573;
            v13 = 0xEA00000000006E6FLL;
            break;
          case 0xF:
            v14 = 0x746E6F436E656573;
            v13 = 0xEF6B72614D746E65;
            break;
          case 0x10:
            v14 = 0x6957646572616873;
            v15 = 0x756F596874;
            goto LABEL_38;
          case 0x11:
            v13 = 0xEA0000000000746ELL;
            v14 = 0x656D656761676E65;
            break;
          case 0x12:
            v13 = 0xE800000000000000;
            v14 = 0x7374726F7053796DLL;
            break;
          case 0x13:
            v14 = 0x536F546F72746E69;
            v17 = 1953656688;
LABEL_36:
            v15 = v17 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
            goto LABEL_38;
          case 0x14:
            v14 = 0x74756374726F6873;
LABEL_25:
            v13 = 0xE900000000000073;
            break;
          case 0x15:
            v14 = 0x6C656E6E616863;
            break;
          case 0x16:
            v14 = 0x6F74536465766173;
            v13 = 0xEC00000073656972;
            break;
          case 0x17:
            v14 = 0x506C656E6E616863;
            v15 = 0x72656B6369;
LABEL_38:
            v13 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x18:
            v13 = 0xE400000000000000;
            v14 = 1685024614;
            break;
          default:
            break;
        }

        v18 = 0xE700000000000000;
        v19 = 0x64657461727563;
        switch(v6)
        {
          case 1:
            v18 = 0xE900000000000072;
            if (v14 == 0x657061707377656ELL)
            {
              goto LABEL_84;
            }

            goto LABEL_85;
          case 2:
            v24 = 0x77654E6C61636F6CLL;
            goto LABEL_64;
          case 3:
            v18 = 0xE800000000000000;
            if (v14 != 0x676E69646E657274)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 4:
            v18 = 0xE600000000000000;
            if (v14 != 0x756F59726F66)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 5:
            v25 = 0x74736574616CLL;
            goto LABEL_72;
          case 6:
            v25 = 0x64657373696DLL;
LABEL_72:
            v20 = v25 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
            v21 = 0x736569726FLL;
            goto LABEL_89;
          case 7:
            v18 = 0xEA0000000000756FLL;
            if (v14 != 0x59726F4665726F6DLL)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 8:
            v18 = 0xE500000000000000;
            if (v14 != 0x6369706F74)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 9:
            v18 = 0xE800000000000000;
            if (v14 != 0x656E697A6167616DLL)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 10:
            v18 = 0xE900000000000077;
            if (v14 != 0x6F6C6C6F4677656ELL)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 11:
            v22 = 0x7069726373627573;
            v23 = 1852795252;
            goto LABEL_80;
          case 12:
            v18 = 0xE200000000000000;
            if (v14 != 25697)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 13:
            v18 = 0xE900000000000074;
            if (v14 != 0x6867696C746F7073)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 14:
            v18 = 0xEA00000000006E6FLL;
            if (v14 != 0x6974736567677573)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 15:
            v18 = 0xEF6B72614D746E65;
            if (v14 != 0x746E6F436E656573)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 16:
            v20 = 0x6957646572616873;
            v21 = 0x756F596874;
            goto LABEL_89;
          case 17:
            v18 = 0xEA0000000000746ELL;
            if (v14 != 0x656D656761676E65)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 18:
            v18 = 0xE800000000000000;
            if (v14 != 0x7374726F7053796DLL)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 19:
            v19 = 0x536F546F72746E69;
            v18 = 0xED00007374726F70;
            goto LABEL_83;
          case 20:
            v24 = 0x74756374726F6873;
LABEL_64:
            v18 = 0xE900000000000073;
            if (v14 != v24)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 21:
            if (v14 != 0x6C656E6E616863)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 22:
            v22 = 0x6F74536465766173;
            v23 = 1936025970;
LABEL_80:
            v18 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v14 != v22)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 23:
            v20 = 0x506C656E6E616863;
            v21 = 0x72656B6369;
LABEL_89:
            v18 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v14 != v20)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          case 24:
            v18 = 0xE400000000000000;
            if (v14 != 1685024614)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          default:
LABEL_83:
            if (v14 != v19)
            {
              goto LABEL_85;
            }

LABEL_84:
            if (v13 == v18)
            {
              goto LABEL_94;
            }

LABEL_85:
            v26 = sub_219BF78F4();

            if (v26)
            {
              goto LABEL_95;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_91:
  v27 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = v6;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_94:

LABEL_95:
    sub_219BF7994();
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v30;
  }
}

void sub_2194A4C40(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_74;
  }

  if (a3)
  {
    sub_2194A01F8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_2194A6794(&qword_280E8D698, sub_2194B74B0, &type metadata for TagFeedPoolServiceContent);
      goto LABEL_74;
    }

    sub_2194AA7CC(v5 + 1);
  }

  v7 = *v3;
  sub_219BF7AA4();
  sub_218C65064(a1);
  sub_219BF5524();

  v8 = sub_219BF7AE4();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = ~v9;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 5)
      {
        if (*(*(v7 + 48) + a2) > 8u)
        {
          if (v10 == 9)
          {
            v12 = 0xE700000000000000;
            v11 = 0x73657069636572;
          }

          else if (v10 == 10)
          {
            v11 = 0x676E69646E657274;
            v12 = 0xEF73657069636552;
          }

          else
          {
            v11 = 0xD000000000000011;
            v12 = 0x8000000219CD6CE0;
          }
        }

        else if (v10 == 6)
        {
          v11 = 0xD000000000000011;
          v12 = 0x8000000219CD6CA0;
        }

        else if (v10 == 7)
        {
          v11 = 0x6867696C68676968;
          v12 = 0xEA00000000007374;
        }

        else
        {
          v11 = 0x6165486C61636F6CLL;
          v12 = 0xEE0073656E696C64;
        }
      }

      else if (*(*(v7 + 48) + a2) > 2u)
      {
        if (v10 == 3)
        {
          v11 = 0xD000000000000019;
          v12 = 0x8000000219CD6C50;
        }

        else if (v10 == 4)
        {
          v12 = 0xE700000000000000;
          v11 = 0x73656C7A7A7570;
        }

        else
        {
          v11 = 0xD000000000000010;
          v12 = 0x8000000219CD6C80;
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 0x736575737369;
        }

        else
        {
          v11 = 0xD000000000000017;
        }

        if (v10 == 1)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0x8000000219CD6C30;
        }
      }

      else
      {
        v11 = 0x6974724164656566;
        v12 = 0xEC00000073656C63;
      }

      v13 = 0x676E69646E657274;
      if (a1 != 10)
      {
        v13 = 0xD000000000000011;
      }

      v14 = 0xEF73657069636552;
      if (a1 != 10)
      {
        v14 = 0x8000000219CD6CE0;
      }

      if (a1 == 9)
      {
        v13 = 0x73657069636572;
        v14 = 0xE700000000000000;
      }

      v15 = 0x6867696C68676968;
      if (a1 != 7)
      {
        v15 = 0x6165486C61636F6CLL;
      }

      v16 = 0xEE0073656E696C64;
      if (a1 == 7)
      {
        v16 = 0xEA00000000007374;
      }

      if (a1 == 6)
      {
        v15 = 0xD000000000000011;
        v16 = 0x8000000219CD6CA0;
      }

      if (a1 <= 8u)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0xD000000000000019;
      v18 = 0xD000000000000010;
      if (a1 == 4)
      {
        v18 = 0x73656C7A7A7570;
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0x8000000219CD6C80;
      }

      if (a1 == 3)
      {
        v20 = 0x8000000219CD6C50;
      }

      else
      {
        v17 = v18;
        v20 = v19;
      }

      v21 = 0xD000000000000017;
      if (a1 == 1)
      {
        v21 = 0x736575737369;
      }

      v22 = 0xE600000000000000;
      if (a1 != 1)
      {
        v22 = 0x8000000219CD6C30;
      }

      if (!a1)
      {
        v21 = 0x6974724164656566;
        v22 = 0xEC00000073656C63;
      }

      if (a1 <= 2u)
      {
        v17 = v21;
        v20 = v22;
      }

      v23 = a1 <= 5u ? v17 : v13;
      v24 = a1 <= 5u ? v20 : v14;
      if (v11 == v23 && v12 == v24)
      {
        goto LABEL_77;
      }

      v25 = sub_219BF78F4();

      if (v25)
      {
        goto LABEL_78;
      }

      a2 = (a2 + 1) & v31;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_74:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = a1;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return;
  }

  __break(1u);
LABEL_77:

LABEL_78:
  sub_219BF7994();
  __break(1u);
}

void sub_2194A511C(uint64_t result, unint64_t a2, char a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21949F06C(v8 + 1, a4, a5, a6);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      sub_2194A6794(a4, a5, a6);
      a2 = v10;
      goto LABEL_12;
    }

    sub_2194A976C(v8 + 1, a4, a5, a6);
  }

  v11 = *v6;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v7);
  v12 = sub_219BF7AE4();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v7;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_219BF7994();
  __break(1u);
}

void sub_2194A5298(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2194A0644(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2194A6A20(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_2194AABE8(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_219BF6DC4();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_2186C6148(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_219BF6DD4();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_219BF7994();
  __break(1u);
}

uint64_t sub_2194A5440(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_219BF1FE4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2194A0860(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2194A6B74(MEMORY[0x277D336F0], sub_2194B6EB4);
      goto LABEL_12;
    }

    sub_2194AADF0(v11 + 1);
  }

  v13 = *v3;
  sub_218751238(&unk_27CC0F7E0, MEMORY[0x277D336F0], MEMORY[0x277D336F8]);
  v14 = sub_219BF52E4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_218751238(&qword_27CC1AC40, MEMORY[0x277D336F0], MEMORY[0x277D33700]);
      v22 = sub_219BF53A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

uint64_t sub_2194A570C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_219BDC104();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2194A0BB0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2194A6B74(MEMORY[0x277CC9AF8], sub_2194B5E24);
      goto LABEL_12;
    }

    sub_2194AB100(v11 + 1);
  }

  v13 = *v3;
  sub_218751238(&qword_280EE9BC8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  v14 = sub_219BF52E4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_218751238(&qword_280EE9BC0, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v22 = sub_219BF53A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

uint64_t sub_2194A59D8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_219BEAAD4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2194A0F00(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2194A6B74(MEMORY[0x277D31B20], sub_2194B6E20);
      goto LABEL_12;
    }

    sub_2194AB410(v11 + 1);
  }

  v13 = *v3;
  sub_218751238(&unk_27CC1AC10, MEMORY[0x277D31B20], MEMORY[0x277D31B28]);
  v14 = sub_219BF52E4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_218751238(&qword_27CC0F7D0, MEMORY[0x277D31B20], MEMORY[0x277D31B30]);
      v22 = sub_219BF53A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_219BF7994();
  __break(1u);
  return result;
}

void sub_2194A5CA4()
{
  v1 = v0;
  sub_2194B633C(0, &unk_280E8D620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_219BF72B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2194A5E20()
{
  v1 = v0;
  sub_2187F6AE4(0, &unk_280E8D6B0, sub_2194B5C2C, &type metadata for EmailNewsletterFeature, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_219BF72B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2194A5FE0(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v30 = a4;
  v7 = v4;
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v29 - v11;
  (a2)(0, v10);
  v13 = *v4;
  v14 = sub_219BF72B4();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v7;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    v22 = -1;
    if (v20 < 64)
    {
      v22 = ~(-1 << v20);
    }

    v23 = v22 & v21;
    v24 = (v20 + 63) >> 6;
    if ((v22 & v21) != 0)
    {
      do
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
LABEL_17:
        v28 = *(v9 + 72) * (v25 | (v19 << 6));
        sub_2194B7980(*(v13 + 48) + v28, v12, a3);
        sub_218754608(v12, *(v15 + 48) + v28, v30);
      }

      while (v23);
    }

    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v29;
        goto LABEL_21;
      }

      v27 = *(v13 + 56 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v15;
  }
}

void sub_2194A61E8()
{
  v1 = v0;
  sub_2187F6AE4(0, &qword_280E8D670, sub_218B0099C, MEMORY[0x277D303D0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_219BF72B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2194A6354()
{
  v1 = v0;
  sub_2187F6AE4(0, &qword_27CC1A958, sub_2194B53C4, &type metadata for PuzzleArchiveFilterOption, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_219BF72B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2194A64D4()
{
  v1 = v0;
  sub_2194B633C(0, &unk_27CC1A930, MEMORY[0x277D849A8], MEMORY[0x277D849B8], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_219BF72B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2194A6634()
{
  v1 = v0;
  sub_2194B633C(0, &unk_27CC1AA60, MEMORY[0x277D83B88], MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_219BF72B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2194A6794(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  sub_2187F6AE4(0, a1, a2, a3, MEMORY[0x277D84098]);
  v5 = *v3;
  v6 = sub_219BF72B4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 56 + 8 * v9)
    {
      memmove(v8, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    for (i = (v12 + 63) >> 6; v14; *(*(v7 + 48) + v17) = *(*(v5 + 48) + v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }
}

void sub_2194A68E8()
{
  v1 = v0;
  sub_2187F6AE4(0, &qword_280E8D678, sub_2194B6ADC, &type metadata for NotificationCategoriesAllowedItem, MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_219BF72B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }
}

void sub_2194A6A20(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_21879F984(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_219BF72B4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        v23 = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }
}

void sub_2194A6B74(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  (a2)(0, v7);
  v10 = *v2;
  v11 = sub_219BF72B4();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    v13 = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || v13 >= v10 + 56 + 8 * v14)
    {
      memmove(v13, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    v28 = v6 + 16;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
      (*(v6 + 32))(*(v12 + 48) + v24, v9, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }
}

void sub_2194A6DA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2194B633C(0, &unk_280E8D620, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_219BF7AA4();

      sub_219BF5524();
      v20 = sub_219BF7AE4();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_2194A7000(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SearchFilterItem(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B79E8(0);
  v7 = sub_219BF72C4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v33 = *(v31 + 72);
      sub_2194B7980(v20 + v33 * (v17 | (v9 << 6)), v5, type metadata accessor for SearchFilterItem);
      sub_219BF7AA4();
      sub_219BF5524();
      MEMORY[0x21CECE850](v5[32]);
      sub_219BF5524();
      sub_219BDBD34();
      sub_218751238(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_219BF52F4();
      v21 = sub_219BF7AE4();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v6 = v30;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v6 = v30;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_218754608(v5, *(v8 + 48) + v16 * v33, type metadata accessor for SearchFilterItem);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_2194A735C(uint64_t a1)
{
  v2 = v1;
  v34 = sub_219BE5A04();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B54F4(0);
  v7 = sub_219BF72C4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_218751238(&qword_280EE5E20, MEMORY[0x277D31AD0], MEMORY[0x277D31AD8]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_2194A766C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &unk_27CC1AA78, sub_218C3E51C, &type metadata for AudioFeedGroupKind, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v12 = sub_219BF7AE4();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_2194A7964(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &unk_280E8D6B0, sub_2194B5C2C, &type metadata for EmailNewsletterFeature, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_219BF7AA4();
      MEMORY[0x21CECE850](v16);
      v17 = sub_219BF7AE4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_2194A7BB0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AudioFeedTrack(0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  sub_2194B567C(0);
  v7 = sub_219BF72C4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v25 = v7 + 56;
    for (i = v6; v13; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = *(v6 + 48);
      v19 = *(v27 + 72);
      sub_2194B7980(v18 + v19 * (v15 | (v9 << 6)), v5, type metadata accessor for AudioFeedTrack);
      sub_219BF7AA4();
      v20 = [*v5 identifier];
      sub_219BF5414();

      sub_219BF5524();

      sub_2198DA178(v29);
      sub_219BF7AE4();
      v21 = v25;
      v22 = sub_219BF71A4();
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = *(v8 + 48) + v22 * v19;
      v6 = i;
      sub_218754608(v5, v23, type metadata accessor for AudioFeedTrack);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v24;
        goto LABEL_16;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v8;
  }
}

void sub_2194A7E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_280E8D670, sub_218B0099C, MEMORY[0x277D303D0], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_219BF7AA4();
      v17 = sub_219BED304();
      MEMORY[0x21CECE850](v17);
      v18 = sub_219BF7AE4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_2194A80B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_27CC1A958, sub_2194B53C4, &type metadata for PuzzleArchiveFilterOption, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(v3 + 48) + 16 * (v10 | (v5 << 6));
      sub_2194A1250(*v13, *(v13 + 8), v4);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v4;
  }
}

void sub_2194A8214(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B5EB8(0);
  v7 = sub_219BF72C4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_2194B7980(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      sub_219BF7AA4();
      sub_219BDF0D4();
      sub_219BF5524();

      v20 = sub_219BF7AE4();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_218754608(v5, *(v8 + 48) + v15 * v19, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_2194A84FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2194B633C(0, &unk_27CC1A930, MEMORY[0x277D849A8], MEMORY[0x277D849B8], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x21CECE820](*(v5 + 40), v16, 4);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_2194A8710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2194B633C(0, &unk_27CC1AA60, MEMORY[0x277D83B88], MEMORY[0x277D83B98], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_219BF7A94();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_2194A8920(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &unk_27CC1AA30, sub_218A80DA8, MEMORY[0x277D336A8], MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF1F64();
      sub_219BF5524();

      v17 = sub_219BF7AE4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_2194A8B88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_280E8D678, sub_2194B6ADC, &type metadata for NotificationCategoriesAllowedItem, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
LABEL_13:
      sub_219BF7AA4();
      sub_219BF5524();
      v14 = sub_219BF7AE4();
      v15 = -1 << *(v5 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
      {
        v18 = 0;
        v19 = (63 - v15) >> 6;
        while (++v17 != v19 || (v18 & 1) == 0)
        {
          v20 = v17 == v19;
          if (v17 == v19)
          {
            v17 = 0;
          }

          v18 |= v20;
          v21 = *(v11 + 8 * v17);
          if (v21 != -1)
          {
            v12 = __clz(__rbit64(~v21)) + (v17 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v5 + 16);
    }

    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v2 = v1;
        goto LABEL_24;
      }

      v9 = *(v3 + 56 + 8 * v13);
      ++v6;
      if (v9)
      {
        v6 = v13;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

LABEL_24:
    *v2 = v5;
  }
}

void sub_2194A8DB8(uint64_t a1)
{
  v2 = v1;
  v34 = sub_219BF3924();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B5CFC(0);
  v7 = sub_219BF72C4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_218751238(&qword_280E90050, MEMORY[0x277D33FB8], MEMORY[0x277D33FC0]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_2194A90C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_280E8D6C8, sub_218C3EB1C, &type metadata for MagazineFeedGroupKind, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v12 = sub_219BF7AE4();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_2194A94DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_27CC1AD20, sub_2194B745C, &type metadata for PuzzleRevealType, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v17 = sub_219BF7AE4();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_2194A976C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  sub_2187F6AE4(0, a2, a3, a4, MEMORY[0x277D84098]);
  v7 = sub_219BF72C4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      sub_219BF7AA4();
      MEMORY[0x21CECE850](v19);
      v20 = sub_219BF7AE4();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v5 = v8;
  }
}

void sub_2194A9994(uint64_t a1)
{
  v2 = v1;
  v34 = sub_219BF1E34();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_2194B620C(0);
  v7 = sub_219BF72C4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_218751238(&unk_280E905A0, MEMORY[0x277D33658], MEMORY[0x277D33660]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_2194A9CA4(uint64_t a1)
{
  v2 = v1;
  sub_218B58CA4(0);
  v35 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_2194B7728(0);
  v8 = sub_219BF72C4();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v4 + 16;
    v34 = v4;
    v16 = v8 + 56;
    v31 = (v4 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_218751238(&qword_280EE5B50, sub_218B58CA4, MEMORY[0x277D6D400]);
      v22 = sub_219BF52E4();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_2194A9FB4(uint64_t a1)
{
  v2 = v1;
  v34 = sub_219BE3514();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_21876F2F4(0);
  v7 = sub_219BF72C4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_218751238(&qword_280EE66A0, MEMORY[0x277D31550], MEMORY[0x277D31560]);
      v21 = sub_219BF52E4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_2194AA2C4(uint64_t a1)
{
  v2 = *v1;
  sub_2187F6AE4(0, &qword_280E8D6F0, sub_218990848, &type metadata for TodayFeedGroupKind, MEMORY[0x277D84098]);
  v3 = sub_219BF72C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v11 = sub_219BF7AE4();
      v12 = -1 << *(v4 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = (-1 << v13) & ~*(v10 + 8 * (v13 >> 6));
      if (!v15)
      {
        v21 = 0;
        v22 = (63 - v12) >> 6;
        while (++v14 != v22 || (v21 & 1) == 0)
        {
          v23 = v14 == v22;
          if (v14 == v22)
          {
            v14 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v14);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v14 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v16 = __clz(__rbit64(v15)) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }
}

void sub_2194AA7CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2187F6AE4(0, &qword_280E8D698, sub_2194B74B0, &type metadata for TagFeedPoolServiceContent, MEMORY[0x277D84098]);
  v4 = sub_219BF72C4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_219BF7AA4();
      sub_219BF5524();

      v12 = sub_219BF7AE4();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}