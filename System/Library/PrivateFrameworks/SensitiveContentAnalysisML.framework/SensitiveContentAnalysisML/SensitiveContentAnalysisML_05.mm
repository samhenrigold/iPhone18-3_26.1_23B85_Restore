uint64_t sub_1B8ABC2DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965F0, &unk_1B8AF6780);
  result = sub_1B8AF0A68();
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
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
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

uint64_t sub_1B8ABC530(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965D8, &qword_1B8AF6748);
  result = sub_1B8AF0A68();
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
      sub_1B8AF1018();

      sub_1B8AF05F8();
      result = sub_1B8AF1038();
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

uint64_t sub_1B8ABC768(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1B8AF1018();
  AFMModel.Task.rawValue.getter();
  sub_1B8AF05F8();

  v6 = sub_1B8AF1038();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_48:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1B8ABD0B8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
    goto LABEL_51;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xEA00000000007974;
    v11 = 0x6566615365646F63;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        break;
      case 2:
        v11 = 0x646E417367616C66;
        v10 = 0xEC0000007370614DLL;
        break;
      case 3:
        v10 = 0xE800000000000000;
        v11 = 0x4E4F534A6373696DLL;
        break;
      case 4:
        v11 = 0x6F43656C706F6570;
        v10 = 0xEB00000000746E75;
        break;
      case 5:
        v11 = 0x6544656C706F6570;
        v10 = 0xEF6E6F6974636574;
        break;
      case 6:
        v11 = 0x7365627570657270;
        v10 = 0xEC000000746E6563;
        break;
      case 7:
        v11 = 0xD000000000000014;
        v10 = 0x80000001B8B05560;
        break;
      case 8:
        v11 = 0xD000000000000017;
        v10 = 0x80000001B8B05580;
        break;
      case 9:
        v11 = 0xD000000000000020;
        v10 = 0x80000001B8B055A0;
        break;
      case 0xA:
        v11 = 0xD000000000000014;
        v10 = 0x80000001B8B055D0;
        break;
      case 0xB:
        v11 = 0xD000000000000013;
        v10 = 0x80000001B8B055F0;
        break;
      case 0xC:
        v11 = 0x6566615374786574;
        break;
      case 0xD:
        v11 = 0x65636E656C6F6976;
        v10 = 0xEF65726F47646E41;
        break;
      default:
        v11 = 0xD000000000000014;
        v10 = 0x80000001B8B05500;
        break;
    }

    v12 = 0x6566615365646F63;
    v13 = 0xEA00000000007974;
    switch(a2)
    {
      case 1:
        goto LABEL_41;
      case 2:
        v14 = 0x646E417367616C66;
        v15 = 1936744781;
        goto LABEL_38;
      case 3:
        v13 = 0xE800000000000000;
        if (v11 != 0x4E4F534A6373696DLL)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 4:
        v13 = 0xEB00000000746E75;
        if (v11 != 0x6F43656C706F6570)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 5:
        v13 = 0xEF6E6F6974636574;
        if (v11 != 0x6544656C706F6570)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 6:
        v14 = 0x7365627570657270;
        v15 = 1953391971;
LABEL_38:
        v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v14)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 7:
        v13 = 0x80000001B8B05560;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 8:
        v13 = 0x80000001B8B05580;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 9:
        v13 = 0x80000001B8B055A0;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 10:
        v12 = 0xD000000000000014;
        v13 = 0x80000001B8B055D0;
LABEL_41:
        if (v11 == v12)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 11:
        v13 = 0x80000001B8B055F0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 12:
        if (v11 != 0x6566615374786574)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 13:
        v13 = 0xEF65726F47646E41;
        if (v11 != 0x65636E656C6F6976)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      default:
        v13 = 0x80000001B8B05500;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_43;
        }

LABEL_42:
        if (v10 != v13)
        {
LABEL_43:
          v16 = sub_1B8AF0EA8();

          if (v16)
          {
            goto LABEL_50;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_48;
          }

          continue;
        }

LABEL_50:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_51:
        *a1 = a2;
        return result;
    }
  }
}

BOOL sub_1B8ABCCDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  v6 = *v4;
  sub_1B8AF1018();
  sub_1B8AF05F8();
  v7 = sub_1B8AF1038() & ~(-1 << *(v6 + 32));
  v8 = (1 << v7) & *(v6 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    a4(v7, isUniquelyReferenced_nonNull_native);
    *v4 = v11;
  }

  return v8 == 0;
}

uint64_t sub_1B8ABCDAC(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_1B8AF1018();
  v18 = a2;
  if (a2)
  {
    v5 = 0x65636E656C6F6976;
  }

  else
  {
    v5 = 1701998439;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  sub_1B8AF05F8();

  v7 = sub_1B8AF1038();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v4 + 48) + v9) ? 0x65636E656C6F6976 : 1701998439;
      v12 = *(*(v4 + 48) + v9) ? 0xE800000000000000 : 0xE400000000000000;
      if (v11 == v5 && v12 == v6)
      {
        break;
      }

      v14 = sub_1B8AF0EA8();

      if (v14)
      {
        goto LABEL_23;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v16 = *(*(v4 + 48) + v9);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v16 = v18 & 1;
    sub_1B8ABD8D0(v18 & 1, v9, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_1B8ABCF68(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B8AF1018();
  sub_1B8AF05F8();
  v8 = sub_1B8AF1038();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B8AF0EA8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1B8ABDAD0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B8ABD0B8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B8ABB198(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_1B8A87668();
        goto LABEL_55;
      }

      sub_1B8ABBCDC(v7 + 1);
    }

    v9 = *v3;
    sub_1B8AF1018();
    AFMModel.Task.rawValue.getter();
    sub_1B8AF05F8();

    result = sub_1B8AF1038();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xEA00000000007974;
        v13 = 0x6566615365646F63;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            break;
          case 2:
            v13 = 0x646E417367616C66;
            v12 = 0xEC0000007370614DLL;
            break;
          case 3:
            v12 = 0xE800000000000000;
            v13 = 0x4E4F534A6373696DLL;
            break;
          case 4:
            v13 = 0x6F43656C706F6570;
            v12 = 0xEB00000000746E75;
            break;
          case 5:
            v13 = 0x6544656C706F6570;
            v12 = 0xEF6E6F6974636574;
            break;
          case 6:
            v13 = 0x7365627570657270;
            v12 = 0xEC000000746E6563;
            break;
          case 7:
            v13 = 0xD000000000000014;
            v12 = 0x80000001B8B05560;
            break;
          case 8:
            v13 = 0xD000000000000017;
            v12 = 0x80000001B8B05580;
            break;
          case 9:
            v13 = 0xD000000000000020;
            v12 = 0x80000001B8B055A0;
            break;
          case 0xA:
            v13 = 0xD000000000000014;
            v12 = 0x80000001B8B055D0;
            break;
          case 0xB:
            v13 = 0xD000000000000013;
            v12 = 0x80000001B8B055F0;
            break;
          case 0xC:
            v13 = 0x6566615374786574;
            break;
          case 0xD:
            v13 = 0x65636E656C6F6976;
            v12 = 0xEF65726F47646E41;
            break;
          default:
            v13 = 0xD000000000000014;
            v12 = 0x80000001B8B05500;
            break;
        }

        v14 = 0x6566615365646F63;
        v15 = 0xEA00000000007974;
        switch(v6)
        {
          case 1:
            goto LABEL_48;
          case 2:
            v16 = 0x646E417367616C66;
            v17 = 1936744781;
            goto LABEL_45;
          case 3:
            v15 = 0xE800000000000000;
            if (v13 != 0x4E4F534A6373696DLL)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 4:
            v15 = 0xEB00000000746E75;
            if (v13 != 0x6F43656C706F6570)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 5:
            v15 = 0xEF6E6F6974636574;
            if (v13 != 0x6544656C706F6570)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 6:
            v16 = 0x7365627570657270;
            v17 = 1953391971;
LABEL_45:
            v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v13 != v16)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 7:
            v15 = 0x80000001B8B05560;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 8:
            v15 = 0x80000001B8B05580;
            if (v13 != 0xD000000000000017)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 9:
            v15 = 0x80000001B8B055A0;
            if (v13 != 0xD000000000000020)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 10:
            v14 = 0xD000000000000014;
            v15 = 0x80000001B8B055D0;
LABEL_48:
            if (v13 == v14)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          case 11:
            v15 = 0x80000001B8B055F0;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 12:
            if (v13 != 0x6566615374786574)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          case 13:
            v15 = 0xEF65726F47646E41;
            if (v13 != 0x65636E656C6F6976)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          default:
            v15 = 0x80000001B8B05500;
            if (v13 != 0xD000000000000014)
            {
              goto LABEL_50;
            }

LABEL_49:
            if (v12 == v15)
            {
              goto LABEL_58;
            }

LABEL_50:
            v18 = sub_1B8AF0EA8();

            if (v18)
            {
              goto LABEL_59;
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

LABEL_55:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_58:

LABEL_59:
    result = sub_1B8AF0FA8();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }

  return result;
}

unint64_t sub_1B8ABD620(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1B8ABB5D4(v3 + 1, &qword_1EBA965F8, &unk_1B8AFA3E0, 0x79656C696D73, 0xE600000000000000);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1B8ABC0E8(v3 + 1, &qword_1EBA965F8, &unk_1B8AFA3E0, 0x79656C696D73, 0xE600000000000000);
LABEL_8:
      v6 = *v2;
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1B8A877A8();
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
  result = sub_1B8AF0FA8();
  __break(1u);
  return result;
}

unint64_t sub_1B8ABD770(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1B8ABB5D4(v3 + 1, &qword_1EBA96600, &qword_1B8AF67A0, 0x70616373646E616CLL, 0xE900000000000065);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1B8ABC0E8(v3 + 1, &qword_1EBA96600, &qword_1B8AF67A0, 0x70616373646E616CLL, 0xE900000000000065);
LABEL_8:
      v6 = *v2;
      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1B8A877BC();
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
  result = sub_1B8AF0FA8();
  __break(1u);
  return result;
}

uint64_t sub_1B8ABD8D0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v22 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1B8ABB7F8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B8A878CC();
      goto LABEL_28;
    }

    sub_1B8ABC2DC(v6 + 1);
  }

  v8 = *v3;
  sub_1B8AF1018();
  if (v5)
  {
    v9 = 0x65636E656C6F6976;
  }

  else
  {
    v9 = 1701998439;
  }

  if (v5)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  sub_1B8AF05F8();

  result = sub_1B8AF1038();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v8 + 48) + a2) ? 0x65636E656C6F6976 : 1701998439;
      v14 = *(*(v8 + 48) + a2) ? 0xE800000000000000 : 0xE400000000000000;
      if (v13 == v9 && v14 == v10)
      {
        goto LABEL_31;
      }

      v16 = sub_1B8AF0EA8();

      if (v16)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
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
LABEL_31:

LABEL_32:
  result = sub_1B8AF0FA8();
  __break(1u);
  return result;
}

uint64_t sub_1B8ABDAD0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B8ABBA7C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B8A87A0C();
      goto LABEL_16;
    }

    sub_1B8ABC530(v8 + 1);
  }

  v10 = *v4;
  sub_1B8AF1018();
  sub_1B8AF05F8();
  result = sub_1B8AF1038();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B8AF0EA8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B8AF0FA8();
  __break(1u);
  return result;
}

void *sub_1B8ABDC50(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1B8ABDCE0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B8ABDCE0(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v52 = result;
  if (a4[2] >= *(a3 + 16))
  {
LABEL_38:
    v28 = 0;
    v29 = v4 + 56;
    v30 = 1 << *(v4 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v56 = 0;
    v58 = v31 & *(v4 + 56);
    v50 = (v30 + 63) >> 6;
    v32 = a4 + 7;
LABEL_42:
    while (v58)
    {
      v33 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
LABEL_49:
      v54 = v33 | (v28 << 6);
      v36 = *(*(v4 + 48) + v54);
      sub_1B8AF1018();
      if (v36)
      {
        v37 = 0x65636E656C6F6976;
      }

      else
      {
        v37 = 1701998439;
      }

      if (v36)
      {
        v38 = 0xE800000000000000;
      }

      else
      {
        v38 = 0xE400000000000000;
      }

      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v39 = a4;
      v40 = -1 << *(a4 + 32);
      v41 = result & ~v40;
      if ((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (1)
        {
          v43 = *(v39[6] + v41) ? 0x65636E656C6F6976 : 1701998439;
          v44 = *(v39[6] + v41) ? 0xE800000000000000 : 0xE400000000000000;
          if (v43 == v37 && v44 == v38)
          {
            break;
          }

          v46 = sub_1B8AF0EA8();

          if (v46)
          {
            goto LABEL_71;
          }

          v41 = (v41 + 1) & v42;
          v39 = a4;
          if (((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            v4 = a3;
            goto LABEL_42;
          }
        }

LABEL_71:
        *(v52 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        v47 = __OFADD__(v56++, 1);
        v4 = a3;
        if (v47)
        {
          __break(1u);
LABEL_74:
          v5 = v56;
          goto LABEL_75;
        }
      }
    }

    v34 = v28;
    while (1)
    {
      v28 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v28 >= v50)
      {
        goto LABEL_74;
      }

      v35 = *(v29 + 8 * v28);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v58 = (v35 - 1) & v35;
        goto LABEL_49;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v9 = a4[7];
    v7 = a4 + 7;
    v8 = v9;
    v10 = 1 << *(v7 - 24);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v53 = v11 & v8;
    v48 = (v10 + 63) >> 6;
    v49 = v7;
    v57 = a3 + 56;
LABEL_6:
    while (v53)
    {
      v12 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v13 = v12 | (v6 << 6);
      v4 = a3;
      v14 = a4;
LABEL_13:
      v17 = *(v14[6] + v13);
      sub_1B8AF1018();
      if (v17)
      {
        v18 = 0x65636E656C6F6976;
      }

      else
      {
        v18 = 1701998439;
      }

      if (v17)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      v4 = 1 << v21;
      if (((1 << v21) & *(v57 + 8 * (v21 >> 6))) != 0)
      {
        v55 = v5;
        v23 = ~v20;
        while (1)
        {
          v24 = *(*(a3 + 48) + v21) ? 0x65636E656C6F6976 : 1701998439;
          v25 = *(*(a3 + 48) + v21) ? 0xE800000000000000 : 0xE400000000000000;
          if (v24 == v18 && v25 == v19)
          {
            break;
          }

          v27 = sub_1B8AF0EA8();

          if (v27)
          {
            goto LABEL_35;
          }

          v21 = (v21 + 1) & v23;
          v22 = v21 >> 6;
          v4 = 1 << v21;
          if ((*(v57 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
          {
            v5 = v55;
            goto LABEL_6;
          }
        }

LABEL_35:
        v52[v22] |= v4;
        v5 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }
    }

    v15 = v6;
    v4 = a3;
    v14 = a4;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v48)
      {
LABEL_75:

        return sub_1B8A8742C(v52, a2, v5, v4);
      }

      v16 = v49[v6];
      ++v15;
      if (v16)
      {
        v53 = (v16 - 1) & v16;
        v13 = __clz(__rbit64(v16)) | (v6 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8ABE1B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8ABE21C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B8ABEAB4();
  result = MEMORY[0x1B8CC6080](v2, &type metadata for AFMModel.Task, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B8ABC768(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B8ABE290(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1B8ABEB08();
  result = MEMORY[0x1B8CC6080](v1, &type metadata for BackgroundEstimator.Estimation.Classification, v2);
  v4 = result;
  if (v1)
  {
    do
    {
      LOBYTE(result) = sub_1B8ABCCDC(result, 0x70616373646E616CLL, 0xE900000000000065, sub_1B8ABD770);
      --v1;
    }

    while (v1);
    return v4;
  }

  return result;
}

uint64_t sub_1B8ABE324(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8CC6080](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B8ABCF68(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B8ABE3BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B8ABE420()
{
  result = qword_1EBA96EB0;
  if (!qword_1EBA96EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96EB0);
  }

  return result;
}

unint64_t sub_1B8ABE478()
{
  result = qword_1EBA96EB8;
  if (!qword_1EBA96EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96EC0, &qword_1B8AFA1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96EB8);
  }

  return result;
}

unint64_t sub_1B8ABE4E0()
{
  result = qword_1EBA96EC8;
  if (!qword_1EBA96EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96EC8);
  }

  return result;
}

uint64_t sub_1B8ABE55C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8ABE594(uint64_t a1)
{
  result = sub_1B8AF0328();
  if (v2 <= 0x3F)
  {
    result = sub_1B8AF03A8();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MultimodalSanitizer.Configuration(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1B8ABE71C(uint64_t a1)
{
  sub_1B8AEFED8();
  if (v1 <= 0x3F)
  {
    sub_1B8ABE7B8(319);
    if (v2 <= 0x3F)
    {
      sub_1B8ABE868();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8ABE7B8(uint64_t a1)
{
  if (!qword_1EBA96EF0)
  {
    sub_1B8ABE814();
    v1 = sub_1B8AF08A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA96EF0);
    }
  }
}

unint64_t sub_1B8ABE814()
{
  result = qword_1EBA96EF8;
  if (!qword_1EBA96EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96EF8);
  }

  return result;
}

void sub_1B8ABE868()
{
  if (!qword_1EBA96F00)
  {
    v0 = sub_1B8AF0948();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA96F00);
    }
  }
}

void sub_1B8ABE8E0(uint64_t a1)
{
  sub_1B8AF04E8();
  if (v1 <= 0x3F)
  {
    sub_1B8ABE974(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8ABE974(uint64_t a1)
{
  if (!qword_1EBA96F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA96F20, &qword_1B8AFA328);
    v1 = sub_1B8AF0948();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA96F18);
    }
  }
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MultimodalSanitizer.SignalValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MultimodalSanitizer.SignalValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1B8ABEAB4()
{
  result = qword_1EBA96F28;
  if (!qword_1EBA96F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F28);
  }

  return result;
}

unint64_t sub_1B8ABEB08()
{
  result = qword_1EBA96F68;
  if (!qword_1EBA96F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F68);
  }

  return result;
}

uint64_t sub_1B8ABEB68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8ABEBB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B8ABEC10(void *a1)
{
  a1[1] = sub_1B8ABEC60();
  a1[2] = sub_1B8ABECB4();
  a1[3] = sub_1B8ABED08();
  a1[4] = sub_1B8ABED5C();
  a1[5] = sub_1B8ABEDB0();
  result = sub_1B8ABEE04();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8ABEC60()
{
  result = qword_1EBA96F80;
  if (!qword_1EBA96F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F80);
  }

  return result;
}

unint64_t sub_1B8ABECB4()
{
  result = qword_1EBA96F88;
  if (!qword_1EBA96F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F88);
  }

  return result;
}

unint64_t sub_1B8ABED08()
{
  result = qword_1EBA96F90;
  if (!qword_1EBA96F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F90);
  }

  return result;
}

unint64_t sub_1B8ABED5C()
{
  result = qword_1EBA96F98;
  if (!qword_1EBA96F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96F98);
  }

  return result;
}

unint64_t sub_1B8ABEDB0()
{
  result = qword_1EBA96FA0;
  if (!qword_1EBA96FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FA0);
  }

  return result;
}

unint64_t sub_1B8ABEE04()
{
  result = qword_1EBA96FA8;
  if (!qword_1EBA96FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FA8);
  }

  return result;
}

uint64_t sub_1B8ABEE58(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FB0, &qword_1B8AFA600);
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FB8, &qword_1B8AFA608);
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96FC0, &unk_1B8AFA610);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1B8ABF38C();
  v12 = v30;
  sub_1B8AF1048();
  if (!v12)
  {
    v26 = 0;
    v30 = v8;
    v13 = sub_1B8AF0C78();
    v14 = (2 * *(v13 + 16)) | 1;
    v32 = v13;
    v33 = v13 + 32;
    v34 = 0;
    v35 = v14;
    v15 = sub_1B8AE4FD0();
    v16 = v7;
    if (v15 == 2 || v34 != v35 >> 1)
    {
      v19 = sub_1B8AF0B08();
      swift_allocError();
      v8 = v7;
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190);
      *v21 = &type metadata for MultimodalSanitizer.Error;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
      swift_willThrow();
      (*(v30 + 8))(v10, v7);
    }

    else
    {
      v36 = v15;
      if (v15)
      {
        v37 = 1;
        sub_1B8ABF3E0();
        v17 = v26;
        sub_1B8AF0BF8();
        v18 = v30;
        if (!v17)
        {
          v25 = v27;
          v8 = sub_1B8AF0C18();
          (*(v29 + 8))(v3, v25);
          (*(v18 + 8))(v10, v16);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      else
      {
        v37 = 0;
        sub_1B8ABF434();
        v23 = v26;
        sub_1B8AF0BF8();
        v24 = v30;
        if (!v23)
        {
          v8 = sub_1B8AF0C18();
          (*(v28 + 8))(v6, v4);
          (*(v24 + 8))(v10, v16);
          goto LABEL_8;
        }
      }

      (*(v30 + 8))(v10, v16);
    }

LABEL_8:
    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v8;
}

unint64_t sub_1B8ABF38C()
{
  result = qword_1EBA96FC8;
  if (!qword_1EBA96FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FC8);
  }

  return result;
}

unint64_t sub_1B8ABF3E0()
{
  result = qword_1EBA96FD0;
  if (!qword_1EBA96FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FD0);
  }

  return result;
}

unint64_t sub_1B8ABF434()
{
  result = qword_1EBA96FD8;
  if (!qword_1EBA96FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FD8);
  }

  return result;
}

unint64_t sub_1B8ABF4BC()
{
  result = qword_1EBA96FF8;
  if (!qword_1EBA96FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA96FF8);
  }

  return result;
}

unint64_t sub_1B8ABF514()
{
  result = qword_1EBA97000;
  if (!qword_1EBA97000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97000);
  }

  return result;
}

unint64_t sub_1B8ABF56C()
{
  result = qword_1EBA97008;
  if (!qword_1EBA97008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97008);
  }

  return result;
}

unint64_t sub_1B8ABF5C4()
{
  result = qword_1EBA97010;
  if (!qword_1EBA97010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97010);
  }

  return result;
}

unint64_t sub_1B8ABF61C()
{
  result = qword_1EBA97018;
  if (!qword_1EBA97018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97018);
  }

  return result;
}

unint64_t sub_1B8ABF674()
{
  result = qword_1EBA97020;
  if (!qword_1EBA97020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97020);
  }

  return result;
}

unint64_t sub_1B8ABF6CC()
{
  result = qword_1EBA97028;
  if (!qword_1EBA97028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97028);
  }

  return result;
}

unint64_t sub_1B8ABF724()
{
  result = qword_1EBA97030;
  if (!qword_1EBA97030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97030);
  }

  return result;
}

unint64_t sub_1B8ABF77C()
{
  result = qword_1EBA97038;
  if (!qword_1EBA97038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97038);
  }

  return result;
}

uint64_t sub_1B8ABF8C4()
{
  v1 = (v0 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B8ABF988(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B8ABF9E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B8ABFAFC()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8ABFB94(int a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SCMLPeopleDetectionAttribute.__allocating_init(term:gender:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SCMLPeopleDetectionAttribute.init(term:gender:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = &v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for SCMLPeopleDetectionAttribute();
  return objc_msgSendSuper2(&v6, sel_init);
}

BOOL sub_1B8ABFD04(uint64_t a1)
{
  sub_1B8A8975C(a1, v12, &qword_1EBA97050, &qword_1B8AFA9C0);
  if (v13)
  {
    type metadata accessor for SCMLPeopleDetectionAttribute();
    if (swift_dynamicCast())
    {
      v2 = (v1 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
      swift_beginAccess();
      v3 = *v2;
      v4 = v2[1];
      v5 = &v11[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term];
      swift_beginAccess();
      v6 = v3 == *v5 && v4 == *(v5 + 1);
      if (v6 || (sub_1B8AF0EA8() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
        swift_beginAccess();
        v8 = *(v1 + v7);
        v9 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
        swift_beginAccess();
        LODWORD(v9) = *&v11[v9];

        return v8 == v9;
      }
    }
  }

  else
  {
    sub_1B8A897C4(v12, &qword_1EBA97050, &qword_1B8AFA9C0);
  }

  return 0;
}

uint64_t sub_1B8ABFF60()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8ABFFF8(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8AC00F0()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC0188(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8AC0280()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC0318(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8AC0410()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC04A8(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B8AC05A0()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC0638(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1B8AC0900(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  if (*(a1 + v4))
  {

    v5 = sub_1B8AF0808();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1B8AC09E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v6 = sub_1B8AF0818();
  }

  else
  {
    v6 = 0;
  }

  v7 = *a4;
  swift_beginAccess();
  *(a1 + v7) = v6;
}

uint64_t sub_1B8AC0A64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1B8AC0AB8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_1B8AC0BC4()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8AC0C5C(char a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

_BYTE *SCMLPersonAttributes.__allocating_init(specific:isGroup:hasAge:hasGender:hasEthnicity:age:gender:ethnicity:hasImplicitCategoryRequiringPersonalization:)(char a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = objc_allocWithZone(v9);
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity] = 0;
  *&v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age] = 0;
  *&v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender] = 0;
  *&v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity] = 0;
  v14[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization] = 0;
  v31.receiver = v14;
  v31.super_class = v9;
  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  v15[v16] = a1;
  v17 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  v15[v17] = a2;
  v18 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  v15[v18] = a3;
  v19 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  v15[v19] = a4;
  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  v15[v20] = a5;
  v21 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age;
  swift_beginAccess();
  *&v15[v21] = a6;
  v22 = v15;

  v23 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  *&v22[v23] = a7;

  v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity;
  swift_beginAccess();
  *&v22[v24] = a8;

  v25 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  v22[v25] = a9;

  return v22;
}

_BYTE *SCMLPersonAttributes.init(specific:isGroup:hasAge:hasGender:hasEthnicity:age:gender:ethnicity:hasImplicitCategoryRequiringPersonalization:)(char a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity] = 0;
  *&v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age] = 0;
  *&v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender] = 0;
  *&v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity] = 0;
  v9[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization] = 0;
  v30.receiver = v9;
  v30.super_class = type metadata accessor for SCMLPersonAttributes();
  v14 = objc_msgSendSuper2(&v30, sel_init);
  v15 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  v14[v15] = a1;
  v16 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  v14[v16] = a2;
  v17 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  v14[v17] = a3;
  v18 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  v14[v18] = a4;
  v19 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  v14[v19] = a5;
  v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age;
  swift_beginAccess();
  *&v14[v20] = a6;
  v21 = v14;

  v22 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  *&v21[v22] = a7;

  v23 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity;
  swift_beginAccess();
  *&v21[v23] = a8;

  v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  v21[v24] = a9;

  return v21;
}

uint64_t sub_1B8AC1190(unint64_t a1, unint64_t a2)
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

    v4 = type metadata accessor for SCMLPeopleDetectionAttribute();
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
          v15 = MEMORY[0x1B8CC62C0](v12 - 4, v3);
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

        v16 = MEMORY[0x1B8CC62C0](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1B8AF0918();

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
      v18 = sub_1B8AF0918();

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
    v5 = sub_1B8AF0BA8();
  }

  result = sub_1B8AF0BA8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1B8AC13CC(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1B8AF0EA8() & 1) == 0)
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

uint64_t sub_1B8AC145C(uint64_t a1)
{
  sub_1B8A8975C(a1, v30, &qword_1EBA97050, &qword_1B8AFA9C0);
  if (!v31)
  {
    sub_1B8A897C4(v30, &qword_1EBA97050, &qword_1B8AFA9C0);
    goto LABEL_14;
  }

  type metadata accessor for SCMLPersonAttributes();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v27 = 0;
    return v27 & 1;
  }

  v2 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  LODWORD(v2) = *(v1 + v2);
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  if (v2 != v29[v3] || (v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup, swift_beginAccess(), LODWORD(v4) = *(v1 + v4), v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup, swift_beginAccess(), v4 != v29[v5]) || (v6 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge, swift_beginAccess(), LODWORD(v6) = *(v1 + v6), v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge, swift_beginAccess(), v6 != v29[v7]) || (v8 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender, swift_beginAccess(), LODWORD(v8) = *(v1 + v8), v9 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender, swift_beginAccess(), v8 != v29[v9]) || (v10 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity, swift_beginAccess(), LODWORD(v10) = *(v1 + v10), v11 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity, swift_beginAccess(), v10 != v29[v11]) || (swift_beginAccess(), v12 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age, swift_beginAccess(), v13 = *&v29[v12], , v14 = , v15 = sub_1B8AC92D8(v14, v13), , , !v15) || (swift_beginAccess(), v16 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender, swift_beginAccess(), v17 = *&v29[v16], , v18 = , v19 = sub_1B8AC93A4(v18, v17), , , !v19) || (swift_beginAccess(), v20 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity, swift_beginAccess(), v21 = *&v29[v20], , v22 = , v23 = sub_1B8AC92D8(v22, v21), , , !v23))
  {

    goto LABEL_14;
  }

  v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  v25 = *(v1 + v24);
  v26 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  LOBYTE(v26) = v29[v26];

  v27 = v25 ^ v26 ^ 1;
  return v27 & 1;
}

uint64_t sub_1B8AC1800(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1B8AF0A18();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1B8A897C4(v10, &qword_1EBA97050, &qword_1B8AFA9C0);
  return v8 & 1;
}

uint64_t SCMLPersonAttributes.__allocating_init(_:)(uint64_t a1)
{
  v1 = sub_1B8AC8A74(a1);

  return v1;
}

id SCMLPersonAttributes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B8AC19D4()
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0);
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v2 = &v11 - v1;
  v15 = MEMORY[0x1E69E7CC0];
  v3 = 3;
  sub_1B8AD84AC(0, 3, 0);
  v4 = v15;
  v5 = &unk_1F37470E8;
  do
  {
    v7 = *(v5 - 1);
    v6 = *v5;
    v13 = 25180;
    v14 = 0xE200000000000000;

    MEMORY[0x1B8CC5F50](v7, v6);

    MEMORY[0x1B8CC5F50](25180, 0xE200000000000000);

    sub_1B8AF0178();

    v15 = v4;
    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_1B8AD84AC((v8 > 1), v9 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v9 + 1;
    result = (*(v0 + 32))(v4 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v9, v2, v12);
    v5 += 2;
    --v3;
  }

  while (v3);
  off_1EDB74E18 = v4;
  return result;
}

uint64_t sub_1B8AC1BD8()
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0);
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v2 = &v17 - v1;
  v21 = MEMORY[0x1E69E7CC0];
  sub_1B8AD84AC(0, 2, 0);
  v3 = v21;
  v4 = *aChink;
  v5 = unk_1F3747138;
  v19 = 25180;
  v20 = 0xE200000000000000;

  MEMORY[0x1B8CC5F50](v4, v5);

  MEMORY[0x1B8CC5F50](25180, 0xE200000000000000);

  sub_1B8AF0178();

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (v7 >= v6 >> 1)
  {
    sub_1B8AD84AC((v6 > 1), v7 + 1, 1);
    v3 = v21;
  }

  *(v3 + 16) = v7 + 1;
  v8 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v9 = *(v0 + 72);
  v10 = v3 + v8 + v9 * v7;
  v11 = *(v0 + 32);
  v11(v10, v2, v18);
  v13 = *aMage;
  v12 = unk_1F3747148;
  v19 = 25180;
  v20 = 0xE200000000000000;

  MEMORY[0x1B8CC5F50](v13, v12);

  MEMORY[0x1B8CC5F50](25180, 0xE200000000000000);

  sub_1B8AF0178();

  v21 = v3;
  v15 = *(v3 + 16);
  v14 = *(v3 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1B8AD84AC((v14 > 1), v15 + 1, 1);
    v3 = v21;
  }

  *(v3 + 16) = v15 + 1;
  result = (v11)(v3 + v8 + v9 * v15, v2, v18);
  off_1EDB74A18 = v3;
  return result;
}

uint64_t sub_1B8AC1FD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B8AC2030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t SCMLPeopleDetectorImplResult.init(result:text:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v127 = a4;
  v124 = a3;
  v143 = *MEMORY[0x1E69E9840];
  v112 = sub_1B8AEFB28();
  v110 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970A8, &qword_1B8AFA9C8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v130 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v120 = v108 - v12;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0);
  v126 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = v108 - v13;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B8, &unk_1B8AFA9D8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = v108 - v14;
  v15 = sub_1B8AF06A8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectorImplResult_people;
  v20 = sub_1B8AE6928(MEMORY[0x1E69E7CC0]);
  v115 = v19;
  *&v4[v19] = v20;
  sub_1B8AF0698();
  v21 = sub_1B8AF0678();
  v23 = v22;
  (*(v16 + 8))(v18, v15);
  if (v23 >> 60 == 15)
  {
    goto LABEL_82;
  }

  v24 = objc_opt_self();
  v25 = sub_1B8AEFC18();
  *&v140 = 0;
  v26 = [v24 JSONObjectWithData:v25 options:0 error:&v140];

  if (!v26)
  {
    v64 = v140;

    v65 = sub_1B8AEFBD8();

    swift_willThrow();
LABEL_35:
    v66 = type metadata accessor for SCMLPeopleDetectorImplResult();
    v135.receiver = v7;
    v135.super_class = v66;
    v43 = objc_msgSendSuper2(&v135, sel_init);
    sub_1B8A89878(v21, v23);
    return v43;
  }

  v27 = v140;
  sub_1B8AF0A18();
  swift_unknownObjectRelease();
  v108[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96C28, &qword_1B8AF8FC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_35;
  }

  v108[0] = v23;
  v131 = v137;
  if (qword_1EDB74E10 != -1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v28 = 0;
    v29 = off_1EDB74E18;
    v118 = v126 + 16;
    v117 = v126 + 32;
    v116 = (v126 + 8);
    v109 = v7;
    v30 = v120;
    v119 = v21;
    v113 = off_1EDB74E18;
    do
    {
      v31 = v29[2];
      if (v28 == v31)
      {
        break;
      }

      if (v28 >= v31)
      {
        goto LABEL_78;
      }

      v32 = v7;
      v33 = &unk_1F37470C0 + 16 * v28;
      v34 = *(v33 + 5);
      v114 = *(v33 + 4);
      v35 = v126;
      v36 = v29 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v37 = *(v126 + 72);
      v121 = v28;
      v38 = *(v123 + 48);
      v39 = v122;
      v40 = v133;
      (*(v126 + 16))(&v122[v38], &v36[v37 * v28], v133);
      v41 = &v39[v38];
      v42 = v132;
      (*(v35 + 32))(v132, v41, v40);
      v125 = v34;

      v43 = v42;
      sub_1B8AF0168();
      if (v6)
      {
        (*v116)(v132, v133);

        sub_1B8A89878(v21, v108[0]);

        goto LABEL_36;
      }

      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970C0, &qword_1B8AFA9E8);
      v45 = *(v44 - 8);
      v129 = *(v45 + 48);
      v128 = (v45 + 48);
      if (v129(v30, 1, v44) == 1)
      {
        v7 = v32;
        (*v116)(v132, v133);

        sub_1B8A897C4(v30, &qword_1EBA970A8, &qword_1B8AFA9C8);
      }

      else
      {
        sub_1B8A897C4(v30, &qword_1EBA970A8, &qword_1B8AFA9C8);
        v46 = v131 + 64;
        v47 = 1 << *(v131 + 32);
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        else
        {
          v48 = -1;
        }

        v49 = v48 & *(v131 + 64);
        v50 = (v47 + 63) >> 6;

        v51 = 0;
        if (!v49)
        {
LABEL_17:
          if (v50 <= v51 + 1)
          {
            v53 = v51 + 1;
          }

          else
          {
            v53 = v50;
          }

          v54 = v53 - 1;
          while (1)
          {
            v52 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v52 >= v50)
            {
              v49 = 0;
              v138 = 0u;
              v139 = 0u;
              v137 = 0u;
              goto LABEL_25;
            }

            v49 = *(v46 + 8 * v52);
            ++v51;
            if (v49)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_76:
          __swift_destroy_boxed_opaque_existential_0(&v137);

          sub_1B8A89878(v119, v108[0]);
LABEL_36:

          type metadata accessor for SCMLPeopleDetectorImplResult();
          swift_deallocPartialClassInstance();
          return v43;
        }

        while (1)
        {
          v52 = v51;
LABEL_24:
          v55 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
          v56 = v55 | (v52 << 6);
          v57 = (*(v131 + 48) + 16 * v56);
          v58 = *v57;
          v59 = v57[1];
          sub_1B8A7BBE0(*(v131 + 56) + 32 * v56, &v136);
          *&v137 = v58;
          *(&v137 + 1) = v59;
          sub_1B8AAB328(&v136, &v138);

          v54 = v52;
LABEL_25:
          v140 = v137;
          v141 = v138;
          v142 = v139;
          if (!*(&v137 + 1))
          {
            v61 = v131;

            v62 = sub_1B8AE6A2C(&unk_1F3747150);
            sub_1B8A897C4(&unk_1F3747170, &qword_1EBA970C8, &qword_1B8AFA9F0);
            *(&v141 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970D0, &unk_1B8AFA9F8);
            *&v140 = v62;
            sub_1B8AAB328(&v140, &v137);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v136 = v61;
            sub_1B8AC5684(&v137, v114, v125, isUniquelyReferenced_nonNull_native);

            (*v116)(v132, v133);
            v131 = v136;
            goto LABEL_32;
          }

          v60 = v130;
          v43 = v132;
          sub_1B8AF0168();

          if (v129(v60, 1, v44) != 1)
          {
            break;
          }

          sub_1B8A897C4(v60, &qword_1EBA970A8, &qword_1B8AFA9C8);
          __swift_destroy_boxed_opaque_existential_0(&v141);
          v51 = v54;
          if (!v49)
          {
            goto LABEL_17;
          }
        }

        (*v116)(v132, v133);
        sub_1B8A897C4(v60, &qword_1EBA970A8, &qword_1B8AFA9C8);
        __swift_destroy_boxed_opaque_existential_0(&v141);
LABEL_32:
        v6 = 0;
        v7 = v109;
        v30 = v120;
      }

      v28 = v121 + 1;
      v21 = v119;
      v29 = v113;
    }

    while (v121 != 2);

    v21 = 0;
    v69 = v131 + 64;
    v68 = *(v131 + 64);
    v70 = 1 << *(v131 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & v68;
    v73 = (v70 + 63) >> 6;
    v128 = (v110 + 8);
    if ((v71 & v68) != 0)
    {
      break;
    }

LABEL_44:
    if (v73 <= v21 + 1)
    {
      v75 = v21 + 1;
    }

    else
    {
      v75 = v73;
    }

    v76 = v75 - 1;
    while (1)
    {
      v74 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v74 >= v73)
      {
        v72 = 0;
        v138 = 0u;
        v139 = 0u;
        v21 = v76;
        v137 = 0u;
        goto LABEL_53;
      }

      v72 = *(v69 + 8 * v74);
      ++v21;
      if (v72)
      {
        v21 = v74;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    swift_once();
  }

  while (1)
  {
    while (1)
    {
      v74 = v21;
LABEL_52:
      v77 = __clz(__rbit64(v72));
      v72 &= v72 - 1;
      v78 = v77 | (v74 << 6);
      v79 = (*(v131 + 48) + 16 * v78);
      v80 = *v79;
      v81 = v79[1];
      sub_1B8A7BBE0(*(v131 + 56) + 32 * v78, &v136);
      *&v137 = v80;
      *(&v137 + 1) = v81;
      sub_1B8AAB328(&v136, &v138);

LABEL_53:
      v140 = v137;
      v141 = v138;
      v142 = v139;
      v82 = *(&v137 + 1);
      if (!*(&v137 + 1))
      {

        v23 = v108[0];
        v21 = v119;
        goto LABEL_35;
      }

      v43 = v140;
      sub_1B8AAB328(&v141, &v137);
      if ((v43 || v82 != 0xE000000000000000) && (sub_1B8AF0EA8() & 1) == 0)
      {
        v83 = sub_1B8AC83F0(v43, v82);
        if (v6)
        {
          goto LABEL_76;
        }

        if (!v83)
        {
          sub_1B8A7BBE0(&v137, &v136);
          if (swift_dynamicCast())
          {
            break;
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v137);

      if (!v72)
      {
        goto LABEL_44;
      }
    }

    v129 = 0;
    v84 = v134;
    *&v136 = v43;
    *(&v136 + 1) = v82;
    v85 = v111;
    sub_1B8AEFB08();
    sub_1B8A3F920();
    v133 = sub_1B8AF09D8();
    v132 = v86;
    (*v128)(v85, v112);

    v130 = sub_1B8AC8A74(v84);

    v87 = v115;
    swift_beginAccess();
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v7;
    v90 = v88;
    v134 = *&v89[v87];
    v91 = v134;
    *&v89[v87] = 0x8000000000000000;
    v92 = v132;
    v93 = sub_1B8A3FC1C(v133, v132, MEMORY[0x1E69E60C8], sub_1B8A3FCB0);
    v95 = v91[2];
    v96 = (v94 & 1) == 0;
    v97 = __OFADD__(v95, v96);
    v98 = v95 + v96;
    if (v97)
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

    v99 = v94;
    if (v91[3] >= v98)
    {
      if ((v90 & 1) == 0)
      {
        v107 = v93;
        sub_1B8AC5BFC();
        v93 = v107;
      }

      goto LABEL_67;
    }

    sub_1B8AC45F8(v98, v90);
    v93 = sub_1B8A3FC1C(v133, v92, MEMORY[0x1E69E60C8], sub_1B8A3FCB0);
    if ((v99 & 1) != (v100 & 1))
    {
      break;
    }

LABEL_67:
    v7 = v109;
    v101 = v134;
    if (v99)
    {
      v102 = v134[7];
      v103 = *(v102 + 8 * v93);
      *(v102 + 8 * v93) = v130;
    }

    else
    {
      v134[(v93 >> 6) + 8] |= 1 << v93;
      v104 = (v101[6] + 16 * v93);
      *v104 = v133;
      v104[1] = v92;
      *(v101[7] + 8 * v93) = v130;
      v105 = v101[2];
      v97 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v97)
      {
        goto LABEL_81;
      }

      v101[2] = v106;
    }

    v6 = v129;
    *&v7[v115] = v101;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(&v137);
    if (!v72)
    {
      goto LABEL_44;
    }
  }

  result = sub_1B8AF0FB8();
  __break(1u);
  return result;
}

id SCMLPeopleDetectorImpl.init(onBehalfOf:modelManagerServicesUseCaseID:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v40 = a2;
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v49 = v4;
  v45 = OBJC_IVAR____TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl_logger;
  sub_1B8AF0398();
  v12 = sub_1B8AEFCC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v48 = a4;
  v14(v11, a4, v12);
  v15 = *(v13 + 56);
  v47 = v12;
  v15(v11, 0, 1, v12);
  v44 = type metadata accessor for AFMModel(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v18 = sub_1B8AF03A8();
  v19 = __swift_project_value_buffer(v18, qword_1EDB75B38);
  v20 = *(v18 - 8);
  v21 = *(v20 + 16);
  v43 = v17;
  v21(v16 + v17, v19, v18);
  v22 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v23 = sub_1B8AF0328();
  v24 = __swift_project_value_buffer(v23, qword_1EDB75B50);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v42 = v22;
  v26(v16 + v22, v24, v23);
  v53 = 0;
  sub_1B8A93BF0(v51);
  if (v5)
  {

    (*(v13 + 8))(v48, v47);
    sub_1B8A897C4(v11, &qword_1EBA96528, &unk_1B8AF64B0);
    v32 = *(v20 + 8);
    v31 = (v20 + 8);
    v32(v16 + v43, v18);
    (*(v25 + 8))(v16 + v42, v23);
    swift_deallocPartialClassInstance();
    v32(&v49[v45], v18);
    type metadata accessor for SCMLPeopleDetectorImpl(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v16 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v28 = v51[1];
    *v27 = v51[0];
    *(v27 + 16) = v28;
    *(v27 + 32) = v52;
    LOBYTE(v51[0]) = 0;
    v38 = v11;
    v29 = v11;
    v30 = v39;
    sub_1B8A8975C(v29, v39, &qword_1EBA96528, &unk_1B8AF64B0);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v34 = sub_1B8A8AB94(v51, v40, v46, v41, 0, v30);
    sub_1B8A897C4(v38, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v16 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v34;
    v35 = v49;
    *&v49[OBJC_IVAR____TtC26SensitiveContentAnalysisML22SCMLPeopleDetectorImpl_model] = v16;
    v36 = type metadata accessor for SCMLPeopleDetectorImpl(0);
    v50.receiver = v35;
    v50.super_class = v36;
    v31 = objc_msgSendSuper2(&v50, sel_init);
    (*(v13 + 8))(v48, v47);
  }

  return v31;
}

uint64_t sub_1B8AC3850(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8AC3874, 0, 0);
}

uint64_t sub_1B8AC3874()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1B8AC3918;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B8A834C4(v3, v2);
}

uint64_t sub_1B8AC3918(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1B8AC3BA0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1B8AF0668();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8AC3C2C, 0, 0);
}

uint64_t sub_1B8AC3C2C()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8AC3CD0;
  v3 = v0[4];
  v2 = v0[5];

  return sub_1B8A834C4(v3, v2);
}

uint64_t sub_1B8AC3CD0(void *a1)
{
  v4 = *v2;
  *(v4 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8AC3E4C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 24);

    (v5)[2](v5, a1, 0);
    _Block_release(v5);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1B8AC3E4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v3 = sub_1B8AEFBC8();

  (v2)[2](v2, 0, v3);
  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

id sub_1B8AC3F78(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1B8AC4058(uint64_t a1)
{
  sub_1B8AF1018();
  type metadata accessor for CFString(0);
  sub_1B8ACA394(&qword_1EBA970F0, 255, type metadata accessor for CFString, &unk_1B8AF6198);
  sub_1B8AEFF78();
  v2 = sub_1B8AF1038();

  return sub_1B8AC4214(a1, v2);
}

unint64_t sub_1B8AC4110(char a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  v2 = sub_1B8AF1038();

  return sub_1B8AC4324(a1 & 1, v2);
}

unint64_t sub_1B8AC41B0(uint64_t a1)
{
  sub_1B8AF0B88();
  v2 = sub_1B8AF05E8();

  return sub_1B8AC4460(a1, v2);
}

unint64_t sub_1B8AC4214(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B8ACA394(&qword_1EBA970F0, 255, type metadata accessor for CFString, &unk_1B8AF6198);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B8AEFF68();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B8AC4324(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x65636E656C6F6976;
    }

    else
    {
      v6 = 1701998439;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x65636E656C6F6976 : 1701998439;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1B8AF0EA8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B8AC4460(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1B8AF0B88();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_1B8AF0648();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1B8AC45F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97100, &qword_1B8AFAB58);
  v35 = v4;
  result = sub_1B8AF0BC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B8AC489C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97108, &unk_1B8AFAB60);
  v33 = v4;
  result = sub_1B8AF0BC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1B8AAB328(v24, v34);
      }

      else
      {
        sub_1B8A7BBE0(v24, v34);
      }

      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B8AAB328(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B8AC4B54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970E8, &qword_1B8AFD3D0);
  result = sub_1B8AF0BC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1B8AAB328(v21, v31);
      }

      else
      {
        sub_1B8A7BBE0(v21, v31);
        v22 = v20;
      }

      sub_1B8AF1018();
      type metadata accessor for CFString(0);
      sub_1B8ACA394(&qword_1EBA970F0, 255, type metadata accessor for CFString, &unk_1B8AF6198);
      sub_1B8AEFF78();
      result = sub_1B8AF1038();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1B8AAB328(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B8AC4E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97120, &unk_1B8AFD400);
  v34 = v4;
  result = sub_1B8AF0BC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B8AC50E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97118, &qword_1B8AFAB70);
  result = sub_1B8AF0BC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      v23 = (v21 + 12 * v20);
      v36 = *(v23 + 1);
      v37 = v23[8];
      v24 = v23[1];
      v25 = *v23;
      sub_1B8AF1018();
      sub_1B8AF05F8();

      result = sub_1B8AF1038();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 12 * v15;
      *v16 = v25;
      *(v16 + 1) = v24;
      *(v16 + 4) = v36;
      *(v16 + 8) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B8AC53C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970F8, &qword_1B8AFAB50);
  v37 = v4;
  result = sub_1B8AF0BC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1B8AF1018();
      sub_1B8AF05F8();
      result = sub_1B8AF1038();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_1B8AC5684(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8A3FC1C(a2, a3, MEMORY[0x1E69E60C8], sub_1B8A3FCB0);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B8AC5D68();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8AC489C(v16, a4 & 1);
    v11 = sub_1B8A3FC1C(a2, a3, MEMORY[0x1E69E60C8], sub_1B8A3FCB0);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B8AF0FB8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1B8AAB328(a1, v22);
  }

  else
  {
    sub_1B8AC5ABC(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1B8AC5824(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B8AC4058(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1B8AC5F0C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1B8AC4B54(v13, a3 & 1);
    v8 = sub_1B8AC4058(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1B8AF0FB8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_1B8AAB328(a1, v19);
  }

  else
  {
    sub_1B8AC5B28(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1B8AC5964(uint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B8AC4110(a3 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1B8AC61FC();
      result = v19;
      goto LABEL_8;
    }

    sub_1B8AC50E0(v16, a4 & 1);
    result = sub_1B8AC4110(a3 & 1);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_1B8AF0FB8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 12 * result;
    *v22 = a1 & 1;
    *(v22 + 1) = BYTE1(a1) & 1;
    *(v22 + 4) = HIDWORD(a1);
    *(v22 + 8) = a2 & 1;
  }

  else
  {

    return sub_1B8AC5B90(result, a3 & 1, a1 & 0xFFFFFFFF00000101, a2 & 1, v21);
  }

  return result;
}

_OWORD *sub_1B8AC5ABC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B8AAB328(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_1B8AC5B28(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1B8AAB328(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1B8AC5B90(unint64_t result, char a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2 & 1;
  v5 = a5[7] + 12 * result;
  *v5 = a3 & 1;
  *(v5 + 1) = BYTE1(a3) & 1;
  *(v5 + 4) = HIDWORD(a3);
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

id sub_1B8AC5BFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97100, &qword_1B8AFAB58);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B8AC5D68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97108, &unk_1B8AFAB60);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B8A7BBE0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B8AAB328(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1B8AC5F0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970E8, &qword_1B8AFD3D0);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1B8A7BBE0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B8AAB328(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B8AC608C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97120, &unk_1B8AFD400);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B8AC61FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97118, &qword_1B8AFAB70);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 12 * v14;
      v18 = *v17;
      v19 = *(v17 + 1);
      v20 = *(v17 + 4);
      LOBYTE(v17) = *(v17 + 8);
      result = *(v4 + 48);
      *(result + v14) = *(*(v2 + 48) + v14);
      v21 = *(v4 + 56) + 12 * v14;
      *v21 = v18;
      *(v21 + 1) = v19;
      *(v21 + 4) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B8AC6370()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970F8, &qword_1B8AFAB50);
  v2 = *v0;
  v3 = sub_1B8AF0BB8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1B8AC64E8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = (a2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v5 == v8 && v6 == v9;
  if (v10 || (sub_1B8AF0EA8() & 1) != 0)
  {
    v11 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
    swift_beginAccess();
    v12 = *(a1 + v11);
    v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
    swift_beginAccess();
    v14 = v12 < *(a2 + v13);
  }

  else
  {
    v14 = sub_1B8AF0EA8();
  }

  return v14 & 1;
}

uint64_t sub_1B8AC6604(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B8AC8298(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v27 = v2 + 32;
  v32[0] = v2 + 32;
  v32[1] = v4;
  v5 = sub_1B8AF0D18();
  if (v5 >= v4)
  {
    if (v4 < 2)
    {
      return sub_1B8AF0B38();
    }

    v8 = -1;
    v9 = 1;
    v10 = (v2 + 32);
    v26 = v4;
LABEL_9:
    v29 = v9;
    v11 = *(v27 + 8 * v9);
    v33 = v8;
    v28 = v10;
    while (1)
    {
      v17 = *v10;
      v18 = (v11 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
      swift_beginAccess();
      v19 = *v18;
      v20 = v18[1];
      v21 = (v17 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
      swift_beginAccess();
      v22 = *v21;
      v23 = v21[1];
      v24 = v19 == v22 && v20 == v23;
      if (v24 || (sub_1B8AF0EA8() & 1) != 0)
      {
        v12 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
        swift_beginAccess();
        v13 = *(v11 + v12);
        v14 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
        swift_beginAccess();
        if (v13 >= *(v17 + v14))
        {
          goto LABEL_8;
        }
      }

      else if ((sub_1B8AF0EA8() & 1) == 0)
      {
LABEL_8:
        v9 = v29 + 1;
        v10 = v28 + 1;
        v8 = v33 - 1;
        if (v29 + 1 == v26)
        {
          return sub_1B8AF0B38();
        }

        goto LABEL_9;
      }

      v15 = *v10;
      v11 = v10[1];
      *v10 = v11;
      v10[1] = v15;
      --v10;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v6 = v5;
  if (v4 >= 2)
  {
    type metadata accessor for SCMLPeopleDetectionAttribute();
    v7 = sub_1B8AF0848();
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v31[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  v31[1] = v4 >> 1;
  sub_1B8AC6A80(v31, v30, v32, v6);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return sub_1B8AF0B38();
}

uint64_t sub_1B8AC684C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B8AC82AC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B8AC68B8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B8AC68B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B8AF0D18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B8AF0848();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B8AC7578(v7, v8, a1, v4);
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
    return sub_1B8AC69B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B8AC69B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B8AF0EA8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B8AC6A80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v129 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_152:
    v4 = *v129;
    if (!*v129)
    {
      goto LABEL_190;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_154;
    }

    goto LABEL_185;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v8 >= v4)
    {
      v4 = v8;
    }

    else
    {
      v9 = *a3;
      result = sub_1B8AC64E8(*(*a3 + 8 * v8), *(*a3 + 8 * v7));
      v152 = result;
      if (v130)
      {
      }

      v137 = v7;
      v140 = v6;
      v10 = v7 + 2;
      __dst = (8 * v7);
      v148 = v4;
      v11 = (v9 + 8 * v7 + 16);
      while (v4 != v10)
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v16 = (*v11 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v17 = *v16;
        v18 = v16[1];
        v19 = (v14 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v20 = v17 == *v19 && v18 == v19[1];
        if (v20 || (sub_1B8AF0EA8() & 1) != 0)
        {
          v12 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          LODWORD(v12) = *(v15 + v12);
          v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          result = v12 < *(v14 + v13);
        }

        else
        {
          result = sub_1B8AF0EA8();
        }

        ++v10;
        ++v11;
        v4 = v148;
        if ((v152 ^ result))
        {
          v4 = v10 - 1;
          break;
        }
      }

      v7 = v137;
      v6 = v140;
      v21 = __dst;
      if (v152)
      {
        if (v4 < v137)
        {
          goto LABEL_183;
        }

        if (v137 < v4)
        {
          v22 = 8 * v4 - 8;
          v23 = v4;
          v24 = v137;
          do
          {
            if (v24 != --v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v25 = *&v21[v26];
              *&v21[v26] = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            ++v24;
            v22 -= 8;
            v21 += 8;
          }

          while (v24 < v23);
        }
      }
    }

    v27 = a3[1];
    if (v4 < v27)
    {
      if (__OFSUB__(v4, v7))
      {
        goto LABEL_180;
      }

      if (v4 - v7 < a4)
      {
        if (__OFADD__(v7, a4))
        {
          goto LABEL_181;
        }

        if (v7 + a4 < v27)
        {
          v27 = v7 + a4;
        }

        if (v27 < v7)
        {
          goto LABEL_182;
        }

        if (v4 != v27)
        {
          v132 = v27;
          v139 = v7;
          v142 = v6;
          v154 = *a3;
          v112 = (*a3 + 8 * v4 - 8);
          v113 = v7 - v4;
          do
          {
            __dstb = v112;
            v151 = v4;
            v114 = *(v154 + 8 * v4);
            v144 = v113;
            do
            {
              v115 = *v112;
              v116 = (v114 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
              swift_beginAccess();
              v4 = *v116;
              v117 = v116[1];
              v118 = (v115 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
              swift_beginAccess();
              v6 = v118[1];
              v119 = v4 == *v118 && v117 == v6;
              if (v119 || (sub_1B8AF0EA8() & 1) != 0)
              {
                v120 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
                swift_beginAccess();
                LODWORD(v120) = *(v114 + v120);
                v121 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
                swift_beginAccess();
                if (v120 >= *(v115 + v121))
                {
                  break;
                }
              }

              else if ((sub_1B8AF0EA8() & 1) == 0)
              {
                break;
              }

              if (!v154)
              {
                goto LABEL_184;
              }

              v122 = *v112;
              v114 = *(v112 + 1);
              *v112 = v114;
              *(v112 + 1) = v122;
              v112 -= 8;
            }

            while (!__CFADD__(v113++, 1));
            v4 = v151 + 1;
            v112 = __dstb + 8;
            v113 = v144 - 1;
          }

          while (v151 + 1 != v132);
          v7 = v139;
          v6 = v142;
          v28 = v132;
          if (v132 >= v139)
          {
            goto LABEL_36;
          }

LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          result = sub_1B8AC81F0(v6);
          v6 = result;
LABEL_154:
          v124 = *(v6 + 2);
          if (v124 >= 2)
          {
            while (*a3)
            {
              v125 = *&v6[16 * v124];
              v126 = *&v6[16 * v124 + 24];
              sub_1B8AC7B54((*a3 + 8 * v125), (*a3 + 8 * *&v6[16 * v124 + 16]), (*a3 + 8 * v126), v4);
              if (v130)
              {
              }

              if (v126 < v125)
              {
                goto LABEL_178;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_1B8AC81F0(v6);
              }

              if (v124 - 2 >= *(v6 + 2))
              {
                goto LABEL_179;
              }

              v127 = &v6[16 * v124];
              *v127 = v125;
              *(v127 + 1) = v126;
              result = sub_1B8AC8164(v124 - 1);
              v124 = *(v6 + 2);
              if (v124 <= 1)
              {
              }
            }

            goto LABEL_189;
          }
        }
      }
    }

    v28 = v4;
    if (v4 < v7)
    {
      goto LABEL_177;
    }

LABEL_36:
    v131 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B8ABB094(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }

    v30 = *(v6 + 2);
    v29 = *(v6 + 3);
    v4 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_1B8ABB094((v29 > 1), v30 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v4;
    v31 = &v6[16 * v30];
    *(v31 + 4) = v7;
    *(v31 + 5) = v131;
    __dsta = *v129;
    if (!*v129)
    {
      goto LABEL_188;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v5 = v131;
    v4 = a3[1];
    if (v131 >= v4)
    {
      goto LABEL_152;
    }
  }

  while (1)
  {
    v32 = v4 - 1;
    if (v4 >= 4)
    {
      v37 = &v6[16 * v4 + 32];
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_166;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_167;
      }

      v44 = &v6[16 * v4];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_169;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_172;
      }

      if (v48 >= v40)
      {
        v66 = &v6[16 * v32 + 32];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_176;
        }

        if (v35 < v69)
        {
          v32 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v4 == 3)
    {
      v33 = *(v6 + 4);
      v34 = *(v6 + 5);
      v43 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      v36 = v43;
LABEL_55:
      if (v36)
      {
        goto LABEL_168;
      }

      v49 = &v6[16 * v4];
      v51 = *v49;
      v50 = *(v49 + 1);
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      v54 = v52;
      if (v52)
      {
        goto LABEL_171;
      }

      v55 = &v6[16 * v32 + 32];
      v57 = *v55;
      v56 = *(v55 + 1);
      v43 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v43)
      {
        goto LABEL_174;
      }

      if (__OFADD__(v53, v58))
      {
        goto LABEL_175;
      }

      if (v53 + v58 >= v35)
      {
        if (v35 < v58)
        {
          v32 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    v59 = &v6[16 * v4];
    v61 = *v59;
    v60 = *(v59 + 1);
    v43 = __OFSUB__(v60, v61);
    v53 = v60 - v61;
    v54 = v43;
LABEL_69:
    if (v54)
    {
      goto LABEL_170;
    }

    v62 = &v6[16 * v32];
    v64 = *(v62 + 4);
    v63 = *(v62 + 5);
    v43 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v43)
    {
      goto LABEL_173;
    }

    if (v65 < v53)
    {
      goto LABEL_3;
    }

LABEL_76:
    if (v32 - 1 >= v4)
    {
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v70 = *a3;
    if (!*a3)
    {
      break;
    }

    v138 = v32;
    v141 = v6;
    v71 = v6 + 32;
    v134 = v32 - 1;
    v72 = *&v6[16 * v32 + 16];
    v73 = *&v71[16 * v32 + 8];
    v74 = (v70 + 8 * v72);
    v75 = 8 * *&v71[16 * v32];
    v76 = (v70 + v75);
    v135 = v73;
    v136 = v72;
    v77 = 8 * v73;
    v78 = (v70 + 8 * v73);
    v79 = v75 - 8 * v72;
    v80 = 8 * v73 - v75;
    if (v79 >= v80)
    {
      if (v76 != __dsta || v78 <= __dsta)
      {
        v94 = (v70 + v75);
        memmove(__dsta, (v70 + v75), 8 * v73 - v75);
        v76 = v94;
      }

      v153 = &__dsta[v80];
      if (v80 < 1 || v75 <= 8 * v72)
      {
        v6 = __dsta;
        v109 = v76;
        goto LABEL_125;
      }

      while (1)
      {
        v150 = v76;
        v95 = v76 - 8;
        v78 -= 8;
        v96 = v153;
        v143 = v76 - 8;
        while (1)
        {
          v98 = *(v96 - 1);
          v96 -= 8;
          v97 = v98;
          v99 = *v95;
          v100 = (v98 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
          swift_beginAccess();
          v102 = *v100;
          v101 = v100[1];
          v103 = (v99 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
          swift_beginAccess();
          v105 = *v103;
          v104 = v103[1];
          v106 = v102 == v105 && v101 == v104;
          if (!v106 && (sub_1B8AF0EA8() & 1) == 0)
          {
            break;
          }

          v107 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          LODWORD(v107) = *(v97 + v107);
          v108 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          if (v107 < *(v99 + v108))
          {
            goto LABEL_116;
          }

LABEL_114:
          if (v78 + 8 != v153)
          {
            *v78 = *v96;
          }

          v78 -= 8;
          v153 = v96;
          v95 = v143;
          if (v96 <= __dsta)
          {
            v153 = v96;
            v6 = __dsta;
            v109 = v150;
            goto LABEL_125;
          }
        }

        if ((sub_1B8AF0EA8() & 1) == 0)
        {
          goto LABEL_114;
        }

LABEL_116:
        v6 = __dsta;
        v109 = v143;
        if (v78 + 8 != v150)
        {
          *v78 = *v143;
        }

        if (v153 > __dsta)
        {
          v76 = v143;
          if (v74 < v143)
          {
            continue;
          }
        }

        goto LABEL_125;
      }
    }

    if (v74 != __dsta || v76 <= __dsta)
    {
      v81 = (v70 + v75);
      memmove(__dsta, (v70 + 8 * v72), v75 - 8 * v72);
      v76 = v81;
    }

    v153 = &__dsta[v79];
    if (v79 >= 1 && v77 > v75)
    {
      v6 = __dsta;
      while (1)
      {
        v149 = v76;
        v82 = *v76;
        v83 = *v6;
        v84 = (*v76 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v85 = *v84;
        v86 = v84[1];
        v87 = (v83 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v88 = *v87;
        v89 = v87[1];
        v90 = v85 == v88 && v86 == v89;
        if (v90 || (sub_1B8AF0EA8() & 1) != 0)
        {
          v91 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          LODWORD(v91) = *(v82 + v91);
          v92 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          if (v91 >= *(v83 + v92))
          {
            goto LABEL_94;
          }
        }

        else if ((sub_1B8AF0EA8() & 1) == 0)
        {
LABEL_94:
          v93 = v6;
          v20 = v74 == v6;
          v6 += 8;
          v76 = v149;
          if (v20)
          {
            goto LABEL_96;
          }

LABEL_95:
          *v74 = *v93;
          goto LABEL_96;
        }

        v93 = v149;
        v76 = v149 + 8;
        if (v74 != v149)
        {
          goto LABEL_95;
        }

LABEL_96:
        v74 += 8;
        if (v6 >= v153 || v76 >= v78)
        {
          goto LABEL_122;
        }
      }
    }

    v6 = __dsta;
LABEL_122:
    v109 = v74;
LABEL_125:
    if (v109 != v6 || v109 >= &v6[(v153 - v6 + (v153 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v109, v6, 8 * ((v153 - v6) / 8));
    }

    v4 = v135;
    v110 = v141;
    if (v135 < v136)
    {
      goto LABEL_164;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = sub_1B8AC81F0(v141);
    }

    if (v138 > *(v110 + 2))
    {
      goto LABEL_165;
    }

    v111 = &v110[16 * v134];
    *(v111 + 4) = v136;
    *(v111 + 5) = v135;
    result = sub_1B8AC8164(v138);
    v6 = v110;
    v4 = *(v110 + 2);
    if (v4 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
  return result;
}

uint64_t sub_1B8AC7578(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1B8AC81F0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1B8AC7F3C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B8AF0EA8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B8AF0EA8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B8ABB094(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B8ABB094((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1B8AC7F3C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B8AC81F0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B8AC8164(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B8AF0EA8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1B8AC7B54(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v28 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v50 = &v4[8 * v12];
    if (v10 >= 8 && v28 > v6)
    {
      v49 = v4;
LABEL_32:
      v47 = v28;
      v29 = v28 - 8;
      v5 -= 8;
      v30 = v50;
      v45 = v29;
      do
      {
        v32 = *(v30 - 1);
        v30 -= 8;
        v31 = v32;
        v33 = *v29;
        v34 = (v32 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v35 = *v34;
        v36 = v34[1];
        v37 = (v33 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v38 = *v37;
        v39 = v37[1];
        v40 = v35 == v38 && v36 == v39;
        if (v40 || (sub_1B8AF0EA8() & 1) != 0)
        {
          v41 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          v42 = *(v31 + v41);
          v43 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          if (v42 < *(v33 + v43))
          {
            goto LABEL_44;
          }
        }

        else if (sub_1B8AF0EA8())
        {
LABEL_44:
          v4 = v49;
          if (v5 + 8 != v47)
          {
            *v5 = *v45;
          }

          if (v50 <= v49 || (v28 = v45, v45 <= v6))
          {
            v28 = v45;
            goto LABEL_50;
          }

          goto LABEL_32;
        }

        v4 = v49;
        if (v5 + 8 != v50)
        {
          *v5 = *v30;
        }

        v5 -= 8;
        v50 = v30;
        v29 = v45;
      }

      while (v30 > v49);
      v50 = v30;
      v28 = v47;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v50 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      do
      {
        v46 = v14;
        v48 = v4;
        v15 = *v14;
        v16 = *v4;
        v17 = (*v14 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v18 = *v17;
        v19 = v17[1];
        v20 = (v16 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
        swift_beginAccess();
        v21 = *v20;
        v22 = v20[1];
        v23 = v18 == v21 && v19 == v22;
        if (v23 || (sub_1B8AF0EA8() & 1) != 0)
        {
          v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          v25 = *(v15 + v24);
          v26 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
          swift_beginAccess();
          if (v25 >= *(v16 + v26))
          {
            goto LABEL_21;
          }
        }

        else if ((sub_1B8AF0EA8() & 1) == 0)
        {
LABEL_21:
          v14 = v46;
          v27 = v48;
          v4 = v48 + 8;
          if (v6 == v48)
          {
            goto LABEL_23;
          }

LABEL_22:
          *v6 = *v27;
          goto LABEL_23;
        }

        v4 = v48;
        v27 = v46;
        v14 = v46 + 8;
        if (v6 != v46)
        {
          goto LABEL_22;
        }

LABEL_23:
        v6 += 8;
      }

      while (v4 < v50 && v14 < v5);
    }

    v28 = v6;
  }

LABEL_50:
  if (v28 != v4 || v28 >= &v4[(v50 - v4 + (v50 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v28, v4, 8 * ((v50 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1B8AC7F3C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B8AF0EA8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B8AF0EA8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1B8AC8164(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B8AC81F0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1B8AC8204(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1B8AF0BA8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1B8ADAA28(v3, 0);
  sub_1B8ADAB2C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisML28SCMLPeopleDetectionAttributeC1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = (a2 + OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v5 == v8 && v6 == v9;
  if (v10 || (sub_1B8AF0EA8() & 1) != 0)
  {
    v11 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
    swift_beginAccess();
    v12 = *(a1 + v11);
    v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender;
    swift_beginAccess();
    v14 = v12 < *(a2 + v13);
  }

  else
  {
    v14 = sub_1B8AF0EA8();
  }

  return v14 & 1;
}

BOOL sub_1B8AC83F0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970A8, &qword_1B8AFA9C8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970B0, &qword_1B8AFA9D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  if (qword_1EDB74A10 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = off_1EDB74A18;
    v11 = *(off_1EDB74A18 + 2);
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v18 = v11 - 1;
    v19 = v7 + 16;
    while (v12 < v10[2])
    {
      (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v6);
      sub_1B8AF0168();
      (*(v7 + 8))(v9, v6);
      if (v2)
      {
        return 1;
      }

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970C0, &qword_1B8AFA9E8);
      v14 = (*(*(v13 - 8) + 48))(v5, 1, v13);
      sub_1B8A897C4(v5, &qword_1EBA970A8, &qword_1B8AFA9C8);
      result = v14 != 1;
      if (v14 == 1 && v18 != v12++)
      {
        continue;
      }

      return result;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  return 0;
}

uint64_t sub_1B8AC8674(uint64_t a1)
{
  sub_1B8A7BBE0(a1, v13);
  if (swift_dynamicCast())
  {
    return v11;
  }

  sub_1B8A7BBE0(a1, v13);
  if (swift_dynamicCast())
  {
    v3 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v3 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1B8AF6490;
      *(v4 + 32) = v11;
      *(v4 + 40) = v12;
      return 1;
    }
  }

  else
  {
    sub_1B8A7BBE0(a1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97110, &qword_1B8AFD600);
    result = swift_dynamicCast();
    if (!result)
    {
      return result;
    }

    v5 = *(v11 + 16);
    if (v5)
    {
      v6 = v11 + 32;
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1B8A7BBE0(v6, v13);
        if (swift_dynamicCast())
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1B8ABAC24(0, *(v7 + 2) + 1, 1, v7);
          }

          v10 = *(v7 + 2);
          v9 = *(v7 + 3);
          if (v10 >= v9 >> 1)
          {
            v7 = sub_1B8ABAC24((v9 > 1), v10 + 1, 1, v7);
          }

          *(v7 + 2) = v10 + 1;
          v8 = &v7[16 * v10];
          *(v8 + 4) = v11;
          *(v8 + 5) = v12;
        }

        v6 += 32;
        --v5;
      }

      while (v5);

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B8AC8898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1701601645 && a3 == 0xE400000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {
    v6 = 1;
  }

  else if (a2 == 0x656C616D6566 && a3 == 0xE600000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {
    v6 = 2;
  }

  else if (a2 == 0x616E69625F6E6F6ELL && a3 == 0xEA00000000007972 || (v6 = 0, (sub_1B8AF0EA8() & 1) != 0))
  {
    v6 = 3;
  }

  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1B8AF0B48();
    v9 = type metadata accessor for SCMLPeopleDetectionAttribute();
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v13 = objc_allocWithZone(v9);
      v14 = &v13[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_term];
      *v14 = v12;
      *(v14 + 1) = v11;
      *&v13[OBJC_IVAR____TtC26SensitiveContentAnalysisML28SCMLPeopleDetectionAttribute_gender] = v6;
      v15.receiver = v13;
      v15.super_class = v9;

      objc_msgSendSuper2(&v15, sel_init);
      sub_1B8AF0B28();
      sub_1B8AF0B58();
      sub_1B8AF0B68();
      sub_1B8AF0B38();
      v10 += 2;
      --v7;
    }

    while (v7);
    return v16;
  }

  return result;
}

uint64_t sub_1B8AC8A74(uint64_t a1)
{
  v2 = type metadata accessor for SCMLPersonAttributes();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity] = 0;
  *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age] = 0;
  *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender] = 0;
  *&v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity] = 0;
  v3[OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization] = 0;
  v63.receiver = v3;
  v63.super_class = v2;
  v4 = objc_msgSendSuper2(&v63, sel_init);
  v5 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_specific;
  swift_beginAccess();
  v4[v5] = 0;
  v6 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_isGroup;
  swift_beginAccess();
  v56 = v6;
  v4[v6] = 0;
  v7 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasAge;
  swift_beginAccess();
  v55 = v7;
  v4[v7] = 0;
  v8 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasGender;
  swift_beginAccess();
  v52 = v8;
  v4[v8] = 0;
  v9 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasEthnicity;
  swift_beginAccess();
  v51 = v9;
  v4[v9] = 0;
  v10 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_age;
  swift_beginAccess();
  v54 = v10;
  *&v4[v10] = 0;
  v11 = v4;

  v12 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_gender;
  swift_beginAccess();
  v53 = v12;
  *&v11[v12] = 0;

  v13 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_ethnicity;
  swift_beginAccess();
  v50 = v13;
  *&v11[v13] = 0;

  v14 = OBJC_IVAR____TtC26SensitiveContentAnalysisML20SCMLPersonAttributes_hasImplicitCategoryRequiringPersonalization;
  swift_beginAccess();
  v49 = v14;
  v11[v14] = 0;

  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  while (v17)
  {
    v22 = v20;
LABEL_15:
    v25 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v26 = v25 | (v22 << 6);
    v27 = (*(a1 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    sub_1B8A7BBE0(*(a1 + 56) + 32 * v26, v57);
    *&v58 = v29;
    *(&v58 + 1) = v28;
    sub_1B8AAB328(v57, &v59);

LABEL_16:
    v61 = v58;
    v62[0] = v59;
    v62[1] = v60;
    v30 = *(&v58 + 1);
    if (!*(&v58 + 1))
    {

      return v11;
    }

    v31 = v61;
    sub_1B8AAB328(v62, &v58);
    if (v31 == 0x6369666963657073 && v30 == 0xE800000000000000 || (sub_1B8AF0EA8() & 1) != 0)
    {

      v21 = sub_1B8AC8674(&v58);
      __swift_destroy_boxed_opaque_existential_0(&v58);

      v4[v5] = v21 & 1;
    }

    else if (v31 == 0x70756F72675F7369 && v30 == 0xE800000000000000 || (sub_1B8AF0EA8() & 1) != 0)
    {

      v32 = sub_1B8AC8674(&v58);
      __swift_destroy_boxed_opaque_existential_0(&v58);

      v4[v56] = v32 & 1;
    }

    else if (v31 == 6645601 && v30 == 0xE300000000000000 || (sub_1B8AF0EA8() & 1) != 0)
    {

      v33 = sub_1B8AC8674(&v58);
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_0(&v58);
      v4[v55] = v33 & 1;
      *&v4[v54] = v35;
    }

    else if (v31 == 0x7265646E6567 && v30 == 0xE600000000000000 || ((v38 = sub_1B8AF0EA8(), v31 == 0x656C616D6566) ? (v39 = v30 == 0xE600000000000000) : (v39 = 0), !v39 ? (v40 = 0) : (v40 = 1), (v38 & 1) != 0 || (v40 & 1) != 0 || (sub_1B8AF0EA8() & 1) != 0 || v31 == 1701601645 && v30 == 0xE400000000000000 || (sub_1B8AF0EA8() & 1) != 0 || v31 == 0x616E69625F6E6F6ELL && v30 == 0xEA00000000007972 || (sub_1B8AF0EA8() & 1) != 0))
    {
      v4[v52] = (v4[v52] | sub_1B8AC8674(&v58)) & 1;
      if (v36)
      {
        if (!*&v11[v53])
        {
          *&v11[v53] = MEMORY[0x1E69E7CC0];
        }

        v37 = sub_1B8AC8898(v36, v31, v30);
        result = swift_beginAccess();
        if (!*&v11[v53])
        {
          goto LABEL_72;
        }

        sub_1B8AE5794(v37);
        swift_endAccess();

        goto LABEL_36;
      }

      __swift_destroy_boxed_opaque_existential_0(&v58);
    }

    else if (v31 == 0x746963696E687465 && v30 == 0xE900000000000079 || (sub_1B8AF0EA8() & 1) != 0)
    {

      v41 = sub_1B8AC8674(&v58);
      v43 = v42;
      __swift_destroy_boxed_opaque_existential_0(&v58);
      v4[v51] = v41 & 1;
      *&v11[v50] = v43;
    }

    else if (v31 == 0xD000000000000011 && 0x80000001B8B06980 == v30)
    {

LABEL_61:
      result = sub_1B8AC8674(&v58);
      v46 = v45;
      if (result)
      {
        if (v45)
        {
          if (!v45[2])
          {
            goto LABEL_73;
          }

          v48 = v45[4];
          v47 = v45[5];

          if (v48 == 0x6E6F69746361 && v47 == 0xE600000000000000)
          {

            v46 = 1;
          }

          else
          {
            v46 = sub_1B8AF0EA8();
          }
        }

        result = __swift_destroy_boxed_opaque_existential_0(&v58);
        v11[v49] = v46 & 1;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v58);

        v11[v49] = 0;
      }
    }

    else
    {
      v44 = sub_1B8AF0EA8();

      if (v44)
      {
        goto LABEL_61;
      }

LABEL_36:
      result = __swift_destroy_boxed_opaque_existential_0(&v58);
    }
  }

  if (v18 <= v20 + 1)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v18;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      v17 = 0;
      v59 = 0u;
      v60 = 0u;
      v20 = v24;
      v58 = 0u;
      goto LABEL_16;
    }

    v17 = *(a1 + 64 + 8 * v22);
    ++v20;
    if (v17)
    {
      v20 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

BOOL sub_1B8AC92D8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (!a2 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = a1;

  sub_1B8AC684C(&v6);
  v3 = v6;
  v6 = a2;

  sub_1B8AC684C(&v6);
  v4 = sub_1B8AC13CC(v3, v6);

  return v4 & 1;
}

BOOL sub_1B8AC93A4(unint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (a2)
  {
    if (a1 >> 62)
    {
      v8 = a2;
      v9 = sub_1B8AF0BA8();
      a2 = v8;
      v2 = v9;
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a2 >> 62)
    {
      if (v2 == sub_1B8AF0BA8())
      {
        goto LABEL_7;
      }
    }

    else if (v2 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:

      v10 = sub_1B8AC8204(v3);
      sub_1B8AC6604(&v10);
      v4 = v10;

      v10 = sub_1B8AC8204(v5);
      sub_1B8AC6604(&v10);
      v6 = sub_1B8AC1190(v4, v10);

      return v6 & 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for SCMLPeopleDetectorImpl(uint64_t a1)
{
  result = qword_1EDB75068;
  if (!qword_1EDB75068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_22Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t keypath_get_12Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_13Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_1B8AC9F00(uint64_t a1)
{
  result = sub_1B8AF03A8();
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

uint64_t dispatch thunk of SCMLPeopleDetectorImpl.predict(text:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B8ACA118;

  return v9(a1, a2);
}

uint64_t sub_1B8ACA118(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1B8ACA214()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B8A7B414;

  return sub_1B8AC3BA0(v2, v3, v4);
}

uint64_t sub_1B8ACA2C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B8AA7150;

  return sub_1B8AD76B0(a1, v4, v5, v6);
}

uint64_t sub_1B8ACA394(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B8ACA3EC(unsigned __int8 a1)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t sub_1B8ACA50C(uint64_t a1, unsigned __int8 a2)
{
  sub_1B8AF1018();
  sub_1B8AF05F8();

  return sub_1B8AF1038();
}

uint64_t static PromptRewriter.parseRawResponse(_:)(uint64_t a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8AF06A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AF0698();
  v6 = sub_1B8AF0678();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 != 15)
  {
    v9 = objc_opt_self();
    v10 = sub_1B8AEFC18();
    v18[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:0 error:v18];

    if (v11)
    {
      v12 = v18[0];
      sub_1B8AF0A18();
      sub_1B8A89878(v6, v8);
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
      if (swift_dynamicCast())
      {
        return v17;
      }
    }

    else
    {
      v14 = v18[0];
      v15 = sub_1B8AEFBD8();

      swift_willThrow();
      sub_1B8A89878(v6, v8);
    }
  }

  sub_1B8A89824();
  swift_allocError();
  *v16 = 0;
  v16[1] = 0;
  return swift_willThrow();
}

uint64_t sub_1B8ACA874(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA971A0, &qword_1B8AFAEF8);
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v17 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA971A8, &qword_1B8AFAF00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA971B0, &qword_1B8AFAF08);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8ACEDC0();
  v14 = v21;
  sub_1B8AF1058();
  if (v14)
  {
    v22 = 0;
    sub_1B8ACEE68();
    sub_1B8AF0C88();
    sub_1B8AF0C98();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v23 = 1;
    sub_1B8ACEE14();
    v16 = v17;
    sub_1B8AF0C88();
    (*(v18 + 8))(v16, v19);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1B8ACAB6C()
{
  if (*v0)
  {
    return 0x6961466573726170;
  }

  else
  {
    return 0x6C69614664616F6CLL;
  }
}

uint64_t sub_1B8ACABB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C69614664616F6CLL && a2 == 0xEA00000000006465;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6961466573726170 && a2 == 0xEB0000000064656CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

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

uint64_t sub_1B8ACAC9C(uint64_t a1)
{
  v2 = sub_1B8ACEDC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ACACD8(uint64_t a1)
{
  v2 = sub_1B8ACEDC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ACAD14(uint64_t a1)
{
  v2 = sub_1B8ACEE68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ACAD50(uint64_t a1)
{
  v2 = sub_1B8ACEE68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8ACAD8C(uint64_t a1)
{
  v2 = sub_1B8ACEE14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8ACADC8(uint64_t a1)
{
  v2 = sub_1B8ACEE14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B8ACAE04@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B8ACE8CC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1B8ACAE4C()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v4;
  v5 = sub_1B8AD7434(v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8A897C4(inited + 32, &qword_1EBA965D0, &qword_1B8AF6740);
  return v7;
}

uint64_t sub_1B8ACAF10(uint64_t a1)
{
  v2 = sub_1B8ACE614();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8ACAF4C(uint64_t a1)
{
  v2 = sub_1B8ACE614();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t PromptRewriter.__allocating_init(modelManagerServicesUseCaseID:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  PromptRewriter.init(modelManagerServicesUseCaseID:onBehalfOf:)(a1, a2, a3, a4 & 1);
  return v8;
}

char *PromptRewriter.init(modelManagerServicesUseCaseID:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v100 = a4;
  v81 = a3;
  v94 = a2;
  v80 = a1;
  v79 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v76 - v9;
  v10 = sub_1B8AF03A8();
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v78 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v76 - v13;
  v90 = sub_1B8AF02F8();
  v14 = *(v90 - 8);
  v15 = MEMORY[0x1EEE9AC00](v90);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - v18;
  v20 = sub_1B8AF0328();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;
  sub_1B8AF0398();
  v24 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v20, qword_1EDB75B50);
  v97 = v21;
  v26 = *(v21 + 16);
  v83 = v25;
  v26(&v5[v24]);
  v77 = v24;
  v95 = v20;
  v82 = v26;
  (v26)(v23, &v5[v24], v20);
  sub_1B8AF02E8();
  v87 = v23;
  v27 = sub_1B8AF0318();
  v28 = sub_1B8AF0908();
  v29 = sub_1B8AF0928();
  v93 = v5;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v27, v28, v31, "PromptRewriter.init", "", v30, 2u);
    v32 = v30;
    v5 = v93;
    MEMORY[0x1B8CC7D70](v32, -1, -1);
  }

  v33 = v90;
  (*(v14 + 16))(v17, v19, v90);
  sub_1B8AF0368();
  swift_allocObject();
  v86 = sub_1B8AF0358();
  (*(v14 + 8))(v19, v33);
  v34 = v91;
  v35 = v92;
  v36 = v88;
  v89 = *(v91 + 16);
  v90 = v91 + 16;
  v89(v88, &v5[v96], v92);
  v37 = v94;

  v38 = sub_1B8AF0388();
  v39 = sub_1B8AF08E8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v98[0] = v41;
    *v40 = 136446466;
    *(v40 + 4) = sub_1B8A9E870(v80, v37, v98);
    *(v40 + 12) = 2048;
    v42 = v81;
    if (v100)
    {
      v42 = -1;
    }

    *(v40 + 14) = v42;
    _os_log_impl(&dword_1B8A3C000, v38, v39, "Begin PromptRewriter init useCase=%{public}s  pid=%ld", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1B8CC7D70](v41, -1, -1);
    MEMORY[0x1B8CC7D70](v40, -1, -1);
  }

  v88 = *(v34 + 8);
  (v88)(v36, v35);
  v43 = sub_1B8AEFCC8();
  v44 = v85;
  (*(*(v43 - 8) + 56))(v85, 1, 1, v43);
  type metadata accessor for AFMModel(0);
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v35, qword_1EDB75B38);
  v89((v45 + v46), v47, v35);
  v48 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v82(v45 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter, v83, v95);
  v101 = 7;
  v49 = v84;
  sub_1B8A93BF0(v98);
  if (v49)
  {

    sub_1B8A897C4(v44, &qword_1EBA96528, &unk_1B8AF64B0);
    (v88)(v45 + v46, v35);
    v54 = v35;
    v55 = *(v97 + 8);
    v56 = v95;
    v97 += 8;
    v55(v45 + v48, v95);
    swift_deallocPartialClassInstance();
    v57 = v93;
    v58 = v78;
    v89(v78, &v93[v96], v54);
    v59 = v49;
    v60 = sub_1B8AF0388();
    v61 = sub_1B8AF08D8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      v64 = v49;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v65;
      *v63 = v65;
      _os_log_impl(&dword_1B8A3C000, v60, v61, "End PromptRewriter init with error: %@", v62, 0xCu);
      sub_1B8A897C4(v63, &qword_1EBA96B08, &qword_1B8AF94B0);
      v66 = v63;
      v57 = v93;
      MEMORY[0x1B8CC7D70](v66, -1, -1);
      v67 = v62;
      v56 = v95;
      MEMORY[0x1B8CC7D70](v67, -1, -1);
    }

    v68 = v92;
    v69 = v88;
    (v88)(v58, v92);
    swift_willThrow();
    v70 = v87;
    sub_1B8ACC85C(v87, "PromptRewriter.init", 19, 2, v86);

    v55(v70, v56);
    v69(&v57[v96], v68);
    v55(&v57[v77], v56);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v50 = v45 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v51 = v98[1];
    *v50 = v98[0];
    *(v50 + 16) = v51;
    *(v50 + 32) = v99;
    LOBYTE(v98[0]) = 7;
    v52 = v76;
    sub_1B8AA2E1C(v44, v76);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v53 = sub_1B8A8AB94(v98, v80, v94, v81, v100 & 1, v52);
    sub_1B8A897C4(v44, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v45 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v53;
    v57 = v93;
    *&v93[OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_model] = v45;
    v72 = sub_1B8AF0388();
    v73 = sub_1B8AF08E8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1B8A3C000, v72, v73, "End PromptRewriter init", v74, 2u);
      MEMORY[0x1B8CC7D70](v74, -1, -1);
    }

    v75 = v87;
    sub_1B8ACC85C(v87, "PromptRewriter.init", 19, 2, v86);

    (*(v97 + 8))(v75, v95);
  }

  return v57;
}

uint64_t PromptRewriter.__allocating_init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  PromptRewriter.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

char *PromptRewriter.init(modelManagerServicesUseCaseID:locale:onBehalfOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v117 = a5;
  v92 = a4;
  v113 = a3;
  v106 = a2;
  v91 = a1;
  v90 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v87 - v10;
  v11 = sub_1B8AEFCC8();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1B8AF03A8();
  v107 = *(v114 - 8);
  v13 = MEMORY[0x1EEE9AC00](v114);
  v89 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v87 - v15;
  v105 = sub_1B8AF02F8();
  v16 = *(v105 - 8);
  v17 = MEMORY[0x1EEE9AC00](v105);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v87 - v20;
  v22 = sub_1B8AF0328();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;
  sub_1B8AF0398();
  v26 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_signposter;
  if (qword_1EDB75390 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v22, qword_1EDB75B50);
  v109 = v23;
  v28 = *(v23 + 16);
  v95 = v27;
  v28(&v6[v26]);
  v88 = v26;
  v110 = v22;
  v96 = v23 + 16;
  v94 = v28;
  (v28)(v25, &v6[v26], v22);
  sub_1B8AF02E8();
  v101 = v25;
  v29 = sub_1B8AF0318();
  v30 = sub_1B8AF0908();
  v31 = sub_1B8AF0928();
  v102 = v6;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v29, v30, v33, "PromptRewriter.init", "", v32, 2u);
    v34 = v32;
    v6 = v102;
    MEMORY[0x1B8CC7D70](v34, -1, -1);
  }

  v35 = v105;
  (*(v16 + 16))(v19, v21, v105);
  sub_1B8AF0368();
  swift_allocObject();
  v99 = sub_1B8AF0358();
  (*(v16 + 8))(v21, v35);
  v36 = v107;
  v37 = v103;
  v104 = *(v107 + 16);
  v105 = v107 + 16;
  v104(v103, &v6[v108], v114);
  v38 = v111;
  v39 = v112;
  v40 = v97;
  v93 = *(v111 + 16);
  v93(v97, v113, v112);
  v41 = v106;

  v42 = v41;
  v43 = sub_1B8AF0388();
  v44 = sub_1B8AF08E8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v115[0] = v46;
    *v45 = 136446722;
    *(v45 + 4) = sub_1B8A9E870(v91, v42, v115);
    *(v45 + 12) = 2048;
    v47 = v92;
    if (v117)
    {
      v47 = -1;
    }

    *(v45 + 14) = v47;
    *(v45 + 22) = 2080;
    sub_1B8AAA774();
    v48 = sub_1B8AF0D28();
    v50 = v49;
    v97 = *(v111 + 8);
    (v97)(v40, v112);
    v51 = sub_1B8A9E870(v48, v50, v115);
    v39 = v112;

    *(v45 + 24) = v51;
    _os_log_impl(&dword_1B8A3C000, v43, v44, "Begin PromptRewriter init useCase=%{public}s  pid=%ld loc=%s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v46, -1, -1);
    v52 = v45;
    v38 = v111;
    MEMORY[0x1B8CC7D70](v52, -1, -1);

    v53 = v107;
  }

  else
  {

    v97 = *(v38 + 8);
    (v97)(v40, v39);
    v53 = v36;
  }

  v54 = v114;
  v103 = *(v53 + 8);
  (v103)(v37, v114);
  v55 = v100;
  v93(v100, v113, v39);
  (*(v38 + 56))(v55, 0, 1, v39);
  type metadata accessor for AFMModel(0);
  v56 = swift_allocObject();
  v57 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_logger;
  if (qword_1EDB75388 != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v54, qword_1EDB75B38);
  v104((v56 + v57), v58, v54);
  v59 = OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter;
  v60 = v110;
  v94(v56 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_signposter, v95, v110);
  v118 = 7;
  v61 = v98;
  sub_1B8A93BF0(v115);
  if (v61)
  {

    sub_1B8A897C4(v55, &qword_1EBA96528, &unk_1B8AF64B0);
    v66 = v114;
    (v103)(v56 + v57, v114);
    v67 = *(v109 + 8);
    v109 += 8;
    v67(v56 + v59, v110);
    swift_deallocPartialClassInstance();
    v68 = v102;
    v69 = v89;
    v104(v89, &v102[v108], v66);
    v70 = v61;
    v71 = sub_1B8AF0388();
    v72 = sub_1B8AF08D8();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      v75 = v61;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 4) = v76;
      *v74 = v76;
      _os_log_impl(&dword_1B8A3C000, v71, v72, "End PromptRewriter init with error: %@", v73, 0xCu);
      sub_1B8A897C4(v74, &qword_1EBA96B08, &qword_1B8AF94B0);
      MEMORY[0x1B8CC7D70](v74, -1, -1);
      MEMORY[0x1B8CC7D70](v73, -1, -1);
    }

    v77 = v114;
    v78 = v103;
    (v103)(v69, v114);
    swift_willThrow();
    v79 = v101;
    sub_1B8ACC85C(v101, "PromptRewriter.init", 19, 2, v99);

    (v97)(v113, v112);
    v80 = v79;
    v81 = v110;
    v67(v80, v110);
    v78(&v68[v108], v77);
    v67(&v68[v88], v81);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v62 = v56 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_imageConverter;
    v63 = v115[1];
    *v62 = v115[0];
    *(v62 + 16) = v63;
    *(v62 + 32) = v116;
    LOBYTE(v115[0]) = 7;
    v64 = v87;
    sub_1B8AA2E1C(v55, v87);
    type metadata accessor for AFMModelCore(0);
    swift_allocObject();
    v65 = sub_1B8A8AB94(v115, v91, v106, v92, v117 & 1, v64);
    sub_1B8A897C4(v55, &qword_1EBA96528, &unk_1B8AF64B0);
    *(v56 + OBJC_IVAR____TtC26SensitiveContentAnalysisML8AFMModel_core) = v65;
    v68 = v102;
    *&v102[OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_model] = v56;
    v83 = sub_1B8AF0388();
    v84 = sub_1B8AF08E8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1B8A3C000, v83, v84, "End PromptRewriter init", v85, 2u);
      MEMORY[0x1B8CC7D70](v85, -1, -1);
    }

    v86 = v101;
    sub_1B8ACC85C(v101, "PromptRewriter.init", 19, 2, v99);

    (v97)(v113, v112);
    (*(v109 + 8))(v86, v60);
  }

  return v68;
}

uint64_t sub_1B8ACC85C(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t PromptRewriter.rewrite(text:maxNumberOfResults:randomSeed:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 32) = 0;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B8ACCBE8;

  return PromptRewriter.rewriteInternal(promptStyle:text:maxNumberOfResults:randomSeed:temperature:)((v6 + 32), a1, a2, a3, a4 & 1, a5, a6 & 1, 0);
}

uint64_t sub_1B8ACCBE8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8ACF200, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t PromptRewriter.rewrite(promptStyle:text:maxNumberOfResults:randomSeed:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v7 + 32) = *a1;
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1B8ACCE18;

  return PromptRewriter.rewriteInternal(promptStyle:text:maxNumberOfResults:randomSeed:temperature:)((v7 + 32), a2, a3, a4, a5 & 1, a6, a7 & 1, 0);
}

uint64_t sub_1B8ACCE18(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8ACCF54, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

SensitiveContentAnalysisML::PromptRewriter::PromptStyle_optional __swiftcall PromptRewriter.PromptStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8AF0BE8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PromptRewriter.PromptStyle.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x696A6F6D6E6567;
  v3 = 0x5064656375646572;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x79746569726176;
  if (v1 != 1)
  {
    v4 = 0x616C506567616D69;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B8ACD0BC(uint64_t a1)
{
  sub_1B8AF05F8();
}

void sub_1B8ACD1D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x696A6F6D6E6567;
  v5 = 0xEA00000000005248;
  v6 = 0x5064656375646572;
  v7 = 0x80000001B8B05680;
  if (v2 != 4)
  {
    v7 = 0x80000001B8B056A0;
  }

  if (v2 != 3)
  {
    v6 = 0xD000000000000013;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x79746569726176;
  if (v2 != 1)
  {
    v9 = 0x616C506567616D69;
    v8 = 0xEF646E756F726779;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t PromptRewriter.rewriteInternal(promptStyle:text:maxNumberOfResults:randomSeed:temperature:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 139) = v14;
  *(v9 + 48) = a8;
  *(v9 + 56) = v8;
  *(v9 + 138) = a7;
  *(v9 + 137) = a5;
  *(v9 + 32) = a4;
  *(v9 + 40) = a6;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11 = sub_1B8AF02F8();
  *(v9 + 64) = v11;
  *(v9 + 72) = *(v11 - 8);
  *(v9 + 80) = swift_task_alloc();
  *(v9 + 88) = swift_task_alloc();
  *(v9 + 140) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B8ACD464, 0, 0);
}

uint64_t sub_1B8ACD464()
{
  v36 = v0;
  *(v0 + 96) = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;

  v1 = sub_1B8AF0388();
  v2 = sub_1B8AF08E8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 140);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136446467;
    v6 = 0xE700000000000000;
    v7 = 0x696A6F6D6E6567;
    v8 = 0xEA00000000005248;
    v9 = 0x5064656375646572;
    v10 = 0x80000001B8B05680;
    if (v3 != 4)
    {
      v10 = 0x80000001B8B056A0;
    }

    if (v3 != 3)
    {
      v9 = 0xD000000000000013;
      v8 = v10;
    }

    v11 = 0xE700000000000000;
    v12 = 0x79746569726176;
    if (v3 != 1)
    {
      v12 = 0x616C506567616D69;
      v11 = 0xEF646E756F726779;
    }

    if (v3)
    {
      v7 = v12;
      v6 = v11;
    }

    if (v3 <= 2)
    {
      v13 = v7;
    }

    else
    {
      v13 = v9;
    }

    if (v3 <= 2)
    {
      v14 = v6;
    }

    else
    {
      v14 = v8;
    }

    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    v17 = sub_1B8A9E870(v13, v14, &v35);

    *(v4 + 4) = v17;
    *(v4 + 12) = 2085;
    *(v4 + 14) = sub_1B8A9E870(v16, v15, &v35);
    _os_log_impl(&dword_1B8A3C000, v1, v2, "Begin PromptRewriter rewrite promptStyle=%{public}s: %{sensitive}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC7D70](v5, -1, -1);
    MEMORY[0x1B8CC7D70](v4, -1, -1);
  }

  sub_1B8AF02E8();
  v18 = sub_1B8AF0318();
  v19 = sub_1B8AF0908();
  if (sub_1B8AF0928())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1B8AF02D8();
    _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v18, v19, v21, "PromptRewriter.rewrite", "", v20, 2u);
    MEMORY[0x1B8CC7D70](v20, -1, -1);
  }

  v22 = *(v0 + 140);
  v23 = *(v0 + 80);
  v24 = *(v0 + 88);
  v25 = *(v0 + 64);
  v26 = *(v0 + 72);
  v27 = *(v0 + 139);
  v28 = *(v0 + 48);
  v29 = *(v0 + 138);

  (*(v26 + 16))(v23, v24, v25);
  sub_1B8AF0368();
  swift_allocObject();
  *(v0 + 104) = sub_1B8AF0358();
  (*(v26 + 8))(v24, v25);
  if (v27)
  {
    v28 = 1.0;
  }

  *(v0 + 136) = v22;
  v30 = swift_task_alloc();
  *(v0 + 112) = v30;
  *v30 = v0;
  v30[1] = sub_1B8ACD844;
  v31 = *(v0 + 40);
  v32 = *(v0 + 16);
  v33 = *(v0 + 24);

  return sub_1B8A83B98((v0 + 136), v32, v33, v31, v29 & 1, v28);
}

uint64_t sub_1B8ACD844(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1B8ACDB48;
  }

  else
  {
    v4 = sub_1B8ACD958;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B8ACD958()
{
  v15 = v0;
  v1 = *(v0 + 120);
  if ((*(v0 + 137) & 1) != 0 || (v2 = *(v0 + 32), *(v1 + 16) <= v2))
  {

    v5 = sub_1B8AF0388();
    v6 = sub_1B8AF08E8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 120);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136642819;
      v10 = MEMORY[0x1B8CC6010](v7, MEMORY[0x1E69E6158]);
      v12 = sub_1B8A9E870(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1B8A3C000, v5, v6, "End PromptRewriter rewrite: %{sensitive}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CC7D70](v9, -1, -1);
      MEMORY[0x1B8CC7D70](v8, -1, -1);
    }

    v4 = *(v0 + 120);
  }

  else
  {
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    sub_1B8ACE130(*(v0 + 120), v1 + 32, 0, (2 * v2) | 1);
    v4 = v3;
  }

  sub_1B8ACDCEC(*(v0 + 56), "PromptRewriter.rewrite", 22, 2, *(v0 + 104));

  v13 = *(v0 + 8);

  v13(v4);
}

uint64_t sub_1B8ACDB48()
{
  v1 = v0[16];
  v2 = v1;
  v3 = sub_1B8AF0388();
  v4 = sub_1B8AF08D8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B8A3C000, v3, v4, "End PromptRewriter rewrite with error: %@", v6, 0xCu);
    sub_1B8A897C4(v7, &qword_1EBA96B08, &qword_1B8AF94B0);
    MEMORY[0x1B8CC7D70](v7, -1, -1);
    MEMORY[0x1B8CC7D70](v6, -1, -1);
  }

  v10 = v0[13];
  v11 = v0[7];

  swift_willThrow();
  sub_1B8ACDCEC(v11, "PromptRewriter.rewrite", 22, 2, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B8ACDCEC(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1B8AF0338();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8AF02F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1B8AF0318();
  sub_1B8AF0348();
  v21 = sub_1B8AF08F8();
  result = sub_1B8AF0928();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_1B8AF0378();

      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8AF02D8();
      _os_signpost_emit_with_name_impl(&dword_1B8A3C000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1B8CC7D70](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t PromptRewriter.deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t PromptRewriter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_logger;
  v2 = sub_1B8AF03A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC26SensitiveContentAnalysisML14PromptRewriter_signposter;
  v4 = sub_1B8AF0328();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

void sub_1B8ACE130(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B38, &unk_1B8AF8900);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1B8ACE20C()
{
  result = qword_1EBA97128;
  if (!qword_1EBA97128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97128);
  }

  return result;
}

unint64_t sub_1B8ACE264()
{
  result = qword_1EBA97130;
  if (!qword_1EBA97130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA97138, &qword_1B8AFAC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97130);
  }

  return result;
}

uint64_t type metadata accessor for PromptRewriter(uint64_t a1)
{
  result = qword_1EDB752C8;
  if (!qword_1EDB752C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8ACE31C(uint64_t a1)
{
  result = sub_1B8AF03A8();
  if (v2 <= 0x3F)
  {
    result = sub_1B8AF0328();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptRewriter.PromptStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptRewriter.PromptStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8ACE5C4(void *a1)
{
  a1[1] = sub_1B8ACE614();
  a1[2] = sub_1B8ACE668();
  a1[3] = sub_1B8ACE6BC();
  a1[4] = sub_1B8ACE710();
  a1[5] = sub_1B8ACE764();
  result = sub_1B8ACE7B8();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8ACE614()
{
  result = qword_1EBA97140;
  if (!qword_1EBA97140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97140);
  }

  return result;
}

unint64_t sub_1B8ACE668()
{
  result = qword_1EBA97148;
  if (!qword_1EBA97148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97148);
  }

  return result;
}

unint64_t sub_1B8ACE6BC()
{
  result = qword_1EBA97150;
  if (!qword_1EBA97150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97150);
  }

  return result;
}

unint64_t sub_1B8ACE710()
{
  result = qword_1EBA97158;
  if (!qword_1EBA97158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97158);
  }

  return result;
}

unint64_t sub_1B8ACE764()
{
  result = qword_1EBA97160;
  if (!qword_1EBA97160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97160);
  }

  return result;
}

unint64_t sub_1B8ACE7B8()
{
  result = qword_1EBA97168;
  if (!qword_1EBA97168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97168);
  }

  return result;
}

void sub_1B8ACE80C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA971B8, &unk_1B8AFAF10);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_1B8ACE8CC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97170, &qword_1B8AFAED8);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97178, &qword_1B8AFAEE0);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97180, &unk_1B8AFAEE8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = a1[3];
  v31 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B8ACEDC0();
  v15 = v30;
  sub_1B8AF1048();
  if (!v15)
  {
    v30 = v10;
    v16 = sub_1B8AF0C78();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1B8AE4FD0();
    v19 = v9;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_1B8AF0B08();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190);
      *v23 = &type metadata for PromptRewriter.Error;
      v14 = v12;
      sub_1B8AF0C08();
      sub_1B8AF0AF8();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v30 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_1B8ACEE14();
      sub_1B8AF0BF8();
      v20 = v30;
      (*(v28 + 8))(v5, v27);
      (*(v20 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v14 = 0;
    }

    else
    {
      v36 = 0;
      sub_1B8ACEE68();
      sub_1B8AF0BF8();
      v25 = v30;
      v14 = sub_1B8AF0C18();
      (*(v29 + 8))(v8, v6);
      (*(v25 + 8))(v12, v19);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return v14;
}

unint64_t sub_1B8ACEDC0()
{
  result = qword_1EBA97188;
  if (!qword_1EBA97188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97188);
  }

  return result;
}

unint64_t sub_1B8ACEE14()
{
  result = qword_1EBA97190;
  if (!qword_1EBA97190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97190);
  }

  return result;
}

unint64_t sub_1B8ACEE68()
{
  result = qword_1EBA97198;
  if (!qword_1EBA97198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97198);
  }

  return result;
}

unint64_t sub_1B8ACEEBC()
{
  result = qword_1EBA971C0;
  if (!qword_1EBA971C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971C0);
  }

  return result;
}

unint64_t sub_1B8ACEF44()
{
  result = qword_1EBA971C8;
  if (!qword_1EBA971C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971C8);
  }

  return result;
}

unint64_t sub_1B8ACEF9C()
{
  result = qword_1EBA971D0;
  if (!qword_1EBA971D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971D0);
  }

  return result;
}

unint64_t sub_1B8ACEFF4()
{
  result = qword_1EBA971D8;
  if (!qword_1EBA971D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971D8);
  }

  return result;
}

unint64_t sub_1B8ACF04C()
{
  result = qword_1EBA971E0;
  if (!qword_1EBA971E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971E0);
  }

  return result;
}

unint64_t sub_1B8ACF0A4()
{
  result = qword_1EBA971E8;
  if (!qword_1EBA971E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971E8);
  }

  return result;
}

unint64_t sub_1B8ACF0FC()
{
  result = qword_1EBA971F0;
  if (!qword_1EBA971F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971F0);
  }

  return result;
}

unint64_t sub_1B8ACF154()
{
  result = qword_1EBA971F8;
  if (!qword_1EBA971F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA971F8);
  }

  return result;
}

unint64_t sub_1B8ACF1AC()
{
  result = qword_1EBA97200;
  if (!qword_1EBA97200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97200);
  }

  return result;
}

uint64_t static SCMLNormalizer.normalizeText(_:lite:)(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B8ACFCBC(a1, a2);
  }

  else
  {
    return sub_1B8AD0090(a1, a2);
  }
}

uint64_t static SCMLNormalizer.trimmedText(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8AEFB28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v17 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v17[0] = a1;
  v17[1] = a2;
  sub_1B8AEFB08();
  sub_1B8AEFAF8();
  sub_1B8AEFB18();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v11, v4);
  sub_1B8A3F920();
  v15 = sub_1B8AF09D8();
  v14(v13, v4);
  return v15;
}