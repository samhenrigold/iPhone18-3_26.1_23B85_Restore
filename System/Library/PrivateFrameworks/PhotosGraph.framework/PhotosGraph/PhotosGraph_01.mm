uint64_t sub_22F1156B4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22F111F38(v6 + 1, &unk_27DAB0650, &qword_22F770868, sub_22F2897A0);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_22F116AF0(&unk_27DAB0650, &qword_22F770868);
        goto LABEL_104;
      }

      sub_22F1191F8(v6 + 1, &unk_27DAB0650, &qword_22F770868, sub_22F2897A0);
    }

    v8 = *v3;
    sub_22F742170();
    sub_22F2897A0(v5);
    sub_22F740D60();

    result = sub_22F7421D0();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xED0000657461645FLL;
        v12 = 0x6E6F5F6E656B6174;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0x6E6F5F6E656B6174;
            v11 = 0xED0000706972745FLL;
            break;
          case 2:
            v12 = 0x5F6F65675F736168;
            v11 = 0xEC00000068736168;
            break;
          case 3:
            v12 = 0xD000000000000011;
            v11 = 0x800000022F78E520;
            break;
          case 4:
            v12 = 0xD000000000000010;
            v11 = 0x800000022F78E540;
            break;
          case 5:
            v12 = 0x736E6961746E6F63;
            v11 = 0xEF6E6F737265705FLL;
            break;
          case 6:
            v12 = 0x736E6961746E6F63;
            v11 = 0xEC0000007465705FLL;
            break;
          case 7:
            v12 = 0x736E6961746E6F63;
            goto LABEL_34;
          case 8:
            v12 = 0x666F5F646C696863;
LABEL_34:
            v13 = 0x656E6563735FLL;
            goto LABEL_42;
          case 9:
            v12 = 0x6F7661665F736177;
            v11 = 0xED00006465746972;
            break;
          case 0xA:
            v12 = 0xD00000000000001ALL;
            v11 = 0x800000022F78E5A0;
            break;
          case 0xB:
            v12 = 0x74615F6E656B6174;
            v11 = 0xED0000656D6F685FLL;
            break;
          case 0xC:
            v12 = 0xD000000000000015;
            v11 = 0x800000022F78E5D0;
            break;
          case 0xD:
            v12 = 0x61635F666F5F7369;
            v13 = 0x79726F676574;
            goto LABEL_42;
          case 0xE:
            v12 = 0xD000000000000011;
            v11 = 0x800000022F78E600;
            break;
          case 0xF:
            v12 = 0x656D726F66726570;
            v11 = 0xEC00000079625F64;
            break;
          case 0x10:
            v11 = 0xE700000000000000;
            v12 = 0x74615F646C6568;
            break;
          case 0x11:
            v12 = 0xD000000000000010;
            v11 = 0x800000022F78E630;
            break;
          case 0x12:
            v11 = 0xE300000000000000;
            v12 = 7954788;
            break;
          case 0x13:
            v11 = 0xE700000000000000;
            v12 = 0x7961646B656577;
            break;
          case 0x14:
            v11 = 0xE500000000000000;
            v12 = 0x68746E6F6DLL;
            break;
          case 0x15:
            v11 = 0xE700000000000000;
            v12 = 0x72657472617571;
            break;
          case 0x16:
            v11 = 0xE400000000000000;
            v12 = 1918985593;
            break;
          case 0x17:
            v11 = 0xE800000000000000;
            v12 = 0x65746174735F6E69;
            break;
          case 0x18:
            v12 = 0x746E756F635F6E69;
            v11 = 0xEA00000000007972;
            break;
          case 0x19:
            v12 = 0x6E695F6E656B6174;
            v11 = 0xED0000797469635FLL;
            break;
          case 0x1A:
            v12 = 0x6E695F6E656B6174;
            v13 = 0x65746174735FLL;
LABEL_42:
            v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 0x1B:
            v12 = 0xD000000000000010;
            v11 = 0x800000022F78E690;
            break;
          case 0x1C:
            v12 = 0xD000000000000012;
            v11 = 0x800000022F78E6B0;
            break;
          case 0x1D:
            v12 = 0xD000000000000011;
            v11 = 0x800000022F78E6D0;
            break;
          case 0x1E:
            v12 = 0xD000000000000017;
            v11 = 0x800000022F78E6F0;
            break;
          default:
            break;
        }

        v14 = 0x6E6F5F6E656B6174;
        v15 = 0xED0000657461645FLL;
        switch(v5)
        {
          case 1:
            v16 = 0x6E6F5F6E656B6174;
            v17 = 0x706972745FLL;
            goto LABEL_58;
          case 2:
            v18 = 0x5F6F65675F736168;
            v19 = 1752392040;
            goto LABEL_77;
          case 3:
            v15 = 0x800000022F78E520;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 4:
            v15 = 0x800000022F78E540;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 5:
            v15 = 0xEF6E6F737265705FLL;
            if (v12 != 0x736E6961746E6F63)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 6:
            v18 = 0x736E6961746E6F63;
            v19 = 1952804959;
            goto LABEL_77;
          case 7:
            v20 = 0x736E6961746E6F63;
            goto LABEL_84;
          case 8:
            v20 = 0x666F5F646C696863;
LABEL_84:
            v21 = 0x656E6563735FLL;
            goto LABEL_102;
          case 9:
            v16 = 0x6F7661665F736177;
            v17 = 0x6465746972;
            goto LABEL_58;
          case 10:
            v15 = 0x800000022F78E5A0;
            if (v12 != 0xD00000000000001ALL)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 11:
            v16 = 0x74615F6E656B6174;
            v17 = 0x656D6F685FLL;
            goto LABEL_58;
          case 12:
            v15 = 0x800000022F78E5D0;
            if (v12 != 0xD000000000000015)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 13:
            v20 = 0x61635F666F5F7369;
            v21 = 0x79726F676574;
            goto LABEL_102;
          case 14:
            v15 = 0x800000022F78E600;
            if (v12 != 0xD000000000000011)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 15:
            v18 = 0x656D726F66726570;
            v19 = 2036490084;
LABEL_77:
            v15 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v12 != v18)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 16:
            v15 = 0xE700000000000000;
            if (v12 != 0x74615F646C6568)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 17:
            v15 = 0x800000022F78E630;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 18:
            v15 = 0xE300000000000000;
            if (v12 != 7954788)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 19:
            v15 = 0xE700000000000000;
            if (v12 != 0x7961646B656577)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 20:
            v15 = 0xE500000000000000;
            if (v12 != 0x68746E6F6DLL)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 21:
            v15 = 0xE700000000000000;
            if (v12 != 0x72657472617571)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 22:
            v15 = 0xE400000000000000;
            if (v12 != 1918985593)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 23:
            v15 = 0xE800000000000000;
            if (v12 != 0x65746174735F6E69)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 24:
            v15 = 0xEA00000000007972;
            if (v12 != 0x746E756F635F6E69)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 25:
            v16 = 0x6E695F6E656B6174;
            v17 = 0x797469635FLL;
LABEL_58:
            v15 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v12 != v16)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 26:
            v20 = 0x6E695F6E656B6174;
            v21 = 0x65746174735FLL;
LABEL_102:
            v15 = v21 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v12 != v20)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 27:
            v15 = 0x800000022F78E690;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 28:
            v15 = 0x800000022F78E6B0;
            if (v12 != 0xD000000000000012)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          case 29:
            v14 = 0xD000000000000011;
            v15 = 0x800000022F78E6D0;
            goto LABEL_96;
          case 30:
            v15 = 0x800000022F78E6F0;
            if (v12 != 0xD000000000000017)
            {
              goto LABEL_98;
            }

            goto LABEL_97;
          default:
LABEL_96:
            if (v12 != v14)
            {
              goto LABEL_98;
            }

LABEL_97:
            if (v11 == v15)
            {
              goto LABEL_107;
            }

LABEL_98:
            v22 = sub_22F742040();

            if (v22)
            {
              goto LABEL_108;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_104:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v5;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_107:

LABEL_108:
    result = sub_22F7420B0();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v26;
  }

  return result;
}

uint64_t sub_22F116050(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22F7409A0();
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
    sub_22F1121BC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22F116C20(MEMORY[0x277D1F370], &qword_27DAB06C8, &qword_22F7708A0);
      goto LABEL_12;
    }

    sub_22F119438(v11 + 1);
  }

  v13 = *v3;
  sub_22F1205EC(&qword_2810A94A0, MEMORY[0x277D1F370], MEMORY[0x277D1F378]);
  v14 = sub_22F740D40();
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
      sub_22F1205EC(&unk_2810A9490, MEMORY[0x277D1F370], MEMORY[0x277D1F380]);
      v22 = sub_22F740DE0();
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
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

unint64_t sub_22F116318(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22F11252C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_22F116E6C();
      goto LABEL_12;
    }

    sub_22F119754(v6 + 1);
  }

  v8 = *v3;
  sub_22F742170();
  sub_22F2594CC(v18, v5);
  result = sub_22F7421D0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06B0, &qword_22F770BD0);

      v12 = sub_22F17B5C0(v11, v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v17;
  *(*v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F1164A4(uint64_t result, unint64_t a2, char a3)
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
    sub_22F112A54(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22F117110();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22F119C50(v5 + 1);
  }

  v8 = *v3;
  result = sub_22F742160();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

void *sub_22F1165C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0770, &qword_22F78ABC0);
  v2 = *v0;
  v3 = sub_22F741AA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void *sub_22F116720(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_22F741AA0();
  v15 = v14;
  if (*(v13 + 16))
  {
    v30 = v8;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
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
        v28 = *(v10 + 72) * (v25 | (v19 << 6));
        sub_22F12067C(*(v13 + 48) + v28, v12, a4);
        result = sub_22F120744(v12, *(v15 + 48) + v28, a4);
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

        v8 = v30;
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
    *v8 = v15;
  }

  return result;
}

void *sub_22F116964()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0778, &qword_22F7708F0);
  v2 = *v0;
  v3 = sub_22F741AA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

  return result;
}

void *sub_22F116AF0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22F741AA0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22F116C20(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_22F741AA0();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void *sub_22F116E6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB06B8, &qword_22F770898);
  v2 = *v0;
  v3 = sub_22F741AA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

  return result;
}

id sub_22F116FD0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22F741AA0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22F117110()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05D0, &qword_22F770828);
  v2 = *v0;
  v3 = sub_22F741AA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

uint64_t sub_22F117250(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0770, &qword_22F78ABC0);
  result = sub_22F741AB0();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22F742170();

      sub_22F740D60();
      result = sub_22F7421D0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_22F117488(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MomentGroundedLocation(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0790, &qword_22F770900);
  result = sub_22F741AB0();
  v8 = result;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v33 = *(v31 + 72);
      sub_22F12067C(v20 + v33 * (v17 | (v9 << 6)), v5, type metadata accessor for MomentGroundedLocation);
      sub_22F742170();
      v21 = v32;
      sub_22F73FF10();
      sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
      sub_22F740D50();
      MEMORY[0x231901D30](*&v5[*(v21 + 32)]);
      MEMORY[0x231901D30](*&v5[*(v21 + 36)]);
      result = sub_22F7421D0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
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
      result = sub_22F120744(v5, *(v8 + 48) + v16 * v33, type metadata accessor for MomentGroundedLocation);
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

  return result;
}

uint64_t sub_22F1177DC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for NamedGroundedLocation(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0788, &qword_22F7708F8);
  result = sub_22F741AB0();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v15 = result + 56;
    v33 = v6;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v36 = *(v34 + 72);
      sub_22F12067C(v20 + v36 * (v17 | (v9 << 6)), v5, type metadata accessor for NamedGroundedLocation);
      sub_22F742170();
      sub_22F740D60();
      v21 = &v5[*(v35 + 20)];
      v22 = type metadata accessor for MomentGroundedLocation(0);
      sub_22F73FF10();
      sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
      sub_22F740D50();
      MEMORY[0x231901D30](*&v21[*(v22 + 32)]);
      MEMORY[0x231901D30](*&v21[*(v22 + 36)]);
      result = sub_22F7421D0();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v5 = v32;
        v6 = v33;
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

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v5 = v32;
      v6 = v33;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22F120744(v5, *(v8 + 48) + v16 * v36, type metadata accessor for NamedGroundedLocation);
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

        v2 = v31;
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

  return result;
}

uint64_t sub_22F117B54(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Song(0);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0598, &unk_22F7787F0);
  result = sub_22F741AB0();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_22F12067C(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for Song);
      sub_22F742170();
      sub_22F740D60();
      result = sub_22F7421D0();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_22F120744(v5, *(v8 + 48) + v15 * v19, type metadata accessor for Song);
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

        v2 = v28;
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

  return result;
}

uint64_t sub_22F117E2C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22F73F690();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0768, &qword_22F7708E8);
  v7 = sub_22F741AB0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_22F740D40();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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

  return result;
}

uint64_t sub_22F118148(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0700, &qword_22F7708B0);
  result = sub_22F741AB0();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_22F742170();
      sub_22F740D60();

      result = sub_22F7421D0();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

  return result;
}

uint64_t sub_22F11842C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22F73F990();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0668, &unk_22F77A310);
  v7 = sub_22F741AB0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22F1205EC(&qword_2810AC6D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      result = sub_22F740D40();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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

  return result;
}

uint64_t sub_22F118748(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PublicEvent(0);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0580, &qword_22F770818);
  result = sub_22F741AB0();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_22F12067C(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for PublicEvent);
      sub_22F742170();
      MEMORY[0x231901D70](*v5);
      result = sub_22F7421D0();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_22F120744(v5, *(v8 + 48) + v15 * v19, type metadata accessor for PublicEvent);
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

        v2 = v28;
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

  return result;
}

uint64_t sub_22F118A1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0778, &qword_22F7708F0);
  result = sub_22F741AB0();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22F742170();
      v18 = *(v17 + 16);

      v19 = [v18 localIdentifier];
      sub_22F740E20();

      sub_22F740D60();

      result = sub_22F7421D0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

  return result;
}

uint64_t sub_22F118C88(uint64_t a1)
{
  v2 = v1;
  v43 = sub_22F73F690();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v34 - v6;
  v45 = type metadata accessor for SongSource(0);
  v41 = *(v45 - 1);
  MEMORY[0x28223BE20](v45);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05C0, &qword_22F770820);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v39 = (v3 + 48);
    v40 = v9;
    v37 = (v3 + 32);
    v35 = v1;
    v36 = (v3 + 8);
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v9 + 48);
      v44 = *(v41 + 72);
      sub_22F12067C(v23 + v44 * (v20 | (v12 << 6)), v8, type metadata accessor for SongSource);
      sub_22F742170();
      sub_22F740D60();
      if (*&v8[v45[11] + 8])
      {
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v24 = v42;
      sub_22F12057C(&v8[v45[7]], v42);
      v25 = v43;
      if ((*v39)(v24, 1, v43) == 1)
      {
        sub_22F742190();
      }

      else
      {
        v26 = v38;
        (*v37)(v38, v24, v25);
        sub_22F742190();
        sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_22F740D50();
        (*v36)(v26, v25);
      }

      if (*&v8[v45[8] + 8])
      {
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      if (*&v8[v45[12] + 8])
      {
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v9 = v40;
      result = sub_22F7421D0();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_40;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22F120744(v8, *(v11 + 48) + v19 * v44, type metadata accessor for SongSource);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v35;
        goto LABEL_38;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {

LABEL_38:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22F1191F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F741AB0();
  v8 = result;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      sub_22F742170();
      a4(v19);
      sub_22F740D60();

      result = sub_22F7421D0();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_22F119438(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22F7409A0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06C8, &qword_22F7708A0);
  v7 = sub_22F741AB0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22F1205EC(&qword_2810A94A0, MEMORY[0x277D1F370], MEMORY[0x277D1F378]);
      result = sub_22F740D40();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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

  return result;
}

uint64_t sub_22F119754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB06B8, &qword_22F770898);
  result = sub_22F741AB0();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_38:
    *v2 = v5;
    return result;
  }

  v31 = v1;
  v32 = v3;
  v6 = 0;
  v7 = v3 + 56;
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
  v12 = result + 56;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
    sub_22F742170();
    if (v17 >> 62)
    {
      v23 = sub_22F741A00();
      MEMORY[0x231901D30](v23);
      result = sub_22F741A00();
      v18 = result;
      if (!result)
      {
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      result = MEMORY[0x231901D30](*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_26;
      }
    }

    if (v18 < 1)
    {
      goto LABEL_41;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {

      for (i = 0; i != v18; ++i)
      {
        MEMORY[0x2319016F0](i, v17);
        sub_22F741820();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v20 = (v17 + 32);

      do
      {
        v21 = *v20++;
        v22 = v21;
        sub_22F741820();

        --v18;
      }

      while (v18);
    }

LABEL_27:
    result = sub_22F7421D0();
    v24 = -1 << *(v5 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v26);
        if (v30 != -1)
        {
          v13 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_40;
    }

    v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v5 + 48) + 8 * v13) = v17;
    ++*(v5 + 16);
    v3 = v32;
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v31;
      goto LABEL_38;
    }

    v16 = *(v7 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_22F119A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F741AB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_22F741800();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_22F119C50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05D0, &qword_22F770828);
  result = sub_22F741AB0();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_22F742160();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_22F119E40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Song(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F741C40();

  v16 = 0;
  if (!a2 || !a3)
  {
LABEL_12:
    *a1 = v14;
    return v16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v19 = a1;
    sub_22F741E10();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      v16 = 0;
LABEL_9:
      sub_22F120ADC(v9, &qword_27DAB1250, &qword_22F781A10);
    }

    else
    {
      v16 = 0;
      v18 = a3;
      v17 = a3 - 1;
      while (1)
      {
        sub_22F120744(v9, v13, type metadata accessor for Song);
        sub_22F120744(v13, a2, type metadata accessor for Song);
        if (v17 == v16)
        {
          break;
        }

        a2 += *(v11 + 72);
        sub_22F741E10();
        ++v16;
        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {
          goto LABEL_9;
        }
      }

      v16 = v18;
    }

    a1 = v19;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_22F11A068(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_22F7419C0();
  type metadata accessor for PGStoryPromptSuggestionQuestion();
  sub_22F1205EC(&qword_27DAB07B8, type metadata accessor for PGStoryPromptSuggestionQuestion, MEMORY[0x277D85378]);
  result = sub_22F741470();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_22F741A40())
      {
        goto LABEL_30;
      }

      type metadata accessor for PGStoryPromptSuggestionQuestion();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_22F11A294(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22F11A438(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11A590(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = 0;
    goto LABEL_31;
  }

  sub_22F7419C0();
  type metadata accessor for ImportantEntitiesGraphInferenceMoment();
  sub_22F1205EC(&unk_2810AC6B0, type metadata accessor for ImportantEntitiesGraphInferenceMoment, &unk_22F77CC20);
  result = sub_22F741470();
  v4 = v24;
  v8 = v25;
  v9 = v26;
  v10 = v27;
  v11 = v28;
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_31;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v21 = v9;
  v22 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (v4 < 0)
  {
    if (!sub_22F741A40())
    {
      goto LABEL_29;
    }

    type metadata accessor for ImportantEntitiesGraphInferenceMoment();
    swift_dynamicCast();
    result = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_29;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v14 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!result)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v13;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  v7 = v22;
LABEL_31:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_22F11A7BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Song(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v27 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_22F12067C(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for Song);
      v23 = v22;
      v24 = v30;
      sub_22F120744(v23, v30, type metadata accessor for Song);
      sub_22F120744(v24, a2, type metadata accessor for Song);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_22F11AA10(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_22F7402E0();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_22F11ACB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0730, &unk_22F771740);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = (&v34 - v10);
  v41 = a4;
  v13 = *(a4 + 64);
  v12 = a4 + 64;
  v11 = v13;
  v14 = -1 << *(v12 - 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v12;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v12 - 32);
    v36 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = v41;
      v26 = *(v41 + 48);
      v27 = sub_22F740050();
      v28 = *(v27 - 8);
      v29 = v26 + *(v28 + 72) * v24;
      v30 = v39;
      (*(v28 + 16))(v39, v29, v27);
      *&v30[*(v40 + 48)] = *(*(v25 + 56) + 8 * v24);
      v31 = v30;
      a1 = v38;
      sub_22F1207AC(v31, v38, &qword_27DAB0730, &unk_22F771740);
      sub_22F1207AC(a1, a2, &qword_27DAB0730, &unk_22F771740);
      if (v19 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      v32 = __OFADD__(v19++, 1);
      v17 = v23;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v12 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v23 = v33 - 1;
LABEL_23:
    v14 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_22F11AF58(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      v20 = *(a4 + 56) + 24 * v18;
      v21 = *(v20 + 16);
      v22 = *v20;
      *v11 = v19;
      *(v11 + 8) = v22;
      *(v11 + 24) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 32;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22F11B0EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = (&v34 - v10);
  v41 = a4;
  v13 = *(a4 + 64);
  v12 = a4 + 64;
  v11 = v13;
  v14 = -1 << *(v12 - 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v12;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v12 - 32);
    v36 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = v41;
      v26 = *(v41 + 48);
      v27 = sub_22F740390();
      v28 = *(v27 - 8);
      v29 = v26 + *(v28 + 72) * v24;
      v30 = v39;
      (*(v28 + 16))(v39, v29, v27);
      *&v30[*(v40 + 48)] = *(*(v25 + 56) + 8 * v24);
      v31 = v30;
      a1 = v38;
      sub_22F1207AC(v31, v38, &unk_27DAB0710, &qword_22F772040);
      sub_22F1207AC(a1, a2, &unk_27DAB0710, &qword_22F772040);
      if (v19 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      v32 = __OFADD__(v19++, 1);
      v17 = v23;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v12 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v23 = v33 - 1;
LABEL_23:
    v14 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_22F11B390(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 4 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22F11B504(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t *sub_22F11B7AC(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_22F7419C0();
  sub_22F120634(0, a5, a6);
  sub_22F11FA28(a7, a5, a6);
  result = sub_22F741470();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if (v17 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_22F741A40())
      {
        goto LABEL_30;
      }

      sub_22F120634(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    v19 = (v19 + 1);
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = (v26 - 1);
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_22F11B9DC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_22F11BAD8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11BC30(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22F11BD84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = (&v32 - v10);
  v39 = a4;
  v13 = *(a4 + 64);
  v12 = a4 + 64;
  v11 = v13;
  v14 = -1 << *(v12 - 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
LABEL_25:
    *a1 = v39;
    a1[1] = v12;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(v12 - 32);
    v34 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = v39;
      v26 = *(v39 + 48);
      v27 = v26 + *(*(type metadata accessor for Song(0) - 8) + 72) * v24;
      v28 = v37;
      sub_22F12067C(v27, v37, type metadata accessor for Song);
      *(v28 + *(v38 + 48)) = *(*(v25 + 56) + 4 * v24);
      v29 = v28;
      a1 = v36;
      sub_22F1207AC(v29, v36, &qword_27DAB10F0, &qword_22F771540);
      sub_22F1207AC(a1, a2, &qword_27DAB10F0, &qword_22F771540);
      if (v19 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v35 + 72);
      v30 = __OFADD__(v19++, 1);
      v17 = v23;
      if (v30)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v12 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v31 = v17 + 1;
    }

    else
    {
      v31 = v18;
    }

    v23 = v31 - 1;
LABEL_23:
    v14 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void sub_22F11C050(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v36 = a4;
  v19 = *(a4 + 64);
  v18 = a4 + 64;
  v17 = v19;
  v20 = -1 << *(v18 - 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
LABEL_25:
    *a1 = v36;
    a1[1] = v18;
    a1[2] = ~v20;
    a1[3] = v23;
    a1[4] = v22;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = a1;
    v34 = a3;
    v23 = 0;
    v32 = v20;
    v24 = (63 - v20) >> 6;
    v25 = 1;
    while (v22)
    {
LABEL_14:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      a1 = *(v35 + 72);
      sub_22F12067C(*(v36 + 56) + a1 * (v28 | (v23 << 6)), v13, a6);
      sub_22F120744(v13, v16, a6);
      sub_22F120744(v16, a2, a6);
      if (v25 == v34)
      {
        a1 = v33;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v26 = v23;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v27 >= v24)
      {
        break;
      }

      v22 = *(v18 + 8 * v27);
      ++v26;
      if (v22)
      {
        v23 = v27;
        goto LABEL_14;
      }
    }

    v22 = 0;
    if (v24 <= v23 + 1)
    {
      v30 = v23 + 1;
    }

    else
    {
      v30 = v24;
    }

    v23 = v30 - 1;
    a1 = v33;
LABEL_23:
    v20 = v32;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_22F11C284(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11C3E0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22F11C560(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = (&v33 - v10);
  v11 = a4 + 64;
  v12 = -1 << *(a4 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v21 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v11;
    a1[2] = ~v12;
    a1[3] = v21;
    a1[4] = v14;
    return;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v15 = 0;
    v16 = (63 - v12) >> 6;
    v17 = 1;
    v36 = a3;
    while (v14)
    {
LABEL_14:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v15;
      v22 = v20 | (v15 << 6);
      v23 = *(a4 + 56);
      v24 = a4;
      v25 = *(*(a4 + 48) + 8 * v22);
      v26 = sub_22F73F690();
      v27 = *(v26 - 8);
      v28 = v23 + *(v27 + 72) * v22;
      v29 = v39;
      (*(v27 + 16))(&v39[*(v40 + 48)], v28, v26);
      *v29 = v25;
      v30 = v29;
      a1 = v38;
      sub_22F1207AC(v30, v38, &unk_27DAB10E0, &unk_22F771530);
      sub_22F1207AC(a1, a2, &unk_27DAB10E0, &unk_22F771530);
      if (v17 == v36)
      {
        a1 = v35;
        a4 = v24;
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      v31 = __OFADD__(v17++, 1);
      a4 = v24;
      v15 = v21;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v18 = v15;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        v15 = v19;
        goto LABEL_14;
      }
    }

    v14 = 0;
    if (v16 <= v15 + 1)
    {
      v32 = v15 + 1;
    }

    else
    {
      v32 = v16;
    }

    v21 = v32 - 1;
    a1 = v35;
LABEL_23:
    v12 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_22F11C814(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      v20 = (*(a4 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      *v11 = v19;
      v11[1] = v22;
      v11[2] = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11C970(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11CACC(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_22F11CBCC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11CD20(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11CE78(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22F11CFCC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_22F11D0CC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_22F73FE50();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_22F11D398(uint64_t *a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v50 = a6;
  v51 = a7;
  v49 = a5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v46 = &v41 - v14;
  v15 = a4 + 64;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 64);
  if (!a2)
  {
    goto LABEL_24;
  }

  if (!a3)
  {
    a2 = 0;
LABEL_24:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = a2;
    a1[4] = v18;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v42 = -1 << *(a4 + 32);
    v43 = a1;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v44 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v52 = v19;
      v25 = v24 | (v19 << 6);
      v26 = a4;
      v27 = *(a4 + 48);
      v28 = *(a4 + 56);
      v29 = (v27 + 16 * v25);
      v30 = *v29;
      v31 = v29[1];
      v32 = v51(0, v13);
      v33 = *(v32 - 8);
      v34 = v28 + *(v33 + 72) * v25;
      v35 = v47;
      (*(v33 + 16))(&v47[*(v48 + 48)], v34, v32);
      *v35 = v30;
      v35[1] = v31;
      v36 = v35;
      v37 = v46;
      v38 = v49;
      a1 = v50;
      sub_22F1207AC(v36, v46, v49, v50);
      sub_22F1207AC(v37, a2, v38, a1);
      if (v21 == v44)
      {

        v16 = v42;
        a1 = v43;
        a4 = v26;
        a2 = v52;
        goto LABEL_24;
      }

      a2 += *(v45 + 72);

      v39 = __OFADD__(v21++, 1);
      a4 = v26;
      v19 = v52;
      if (v39)
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v40 = v19 + 1;
    }

    else
    {
      v40 = v20;
    }

    a2 = v40 - 1;
    v16 = v42;
    a1 = v43;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_22F11D658(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4;
  v9 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v20 = -1 << *(v6 + 32);
    v10 = v6 + 64;
    v11 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v12 = v22 & *(v6 + 64);
    v26 = v11;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_22F741CA0();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = result | 0x8000000000000000;
  v26 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v27 = a3;
  a3 = 0;
  v13 = 0;
  v14 = (v11 + 64) >> 6;
  v15 = 1;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!sub_22F741D20())
      {
        goto LABEL_31;
      }

      sub_22F120634(0, a5, a6);
      swift_dynamicCast();
      result = v28;
      v17 = v13;
      if (!v28)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v16 = v13;
    if (!v12)
    {
      break;
    }

    v17 = v13;
LABEL_13:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    result = *(*(v6 + 48) + ((v17 << 9) | (8 * v18)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v27;
    if (v15 == v27)
    {
LABEL_31:
      v17 = v13;
      goto LABEL_32;
    }

    ++a2;
    a3 = v15;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v10 + 8 * v17);
    ++v16;
    if (v12)
    {
      v13 = v17;
      goto LABEL_13;
    }
  }

  v12 = 0;
  if (v14 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v14;
  }

  v17 = v23 - 1;
LABEL_32:
  *v9 = v6;
  v9[1] = v10;
  v9[2] = v26;
  v9[3] = v17;
  v9[4] = v12;
  return a3;
}

uint64_t sub_22F11D84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F740C30();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v35 - v7;
  v8 = sub_22F740B90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C8, &qword_22F770918);
  swift_allocObject();
  v15 = sub_22F73FC90();
  v16 = [objc_allocWithZone(MEMORY[0x277CD9950]) initWithPhotoLibrary_];
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = sub_22F741320();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  v19 = *(v9 + 16);
  v35 = a2;
  v19(v11, a2, v8);
  v20 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v16;
  *(v22 + 5) = v15;
  (*(v9 + 32))(&v22[v20], v11, v8);
  *&v22[v21] = v17;
  v23 = v16;

  v24 = v17;
  v25 = v36;
  sub_22F37994C(0, 0, v14, &unk_22F770928, v22);

  sub_22F740C10();
  if (qword_2810AA710 != -1)
  {
    swift_once();
  }

  v26 = sub_22F740BB0();
  __swift_project_value_buffer(v26, qword_2810AA720);
  v27 = v37;
  sub_22F740C20();
  v28 = v39;
  v29 = *(v38 + 8);
  v29(v25, v39);
  v30 = sub_22F741610();
  v29(v27, v28);
  if (v30)
  {
    v31 = sub_22F740B70();
    v32 = sub_22F7415E0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22F0FC000, v31, v32, "Error getting MC status due to timeout.", v33, 2u);
      MEMORY[0x2319033A0](v33, -1, -1);
    }

    return -1;
  }

  else
  {
    sub_22F73FC70();

    return v40;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_22F11DCEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v81 = a5;
  v80 = sub_22F7400A0();
  v9 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22F7400D0();
  v11 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v74 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = (&v66 - v14);
  MEMORY[0x28223BE20](v15);
  v78 = &v66 - v16;
  MEMORY[0x28223BE20](v17);
  v77 = &v66 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v21 = a2;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_68;
  }

  v22 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v20 != -1)
  {
    v23 = (a2 - a1) / v20;
    v90 = a1;
    v89 = a4;
    if (v23 < v22 / v20)
    {
      v24 = v23 * v20;
      if (a4 < a1 || a1 + v24 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v21 = a2;
LABEL_17:
      v76 = a4 + v24;
      v88 = a4 + v24;
      if (v24 >= 1 && v21 < a3)
      {
        v27 = *(v11 + 16);
        v71 = (v9 + 8);
        v72 = v27;
        v74 = (v11 + 16);
        v75 = a3;
        v70 = (v11 + 8);
        v73 = v20;
        while (1)
        {
          v84 = a1;
          v28 = v77;
          v86 = v21;
          v29 = v87;
          v30 = v72;
          (v72)(v77);
          v31 = v78;
          v85 = a4;
          v30(v78, a4, v29);
          v32 = v79;
          sub_22F7400B0();
          v33 = v81;
          v82 = sub_22F21228C(v32, v81);
          LODWORD(v83) = v34;
          v35 = *v71;
          v36 = v80;
          (*v71)(v32, v80);
          sub_22F7400B0();
          v37 = sub_22F21228C(v32, v33);
          LOBYTE(v33) = v38;
          v35(v32, v36);
          if (v33)
          {
            v37 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v39 = *v70;
          (*v70)(v31, v29);
          v39(v28, v29);
          if ((v83 & 1) == 0 && v82 < v37)
          {
            a4 = v85;
            v40 = v73;
            v41 = v86 + v73;
            v42 = v84;
            if (v84 < v86 || v84 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              v21 = v41;
              v43 = v75;
            }

            else
            {
              v43 = v75;
              if (v84 != v86)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v21 = v41;
            }

            goto LABEL_38;
          }

          v42 = v84;
          v40 = v73;
          a4 = v85 + v73;
          if (v84 < v85 || v84 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v21 = v86;
            v43 = v75;
          }

          else
          {
            v21 = v86;
            v43 = v75;
            if (v84 != v85)
            {
              v44 = v86;
              swift_arrayInitWithTakeBackToFront();
              v21 = v44;
              v89 = a4;
              goto LABEL_38;
            }
          }

          v89 = a4;
LABEL_38:
          a1 = v42 + v40;
          v90 = a1;
          if (a4 >= v76 || v21 >= v43)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_66;
    }

    v25 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_43:
        v45 = a4 + v25;
        if (v25 >= 1)
        {
          v46 = -v20;
          v70 = (v9 + 8);
          v71 = (v11 + 16);
          v69 = (v11 + 8);
          v47 = a4 + v25;
          v84 = a1;
          v85 = a4;
          v73 = -v20;
          while (2)
          {
            while (1)
            {
              v67 = v45;
              v48 = v21 + v46;
              v86 = v21 + v46;
              v75 = v21;
              while (1)
              {
                if (v21 <= a1)
                {
                  v90 = v21;
                  v88 = v67;
                  goto LABEL_66;
                }

                v82 = a3;
                v68 = v45;
                v83 = v47;
                v49 = (v47 + v46);
                v50 = v72;
                v51 = *v71;
                v77 = v49;
                v52 = v87;
                (v51)(v72);
                v53 = v74;
                (v51)(v74, v48, v52);
                v54 = v79;
                sub_22F7400B0();
                v55 = v81;
                v76 = sub_22F21228C(v54, v81);
                LODWORD(v78) = v56;
                v57 = *v70;
                v58 = v80;
                (*v70)(v54, v80);
                sub_22F7400B0();
                v59 = sub_22F21228C(v54, v55);
                LOBYTE(v55) = v60;
                v57(v54, v58);
                if (v55)
                {
                  v59 = 0x7FFFFFFFFFFFFFFFLL;
                }

                v61 = *v69;
                (*v69)(v53, v52);
                v61(v50, v52);
                if ((v78 & 1) == 0 && v76 < v59)
                {
                  break;
                }

                v62 = v77;
                v45 = v77;
                v46 = v73;
                a3 = v82 + v73;
                if (v82 < v83 || a3 >= v83)
                {
                  swift_arrayInitWithTakeFrontToBack();
                  v48 = v86;
                  a1 = v84;
                }

                else
                {
                  v48 = v86;
                  a1 = v84;
                  if (v82 != v83)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v47 = v45;
                v21 = v75;
                if (v62 <= v85)
                {
                  goto LABEL_64;
                }
              }

              v46 = v73;
              a3 = v82 + v73;
              v63 = v85;
              if (v82 < v75 || a3 >= v75)
              {
                break;
              }

              v21 = v86;
              v47 = v83;
              a1 = v84;
              v45 = v68;
              if (v82 != v75)
              {
                v64 = v86;
                swift_arrayInitWithTakeBackToFront();
                v21 = v64;
              }

              if (v47 <= v63)
              {
                goto LABEL_64;
              }
            }

            v65 = v86;
            swift_arrayInitWithTakeFrontToBack();
            v21 = v65;
            v47 = v83;
            a1 = v84;
            v45 = v68;
            if (v83 > v63)
            {
              continue;
            }

            break;
          }
        }

LABEL_64:
        v90 = v21;
        v88 = v45;
LABEL_66:
        sub_22F3B6614(&v90, &v89, &v88);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a2;
    goto LABEL_43;
  }

LABEL_69:
  __break(1u);
}

uint64_t sub_22F11E4A4(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_22F3F5F98(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_22F7400D0() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;

      sub_22F11DCEC(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_22F11E664(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v162 = a4;
  v163 = a1;
  v187 = sub_22F7400A0();
  v7 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v186 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F7400D0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v166 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v180 = &v159 - v13;
  MEMORY[0x28223BE20](v14);
  v192 = &v159 - v15;
  MEMORY[0x28223BE20](v16);
  v191 = &v159 - v17;
  MEMORY[0x28223BE20](v18);
  v167 = &v159 - v19;
  MEMORY[0x28223BE20](v20);
  v176 = &v159 - v21;
  MEMORY[0x28223BE20](v22);
  v160 = &v159 - v23;
  MEMORY[0x28223BE20](v24);
  v161 = &v159 - v25;
  v194 = MEMORY[0x277D84F90];
  v174 = a3;
  v26 = a3[1];
  if (v26 >= 1)
  {
    v184 = (v7 + 8);
    v185 = v10 + 16;
    v182 = (v10 + 32);
    v183 = (v10 + 8);
    swift_bridgeObjectRetain_n();
    v27 = 0;
    v173 = MEMORY[0x277D84F90];
    v193 = a5;
    v188 = v9;
    v172 = v10;
    while (1)
    {
      if (v27 + 1 >= v26)
      {
        v49 = v27 + 1;
        v63 = v162;
      }

      else
      {
        v28 = *v174;
        v29 = *(v10 + 72);
        v30 = *v174 + v29 * (v27 + 1);
        v31 = v29;
        v177 = v26;
        v178 = v29;
        v32 = v28;
        v190 = v28;
        v33 = *(v10 + 16);
        v34 = a5;
        v35 = v30;
        (v33)(v161);
        v36 = v32 + v31 * v27;
        v37 = v160;
        v170 = v33;
        (v33)(v160, v36, v9);
        v38 = v186;
        sub_22F7400B0();
        v181 = sub_22F21228C(v38, a5);
        LODWORD(v189) = v39;
        v164 = v27;
        v40 = *v184;
        v41 = v9;
        v42 = v187;
        (*v184)(v38, v187);
        sub_22F7400B0();
        v43 = sub_22F21228C(v38, v34);
        LOBYTE(v34) = v44;
        v169 = v40;
        v40(v38, v42);
        v45 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v34 & 1) == 0)
        {
          v45 = v43;
        }

        LODWORD(v171) = (v181 < v45) & ~v189;
        v46 = *(v172 + 8);
        v46(v37, v41);
        v168 = v46;
        v46(v161, v41);
        v47 = v164 + 2;
        v48 = v190 + v178 * (v164 + 2);
        while (1)
        {
          v49 = v177;
          if (v177 == v47)
          {
            break;
          }

          v50 = v188;
          v51 = v170;
          v189 = v47;
          v170();
          v52 = v167;
          v190 = v35;
          v51();
          v53 = v186;
          sub_22F7400B0();
          v54 = v193;
          v179 = sub_22F21228C(v53, v193);
          LODWORD(v181) = v55;
          v56 = v187;
          v57 = v169;
          (v169)(v53, v187);
          v58 = v52;
          sub_22F7400B0();
          v59 = sub_22F21228C(v53, v54);
          LOBYTE(v54) = v60;
          v57(v53, v56);
          if (v54)
          {
            v61 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = v59;
          }

          v62 = v168;
          v168(v58, v50);
          v62(v176, v50);
          v47 = v189 + 1;
          v48 += v178;
          v35 = v190 + v178;
          if (v171 == (v181 & 1 | (v179 >= v61)))
          {
            v49 = v189;
            break;
          }
        }

        a5 = v193;
        v63 = v162;
        v9 = v188;
        v10 = v172;
        v27 = v164;
        if (v171)
        {
          if (v49 < v164)
          {
            goto LABEL_131;
          }

          if (v164 < v49)
          {
            v64 = v178 * (v49 - 1);
            v65 = v49 * v178;
            v177 = v49;
            v66 = v164 * v178;
            do
            {
              if (v27 != --v49)
              {
                v68 = *v174;
                if (!*v174)
                {
                  goto LABEL_136;
                }

                v69 = *v182;
                (*v182)(v166, v68 + v66, v188);
                if (v66 < v64 || v68 + v66 >= v68 + v65)
                {
                  v67 = v188;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v67 = v188;
                  if (v66 != v64)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v69((v68 + v64), v166, v67);
                v9 = v67;
              }

              ++v27;
              v64 -= v178;
              v65 -= v178;
              v66 += v178;
            }

            while (v27 < v49);
            a5 = v193;
            v63 = v162;
            v10 = v172;
            v27 = v164;
            v49 = v177;
          }
        }
      }

      v70 = v174[1];
      if (v49 >= v70)
      {
        goto LABEL_38;
      }

      if (__OFSUB__(v49, v27))
      {
        goto LABEL_130;
      }

      if (v49 - v27 >= v63)
      {
        goto LABEL_38;
      }

      if (__OFADD__(v27, v63))
      {
        goto LABEL_132;
      }

      if (v27 + v63 >= v70)
      {
        v71 = v174[1];
      }

      else
      {
        v71 = v27 + v63;
      }

      if (v71 < v27)
      {
LABEL_133:
        __break(1u);
LABEL_134:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_135:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_136:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_137:
        swift_bridgeObjectRelease_n();
        __break(1u);
        goto LABEL_138;
      }

      if (v49 == v71)
      {
LABEL_38:
        v72 = v49;
      }

      else
      {
        v133 = *v174;
        v134 = *(v10 + 72);
        v181 = *(v10 + 16);
        v135 = v133 + v134 * (v49 - 1);
        v178 = -v134;
        v164 = v27;
        v136 = (v27 - v49);
        v179 = v133;
        v165 = v134;
        v137 = (v133 + v49 * v134);
        v168 = v71;
        do
        {
          v177 = v49;
          v169 = v137;
          v138 = v137;
          v170 = v136;
          v139 = v136;
          v171 = v135;
          v140 = v135;
          while (1)
          {
            v189 = v139;
            v141 = v181;
            (v181)();
            v141(v192, v140, v9);
            v142 = v186;
            sub_22F7400B0();
            v143 = sub_22F21228C(v142, a5);
            LODWORD(v190) = v144;
            v145 = *v184;
            v146 = v187;
            (*v184)(v142, v187);
            sub_22F7400B0();
            v147 = sub_22F21228C(v142, v193);
            v149 = v148;
            v150 = v146;
            v9 = v188;
            v145(v142, v150);
            if (v149)
            {
              v147 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v151 = *v183;
            (*v183)(v192, v9);
            v151(v191, v9);
            if ((v190 & 1) != 0 || v143 >= v147)
            {
              break;
            }

            a5 = v193;
            v152 = v189;
            if (!v179)
            {
              goto LABEL_134;
            }

            v153 = *v182;
            v154 = v180;
            (*v182)(v180, v138, v9);
            swift_arrayInitWithTakeFrontToBack();
            v153(v140, v154, v9);
            v140 += v178;
            v138 += v178;
            v155 = __CFADD__(v152, 1);
            v139 = (v152 + 1);
            if (v155)
            {
              goto LABEL_93;
            }
          }

          a5 = v193;
LABEL_93:
          v49 = v177 + 1;
          v135 = v171 + v165;
          v136 = (v170 - 1);
          v137 = &v169[v165];
          v72 = v168;
        }

        while ((v177 + 1) != v168);
        v27 = v164;
      }

      v73 = v173;
      if (v72 < v27)
      {
        goto LABEL_129;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168 = v72;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v73 = sub_22F13D970(0, *(v73 + 2) + 1, 1, v73);
      }

      v76 = *(v73 + 2);
      v75 = *(v73 + 3);
      v77 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        v73 = sub_22F13D970((v75 > 1), v76 + 1, 1, v73);
      }

      *(v73 + 2) = v77;
      v78 = v73 + 32;
      v79 = &v73[16 * v76 + 32];
      v80 = v168;
      *v79 = v27;
      *(v79 + 1) = v80;
      v190 = *v163;
      if (!v190)
      {
        goto LABEL_137;
      }

      v173 = v73;
      if (v76)
      {
        v10 = v172;
        while (1)
        {
          v81 = v77 - 1;
          if (v77 >= 4)
          {
            break;
          }

          if (v77 == 3)
          {
            v82 = *(v73 + 4);
            v83 = *(v73 + 5);
            v92 = __OFSUB__(v83, v82);
            v84 = v83 - v82;
            v85 = v92;
LABEL_60:
            if (v85)
            {
              goto LABEL_119;
            }

            v98 = &v73[16 * v77];
            v100 = *v98;
            v99 = *(v98 + 1);
            v101 = __OFSUB__(v99, v100);
            v102 = v99 - v100;
            v103 = v101;
            if (v101)
            {
              goto LABEL_121;
            }

            v104 = &v78[16 * v81];
            v106 = *v104;
            v105 = *(v104 + 1);
            v92 = __OFSUB__(v105, v106);
            v107 = v105 - v106;
            if (v92)
            {
              goto LABEL_124;
            }

            if (__OFADD__(v102, v107))
            {
              goto LABEL_126;
            }

            if (v102 + v107 >= v84)
            {
              if (v84 < v107)
              {
                v81 = v77 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v77 < 2)
          {
            goto LABEL_127;
          }

          v108 = &v73[16 * v77];
          v110 = *v108;
          v109 = *(v108 + 1);
          v92 = __OFSUB__(v109, v110);
          v102 = v109 - v110;
          v103 = v92;
LABEL_75:
          if (v103)
          {
            goto LABEL_123;
          }

          v111 = &v78[16 * v81];
          v113 = *v111;
          v112 = *(v111 + 1);
          v92 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v92)
          {
            goto LABEL_125;
          }

          if (v114 < v102)
          {
            goto LABEL_4;
          }

LABEL_82:
          if (v81 - 1 >= v77)
          {
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
            goto LABEL_133;
          }

          v119 = *v174;
          if (!*v174)
          {
            goto LABEL_135;
          }

          v120 = &v78[16 * v81 - 16];
          v121 = *v120;
          v122 = &v78[16 * v81];
          v123 = *(v122 + 1);
          v124 = *(v10 + 72);
          v125 = v119 + v124 * *v120;
          v126 = v119 + v124 * *v122;
          v127 = v119 + v124 * v123;
          v128 = v193;

          v129 = v125;
          v130 = v175;
          sub_22F11DCEC(v129, v126, v127, v190, v128);
          if (v130)
          {

            v194 = v173;
            goto LABEL_109;
          }

          if (v123 < v121)
          {
            goto LABEL_114;
          }

          v73 = v173;
          v131 = *(v173 + 2);
          if (v81 > v131)
          {
            goto LABEL_115;
          }

          *v120 = v121;
          *(v120 + 1) = v123;
          if (v81 >= v131)
          {
            goto LABEL_116;
          }

          v175 = 0;
          v77 = v131 - 1;
          memmove(&v78[16 * v81], v122 + 16, 16 * (v131 - 1 - v81));
          *(v73 + 2) = v131 - 1;
          v132 = v131 > 2;
          v9 = v188;
          v10 = v172;
          if (!v132)
          {
            goto LABEL_4;
          }
        }

        v86 = &v78[16 * v77];
        v87 = *(v86 - 8);
        v88 = *(v86 - 7);
        v92 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        if (v92)
        {
          goto LABEL_117;
        }

        v91 = *(v86 - 6);
        v90 = *(v86 - 5);
        v92 = __OFSUB__(v90, v91);
        v84 = v90 - v91;
        v85 = v92;
        if (v92)
        {
          goto LABEL_118;
        }

        v93 = &v73[16 * v77];
        v95 = *v93;
        v94 = *(v93 + 1);
        v92 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v92)
        {
          goto LABEL_120;
        }

        v92 = __OFADD__(v84, v96);
        v97 = v84 + v96;
        if (v92)
        {
          goto LABEL_122;
        }

        if (v97 >= v89)
        {
          v115 = &v78[16 * v81];
          v117 = *v115;
          v116 = *(v115 + 1);
          v92 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v92)
          {
            goto LABEL_128;
          }

          if (v84 < v118)
          {
            v81 = v77 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_60;
      }

      v10 = v172;
LABEL_4:
      v26 = v174[1];
      v27 = v168;
      a5 = v193;
      if (v168 >= v26)
      {
        v194 = v173;
        goto LABEL_106;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_106:
  v156 = v175;
  v157 = *v163;
  if (*v163)
  {

    sub_22F11E4A4(&v194, v157, v174, a5);
    if (v156)
    {

LABEL_109:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_138:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

void sub_22F11F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v61 = a5;
  v60 = sub_22F7400A0();
  v9 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22F7400D0();
  MEMORY[0x28223BE20](v66);
  v53 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v43 - v13;
  v16 = MEMORY[0x28223BE20](v14);
  v65 = &v43 - v17;
  v45 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v15 + 16);
    v19 = v15 + 16;
    v21 = *(v19 + 56);
    v55 = (v9 + 8);
    v56 = v20;
    v54 = (v19 - 8);
    v57 = v19;
    v22 = (v18 + v21 * (a3 - 1));
    v50 = -v21;
    v51 = (v19 + 16);
    v23 = a1 - a3;
    v52 = v18;
    v44 = v21;
    v24 = v18 + v21 * a3;
    v25 = v59;
LABEL_5:
    v48 = v22;
    v49 = a3;
    v46 = v24;
    v47 = v23;
    v63 = v23;
    while (1)
    {
      v26 = v66;
      v27 = v56;
      v56(v16);
      v28 = v58;
      (v27)(v58, v22, v26);
      sub_22F7400B0();
      v29 = v61;
      v62 = sub_22F21228C(v25, v61);
      v64 = v30;
      v31 = *v55;
      v32 = v60;
      (*v55)(v25, v60);
      sub_22F7400B0();
      v33 = sub_22F21228C(v25, v29);
      LOBYTE(v29) = v34;
      v31(v25, v32);
      if (v29)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      v36 = *v54;
      v37 = v28;
      v38 = v66;
      (*v54)(v37, v66);
      v36(v65, v38);
      if ((v64 & 1) != 0 || v62 >= v35)
      {
LABEL_4:
        a3 = v49 + 1;
        v22 = &v48[v44];
        v23 = v47 - 1;
        v24 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v39 = *v51;
      v40 = v53;
      v41 = v66;
      (*v51)(v53, v24, v66);
      swift_arrayInitWithTakeFrontToBack();
      v39(v22, v40, v41);
      v22 += v50;
      v24 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F11F7A4(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_22F742000();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F7400D0();
        v8 = sub_22F741200();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_22F7400D0() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_22F11E664(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22F11F3E0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22F11F928(uint64_t *a1, uint64_t a2)
{
  v4 = *(sub_22F7400D0() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22F3F642C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_22F11F7A4(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22F11FA28(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22F120634(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F11FA78(uint64_t a1, void *a2, uint64_t a3)
{
  v86 = sub_22F7400A0();
  v6 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22F7400D0();
  v85 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F7404A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F7404C0();
  v66 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v69 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22F740B90();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = *(a3 + 16);
  v73 = a3;
  v71 = a3 + 16;
  v18(a3, v17, 0.0);
  v72 = v17;
  if (*v17)
  {
    return MEMORY[0x277D84F90];
  }

  v63 = v13;
  v19 = [a2 workingContext];
  v20 = [v19 loggingConnection];

  sub_22F740BA0();
  if (!a1)
  {
LABEL_6:
    (*(v73 + 16))(v73, v72, 1.0);
    (*(v67 + 8))(v16, v68);
    return MEMORY[0x277D84F90];
  }

  v88 = v6;
  v65 = v16;
  v21 = [a2 workingContext];
  v64 = [v21 photoLibrary];

  v90 = MEMORY[0x277D84FA0];
  sub_22F740670();
  v22 = sub_22F740660();
  v23 = v22;
  v24 = *(v22 + 16);
  if (v24)
  {
    v25 = sub_22F10B7CC(*(v22 + 16), 0, &qword_27DAB04D8, &unk_22F7707E8, MEMORY[0x277D3C148]);
    sub_22F11B504(&v89, &v25[(*(v88 + 80) + 32) & ~*(v88 + 80)], v24, v23, MEMORY[0x277D3C148]);
    v27 = v26;
    sub_22F0FF590(v89);
    if (v27 != v24)
    {
      __break(1u);
      goto LABEL_6;
    }
  }

  else
  {
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D3C490], v9);
  v29 = v64;
  sub_22F740490();

  (*(v10 + 8))(v12, v9);
  v30 = sub_22F7404B0();
  v81 = sub_22F11D84C(v29, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB04D8, &unk_22F7707E8);
  v31 = v88;
  v32 = *(v88 + 72);
  v33 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22F7707D0;
  v35 = *(v31 + 104);
  v36 = v86;
  v35(v34 + v33, *MEMORY[0x277D3C128], v86);
  v35(v34 + v33 + v32, *MEMORY[0x277D3C140], v36);
  v35(v34 + v33 + 2 * v32, *MEMORY[0x277D3C130], v36);
  v89 = v30;

  sub_22F11F928(&v89, v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v37 = v89;
  v80 = v89[2];
  if (v80)
  {
    v38 = 0;
    v77 = v89 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    v76 = v85 + 16;
    v75 = v85 + 8;
    v39 = a1;
    v40 = MEMORY[0x277D84FA0];
    v74 = (v88 + 8);
    v79 = a2;
    v70 = a1;
    v78 = v89;
    while (v38 < v37[2])
    {
      v41 = v85;
      v42 = &v77[*(v85 + 72) * v38];
      v43 = *(v85 + 16);
      v44 = v82;
      v88 = v40;
      v45 = v83;
      v43(v82, v42, v83);
      sub_22F740080();
      sub_22F740070();
      v46 = sub_22F7400C0();
      v87 = sub_22F740060();
      v47 = v84;
      sub_22F7400B0();
      (*(v41 + 8))(v44, v45);
      sub_22F740090();
      (*v74)(v47, v86);
      v48 = objc_allocWithZone(PGStoryPromptSuggestionQuestion);
      v49 = sub_22F740DF0();

      v50 = sub_22F740DF0();

      v51 = sub_22F740DF0();
      v40 = v88;

      v52 = [v48 initWithPromptId:v49 promptText:v50 isValidated:v46 & 1 assetCount:v87 source:v51 mcAvailabilityStatus:v81 localFactoryScore:1.0];

      v53 = v79;
      v54 = v52;
      sub_22F109D4C(v40);
      v55 = sub_22F741410();

      LODWORD(v51) = [v53 shouldAddQuestion:v54 toAlreadyGeneratedQuestions:v55];

      if (v51)
      {
        v56 = v54;
        sub_22F10C720(&v89, v56, type metadata accessor for PGStoryPromptSuggestionQuestion, &qword_27DAB07B0, &qword_22F770910, type metadata accessor for PGStoryPromptSuggestionQuestion);

        v40 = v90;
        if ((v90 & 0xC000000000000001) != 0)
        {
          v57 = sub_22F741A00();
        }

        else
        {
          v57 = *(v90 + 16);
        }

        v58 = v70;
        v37 = v78;
        v59 = v72;
        (*(v73 + 16))(v73, v72, v57 / v39);
        if (*v59 == 1)
        {

          goto LABEL_26;
        }

        if ((v40 & 0xC000000000000001) != 0)
        {
          v60 = sub_22F741A00();

          if (v60 >= v58)
          {
            goto LABEL_23;
          }
        }

        else
        {

          if (*(v40 + 16) >= v58)
          {
LABEL_23:

            goto LABEL_26;
          }
        }
      }

      else
      {

        v37 = v78;
      }

      if (v80 == ++v38)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v40 = MEMORY[0x277D84FA0];
LABEL_26:
  (*(v73 + 16))(v73, v72, 1.0);
  v61 = sub_22F10AA88(v40, sub_22F11A068);

  if (v61 < 0 || (v61 & 0x4000000000000000) != 0)
  {
LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0540, &qword_22F7707F8);
    v62 = sub_22F741D50();

    goto LABEL_29;
  }

  sub_22F742060();

  v62 = v61;
LABEL_29:

  (*(v66 + 8))(v69, v63);
  (*(v67 + 8))(v65, v68);
  return v62;
}

uint64_t sub_22F12057C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F1205EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F120634(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_22F12067C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1206E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F120744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1207AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22F120814(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22F740B90() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22F12094C;

  return sub_22F10A508(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_22F12094C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_22F120ADC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22F120B4C()
{

  return swift_deallocClassInstance();
}

uint64_t static PhotosChallengeAlgorithmEvaluator.evaluate(algorithm:experimentName:context:supportedAnsweredQuestions:params:outputFilePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v48 = a4;
  v46 = a3;
  v47 = a9;
  v45 = type metadata accessor for PhotosChallengeEvaluationResult(0);
  v16 = MEMORY[0x28223BE20](v45);
  v44 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(a2 + 24))(a6, a5, a7, a8, a10, a1, a2, v16);
  v43 = (*(a2 + 8))(a1, a2);
  v49 = v19;
  if (a6 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v21 = 0;
    v22 = 0;
    v50 = a6 & 0xFFFFFFFFFFFFFF8;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    while (1)
    {
      if ((a6 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x2319016F0](v21, a6);
      }

      else
      {
        if (v21 >= *(v50 + 16))
        {
          goto LABEL_30;
        }

        v28 = *(a6 + 8 * v21 + 32);
      }

      v29 = v28;
      v30 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (*(v18 + 16) && (v31 = sub_22F122A80(v28), (v32 & 1) != 0))
      {
        v33 = *(*(v18 + 56) + 2 * v31);
        if (v33 > 4)
        {
          goto LABEL_27;
        }

        if (((1 << v33) & 0x13) != 0)
        {

          v27 = __OFADD__(v22++, 1);
          if (v27)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v34 = [v29 state];
          if (v34 == 3)
          {

            if (v33 == 3)
            {
              v25 = v25 + 1.0;
            }

            else
            {
              v24 = v24 + 1.0;
            }
          }

          else
          {
            if (v34 != 2)
            {
              LOWORD(v33) = v34;
LABEL_27:

              sub_22F122AD0();
              swift_allocError();
              *v35 = v33;
              *(v35 + 2) = 0;
              swift_willThrow();
            }

            if (v33 == 2)
            {
              v26 = v26 + 1.0;
            }

            else
            {
              v23 = v23 + 1.0;
            }
          }
        }
      }

      else
      {

        v27 = __OFADD__(v22++, 1);
        if (v27)
        {
          goto LABEL_29;
        }
      }

      ++v21;
      if (v30 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v22 = 0;
LABEL_34:
  v38 = v44;
  v37 = v45;
  sub_22F73FAF0();

  v39 = v49;
  *v38 = v43;
  v38[1] = v39;
  v40 = v47;
  v41 = v48;
  v38[2] = v46;
  v38[3] = v41;
  *(v38 + *(v37 + 28)) = v22;
  sub_22F13A714(v38, v40, type metadata accessor for PhotosChallengeEvaluationResult);
}

uint64_t static PhotosChallengeAlgorithmEvaluator.debug(algorithm:context:supportedAnsweredQuestions:params:)(void *a1, unint64_t a2, uint64_t a3, id a4, uint64_t a5)
{
  v10 = sub_22F740E80();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(a2 + 24))(a4, a3, a5, 0, 0xE000000000000000, a1, a2, v11);
  v14 = (*(a2 + 32))(a4, a3, a1, a2);
  v15 = v14;
  v16 = v14 + 64;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v69 = MEMORY[0x277D84F98];
  while (1)
  {
    while (1)
    {
      do
      {
        if (!v19)
        {
          while (1)
          {
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
              goto LABEL_48;
            }

            if (v23 >= v20)
            {
              break;
            }

            v22 = *(v16 + 8 * v23);
            ++v21;
            if (v22)
            {
              v21 = v23;
              goto LABEL_11;
            }
          }

          sub_22F73EFB0();
          swift_allocObject();
          v16 = sub_22F73EFA0();
          v70 = v69;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07E8, &unk_22F7709C0);
          sub_22F133AA0();
          v52 = v68;
          v53 = sub_22F73EF90();
          if (v52)
          {
          }

          else
          {
            v55 = v53;
            v56 = v54;

            sub_22F740E70();
            v57 = sub_22F740E40();
            if (v58)
            {
              v16 = v57;
              sub_22F133BF0(v55, v56);
            }

            else
            {
              sub_22F133BF0(v55, v56);
              return 32123;
            }
          }

          return v16;
        }

        v22 = v19;
LABEL_11:
        v19 = (v22 - 1) & v22;
      }

      while (!*(v13 + 16));
      v24 = (v21 << 9) | (8 * __clz(__rbit64(v22)));
      v25 = *(*(v15 + 56) + v24);
      a4 = *(*(v15 + 48) + v24);

      LOWORD(a1) = v13;
      v26 = sub_22F122A80(a4);
      if (v27)
      {
        LODWORD(a1) = *(*(v13 + 56) + 2 * v26);
        if (a1 > 4)
        {
LABEL_48:

          sub_22F122AD0();
          swift_allocError();
          *v60 = a1;
          goto LABEL_49;
        }

        if (((1 << a1) & 0x13) == 0)
        {
          break;
        }
      }
    }

    v28 = [a4 state];
    if ((v28 - 2) >= 2)
    {
      if (v28)
      {
        if (v28 == 4)
        {

          sub_22F122AD0();
          swift_allocError();
          v61 = 4;
        }

        else
        {
          if (v28 != 1)
          {
            v16 = v28;

            sub_22F122AD0();
            swift_allocError();
            *v60 = v28;
            goto LABEL_49;
          }

          sub_22F122AD0();
          swift_allocError();
          v61 = 1;
        }

        *v60 = v61;
      }

      else
      {

        sub_22F122AD0();
        swift_allocError();
        *v60 = 0;
      }

LABEL_49:
      *(v60 + 2) = 0;
      swift_willThrow();

      return v16;
    }

    if (a1 == 2 && v28 == 2)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v25;
      v31 = 0x69736F5065757254;
LABEL_24:
      v32 = 0xEC00000065766974;
LABEL_25:
      sub_22F12FD20(v31, v32, 0x697461756C617665, 0xEA00000000006E6FLL, isUniquelyReferenced_nonNull_native);
      v33 = v70;
      goto LABEL_26;
    }

    if (v28 == 3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (a1 != 3)
      {
        v70 = v25;
        v32 = 0xED00006576697469;
        v31 = 0x736F5065736C6146;
        goto LABEL_25;
      }

      v70 = v25;
      v31 = 0x6167654E65757254;
      goto LABEL_24;
    }

    v33 = v25;
    if (a1 == 3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v25;
      v31 = 0x67654E65736C6146;
      v32 = 0xED00006576697461;
      goto LABEL_25;
    }

LABEL_26:
    v64 = v33;
    v34 = [a4 uuid];
    if (!v34)
    {
      goto LABEL_60;
    }

    v35 = v34;

    v66 = sub_22F740E20();
    v37 = v36;

    v38 = v69;
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v38;
    v65 = v37;
    v40 = sub_22F122C50(v66, v37, MEMORY[0x277D83758], sub_22F1239C8);
    v41 = v38[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      break;
    }

    if (v38[3] >= v43)
    {
      if (v63)
      {
        if ((v39 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LODWORD(v69) = v39;
        sub_22F137FFC(&unk_27DAB0C60, &unk_22F770DD0);
        if ((v69 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

LABEL_35:

      v69 = v70;
      v51 = v70[7];
      a1 = *(v51 + 8 * v40);
      *(v51 + 8 * v40) = v64;
    }

    else
    {
      LODWORD(v69) = v39;
      sub_22F12C5D4(v43, v63, &unk_27DAB0C60, &unk_22F770DD0);
      v44 = sub_22F122C50(v66, v65, MEMORY[0x277D83758], sub_22F1239C8);
      if ((v69 & 1) != (v45 & 1))
      {
        goto LABEL_61;
      }

      v40 = v44;
      if (v69)
      {
        goto LABEL_35;
      }

LABEL_31:
      a1 = v70;
      v70[(v40 >> 6) + 8] |= 1 << v40;
      v46 = (a1[6] + 16 * v40);
      v47 = v65;
      *v46 = v66;
      v46[1] = v47;
      *(a1[7] + 8 * v40) = v64;

      v48 = a1[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_59;
      }

      v69 = a1;
      a1[2] = v50;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F1216C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_22F12FD20(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v16;
  }

  else
  {
    v11 = sub_22F122C50(a3, a4, MEMORY[0x277D83758], sub_22F1239C8);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v17 = *v5;
      if (!v14)
      {
        sub_22F133E78();
        v15 = v17;
      }

      sub_22F3B96A8(v11, v15);
      *v5 = v15;
    }
  }
}

uint64_t sub_22F1217F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22F107D08(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_22F130630(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_22F120ADC(a1, &qword_27DAB0C28, &qword_22F778980);
    sub_22F12482C(a2, a3, v9);

    return sub_22F120ADC(v9, &qword_27DAB0C28, &qword_22F778980);
  }

  return result;
}

uint64_t sub_22F1218C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0BC8, &unk_22F77A300);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = _s29IntermediateTimeExtendedTokenVMa(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_22F120ADC(a1, &qword_27DAB0BC8, &unk_22F77A300);
    v14 = sub_22F0FF680(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22F135610();
        v18 = v22;
      }

      sub_22F13A714(*(v18 + 56) + *(v10 + 72) * v16, v8, _s29IntermediateTimeExtendedTokenVMa);
      sub_22F3B9FC0(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_22F120ADC(v8, &qword_27DAB0BC8, &unk_22F77A300);
  }

  else
  {
    sub_22F13A714(a1, v13, _s29IntermediateTimeExtendedTokenVMa);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_22F1310C8(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_22F121B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B20, &unk_22F788B60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_22F73FE50();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_22F120ADC(a1, &qword_27DAB0B20, &unk_22F788B60);
    sub_22F1249D4(a2, a3, v9);

    return sub_22F120ADC(v9, &qword_27DAB0B20, &unk_22F788B60);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_22F131550(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

void sub_22F121CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    swift_getObjectType();
    sub_22F13A4BC(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v15);

    *v3 = v15;
  }

  else
  {
    v8 = v3;
    v9 = sub_22F122C50(a2, a3, MEMORY[0x277D83758], sub_22F1239C8);
    v11 = v10;

    if (v11)
    {
      v12 = v8;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v8;
      v15 = *v8;
      if (!v13)
      {
        sub_22F135FE8(&qword_27DAB3170, &qword_22F770B68);
        v12 = v8;
        v14 = v15;
      }

      swift_unknownObjectRelease();
      sub_22F3BA184(v9, v14);
      *v12 = v14;
    }
  }
}

void sub_22F121E34(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_22F120ADC(a1, &qword_27DAB0920, &qword_22F770B20);
    sub_22F124B90(a2, v7);

    sub_22F120ADC(v7, &qword_27DAB0920, &qword_22F770B20);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_22F1320CC(v12, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

uint64_t sub_22F121FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_22F120ADC(a1, &qword_27DAB0920, &qword_22F770B20);
    v14 = sub_22F122B68(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22F1385DC();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_22F3BA4FC(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_22F120ADC(v8, &qword_27DAB0920, &qword_22F770B20);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_22F132EA4(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_22F122248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0890, &qword_22F770AA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_22F740690();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_22F120ADC(a1, &qword_27DAB0890, &qword_22F770AA8);
    sub_22F124D20(a2, a3, v9);

    return sub_22F120ADC(v9, &qword_27DAB0890, &qword_22F770AA8);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_22F133468(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

void sub_22F122420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song(0) - 8;
  MEMORY[0x28223BE20](v4);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v33 - v8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v20 = a2 + 56;
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v12;
    v37 = a1;
    v38 = v9;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(v12 + 72);
        sub_22F13A77C(*(a1 + 48) + v24 * (v21 | (v14 << 6)), v13, type metadata accessor for Song);
        sub_22F13A714(v13, v9, type metadata accessor for Song);
        sub_22F742170();
        v25 = *v9;
        v26 = v9[1];
        sub_22F740D60();
        v27 = sub_22F7421D0();
        v28 = -1 << *(a2 + 32);
        v29 = v27 & ~v28;
        if (((*(v20 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          break;
        }

        v30 = ~v28;
        while (1)
        {
          sub_22F13A77C(*(a2 + 48) + v29 * v24, v6, type metadata accessor for Song);
          if (*v6 == v25 && v6[1] == v26)
          {
            break;
          }

          v32 = sub_22F742040();
          sub_22F13A0A0(v6, type metadata accessor for Song);
          if (v32)
          {
            goto LABEL_23;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v20 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        sub_22F13A0A0(v6, type metadata accessor for Song);
LABEL_23:
        v9 = v38;
        sub_22F13A0A0(v38, type metadata accessor for Song);
        v12 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

LABEL_26:
      sub_22F13A0A0(v38, type metadata accessor for Song);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_22F122770(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_22F13A1A4(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_22F741800();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_22F741810();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

unint64_t sub_22F122A14(void *a1)
{
  sub_22F742170();
  sub_22F740D60();
  v2 = sub_22F7421D0();

  return sub_22F123A80(a1, v2);
}

unint64_t sub_22F122AD0()
{
  result = qword_27DAB07E0;
  if (!qword_27DAB07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB07E0);
  }

  return result;
}

unint64_t sub_22F122B24(uint64_t a1)
{
  v2 = sub_22F741A70();

  return sub_22F123C14(a1, v2);
}

unint64_t sub_22F122B68(uint64_t a1)
{
  sub_22F742170();
  sub_22F741760();
  v2 = sub_22F7421D0();

  return sub_22F123CDC(a1, v2);
}

uint64_t sub_22F122C50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_22F742170();
  a3(v10, a1, a2);
  v7 = sub_22F7421D0();

  return a4(a1, a2, v7);
}

unint64_t sub_22F122CE4(uint64_t a1)
{
  sub_22F7402E0();
  v2 = MEMORY[0x277D3C2C0];
  sub_22F13A15C(&qword_2810A94D8, MEMORY[0x277D3C2C0], MEMORY[0x277D3C2C8]);
  v3 = sub_22F740D40();
  return sub_22F124450(a1, v3, MEMORY[0x277D3C2C0], &qword_2810A94D0, v2, MEMORY[0x277D3C2D0]);
}

unint64_t sub_22F122DB8(uint64_t a1)
{
  sub_22F740390();
  v2 = MEMORY[0x277D3C2E0];
  sub_22F13A15C(&unk_2810A94C0, MEMORY[0x277D3C2E0], MEMORY[0x277D3C2E8]);
  v3 = sub_22F740D40();
  return sub_22F124450(a1, v3, MEMORY[0x277D3C2E0], &qword_2810A94B8, v2, MEMORY[0x277D3C2F0]);
}