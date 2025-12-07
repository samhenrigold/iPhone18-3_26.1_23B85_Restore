uint64_t sub_21750199C(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_217751428();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_217500DD4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_217502940(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_217503FC8(&qword_27CB24868, MEMORY[0x277CC8920]);
      v14 = sub_217751EA8();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_217503FC8(&qword_27CB24AC0, MEMORY[0x277CC8928]);
        v16 = sub_217751F08();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_217502314();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_217753168();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_217501C00(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_217501118(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_217502C44(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2177531E8();
      sub_217751FF8();
      result = sub_217753238();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_217753058() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_217502548();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_217753168();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_217501D68(char a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_38;
  }

  if (a3)
  {
    sub_217501374(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2175026A0();
      goto LABEL_38;
    }

    sub_217502E78(v6 + 1);
  }

  v8 = *v3;
  sub_2177531E8();
  sub_217342E54();
  v9 = sub_217753238();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xEB00000000736F6DLL;
      v13 = 0x74612D79626C6F64;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          break;
        case 2:
          v13 = 0x75612D79626C6F64;
          v12 = 0xEB000000006F6964;
          break;
        case 3:
          v12 = 0xE800000000000000;
          v13 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v13 = 0x6C2D7365722D6968;
          v12 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v13 = 0x74732D7973736F6CLL;
          v12 = 0xEC0000006F657265;
          break;
        case 6:
          v13 = 0x2D6C616974617073;
          v12 = 0xED00006F69647561;
          break;
        case 7:
          v12 = 0xE700000000000000;
          v13 = 0x6C616974617073;
          break;
        case 8:
          v13 = 0xD000000000000013;
          v12 = 0x80000002177AA7E0;
          break;
        case 9:
          v12 = 0xE500000000000000;
          v13 = 0x736F6D7461;
          break;
        case 0xA:
          v12 = 0xE800000000000000;
          v13 = 0x646E756F72727573;
          break;
        default:
          v13 = 0xD000000000000014;
          v12 = 0x80000002177AA770;
          break;
      }

      v14 = 0x74612D79626C6F64;
      v15 = 0xEB00000000736F6DLL;
      switch(a1)
      {
        case 1:
          break;
        case 2:
          v14 = 0x75612D79626C6F64;
          v15 = 0xEB000000006F6964;
          break;
        case 3:
          v15 = 0xE800000000000000;
          v14 = 0x7373656C73736F6CLL;
          break;
        case 4:
          v14 = 0x6C2D7365722D6968;
          v15 = 0xEF7373656C73736FLL;
          break;
        case 5:
          v14 = 0x74732D7973736F6CLL;
          v15 = 0xEC0000006F657265;
          break;
        case 6:
          v14 = 0x2D6C616974617073;
          v15 = 0xED00006F69647561;
          break;
        case 7:
          v15 = 0xE700000000000000;
          v14 = 0x6C616974617073;
          break;
        case 8:
          v14 = 0xD000000000000013;
          v15 = 0x80000002177AA7E0;
          break;
        case 9:
          v15 = 0xE500000000000000;
          v14 = 0x736F6D7461;
          break;
        case 10:
          v15 = 0xE800000000000000;
          v14 = 0x646E756F72727573;
          break;
        default:
          v14 = 0xD000000000000014;
          v15 = 0x80000002177AA770;
          break;
      }

      if (v13 == v14 && v12 == v15)
      {
        goto LABEL_41;
      }

      v17 = sub_217753058();

      if (v17)
      {
        goto LABEL_42;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_38:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_41:

LABEL_42:
  sub_217753168();
  __break(1u);
}

unint64_t sub_217502198(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    if (a6)
    {
      sub_217501730(v12 + 1);
      goto LABEL_10;
    }

    if (v13 <= v12)
    {
      sub_217503204(v12 + 1);
LABEL_10:
      v19 = *v6;
      sub_2177531E8();
      sub_217751FF8();
      result = sub_217753238();
      v20 = ~(-1 << *(v19 + 32));
      while (1)
      {
        a5 = result & v20;
        if (((*(v19 + 56 + (((result & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v21 = *(v19 + 48) + 32 * a5;
        v22 = *(v21 + 16) == a3 && *(v21 + 24) == a4;
        if (v22 || (sub_217753058() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a5 + 1;
      }
    }

    result = sub_2175027E0();
  }

LABEL_7:
  v14 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v15 = (*(v14 + 48) + 32 * a5);
  *v15 = v11;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_19:
    result = sub_217753168();
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

void *sub_217502314()
{
  v1 = v0;
  v2 = sub_217751428();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BA0, &qword_217771938);
  v6 = *v0;
  v7 = sub_217752A58();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void *sub_217502548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B90, &unk_217771910);
  v2 = *v0;
  v3 = sub_217752A58();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_217751DE8();
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

void *sub_2175026A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B98, &unk_217771920);
  v2 = *v0;
  v3 = sub_217752A58();
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

  return result;
}

void *sub_2175027E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241E8, &qword_217771930);
  v2 = *v0;
  v3 = sub_217752A58();
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *(v4 + 48) + 32 * v17;
        *v21 = *v18;
        *(v21 + 16) = v20;
        *(v21 + 24) = v19;
        result = sub_217751DE8();
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

uint64_t sub_217502940(uint64_t a1)
{
  v2 = v1;
  v33 = sub_217751428();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BA0, &qword_217771938);
  v7 = sub_217752A68();
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
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_217503FC8(&qword_27CB24868, MEMORY[0x277CC8920]);
        result = sub_217751EA8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_217502C44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B90, &unk_217771910);
  result = sub_217752A68();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();
        result = sub_217753238();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_217502E78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28B98, &unk_217771920);
  result = sub_217752A68();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_2177531E8();
        sub_217751FF8();

        result = sub_217753238();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_217503204(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241E8, &qword_217771930);
  result = sub_217752A68();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v3 + 48) + 32 * (v12 | (v6 << 6));
        v27 = *v15;
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();
        result = sub_217753238();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = *(v5 + 48) + 32 * v21;
        *v26 = v27;
        *(v26 + 16) = v16;
        *(v26 + 24) = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_217503684(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_217752D38();
  }

  return sub_217752AE8();
}

void sub_217503700()
{
  OUTLINED_FUNCTION_12();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = *v0 + 32;
  v11 = v10 + 752 * v1;
  swift_arrayDestroy();
  v12 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = (v11 + 752 * v7);
  if (!v12)
  {
LABEL_12:
    if (v7 < 1)
    {
LABEL_16:
      sub_2171F0738(v6, &qword_27CB28B88, &qword_217771908);
      OUTLINED_FUNCTION_13();
      return;
    }

    v22 = 0;
    while ((v22 & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_93();
      sub_217275AA0(v23, v24);
      v11 += 752;
      v22 = 1;
      if (v11 >= v13)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_20;
  }

  v14 = *(v9 + 16);
  v15 = v14 - v8;
  if (!__OFSUB__(v14, v8))
  {
    v16 = (v10 + 752 * v8);
    v17 = 752 * v15;
    v18 = &v16[752 * v15];
    if (v13 != v16 || v18 <= v13)
    {
      memmove((v11 + 752 * v7), v16, v17);
      v14 = *(v9 + 16);
    }

    v20 = __OFADD__(v14, v12);
    v21 = v14 + v12;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v9 + 16) = v21;
    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217503808()
{
  OUTLINED_FUNCTION_220();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = v9 + 32 + 752 * v1;
  swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = *(v9 + 16);
  v14 = v13 - v8;
  if (__OFSUB__(v13, v8))
  {
    goto LABEL_20;
  }

  v15 = (v10 + 752 * v7);
  v16 = (v9 + 32 + 752 * v8);
  v17 = 752 * v14;
  v18 = &v16[752 * v14];
  if (v15 != v16 || v18 <= v15)
  {
    memmove(v15, v16, v17);
    v13 = *(v9 + 16);
  }

  v11 = __OFADD__(v13, v12);
  v20 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v20;
LABEL_12:
  if (v7 >= 1)
  {
    if (*(v6 + 16) == v7)
    {
      swift_arrayInitWithCopy();
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return;
  }

LABEL_15:
  OUTLINED_FUNCTION_218();
}

char *sub_21750390C(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = &result[v10];
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = v12 - a2;
    if (!__OFSUB__(v12, a2))
    {
      result = &v11[a3];
      v14 = (v10 + a2);
      if (&v11[a3] != v14 || &v14[v13] <= result)
      {
        result = memmove(result, v14, v13);
        v12 = *(v9 + 16);
      }

      v16 = __OFADD__(v12, v7);
      v17 = v12 + v7;
      if (!v16)
      {
        *(v9 + 16) = v17;
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_19;
    }
  }

  return result;
}

void sub_2175039BC()
{
  OUTLINED_FUNCTION_12();
  v12 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_25;
  }

  v0 = v11;
  v3 = v10;
  v4 = v9;
  v2 = v8;
  v13 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v6 + 32;
  v5 = v6 + 32 + 8 * v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BA8, &unk_2177756E0);
  OUTLINED_FUNCTION_15();
  swift_arrayDestroy();
  v14 = __OFSUB__(v3, v12);
  v12 = v3 - v12;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v1 = (v5 + 8 * v3);
  if (!v12)
  {
    goto LABEL_17;
  }

  v5 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v6 + 16);
    goto LABEL_6;
  }

LABEL_26:
  v15 = sub_217752D38();
LABEL_6:
  v16 = v15 - v4;
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v17 = (v7 + 8 * v4);
  if (v1 != v17 || &v17[8 * v16] <= v1)
  {
    memmove(v1, v17, 8 * v16);
  }

  if (v5)
  {
    v19 = sub_217752D38();
  }

  else
  {
    v19 = *(v6 + 16);
  }

  if (__OFADD__(v19, v12))
  {
    goto LABEL_28;
  }

  *(v6 + 16) = v19 + v12;
LABEL_17:
  if (v3 < 1)
  {
    OUTLINED_FUNCTION_13();
  }

  else
  {
    v20 = v6 + 8 * v2;
    *(v20 + 32) = v0;
    if (v20 + 40 < v1)
    {

      __break(1u);
    }

    OUTLINED_FUNCTION_13();
  }
}

unint64_t sub_217503B1C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = *v7;
  v14 = v13 + 32 + 752 * result;
  result = swift_arrayDestroy();
  v15 = __OFSUB__(a3, v8);
  v16 = a3 - v8;
  if (v15)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = *(v13 + 16);
  v18 = v17 - a2;
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_21;
  }

  result = v14 + 752 * a3;
  v19 = (v13 + 32 + 752 * a2);
  v20 = 752 * v18;
  v21 = v19 + 752 * v18;
  if (result != v19 || v21 <= result)
  {
    result = memmove(result, v19, v20);
    v17 = *(v13 + 16);
  }

  v15 = __OFADD__(v17, v16);
  v23 = v17 + v16;
  if (v15)
  {
    goto LABEL_22;
  }

  *(v13 + 16) = v23;
LABEL_12:
  if (a3 >= 1)
  {
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if ((a7 >> 1) - a6 == a3)
      {
        swift_arrayInitWithCopy();
        goto LABEL_16;
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_16:

  return swift_unknownObjectRelease();
}

void sub_217503C58(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_217503F84();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_217752D38();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_217752D38();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

unint64_t sub_217503DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE63A8[0];
  if (!qword_280BE63A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE63A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A13DeviceLocalIDVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A13ItemTypeValueVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217503E80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 353))
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

uint64_t sub_217503EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217503F84()
{
  result = qword_280BE2230;
  if (!qword_280BE2230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE2230);
  }

  return result;
}

uint64_t sub_217503FC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217751428();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double OUTLINED_FUNCTION_16_38()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  result = 0.0;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 4;
  return result;
}

void OUTLINED_FUNCTION_18_33(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  sub_2172A5428(a1, a2, a3, a4);
}

__n128 OUTLINED_FUNCTION_20_30()
{
  v0[17].n128_u8[0] = 1;
  result = *v1;
  v0[18] = *v1;
  return result;
}

void OUTLINED_FUNCTION_21_30()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

void OUTLINED_FUNCTION_34_23()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

uint64_t OUTLINED_FUNCTION_40_22(__n128 a1)
{
  v1[20] = a1;
  v1[21] = a1;
  v1->n128_u64[0] = v3;
  v1->n128_u64[1] = v2;

  return sub_217751DE8();
}

double OUTLINED_FUNCTION_47_18()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  return sub_2172B8404(v2, v3);
}

uint64_t sub_217504138(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172945A4();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &qword_27CB24540, &qword_21776B300);
    sub_2174A87A0(v33, &v29, &qword_27CB24540, &qword_21776B300);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_217292D80(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &qword_27CB24540, &qword_21776B300);
    }

    else
    {
      sub_2171F06D8(v33, &qword_27CB24540, &qword_21776B300);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_217620CD4(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_217283AFC(&v29, v33);
    sub_217283AFC(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C18, &unk_217771C80);
    swift_allocObject();
    sub_217635FDC();
    sub_217283B58(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2175043E4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172945EC();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &qword_27CB27FD0, &qword_217758C20);
    sub_2174A87A0(v33, &v29, &qword_27CB27FD0, &qword_217758C20);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_2172931EC(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &qword_27CB27FD0, &qword_217758C20);
    }

    else
    {
      sub_2171F06D8(v33, &qword_27CB27FD0, &qword_217758C20);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_217620EAC(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_217283C68(&v29, v33);
    sub_217283C68(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AF50, &unk_217771CA8);
    swift_allocObject();
    sub_217635FDC();
    sub_217283CC4(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217504690(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_217294604();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &qword_27CB27EE0, &qword_217758BF0);
    sub_2174A87A0(v33, &v29, &qword_27CB27EE0, &qword_217758BF0);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_217293370(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &qword_27CB27EE0, &qword_217758BF0);
    }

    else
    {
      sub_2171F06D8(v33, &qword_27CB27EE0, &qword_217758BF0);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_217621084(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_217284338(&v29, v33);
    sub_217284338(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C20, &unk_217771CC0);
    swift_allocObject();
    sub_217635FDC();
    sub_217284394(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21750493C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172944E4(v7);
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &qword_27CB24830, &qword_217771D40);
    sub_2174A87A0(v33, &v29, &qword_27CB24830, &qword_217771D40);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_21729290C(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &qword_27CB24830, &qword_217771D40);
    }

    else
    {
      sub_2171F06D8(v33, &qword_27CB24830, &qword_217771D40);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_21762125C(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_2172757C0(&v29, v33);
    sub_2172757C0(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADE0, &qword_217771D38);
    swift_allocObject();
    sub_217635FDC();
    sub_21726B8C4(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217504BE8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172945BC();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &qword_27CB27900, &qword_217771CE0);
    sub_2174A87A0(v33, &v29, &qword_27CB27900, &qword_217771CE0);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_217292EF4(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &qword_27CB27900, &qword_217771CE0);
    }

    else
    {
      sub_2171F06D8(v33, &qword_27CB27900, &qword_217771CE0);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_217621434(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_217283BAC(&v29, v33);
    sub_217283BAC(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C28, &qword_217787370);
    swift_allocObject();
    sub_217635FDC();
    sub_217283C08(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217504E94(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_21729461C();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &qword_27CB28150, &qword_21776C1A0);
    sub_2174A87A0(v33, &v29, &qword_27CB28150, &qword_21776C1A0);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_2172934F0(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &qword_27CB28150, &qword_21776C1A0);
    }

    else
    {
      sub_2171F06D8(v33, &qword_27CB28150, &qword_21776C1A0);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_21762160C(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_217284288(&v29, v33);
    sub_217284288(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C30, &unk_217771D00);
    swift_allocObject();
    sub_217635FDC();
    sub_2172842E4(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217505140(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172945D4();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &qword_27CB27BD0, &qword_21776B8C0);
    sub_2174A87A0(v33, &v29, &qword_27CB27BD0, &qword_21776B8C0);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_217293074(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &qword_27CB27BD0, &qword_21776B8C0);
    }

    else
    {
      sub_2171F06D8(v33, &qword_27CB27BD0, &qword_21776B8C0);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_2176217E4(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_21725CF68(&v29, v33);
    sub_21725CF68(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C38, &qword_2177872E0);
    swift_allocObject();
    sub_217635FDC();
    sub_217284498(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2175053EC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_217294574();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &unk_27CB276C0, &qword_217758A00);
    sub_2174A87A0(v33, &v29, &unk_27CB276C0, &qword_217758A00);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_217292A88(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &unk_27CB276C0, &qword_217758A00);
    }

    else
    {
      sub_2171F06D8(v33, &unk_27CB276C0, &qword_217758A00);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_2176219BC(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_21725CF0C(&v29, v33);
    sub_21725CF0C(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD00, &unk_217771D20);
    swift_allocObject();
    sub_217635FDC();
    sub_21725CE44(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217505698(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v2 == 1)
  {
    swift_beginAccess();
    v3 = *(v1 + 56);
  }

  v4 = *(v3 + 16);
  result = MEMORY[0x277D84F90];
  if (!v4)
  {
    return result;
  }

  v25 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v6 = 0;
  v7 = v1 + 32;
  v26 = v4;
  while (1)
  {
    if (v2)
    {

      sub_217294390();
      sub_21725CF00(v1, 1);
      goto LABEL_13;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *(v1 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v7, v18, &qword_27CB248B8, &qword_217771D80);
    sub_2174A87A0(v18, &v14, &qword_27CB248B8, &qword_217771D80);
    if (v17)
    {
      v8 = *(v14 + 16);
      v9 = *(v14 + 24);
      sub_217751DE8();
      sub_2172921E8(&v21, v8, v9);

      sub_2171F06D8(v18, &qword_27CB248B8, &qword_217771D80);
    }

    else
    {
      sub_2171F06D8(v18, &qword_27CB248B8, &qword_217771D80);
      v21 = v14;
      v22 = v15;
      *v23 = *v16;
      *&v23[9] = *&v16[9];
    }

    v14 = v21;
    v15 = v22;
    *v16 = *v23;
    *&v16[9] = *&v23[9];
LABEL_13:
    MusicCatalogSearchResponse.TopResult.innerItem.getter(v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v11 + 8))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_217620B58(&v24);
    sub_217283E1C(&v14, v18);
    sub_217283E1C(&v14, &v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AF00, &qword_217771D78);
    swift_allocObject();
    sub_217635FE0();
    sub_217283E78(&v14);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v12 = __OFADD__(v6, 1);
    if (v2)
    {
      v13 = v26;
      if (v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = v26;
      if (v12)
      {
        goto LABEL_25;
      }
    }

    ++v6;
    v7 += 64;
    if (v13 == v6)
    {
      return v25;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21750598C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v28 = v1;
  v27 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  for (i = v2 + 32; ; i += 64)
  {
    if (v3)
    {

      sub_21729443C();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_31;
    }

    sub_2174A87A0(i, v20, &qword_27CB24898, &unk_21775A270);
    sub_2174A87A0(v20, &v16, &qword_27CB24898, &unk_21775A270);
    if (v19)
    {
      v9 = *(v16 + 16);
      v10 = *(v16 + 24);
      sub_217751DE8();
      sub_217292624(&v23, v9, v10);

      sub_2171F06D8(v20, &qword_27CB24898, &unk_21775A270);
    }

    else
    {
      sub_2171F06D8(v20, &qword_27CB24898, &unk_21775A270);
      v23 = v16;
      v24 = v17;
      *v25 = *v18;
      *&v25[9] = *&v18[9];
    }

    v16 = v23;
    v17 = v24;
    *v18 = *v25;
    *&v18[9] = *&v25[9];
LABEL_13:
    sub_217283ECC(&v16, v20);
    if (v22)
    {
      if (v22 == 1)
      {
        v11 = &type metadata for Playlist;
        *(&v24 + 1) = &type metadata for Playlist;
        v12 = &protocol witness table for Playlist;
        *v25 = &protocol witness table for Playlist;
      }

      else
      {
        v11 = &type metadata for Station;
        *(&v24 + 1) = &type metadata for Station;
        v12 = &protocol witness table for Station;
        *v25 = &protocol witness table for Station;
      }
    }

    else
    {
      v11 = &type metadata for Album;
      *(&v24 + 1) = &type metadata for Album;
      v12 = &protocol witness table for Album;
      *v25 = &protocol witness table for Album;
    }

    v13 = swift_allocObject();
    *&v23 = v13;
    v14 = v20[1];
    *(v13 + 16) = v20[0];
    *(v13 + 32) = v14;
    *(v13 + 48) = v20[2];
    *(v13 + 64) = v21;
    __swift_project_boxed_opaque_existential_1(&v23, v11);
    (v12[1])();
    __swift_destroy_boxed_opaque_existential_1(&v23);
    sub_217621B94(&v26);
    sub_217283ECC(&v16, v20);
    sub_217283ECC(&v16, &v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE90, &qword_217771D60);
    swift_allocObject();
    sub_217635FE0();
    sub_217283F28(&v16);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v15 = __OFADD__(v7, 1);
    if (v3)
    {
      if (v15)
      {
        goto LABEL_29;
      }
    }

    else if (v15)
    {
      goto LABEL_30;
    }

    if (v5 == ++v7)
    {
      return v27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_217505D10(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v23 = v1;
  v35 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v37 = v2;
  while (1)
  {
    if (v3)
    {

      sub_21729467C();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_32;
    }

    sub_2174A87A0(v8, &v27, &qword_27CB27AA0, &qword_217758AD0);
    sub_2174A87A0(&v27, &v24, &qword_27CB27AA0, &qword_217758AD0);
    if (v26[25])
    {
      v9 = *(v24 + 16);
      v10 = *(v24 + 24);
      sub_217751DE8();
      sub_217293AC4(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), *v26, *&v26[8], *&v26[16], *&v26[24], v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31, v32, *(&v32 + 1), v33, *(&v33 + 1), *v34, *&v34[8], *&v34[16], *&v34[24], v35, v36[0], v36[1], v36[2]);

      sub_2171F06D8(&v27, &qword_27CB27AA0, &qword_217758AD0);
    }

    else
    {
      sub_2171F06D8(&v27, &qword_27CB27AA0, &qword_217758AD0);
      v32 = v24;
      v33 = v25;
      *v34 = *v26;
      *&v34[9] = *&v26[9];
    }

    v24 = v32;
    v25 = v33;
    *v26 = *v34;
    *&v26[9] = *&v34[9];
    v2 = v37;
LABEL_13:
    sub_21729C6EC(&v24, &v27);
    if (v31)
    {
      v17 = &type metadata for MusicVideo;
    }

    else
    {
      v17 = &type metadata for Song;
    }

    if (v31)
    {
      v18 = &protocol witness table for MusicVideo;
    }

    else
    {
      v18 = &protocol witness table for Song;
    }

    *(&v33 + 1) = v17;
    *v34 = v18;
    v19 = swift_allocObject();
    v20 = v28;
    *(v19 + 16) = v27;
    *(v19 + 32) = v20;
    *(v19 + 48) = v29;
    *(v19 + 64) = v30;
    *&v32 = v19;
    __swift_project_boxed_opaque_existential_1(&v32, v17);
    (v18[1])(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(&v32);
    sub_217622064(&v34[31]);
    sub_21729C6EC(&v24, &v27);
    sub_21729C6EC(&v24, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2ADD0, &unk_217771C18);
    swift_allocObject();
    sub_217635FE0();
    sub_21729C748(&v24);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v21 = __OFADD__(v7, 1);
    if (v3)
    {
      if (v21)
      {
        goto LABEL_30;
      }
    }

    else if (v21)
    {
      goto LABEL_31;
    }

    ++v7;
    v8 += 64;
    if (v5 == v7)
    {
      return v35;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21750607C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_21729464C();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &qword_27CB24618, &qword_217778790);
    sub_2174A87A0(v33, &v29, &qword_27CB24618, &qword_217778790);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_2172937E4(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &qword_27CB24618, &qword_217778790);
    }

    else
    {
      sub_2171F06D8(v33, &qword_27CB24618, &qword_217778790);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_217621D10(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_217284130(&v29, v33);
    sub_217284130(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AE50, &unk_217771C30);
    swift_allocObject();
    sub_217635FDC();
    sub_21728418C(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217506328(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v2 == 1)
  {
    swift_beginAccess();
    v3 = *(v1 + 56);
  }

  v4 = *(v3 + 16);
  result = MEMORY[0x277D84F90];
  if (!v4)
  {
    return result;
  }

  v26 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v6 = 0;
  v7 = v1 + 32;
  v27 = v1;
  while (1)
  {
    if (v2)
    {

      sub_217294634();
      sub_21725CF00(v1, 1);
      goto LABEL_13;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *(v1 + 16))
    {
      goto LABEL_32;
    }

    sub_2174A87A0(v7, v19, &dword_27CB27E20, &unk_2177589C0);
    sub_2174A87A0(v19, &v15, &dword_27CB27E20, &unk_2177589C0);
    if (v18)
    {
      v8 = *(v15 + 16);
      v9 = *(v15 + 24);
      sub_217751DE8();
      sub_21729366C(v8, v9);

      sub_2171F06D8(v19, &dword_27CB27E20, &unk_2177589C0);
    }

    else
    {
      sub_2171F06D8(v19, &dword_27CB27E20, &unk_2177589C0);
      v22 = v15;
      v23 = v16;
      *v24 = *v17;
      *&v24[9] = *&v17[9];
    }

    v15 = v22;
    v16 = v23;
    *v17 = *v24;
    *&v17[9] = *&v24[9];
    v1 = v27;
LABEL_13:
    sub_217275710(&v15, v19);
    if (v21)
    {
      v10 = &type metadata for MusicVideo;
    }

    else
    {
      v10 = &type metadata for Song;
    }

    if (v21)
    {
      v11 = &protocol witness table for MusicVideo;
    }

    else
    {
      v11 = &protocol witness table for Song;
    }

    *(&v23 + 1) = v10;
    *v24 = v11;
    v12 = swift_allocObject();
    v13 = v19[1];
    *(v12 + 16) = v19[0];
    *(v12 + 32) = v13;
    *(v12 + 48) = v19[2];
    *(v12 + 64) = v20;
    *&v22 = v12;
    __swift_project_boxed_opaque_existential_1(&v22, v10);
    (v11[1])(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v22);
    sub_217621EE8(&v25);
    sub_217275710(&v15, v19);
    sub_217275710(&v15, &v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C08, &unk_217771C50);
    swift_allocObject();
    sub_217635FE0();
    sub_21727576C(&v15);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v14 = __OFADD__(v6, 1);
    if (v2)
    {
      if (v14)
      {
        goto LABEL_30;
      }
    }

    else if (v14)
    {
      goto LABEL_31;
    }

    ++v6;
    v7 += 64;
    if (v4 == v6)
    {
      return v26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_217506694(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v27 = v1;
  v40 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v28 = v5;
  while (1)
  {
    if (v3)
    {

      sub_2172944CC(v7);
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_26;
    }

    sub_2174A87A0(v8, v33, &qword_27CB28090, &qword_217758C50);
    sub_2174A87A0(v33, &v29, &qword_27CB28090, &qword_217758C50);
    if (BYTE8(v32))
    {
      v9 = *(v29 + 16);
      v10 = *(v29 + 24);
      sub_217751DE8();
      sub_217292790(v9, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1], v39[2], v39[3]);

      sub_2171F06D8(v33, &qword_27CB28090, &qword_217758C50);
    }

    else
    {
      sub_2171F06D8(v33, &qword_27CB28090, &qword_217758C50);
      v34 = v29;
      v35 = v30;
      v36 = v31;
      v37 = v32;
    }

    v29 = v34;
    v30 = v35;
    v31 = v36;
    *&v32 = v37;
LABEL_13:
    v17 = sub_217751DE8();
    sub_2176221E0(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0], v33[1], v33[2], v33[3], v33[4], v33[5], v33[6], v33[7], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39[0], v39[1]);
    sub_217283D6C(&v29, v33);
    sub_217283D6C(&v29, &v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C10, &qword_217787560);
    swift_allocObject();
    sub_217635FDC();
    sub_217283DC8(&v29);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v25 = __OFADD__(v7, 1);
    if (v3)
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v26 = v28;
      if (v25)
      {
        goto LABEL_25;
      }
    }

    ++v7;
    v8 += 64;
    if (v26 == v7)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_217506940(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 == 1)
  {
    swift_beginAccess();
    v4 = *(v2 + 56);
  }

  v5 = *(v4 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v23 = v1;
  v35 = MEMORY[0x277D84F90];
  result = sub_217752BF8();
  v7 = 0;
  v8 = v2 + 32;
  v37 = v2;
  while (1)
  {
    if (v3)
    {

      sub_217294694();
      sub_21725CF00(v2, 1);
      goto LABEL_13;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *(v2 + 16))
    {
      goto LABEL_32;
    }

    sub_2174A87A0(v8, &v27, &qword_27CB24630, &unk_217758B70);
    sub_2174A87A0(&v27, &v24, &qword_27CB24630, &unk_217758B70);
    if (v26[25])
    {
      v9 = *(v24 + 16);
      v10 = *(v24 + 24);
      sub_217751DE8();
      sub_217293C30(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), *v26, *&v26[8], *&v26[16], *&v26[24], v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, v31, v32, *(&v32 + 1), v33, *(&v33 + 1), *v34, *&v34[8], *&v34[16], *&v34[24], v35, v36[0], v36[1], v36[2]);

      sub_2171F06D8(&v27, &qword_27CB24630, &unk_217758B70);
    }

    else
    {
      sub_2171F06D8(&v27, &qword_27CB24630, &unk_217758B70);
      v32 = v24;
      v33 = v25;
      *v34 = *v26;
      *&v34[9] = *&v26[9];
    }

    v24 = v32;
    v25 = v33;
    *v26 = *v34;
    *&v26[9] = *&v34[9];
    v2 = v37;
LABEL_13:
    sub_21729C79C(&v24, &v27);
    if (v31)
    {
      v17 = &type metadata for Song;
    }

    else
    {
      v17 = &type metadata for MusicVideo;
    }

    if (v31)
    {
      v18 = &protocol witness table for Song;
    }

    else
    {
      v18 = &protocol witness table for MusicVideo;
    }

    *(&v33 + 1) = v17;
    *v34 = v18;
    v19 = swift_allocObject();
    v20 = v28;
    *(v19 + 16) = v27;
    *(v19 + 32) = v20;
    *(v19 + 48) = v29;
    *(v19 + 64) = v30;
    *&v32 = v19;
    __swift_project_boxed_opaque_existential_1(&v32, v17);
    (v18[1])(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(&v32);
    sub_217620780(&v34[31]);
    sub_21729C79C(&v24, &v27);
    sub_21729C79C(&v24, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C00, &qword_217787400);
    swift_allocObject();
    sub_217635FE0();
    sub_21729C7F8(&v24);
    sub_217752BC8();
    sub_217752C08();
    sub_217752C18();
    result = sub_217752BD8();
    v21 = __OFADD__(v7, 1);
    if (v3)
    {
      if (v21)
      {
        goto LABEL_30;
      }
    }

    else if (v21)
    {
      goto LABEL_31;
    }

    ++v7;
    v8 += 64;
    if (v5 == v7)
    {
      return v35;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void MusicCatalogSearchSuggestionsResponse._requestedTerm.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t static MusicCatalogSearchSuggestionsResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_217273AA4();
  if ((v4 & 1) == 0 || (sub_21733EA18(a1 + 8, a2 + 8) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_2174A87A0(a1 + 112, v18, &qword_27CB28BB8, &qword_217771948);
  sub_2174A87A0(a2 + 112, &v20, &qword_27CB28BB8, &qword_217771948);
  if (!v19)
  {
    if (!*(&v21 + 1))
    {
      sub_2171F06D8(v18, &qword_27CB28BB8, &qword_217771948);
      goto LABEL_9;
    }

LABEL_15:
    sub_2171F06D8(v18, &qword_27CB28BC0, &qword_217771950);
LABEL_16:
    v11 = 0;
    return v11 & 1;
  }

  sub_2174A87A0(v18, v15, &qword_27CB28BB8, &qword_217771948);
  if (!*(&v21 + 1))
  {
    sub_217506F68(v15);
    goto LABEL_15;
  }

  v13[0] = v20;
  v13[1] = v21;
  v14 = v22;
  v5 = v16;
  v6 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v7 = *(v6 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BC8, &qword_217771958);
  v9 = v7(v13, v8, v5, v6);
  sub_217506F68(v13);
  sub_217506F68(v15);
  sub_2171F06D8(v18, &qword_27CB28BB8, &qword_217771948);
  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (*(a1 + 152) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217753058();
  }

  return v11 & 1;
}

uint64_t MusicCatalogSearchSuggestionsResponse.hash(into:)(uint64_t a1)
{
  sub_2172831FC();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  sub_2174A87A0(v1 + 112, &v9, &qword_27CB28BB8, &qword_217771948);
  if (*(&v10 + 1))
  {
    v6 = v9;
    v7 = v10;
    v8 = v11;
    sub_217753208();
    v3 = *(&v7 + 1);
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    (*(v4 + 56))(a1, v3, v4);
    sub_217506F68(&v6);
  }

  else
  {
    sub_217753208();
  }

  return sub_217751FF8();
}

uint64_t MusicCatalogSearchSuggestionsResponse.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchSuggestionsResponse.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175070F8(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogSearchSuggestionsResponse.hash(into:)(v2);
  return sub_217753238();
}

uint64_t MusicCatalogSearchSuggestionsResponse.libraryMapped(policy:scope:)()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 536) = v0;
  *(v1 + 528) = v2;
  *(v1 + 578) = *v3;
  v5 = *v4;
  *(v1 + 579) = *v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 544) = v6;
  *v6 = v7;
  v6[1] = sub_2175071E0;

  return sub_217509E2C(v1 + 16, v5);
}

uint64_t sub_2175071E0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 552) = v0;

  if (v0)
  {
    v7 = sub_2175076D4;
  }

  else
  {
    v7 = sub_2175072DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2175072DC()
{
  v24 = v0;
  sub_2174A87A0(*(v0 + 536) + 112, v0 + 368, &qword_27CB28BB8, &qword_217771948);
  v1 = *(v0 + 392);
  if (v1)
  {
    v2 = *(v0 + 579);
    v3 = *(v0 + 578);
    v4 = *(v0 + 400);
    __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
    *(v0 + 576) = v3;
    *(v0 + 577) = v2;
    v22 = (*(v4 + 32) + **(v4 + 32));
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 560) = v5;
    *v5 = v6;
    v5[1] = sub_2175076F8;

    return v22(v0 + 488, v0 + 576, v0 + 577, v1, v4);
  }

  else
  {
    sub_2171F06D8(v0 + 368, &qword_27CB28BB8, &qword_217771948);
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0;
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v11 = v8[19];
    v10 = v8[20];
    v12 = *v8;
    sub_2174A87A0(v0 + 16, v0 + 120, &qword_27CB28BB0, &qword_217771940);
    sub_2174A87A0(v0 + 328, v0 + 408, &qword_27CB26E70, &unk_217767A80);
    v9[19] = v11;
    v9[20] = v10;
    *v9 = v12;
    sub_2174A87A0(v0 + 120, v0 + 224, &qword_27CB26E78, &qword_217785AC0);
    if (*(v0 + 312))
    {
      memcpy(__dst, (v0 + 224), sizeof(__dst));
      sub_217751DE8();
      sub_217751DE8();
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_2174AA020(MEMORY[0x277D84F90]);
      if (*(v0 + 312))
      {
        sub_2171F06D8(v0 + 224, &qword_27CB26E78, &qword_217785AC0);
      }
    }

    memcpy((*(v0 + 528) + 8), __dst, 0x68uLL);
    sub_2174A87A0(v0 + 408, v0 + 448, &qword_27CB26E70, &unk_217767A80);
    v13 = *(v0 + 472);
    if (v13)
    {
      v14 = *(v0 + 480);
      __swift_project_boxed_opaque_existential_1((v0 + 448), *(v0 + 472));
      sub_2171F9380(v13, v14, __dst);
      sub_2171F06D8(v0 + 408, &qword_27CB26E70, &unk_217767A80);
      sub_2171F06D8(v0 + 120, &qword_27CB26E78, &qword_217785AC0);
      v15 = OUTLINED_FUNCTION_93();
      sub_2171F06D8(v15, v16, &unk_217767A80);
      sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
      __swift_destroy_boxed_opaque_existential_1((v0 + 448));
    }

    else
    {
      sub_2171F06D8(v0 + 408, &qword_27CB26E70, &unk_217767A80);
      sub_2171F06D8(v0 + 120, &qword_27CB26E78, &qword_217785AC0);
      v17 = OUTLINED_FUNCTION_93();
      sub_2171F06D8(v17, v18, &unk_217767A80);
      sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
      sub_2171F06D8(v0 + 448, &qword_27CB26E70, &unk_217767A80);
      memset(__dst, 0, 40);
    }

    v19 = *(v0 + 528);
    v20 = *&__dst[16];
    *(v19 + 112) = *__dst;
    *(v19 + 128) = v20;
    *(v19 + 144) = *&__dst[32];
    OUTLINED_FUNCTION_0_2();

    return v21();
  }
}

uint64_t sub_2175076F8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 568) = v0;

  if (v0)
  {
    v7 = sub_217507A78;
  }

  else
  {
    v7 = sub_2175077F4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2175077F4()
{
  v13 = v0;
  sub_2171F3F0C((v0 + 488), v0 + 328);
  sub_217506F68(v0 + 368);
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v4 = v1[19];
  v3 = v1[20];
  v5 = *v1;
  sub_2174A87A0(v0 + 16, v0 + 120, &qword_27CB28BB0, &qword_217771940);
  sub_2174A87A0(v0 + 328, v0 + 408, &qword_27CB26E70, &unk_217767A80);
  v2[19] = v4;
  v2[20] = v3;
  *v2 = v5;
  sub_2174A87A0(v0 + 120, v0 + 224, &qword_27CB26E78, &qword_217785AC0);
  if (*(v0 + 312))
  {
    memcpy(v12, (v0 + 224), 0x68uLL);
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_2174AA020(MEMORY[0x277D84F90]);
    if (*(v0 + 312))
    {
      sub_2171F06D8(v0 + 224, &qword_27CB26E78, &qword_217785AC0);
    }
  }

  memcpy((*(v0 + 528) + 8), v12, 0x68uLL);
  sub_2174A87A0(v0 + 408, v0 + 448, &qword_27CB26E70, &unk_217767A80);
  v6 = *(v0 + 472);
  if (v6)
  {
    v7 = *(v0 + 480);
    __swift_project_boxed_opaque_existential_1((v0 + 448), *(v0 + 472));
    sub_2171F9380(v6, v7, v12);
    OUTLINED_FUNCTION_36_23(v0 + 408);
    sub_2171F06D8(v0 + 120, &qword_27CB26E78, &qword_217785AC0);
    OUTLINED_FUNCTION_36_23(v0 + 328);
    sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
  }

  else
  {
    OUTLINED_FUNCTION_36_23(v0 + 408);
    sub_2171F06D8(v0 + 120, &qword_27CB26E78, &qword_217785AC0);
    OUTLINED_FUNCTION_36_23(v0 + 328);
    sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
    OUTLINED_FUNCTION_36_23(v0 + 448);
    memset(v12, 0, 40);
  }

  v8 = *(v0 + 528);
  v9 = v12[1];
  *(v8 + 112) = v12[0];
  *(v8 + 128) = v9;
  *(v8 + 144) = *&v12[2];
  OUTLINED_FUNCTION_0_2();

  return v10();
}

uint64_t sub_217507A78()
{
  OUTLINED_FUNCTION_10();
  sub_2171F06D8(v0 + 16, &qword_27CB28BB0, &qword_217771940);
  sub_217506F68(v0 + 368);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217507AEC()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_217282D8C;

  return MusicCatalogSearchSuggestionsResponse.libraryMapped(policy:scope:)();
}

uint64_t MusicCatalogSearchSuggestionsResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BD0, &qword_217771970);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27[-1] - v9;
  sub_2171FF30C(a1, v27);
  v11 = __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_21750B298(v11, v12, v13);
  v14 = sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_21750B2EC(v14, v15, v16);
    sub_217752E58();
    (*(v7 + 8))(v10, v5);
    v18 = v27[6];
    __swift_destroy_boxed_opaque_existential_1(v27);
    v19 = a1[3];
    v20 = a1[4];
    v21 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    Decoder.dataRequestConfiguration.getter(v19, v20);
    v23 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v25 = Decoder.sharedRelatedItemStore.getter();
    sub_2173B5988(v18, 0, 0xE000000000000000, v27, v25, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double MusicCatalogSearchSuggestionsResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28BE8, &qword_217771978);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v20[-1] - v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  Encoder.dataRequestConfiguration.getter(v8, v9);
  sub_217507F1C(v20, &v21);
  sub_21733AB9C(v20);
  v10 = v21;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21750B298(v11, v12, v13);
  sub_217751DE8();
  v14 = sub_2177532F8();
  v20[0] = v10;
  sub_21750B340(v14, v15, v16);
  sub_217752F38();

  (*(v4 + 8))(v7, v2, v17);
}

uint64_t sub_217507F1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  v5 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v38 - v6;
  v7 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion(0);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  sub_2174A87A0((v2 + 14), v49, &qword_27CB28BB8, &qword_217771948);
  v13 = v49[3];
  v41 = a1;
  if (v49[3])
  {
    v14 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    (*(v14 + 16))(v50, a1, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v13, v14);
    sub_217506F68(v49);
  }

  else
  {
    sub_2171F06D8(v49, &qword_27CB28BB8, &qword_217771948);
    v50[0] = 0;
    v50[1] = 0;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v50[2] = 1;
    v57 = 0;
  }

  v40 = v2;
  v15 = *v2;
  v16 = *(*v2 + 16);
  v17 = MEMORY[0x277D84F90];
  v42 = a2;
  if (v16)
  {
    v38 = v5;
    v39 = v12;
    v49[0] = MEMORY[0x277D84F90];
    sub_217276620(0, v16, 0);
    v17 = v49[0];
    v18 = (v15 + 72);
    do
    {
      v44 = v16;
      v20 = *(v18 - 5);
      v19 = *(v18 - 4);
      v21 = v9;
      v22 = *(v18 - 3);
      v23 = *(v18 - 2);
      v25 = *(v18 - 1);
      v24 = *v18;
      __swift_storeEnumTagSinglePayload(v21 + *(v46 + 32), 1, 1, v47);
      *v21 = 0;
      *(v21 + 8) = v22;
      *(v21 + 16) = v23;
      *(v21 + 24) = v20;
      *(v21 + 32) = v19;
      *(v21 + 40) = v25;
      *(v21 + 48) = v24;
      v49[0] = v17;
      v26 = *(v17 + 16);
      v27 = *(v17 + 24);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      if (v26 >= v27 >> 1)
      {
        sub_217276620(v27 > 1, v26 + 1, 1);
        v17 = v49[0];
      }

      v18 += 6;
      *(v17 + 16) = v26 + 1;
      sub_2173B821C(v21, v17 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v26);
      v16 = v44 - 1;
      v9 = v21;
    }

    while (v44 != 1);
    a2 = v42;
    v5 = v38;
    v12 = v39;
  }

  sub_2174A87A0(v50, v49, &qword_27CB28C40, &qword_217771D68);
  if (v49[2] == 1)
  {
    sub_2171F06D8(v49, &qword_27CB28C40, &qword_217771D68);
    memset(v48, 0, sizeof(v48));
  }

  else
  {
    sub_2174A87A0(v49, v48, &qword_27CB24300, &qword_217771D70);
    sub_21750B4C4(v49);
    if (v48[2])
    {
      memcpy(v49, v48, sizeof(v49));
      goto LABEL_15;
    }
  }

  sub_2171F06D8(v48, &qword_27CB24300, &qword_217771D70);
  sub_2172ECBD8();
LABEL_15:
  v28 = v49[2];
  v29 = *(v49[2] + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v44 = v17;
    v48[0] = MEMORY[0x277D84F90];
    sub_217276620(0, v29, 0);
    v30 = v48[0];
    v31 = v28 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v32 = *(v5 + 72);
    do
    {
      v33 = v43;
      sub_2174A87A0(v31, v43, &qword_27CB24708, &unk_217758C90);
      v34 = *(v46 + 32);
      sub_217283888(v33, &v12[v34]);
      __swift_storeEnumTagSinglePayload(&v12[v34], 0, 1, v47);
      *v12 = 1;
      *(v12 + 8) = 0u;
      *(v12 + 40) = 0u;
      *(v12 + 24) = 0u;
      v48[0] = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_217276620(v35 > 1, v36 + 1, 1);
        v30 = v48[0];
      }

      *(v30 + 16) = v36 + 1;
      sub_2173B821C(v12, v30 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v36);
      v31 += v32;
      --v29;
    }

    while (v29);
    a2 = v42;
    v17 = v44;
  }

  v48[0] = v17;
  sub_2175443E8(v30);
  sub_2171F06D8(v50, &qword_27CB28C40, &qword_217771D68);
  result = sub_2171F06D8(v49, &qword_27CB24308, &unk_217767A90);
  *a2 = v48[0];
  return result;
}

unint64_t sub_2175084BC(uint64_t a1)
{
  v2 = a1;
  v20 = 0xD000000000000026;
  v21 = 0x80000002177AF8B0;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_217597944(0x6974736567677573, 0xEB00000000736E6FLL, a1, &v18, *v1);
  v3 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    swift_beginAccess();
    v3 = *(v3 + 56);
  }

  if (*(v3 + 16))
  {
    sub_217597CE0();
  }

  sub_2174A87A0(v1 + 112, v15, &qword_27CB28BB8, &qword_217771948);
  v4 = v16;
  if (v16)
  {
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v5 + 24))(v2 & 1, &v18, v4, v5);
    v6 = sub_217506F68(v15);
  }

  else
  {
    v6 = sub_2171F06D8(v15, &qword_27CB28BB8, &qword_217771948);
  }

  v10 = v18;
  v9 = v19;
  v15[0] = v18;
  v15[1] = v19;
  sub_21733A5C8(v6, v7, v8);
  v11 = sub_217752998();
  MEMORY[0x21CEA23B0](v11);

  v13 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    MEMORY[0x21CEA23B0](10, 0xE100000000000000, v12);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v12);
  return v20;
}

uint64_t sub_2175086EC(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217508704()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217504138(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217508798()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2175088C8, 0, 0);
  }
}

void sub_2175088C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275EE0(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_217283AFC(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275EE0(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &qword_27CB27820, &qword_21775DAB0);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_217555C04(v24, v25, v26);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_2175089D4(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175089EC()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_2175043E4(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217508A80()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217508BB0, 0, 0);
  }
}

void sub_217508BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217276010(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_217283C68(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217276010(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &qword_27CB25390, &qword_217771CA0);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_217555E4C(v24, v25, v26);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_217508CBC(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217508CD4()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217504690(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217508D68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217508E98, 0, 0);
  }
}

void sub_217508E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275E48(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_217284338(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275E48(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &qword_27CB25630, &qword_21775D568);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_217555E88(v24, v25, v26);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_217508FA4(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217508FBC()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_21750493C(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509050()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509180, 0, 0);
  }
}

void sub_217509180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275D18(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_2172757C0(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275D18(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &unk_27CB28230, &unk_21775CD50);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_217555EC4(v24, v25, v26);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_21750928C(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_2175092A4()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217504BE8(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509338()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509468, 0, 0);
  }
}

void sub_217509468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275F78(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_217283BAC(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275F78(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &qword_27CB25380, &unk_21775DAA0);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_217555F00(v24, v25, v26);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_217509574(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750958C()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217504E94(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509620()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509750, 0, 0);
  }
}

void sub_217509750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275E94(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_217284288(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275E94(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &qword_27CB25638, &unk_21775EA10);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_217555F3C(v24, v25, v26);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_21750985C(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217509874()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217505140(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509908()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509A38, 0, 0);
  }
}

void sub_217509A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275D64(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_21725CF68(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275D64(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &qword_27CB25398, &unk_21776C4F0);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_217555F78(v24, v25, v26);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_217509B44(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217509B5C()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_2175053EC(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509BF0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_217509D20, 0, 0);
  }
}

void sub_217509D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275CCC(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_21725CF0C(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275CCC(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &qword_27CB25388, &unk_21775D410);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_217555FB4(v24, v25, v26);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_217509E2C(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_217509E44()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_217505698(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_217509EDC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_35_22(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750A00C, 0, 0);
  }
}

void sub_21750A00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_21727605C(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_32_25();
      sub_217283E1C(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_21727605C(v21, v22, v23);
      }

      OUTLINED_FUNCTION_4_66();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 264), v13 + 16, &qword_27CB28BB0, &qword_217771940);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_217555FF0(v24, v25);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }
}

uint64_t sub_21750A118(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750A130()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_21750598C(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750A1C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_35_22(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750A2F8, 0, 0);
  }
}

void sub_21750A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217276100(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_32_25();
      sub_217283ECC(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217276100(v21, v22, v23);
      }

      OUTLINED_FUNCTION_4_66();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 264), v13 + 16, &qword_27CB25928, &unk_21775D9A0);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_2175563DC(v24, v25);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }
}

uint64_t sub_21750A404(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750A41C()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_217505D10(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750A4B4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_35_22(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750A5E4, 0, 0);
  }
}

void sub_21750A5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217276968(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_32_25();
      sub_21729C6EC(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217276968(v21, v22, v23);
      }

      OUTLINED_FUNCTION_4_66();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 264), v13 + 16, &qword_27CB27A88, &qword_21776B6D0);
    OUTLINED_FUNCTION_9_41();
    sub_217556640();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }
}

uint64_t sub_21750A6F0(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750A708()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_21750607C(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750A79C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750A8CC, 0, 0);
  }
}

void sub_21750A8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275FC4(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_217284130(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275FC4(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &qword_27CB27C80, &unk_21775D420);
    v24 = OUTLINED_FUNCTION_9_41();
    sub_21755667C(v24, v25, v26);
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_21750A9D8(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750A9F0()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_217506328(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750AA88()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_35_22(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750ABB8, 0, 0);
  }
}

void sub_21750ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275DFC(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_32_25();
      sub_217275710(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275DFC(v21, v22, v23);
      }

      OUTLINED_FUNCTION_4_66();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 264), v13 + 16, &qword_27CB240D0, &unk_21775D400);
    OUTLINED_FUNCTION_9_41();
    sub_2175566B8();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }
}

uint64_t sub_21750ACC4(uint64_t a1, char a2)
{
  *(v3 + 280) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750ACDC()
{
  OUTLINED_FUNCTION_209();
  v0 = OUTLINED_FUNCTION_14_33();
  v1 = sub_217506694(v0);
  OUTLINED_FUNCTION_28_30(v1);
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = OUTLINED_FUNCTION_15_38(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750AD70()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_31_26(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750AEA0, 0, 0);
  }
}

void sub_21750AEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_29_28();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217275F2C(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_27_31();
      sub_217283D6C(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217275F2C(v21, v22, v23);
      }

      OUTLINED_FUNCTION_0_70();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 248), v13 + 16, &qword_27CB255B8, &unk_21775D470);
    OUTLINED_FUNCTION_9_41();
    sub_2175566F4();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }
}

uint64_t sub_21750AFAC(uint64_t a1, char a2)
{
  *(v3 + 249) = a2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  return OUTLINED_FUNCTION_20();
}

uint64_t sub_21750AFC4()
{
  OUTLINED_FUNCTION_209();
  v1 = OUTLINED_FUNCTION_23_34();
  v2 = sub_217506940(v1);
  OUTLINED_FUNCTION_34_24(v2);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 280) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_75(v3);

  return v6(v5);
}

uint64_t sub_21750B05C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  OUTLINED_FUNCTION_35_22(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_20_0();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21750B18C, 0, 0);
  }
}

void sub_21750B18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_33_23();
  if (v12)
  {
    v14 = OUTLINED_FUNCTION_3_61();
    sub_217276C14(v14, v15, v16);
    OUTLINED_FUNCTION_10_39();
    while (1)
    {
      OUTLINED_FUNCTION_25_36();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_12_31();
      v18 = OUTLINED_FUNCTION_32_25();
      sub_21729C79C(v18, v19);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_5_51();
      if (v17)
      {
        OUTLINED_FUNCTION_11_42();
        sub_217276C14(v21, v22, v23);
      }

      OUTLINED_FUNCTION_4_66();
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    sub_2174A87A0(*(v13 + 264), v13 + 16, &qword_27CB27D40, &qword_21776BB40);
    OUTLINED_FUNCTION_9_41();
    sub_217556730();
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }
}

unint64_t sub_21750B298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28BD8;
  if (!qword_27CB28BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28BD8);
  }

  return result;
}

unint64_t sub_21750B2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28BE0;
  if (!qword_27CB28BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28BE0);
  }

  return result;
}

unint64_t sub_21750B340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28BF0;
  if (!qword_27CB28BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28BF0);
  }

  return result;
}

unint64_t sub_21750B398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28BF8;
  if (!qword_27CB28BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28BF8);
  }

  return result;
}

uint64_t sub_21750B3F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21750B438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_39()
{

  return sub_2171F06D8(v0 + 120, v1, v2);
}

uint64_t sub_21750B598(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B64C(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B718(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B7CC(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B898(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750B94C(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BA18(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BACC(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BB98(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BC4C(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BD18(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BDCC(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BE98(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750BF4C(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750C018(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t sub_21750C0CC(void (*a1)(void *__return_ptr))
{
  a1(v7);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_5_52(v7);
    v2 = OUTLINED_FUNCTION_16_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_13_35(v4, v5);
  }

  else
  {
    sub_2171F06D8(v7, &qword_27CB24B48, &qword_21777F0F0);
  }

  return v1 & 1;
}

uint64_t PlaylistEntryPropertyProvider.catalogAssetRequiresSubscription.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v1);
  OUTLINED_FUNCTION_11_43();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v29, v30, v31, v32, v33, v34, v35, v36);
    if (v38)
    {
      OUTLINED_FUNCTION_16_40(v6, v7, v8, v9, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36);
      sub_217350E74(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v38, v39, v40, v41, v42, v43, v44, v45))
      {
        if (v46)
        {
          sub_2171F3F0C(&v45, &v29);
          __swift_project_boxed_opaque_existential_1(&v29, v32);
          v22 = OUTLINED_FUNCTION_3_62();
          v23(v22);
          OUTLINED_FUNCTION_5_52(&v45);
          v24 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v25(v24);
          __swift_destroy_boxed_opaque_existential_1(&v45);
          __swift_destroy_boxed_opaque_existential_1(&v29);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v37, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v45, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v2)
  {
    v4 = OUTLINED_FUNCTION_0_5();
    sub_21750B598(v4);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v5);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_0_5();
    sub_21750B598(v26);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v27);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.catalogAssetRequiresUserUpload.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v1);
  OUTLINED_FUNCTION_11_43();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v29, v30, v31, v32, v33, v34, v35, v36);
    if (v38)
    {
      OUTLINED_FUNCTION_16_40(v6, v7, v8, v9, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36);
      sub_217350E74(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v38, v39, v40, v41, v42, v43, v44, v45))
      {
        if (v46)
        {
          sub_2171F3F0C(&v45, &v29);
          __swift_project_boxed_opaque_existential_1(&v29, v32);
          v22 = OUTLINED_FUNCTION_3_62();
          v23(v22);
          OUTLINED_FUNCTION_5_52(&v45);
          v24 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v25(v24);
          __swift_destroy_boxed_opaque_existential_1(&v45);
          __swift_destroy_boxed_opaque_existential_1(&v29);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v37, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v45, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v2)
  {
    v4 = OUTLINED_FUNCTION_0_5();
    sub_21750B718(v4);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v5);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_0_5();
    sub_21750B718(v26);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v27);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.containsDownloadedOrPurchasedContent.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v1);
  OUTLINED_FUNCTION_11_43();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v29, v30, v31, v32, v33, v34, v35, v36);
    if (v38)
    {
      OUTLINED_FUNCTION_16_40(v6, v7, v8, v9, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36);
      sub_217350E74(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v38, v39, v40, v41, v42, v43, v44, v45))
      {
        if (v46)
        {
          sub_2171F3F0C(&v45, &v29);
          __swift_project_boxed_opaque_existential_1(&v29, v32);
          v22 = OUTLINED_FUNCTION_3_62();
          v23(v22);
          OUTLINED_FUNCTION_5_52(&v45);
          v24 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v25(v24);
          __swift_destroy_boxed_opaque_existential_1(&v45);
          __swift_destroy_boxed_opaque_existential_1(&v29);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v37, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v45, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v2)
  {
    v4 = OUTLINED_FUNCTION_0_5();
    sub_21750B898(v4);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v5);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_0_5();
    sub_21750B898(v26);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v27);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.hasExplicitContent.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v1);
  OUTLINED_FUNCTION_11_43();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v29, v30, v31, v32, v33, v34, v35, v36);
    if (v38)
    {
      OUTLINED_FUNCTION_16_40(v6, v7, v8, v9, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36);
      sub_217350E74(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v38, v39, v40, v41, v42, v43, v44, v45))
      {
        if (v46)
        {
          sub_2171F3F0C(&v45, &v29);
          __swift_project_boxed_opaque_existential_1(&v29, v32);
          v22 = OUTLINED_FUNCTION_3_62();
          v23(v22);
          OUTLINED_FUNCTION_5_52(&v45);
          v24 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v25(v24);
          __swift_destroy_boxed_opaque_existential_1(&v45);
          __swift_destroy_boxed_opaque_existential_1(&v29);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v37, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v45, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_2_76();
    v4 = OUTLINED_FUNCTION_10_40();
    sub_21750BA18(v4);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v5);
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    v26 = OUTLINED_FUNCTION_10_40();
    sub_21750BA18(v26);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v27);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.hasNonPurgeableLocalAsset.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v1);
  OUTLINED_FUNCTION_11_43();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v29, v30, v31, v32, v33, v34, v35, v36);
    if (v38)
    {
      OUTLINED_FUNCTION_16_40(v6, v7, v8, v9, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36);
      sub_217350E74(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v38, v39, v40, v41, v42, v43, v44, v45))
      {
        if (v46)
        {
          sub_2171F3F0C(&v45, &v29);
          __swift_project_boxed_opaque_existential_1(&v29, v32);
          v22 = OUTLINED_FUNCTION_3_62();
          v23(v22);
          OUTLINED_FUNCTION_5_52(&v45);
          v24 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v25(v24);
          __swift_destroy_boxed_opaque_existential_1(&v45);
          __swift_destroy_boxed_opaque_existential_1(&v29);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v37, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v45, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_2_76();
    v4 = OUTLINED_FUNCTION_10_40();
    sub_21750BB98(v4);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v5);
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    v26 = OUTLINED_FUNCTION_10_40();
    sub_21750BB98(v26);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v27);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.hasNonPurgeableSubscriptionProtectedLocalAsset.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v1);
  OUTLINED_FUNCTION_11_43();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v29, v30, v31, v32, v33, v34, v35, v36);
    if (v38)
    {
      OUTLINED_FUNCTION_16_40(v6, v7, v8, v9, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36);
      sub_217350E74(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v38, v39, v40, v41, v42, v43, v44, v45))
      {
        if (v46)
        {
          sub_2171F3F0C(&v45, &v29);
          __swift_project_boxed_opaque_existential_1(&v29, v32);
          v22 = OUTLINED_FUNCTION_3_62();
          v23(v22);
          OUTLINED_FUNCTION_5_52(&v45);
          v24 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v25(v24);
          __swift_destroy_boxed_opaque_existential_1(&v45);
          __swift_destroy_boxed_opaque_existential_1(&v29);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v37, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v45, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v2)
  {
    v4 = OUTLINED_FUNCTION_0_5();
    sub_21750BD18(v4);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v5);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_0_5();
    sub_21750BD18(v26);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v27);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.hasRedownloadableCatalogAsset.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v1);
  OUTLINED_FUNCTION_11_43();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v29, v30, v31, v32, v33, v34, v35, v36);
    if (v38)
    {
      OUTLINED_FUNCTION_16_40(v6, v7, v8, v9, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36);
      sub_217350E74(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v38, v39, v40, v41, v42, v43, v44, v45))
      {
        if (v46)
        {
          sub_2171F3F0C(&v45, &v29);
          __swift_project_boxed_opaque_existential_1(&v29, v32);
          v22 = OUTLINED_FUNCTION_3_62();
          v23(v22);
          OUTLINED_FUNCTION_5_52(&v45);
          v24 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v25(v24);
          __swift_destroy_boxed_opaque_existential_1(&v45);
          __swift_destroy_boxed_opaque_existential_1(&v29);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v37, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v45, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v2)
  {
    v4 = OUTLINED_FUNCTION_0_5();
    sub_21750BE98(v4);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v5);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_0_5();
    sub_21750BE98(v26);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v27);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.isHomeSharingAssetAvailable.getter()
{
  type metadata accessor for PlaylistEntryPropertyProvider(0);
  OUTLINED_FUNCTION_12_32();
  OUTLINED_FUNCTION_15_39(&qword_27CB27D20, &qword_217758B80, v1);
  OUTLINED_FUNCTION_11_43();
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_14_34(&qword_27CB24BA8, &unk_217772FF0, *(v0 + 68), v29, v30, v31, v32, v33, v34, v35, v36);
    if (v38)
    {
      OUTLINED_FUNCTION_16_40(v6, v7, v8, v9, v10, v11, v12, v13, v29, v30, v31, v32, v33, v34, v35, v36);
      sub_217350E74(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (OUTLINED_FUNCTION_6_50(v14, v15, v16, v17, v18, v19, v20, v21, v29, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v38, v39, v40, v41, v42, v43, v44, v45))
      {
        if (v46)
        {
          sub_2171F3F0C(&v45, &v29);
          __swift_project_boxed_opaque_existential_1(&v29, v32);
          v22 = OUTLINED_FUNCTION_3_62();
          v23(v22);
          OUTLINED_FUNCTION_5_52(&v45);
          v24 = OUTLINED_FUNCTION_16_1();
          LOBYTE(v0) = v25(v24);
          __swift_destroy_boxed_opaque_existential_1(&v45);
          __swift_destroy_boxed_opaque_existential_1(&v29);
          return v0 & 1;
        }
      }

      else
      {
        OUTLINED_FUNCTION_7_45();
      }
    }

    else
    {
      sub_2171F06D8(v37, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_8_46();
    }

    sub_2171F06D8(&v45, &qword_27CB28C48, &qword_217771D88);
    LOBYTE(v0) = 0;
    return v0 & 1;
  }

  if (v2)
  {
    v4 = OUTLINED_FUNCTION_0_5();
    sub_21750C018(v4);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v5);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_0_5();
    sub_21750C018(v26);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v27);
  }

  return v0 & 1;
}

uint64_t PlaylistEntryPropertyProvider.playableCategory.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  sub_217202078(v1 + *(v3 + 40), v17, &qword_27CB27D20, &qword_217758B80);
  if (v18 == 255)
  {
    sub_217202078(v1 + *(v3 + 68), v9, &qword_27CB24BA8, &unk_217772FF0);
    if (v9[3])
    {
      sub_2171FF30C(v9, v10);
      sub_217350E74(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28980, &qword_21776F998);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C50, &qword_217771D90);
      if (swift_dynamicCast())
      {
        if (*(&v12 + 1))
        {
          sub_2171F3F0C(&v11, v14);
          v4 = v15;
          v5 = v16;
          __swift_project_boxed_opaque_existential_1(v14, v15);
          (*(v5 + 8))(&v11, v4, v5);
          v6 = *(&v12 + 1);
          v7 = v13;
          __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
          (*(v7 + 88))(v6, v7);
          __swift_destroy_boxed_opaque_existential_1(&v11);
          return __swift_destroy_boxed_opaque_existential_1(v14);
        }
      }

      else
      {
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
      }
    }

    else
    {
      sub_2171F06D8(v9, &qword_27CB24BA8, &unk_217772FF0);
      v11 = 0u;
      v12 = 0u;
      v13 = 0;
    }

    result = sub_2171F06D8(&v11, &qword_27CB28C48, &qword_217771D88);
    *a1 = 0;
  }

  else
  {
    *a1 = (v18 & 1) == 0;
    return sub_21729C7F8(v17);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_34@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_217202078(v11 + a3, va, a1, a2);
}

uint64_t OUTLINED_FUNCTION_15_39@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_217202078(v3 + a3, v4 - 96, a1, a2);
}

uint64_t OUTLINED_FUNCTION_16_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  return sub_2171FF30C(va, va1);
}

MusicKit::MusicTokenRequestOptions sub_21750D168@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MusicTokenRequestOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21750D1A8@<X0>(uint64_t *a1@<X8>)
{
  result = MusicTokenRequestOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21750D1D4()
{
  type metadata accessor for DefaultMusicTokenProvider();
  result = swift_allocObject();
  qword_27CB28C58 = result;
  unk_27CB28C60 = &protocol witness table for DefaultMusicTokenProvider;
  return result;
}

uint64_t static MusicDataRequest.tokenProvider.getter()
{
  if (qword_27CB23C30 != -1)
  {
    OUTLINED_FUNCTION_0_71(&qword_27CB23C30);
  }

  swift_beginAccess();
}

uint64_t static MusicDataRequest.tokenProvider.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27CB23C30 != -1)
  {
    OUTLINED_FUNCTION_0_71(&qword_27CB23C30);
  }

  swift_beginAccess();
  qword_27CB28C58 = a1;
  unk_27CB28C60 = a2;
}

uint64_t (*static MusicDataRequest.tokenProvider.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CB23C30 != -1)
  {
    OUTLINED_FUNCTION_0_71(&qword_27CB23C30);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_21750D374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28C68;
  if (!qword_27CB28C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C68);
  }

  return result;
}

unint64_t sub_21750D3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28C70;
  if (!qword_27CB28C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C70);
  }

  return result;
}

unint64_t sub_21750D424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28C78;
  if (!qword_27CB28C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C78);
  }

  return result;
}

unint64_t sub_21750D47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28C80;
  if (!qword_27CB28C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C80);
  }

  return result;
}

uint64_t dispatch thunk of MusicDeveloperTokenProvider.developerToken(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21750D608;

  return v9(a1, a2, a3);
}

uint64_t sub_21750D608(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t NotificationCoalescer.__allocating_init(_:notificationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_63();
  v6 = swift_allocObject();
  NotificationCoalescer.init(_:notificationHandler:)(a1, a2, a3);
  return v6;
}

uint64_t NotificationCoalescer.deinit()
{
  swift_beginAccess();
  v1 = *(*(v0 + 32) + 16);
  if (v1)
  {
    sub_217751DE8();
    v2 = 32;
    do
    {

      sub_217752558();

      v2 += 8;
      --v1;
    }

    while (v1);
  }

  return v0;
}

uint64_t NotificationCoalescer.__deallocating_deinit()
{
  NotificationCoalescer.deinit();
  v0 = OUTLINED_FUNCTION_3_63();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_21750D864(uint64_t a1, uint64_t a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_21750D8A4();
  }

  return result;
}

uint64_t sub_21750D8A4()
{
  [*(v0 + 40) invalidate];
  v1 = *(v0 + 40);
  *(v0 + 40) = 0;

  return (*(v0 + 16))();
}

id sub_21750D924()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  switch(*(v0 + 16))
  {
    case 1:
      v3 = 1;
      goto LABEL_9;
    case 2:
      v3 = 2;
      goto LABEL_9;
    case 3:
      v3 = 3;
      goto LABEL_9;
    case 4:
      v3 = 4;
      goto LABEL_9;
    case 5:
      v3 = 5;
      goto LABEL_9;
    case 6:
      v3 = 6;
      goto LABEL_9;
    case 7:
      v3 = 7;
      goto LABEL_9;
    case 8:
      OUTLINED_FUNCTION_422();
      result = sub_217752D08();
      __break(1u);
      return result;
    default:
LABEL_9:
      sub_21750DB7C();
      sub_217751DE8();
      return sub_21750DBC0(v1, v2, v3);
  }
}

void sub_21750DA18(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 value];
  v5 = sub_217751F48();
  v7 = v6;

  v8 = 0;
  switch([a1 kind])
  {
    case 0uLL:
      goto LABEL_9;
    case 1uLL:
      v8 = 1;
      goto LABEL_9;
    case 2uLL:
      v8 = 2;
      goto LABEL_9;
    case 3uLL:
      v8 = 3;
      goto LABEL_9;
    case 4uLL:
      v8 = 4;
      goto LABEL_9;
    case 5uLL:
      v8 = 5;
      goto LABEL_9;
    case 6uLL:
      v8 = 6;
      goto LABEL_9;
    case 7uLL:
      v8 = 7;
LABEL_9:

      *a2 = v5;
      *(a2 + 8) = v7;
      *(a2 + 16) = v8;
      break;
    default:
      OUTLINED_FUNCTION_422();
      sub_217752D08();
      __break(1u);
      break;
  }
}

unint64_t sub_21750DB7C()
{
  result = qword_280BE22E8;
  if (!qword_280BE22E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE22E8);
  }

  return result;
}

id sub_21750DBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_217751F18();
  v6 = [v4 initWithValue:v5 kind:{a3, }];

  return v6;
}

uint64_t sub_21750DC4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  result = a1 + 32;
  v6 = v4 + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 768;
    sub_21750EA6C(result, a2);
    result = v7;
  }

  while (!v2);
  return result;
}

uint64_t sub_21750DC9C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2172765B4(0, v2, 0);
    v3 = v21;
    v13 = v1;
    v4 = v1 + 32;
    do
    {
      sub_2171F5110(v4, v17, &qword_27CB244A8, &unk_217758980);
      v5 = v17[1];
      v6 = v17[40];
      v15 = v17[39];
      v16 = v17[0];
      v7 = v18;
      v8 = v20;
      v14 = v19;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v17, &qword_27CB244A8, &unk_217758980);
      v21 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2172765B4(v9 > 1, v10 + 1, 1);
        v3 = v21;
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 56 * v10;
      *(v11 + 32) = v16;
      *(v11 + 40) = v5;
      *(v11 + 48) = v15;
      *(v11 + 56) = v6;
      *(v11 + 64) = v7;
      *(v11 + 72) = v14;
      *(v11 + 80) = v8;
      v4 += 768;
      --v2;
    }

    while (v2);
    v1 = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CD8, &unk_217772160);
  v17[0] = sub_217751DC8();
  sub_21750DC4C(v1, v17);
  sub_217751DE8();
  return v3;
}

uint64_t sub_21750DE5C@<X0>(uint64_t a1@<X8>)
{
  sub_21733C5F0(v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!swift_dynamicCast())
  {
    return sub_2171F5110(v1 + 152, a1, &qword_27CB244B0, &unk_21776DB80);
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21750DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_21726FA70();
  if (v12)
  {
    sub_217262380();
    if (v13)
    {
      if (a4)
      {
        if (a8)
        {
          v14 = a3 == a7 && a4 == a8;
          if (v14 || (sub_217753058() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!a8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21750DFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F736572 && a2 == 0xE900000000000073;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047342 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

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

uint64_t sub_21750E0EC(char a1)
{
  if (!a1)
  {
    return 1635017060;
  }

  if (a1 == 1)
  {
    return 0x656372756F736572;
  }

  return 1954047342;
}

uint64_t sub_21750E138(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v22 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28C98, &qword_217772148);
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21750E8DC(v14, v15, v16);
  sub_2177532F8();
  v24 = a2;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CA8, &qword_217772150);
  v17 = sub_21750F608(&unk_27CB28CB0);
  OUTLINED_FUNCTION_3_64(v17);
  if (!v5)
  {
    v24 = v21;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CC0, &qword_217772158);
    v18 = sub_21750F6D0(&unk_27CB28CC8);
    OUTLINED_FUNCTION_3_64(v18);
    LOBYTE(v24) = 2;
    sub_217752EF8();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_21750E350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_217281654();
  sub_2172695B8(a1, a3);
  if (!a5)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_21750E3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2177531E8();
  sub_217281654();
  sub_2172695B8(v7, a2);
  sub_217753208();
  if (a4)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

uint64_t sub_21750E468(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CF8, &qword_217772170);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_21750E8DC(v5, v6, v7);
  sub_2177532C8();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CA8, &qword_217772150);
    sub_21750F608(&unk_27CB28D00);
    OUTLINED_FUNCTION_2_77();
    v4 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28CC0, &qword_217772158);
    sub_21750F6D0(&unk_27CB28D10);
    OUTLINED_FUNCTION_2_77();
    sub_217752E18();
    v9 = OUTLINED_FUNCTION_0_73();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_21750E704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21750DFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21750E72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21750E8DC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21750E768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21750E8DC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_21750E7D8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_2177531E8();
  sub_21750E350(v7, v2, v3, v5, v4);
  return sub_217753238();
}

uint64_t sub_21750E834@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21750E468(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_21750E868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28C90;
  if (!qword_27CB28C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28C90);
  }

  return result;
}

unint64_t sub_21750E8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28CA0;
  if (!qword_27CB28CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28CA0);
  }

  return result;
}

unint64_t sub_21750E930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28CB8;
  if (!qword_27CB28CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28CB8);
  }

  return result;
}

unint64_t sub_21750E984()
{
  result = qword_27CB28CD0;
  if (!qword_27CB28CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28CD8, &unk_217772160);
    sub_21750F7F8(&unk_27CB28CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28CD0);
  }

  return result;
}

unint64_t sub_21750EA2C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    type metadata accessor for CloudPersonalRecommendation.Content(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_21750EA6C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for CloudStation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CloudPlaylist(0);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CloudAlbum(0);
  MEMORY[0x28223BE20](v7 - 8);
  v88 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for CloudPersonalRecommendation.Item(0);
  MEMORY[0x28223BE20](v93);
  v91 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v87 - v11;
  v102 = type metadata accessor for CloudPersonalRecommendation.Content(0);
  MEMORY[0x28223BE20](v102);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v87 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  sub_21750DE5C(v109);
  if (v110 == 1)
  {
    v20 = &qword_27CB244B0;
    v21 = &unk_21776DB80;
    v22 = v109;
LABEL_6:
    sub_2171F0738(v22, v20, v21);
    v23 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  sub_2171F5110(v109, v108, &qword_27CB244B8, &unk_217758990);
  sub_21728373C(v109);
  v23 = v108[2];
  if (!v108[2])
  {
    v20 = &qword_27CB244B8;
    v21 = &unk_217758990;
    v22 = v108;
    goto LABEL_6;
  }

  sub_217751DE8();
  sub_2171F0738(v108, &qword_27CB244C0, &qword_21775D9C0);
LABEL_7:
  v101 = *(v23 + 16);
  if (!v101)
  {
LABEL_57:

    return;
  }

  v24 = 0;
  v100 = v23 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  v95 = xmmword_2177586E0;
  v98 = v13;
  v99 = a2;
  v105 = v19;
  v97 = v23;
  while (v24 < *(v23 + 16))
  {
    v104 = *(v103 + 72);
    sub_2171F5110(v100 + v104 * v24, v19, &qword_27CB24210, &unk_21776DB90);
    v25 = &v19[*(v106 + 36)];
    v26 = *v25;
    v27 = v25[1];
    v28 = *a2;
    v29 = *(*a2 + 16);
    v111 = v27;
    v107 = v26;
    if (v29)
    {
      v30 = sub_21763246C(v26, v27);
      if (v31)
      {
        v32 = *(*(v28 + 56) + 8 * v30);
        v33 = v92;
        sub_217269C38(v19, v92);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21750F8A4(v33, v91, type metadata accessor for CloudPersonalRecommendation.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v35 = v89;
              sub_21750F8A4(v91, v89, type metadata accessor for CloudPlaylist);
              v36 = *v35;
              v37 = v35[1];
              sub_217751DE8();
              sub_217751DE8();
              v38 = type metadata accessor for CloudPlaylist;
            }

            else
            {
              v35 = v90;
              sub_21750F8A4(v91, v90, type metadata accessor for CloudStation);
              v36 = *v35;
              v37 = v35[1];
              sub_217751DE8();
              sub_217751DE8();
              v38 = type metadata accessor for CloudStation;
            }
          }

          else
          {
            v35 = v88;
            sub_21750F8A4(v91, v88, type metadata accessor for CloudAlbum);
            v36 = *v35;
            v37 = v35[1];
            sub_217751DE8();
            sub_217751DE8();
            v38 = type metadata accessor for CloudAlbum;
          }

          sub_21750F904(v35, v38);
        }

        else
        {
          memcpy(v108, v33, sizeof(v108));
          v36 = v108[0];
          v37 = v108[1];
          sub_217751DE8();
          sub_217751DE8();
          sub_217269D5C(v108);
        }

        sub_2171F5110(v19, v94, &qword_27CB24210, &unk_21776DB90);
        swift_isUniquelyReferenced_nonNull_native();
        v108[0] = v32;
        v65 = sub_21763246C(v36, v37);
        if (__OFADD__(*(v32 + 16), (v66 & 1) == 0))
        {
          goto LABEL_61;
        }

        v67 = v65;
        v68 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D40, &unk_217772190);
        if (sub_217752CB8())
        {
          v69 = sub_21763246C(v36, v37);
          if ((v68 & 1) != (v70 & 1))
          {
            goto LABEL_65;
          }

          v67 = v69;
          if ((v68 & 1) == 0)
          {
LABEL_42:
            v71 = v108[0];
            *(v108[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
            v72 = (v71[6] + 16 * v67);
            *v72 = v36;
            v72[1] = v37;
            sub_21750F95C(v94, v71[7] + v67 * v104);
            v73 = v71[2];
            v63 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (v63)
            {
              goto LABEL_63;
            }

            v71[2] = v74;
            goto LABEL_46;
          }
        }

        else if ((v68 & 1) == 0)
        {
          goto LABEL_42;
        }

        v71 = v108[0];
        sub_21750F9CC(v94, *(v108[0] + 56) + v67 * v104);
LABEL_46:
        a2 = v99;
        swift_isUniquelyReferenced_nonNull_native();
        v108[0] = *a2;
        v75 = v108[0];
        *a2 = 0x8000000000000000;
        v76 = sub_21763246C(v107, v111);
        if (__OFADD__(*(v75 + 16), (v77 & 1) == 0))
        {
          goto LABEL_62;
        }

        v78 = v76;
        v79 = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D38, &qword_217772188);
        if (sub_217752CB8())
        {
          v80 = sub_21763246C(v107, v111);
          v19 = v105;
          if ((v79 & 1) != (v81 & 1))
          {
            goto LABEL_65;
          }

          v78 = v80;
        }

        else
        {
          v19 = v105;
        }

        v82 = v108[0];
        if (v79)
        {
          *(*(v108[0] + 56) + 8 * v78) = v71;
        }

        else
        {
          *(v108[0] + 8 * (v78 >> 6) + 64) |= 1 << v78;
          v83 = (v82[6] + 16 * v78);
          v84 = v111;
          *v83 = v107;
          v83[1] = v84;
          *(v82[7] + 8 * v78) = v71;
          v85 = v82[2];
          v63 = __OFADD__(v85, 1);
          v86 = v85 + 1;
          if (v63)
          {
            goto LABEL_64;
          }

          v82[2] = v86;
          sub_217751DE8();
        }

        *a2 = v82;

        v23 = v97;
        v13 = v98;
        goto LABEL_56;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D28, &qword_217772178);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D30, &qword_217772180);
    v40 = (*(*(v39 - 8) + 80) + 32) & ~*(*(v39 - 8) + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v95;
    sub_217269C38(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21750F8A4(v13, v96, type metadata accessor for CloudPersonalRecommendation.Item);
      v42 = swift_getEnumCaseMultiPayload();
      if (v42)
      {
        if (v42 == 1)
        {
          v43 = v89;
          sub_21750F8A4(v96, v89, type metadata accessor for CloudPlaylist);
          v44 = *v43;
          v45 = v43[1];
          sub_217751DE8();
          v46 = type metadata accessor for CloudPlaylist;
        }

        else
        {
          v43 = v90;
          sub_21750F8A4(v96, v90, type metadata accessor for CloudStation);
          v44 = *v43;
          v45 = v43[1];
          sub_217751DE8();
          v46 = type metadata accessor for CloudStation;
        }

        sub_21750F904(v43, v46);
        v19 = v105;
      }

      else
      {
        v47 = v88;
        sub_21750F8A4(v96, v88, type metadata accessor for CloudAlbum);
        v44 = *v47;
        v45 = v47[1];
        sub_217751DE8();
        v48 = v47;
        v19 = v105;
        sub_21750F904(v48, type metadata accessor for CloudAlbum);
      }
    }

    else
    {
      memcpy(v108, v13, sizeof(v108));
      v44 = v108[0];
      v45 = v108[1];
      sub_217751DE8();
      sub_217269D5C(v108);
    }

    v49 = (v41 + v40);
    v50 = *(v39 + 48);
    *v49 = v44;
    v49[1] = v45;
    sub_2171F5110(v19, v41 + v40 + v50, &qword_27CB24210, &unk_21776DB90);
    v51 = sub_217751DC8();
    swift_isUniquelyReferenced_nonNull_native();
    v108[0] = *a2;
    v52 = v108[0];
    *a2 = 0x8000000000000000;
    v53 = sub_21763246C(v107, v111);
    if (__OFADD__(*(v52 + 16), (v54 & 1) == 0))
    {
      goto LABEL_59;
    }

    v55 = v53;
    v56 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D38, &qword_217772188);
    if (sub_217752CB8())
    {
      v57 = sub_21763246C(v107, v111);
      v19 = v105;
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_65;
      }

      v55 = v57;
    }

    else
    {
      v19 = v105;
    }

    v59 = v108[0];
    if (v56)
    {
      *(*(v108[0] + 56) + 8 * v55) = v51;
    }

    else
    {
      *(v108[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
      v60 = (v59[6] + 16 * v55);
      v61 = v111;
      *v60 = v107;
      v60[1] = v61;
      *(v59[7] + 8 * v55) = v51;
      v62 = v59[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_60;
      }

      v59[2] = v64;
      sub_217751DE8();
    }

    a2 = v99;
    *v99 = v59;

    v23 = v97;
    v13 = v98;
LABEL_56:
    ++v24;
    sub_2171F0738(v19, &qword_27CB24210, &unk_21776DB90);
    if (v101 == v24)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_217753178();
  __break(1u);
}

unint64_t sub_21750F608(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28CA8, &qword_217772150);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21750F67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28D08;
  if (!qword_27CB28D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D08);
  }

  return result;
}

unint64_t sub_21750F6D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28CC0, &qword_217772158);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21750F750()
{
  result = qword_27CB28D18;
  if (!qword_27CB28D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB28CD8, &unk_217772160);
    sub_21750F7F8(&unk_27CB28D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D18);
  }

  return result;
}

unint64_t sub_21750F7F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24210, &unk_21776DB90);
    sub_21750EA2C(&unk_27CB28CE8);
    sub_21750EA2C(&unk_27CB28CF0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21750F8A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21750F904(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21750F95C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21750F9CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24210, &unk_21776DB90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CloudPersonalRecommendationsServerItemDatabaseRawPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21750FB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28D48;
  if (!qword_27CB28D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D48);
  }

  return result;
}

unint64_t sub_21750FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28D50;
  if (!qword_27CB28D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D50);
  }

  return result;
}

unint64_t sub_21750FBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28D58;
  if (!qword_27CB28D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D58);
  }

  return result;
}

uint64_t RadioShow.init(propertyProvider:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RadioShow.id.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

void *RadioShow.editorialNotes.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6698 != -1)
  {
    OUTLINED_FUNCTION_13_5(&qword_280BE6698);
  }

  v26 = qword_280C02028;

  return sub_2176CA348(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21750FE00(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return a3(*a2);
}

uint64_t RadioShow.hostName.getter()
{
  if (qword_280BE6638 != -1)
  {
    OUTLINED_FUNCTION_3_65(&qword_280BE6638);
  }

  return sub_2172A3F00(qword_280C01FF0);
}

void *sub_21750FEC4(void *a1, uint64_t *a2, uint64_t a3, uint64_t x3_0, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v28 = *a2;

  return sub_2176CAC70(v28, a2, a3, x3_0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t RadioShow.name.getter()
{
  if (qword_280BE6658 != -1)
  {
    OUTLINED_FUNCTION_10_29(&qword_280BE6658);
  }

  result = sub_2172A3F00(qword_280C02000);
  if (!v1)
  {
    return 0;
  }

  return result;
}

void RadioShow.url.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE6660 != -1)
  {
    OUTLINED_FUNCTION_9_31(&qword_280BE6660);
  }

  v30 = qword_280C02008;

  sub_2176CA328(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void RadioShow.playlists.getter(void x0_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE6628 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280BE6628);
  }

  v30 = qword_280BE6630;

  sub_2176CA30C(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t static RadioShow.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t RadioShow.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t RadioShow.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2175101D8@<X0>(uint64_t *a1@<X8>)
{
  result = RadioShow.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RadioShow.subscript.getter()
{
  OUTLINED_FUNCTION_62_0();
  sub_21737C7CC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  sub_21737C7CC(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v3, v4, v5);
}

{
  OUTLINED_FUNCTION_62_0();
  v3 = type metadata accessor for MusicItemCollection(0, *(v1 + 264), *(v0 + 272), v2);
  sub_21737C7CC(v3, v4, v5);
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v6, v7, v8);
}

uint64_t sub_2175103B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D68, &qword_217772548);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C01FF8 = result;
  return result;
}

uint64_t sub_217510424()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D98, &qword_217772578);
  swift_allocObject();
  result = sub_217729830();
  qword_280C02018 = result;
  return result;
}

uint64_t sub_2175104A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D90, &qword_217772570);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  v1 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v1, 0xEE007365746F4E6CLL, v2, v3, v4, v5, v6, v7, v9, v10, v11);
  qword_280C02028 = result;
  return result;
}

uint64_t sub_217510518()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D88, &qword_217772568);
  swift_allocObject();
  OUTLINED_FUNCTION_212();
  result = sub_217729830();
  qword_280C02010 = result;
  return result;
}

uint64_t sub_217510598()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D80, &qword_217772560);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x74736F48776F6873, 0xEC000000656D614ELL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C01FF0 = result;
  return result;
}

uint64_t sub_217510614()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D68, &qword_217772548);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02020 = result;
  return result;
}

uint64_t sub_217510694()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D80, &qword_217772560);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02000 = result;
  return result;
}

uint64_t sub_217510700()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D78, &qword_217772558);
  OUTLINED_FUNCTION_189(v0);
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02008 = result;
  return result;
}

uint64_t sub_21751076C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28D70, &qword_217772550);
  swift_allocObject();
  result = sub_21769A084();
  qword_280BE6630 = result;
  return result;
}

uint64_t static RadioShow.catalogFilterID(for:)@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_2177722B8);
  sub_2177529D8();
  v3 = sub_217751F08();

  if (v3)
  {
    *a2 = 25705;
    a2[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217510968@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t RadioShow.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EDED8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RadioShow.description.getter()
{
  v1 = 0xE000000000000000;
  sub_217752AA8();

  OUTLINED_FUNCTION_16_41();
  v15 = v2;
  v16 = 0xEF22203A64692877;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_280BE6658 != -1)
  {
    OUTLINED_FUNCTION_10_29(&qword_280BE6658);
  }

  v3 = sub_2172A3F00(qword_280C02000);
  if (v4)
  {
    v1 = v4;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x21CEA23B0](v3, v1);

  MEMORY[0x21CEA23B0](34, 0xE100000000000000, v5);
  if (qword_280BE6638 != -1)
  {
    OUTLINED_FUNCTION_3_65(&qword_280BE6638);
  }

  v6 = sub_2172A3F00(qword_280C01FF0);
  if (v7)
  {
    v9 = v6;
    v10 = v7;
    sub_217752AA8();

    strcpy(v14, ", hostName: ");
    HIWORD(v14[1]) = -4864;
    MEMORY[0x21CEA23B0](v9, v10, v11);

    MEMORY[0x21CEA23B0](34, 0xE100000000000000, v12);
    MEMORY[0x21CEA23B0](v14[0], v14[1]);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v8);
  return v15;
}

uint64_t RadioShow.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v97 - v2;
  v4 = sub_2177516D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_16_41();
  v127 = v8;
  v128 = 0xEA00000000002877;
  strcpy(v119, "\n  id: ");
  v119[9] = 0;
  *&v119[10] = 0;
  *&v119[12] = -402653184;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_190();

  strcpy(v119, ",\n  name: ");
  *&v119[12] = -352321536;
  if (qword_280BE6658 == -1)
  {
    goto LABEL_2;
  }

LABEL_51:
  OUTLINED_FUNCTION_10_29(&qword_280BE6658);
LABEL_2:
  v9 = sub_2172A3F00(qword_280C02000);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v9, v11);

  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_190();

  if (qword_280BE6638 != -1)
  {
    OUTLINED_FUNCTION_3_65(&qword_280BE6638);
  }

  v12 = sub_2172A3F00(qword_280C01FF0);
  if (v13)
  {
    v20 = v12;
    v21 = v13;
    OUTLINED_FUNCTION_13_36();
    sub_217752AA8();

    *v119 = 0x74736F6820200A2CLL;
    *&v119[8] = 0xEF22203A656D614ELL;
    MEMORY[0x21CEA23B0](v20, v21, v22);

    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_190();
  }

  if (qword_280BE6698 != -1)
  {
    OUTLINED_FUNCTION_13_5(&qword_280BE6698);
  }

  sub_2176CA348(qword_280C02028, v13, v14, v15, v16, v17, v18, v19, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1));
  v123[0] = *v119;
  v123[1] = *&v119[16];
  v123[2] = *&v119[32];
  v123[3] = *&v119[48];
  v30 = *v119;
  v124 = *&v119[16];
  v125 = *&v119[32];
  v126 = *&v119[48];
  if (*&v119[8] != 1)
  {
    OUTLINED_FUNCTION_13_36();
    sub_217752AA8();

    OUTLINED_FUNCTION_207();
    v122[0] = v32 + 4;
    v122[1] = v31;
    *v119 = v30;
    *&v119[16] = v124;
    *&v119[32] = v125;
    *&v119[48] = v126;
    v33 = EditorialNotes.debugDescription.getter();
    v35 = v34;
    v36 = sub_2171F06D8(v123, &qword_27CB24B70, &unk_217759460);
    *&v112 = v33;
    *(&v112 + 1) = v35;
    *&v100 = 10;
    *(&v100 + 1) = 0xE100000000000000;
    *&v105 = 2105354;
    *(&v105 + 1) = 0xE300000000000000;
    sub_21733A5C8(v36, v37, v38);
    v39 = OUTLINED_FUNCTION_147_0();
    v45 = OUTLINED_FUNCTION_172(v39, v40, v41, v42, v43, v44, MEMORY[0x277D837D0]);
    v46 = v5;
    v48 = v47;

    MEMORY[0x21CEA23B0](v45, v48, v49);
    v5 = v46;

    MEMORY[0x21CEA23B0](v122[0], v122[1], v50);
  }

  if (qword_280BE6660 != -1)
  {
    OUTLINED_FUNCTION_9_31(&qword_280BE6660);
  }

  sub_2176CA328(qword_280C02008, v23, v24, v25, v26, v27, v28, v29, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109, v110, v111, v112, *(&v112 + 1));
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2171F06D8(v3, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    strcpy(v119, ",\n  url: ");
    v119[11] = 0;
    *&v119[12] = -369098752;
    sub_21736C310();
    v58 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v58);

    OUTLINED_FUNCTION_191();
    MEMORY[0x21CEA23B0](*v119, *&v119[8]);

    (*(v5 + 8))(v7, v4, v59);
  }

  if (qword_280BE6628 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280BE6628);
  }

  sub_2176CA30C(qword_280BE6630, v51, v52, v53, v54, v55, v56, v57, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109, v110, v111, v112, *(&v112 + 1));
  if (*&v119[88])
  {
    memcpy(v122, v119, sizeof(v122));
    *&v121 = 0;
    *(&v121 + 1) = 0xE000000000000000;
    sub_217202078(v122, &v112, &unk_27CB28230, &unk_21775CD50);
    sub_217202078(&v112, v119, &unk_27CB28230, &unk_21775CD50);
    v60 = v112;
    v61 = BYTE8(v112);
    sub_217283C5C(v112, SBYTE8(v112));
    sub_2171F06D8(&v112, &unk_27CB28230, &unk_21775CD50);
    sub_21725CF00(v60, v61);
    v62 = 0;
    v120 = 0;
    v4 = *v119;
    v3 = v119[8];
    v7 = (*v119 + 32);
    v5 = 0xE100000000000000;
    if (v119[8])
    {
LABEL_22:
      swift_beginAccess();
      if (v62 != *(*(v4 + 56) + 16))
      {

        sub_2172944E4(v62);
        goto LABEL_31;
      }
    }

    else
    {
      while (1)
      {
        v63 = *(v4 + 16);
        if (v62 == v63)
        {
          break;
        }

        if ((v62 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v62 >= v63)
        {
          goto LABEL_50;
        }

        sub_217202078(v7, &v112, &qword_27CB24830, &qword_217771D40);
        sub_217202078(&v112, &v100, &qword_27CB24830, &qword_217771D40);
        if (v104)
        {
          v64 = *(v100 + 16);
          v65 = *(v100 + 24);
          sub_217283C5C(v4, 0);
          sub_217751DE8();

          sub_21729290C(v64, v65, v66, v67, v68, v69, v70, v71, v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, v104, v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109, v110, v111, v112, *(&v112 + 1), v113, *(&v113 + 1), v114, *(&v114 + 1), v115, v116, v117, v118);

          v5 = 0xE100000000000000;
        }

        else
        {
          v105 = v100;
          v106 = v101;
          v107 = v102;
          v108 = v103;
          sub_217283C5C(v4, 0);
        }

        sub_2171F06D8(&v112, &qword_27CB24830, &qword_217771D40);
LABEL_31:
        v98 = v106;
        v99 = v105;
        v97 = v107;
        v72 = v108;
        v73 = __OFADD__(v62, 1);
        if (v3)
        {
          sub_21725CF00(v4, 1);
          if (v73)
          {
            goto LABEL_49;
          }
        }

        else
        {
          sub_21725CF00(v4, 0);
          if (v73)
          {
            goto LABEL_48;
          }
        }

        v112 = v99;
        v113 = v98;
        v114 = v97;
        v115 = v72;
        v74 = v121 & 0xFFFFFFFFFFFFLL;
        if ((*(&v121 + 1) & 0x2000000000000000) != 0)
        {
          v74 = HIBYTE(*(&v121 + 1)) & 0xFLL;
        }

        if (v74)
        {
          MEMORY[0x21CEA23B0](44, 0xE100000000000000);
        }

        *&v100 = 10;
        *(&v100 + 1) = 0xE100000000000000;
        v75 = Playlist.debugDescription.getter();
        MEMORY[0x21CEA23B0](v75);

        MEMORY[0x21CEA23B0](v100, *(&v100 + 1), v76);

        sub_21726B8C4(&v112);
        ++v62;
        v7 += 64;
        if (v3)
        {
          goto LABEL_22;
        }
      }
    }

    v120 = v62;
    sub_2171F06D8(v119, &qword_27CB254C0, &unk_21775CD60);
    OUTLINED_FUNCTION_13_36();
    sub_217752AA8();

    OUTLINED_FUNCTION_207();
    *v119 = v78;
    *&v119[8] = v77;
    v112 = v121;
    *&v100 = 10;
    *(&v100 + 1) = 0xE100000000000000;
    *&v105 = 0x202020200ALL;
    *(&v105 + 1) = 0xE500000000000000;
    sub_21733A5C8(v79, v80, v81);
    v82 = OUTLINED_FUNCTION_147_0();
    v88 = OUTLINED_FUNCTION_172(v82, v83, v84, v85, v86, v87, MEMORY[0x277D837D0]);
    v90 = v89;

    MEMORY[0x21CEA23B0](v88, v90, v91);

    MEMORY[0x21CEA23B0](1562386442, 0xE400000000000000, v92);
    OUTLINED_FUNCTION_190();

    v93 = &unk_27CB28230;
    v94 = &unk_21775CD50;
    v95 = v122;
  }

  else
  {
    v93 = &qword_27CB25330;
    v94 = &unk_21775E9B0;
    v95 = v119;
  }

  sub_2171F06D8(v95, v93, v94);
  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v127;
}

uint64_t static RadioShow.typeValue.getter()
{
  if (qword_280BE23C0 != -1)
  {
    OUTLINED_FUNCTION_5_53(&qword_280BE23C0);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE23C8);

  return sub_217751DE8();
}

uint64_t sub_21751159C()
{
  if (qword_280BE23C0 != -1)
  {
    OUTLINED_FUNCTION_5_53(&qword_280BE23C0);
  }

  xmmword_280BE6200 = xmmword_280BE23C8;
  xmmword_280BE6210 = xmmword_280BE23D8;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.radioShow.getter()
{
  if (qword_280BE61F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE6200);

  return sub_217751DE8();
}

unint64_t sub_217511670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28D60;
  if (!qword_27CB28D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28D60);
  }

  return result;
}

uint64_t Artwork.Color.hexadecimalRepresentation.getter()
{
  v1 = *(v0 + 24);
  sub_217751DE8();
  return v1;
}

uint64_t static Artwork.Color.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_217753058();
  }
}

uint64_t Artwork.Color.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA3580](*&v2);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x21CEA3580](*&v5);
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  MEMORY[0x21CEA3580](*&v6);

  return sub_217751FF8();
}

uint64_t Artwork.Color.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_2177531E8();
  Artwork.Color.hash(into:)(v5);
  return sub_217753238();
}

uint64_t sub_217511898(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_2177531E8();
  Artwork.Color.hash(into:)(v6);
  return sub_217753238();
}

void Artwork.Color.init(from:)(void *a1@<X0>, float64x2_t *a2@<X8>)
{
  v5 = sub_2177528E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_29();
  sub_2177532A8();
  if (v2)
  {
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  OUTLINED_FUNCTION_1_29();
  v9 = sub_217753078();
  v11 = v10;
  v20 = a2;
  sub_217511BD0();
  sub_217751DE8();
  v12 = sub_217511C14(v9, v11);
  (*(v6 + 104))(v8, *MEMORY[0x277CC9E88], v5);
  v21[0] = v12;
  v13 = sub_2177528D8();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  if (v15)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000042, 0x80000002177AF9D0);
    MEMORY[0x21CEA23B0](v9, v11);

    MEMORY[0x21CEA23B0](0x6E49552073612022, 0xEC0000002E343674, v16);
    sub_217752B48();
    swift_allocError();
    sub_217752AF8();

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_6;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    *v21 = vshlq_u64(vdupq_n_s64(v13), xmmword_217772580);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v17.i64[0] = 255;
    v17.i64[1] = 255;
    v18 = v20;
    *v20 = vdivq_f64(vcvtq_f64_u64(vandq_s8(*v21, v17)), vdupq_n_s64(0x406FE00000000000uLL));
    v18[1].f64[0] = v13 / 255.0;
    *&v18[1].f64[1] = v9;
    *&v18[2].f64[0] = v11;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  __break(1u);
}

unint64_t sub_217511BD0()
{
  result = qword_280BE2208;
  if (!qword_280BE2208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE2208);
  }

  return result;
}

id sub_217511C14(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_217751F18();
  v4 = [v2 initWithString_];

  return v4;
}

uint64_t Artwork.Color.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532E8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2177530B8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t Artwork.Color.description.getter()
{
  sub_217752AA8();
  OUTLINED_FUNCTION_4_67();
  sub_2177525E8();
  OUTLINED_FUNCTION_1_67();
  sub_2177525E8();
  OUTLINED_FUNCTION_2_78();
  sub_2177525E8();
  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return 0;
}

uint64_t Artwork.Color.debugDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_217752AA8();
  OUTLINED_FUNCTION_4_67();
  sub_2177525E8();
  OUTLINED_FUNCTION_1_67();
  sub_2177525E8();
  OUTLINED_FUNCTION_2_78();
  sub_2177525E8();
  MEMORY[0x21CEA23B0](0xD00000000000001ELL, 0x80000002177AFA40);
  MEMORY[0x21CEA23B0](v1, v2);
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0;
}

void sub_217511F48()
{
  v0 = *MEMORY[0x277CBF430];
  v1 = CGColorSpaceCreateWithName(v0);

  qword_280C023C0 = v1;
}

CGColorRef_optional __swiftcall Artwork.Color.convertToCGColor()()
{
  v6 = *v0;
  v1 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217758490;
  *(inited + 32) = v6;
  v3 = (inited + 32);
  *(inited + 48) = v1;
  *(inited + 56) = 0x3FF0000000000000;
  if (qword_280BE76A0 != -1)
  {
    OUTLINED_FUNCTION_0_74(&qword_280BE76A0);
  }

  if (qword_280C023C0)
  {
    v4 = CGColorCreate(qword_280C023C0, v3);
  }

  else
  {

    return 0;
  }

  return v4;
}

void CGColorRef.convertToArtworkColor()(uint64_t a1@<X8>)
{
  if (qword_280BE76A0 != -1)
  {
    OUTLINED_FUNCTION_0_74(&qword_280BE76A0);
  }

  if (!qword_280C023C0)
  {
    goto LABEL_11;
  }

  v3 = qword_280C023C0;
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v3, kCGRenderingIntentAbsoluteColorimetric, v1, 0);
  if (!CopyByMatchingToColorSpace)
  {
LABEL_10:

LABEL_11:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v5 = CopyByMatchingToColorSpace;
  v6 = sub_2177527E8();
  if (!v6)
  {
    v7 = v5;
    goto LABEL_9;
  }

  if (*(v6 + 16) < 3uLL)
  {

    v7 = v3;
    v3 = v5;
LABEL_9:

    goto LABEL_10;
  }

  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v10 = *(v6 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28DA0, &qword_217772590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2177643C0;
  v12 = lround(v8 * 255.0);
  v13 = MEMORY[0x277D83B88];
  v14 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  v15 = lround(v9 * 255.0);
  *(v11 + 96) = v13;
  *(v11 + 104) = v14;
  *(v11 + 72) = v15;
  v16 = lround(v10 * 255.0);
  *(v11 + 136) = v13;
  *(v11 + 144) = v14;
  *(v11 + 112) = v16;
  v17 = sub_217751F78();
  v19 = v18;

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v17;
  *(a1 + 32) = v19;
}

unint64_t sub_2175121F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28DA8;
  if (!qword_27CB28DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DA8);
  }

  return result;
}

uint64_t sub_217512248(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_217512288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall CloudOffer.init(buyParams:price:priceFormatted:type:)(MusicKit::CloudOffer *__return_ptr retstr, Swift::String buyParams, Swift::Double price, Swift::String priceFormatted, MusicKit::CloudOffer::Kind type)
{
  v5 = *type.rawValue._countAndFlagsBits;
  v6 = *(type.rawValue._countAndFlagsBits + 8);
  retstr->buyParams.value = buyParams;
  retstr->price.value = price;
  retstr->price.is_nil = 0;
  retstr->priceFormatted.value = priceFormatted;
  retstr->type.value.rawValue._countAndFlagsBits = v5;
  retstr->type.value.rawValue._object = v6;
}

uint64_t CloudOffer.type.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
  return sub_217751DE8();
}

uint64_t sub_2175124CC@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = CloudOffer.Kind.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21751250C@<X0>(uint64_t *a1@<X8>)
{
  result = CloudOffer.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static CloudOffer.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 7);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v16 = *(a2 + 48);
  v15 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v17 = *a1 == *a2 && v3 == v10;
    if (!v17 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v5)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v11)
    {
      v18 = v12;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }

    v19 = v6 == v14 && v7 == v13;
    if (!v19 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (!v9)
  {
    if (!v15)
    {

      return 1;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  if (v8 != v16 || v9 != v15)
  {
    OUTLINED_FUNCTION_93();
    if ((sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_217512670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D61726150797562 && a2 == 0xE900000000000073;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F466563697270 && a2 == 0xEE0064657474616DLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1701869940 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2175127D4(char a1)
{
  result = 0x6D61726150797562;
  switch(a1)
  {
    case 1:
      result = 0x6563697270;
      break;
    case 2:
      result = 0x726F466563697270;
      break;
    case 3:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217512864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217512670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21751288C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217512AFC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175128C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217512AFC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudOffer.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28DB0, &qword_2177726E0);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = *(v1 + 16);
  v34 = *(v1 + 24);
  v10 = *(v1 + 40);
  v30 = *(v1 + 32);
  v31 = v9;
  v11 = *(v1 + 56);
  v28 = *(v1 + 48);
  v29 = v10;
  v27 = v11;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  v16 = __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_217512AFC(v16, v17, v18);
  sub_2177532F8();
  LOBYTE(v32) = 0;
  OUTLINED_FUNCTION_3_66();
  sub_217752EF8();
  if (!v2)
  {
    v20 = v27;
    v21 = v28;
    LOBYTE(v32) = 1;
    OUTLINED_FUNCTION_3_66();
    sub_217752F18();
    LOBYTE(v32) = 2;
    OUTLINED_FUNCTION_3_66();
    v22 = sub_217752EF8();
    v32 = v21;
    v33 = v20;
    v35 = 3;
    sub_217512B50(v22, v23, v24);
    sub_217751DE8();
    sub_217752F38();
  }

  return (*(v5 + 8))(v8, v15, v19);
}

unint64_t sub_217512AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28DB8;
  if (!qword_27CB28DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28DB8);
  }

  return result;
}