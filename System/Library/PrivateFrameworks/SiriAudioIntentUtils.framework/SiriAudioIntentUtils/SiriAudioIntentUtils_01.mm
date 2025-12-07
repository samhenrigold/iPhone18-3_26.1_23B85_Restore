uint64_t sub_2661FF754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679D0, "\n+");
  result = sub_266213070();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_266213170();
      sub_266212FC0();

      result = sub_266213190();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2661FF9E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2661FF358(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_266200148();
        goto LABEL_58;
      }

      sub_2662003C8(v7 + 1);
    }

    v9 = *v3;
    sub_266213170();
    CommonAudio.Attribute.rawValue.getter();
    sub_266212FC0();

    result = sub_266213190();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xEA00000000007473;
        v13 = 0x697472416D6F7266;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v12 = 0xE800000000000000;
            v13 = 0x676E6F536D6F7266;
            break;
          case 2:
            v13 = 0x75626C416D6F7266;
            v12 = 0xE90000000000006DLL;
            break;
          case 3:
            v12 = 0xE800000000000000;
            v13 = 0x7478654E79616C70;
            break;
          case 4:
            v12 = 0xE700000000000000;
            v13 = 0x776F4E79616C70;
            break;
          case 5:
            v12 = 0xE800000000000000;
            v13 = 0x7473614C79616C70;
            break;
          case 6:
            v12 = 0xE800000000000000;
            v13 = 0x7974696E69666661;
            break;
          case 7:
            v13 = 0x6E656D6D6F636572;
            v12 = 0xEB00000000646564;
            break;
          case 8:
            v12 = 0xE900000000000079;
            v13 = 0x7265766F63736964;
            break;
          case 9:
            v13 = 0xD000000000000018;
            v12 = 0x8000000266214B40;
            break;
          case 0xA:
            v12 = 0xE400000000000000;
            v13 = 1954047342;
            break;
          case 0xB:
            v12 = 0xE500000000000000;
            v13 = 0x64656D616ELL;
            break;
          case 0xC:
            v12 = 0xE800000000000000;
            v13 = 0x73756F6976657270;
            break;
          case 0xD:
            v13 = 0x44657361656C6572;
            v12 = 0xEB00000000657461;
            break;
          case 0xE:
            v12 = 0xE800000000000000;
            v13 = 0x6E6F697461727564;
            break;
          default:
            break;
        }

        v14 = 0x697472416D6F7266;
        v15 = 0xEA00000000007473;
        switch(v6)
        {
          case 1:
            v15 = 0xE800000000000000;
            if (v13 == 0x676E6F536D6F7266)
            {
              goto LABEL_52;
            }

            goto LABEL_53;
          case 2:
            v15 = 0xE90000000000006DLL;
            if (v13 != 0x75626C416D6F7266)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 3:
            v15 = 0xE800000000000000;
            if (v13 != 0x7478654E79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 4:
            v15 = 0xE700000000000000;
            if (v13 != 0x776F4E79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 5:
            v15 = 0xE800000000000000;
            if (v13 != 0x7473614C79616C70)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 6:
            v15 = 0xE800000000000000;
            if (v13 != 0x7974696E69666661)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 7:
            v16 = 0x6E656D6D6F636572;
            v17 = 6579556;
            goto LABEL_46;
          case 8:
            v15 = 0xE900000000000079;
            if (v13 != 0x7265766F63736964)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 9:
            v15 = 0x8000000266214B40;
            if (v13 != 0xD000000000000018)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 10:
            v15 = 0xE400000000000000;
            v14 = 1954047342;
            goto LABEL_51;
          case 11:
            v15 = 0xE500000000000000;
            if (v13 != 0x64656D616ELL)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 12:
            v15 = 0xE800000000000000;
            if (v13 != 0x73756F6976657270)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 13:
            v16 = 0x44657361656C6572;
            v17 = 6648929;
LABEL_46:
            v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v13 != v16)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          case 14:
            v15 = 0xE800000000000000;
            if (v13 != 0x6E6F697461727564)
            {
              goto LABEL_53;
            }

            goto LABEL_52;
          default:
LABEL_51:
            if (v13 != v14)
            {
              goto LABEL_53;
            }

LABEL_52:
            if (v12 == v15)
            {
              goto LABEL_61;
            }

LABEL_53:
            v18 = sub_266213140();

            if (v18)
            {
              goto LABEL_62;
            }

            a2 = (a2 + 1) & v11;
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

LABEL_58:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_61:

LABEL_62:
    result = sub_266213160();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }

  return result;
}

uint64_t sub_2661FFF30(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_2661FF754(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_266200288();
      goto LABEL_25;
    }

    sub_266200794(v6 + 1);
  }

  v8 = 0x664F65726F6DLL;
  v9 = *v3;
  sub_266213170();
  if (v5)
  {
    v8 = 0x6E65726566666964;
    v10 = 0xED00006E61685474;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  sub_266212FC0();

  result = sub_266213190();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2) ? 0x6E65726566666964 : 0x664F65726F6DLL;
      v14 = *(*(v9 + 48) + a2) ? 0xED00006E61685474 : 0xE600000000000000;
      if (v13 == v8 && v14 == v10)
      {
        goto LABEL_28;
      }

      v16 = sub_266213140();

      if (v16)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v22 & 1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = sub_266213160();
  __break(1u);
  return result;
}

void *sub_266200148()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679F8, &qword_2662139C8);
  v2 = *v0;
  v3 = sub_266213060();
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

void *sub_266200288()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679D0, "\n+");
  v2 = *v0;
  v3 = sub_266213060();
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

uint64_t sub_2662003C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679F8, &qword_2662139C8);
  result = sub_266213070();
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
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      sub_266213170();
      sub_266212FC0();

      result = sub_266213190();
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
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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

  return result;
}

uint64_t sub_266200794(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679D0, "\n+");
  result = sub_266213070();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_266213170();
      sub_266212FC0();

      result = sub_266213190();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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

  return result;
}

uint64_t sub_2662009F8(uint64_t a1)
{
  v2 = sub_266212B20();
  v3 = *(v2 - 8);
  v103 = v2;
  v104 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v105 = v86 - v7;
  v101 = sub_266212D60();
  v8 = *(v101 - 1);
  MEMORY[0x28223BE20](v101);
  v87 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v10 = MEMORY[0x28223BE20](v99);
  v95 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v94 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v92 = v86 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v93 = v86 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v86 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v86 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v86 - v27;
  v100 = a1;
  v29 = sub_266212C30();
  if (v30)
  {
    v31 = v29;
    v32 = v30;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    v96 = v33 != 0;
  }

  else
  {
    v96 = 0;
  }

  v34 = sub_266212C00();
  v102 = v6;
  v97 = v23;
  if (v34)
  {
    sub_266212D50();
  }

  else
  {
    (*(v8 + 56))(v28, 1, 1, v101);
  }

  v35 = *MEMORY[0x277D5EE18];
  v36 = v101;
  v89 = *(v8 + 104);
  v90 = v8 + 104;
  v89(v26, v35, v101);
  v88 = *(v8 + 56);
  v88(v26, 0, 1, v36);
  v37 = *(v99 + 48);
  sub_2662045F8(v28, v13, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v26, &v13[v37], &qword_2800679B0, &qword_266213550);
  v98 = v8;
  v38 = *(v8 + 48);
  v39 = v38(v13, 1, v36);
  v91 = v38;
  if (v39 == 1)
  {
    sub_2661EFBB8(v26, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v28, &qword_2800679B0, &qword_266213550);
    if (v38(&v13[v37], 1, v101) == 1)
    {
      v40 = v13;
LABEL_23:
      sub_2661EFBB8(v40, &qword_2800679B0, &qword_266213550);
LABEL_24:
      LODWORD(v99) = 1;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v41 = v97;
  sub_2662045F8(v13, v97, &qword_2800679B0, &qword_266213550);
  if (v38(&v13[v37], 1, v101) == 1)
  {
    sub_2661EFBB8(v26, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v28, &qword_2800679B0, &qword_266213550);
    (*(v98 + 8))(v41, v101);
LABEL_14:
    sub_2661EFBB8(v13, &qword_2800679E8, &qword_2662139C0);
    goto LABEL_15;
  }

  v46 = v98;
  v47 = *(v98 + 32);
  v86[1] = v8 + 56;
  v48 = v87;
  v49 = v101;
  v47(v87, &v13[v37], v101);
  sub_2662045A0();
  v50 = sub_266212F90();
  v51 = v49;
  v52 = *(v46 + 8);
  v52(v48, v51);
  sub_2661EFBB8(v26, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v28, &qword_2800679B0, &qword_266213550);
  v52(v97, v51);
  sub_2661EFBB8(v13, &qword_2800679B0, &qword_266213550);
  if (v50)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (sub_266212C00())
  {
    v42 = v93;
    sub_266212D50();

    v43 = v95;
    v44 = v92;
    v45 = v88;
  }

  else
  {
    v42 = v93;
    v45 = v88;
    v88(v93, 1, 1, v101);
    v43 = v95;
    v44 = v92;
  }

  v53 = v101;
  v89(v44, *MEMORY[0x277D5ED50], v101);
  v45(v44, 0, 1, v53);
  v54 = *(v99 + 48);
  sub_2662045F8(v42, v43, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v44, v43 + v54, &qword_2800679B0, &qword_266213550);
  v55 = v91;
  if (v91(v43, 1, v53) == 1)
  {
    sub_2661EFBB8(v44, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v42, &qword_2800679B0, &qword_266213550);
    if (v55(v43 + v54, 1, v101) == 1)
    {
      v40 = v43;
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  sub_2662045F8(v43, v94, &qword_2800679B0, &qword_266213550);
  if (v55(v43 + v54, 1, v101) == 1)
  {
    sub_2661EFBB8(v44, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v42, &qword_2800679B0, &qword_266213550);
    (*(v98 + 8))(v94, v101);
LABEL_27:
    sub_2661EFBB8(v43, &qword_2800679E8, &qword_2662139C0);
    LODWORD(v99) = 0;
    goto LABEL_29;
  }

  v56 = v98;
  v57 = v94;
  v58 = v87;
  v59 = v101;
  (*(v98 + 32))(v87, v43 + v54, v101);
  sub_2662045A0();
  LODWORD(v99) = sub_266212F90();
  v60 = *(v56 + 8);
  v60(v58, v59);
  sub_2661EFBB8(v44, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v42, &qword_2800679B0, &qword_266213550);
  v60(v57, v59);
  sub_2661EFBB8(v43, &qword_2800679B0, &qword_266213550);
LABEL_29:
  result = sub_266212AC0();
  v62 = result;
  v63 = *(result + 16);
  if (v63)
  {
    v64 = 0;
    v65 = v103;
    v66 = result + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v101 = "media_controls";
    v67 = (v104 + 8);
    while (1)
    {
      if (v64 >= *(v62 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      (*(v104 + 16))(v105, v66 + *(v104 + 72) * v64, v65);
      v68 = sub_266212B10();
      if (!v69)
      {
        break;
      }

      if (v68 == 0x7473696C79616C70 && v69 == 0xED0000656C746954)
      {
      }

      else
      {
        v70 = sub_266213140();

        if ((v70 & 1) == 0)
        {
          break;
        }
      }

      sub_266212AD0();
      v71 = sub_266212FB0();
      v73 = v72;

      if (v71 == sub_266212FB0() && v73 == v74)
      {

        (*v67)(v105, v103);
LABEL_45:
        LODWORD(v105) = 0;
        goto LABEL_46;
      }

      v75 = sub_266213140();

      v65 = v103;
      result = (*v67)(v105, v103);
      if (v75)
      {
        goto LABEL_45;
      }

LABEL_32:
      if (v63 == ++v64)
      {
        goto LABEL_43;
      }
    }

    v65 = v103;
    result = (*v67)(v105, v103);
    goto LABEL_32;
  }

LABEL_43:
  LODWORD(v105) = 1;
LABEL_46:

  result = sub_266212AC0();
  v76 = result;
  v77 = *(result + 16);
  v78 = v103;
  if (v77)
  {
    v79 = 0;
    v80 = result + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v81 = (v104 + 8);
    while (v79 < *(v76 + 16))
    {
      v82 = v102;
      (*(v104 + 16))(v102, v80 + *(v104 + 72) * v79, v78);
      v83 = sub_266212B10();
      if (v84)
      {
        if (v83 == 0xD000000000000010 && v84 == 0x80000002662149D0)
        {

          (*v81)(v102, v103);
LABEL_58:

          return 0;
        }

        v85 = sub_266213140();

        v78 = v103;
        result = (*v81)(v102, v103);
        if (v85)
        {
          goto LABEL_58;
        }
      }

      else
      {
        result = (*v81)(v82, v78);
      }

      if (v77 == ++v79)
      {
        goto LABEL_56;
      }
    }

LABEL_61:
    __break(1u);
  }

  else
  {
LABEL_56:

    return v96 & v99 & v105;
  }

  return result;
}

uint64_t sub_266201608(uint64_t a1)
{
  v2 = sub_266212B20();
  v3 = *(v2 - 8);
  v108 = v2;
  v109 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v89[-v7];
  v106 = sub_266212D60();
  v9 = *(v106 - 1);
  MEMORY[0x28223BE20](v106);
  v92 = &v89[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  v11 = MEMORY[0x28223BE20](v104);
  v99 = &v89[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v89[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v98 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v101 = &v89[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v89[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v89[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v89[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v89[-v28];
  v105 = a1;
  v30 = sub_266212C30();
  if (v31)
  {
    v32 = v30;
    v33 = v31;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v35 = v34 == 0;
  }

  else
  {
    v35 = 1;
  }

  v103 = v35;
  v36 = sub_266212C00();
  v107 = v6;
  v100 = v24;
  if (v36)
  {
    sub_266212D50();
  }

  else
  {
    (*(v9 + 56))(v29, 1, 1, v106);
  }

  v37 = *MEMORY[0x277D5EE18];
  v38 = v106;
  v94 = *(v9 + 104);
  v95 = v9 + 104;
  v94(v27, v37, v106);
  v93 = *(v9 + 56);
  v93(v27, 0, 1, v38);
  v39 = *(v104 + 48);
  sub_2662045F8(v29, v14, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v27, &v14[v39], &qword_2800679B0, &qword_266213550);
  v102 = v9;
  v40 = *(v9 + 48);
  v41 = v40(v14, 1, v38);
  v96 = v40;
  if (v41 == 1)
  {
    sub_2661EFBB8(v27, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
    if (v40(&v14[v39], 1, v106) == 1)
    {
      v42 = v14;
LABEL_23:
      sub_2661EFBB8(v42, &qword_2800679B0, &qword_266213550);
LABEL_24:
      LODWORD(v104) = 0;
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  v43 = v100;
  sub_2662045F8(v14, v100, &qword_2800679B0, &qword_266213550);
  if (v40(&v14[v39], 1, v106) == 1)
  {
    sub_2661EFBB8(v27, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
    (*(v102 + 8))(v43, v106);
LABEL_14:
    sub_2661EFBB8(v14, &qword_2800679E8, &qword_2662139C0);
    goto LABEL_15;
  }

  v48 = v102;
  v49 = *(v102 + 32);
  v91 = v9 + 56;
  v50 = v92;
  v51 = v106;
  v49(v92, &v14[v39], v106);
  sub_2662045A0();
  v90 = sub_266212F90();
  v52 = v51;
  v53 = *(v48 + 8);
  v53(v50, v52);
  sub_2661EFBB8(v27, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
  v53(v100, v52);
  sub_2661EFBB8(v14, &qword_2800679B0, &qword_266213550);
  if (v90)
  {
    goto LABEL_24;
  }

LABEL_15:
  if (sub_266212C00())
  {
    v44 = v97;
    sub_266212D50();

    v45 = v99;
    v46 = v101;
    v47 = v93;
  }

  else
  {
    v44 = v97;
    v47 = v93;
    v93(v97, 1, 1, v106);
    v45 = v99;
    v46 = v101;
  }

  v54 = v106;
  v94(v46, *MEMORY[0x277D5ED50], v106);
  v47(v46, 0, 1, v54);
  v55 = *(v104 + 48);
  sub_2662045F8(v44, v45, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v46, v45 + v55, &qword_2800679B0, &qword_266213550);
  v56 = v96;
  if (v96(v45, 1, v54) == 1)
  {
    sub_2661EFBB8(v46, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v44, &qword_2800679B0, &qword_266213550);
    if (v56(v45 + v55, 1, v106) == 1)
    {
      v42 = v45;
      goto LABEL_23;
    }
  }

  else
  {
    sub_2662045F8(v45, v98, &qword_2800679B0, &qword_266213550);
    if (v56(v45 + v55, 1, v106) != 1)
    {
      v58 = v102;
      v59 = v98;
      v60 = v92;
      v61 = v106;
      (*(v102 + 32))(v92, v45 + v55, v106);
      sub_2662045A0();
      v62 = sub_266212F90();
      v63 = *(v58 + 8);
      v63(v60, v61);
      sub_2661EFBB8(v101, &qword_2800679B0, &qword_266213550);
      sub_2661EFBB8(v44, &qword_2800679B0, &qword_266213550);
      v63(v59, v61);
      sub_2661EFBB8(v45, &qword_2800679B0, &qword_266213550);
      v57 = v62 ^ 1;
      goto LABEL_29;
    }

    sub_2661EFBB8(v46, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v44, &qword_2800679B0, &qword_266213550);
    (*(v102 + 8))(v98, v106);
  }

  sub_2661EFBB8(v45, &qword_2800679E8, &qword_2662139C0);
  v57 = 1;
LABEL_29:
  LODWORD(v104) = v57;
LABEL_30:
  result = sub_266212AC0();
  v65 = result;
  v66 = *(result + 16);
  if (v66)
  {
    v67 = 0;
    v68 = v108;
    v69 = result + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v106 = "media_controls";
    v70 = (v109 + 8);
    while (1)
    {
      if (v67 >= *(v65 + 16))
      {
        __break(1u);
        goto LABEL_64;
      }

      (*(v109 + 16))(v8, v69 + *(v109 + 72) * v67, v68);
      v71 = sub_266212B10();
      if (!v72)
      {
        break;
      }

      if (v71 == 0x7473696C79616C70 && v72 == 0xED0000656C746954)
      {
      }

      else
      {
        v73 = sub_266213140();

        if ((v73 & 1) == 0)
        {
          break;
        }
      }

      sub_266212AD0();
      v74 = sub_266212FB0();
      v76 = v75;

      if (v74 == sub_266212FB0() && v76 == v77)
      {

        (*v70)(v8, v108);
LABEL_46:
        LODWORD(v106) = 0;
        goto LABEL_47;
      }

      v78 = sub_266213140();

      v68 = v108;
      result = (*v70)(v8, v108);
      if (v78)
      {
        goto LABEL_46;
      }

LABEL_33:
      if (v66 == ++v67)
      {
        goto LABEL_44;
      }
    }

    v68 = v108;
    result = (*v70)(v8, v108);
    goto LABEL_33;
  }

LABEL_44:
  LODWORD(v106) = 1;
LABEL_47:

  result = sub_266212AC0();
  v79 = result;
  v80 = *(result + 16);
  v81 = v108;
  if (v80)
  {
    v82 = 0;
    v83 = result + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v84 = (v109 + 8);
    while (v82 < *(v79 + 16))
    {
      v85 = v107;
      (*(v109 + 16))(v107, v83 + *(v109 + 72) * v82, v81);
      v86 = sub_266212B10();
      if (v87)
      {
        if (v86 == 0xD000000000000010 && v87 == 0x80000002662149D0)
        {

          (*v84)(v107, v108);
LABEL_60:

          return 0;
        }

        v88 = sub_266213140();

        v81 = v108;
        result = (*v84)(v107, v108);
        if (v88)
        {
          goto LABEL_60;
        }
      }

      else
      {
        result = (*v84)(v85, v81);
      }

      if (v80 == ++v82)
      {
        goto LABEL_57;
      }
    }

LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_57:

    return ((v103 | v104 | v106) & 1) == 0;
  }

  return result;
}

uint64_t sub_266202240(uint64_t a1)
{
  v2 = sub_266212D60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  MEMORY[0x28223BE20](v54);
  v6 = &v48 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v57 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v56 = &v48 - v12;
  v13 = sub_266212B20();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_266212C30();
  if (v18)
  {
    v19 = v17;
    v20 = v18;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  v55 = a1;
  result = sub_266212AC0();
  v24 = result;
  v61 = *(result + 16);
  if (!v61)
  {

LABEL_22:
    v37 = v56;
    v36 = v57;
    if (!v22)
    {
      LODWORD(result) = 1;
      goto LABEL_26;
    }

    return 0;
  }

  v49 = v22;
  v50 = v3;
  v51 = v6;
  v52 = v2;
  v25 = 0;
  v26 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v59 = result;
  v60 = v14 + 16;
  v58 = "media_controls";
  v27 = (v14 + 8);
  while (1)
  {
    if (v25 >= *(v24 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v14 + 16))(v16, v26 + *(v14 + 72) * v25, v13);
    v28 = sub_266212B10();
    if (!v29)
    {
LABEL_8:
      result = (*v27)(v16, v13);
      goto LABEL_9;
    }

    if (v28 == 0x5474736163646F70 && v29 == 0xEC000000656C7469)
    {
    }

    else
    {
      v30 = sub_266213140();

      if ((v30 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_266212AD0();
    v31 = sub_266212FB0();
    v33 = v32;

    if (v31 == sub_266212FB0() && v33 == v34)
    {
      break;
    }

    v35 = sub_266213140();

    result = (*v27)(v16, v13);
    v24 = v59;
    if (v35)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (v61 == ++v25)
    {

      v6 = v51;
      v2 = v52;
      v3 = v50;
      LOBYTE(v22) = v49;
      goto LABEL_22;
    }
  }

  (*v27)(v16, v13);
LABEL_25:

  result = 0;
  v6 = v51;
  v2 = v52;
  v3 = v50;
  v37 = v56;
  v36 = v57;
  if (v49)
  {
    return result;
  }

LABEL_26:
  LODWORD(v61) = result;
  if (sub_266212C00())
  {
    sub_266212D50();
  }

  else
  {
    (*(v3 + 56))(v37, 1, 1, v2);
  }

  (*(v3 + 104))(v36, *MEMORY[0x277D5EE08], v2);
  (*(v3 + 56))(v36, 0, 1, v2);
  v38 = *(v54 + 48);
  sub_2662045F8(v37, v6, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v36, &v6[v38], &qword_2800679B0, &qword_266213550);
  v39 = v3;
  v40 = *(v3 + 48);
  if (v40(v6, 1, v2) == 1)
  {
    sub_2661EFBB8(v36, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v37, &qword_2800679B0, &qword_266213550);
    if (v40(&v6[v38], 1, v2) == 1)
    {
      sub_2661EFBB8(v6, &qword_2800679B0, &qword_266213550);
      return v61;
    }

LABEL_34:
    sub_2661EFBB8(v6, &qword_2800679E8, &qword_2662139C0);
    return 0;
  }

  v41 = v53;
  sub_2662045F8(v6, v53, &qword_2800679B0, &qword_266213550);
  if (v40(&v6[v38], 1, v2) == 1)
  {
    sub_2661EFBB8(v57, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v37, &qword_2800679B0, &qword_266213550);
    (*(v39 + 8))(v41, v2);
    goto LABEL_34;
  }

  v42 = v39;
  v43 = &v6[v38];
  v44 = v48;
  (*(v39 + 32))(v48, v43, v2);
  sub_2662045A0();
  v45 = v41;
  v46 = sub_266212F90();
  v47 = *(v42 + 8);
  v47(v44, v2);
  sub_2661EFBB8(v57, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v37, &qword_2800679B0, &qword_266213550);
  v47(v45, v2);
  sub_2661EFBB8(v6, &qword_2800679B0, &qword_266213550);
  if (v46)
  {
    return v61;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2662029B4(uint64_t a1)
{
  v2 = sub_266212D60();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  MEMORY[0x28223BE20](v56);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = sub_266212B20();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v19 = sub_266212C30();
  v57 = v12;
  v58 = v14;
  if (v20)
  {
    v21 = v19;
    v22 = v20;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  result = sub_266212AC0();
  v26 = result;
  v63 = *(result + 16);
  if (!v63)
  {

    v38 = v58;
    if (!v24)
    {
LABEL_23:
      v39 = 0;
      goto LABEL_27;
    }

    return 0;
  }

  v51 = v24;
  v52 = v3;
  v53 = v6;
  v54 = v2;
  v27 = 0;
  v28 = result + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v61 = result;
  v62 = v16 + 16;
  v60 = "media_controls";
  v29 = (v16 + 8);
  while (1)
  {
    if (v27 >= *(v26 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v16 + 16))(v18, v28 + *(v16 + 72) * v27, v15);
    v30 = sub_266212B10();
    if (!v31)
    {
LABEL_8:
      result = (*v29)(v18, v15);
      goto LABEL_9;
    }

    if (v30 == 0x5474736163646F70 && v31 == 0xEC000000656C7469)
    {
    }

    else
    {
      v32 = sub_266213140();

      if ((v32 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_266212AD0();
    v33 = sub_266212FB0();
    v35 = v34;

    if (v33 == sub_266212FB0() && v35 == v36)
    {
      break;
    }

    v37 = sub_266213140();

    result = (*v29)(v18, v15);
    v26 = v61;
    if (v37)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (v63 == ++v27)
    {

      v6 = v53;
      v2 = v54;
      v3 = v52;
      v38 = v58;
      if (v51)
      {
        return 0;
      }

      goto LABEL_23;
    }
  }

  (*v29)(v18, v15);
LABEL_25:

  v6 = v53;
  v2 = v54;
  v3 = v52;
  v38 = v58;
  if (v51)
  {
    return 0;
  }

  v39 = 1;
LABEL_27:
  v40 = sub_266212C00();
  LODWORD(v63) = v39;
  if (v40)
  {
    sub_266212D50();
  }

  else
  {
    (*(v3 + 56))(v38, 1, 1, v2);
  }

  v41 = v57;
  (*(v3 + 104))(v57, *MEMORY[0x277D5EE08], v2);
  (*(v3 + 56))(v41, 0, 1, v2);
  v42 = *(v56 + 48);
  sub_2662045F8(v38, v6, &qword_2800679B0, &qword_266213550);
  sub_2662045F8(v41, &v6[v42], &qword_2800679B0, &qword_266213550);
  v43 = *(v3 + 48);
  if (v43(v6, 1, v2) == 1)
  {
    sub_2661EFBB8(v41, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v38, &qword_2800679B0, &qword_266213550);
    if (v43(&v6[v42], 1, v2) == 1)
    {
      sub_2661EFBB8(v6, &qword_2800679B0, &qword_266213550);
      return v63;
    }

LABEL_35:
    sub_2661EFBB8(v6, &qword_2800679E8, &qword_2662139C0);
    return 0;
  }

  v44 = v55;
  sub_2662045F8(v6, v55, &qword_2800679B0, &qword_266213550);
  if (v43(&v6[v42], 1, v2) == 1)
  {
    sub_2661EFBB8(v57, &qword_2800679B0, &qword_266213550);
    sub_2661EFBB8(v38, &qword_2800679B0, &qword_266213550);
    (*(v3 + 8))(v44, v2);
    goto LABEL_35;
  }

  v45 = &v6[v42];
  v46 = v50;
  (*(v3 + 32))(v50, v45, v2);
  sub_2662045A0();
  v47 = v44;
  v48 = sub_266212F90();
  v49 = *(v3 + 8);
  v49(v46, v2);
  sub_2661EFBB8(v57, &qword_2800679B0, &qword_266213550);
  sub_2661EFBB8(v38, &qword_2800679B0, &qword_266213550);
  v49(v47, v2);
  sub_2661EFBB8(v6, &qword_2800679B0, &qword_266213550);
  result = v63;
  if ((v48 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_26620312C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_266203140(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_266203154(uint64_t a1, int a2)
{
  v44 = a2;
  v3 = sub_266212B20();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = sub_266212D60();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v48 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v46 = a1;
  result = sub_2661F16A0();
  if (result)
  {
    v47 = result;
    v24 = sub_266212C00();
    v41 = v4;
    v42 = v3;
    v40 = v8;
    if (v24)
    {
      sub_266212D50();
    }

    else
    {
      (*(v10 + 56))(v22, 1, 1, v9);
    }

    (*(v10 + 104))(v20, *MEMORY[0x277D5ED80], v9);
    (*(v10 + 56))(v20, 0, 1, v9);
    v25 = *(v12 + 48);
    sub_2662045F8(v22, v14, &qword_2800679B0, &qword_266213550);
    sub_2662045F8(v20, &v14[v25], &qword_2800679B0, &qword_266213550);
    v26 = *(v10 + 48);
    if (v26(v14, 1, v9) == 1)
    {
      sub_2661EFBB8(v20, &qword_2800679B0, &qword_266213550);
      sub_2661EFBB8(v22, &qword_2800679B0, &qword_266213550);
      if (v26(&v14[v25], 1, v9) == 1)
      {
        sub_2661EFBB8(v14, &qword_2800679B0, &qword_266213550);
        goto LABEL_12;
      }
    }

    else
    {
      v27 = v48;
      sub_2662045F8(v14, v48, &qword_2800679B0, &qword_266213550);
      if (v26(&v14[v25], 1, v9) != 1)
      {
        v28 = v45;
        (*(v10 + 32))(v45, &v14[v25], v9);
        sub_2662045A0();
        v29 = v27;
        v30 = sub_266212F90();
        v31 = *(v10 + 8);
        v31(v28, v9);
        sub_2661EFBB8(v20, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v22, &qword_2800679B0, &qword_266213550);
        v31(v29, v9);
        sub_2661EFBB8(v14, &qword_2800679B0, &qword_266213550);
        if (v30)
        {
LABEL_12:
          if (sub_2661F1E24())
          {
            v49 = v44;
            v32 = sub_266212FB0();
            v34 = UsoEntity_common_MediaItem.identifiers(forNamespace:appBundleId:)(&v49, v32, v33);

            if (*(v34 + 16))
            {
              v36 = v41;
              v35 = v42;
              v37 = v43;
              (*(v41 + 16))(v43, v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v42);

              v38 = v40;
              (*(v36 + 32))(v40, v37, v35);
              v39 = sub_266212B00();

              (*(v36 + 8))(v38, v35);
              return v39;
            }
          }
        }

LABEL_16:

        return 0;
      }

      sub_2661EFBB8(v20, &qword_2800679B0, &qword_266213550);
      sub_2661EFBB8(v22, &qword_2800679B0, &qword_266213550);
      (*(v10 + 8))(v27, v9);
    }

    sub_2661EFBB8(v14, &qword_2800679E8, &qword_2662139C0);
    goto LABEL_16;
  }

  return result;
}

char *sub_26620378C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_2661F1EF8();
  v4 = sub_26620A330(v3, MEMORY[0x277D84F90], a2, 0);

  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_266213110();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26677E9B0](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v9 = sub_266212C30();
    v11 = v10;

    ++v6;
    if (v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_266209808(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_266209808((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v14 = &v7[16 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
      v6 = v8;
    }
  }

  return v7;
}

uint64_t sub_26620392C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_266203940()
{
  result = qword_2800679B8;
  if (!qword_2800679B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800679B8);
  }

  return result;
}

unint64_t sub_266203998()
{
  result = qword_2800679C0;
  if (!qword_2800679C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800679C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioUsoIntent.UsoNamespace(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioUsoIntent.UsoNamespace(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioUsoIntent.IterationOptions(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AudioUsoIntent.IterationOptions(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2662044C4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

_BYTE *sub_2662044D4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_2662045A0()
{
  result = qword_2800679F0;
  if (!qword_2800679F0)
  {
    sub_266212D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800679F0);
  }

  return result;
}

uint64_t sub_2662045F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_266204670()
{
  sub_2662046D4();
  result = sub_266213050();
  qword_280069480 = result;
  return result;
}

unint64_t sub_2662046D4()
{
  result = qword_280067A10;
  if (!qword_280067A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280067A10);
  }

  return result;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasNonEmptyName()()
{
  v0 = sub_266212C30();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = v1;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

unint64_t Array<A>.findAll(options:with:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, unint64_t a4)
{

  v8 = sub_26620A330(a4, a1, a2, a3);

  return v8;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isResolvedReference()()
{
  v1 = sub_266212B20();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - v5;
  v7 = sub_266212AC0();
  v8 = v7;
  if (*(v7 + 16))
  {
    v9 = *(v7 + 16);
    v27[1] = v0;
    v10 = 0;
    v31 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v29 = 0x8000000266214D80;
    v30 = 0x80000002662149A0;
    v11 = (v2 + 8);
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      (*(v2 + 16))(v6, v31 + *(v2 + 72) * v10, v1);
      v12 = sub_266212B10();
      if (!v13)
      {
        break;
      }

      if (v12 == 0xD000000000000019 && v13 == v30)
      {
      }

      else
      {
        v14 = sub_266213140();

        if ((v14 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212AD0() == 0xD00000000000001CLL && v29 == v15)
      {

        (*v11)(v6, v1);
LABEL_18:

        LODWORD(v30) = 1;
        goto LABEL_19;
      }

      v16 = sub_266213140();

      LOBYTE(v7) = (*v11)(v6, v1);
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_4:
      if (v9 == ++v10)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v7) = (*v11)(v6, v1);
    goto LABEL_4;
  }

LABEL_15:

  LODWORD(v30) = 0;
LABEL_19:
  v7 = sub_266212AC0();
  v17 = v7;
  v18 = *(v7 + 16);
  v19 = v28;
  if (v18)
  {
    v20 = 0;
    v21 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v31 = 0x8000000266214920;
    v22 = (v2 + 8);
    while (v20 < *(v17 + 16))
    {
      (*(v2 + 16))(v19, v21 + *(v2 + 72) * v20, v1);
      v23 = sub_266212B10();
      if (v24)
      {
        if (v23 == 0xD000000000000014 && v24 == v31)
        {

          (*v22)(v28, v1);
LABEL_31:

          if ((v30 & 1) == 0)
          {
            goto LABEL_33;
          }

          LOBYTE(v7) = 1;
          return v7;
        }

        v25 = sub_266213140();

        v19 = v28;
        LOBYTE(v7) = (*v22)(v28, v1);
        if (v25)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LOBYTE(v7) = (*v22)(v19, v1);
      }

      if (v18 == ++v20)
      {
        goto LABEL_29;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_29:

LABEL_33:
    LOBYTE(v7) = 0;
  }

  return v7;
}

uint64_t Array<A>.findFirst(options:with:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, unint64_t a4)
{
  v8 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
LABEL_16:
    v9 = sub_266213110();
  }

  else
  {
    v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v9 != i; ++i)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26677E9B0](i, a4);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (i >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    v11 = UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, a3);

    if (v11)
    {
      return v11;
    }
  }

  return 0;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromArtist()()
{
  v1 = sub_266212D60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  MEMORY[0x28223BE20](v47);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v13;
  v14 = sub_266212B20();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  v18 = sub_266212AC0();
  v19 = v18;
  v51 = *(v18 + 16);
  if (v51)
  {
    v41 = v4;
    v42 = v10;
    v43 = v2;
    v44 = v6;
    v45 = v1;
    v20 = 0;
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v50 = 0x8000000266214900;
    v22 = (v15 + 8);
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        return v18;
      }

      (*(v15 + 16))(v17, v21 + *(v15 + 72) * v20, v14);
      v23 = sub_266212B10();
      if (!v24)
      {
        break;
      }

      if (v23 == 0xD000000000000015 && v24 == v50)
      {
      }

      else
      {
        v25 = sub_266213140();

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212B00() == 0x697472416D6F7266 && v26 == 0xEA00000000007473)
      {

        (*v22)(v17, v14);
LABEL_19:

        if (sub_266212C00())
        {
          v29 = v48;
          sub_266212D50();

          v31 = v44;
          v30 = v45;
          v32 = v43;
        }

        else
        {
          v32 = v43;
          v29 = v48;
          v30 = v45;
          (*(v43 + 56))(v48, 1, 1, v45);
          v31 = v44;
        }

        v33 = v49;
        (*(v32 + 104))(v49, *MEMORY[0x277D5EDC0], v30);
        (*(v32 + 56))(v33, 0, 1, v30);
        v34 = *(v47 + 48);
        sub_2662045F8(v29, v31, &qword_2800679B0, &qword_266213550);
        sub_2662045F8(v33, v31 + v34, &qword_2800679B0, &qword_266213550);
        v35 = *(v32 + 48);
        if (v35(v31, 1, v30) == 1)
        {
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
          if (v35(v31 + v34, 1, v30) == 1)
          {
            sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
            v28 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v36 = v42;
        sub_2662045F8(v31, v42, &qword_2800679B0, &qword_266213550);
        if (v35(v31 + v34, 1, v30) == 1)
        {
          sub_2661EFBB8(v49, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
          (*(v32 + 8))(v36, v30);
LABEL_27:
          sub_2661EFBB8(v31, &qword_2800679E8, &qword_2662139C0);
          goto LABEL_16;
        }

        v37 = v41;
        (*(v32 + 32))(v41, v31 + v34, v30);
        sub_26620A684(&qword_2800679F0, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
        v28 = sub_266212F90();
        v38 = *(v32 + 8);
        v38(v37, v30);
        sub_2661EFBB8(v49, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
        v38(v36, v30);
        sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
        goto LABEL_17;
      }

      v27 = sub_266213140();

      LOBYTE(v18) = (*v22)(v17, v14);
      if (v27)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v51 == ++v20)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v18) = (*v22)(v17, v14);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v28 = 0;
LABEL_17:
  LOBYTE(v18) = v28 & 1;
  return v18;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromSong()()
{
  v1 = sub_266212D60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  MEMORY[0x28223BE20](v47);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v13;
  v14 = sub_266212B20();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  v18 = sub_266212AC0();
  v19 = v18;
  v51 = *(v18 + 16);
  if (v51)
  {
    v41 = v4;
    v42 = v10;
    v43 = v2;
    v44 = v6;
    v45 = v1;
    v20 = 0;
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v50 = 0x8000000266214900;
    v22 = (v15 + 8);
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        return v18;
      }

      (*(v15 + 16))(v17, v21 + *(v15 + 72) * v20, v14);
      v23 = sub_266212B10();
      if (!v24)
      {
        break;
      }

      if (v23 == 0xD000000000000015 && v24 == v50)
      {
      }

      else
      {
        v25 = sub_266213140();

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212B00() == 0x676E6F536D6F7266 && v26 == 0xE800000000000000)
      {

        (*v22)(v17, v14);
LABEL_19:

        if (sub_266212C00())
        {
          v29 = v48;
          sub_266212D50();

          v31 = v44;
          v30 = v45;
          v32 = v43;
        }

        else
        {
          v32 = v43;
          v29 = v48;
          v30 = v45;
          (*(v43 + 56))(v48, 1, 1, v45);
          v31 = v44;
        }

        v33 = v49;
        (*(v32 + 104))(v49, *MEMORY[0x277D5ED90], v30);
        (*(v32 + 56))(v33, 0, 1, v30);
        v34 = *(v47 + 48);
        sub_2662045F8(v29, v31, &qword_2800679B0, &qword_266213550);
        sub_2662045F8(v33, v31 + v34, &qword_2800679B0, &qword_266213550);
        v35 = *(v32 + 48);
        if (v35(v31, 1, v30) == 1)
        {
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
          if (v35(v31 + v34, 1, v30) == 1)
          {
            sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
            v28 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v36 = v42;
        sub_2662045F8(v31, v42, &qword_2800679B0, &qword_266213550);
        if (v35(v31 + v34, 1, v30) == 1)
        {
          sub_2661EFBB8(v49, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
          (*(v32 + 8))(v36, v30);
LABEL_27:
          sub_2661EFBB8(v31, &qword_2800679E8, &qword_2662139C0);
          goto LABEL_16;
        }

        v37 = v41;
        (*(v32 + 32))(v41, v31 + v34, v30);
        sub_26620A684(&qword_2800679F0, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
        v28 = sub_266212F90();
        v38 = *(v32 + 8);
        v38(v37, v30);
        sub_2661EFBB8(v49, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
        v38(v36, v30);
        sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
        goto LABEL_17;
      }

      v27 = sub_266213140();

      LOBYTE(v18) = (*v22)(v17, v14);
      if (v27)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v51 == ++v20)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v18) = (*v22)(v17, v14);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v28 = 0;
LABEL_17:
  LOBYTE(v18) = v28 & 1;
  return v18;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isFromAlbum()()
{
  v1 = sub_266212D60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  MEMORY[0x28223BE20](v47);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v13;
  v14 = sub_266212B20();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  v18 = sub_266212AC0();
  v19 = v18;
  v51 = *(v18 + 16);
  if (v51)
  {
    v41 = v4;
    v42 = v10;
    v43 = v2;
    v44 = v6;
    v45 = v1;
    v20 = 0;
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v50 = 0x8000000266214900;
    v22 = (v15 + 8);
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        return v18;
      }

      (*(v15 + 16))(v17, v21 + *(v15 + 72) * v20, v14);
      v23 = sub_266212B10();
      if (!v24)
      {
        break;
      }

      if (v23 == 0xD000000000000015 && v24 == v50)
      {
      }

      else
      {
        v25 = sub_266213140();

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212B00() == 0x75626C416D6F7266 && v26 == 0xE90000000000006DLL)
      {

        (*v22)(v17, v14);
LABEL_19:

        if (sub_266212C00())
        {
          v29 = v48;
          sub_266212D50();

          v31 = v44;
          v30 = v45;
          v32 = v43;
        }

        else
        {
          v32 = v43;
          v29 = v48;
          v30 = v45;
          (*(v43 + 56))(v48, 1, 1, v45);
          v31 = v44;
        }

        v33 = v49;
        (*(v32 + 104))(v49, *MEMORY[0x277D5ED98], v30);
        (*(v32 + 56))(v33, 0, 1, v30);
        v34 = *(v47 + 48);
        sub_2662045F8(v29, v31, &qword_2800679B0, &qword_266213550);
        sub_2662045F8(v33, v31 + v34, &qword_2800679B0, &qword_266213550);
        v35 = *(v32 + 48);
        if (v35(v31, 1, v30) == 1)
        {
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
          if (v35(v31 + v34, 1, v30) == 1)
          {
            sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
            v28 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v36 = v42;
        sub_2662045F8(v31, v42, &qword_2800679B0, &qword_266213550);
        if (v35(v31 + v34, 1, v30) == 1)
        {
          sub_2661EFBB8(v49, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
          (*(v32 + 8))(v36, v30);
LABEL_27:
          sub_2661EFBB8(v31, &qword_2800679E8, &qword_2662139C0);
          goto LABEL_16;
        }

        v37 = v41;
        (*(v32 + 32))(v41, v31 + v34, v30);
        sub_26620A684(&qword_2800679F0, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
        v28 = sub_266212F90();
        v38 = *(v32 + 8);
        v38(v37, v30);
        sub_2661EFBB8(v49, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
        v38(v36, v30);
        sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
        goto LABEL_17;
      }

      v27 = sub_266213140();

      LOBYTE(v18) = (*v22)(v17, v14);
      if (v27)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v51 == ++v20)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v18) = (*v22)(v17, v14);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v28 = 0;
LABEL_17:
  LOBYTE(v18) = v28 & 1;
  return v18;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isRecommended()()
{
  v0 = sub_266212DA0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A18, &qword_2662139E8);
  MEMORY[0x28223BE20](v40);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679D8, &qword_2662139B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v43 = &v27 - v12;
  if (!sub_266212B80())
  {
    return 0;
  }

  v13 = sub_266212E50();

  if (!v13)
  {
    return 0;
  }

  v14 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    goto LABEL_27;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (1)
    {
      v31 = v8;
      v8 = 0;
      v39 = v13 & 0xC000000000000001;
      v16 = (v1 + 7);
      v37 = *MEMORY[0x277D5EE78];
      v35 = (v1 + 6);
      v36 = (v1 + 13);
      v28 = (v1 + 4);
      v30 = (v1 + 1);
      v1 = &qword_2662139B0;
      v38 = v13;
      v32 = v15;
      v33 = v14;
      v41 = v11;
      v34 = v16;
      while (v39)
      {
        MEMORY[0x26677E9B0](v8, v13);
        v18 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_22:
          __break(1u);
          return 0;
        }

LABEL_12:
        v42 = v18;
        sub_266212B30();
        if (v44)
        {
          sub_266212D90();
        }

        else
        {
          (*v16)(v43, 1, 1, v0);
        }

        (*v36)(v11, v37, v0);
        (*v16)(v11, 0, 1, v0);
        v19 = *(v40 + 48);
        sub_2662045F8(v43, v4, &qword_2800679D8, &qword_2662139B0);
        sub_2662045F8(v11, &v4[v19], &qword_2800679D8, &qword_2662139B0);
        v20 = *v35;
        if ((*v35)(v4, 1, v0) == 1)
        {

          sub_2661EFBB8(v11, &qword_2800679D8, &qword_2662139B0);
          sub_2661EFBB8(v43, &qword_2800679D8, &qword_2662139B0);
          v17 = v20(&v4[v19], 1, v0);
          v13 = v38;
          v16 = v34;
          if (v17 == 1)
          {
            sub_2661EFBB8(v4, &qword_2800679D8, &qword_2662139B0);
LABEL_25:
            v25 = 1;
            goto LABEL_29;
          }

          goto LABEL_7;
        }

        v21 = v31;
        sub_2662045F8(v4, v31, &qword_2800679D8, &qword_2662139B0);
        if (v20(&v4[v19], 1, v0) == 1)
        {

          sub_2661EFBB8(v41, &qword_2800679D8, &qword_2662139B0);
          sub_2661EFBB8(v43, &qword_2800679D8, &qword_2662139B0);
          (*v30)(v21, v0);
          v13 = v38;
          v16 = v34;
LABEL_7:
          sub_2661EFBB8(v4, &qword_280067A18, &qword_2662139E8);
          goto LABEL_8;
        }

        v22 = v29;
        (*v28)(v29, &v4[v19], v0);
        sub_26620A684(&qword_280067A20, MEMORY[0x277D5EEB8], MEMORY[0x277D5EEC0]);
        v23 = sub_266212F90();

        v24 = *v30;
        (*v30)(v22, v0);
        sub_2661EFBB8(v41, &qword_2800679D8, &qword_2662139B0);
        sub_2661EFBB8(v43, &qword_2800679D8, &qword_2662139B0);
        v24(v21, v0);
        sub_2661EFBB8(v4, &qword_2800679D8, &qword_2662139B0);
        v13 = v38;
        v16 = v34;
        if (v23)
        {
          goto LABEL_25;
        }

LABEL_8:
        ++v8;
        v14 = v33;
        v11 = v41;
        if (v42 == v32)
        {
          goto LABEL_28;
        }
      }

      if (v8 < *(v14 + 16))
      {
        break;
      }

      __break(1u);
LABEL_27:
      v15 = sub_266213110();
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    v18 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

LABEL_28:
  v25 = 0;
LABEL_29:

  return v25;
}

uint64_t sub_26620672C(unsigned int *a1)
{
  v2 = sub_266212E40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A28, &qword_2662139F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A30, &qword_2662139F8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  if (sub_266212B80())
  {
    sub_266212E30();
  }

  else
  {
    (*(v3 + 56))(v16, 1, 1, v2);
  }

  (*(v3 + 104))(v14, *a1, v2);
  (*(v3 + 56))(v14, 0, 1, v2);
  v17 = *(v5 + 48);
  sub_2662045F8(v16, v7, &qword_280067A30, &qword_2662139F8);
  sub_2662045F8(v14, &v7[v17], &qword_280067A30, &qword_2662139F8);
  v18 = *(v3 + 48);
  if (v18(v7, 1, v2) != 1)
  {
    sub_2662045F8(v7, v11, &qword_280067A30, &qword_2662139F8);
    if (v18(&v7[v17], 1, v2) != 1)
    {
      v20 = v24;
      (*(v3 + 32))(v24, &v7[v17], v2);
      sub_26620A684(&qword_280067A38, MEMORY[0x277D5F058], MEMORY[0x277D5F060]);
      v19 = sub_266212F90();
      v21 = *(v3 + 8);
      v21(v20, v2);
      sub_2661EFBB8(v14, &qword_280067A30, &qword_2662139F8);
      sub_2661EFBB8(v16, &qword_280067A30, &qword_2662139F8);
      v21(v11, v2);
      sub_2661EFBB8(v7, &qword_280067A30, &qword_2662139F8);
      return v19 & 1;
    }

    sub_2661EFBB8(v14, &qword_280067A30, &qword_2662139F8);
    sub_2661EFBB8(v16, &qword_280067A30, &qword_2662139F8);
    (*(v3 + 8))(v11, v2);
    goto LABEL_9;
  }

  sub_2661EFBB8(v14, &qword_280067A30, &qword_2662139F8);
  sub_2661EFBB8(v16, &qword_280067A30, &qword_2662139F8);
  if (v18(&v7[v17], 1, v2) != 1)
  {
LABEL_9:
    sub_2661EFBB8(v7, &qword_280067A28, &qword_2662139F0);
    v19 = 0;
    return v19 & 1;
  }

  sub_2661EFBB8(v7, &qword_280067A30, &qword_2662139F8);
  v19 = 1;
  return v19 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isAddToUnspecifiedPlaylist()()
{
  v1 = sub_266212D60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E8, &qword_2662139C0);
  MEMORY[0x28223BE20](v46);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v48 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v47 = &v40 - v13;
  v14 = sub_266212B20();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v0;
  v18 = sub_266212AC0();
  v19 = v18;
  v51 = *(v18 + 16);
  if (v51)
  {
    v40 = v4;
    v41 = v10;
    v42 = v2;
    v43 = v6;
    v44 = v1;
    v20 = 0;
    v21 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v49 = 0x8000000266214B40;
    v50 = 0x8000000266214900;
    v22 = (v15 + 8);
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        return v18;
      }

      (*(v15 + 16))(v17, v21 + *(v15 + 72) * v20, v14);
      v23 = sub_266212B10();
      if (!v24)
      {
        break;
      }

      if (v23 == 0xD000000000000015 && v24 == v50)
      {
      }

      else
      {
        v25 = sub_266213140();

        if ((v25 & 1) == 0)
        {
          break;
        }
      }

      if (sub_266212B00() == 0xD000000000000018 && v49 == v26)
      {

        (*v22)(v17, v14);
LABEL_19:

        if (sub_266212C00())
        {
          v29 = v47;
          sub_266212D50();

          v31 = v43;
          v30 = v44;
          v32 = v42;
        }

        else
        {
          v32 = v42;
          v29 = v47;
          v30 = v44;
          (*(v42 + 56))(v47, 1, 1, v44);
          v31 = v43;
        }

        v33 = v48;
        (*(v32 + 104))(v48, *MEMORY[0x277D5EE18], v30);
        (*(v32 + 56))(v33, 0, 1, v30);
        v34 = *(v46 + 48);
        sub_2662045F8(v29, v31, &qword_2800679B0, &qword_266213550);
        sub_2662045F8(v33, v31 + v34, &qword_2800679B0, &qword_266213550);
        v35 = *(v32 + 48);
        if (v35(v31, 1, v30) == 1)
        {
          sub_2661EFBB8(v33, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
          if (v35(v31 + v34, 1, v30) == 1)
          {
            sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
            v28 = 1;
            goto LABEL_17;
          }

          goto LABEL_27;
        }

        v36 = v41;
        sub_2662045F8(v31, v41, &qword_2800679B0, &qword_266213550);
        if (v35(v31 + v34, 1, v30) == 1)
        {
          sub_2661EFBB8(v48, &qword_2800679B0, &qword_266213550);
          sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
          (*(v32 + 8))(v36, v30);
LABEL_27:
          sub_2661EFBB8(v31, &qword_2800679E8, &qword_2662139C0);
          goto LABEL_16;
        }

        v37 = v40;
        (*(v32 + 32))(v40, v31 + v34, v30);
        sub_26620A684(&qword_2800679F0, MEMORY[0x277D5EE30], MEMORY[0x277D5EE40]);
        v28 = sub_266212F90();
        v38 = *(v32 + 8);
        v38(v37, v30);
        sub_2661EFBB8(v48, &qword_2800679B0, &qword_266213550);
        sub_2661EFBB8(v29, &qword_2800679B0, &qword_266213550);
        v38(v36, v30);
        sub_2661EFBB8(v31, &qword_2800679B0, &qword_266213550);
        goto LABEL_17;
      }

      v27 = sub_266213140();

      LOBYTE(v18) = (*v22)(v17, v14);
      if (v27)
      {
        goto LABEL_19;
      }

LABEL_4:
      if (v51 == ++v20)
      {
        goto LABEL_15;
      }
    }

    LOBYTE(v18) = (*v22)(v17, v14);
    goto LABEL_4;
  }

LABEL_15:

LABEL_16:
  v28 = 0;
LABEL_17:
  LOBYTE(v18) = v28 & 1;
  return v18;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasListPosition()()
{
  v0 = sub_266212B50();
  if (v0)
  {
  }

  return v0 != 0;
}

SiriAudioIntentUtils::CommonAudio::Attribute_optional __swiftcall UsoEntity_common_MediaItem.getListPositionAttribute()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A00, &qword_2662139D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = sub_266212B50();
  if (!v8)
  {
    v12 = 15;
LABEL_12:
    *v1 = v12;
    return v8;
  }

  sub_266212CF0();

  v9 = sub_266212D00();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    goto LABEL_3;
  }

  sub_2662045F8(v7, v5, &qword_280067A00, &qword_2662139D0);
  v13 = (*(v10 + 88))(v5, v9);
  if (v13 == *MEMORY[0x277D5EBE8] || v13 == *MEMORY[0x277D5EC68])
  {
    LOBYTE(v8) = sub_2661EFBB8(v7, &qword_280067A00, &qword_2662139D0);
    v12 = 12;
    goto LABEL_12;
  }

  if (v13 == *MEMORY[0x277D5EBF0])
  {
    v11 = 10;
    goto LABEL_4;
  }

  (*(v10 + 8))(v5, v9);
LABEL_3:
  v11 = 15;
LABEL_4:
  *v1 = v11;
  LOBYTE(v8) = sub_2661EFBB8(v7, &qword_280067A00, &qword_2662139D0);
  return v8;
}

uint64_t sub_2662074AC(uint64_t a1, uint64_t a2)
{
  if (!UsoEntity_common_MediaItem.isResolvedReference()())
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v4 = sub_266212BF0();
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
        {
          v8 = 0;
          while ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677E9B0](v8, v5);
            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            sub_266212B30();
            if (v11)
            {
              a2 = sub_2662074AC(a1, v11);

              if (a2)
              {

                return a2;
              }
            }

            else
            {
            }

            ++v8;
            if (v9 == i)
            {
              goto LABEL_25;
            }
          }

          if (v8 >= *(v6 + 16))
          {
            goto LABEL_23;
          }

          v9 = v8 + 1;
          if (!__OFADD__(v8, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return a2;
}

uint64_t sub_26620764C(uint64_t a1, uint64_t a2)
{
  if (sub_266212C40())
  {
  }

  else
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v4 = sub_266212BF0();
      if (v4)
      {
        v5 = v4;
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v4 >> 62)
        {
          goto LABEL_25;
        }

        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
LABEL_26:

          return 0;
        }

LABEL_10:
        v8 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677E9B0](v8, v5);
            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v8 >= *(v6 + 16))
            {
              goto LABEL_24;
            }

            v9 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              v7 = sub_266213110();
              if (!v7)
              {
                goto LABEL_26;
              }

              goto LABEL_10;
            }
          }

          sub_266212B30();
          if (v11)
          {
            a2 = sub_26620764C(a1, v11);

            if (a2)
            {

              return a2;
            }
          }

          else
          {
          }

          ++v8;
          if (v9 == v7)
          {
            goto LABEL_26;
          }
        }
      }
    }

    return 0;
  }

  return a2;
}

uint64_t sub_266207824(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v5 = a2;
  if ((a3(a2) & 1) == 0)
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v7 = sub_266212BF0();
      if (v7)
      {
        v8 = v7;
        v5 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v7 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
        {
          v14 = v5;
          v10 = 0;
          while ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x26677E9B0](v10, v8);
            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            v5 = v11;
            sub_266212B30();
            if (v15)
            {
              v5 = a4(a1);

              if (v5)
              {

                return v5;
              }
            }

            else
            {
            }

            ++v10;
            if (v12 == i)
            {
              goto LABEL_25;
            }
          }

          if (v10 >= *(v14 + 16))
          {
            goto LABEL_23;
          }

          v11 = *(v8 + 8 * v10 + 32);

          v12 = v10 + 1;
          if (!__OFADD__(v10, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return v5;
}

uint64_t sub_2662079B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679C8, "\n+");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  if (!sub_266212B70())
  {
    v8 = sub_266212D80();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
LABEL_5:
    sub_2661EFBB8(v6, &qword_2800679C8, "\n+");
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v9 = sub_266212BF0();
      if (v9)
      {
        v10 = v9;
        v11 = v9 & 0xFFFFFFFFFFFFFF8;
        if (v9 >> 62)
        {
          goto LABEL_26;
        }

        for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
        {
          v13 = 0;
          while ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677E9B0](v13, v10);
            v14 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_24;
            }

LABEL_21:
            sub_266212B30();
            if (v17)
            {
              a2 = sub_2662079B0(a1, v17);

              if (a2)
              {

                return a2;
              }
            }

            else
            {
            }

            ++v13;
            if (v14 == i)
            {
              goto LABEL_27;
            }
          }

          if (v13 >= *(v11 + 16))
          {
            goto LABEL_25;
          }

          v14 = v13 + 1;
          if (!__OFADD__(v13, 1))
          {
            goto LABEL_21;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          ;
        }

LABEL_27:
      }
    }

    return 0;
  }

  sub_266212D70();

  v7 = sub_266212D80();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_5;
  }

  sub_2661EFBB8(v6, &qword_2800679C8, "\n+");

  return a2;
}

uint64_t UsoEntity_common_MediaItem.findFirst(options:with:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  if ((a2(v3) & 1) == 0)
  {
    if ((!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)) && (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16)))
    {
      v7 = sub_266212BF0();
      if (v7)
      {
        v8 = v7;
        v9 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v7 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
        {
          v14 = v9;
          v11 = 0;
          while ((v8 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677E9B0](v11, v8);
            v12 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              goto LABEL_22;
            }

LABEL_19:
            sub_266212B30();
            v9 = v16;
            if (v16)
            {
              v4 = UsoEntity_common_MediaItem.findFirst(options:with:)(a1, a2, a3);

              if (v4)
              {

                return v4;
              }
            }

            else
            {
            }

            ++v11;
            if (v12 == i)
            {
              goto LABEL_25;
            }
          }

          if (v11 >= *(v14 + 16))
          {
            goto LABEL_23;
          }

          v12 = v11 + 1;
          if (!__OFADD__(v11, 1))
          {
            goto LABEL_19;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:
      }
    }

    return 0;
  }

  return v4;
}

uint64_t UsoEntity_common_MediaItem.identifiers(forNamespace:appBundleId:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v39 = sub_266212B20();
  v5 = *(v39 - 8);
  v6 = MEMORY[0x28223BE20](v39);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v38 = *a1;
  result = sub_266212AC0();
  v37 = *(result + 16);
  if (v37)
  {
    v11 = 0;
    v35 = v5 + 16;
    v32 = (v5 + 8);
    v33 = (v5 + 32);
    v12 = MEMORY[0x277D84F90];
    v30 = a3;
    v36 = result;
    while (1)
    {
      if (v11 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v14 = *(v5 + 72);
      (*(v5 + 16))(v9, result + v13 + v14 * v11, v39);
      v15 = sub_266212B10();
      v17 = v16;
      v40 = v38;
      v18 = AudioUsoIntent.UsoNamespace.rawValue.getter();
      if (!v17)
      {
        break;
      }

      if (v15 == v18 && v17 == v19)
      {
      }

      else
      {
        v20 = sub_266213140();

        v21 = 0;
        if ((v20 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (!sub_266212B00() && v22 == 0xE000000000000000)
      {
        break;
      }

      v24 = sub_266213140();

      v21 = v24 ^ 1;
      if (!a3)
      {
LABEL_21:
        if (v21)
        {
          goto LABEL_24;
        }

        goto LABEL_3;
      }

LABEL_16:
      if (v21)
      {
        if (sub_266212AD0() == v31 && v23 == a3)
        {

LABEL_24:
          v26 = *v33;
          (*v33)(v34, v9, v39);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_266209F5C(0, *(v12 + 16) + 1, 1);
            v12 = v41;
          }

          v29 = *(v12 + 16);
          v28 = *(v12 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_266209F5C((v28 > 1), v29 + 1, 1);
            v12 = v41;
          }

          *(v12 + 16) = v29 + 1;
          v26((v12 + v13 + v29 * v14), v34, v39);
          a3 = v30;
          goto LABEL_4;
        }

        v25 = sub_266213140();

        if (v25)
        {
          goto LABEL_24;
        }
      }

LABEL_3:
      (*v32)(v9, v39);
LABEL_4:
      ++v11;
      result = v36;
      if (v37 == v11)
      {
        goto LABEL_30;
      }
    }

    v21 = 0;
LABEL_15:
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_30:

  return v12;
}

uint64_t Array<A>.identifiers(forNamespace:)(unsigned __int8 *a1, unint64_t a2)
{
  v4 = sub_266212B20();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = result; v9; i = v17)
  {
    v10 = 0;
    v55 = MEMORY[0x277D84F90];
    while ((a2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26677E9B0](v10, a2);
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v12 = sub_266212AC0();

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_266209A48(0, v55[2] + 1, 1, v55);
        v55 = result;
      }

      v14 = v55[2];
      v13 = v55[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v52 = v14 + 1;
        result = sub_266209A48((v13 > 1), v14 + 1, 1, v55);
        v15 = v52;
        v55 = result;
      }

      v16 = v55;
      v55[2] = v15;
      v16[v14 + 4] = v12;
      ++v10;
      if (v11 == v9)
      {
        goto LABEL_19;
      }
    }

    if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v11 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v17 = result;
    v9 = sub_266213110();
    result = v17;
  }

  v55 = MEMORY[0x277D84F90];
  v15 = *(MEMORY[0x277D84F90] + 16);
LABEL_19:
  if (v15)
  {
    v18 = 0;
    v53 = v55 + 4;
    v57 = v5 + 16;
    v51 = 0x8000000266214AC0;
    v49 = 0x8000000266214A80;
    v50 = 0x8000000266214AA0;
    v48 = 0x8000000266214A60;
    v46 = 0x8000000266214A20;
    v47 = 0x8000000266214A40;
    v45 = 0x80000002662149F0;
    v43 = 0x80000002662149A0;
    v44 = 0x80000002662149D0;
    v42 = 0x8000000266214940;
    v40 = 0x8000000266214900;
    v41 = 0x8000000266214920;
    v39 = 0x80000002662148E0;
    v38 = 0x80000002662148C0;
    v37 = 0x8000000266214890;
    v19 = (v5 + 8);
    v20 = MEMORY[0x277D84F90];
    v52 = v15;
    while (1)
    {
      v36 = v20;
      v21 = i;
      while (1)
      {
        if (v18 >= v55[2])
        {
          goto LABEL_104;
        }

        v22 = v53[v18++];
        v23 = *(v22 + 16);
        if (v23)
        {
          break;
        }

LABEL_23:
        if (v18 == v15)
        {
          v20 = v36;
          goto LABEL_102;
        }
      }

      v54 = v18;
      v24 = v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

      v25 = 0;
LABEL_29:
      if (v25 >= *(v22 + 16))
      {
        break;
      }

      (*(v5 + 16))(v8, v24 + *(v5 + 72) * v25++, v21);
      v27 = sub_266212B10();
      v29 = 0xEF6E756F4E726579;
      v30 = 0x616C50616964656DLL;
      switch(v58)
      {
        case 1:
          v30 = 0xD000000000000012;
          v29 = v37;
          if (v28)
          {
            goto LABEL_83;
          }

          goto LABEL_89;
        case 2:
          v30 = 0x6E6547636973756DLL;
          v29 = 0xEA00000000006572;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 3:
          v29 = 0xEF646F6F4D726579;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 4:
          v30 = 0xD000000000000013;
          v29 = v38;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 5:
          v30 = 0xD000000000000014;
          v29 = v39;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 6:
          v30 = 0xD000000000000015;
          v29 = v40;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 7:
          v30 = 0xD000000000000014;
          v29 = v41;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 8:
          v30 = 0xD000000000000015;
          v29 = v42;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 9:
          v29 = 0xED0000656C746954;
          v30 = 0x7473696C79616C70;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 10:
          v30 = 0x5474736163646F70;
          goto LABEL_79;
        case 11:
          v29 = 0xEE0064496369706FLL;
          v30 = 0x5474736163646F70;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 12:
          v29 = 0xEA00000000007265;
          v30 = 0x696669746E656469;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 13:
          v29 = 0xE400000000000000;
          v30 = 1701605234;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 14:
          v30 = 0x6C646E7542707061;
          v29 = 0xEB00000000644965;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 15:
          v30 = 0xD000000000000019;
          v29 = v43;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 16:
          v29 = 0xEB0000000064496DLL;
          v30 = 0x657449616964656DLL;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 17:
          v30 = 0xD000000000000010;
          v29 = v44;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 18:
          v30 = 0xD000000000000012;
          v29 = v45;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 19:
          v30 = 0x54776F6853707061;
LABEL_79:
          v29 = 0xEC000000656C7469;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 20:
          v29 = 0xEE006449656C7469;
          v30 = 0x54776F6853707061;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 21:
          v30 = 0xD000000000000011;
          v29 = v46;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 22:
          v30 = 0xD000000000000013;
          v29 = v47;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 23:
          v30 = 0xD000000000000012;
          v29 = v48;
          goto LABEL_82;
        case 24:
          v30 = 0xD000000000000014;
          v29 = v49;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 25:
          v30 = 0xD000000000000012;
          v29 = v50;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 26:
          v30 = 0xD000000000000014;
          v29 = v51;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        case 27:
          v29 = 0xE700000000000000;
          v30 = 0x64695F6D657469;
          if (!v28)
          {
            goto LABEL_89;
          }

          goto LABEL_83;
        default:
LABEL_82:
          if (!v28)
          {
            goto LABEL_89;
          }

LABEL_83:
          if (v27 == v30 && v28 == v29)
          {
          }

          else
          {
            v31 = sub_266213140();
            v21 = i;

            if ((v31 & 1) == 0)
            {
              goto LABEL_90;
            }
          }

          if (!sub_266212B00() && v32 == 0xE000000000000000)
          {
LABEL_89:

LABEL_90:
            result = (*v19)(v8, v21);
            if (v23 == v25)
            {
LABEL_22:

              v15 = v52;
              v18 = v54;
              goto LABEL_23;
            }

            goto LABEL_29;
          }

          v26 = sub_266213140();

          result = (*v19)(v8, v21);
          if (v26)
          {
            if (v23 == v25)
            {
              goto LABEL_22;
            }

            goto LABEL_29;
          }

          v20 = v36;
          result = swift_isUniquelyReferenced_nonNull_native();
          v59 = v20;
          if ((result & 1) == 0)
          {
            result = sub_266209F7C(0, *(v20 + 16) + 1, 1);
            v20 = v59;
          }

          v15 = v52;
          v34 = *(v20 + 16);
          v33 = *(v20 + 24);
          if (v34 >= v33 >> 1)
          {
            result = sub_266209F7C((v33 > 1), v34 + 1, 1);
            v15 = v52;
            v20 = v59;
          }

          *(v20 + 16) = v34 + 1;
          *(v20 + 8 * v34 + 32) = v22;
          v18 = v54;
          if (v54 == v15)
          {
            goto LABEL_102;
          }

          break;
      }
    }

    __break(1u);
LABEL_104:
    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
LABEL_102:

    return v20;
  }

  return result;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isMoreOf()()
{
  v0 = sub_266212CA0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A40, &qword_266213A00);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A48, &qword_266213A08);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  if (sub_266212B40())
  {
    sub_266212C90();
  }

  else
  {
    (*(v1 + 56))(v14, 1, 1, v0);
  }

  (*(v1 + 104))(v12, *MEMORY[0x277D5EA40], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v3 + 48);
  sub_2662045F8(v14, v5, &qword_280067A48, &qword_266213A08);
  sub_2662045F8(v12, &v5[v15], &qword_280067A48, &qword_266213A08);
  v16 = *(v1 + 48);
  if (v16(v5, 1, v0) != 1)
  {
    sub_2662045F8(v5, v9, &qword_280067A48, &qword_266213A08);
    if (v16(&v5[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v5[v15], v0);
      sub_26620A684(&qword_280067A50, MEMORY[0x277D5EA60], MEMORY[0x277D5EA70]);
      v17 = sub_266212F90();
      v19 = *(v1 + 8);
      v19(v18, v0);
      sub_2661EFBB8(v12, &qword_280067A48, &qword_266213A08);
      sub_2661EFBB8(v14, &qword_280067A48, &qword_266213A08);
      v19(v9, v0);
      sub_2661EFBB8(v5, &qword_280067A48, &qword_266213A08);
      return v17 & 1;
    }

    sub_2661EFBB8(v12, &qword_280067A48, &qword_266213A08);
    sub_2661EFBB8(v14, &qword_280067A48, &qword_266213A08);
    (*(v1 + 8))(v9, v0);
    goto LABEL_9;
  }

  sub_2661EFBB8(v12, &qword_280067A48, &qword_266213A08);
  sub_2661EFBB8(v14, &qword_280067A48, &qword_266213A08);
  if (v16(&v5[v15], 1, v0) != 1)
  {
LABEL_9:
    sub_2661EFBB8(v5, &qword_280067A40, &qword_266213A00);
    v17 = 0;
    return v17 & 1;
  }

  sub_2661EFBB8(v5, &qword_280067A48, &qword_266213A08);
  v17 = 1;
  return v17 & 1;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.isDifferentThan()()
{
  v0 = sub_266212CC0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A58, &qword_266213A10);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A60, &qword_266213A18);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  if (sub_266212B80() && (v15 = sub_266212E20(), , v15))
  {
    sub_266212CB0();
  }

  else
  {
    (*(v1 + 56))(v14, 1, 1, v0);
  }

  (*(v1 + 104))(v12, *MEMORY[0x277D5EA80], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v3 + 48);
  sub_2662045F8(v14, v5, &qword_280067A60, &qword_266213A18);
  sub_2662045F8(v12, &v5[v16], &qword_280067A60, &qword_266213A18);
  v17 = *(v1 + 48);
  if (v17(v5, 1, v0) != 1)
  {
    sub_2662045F8(v5, v9, &qword_280067A60, &qword_266213A18);
    if (v17(&v5[v16], 1, v0) != 1)
    {
      v19 = v23;
      (*(v1 + 32))(v23, &v5[v16], v0);
      sub_26620A684(&qword_280067A68, MEMORY[0x277D5EA88], MEMORY[0x277D5EA90]);
      v18 = sub_266212F90();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_2661EFBB8(v12, &qword_280067A60, &qword_266213A18);
      sub_2661EFBB8(v14, &qword_280067A60, &qword_266213A18);
      v20(v9, v0);
      sub_2661EFBB8(v5, &qword_280067A60, &qword_266213A18);
      return v18 & 1;
    }

    sub_2661EFBB8(v12, &qword_280067A60, &qword_266213A18);
    sub_2661EFBB8(v14, &qword_280067A60, &qword_266213A18);
    (*(v1 + 8))(v9, v0);
    goto LABEL_10;
  }

  sub_2661EFBB8(v12, &qword_280067A60, &qword_266213A18);
  sub_2661EFBB8(v14, &qword_280067A60, &qword_266213A18);
  if (v17(&v5[v16], 1, v0) != 1)
  {
LABEL_10:
    sub_2661EFBB8(v5, &qword_280067A58, &qword_266213A10);
    v18 = 0;
    return v18 & 1;
  }

  sub_2661EFBB8(v5, &qword_280067A60, &qword_266213A18);
  v18 = 1;
  return v18 & 1;
}

unint64_t UsoEntity_common_MediaItem.findAll(options:with:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  if (a2(v3))
  {

    MEMORY[0x26677E8F0](v7);
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_266213000();
    }

    sub_266213010();
    v6 = v37;
  }

  if (!UsoEntity_common_MediaItem.isResolvedReference()() || *(a1 + 16))
  {
    v8 = sub_266212BF0();
    if (v8)
    {
      v9 = v8;
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v8 >> 62)
      {
        goto LABEL_60;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266213110())
      {
        v12 = 0;
        v32 = v9;
        v33 = v9 & 0xC000000000000001;
        v28 = v10;
        v31 = i;
        v26 = v5;
        v27 = a3;
        while (v33)
        {
          MEMORY[0x26677E9B0](v12, v9);
          v13 = __OFADD__(v12++, 1);
          if (v13)
          {
            goto LABEL_53;
          }

LABEL_19:
          sub_266212B30();
          if (!v36[0])
          {

            goto LABEL_12;
          }

          sub_266212B30();
          if (v36[0])
          {
            v14 = UsoEntity_common_MediaItem.findAll(options:with:)(a1, v5, a3);
          }

          else
          {
            v14 = MEMORY[0x277D84F90];
          }

          v15 = v14 >> 62;
          if (v14 >> 62)
          {
            v16 = sub_266213110();
          }

          else
          {
            v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v10 = v6 >> 62;
          if (v6 >> 62)
          {
            v17 = sub_266213110();
          }

          else
          {
            v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v35 = v16;
          v13 = __OFADD__(v17, v16);
          v9 = v17 + v16;
          if (v13)
          {
            goto LABEL_54;
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v10)
            {
              goto LABEL_35;
            }

LABEL_34:
            sub_266213110();
            goto LABEL_35;
          }

          if (v10)
          {
            goto LABEL_34;
          }

          v10 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v9 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v34 = v6;
            goto LABEL_36;
          }

LABEL_35:
          v34 = sub_2662130B0();
          v10 = v34 & 0xFFFFFFFFFFFFFF8;
LABEL_36:
          v6 = *(v10 + 16);
          v18 = *(v10 + 24);
          if (v15)
          {
            v9 = sub_266213110();
            if (v9)
            {
LABEL_38:
              if (((v18 >> 1) - v6) < v35)
              {
                goto LABEL_56;
              }

              v6 = v10 + 8 * v6 + 32;
              v30 = v10;
              if (v15)
              {
                if (v9 < 1)
                {
                  goto LABEL_59;
                }

                sub_26620A6CC();
                for (j = 0; j != v9; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A70, &qword_266213A20);
                  v20 = sub_26620A2A8(v36, j, v14);
                  v22 = *v21;

                  (v20)(v36, 0);
                  *(v6 + 8 * j) = v22;
                }

                v5 = v26;
                a3 = v27;
                v10 = v35;
              }

              else
              {
                sub_266212C50();
                v10 = v35;
                swift_arrayInitWithCopy();
              }

              v6 = v34;
              i = v31;
              v9 = v32;
              if (v10 > 0)
              {
                v23 = *(v30 + 16);
                v13 = __OFADD__(v23, v10);
                v24 = v23 + v10;
                if (v13)
                {
                  goto LABEL_58;
                }

                *(v30 + 16) = v24;
              }

              goto LABEL_12;
            }
          }

          else
          {
            v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v9)
            {
              goto LABEL_38;
            }
          }

          v6 = v34;
          i = v31;
          v9 = v32;
          if (v35 > 0)
          {
            goto LABEL_55;
          }

LABEL_12:
          if (v12 == i)
          {
            goto LABEL_61;
          }
        }

        if (v12 >= *(v28 + 16))
        {
          goto LABEL_57;
        }

        v13 = __OFADD__(v12++, 1);
        if (!v13)
        {
          goto LABEL_19;
        }

LABEL_53:
        __break(1u);
LABEL_54:
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
        ;
      }

LABEL_61:
    }
  }

  return v6;
}

Swift::Bool __swiftcall UsoEntity_common_MediaItem.hasMediaTypeOnly()()
{
  v0 = sub_266212C00();
  if (v0)
  {

    if (sub_266212C20() || sub_266212B70() || sub_266212B40())
    {
      goto LABEL_5;
    }

    if (sub_266212BF0())
    {

      goto LABEL_6;
    }

    if (sub_266212B60() || sub_266212B50())
    {
LABEL_5:

LABEL_6:
      LOBYTE(v0) = 0;
      return v0;
    }

    LOBYTE(v0) = 1;
  }

  return v0;
}

char *sub_266209808(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A98, &qword_266213A40);
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

void *sub_266209914(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AC0, &qword_266213A68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AC8, qword_266213A70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266209A48(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AA0, &qword_266213A48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AA8, &qword_266213A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_266209B7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AB0, &qword_266213A58);
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

char *sub_266209C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A90, &qword_266213A38);
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

char *sub_266209D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A88, &qword_266213A30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_266209E68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A80, &qword_266213A28);
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

void *sub_266209F5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266209F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266209F7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26620A174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266209F9C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AB8, &qword_266213A60);
  v10 = *(sub_266212B20() - 8);
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
  v15 = *(sub_266212B20() - 8);
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

void *sub_26620A174(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AA0, &qword_266213A48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067AA8, &qword_266213A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_26620A2A8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26677E9B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_26620A328;
  }

  __break(1u);
  return result;
}

unint64_t sub_26620A330(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = v4;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x26677E9B0](v5, v27);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v5 >= *(v30 + 16))
        {
          goto LABEL_41;
        }

        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_40;
        }
      }

      v8 = UsoEntity_common_MediaItem.findAll(options:with:)(a2, a3, a4);

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_266213110() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_266213110();
        goto LABEL_19;
      }

      if (v11)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_2662130B0();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        v17 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_266213110();
        v13 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v15 >> 1) - v14) < v36)
          {
            goto LABEL_43;
          }

          v18 = v13 + 8 * v14 + 32;
          v29 = v13;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_45;
            }

            sub_26620A6CC();
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067A70, &qword_266213A20);
              v20 = sub_26620A2A8(v35, i, v8);
              v22 = *v21;

              (v20)(v35, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            sub_266212C50();
            swift_arrayInitWithCopy();
          }

          v4 = v28;
          if (v36 >= 1)
          {
            v23 = *(v29 + 16);
            v7 = __OFADD__(v23, v36);
            v24 = v23 + v36;
            if (v7)
            {
              goto LABEL_44;
            }

            *(v29 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      if (v36 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_266213110();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_266213110();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26620A684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26620A6CC()
{
  result = qword_280067A78;
  if (!qword_280067A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280067A70, &qword_266213A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280067A78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Bool __swiftcall AudioIntent.hasResolvedReference()()
{
  v1 = (*(v0 + 272))();
  if (v1)
  {
  }

  return v1 != 0;
}

Swift::Bool __swiftcall AudioIntent.isReferringToCurrentlyPlayingForAdd()()
{
  v2 = v1;
  v3 = v0;
  (*(v1 + 296))(&v10);
  if (v10 == 19)
  {
    return 0;
  }

  v5 = CommonAudio.Verb.rawValue.getter();
  v7 = v6;
  if (v5 == CommonAudio.Verb.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v9 = sub_266213140();

    result = 0;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  if ((*(v2 + 272))(v3, v2))
  {

    if (AudioIntent.isWithoutTitlesAndArtist()())
    {
      return 1;
    }
  }

  return AudioIntent.isWithoutTitlesAndArtistAndGenre()();
}

Swift::Bool __swiftcall AudioIntent.isWithoutTitlesAndArtist()()
{
  v2 = v1;
  v3 = v0;
  v4 = *((*(v1 + 136))() + 16);

  if (v4)
  {
    return 0;
  }

  v5 = *(v2[25](v3, v2) + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(v2[13](v3, v2) + 16);

  if (v6)
  {
    return 0;
  }

  v8 = *(v2[3](v3, v2) + 16);

  return v8 == 0;
}

Swift::Bool __swiftcall AudioIntent.isWithoutTitlesAndArtistAndGenre()()
{
  v2 = v1;
  v3 = v0;
  if (AudioIntent.isWithoutTitlesAndArtist()())
  {
    v4 = *((*(v2 + 152))(v3, v2) + 16);

    if (!v4)
    {
      (*(v2 + 168))(&v12, v3, v2);
      if (v12 == 29)
      {
        v5 = 1;
        return v5 & 1;
      }

      v7 = CommonAudio.MediaType.rawValue.getter();
      v9 = v8;
      if (v7 != CommonAudio.MediaType.rawValue.getter() || v9 != v10)
      {
        v11 = sub_266213140();

        v5 = v11 ^ 1;
        return v5 & 1;
      }
    }
  }

  v5 = 0;
  return v5 & 1;
}

Swift::Bool __swiftcall AudioIntent.isBeats1Only()()
{
  if (AudioIntent.hasBeats1ItemOrRadioStationNameOnly()())
  {
    return 1;
  }

  return AudioIntent.hasBeats1NounOnly()();
}

Swift::Bool __swiftcall AudioIntent.hasBeats1ItemOrRadioStationNameOnly()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 136))();
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = (*(v2 + 248))(v3, v2);
  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v10 = v5 & 0x2000000000000000;
  v11 = HIBYTE(v5) & 0xF;
  v12 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v13 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
  }

  else
  {

    v10 = v8 & 0x2000000000000000;
    v11 = HIBYTE(v8) & 0xF;
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = sub_266212FB0();
    v17 = v16;

    if (v15 == sub_266212FB0() && v17 == v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = sub_266213140();
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

Swift::Bool __swiftcall AudioIntent.hasBeats1NounOnly()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 136))();
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];

    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {

    v7 = 0;
    v5 = 0xE000000000000000;
  }

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v7;
  }

  if (v8 || ((*(v2 + 208))(&v11, v3, v2), v11 == 2))
  {
    v9 = 0;
  }

  else
  {
    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_266213140();
    }
  }

  return v9 & 1;
}

Swift::Bool __swiftcall AudioIntent.isReferencedPlayRequest()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 296))(&v20 + 1, v6);
  if (BYTE1(v20) == 19)
  {
    goto LABEL_7;
  }

  v19[15] = BYTE1(v20);
  v19[14] = 0;
  v10 = CommonAudio.Verb.rawValue.getter();
  v12 = v11;
  if (v10 == CommonAudio.Verb.rawValue.getter() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_266213140();

    if ((v14 & 1) == 0)
    {
LABEL_7:
      LOBYTE(v15) = 0;
      return v15;
    }
  }

  (*(v3 + 264))(&v20, v4, v3);
  if (v20 == 2)
  {
    goto LABEL_7;
  }

  (*(v5 + 16))(v8, v2, v4);
  type metadata accessor for AudioUsoIntent();
  v15 = swift_dynamicCast();
  if (v15)
  {
    v16 = sub_2661F1CAC();

    LOBYTE(v15) = v16;
    if (v16)
    {
      if (v16 >> 62)
      {
        v17 = sub_266213110();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      LOBYTE(v15) = v17 != 0;
    }
  }

  return v15;
}

Swift::Bool __swiftcall AudioIntent.isPlayRequest()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 296);
  v4((&v28 + 4));
  if (BYTE4(v28) == 19)
  {
    return 1;
  }

  (v4)((&v28 + 3), v3, v2);
  if (BYTE3(v28) != 19)
  {
    v8 = CommonAudio.Verb.rawValue.getter();
    v10 = v9;
    if (v8 == CommonAudio.Verb.rawValue.getter() && v10 == v11)
    {
      goto LABEL_21;
    }

    v12 = sub_266213140();

    if (v12)
    {
      return 1;
    }
  }

  (v4)((&v28 + 2), v3, v2);
  if (BYTE2(v28) != 19)
  {
    v13 = CommonAudio.Verb.rawValue.getter();
    v15 = v14;
    if (v13 == CommonAudio.Verb.rawValue.getter() && v15 == v16)
    {
      goto LABEL_21;
    }

    v17 = sub_266213140();

    if (v17)
    {
      return 1;
    }
  }

  (v4)((&v28 + 1), v3, v2);
  if (BYTE1(v28) == 19)
  {
    goto LABEL_5;
  }

  v18 = CommonAudio.Verb.rawValue.getter();
  v20 = v19;
  if (v18 == CommonAudio.Verb.rawValue.getter() && v20 == v21)
  {
LABEL_21:

    return 1;
  }

  v22 = sub_266213140();

  if (v22)
  {
    return 1;
  }

LABEL_5:
  (v4)(&v28, v3, v2);
  if (v28 == 19)
  {
LABEL_6:
    v5 = (*(v2 + 112))(v3, v2);
    v6 = sub_26620BCF8(3, v5);

    return v6 & 1;
  }

  v23 = CommonAudio.Verb.rawValue.getter();
  v25 = v24;
  if (v23 == CommonAudio.Verb.rawValue.getter() && v25 == v26)
  {
    goto LABEL_21;
  }

  v27 = sub_266213140();

  if ((v27 & 1) == 0)
  {
    goto LABEL_6;
  }

  return 1;
}

Swift::Bool __swiftcall AudioIntent.hasAttribute(_:)(SiriAudioIntentUtils::CommonAudio::Attribute a1)
{
  v2 = *a1;
  v3 = (*(v1 + 112))();
  v4 = sub_26620BCF8(v2, v3);

  return v4 & 1;
}

Swift::Bool __swiftcall AudioIntent.isAddToUpNext()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 296);
  v4((&v18 + 1));
  if (BYTE1(v18) != 19)
  {
    v6 = CommonAudio.Verb.rawValue.getter();
    v8 = v7;
    if (v6 == CommonAudio.Verb.rawValue.getter() && v8 == v9)
    {
LABEL_10:

      goto LABEL_11;
    }

    v10 = sub_266213140();

    if (v10)
    {
      goto LABEL_11;
    }
  }

  (v4)(&v18, v3, v2);
  if (v18 == 19)
  {
    return 0;
  }

  v11 = CommonAudio.Verb.rawValue.getter();
  v13 = v12;
  if (v11 == CommonAudio.Verb.rawValue.getter() && v13 == v14)
  {
    goto LABEL_10;
  }

  v17 = sub_266213140();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v15 = (*(v2 + 112))(v3, v2);
  v16 = sub_26620BCF8(3, v15);

  return v16 & 1;
}

BOOL AudioIntent.hasAnyAttribute(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 112))(a2, a3);
  LOBYTE(a1) = sub_26620B5D4(a1, v4);

  return (a1 & 1) == 0;
}

uint64_t sub_26620B5D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v29 = v5 + 56;

  v12 = 0;
LABEL_13:
  if (v9)
  {
    v13 = v9;
    goto LABEL_19;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v6 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
LABEL_19:
      v9 = (v13 - 1) & v13;
      if (*(v5 + 16))
      {
        v15 = *(*(v4 + 48) + (__clz(__rbit64(v13)) | (v12 << 6)));
        sub_266213170();
        v28 = v15;
        sub_266212FC0();

        result = sub_266213190();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        if ((*(v29 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v26 = v9;
          v27 = v4;
          v18 = ~v16;
          while (2)
          {
            v19 = 0xEA00000000007473;
            v20 = 0x697472416D6F7266;
            switch(*(*(v5 + 48) + v17))
            {
              case 1:
                v19 = 0xE800000000000000;
                v20 = 0x676E6F536D6F7266;
                break;
              case 2:
                v20 = 0x75626C416D6F7266;
                v19 = 0xE90000000000006DLL;
                break;
              case 3:
                v19 = 0xE800000000000000;
                v20 = 0x7478654E79616C70;
                break;
              case 4:
                v19 = 0xE700000000000000;
                v20 = 0x776F4E79616C70;
                break;
              case 5:
                v19 = 0xE800000000000000;
                v20 = 0x7473614C79616C70;
                break;
              case 6:
                v19 = 0xE800000000000000;
                v20 = 0x7974696E69666661;
                break;
              case 7:
                v20 = 0x6E656D6D6F636572;
                v19 = 0xEB00000000646564;
                break;
              case 8:
                v19 = 0xE900000000000079;
                v20 = 0x7265766F63736964;
                break;
              case 9:
                v20 = 0xD000000000000018;
                v19 = 0x8000000266214B40;
                break;
              case 0xA:
                v19 = 0xE400000000000000;
                v20 = 1954047342;
                break;
              case 0xB:
                v19 = 0xE500000000000000;
                v20 = 0x64656D616ELL;
                break;
              case 0xC:
                v19 = 0xE800000000000000;
                v20 = 0x73756F6976657270;
                break;
              case 0xD:
                v20 = 0x44657361656C6572;
                v19 = 0xEB00000000657461;
                break;
              case 0xE:
                v19 = 0xE800000000000000;
                v20 = 0x6E6F697461727564;
                break;
              default:
                break;
            }

            v21 = 0x697472416D6F7266;
            v22 = 0xEA00000000007473;
            switch(v28)
            {
              case 1:
                v22 = 0xE800000000000000;
                if (v20 == 0x676E6F536D6F7266)
                {
                  goto LABEL_64;
                }

                goto LABEL_65;
              case 2:
                v22 = 0xE90000000000006DLL;
                if (v20 != 0x75626C416D6F7266)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 3:
                v22 = 0xE800000000000000;
                if (v20 != 0x7478654E79616C70)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 4:
                v22 = 0xE700000000000000;
                if (v20 != 0x776F4E79616C70)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 5:
                v22 = 0xE800000000000000;
                if (v20 != 0x7473614C79616C70)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 6:
                v22 = 0xE800000000000000;
                if (v20 != 0x7974696E69666661)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 7:
                v23 = 0x6E656D6D6F636572;
                v24 = 6579556;
                goto LABEL_58;
              case 8:
                v22 = 0xE900000000000079;
                if (v20 != 0x7265766F63736964)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 9:
                v22 = 0x8000000266214B40;
                if (v20 != 0xD000000000000018)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 10:
                v22 = 0xE400000000000000;
                v21 = 1954047342;
                goto LABEL_63;
              case 11:
                v22 = 0xE500000000000000;
                if (v20 != 0x64656D616ELL)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 12:
                v22 = 0xE800000000000000;
                if (v20 != 0x73756F6976657270)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 13:
                v23 = 0x44657361656C6572;
                v24 = 6648929;
LABEL_58:
                v22 = v24 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                if (v20 != v23)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              case 14:
                v22 = 0xE800000000000000;
                if (v20 != 0x6E6F697461727564)
                {
                  goto LABEL_65;
                }

                goto LABEL_64;
              default:
LABEL_63:
                if (v20 != v21)
                {
                  goto LABEL_65;
                }

LABEL_64:
                if (v19 == v22)
                {

                  return 0;
                }

LABEL_65:
                v25 = sub_266213140();

                if (v25)
                {

                  return 0;
                }

                v17 = (v17 + 1) & v18;
                if ((*(v29 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
                {
                  continue;
                }

                v9 = v26;
                v4 = v27;
                break;
            }

            break;
          }
        }
      }

      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26620BCF8(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_266213170();
    CommonAudio.Attribute.rawValue.getter();
    sub_266212FC0();

    v4 = sub_266213190();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xEA00000000007473;
        v9 = 0x697472416D6F7266;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE800000000000000;
            v9 = 0x676E6F536D6F7266;
            break;
          case 2:
            v9 = 0x75626C416D6F7266;
            v8 = 0xE90000000000006DLL;
            break;
          case 3:
            v8 = 0xE800000000000000;
            v9 = 0x7478654E79616C70;
            break;
          case 4:
            v8 = 0xE700000000000000;
            v9 = 0x776F4E79616C70;
            break;
          case 5:
            v8 = 0xE800000000000000;
            v9 = 0x7473614C79616C70;
            break;
          case 6:
            v8 = 0xE800000000000000;
            v9 = 0x7974696E69666661;
            break;
          case 7:
            v9 = 0x6E656D6D6F636572;
            v8 = 0xEB00000000646564;
            break;
          case 8:
            v8 = 0xE900000000000079;
            v9 = 0x7265766F63736964;
            break;
          case 9:
            v9 = 0xD000000000000018;
            v8 = 0x8000000266214B40;
            break;
          case 0xA:
            v8 = 0xE400000000000000;
            v9 = 1954047342;
            break;
          case 0xB:
            v8 = 0xE500000000000000;
            v9 = 0x64656D616ELL;
            break;
          case 0xC:
            v8 = 0xE800000000000000;
            v9 = 0x73756F6976657270;
            break;
          case 0xD:
            v9 = 0x44657361656C6572;
            v8 = 0xEB00000000657461;
            break;
          case 0xE:
            v8 = 0xE800000000000000;
            v9 = 0x6E6F697461727564;
            break;
          default:
            break;
        }

        v10 = 0x697472416D6F7266;
        v11 = 0xEA00000000007473;
        switch(a1)
        {
          case 1:
            v11 = 0xE800000000000000;
            if (v9 == 0x676E6F536D6F7266)
            {
              goto LABEL_46;
            }

            goto LABEL_47;
          case 2:
            v11 = 0xE90000000000006DLL;
            if (v9 != 0x75626C416D6F7266)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 3:
            v11 = 0xE800000000000000;
            if (v9 != 0x7478654E79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v11 = 0xE700000000000000;
            if (v9 != 0x776F4E79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v11 = 0xE800000000000000;
            if (v9 != 0x7473614C79616C70)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v11 = 0xE800000000000000;
            if (v9 != 0x7974696E69666661)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            v12 = 0x6E656D6D6F636572;
            v13 = 6579556;
            goto LABEL_40;
          case 8:
            v11 = 0xE900000000000079;
            if (v9 != 0x7265766F63736964)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v11 = 0x8000000266214B40;
            if (v9 != 0xD000000000000018)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v11 = 0xE400000000000000;
            v10 = 1954047342;
            goto LABEL_45;
          case 11:
            v11 = 0xE500000000000000;
            if (v9 != 0x64656D616ELL)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v11 = 0xE800000000000000;
            if (v9 != 0x73756F6976657270)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 13:
            v12 = 0x44657361656C6572;
            v13 = 6648929;
LABEL_40:
            v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v9 != v12)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 14:
            v11 = 0xE800000000000000;
            if (v9 != 0x6E6F697461727564)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
LABEL_45:
            if (v9 != v10)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v8 == v11)
            {

              v14 = 1;
              return v14 & 1;
            }

LABEL_47:
            v14 = sub_266213140();

            if (v14)
            {
              return v14 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v14 & 1;
            }

            break;
        }
      }
    }
  }

  v14 = 0;
  return v14 & 1;
}

Swift::Bool __swiftcall AudioIntent.isAirPlayMusicWithoutAppName()()
{
  v2 = v1;
  v3 = v0;
  v4 = *((*(v1 + 304))() + 16);

  if (!v4)
  {
    return 0;
  }

  v5 = *(v2 + 312);

  return v5(v3, v2);
}

char *UsoEntity_common_Setting.usoMediaSettingNames()()
{
  v0 = sub_266212B20();
  v42 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_266212F60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = sub_266212B90();
  if (v10)
  {
    v11 = v10;
    if (qword_280067948 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v3, qword_280069498);
    (*(v4 + 16))(v9, v12, v3);

    v13 = sub_266212F50();
    v14 = sub_266213040();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v43 = v4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v41 = v3;
      v18 = v17;
      v44 = v17;
      *v16 = 136315138;
      v19 = MEMORY[0x26677E900](v11, v0);
      v21 = sub_26621094C(v19, v20, &v44);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2661EC000, v13, v14, "UsoMediaSettingNames: Found identifiers for name: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26677ED20](v18, -1, -1);
      MEMORY[0x26677ED20](v16, -1, -1);

      (*(v43 + 8))(v9, v41);
      v22 = *(v11 + 16);
      if (v22)
      {
LABEL_6:
        v43 = 0x8000000266215790;
        v23 = *(v42 + 2);
        v24 = v42[80];
        v41 = v11;
        v25 = v11 + ((v24 + 32) & ~v24);
        v26 = *(v42 + 9);
        v27 = v42 + 8;
        v42 = MEMORY[0x277D84F90];
        v23(v2, v25, v0);
        while (1)
        {
          v28 = sub_266212B10();
          if (!v29)
          {
            break;
          }

          if (v28 == 0xD000000000000010 && v29 == v43)
          {
          }

          else
          {
            v30 = sub_266213140();

            if ((v30 & 1) == 0)
            {
              break;
            }
          }

          sub_266212B00();
          v31 = sub_266213130();

          (*v27)(v2, v0);
          if (!v31)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v32 = v42;
            }

            else
            {
              v32 = sub_266209E68(0, *(v42 + 2) + 1, 1, v42);
            }

            v34 = *(v32 + 2);
            v33 = *(v32 + 3);
            v35 = v34 + 1;
            if (v34 >= v33 >> 1)
            {
              v32 = sub_266209E68((v33 > 1), v34 + 1, 1, v32);
            }

            v42 = v32;
            *(v32 + 2) = v35;
          }

LABEL_8:
          v25 += v26;
          if (!--v22)
          {

            return v42;
          }

          v23(v2, v25, v0);
        }

        (*v27)(v2, v0);
        goto LABEL_8;
      }
    }

    else
    {

      (*(v4 + 8))(v9, v3);
      v22 = *(v11 + 16);
      if (v22)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    if (qword_280067948 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v3, qword_280069498);
    (*(v4 + 16))(v7, v37, v3);
    v38 = sub_266212F50();
    v39 = sub_266213040();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2661EC000, v38, v39, "UsoMediaSettingNames: Found no identifiers for name", v40, 2u);
      MEMORY[0x26677ED20](v40, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }

  return MEMORY[0x277D84F90];
}

SiriAudioIntentUtils::CommonAudio::Verb_optional __swiftcall CommonAudio.Verb.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213150();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static CommonAudio.MediaType.from(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = sub_266212F60();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  v6 = MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = sub_266212D60();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662045F8(a1, v12, &qword_2800679B0, &qword_266213550);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2662108E4(v12);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    if (qword_280067940 != -1)
    {
      swift_once();
    }

    v17 = qword_280069490;
    if (*(qword_280069490 + 16))
    {
      v18 = sub_266210F04(v16);
      if (v19)
      {
        v20 = *(*(v17 + 56) + v18);
        result = (*(v14 + 8))(v16, v13);
        goto LABEL_15;
      }
    }

    (*(v14 + 8))(v16, v13);
  }

  v22 = v35;
  if (qword_280067948 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v3, qword_280069498);
  (*(v22 + 16))(v5, v23, v3);
  sub_2662045F8(a1, v10, &qword_2800679B0, &qword_266213550);
  v24 = sub_266212F50();
  v25 = sub_266213020();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37 = v27;
    *v26 = 136315138;
    sub_2662045F8(v10, v33, &qword_2800679B0, &qword_266213550);
    v28 = sub_266212FA0();
    v30 = v29;
    sub_2662108E4(v10);
    v31 = sub_26621094C(v28, v30, &v37);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_2661EC000, v24, v25, "AudioUsoIntent#MediaType#from received unregistered type: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x26677ED20](v27, -1, -1);
    MEMORY[0x26677ED20](v26, -1, -1);
  }

  else
  {

    sub_2662108E4(v10);
  }

  result = (*(v22 + 8))(v5, v3);
  v20 = 29;
LABEL_15:
  *v36 = v20;
  return result;
}

unint64_t static CommonAudio.Decade.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_266212F60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_7;
  }

  if (qword_280067938 != -1)
  {
    swift_once();
  }

  v10 = qword_280069488;
  if (*(qword_280069488 + 16) && (result = sub_266210F88(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + result);
  }

  else
  {
LABEL_7:
    if (qword_280067948 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_280069498);
    (*(v7 + 16))(v9, v14, v6);

    v15 = sub_266212F50();
    v16 = sub_266213020();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[2] = a2;
      v23 = v18;
      *v17 = 136315138;
      v22[1] = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679E0, &qword_2662139B8);
      v19 = sub_266212FA0();
      v21 = sub_26621094C(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2661EC000, v15, v16, "CommonAudio#Decade#from received unregistered decade: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26677ED20](v18, -1, -1);
      MEMORY[0x26677ED20](v17, -1, -1);
    }

    result = (*(v7 + 8))(v9, v6);
    v13 = 11;
  }

  *a3 = v13;
  return result;
}

uint64_t sub_26620D298(char a1, char a2)
{
  if (*&a1920s_1[8 * a1] == *&a1920s_1[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_266213140();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_26620D300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  if (a1 <= 3u)
  {
    v9 = 0xE400000000000000;
    v10 = 1953719650;
    if (a1 != 2)
    {
      v10 = 0x7473726F77;
      v9 = 0xE500000000000000;
    }

    v11 = 0x616C75706F706E75;
    if (a1)
    {
      v3 = 0xE900000000000072;
    }

    else
    {
      v11 = 0x72616C75706F70;
    }

    if (a1 <= 1u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v4 = 0x74736574746F68;
    v5 = 0x6572636F6964656DLL;
    if (a1 != 7)
    {
      v5 = 0x7473657461657267;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = 0xE800000000000000;
    }

    v6 = 0x74736577656ELL;
    if (a1 != 4)
    {
      v6 = 0x747365646C6FLL;
    }

    if (a1 <= 5u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 5)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v12 = 0xE400000000000000;
        if (v7 != 1953719650)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v7 != 0x7473726F77)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v12 = 0xE900000000000072;
      if (v7 != 0x616C75706F706E75)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v7 != 0x72616C75706F70)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    v12 = 0xE600000000000000;
    if (a2 == 4)
    {
      v13 = 1702323566;
    }

    else
    {
      v13 = 1701080175;
    }

    if (v7 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x747300000000))
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 6)
  {
    v12 = 0xE700000000000000;
    if (v7 != 0x74736574746F68)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (a2 == 7)
    {
      if (v7 != 0x6572636F6964656DLL)
      {
        goto LABEL_52;
      }
    }

    else if (v7 != 0x7473657461657267)
    {
      goto LABEL_52;
    }
  }

  if (v8 != v12)
  {
LABEL_52:
    v14 = sub_266213140();
    goto LABEL_53;
  }

  v14 = 1;
LABEL_53:

  return v14 & 1;
}

uint64_t sub_26620D588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C65636E6163;
    }

    else
    {
      v4 = 0x6F666E4965726F6DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 7562617;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (a2 != 2)
  {
    v8 = 0x6F666E4965726F6DLL;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 28526;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_266213140();
  }

  return v11 & 1;
}

uint64_t sub_26620D6A4(uint64_t a1, char a2)
{
  sub_266212FC0();
}

uint64_t sub_26620D6E4(uint64_t a1, unsigned __int8 a2)
{
  sub_266212FC0();
}

unint64_t CommonAudio.Attribute.rawValue.getter()
{
  result = 0x697472416D6F7266;
  switch(*v0)
  {
    case 1:
      result = 0x676E6F536D6F7266;
      break;
    case 2:
      result = 0x75626C416D6F7266;
      break;
    case 3:
      result = 0x7478654E79616C70;
      break;
    case 4:
      result = 0x776F4E79616C70;
      break;
    case 5:
      result = 0x7473614C79616C70;
      break;
    case 6:
      result = 0x7974696E69666661;
      break;
    case 7:
      result = 0x6E656D6D6F636572;
      break;
    case 8:
      result = 0x7265766F63736964;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 0xA:
      result = 1954047342;
      break;
    case 0xB:
      result = 0x64656D616ELL;
      break;
    case 0xC:
      result = 0x73756F6976657270;
      break;
    case 0xD:
      result = 0x44657361656C6572;
      break;
    case 0xE:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_26620D9C0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE500000000000000;
    v9 = 0x65726E6567;
    switch(*v4)
    {
      case 1:
        v8 = 0xE600000000000000;
        v9 = 0x747369747261;
        break;
      case 2:
        v9 = 0x6F65646976;
        break;
      case 3:
        v8 = 0xE800000000000000;
        v9 = 0x7473696C79616C70;
        break;
      case 4:
        v8 = 0xE700000000000000;
        v9 = 0x6E6F6974617473;
        break;
      case 5:
        v9 = 0xD000000000000015;
        v8 = 0x8000000266214C90;
        break;
      case 6:
        v9 = 0x6F68536F69646172;
        v8 = 0xE900000000000077;
        break;
      case 7:
        v8 = 0xE400000000000000;
        v9 = 1735290739;
        break;
      case 8:
        v8 = 0xE700000000000000;
        v9 = 0x5573656E755469;
        break;
      case 9:
        v8 = 0xE700000000000000;
        v9 = 0x74736163646F70;
        break;
      case 0xA:
        v9 = 0x646956636973756DLL;
        v8 = 0xEA00000000006F65;
        break;
      case 0xB:
        v9 = 0x636973756DLL;
        break;
      case 0xC:
        v8 = 0xE400000000000000;
        v9 = 1937204590;
        break;
      case 0xD:
        v8 = 0xE600000000000000;
        v9 = 0x776F68537674;
        break;
      case 0xE:
        v9 = 0x6D75626C61;
        break;
      case 0xF:
        v8 = 0xE800000000000000;
        v9 = 0x656E6F74676E6972;
        break;
      case 0x10:
        v8 = 0xE200000000000000;
        v9 = 28780;
        break;
      case 0x11:
        v8 = 0xE400000000000000;
        v9 = 2003789939;
        break;
      case 0x12:
        v9 = 0x6174536F69646172;
        v8 = 0xEC0000006E6F6974;
        break;
      case 0x13:
        v8 = 0xE200000000000000;
        v9 = 28773;
        break;
      case 0x14:
        v8 = 0xE600000000000000;
        v9 = 0x656C676E6973;
        break;
      case 0x15:
        v8 = 0xE700000000000000;
        v9 = 0x65646F73697065;
        break;
      case 0x16:
        v9 = 0x5374736163646F70;
        v8 = 0xEE006E6F69746174;
        break;
      case 0x17:
        v8 = 0xE600000000000000;
        v9 = 0x73646E756F73;
        break;
      case 0x18:
        v9 = 0x74616C69706D6F63;
        v8 = 0xEB000000006E6F69;
        break;
      case 0x19:
        v9 = 0x6569766F6DLL;
        break;
      case 0x1A:
        v9 = 0x6F6F426F69647561;
        v8 = 0xE90000000000006BLL;
        break;
      case 0x1B:
        v9 = 0x616C50636973756DLL;
        v8 = 0xED00007473696C79;
        break;
      case 0x1C:
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v10 = 0xE500000000000000;
    v11 = 0x65726E6567;
    switch(a1)
    {
      case 1:
        v10 = 0xE600000000000000;
        if (v9 == 0x747369747261)
        {
          goto LABEL_89;
        }

        goto LABEL_2;
      case 2:
        if (v9 != 0x6F65646976)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 3:
        v10 = 0xE800000000000000;
        if (v9 != 0x7473696C79616C70)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 4:
        v10 = 0xE700000000000000;
        if (v9 != 0x6E6F6974617473)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 5:
        v10 = 0x8000000266214C90;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 6:
        v10 = 0xE900000000000077;
        if (v9 != 0x6F68536F69646172)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 7:
        v10 = 0xE400000000000000;
        if (v9 != 1735290739)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 8:
        v10 = 0xE700000000000000;
        if (v9 != 0x5573656E755469)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 9:
        v10 = 0xE700000000000000;
        if (v9 != 0x74736163646F70)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 10:
        v10 = 0xEA00000000006F65;
        if (v9 != 0x646956636973756DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 11:
        if (v9 != 0x636973756DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 12:
        v10 = 0xE400000000000000;
        if (v9 != 1937204590)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 13:
        v10 = 0xE600000000000000;
        if (v9 != 0x776F68537674)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 14:
        if (v9 != 0x6D75626C61)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 15:
        v10 = 0xE800000000000000;
        if (v9 != 0x656E6F74676E6972)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 16:
        v10 = 0xE200000000000000;
        if (v9 != 28780)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 17:
        v10 = 0xE400000000000000;
        if (v9 != 2003789939)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 18:
        v10 = 0xEC0000006E6F6974;
        if (v9 != 0x6174536F69646172)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 19:
        v10 = 0xE200000000000000;
        if (v9 != 28773)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 20:
        v10 = 0xE600000000000000;
        if (v9 != 0x656C676E6973)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 21:
        v10 = 0xE700000000000000;
        if (v9 != 0x65646F73697065)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 22:
        v10 = 0xEE006E6F69746174;
        if (v9 != 0x5374736163646F70)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 23:
        v10 = 0xE600000000000000;
        if (v9 != 0x73646E756F73)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 24:
        v10 = 0xEB000000006E6F69;
        if (v9 != 0x74616C69706D6F63)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 25:
        if (v9 != 0x6569766F6DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 26:
        v10 = 0xE90000000000006BLL;
        if (v9 != 0x6F6F426F69647561)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 27:
        v10 = 0xED00007473696C79;
        if (v9 != 0x616C50636973756DLL)
        {
          goto LABEL_2;
        }

        goto LABEL_89;
      case 28:
        v10 = 0xE700000000000000;
        v11 = 0x6E776F6E6B6E75;
        goto LABEL_88;
      default:
LABEL_88:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_89:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_266213140();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

unint64_t CommonAudio.Verb.rawValue.getter()
{
  result = 2036427888;
  switch(*v0)
  {
    case 1:
      result = 0x6269726373627573;
      break;
    case 2:
      result = 0x776F6C6C6F66;
      break;
    case 3:
      result = 1701538156;
      break;
    case 4:
      result = 0x656C6666756873;
      break;
    case 5:
      result = 0x746165706572;
      break;
    case 6:
      result = 0x656D75736572;
      break;
    case 7:
      result = 0x657461647075;
      break;
    case 8:
      result = 0x736972616D6D7573;
      break;
    case 9:
      result = 0x7472617473;
      break;
    case 0xA:
      result = 0x656B696C6E75;
      break;
    case 0xB:
      result = 0x74736575716572;
      break;
    case 0xC:
      result = 1852141679;
      break;
    case 0xD:
      result = 0x6E696D7265746564;
      break;
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 0xF:
      result = 6579297;
      break;
    case 0x10:
      result = 0x656C62616E65;
      break;
    case 0x11:
      result = 0x656C6261736964;
      break;
    case 0x12:
      result = 0x796669646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26620E2D4@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.Verb.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CommonAudio.UsoEntity.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E456F4E5F6F7375;
  }
}

uint64_t sub_26620E344(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6E456F4E5F6F7375;
  }

  if (v2)
  {
    v4 = 0xEC00000079746974;
  }

  else
  {
    v4 = 0x8000000266214860;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6E456F4E5F6F7375;
  }

  if (*a2)
  {
    v6 = 0x8000000266214860;
  }

  else
  {
    v6 = 0xEC00000079746974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266213140();
  }

  return v8 & 1;
}

uint64_t sub_26620E3F8()
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620E488(uint64_t a1)
{
  sub_266212FC0();
}

uint64_t sub_26620E504(uint64_t a1)
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620E59C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000266214860;
  v3 = 0x6E456F4E5F6F7375;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEC00000079746974;
  }

  *a1 = v3;
  a1[1] = v2;
}

SiriAudioIntentUtils::CommonAudio::Attribute_optional __swiftcall CommonAudio.Attribute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213130();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_26620E6B0@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.Attribute.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CommonAudio.Modifier.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E65726566666964;
  }

  else
  {
    return 0x664F65726F6DLL;
  }
}

uint64_t sub_26620E728(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E65726566666964;
  }

  else
  {
    v3 = 0x664F65726F6DLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED00006E61685474;
  }

  if (*a2)
  {
    v5 = 0x6E65726566666964;
  }

  else
  {
    v5 = 0x664F65726F6DLL;
  }

  if (*a2)
  {
    v6 = 0xED00006E61685474;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266213140();
  }

  return v8 & 1;
}

uint64_t sub_26620E7D8()
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620E864(uint64_t a1)
{
  sub_266212FC0();
}

uint64_t sub_26620E8DC(uint64_t a1)
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620E970(uint64_t *a1@<X8>)
{
  v2 = 0x664F65726F6DLL;
  if (*v1)
  {
    v2 = 0x6E65726566666964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED00006E61685474;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t CommonAudio.Noun.rawValue.getter()
{
  if (*v0)
  {
    return 0x317374616562;
  }

  else
  {
    return 0x7972617262696CLL;
  }
}

uint64_t sub_26620E9FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x317374616562;
  }

  else
  {
    v3 = 0x7972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x317374616562;
  }

  else
  {
    v5 = 0x7972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266213140();
  }

  return v8 & 1;
}

uint64_t sub_26620EAA0()
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620EB20(uint64_t a1)
{
  sub_266212FC0();
}

uint64_t sub_26620EB8C(uint64_t a1)
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620EC14(uint64_t *a1@<X8>)
{
  v2 = 0x7972617262696CLL;
  if (*v1)
  {
    v2 = 0x317374616562;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t CommonAudio.RadioType.rawValue.getter()
{
  if (*v0)
  {
    return 28001;
  }

  else
  {
    return 28006;
  }
}

uint64_t sub_26620EC6C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 28001;
  }

  else
  {
    v2 = 28006;
  }

  if (*a2)
  {
    v3 = 28001;
  }

  else
  {
    v3 = 28006;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_266213140();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_26620ECDC()
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620ED3C(uint64_t a1)
{
  sub_266212FC0();
}

uint64_t sub_26620ED80(uint64_t a1)
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620EDE8(uint64_t *a1@<X8>)
{
  v2 = 28006;
  if (*v1)
  {
    v2 = 28001;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

SiriAudioIntentUtils::CommonAudio::Confirmation_optional __swiftcall CommonAudio.Confirmation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213130();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CommonAudio.Confirmation.rawValue.getter()
{
  v1 = 7562617;
  v2 = 0x6C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x6F666E4965726F6DLL;
  }

  if (*v0)
  {
    v1 = 28526;
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

uint64_t sub_26620EED4()
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620EF80(uint64_t a1)
{
  sub_266212FC0();
}

uint64_t sub_26620F018(uint64_t a1)
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

void sub_26620F0CC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE600000000000000;
  v5 = 0x6C65636E6163;
  if (*v1 != 2)
  {
    v5 = 0x6F666E4965726F6DLL;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_26620F134()
{
  v0 = sub_2662121EC(&unk_2877D60D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067B30, "(");
  result = swift_arrayDestroy();
  qword_280069488 = v0;
  return result;
}

SiriAudioIntentUtils::CommonAudio::Decade_optional __swiftcall CommonAudio.Decade.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213130();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26620F254@<X0>(uint64_t *a1@<X8>)
{
  result = CommonAudio.Decade.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE600000000000000;
  return result;
}

SiriAudioIntentUtils::CommonAudio::Sort_optional __swiftcall CommonAudio.Sort.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213130();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CommonAudio.Sort.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x72616C75706F70;
    v7 = 1953719650;
    if (v1 != 2)
    {
      v7 = 0x7473726F77;
    }

    if (*v0)
    {
      v6 = 0x616C75706F706E75;
    }

    if (*v0 <= 1u)
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
    v2 = 0x74736574746F68;
    v3 = 0x6572636F6964656DLL;
    if (v1 != 7)
    {
      v3 = 0x7473657461657267;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x74736577656ELL;
    if (v1 != 4)
    {
      v4 = 0x747365646C6FLL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26620F408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_266213170();
  a3(v7, v5);
  return sub_266213190();
}

uint64_t sub_26620F478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_266213170();
  a4(v8, v6);
  return sub_266213190();
}

uint64_t sub_26620F4D0@<X0>(uint64_t *a1@<X8>)
{
  result = CommonAudio.Sort.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26620F504@<X0>(char *a4@<X8>)
{
  v5 = sub_266213130();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t CommonAudio.Reference.rawValue.getter()
{
  if (*v0)
  {
    return 0x696E696665646E69;
  }

  else
  {
    return 0x6574696E69666564;
  }
}

uint64_t sub_26620F5A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696E696665646E69;
  }

  else
  {
    v3 = 0x6574696E69666564;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006574;
  }

  if (*a2)
  {
    v5 = 0x696E696665646E69;
  }

  else
  {
    v5 = 0x6574696E69666564;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006574;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_266213140();
  }

  return v8 & 1;
}

uint64_t sub_26620F650()
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620F6D8(uint64_t a1)
{
  sub_266212FC0();
}

uint64_t sub_26620F74C(uint64_t a1)
{
  sub_266213170();
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_26620F7DC@<X0>(char *a3@<X8>)
{
  v4 = sub_266213130();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_26620F838(uint64_t *a1@<X8>)
{
  v2 = 0x6574696E69666564;
  if (*v1)
  {
    v2 = 0x696E696665646E69;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26620F87C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067B48, &qword_266214498);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280067B50, &qword_2662144A0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266213AB0;
  v4 = v3 + v2;
  v5 = *(v0 + 48);
  v6 = *MEMORY[0x277D5EDA0];
  v7 = sub_266212D60();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 0;
  v9 = *(v0 + 48);
  v8(v4 + v1, *MEMORY[0x277D5EDC0], v7);
  *(v4 + v1 + v9) = 1;
  v10 = *(v0 + 48);
  v8(v4 + 2 * v1, *MEMORY[0x277D5EDB8], v7);
  *(v4 + 2 * v1 + v10) = 2;
  v11 = *(v0 + 48);
  v8(v4 + 3 * v1, *MEMORY[0x277D5EE18], v7);
  *(v4 + 3 * v1 + v11) = 3;
  v12 = *(v0 + 48);
  v8(v4 + 4 * v1, *MEMORY[0x277D5EE10], v7);
  *(v4 + 4 * v1 + v12) = 4;
  v13 = *(v0 + 48);
  v8(v4 + 5 * v1, *MEMORY[0x277D5ED68], v7);
  *(v4 + 5 * v1 + v13) = 5;
  v14 = *(v0 + 48);
  v8(v4 + 6 * v1, *MEMORY[0x277D5ED30], v7);
  *(v4 + 6 * v1 + v14) = 6;
  v15 = *(v0 + 48);
  v8(v4 + 7 * v1, *MEMORY[0x277D5ED90], v7);
  *(v4 + 7 * v1 + v15) = 7;
  v16 = *(v0 + 48);
  v8(v4 + 8 * v1, *MEMORY[0x277D5EDF8], v7);
  *(v4 + 8 * v1 + v16) = 8;
  v17 = *(v0 + 48);
  v8(v4 + 9 * v1, *MEMORY[0x277D5EE08], v7);
  *(v4 + 9 * v1 + v17) = 9;
  v18 = *(v0 + 48);
  v8(v4 + 10 * v1, *MEMORY[0x277D5ED38], v7);
  *(v4 + 10 * v1 + v18) = 10;
  v19 = *(v0 + 48);
  v8(v4 + 11 * v1, *MEMORY[0x277D5EDB0], v7);
  *(v4 + 11 * v1 + v19) = 11;
  v20 = *(v0 + 48);
  v8(v4 + 12 * v1, *MEMORY[0x277D5ED80], v7);
  *(v4 + 12 * v1 + v20) = 12;
  v21 = *(v0 + 48);
  v8(v4 + 13 * v1, *MEMORY[0x277D5EDD8], v7);
  *(v4 + 13 * v1 + v21) = 13;
  v22 = *(v0 + 48);
  v8(v4 + 14 * v1, *MEMORY[0x277D5ED98], v7);
  *(v4 + 14 * v1 + v22) = 14;
  v23 = *(v0 + 48);
  v8(v4 + 15 * v1, *MEMORY[0x277D5EE20], v7);
  *(v4 + 15 * v1 + v23) = 15;
  v24 = *(v0 + 48);
  v8(v4 + 16 * v1, *MEMORY[0x277D5ED78], v7);
  *(v4 + 16 * v1 + v24) = 16;
  v25 = *(v0 + 48);
  v8(v4 + 17 * v1, *MEMORY[0x277D5ED88], v7);
  *(v4 + 17 * v1 + v25) = 17;
  v26 = *(v0 + 48);
  v8(v4 + 18 * v1, *MEMORY[0x277D5ED48], v7);
  *(v4 + 18 * v1 + v26) = 18;
  v27 = *(v0 + 48);
  v8(v4 + 19 * v1, *MEMORY[0x277D5ED70], v7);
  *(v4 + 19 * v1 + v27) = 19;
  v28 = *(v0 + 48);
  v8(v4 + 20 * v1, *MEMORY[0x277D5EDC8], v7);
  *(v4 + 20 * v1 + v28) = 20;
  v29 = *(v0 + 48);
  v8(v4 + 21 * v1, *MEMORY[0x277D5EDF0], v7);
  *(v4 + 21 * v1 + v29) = 21;
  v30 = *(v0 + 48);
  v8(v4 + 22 * v1, *MEMORY[0x277D5ED58], v7);
  *(v4 + 22 * v1 + v30) = 22;
  v31 = *(v0 + 48);
  v8(v4 + 23 * v1, *MEMORY[0x277D5EDD0], v7);
  *(v4 + 23 * v1 + v31) = 23;
  v32 = *(v0 + 48);
  v8(v4 + 24 * v1, *MEMORY[0x277D5ED40], v7);
  *(v4 + 24 * v1 + v32) = 24;
  v33 = *(v0 + 48);
  v8(v4 + 25 * v1, *MEMORY[0x277D5EDA8], v7);
  *(v4 + 25 * v1 + v33) = 25;
  v34 = *(v0 + 48);
  v8(v4 + 26 * v1, *MEMORY[0x277D5ED28], v7);
  *(v4 + 26 * v1 + v34) = 26;
  v35 = *(v0 + 48);
  v8(v4 + 27 * v1, *MEMORY[0x277D5ED50], v7);
  *(v4 + 27 * v1 + v35) = 27;
  v36 = *(v0 + 48);
  v8(v4 + 28 * v1, *MEMORY[0x277D5EDE0], v7);
  *(v4 + 28 * v1 + v36) = 29;
  v37 = *(v0 + 48);
  v8(v4 + 29 * v1, *MEMORY[0x277D5EE00], v7);
  *(v4 + 29 * v1 + v37) = 29;
  v38 = *(v0 + 48);
  v8(v4 + 30 * v1, *MEMORY[0x277D5ED60], v7);
  *(v4 + 30 * v1 + v38) = 29;
  v39 = v4 + 31 * v1;
  v40 = *(v0 + 48);
  v8(v39, *MEMORY[0x277D5EE28], v7);
  *(v39 + v40) = 29;
  v41 = sub_266212004(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_280069490 = v41;
  return result;
}

SiriAudioIntentUtils::CommonAudio::MediaType_optional __swiftcall CommonAudio.MediaType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266213150();

  v5 = 0;
  v6 = 11;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
LABEL_24:
      v6 = v5;
      break;
    case 11:
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    default:
      v6 = 29;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t CommonAudio.MediaType.rawValue.getter()
{
  result = 0x65726E6567;
  switch(*v0)
  {
    case 1:
      result = 0x747369747261;
      break;
    case 2:
      result = 0x6F65646976;
      break;
    case 3:
      result = 0x7473696C79616C70;
      break;
    case 4:
      result = 0x6E6F6974617473;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6F68536F69646172;
      break;
    case 7:
      result = 1735290739;
      break;
    case 8:
      result = 0x5573656E755469;
      break;
    case 9:
      result = 0x74736163646F70;
      break;
    case 0xA:
      result = 0x646956636973756DLL;
      break;
    case 0xB:
      result = 0x636973756DLL;
      break;
    case 0xC:
      result = 1937204590;
      break;
    case 0xD:
      result = 0x776F68537674;
      break;
    case 0xE:
      result = 0x6D75626C61;
      break;
    case 0xF:
      result = 0x656E6F74676E6972;
      break;
    case 0x10:
      result = 28780;
      break;
    case 0x11:
      result = 2003789939;
      break;
    case 0x12:
      result = 0x6174536F69646172;
      break;
    case 0x13:
      result = 28773;
      break;
    case 0x14:
      result = 0x656C676E6973;
      break;
    case 0x15:
      result = 0x65646F73697065;
      break;
    case 0x16:
      result = 0x5374736163646F70;
      break;
    case 0x17:
      result = 0x73646E756F73;
      break;
    case 0x18:
      result = 0x74616C69706D6F63;
      break;
    case 0x19:
      result = 0x6569766F6DLL;
      break;
    case 0x1A:
      result = 0x6F6F426F69647561;
      break;
    case 0x1B:
      result = 0x616C50636973756DLL;
      break;
    case 0x1C:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26621045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_266213140();
  }

  return v11 & 1;
}

uint64_t sub_26621051C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_266213170();
  a3(v4);
  sub_266212FC0();

  return sub_266213190();
}

uint64_t sub_2662105A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_266212FC0();
}

uint64_t sub_266210624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_266213170();
  a4(v5);
  sub_266212FC0();

  return sub_266213190();
}

unint64_t sub_26621069C@<X0>(unint64_t *a1@<X8>)
{
  result = CommonAudio.MediaType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CommonAudio.MediaSettingName.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_266213130();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_266210734()
{
  sub_266213170();
  sub_266212FC0();
  return sub_266213190();
}

uint64_t sub_2662107A0(uint64_t a1)
{
  sub_266213170();
  sub_266212FC0();
  return sub_266213190();
}

uint64_t sub_2662107F0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_266213130();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_266210888(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_26621094C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2662108E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800679B0, &qword_266213550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26621094C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266210A18(v11, 0, 0, 1, a1, a2);
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
    sub_26621232C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_266210A18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_266210B24(a5, a6);
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
    result = sub_2662130C0();
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

void *sub_266210B24(uint64_t a1, unint64_t a2)
{
  v3 = sub_266210B70(a1, a2);
  sub_266210CA0(&unk_2877D60B0);
  return v3;
}

void *sub_266210B70(uint64_t a1, unint64_t a2)
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

  v6 = sub_266210D8C(v5, 0);
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

  result = sub_2662130C0();
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
        v10 = sub_266212FD0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_266210D8C(v10, 0);
        result = sub_266213080();
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