uint64_t sub_21689E8AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABACA8, &qword_217022D88);
  result = sub_21700F384();
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
        sub_21700F8F4();
        sub_21700DF14();
        sub_21700E614();
        result = sub_21700F944();
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

uint64_t sub_21689EAE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAEE0, &qword_217022DF0);
  result = sub_21700F384();
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
        sub_21700F8F4();
        MEMORY[0x21CEA0720](v15);
        result = sub_21700F944();
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

uint64_t sub_21689ECFC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SocialContactsCoordinator.Contact(0) - 8;
  MEMORY[0x28223BE20](v3);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACB8, &unk_217022D90);
  result = sub_21700F384();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 56);
    for (i = (v10 + 63) >> 6; v12; result = sub_2168A11E8(v5, v8))
    {
      v12 &= v12 - 1;
LABEL_11:
      sub_2168A557C();
    }

    v14 = v9;
    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_13;
      }

      v15 = *(v6 + 56 + 8 * v9);
      ++v14;
      if (v15)
      {
        v12 = (v15 - 1) & v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v8;
  }

  return result;
}

uint64_t sub_21689EEC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACE8, &unk_2170715D0);
  result = sub_21700F384();
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
        sub_21700F8F4();
        sub_21700DF14();
        sub_21700E614();
        result = sub_21700F944();
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

uint64_t sub_21689F0FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACA0, &qword_217022D80);
  result = sub_21700F384();
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
        memcpy(__dst, (*(v3 + 48) + 120 * (v12 | (v6 << 6))), 0x78uLL);
        sub_21700F8F4();
        if (__dst[11])
        {
          sub_21700F914();
          sub_2168A5278(__dst, v23);
          sub_21700E614();
        }

        else
        {
          sub_21700F914();
          sub_2168A5278(__dst, v23);
        }

        MEMORY[0x21CEA0720](__dst[14]);
        result = sub_21700F944();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = memcpy((*(v5 + 48) + 120 * v18), __dst, 0x78uLL);
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_24;
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
          goto LABEL_28;
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

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21689F38C(uint64_t a1)
{
  v2 = v1;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends - 8);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EF0, &qword_217022E00);
  result = sub_21700F384();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        sub_2168A557C();
        sub_21700F8F4();
        sub_21700E614();
        result = sub_21700F944();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = sub_2168A5624();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21689F660(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACF0, qword_217022DC0);
  result = sub_21700F384();
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
        sub_21700F8F4();
        sub_21700E614();

        result = sub_21700F944();
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

uint64_t sub_21689F968(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicURLRequest(0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAEE8, &qword_217022DF8);
  result = sub_21700F384();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v10 &= v10 - 1;
LABEL_12:
        sub_2168A557C();
        sub_21700F8F4();
        sub_217006224();
        sub_2168A5534(&qword_280E4A4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_21700E434();
        result = sub_21700F944();
        v15 = -1 << *(v6 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        result = sub_2168A5624();
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v4 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v10 = (v14 - 1) & v14;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21689FC88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABACA8, &qword_217022D88);
  result = sub_21700F384();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_21689DB5C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21700F8F4();
    sub_21700E614();
    result = sub_21700F944();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_21689FEE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAEE0, &qword_217022DF0);
  result = sub_21700F384();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_21689DB5C(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_21700F8F4();
    MEMORY[0x21CEA0720](v16);
    result = sub_21700F944();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2168A0130(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SocialContactsCoordinator.Contact(0) - 8;
  MEMORY[0x28223BE20](v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACB8, &unk_217022D90);
  result = sub_21700F384();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v6 + 56);
    for (i = (v11 + 63) >> 6; v13; result = sub_2168A11E8(v5, v8))
    {
      v13 &= v13 - 1;
LABEL_11:
      sub_2168A5624();
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= i)
      {
        break;
      }

      v16 = v10[v9];
      ++v15;
      if (v16)
      {
        v13 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    v17 = 1 << *(v6 + 32);
    if (v17 >= 64)
    {
      sub_21689DB5C(0, (v17 + 63) >> 6, v6 + 56);
    }

    else
    {
      *v10 = -1 << v17;
    }

    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_2168A0338(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACE8, &unk_2170715D0);
  result = sub_21700F384();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_21689DB5C(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_21700F8F4();
    sub_21700E614();
    result = sub_21700F944();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2168A0594(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACA0, &qword_217022D80);
  result = sub_21700F384();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v5;
    return result;
  }

  v30 = v1;
  v31 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_21689DB5C(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 120 * (v13 | (v6 << 6));
    memcpy(__dst, v16, sizeof(__dst));
    v18 = *(v16 + 80);
    v17 = *(v16 + 88);
    v32 = *(v16 + 96);
    v19 = *(v16 + 112);
    sub_21700F8F4();
    sub_21700F914();
    if (v17)
    {
      sub_21700E614();
    }

    MEMORY[0x21CEA0720](v19);
    result = sub_21700F944();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 120 * v23;
    result = memcpy(v28, __dst, 0x50uLL);
    *(v28 + 80) = v18;
    *(v28 + 88) = v17;
    *(v28 + 96) = v32;
    *(v28 + 112) = v19;
    ++*(v5 + 16);
    v3 = v31;
    if (!v10)
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
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2168A085C(uint64_t a1)
{
  v2 = v1;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends - 8);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EF0, &qword_217022E00);
  result = sub_21700F384();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v4 + 32);
    if (v24 >= 64)
    {
      sub_21689DB5C(0, (v24 + 63) >> 6, v4 + 56);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v1;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v11 &= v11 - 1;
LABEL_12:
    sub_2168A5624();
    sub_21700F8F4();
    sub_21700E614();
    result = sub_21700F944();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_2168A5624();
    ++*(v6 + 16);
    if (!v11)
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
    v23 = *(v13 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2168A0B60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACF0, qword_217022DC0);
  result = sub_21700F384();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_21689DB5C(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_21700F8F4();
    sub_21700E614();

    result = sub_21700F944();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2168A0E98(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicURLRequest(0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAEE8, &qword_217022DF8);
  result = sub_21700F384();
  v6 = result;
  if (!*(v4 + 16))
  {
LABEL_27:

    *v2 = v6;
    return result;
  }

  v25 = v4;
  v7 = 0;
  v8 = (v4 + 56);
  v9 = 1 << *(v4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v4 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v4 + 32);
    if (v24 >= 64)
    {
      sub_21689DB5C(0, (v24 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v1;
    *(v4 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v11 &= v11 - 1;
LABEL_12:
    sub_2168A5624();
    sub_21700F8F4();
    sub_217006224();
    sub_2168A5534(&qword_280E4A4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_21700E434();
    result = sub_21700F944();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = sub_2168A5624();
    ++*(v6 + 16);
    v4 = v25;
    if (!v11)
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
    v23 = *(v13 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2168A11E8(uint64_t *a1, uint64_t a2)
{
  sub_21700F8F4();
  type metadata accessor for SocialContactsCoordinator.Contact(0);
  sub_21700E614();
  if (a1[1])
  {
    sub_21700F914();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  sub_21700F944();
  v4 = sub_21700F244();
  *(a2 + 56 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  result = sub_2168A5624();
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2168A1310(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void sub_2168A1358(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_102();
  v4 = sub_21700C4B4();
  OUTLINED_FUNCTION_2(v4);
  v5 = *(v3 + 16);
  v6 = __OFADD__(v2, v5);
  v7 = v2 + v5;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 < v2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 < 0)
  {
LABEL_9:
    __break(1u);
  }
}

void sub_2168A140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_85_5();
  sub_21700E614();
  sub_21700F944();
  OUTLINED_FUNCTION_81_3();
  while (1)
  {
    OUTLINED_FUNCTION_88_3();
    if (v35)
    {
      break;
    }

    OUTLINED_FUNCTION_139_1();
    v35 = *v34 == v33 && v34[1] == v31;
    if (v35 || (sub_21700F7D4() & 1) != 0)
    {

      OUTLINED_FUNCTION_139_1();
      v37 = v36[1];
      *v30 = *v36;
      v30[1] = v37;
      sub_21700DF14();
      goto LABEL_10;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_150_0();
  v38 = OUTLINED_FUNCTION_111_2();
  sub_2168A2200(v38, v39, v40, v41);
  *v32 = a10;
  *v30 = v33;
  v30[1] = v31;
LABEL_10:
  OUTLINED_FUNCTION_148_0();
}

BOOL sub_2168A14E4(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_21700F8F4();
  v7 = a2 & 1;
  MEMORY[0x21CEA0720](v7);
  v8 = sub_21700F944();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      sub_2168A2368(v7, v10, isUniquelyReferenced_nonNull_native);
      *v3 = v14;
      goto LABEL_7;
    }

    if (*(*(v6 + 48) + v10) == v7)
    {
      break;
    }

    v8 = v10 + 1;
  }

  LOBYTE(v7) = *(*(v6 + 48) + v10);
LABEL_7:
  result = v11 == 0;
  *a1 = v7;
  return result;
}

void sub_2168A15E0()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v36 = v3;
  v4 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v33 = &v33 - v10;
  v34 = v0;
  v11 = *v0;
  sub_21700F8F4();
  v12 = (v2 + *(v4 + 52));
  v13 = v12[1];
  v37 = *v12;
  v38 = v4;
  sub_21700E614();
  v35 = v2;
  v15 = *v2;
  v14 = v2[1];
  sub_21700F914();
  if (v14)
  {
    sub_21700E614();
  }

  sub_21700F944();
  OUTLINED_FUNCTION_81_3();
  v18 = v17 & ~v16;
  if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
LABEL_21:
    v27 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_18_15();
    sub_2168A557C();
    v40 = *v27;
    v29 = OUTLINED_FUNCTION_104_0();
    sub_2168A24A8(v29, v30, isUniquelyReferenced_nonNull_native);
    *v27 = v40;
    sub_2168A5624();
    goto LABEL_24;
  }

  v39 = v15;
  v19 = ~v16;
  while (1)
  {
    OUTLINED_FUNCTION_18_15();
    sub_2168A557C();
    v20 = v8[1];
    if (v20)
    {
      if (!v14 || (*v8 == v39 ? (v21 = v20 == v14) : (v21 = 0), !v21 && (sub_21700F7D4() & 1) == 0))
      {
LABEL_19:
        OUTLINED_FUNCTION_7_29();
        sub_2168A55D0(v8, v26);
        goto LABEL_20;
      }
    }

    else if (v14)
    {
      goto LABEL_19;
    }

    v22 = (v8 + *(v38 + 52));
    if (*v22 == v37 && v22[1] == v13)
    {
      break;
    }

    v24 = sub_21700F7D4();
    OUTLINED_FUNCTION_7_29();
    sub_2168A55D0(v8, v25);
    if (v24)
    {
      goto LABEL_23;
    }

LABEL_20:
    v18 = (v18 + 1) & v19;
    if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  OUTLINED_FUNCTION_7_29();
  sub_2168A55D0(v8, v31);
LABEL_23:
  OUTLINED_FUNCTION_7_29();
  sub_2168A55D0(v35, v32);
  OUTLINED_FUNCTION_18_15();
  sub_2168A557C();
LABEL_24:
  OUTLINED_FUNCTION_26();
}

void sub_2168A1894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_85_5();
  sub_21700E614();
  sub_21700F944();
  OUTLINED_FUNCTION_81_3();
  while (1)
  {
    OUTLINED_FUNCTION_88_3();
    if (v35)
    {
      break;
    }

    OUTLINED_FUNCTION_139_1();
    v35 = *v34 == v33 && v34[1] == v31;
    if (v35 || (sub_21700F7D4() & 1) != 0)
    {

      OUTLINED_FUNCTION_139_1();
      v37 = v36[1];
      *v30 = *v36;
      v30[1] = v37;
      sub_21700DF14();
      goto LABEL_10;
    }
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_150_0();
  v38 = OUTLINED_FUNCTION_111_2();
  sub_2168A27C0(v38, v39, v40, v41);
  *v32 = a10;
  *v30 = v33;
  v30[1] = v31;
LABEL_10:
  OUTLINED_FUNCTION_148_0();
}

uint64_t sub_2168A196C(void *a1, void *a2)
{
  v4 = *v2;
  sub_21700F8F4();
  v5 = a2[10];
  v6 = a2[11];
  sub_21700F914();
  if (v6)
  {
    sub_21700E614();
  }

  v7 = a2[14];
  MEMORY[0x21CEA0720](v7);
  sub_21700F944();
  v8 = v4 + 56;
  OUTLINED_FUNCTION_81_3();
  v11 = v10 & ~v9;
  if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *v22;
    sub_2168A5278(a2, __dst);
    sub_2168A2928(a2, v11, isUniquelyReferenced_nonNull_native);
    *v22 = v24[0];
    memcpy(a1, a2, 0x78uLL);
    return 1;
  }

  v12 = ~v9;
  v21 = v4;
  v13 = *(v4 + 48);
  while (1)
  {
    v14 = (v13 + 120 * v11);
    v15 = v14[11];
    v16 = v14[14];
    if (v15)
    {
      break;
    }

    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_15:
    v11 = (v11 + 1) & v12;
    if (((*(v8 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  v17 = v14[10] == v5 && v15 == v6;
  if (!v17 && (sub_21700F7D4() & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  if (v16 != v7)
  {
    goto LABEL_15;
  }

  sub_2168A52D4(a2);
  v20 = (*(v21 + 48) + 120 * v11);
  memcpy(__dst, v20, 0x78uLL);
  memcpy(a1, v20, 0x78uLL);
  sub_2168A5278(__dst, v24);
  return 0;
}

void sub_2168A1B48()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v4 = OUTLINED_FUNCTION_2(Friends);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v18 = v0;
  v8 = *v0;
  sub_21700F8F4();
  sub_21700E614();
  sub_21700F944();
  OUTLINED_FUNCTION_81_3();
  v11 = ~v10;
  while (1)
  {
    v12 = v9 & v11;
    if (((1 << (v9 & v11)) & *(v8 + 56 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_31();
      sub_2168A557C();
      v19 = *v18;
      sub_2168A2B14(v7, v12, isUniquelyReferenced_nonNull_native);
      *v18 = v19;
      OUTLINED_FUNCTION_58_6();
      sub_2168A5624();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_9_31();
    sub_2168A557C();
    sub_21700F8F4();
    sub_21700E614();
    v13 = sub_21700F944();
    sub_21700F8F4();
    sub_21700E614();
    v14 = sub_21700F944();
    OUTLINED_FUNCTION_55_9();
    sub_2168A55D0(v7, v15);
    if (v13 == v14)
    {
      break;
    }

    v9 = v12 + 1;
  }

  OUTLINED_FUNCTION_55_9();
  sub_2168A55D0(v2, v17);
  OUTLINED_FUNCTION_9_31();
  sub_2168A557C();
LABEL_7:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168A1D54(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_21700F8F4();
  sub_216C6E3C8(a2);
  sub_21700E614();

  sub_21700F944();
  OUTLINED_FUNCTION_81_3();
  v7 = v6 & ~v5;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = 0xD000000000000013;
      v10 = "ion";
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          OUTLINED_FUNCTION_129();
          v9 = v11 + 9;
          v10 = "fullCatalogPlayback";
          break;
        case 2:
          v9 = 0xD000000000000012;
          v10 = "voiceActivatedCatalogPlayback";
          break;
        case 3:
          v9 = 0xD000000000000014;
          v10 = "anyCatalogPlayback";
          break;
        case 4:
          OUTLINED_FUNCTION_129();
          v9 = v12 + 11;
          v10 = "cloudLibraryEligible";
          break;
        case 5:
          v9 = 0xD000000000000014;
          v10 = "addCatalogContentToCloudLibrary";
          break;
        default:
          break;
      }

      v13 = v10 | 0x8000000000000000;
      v14 = 0xD000000000000013;
      v15 = "ion";
      switch(a2)
      {
        case 1:
          OUTLINED_FUNCTION_129();
          v14 = v16 + 9;
          v15 = "fullCatalogPlayback";
          break;
        case 2:
          v14 = 0xD000000000000012;
          v15 = "voiceActivatedCatalogPlayback";
          break;
        case 3:
          v14 = 0xD000000000000014;
          v15 = "anyCatalogPlayback";
          break;
        case 4:
          OUTLINED_FUNCTION_129();
          v14 = v17 + 11;
          v15 = "cloudLibraryEligible";
          break;
        case 5:
          v14 = 0xD000000000000014;
          v15 = "addCatalogContentToCloudLibrary";
          break;
        default:
          break;
      }

      if (v9 == v14 && v13 == (v15 | 0x8000000000000000))
      {
        break;
      }

      v19 = sub_21700F7D4();

      if (v19)
      {
        goto LABEL_23;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    sub_2168A2D84(a2, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_2168A2004()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v3 = type metadata accessor for MusicURLRequest(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v18 = v0;
  v8 = *v0;
  sub_21700F8F4();
  sub_217006224();
  sub_2168A5534(&qword_280E4A4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v9 = v2;
  sub_21700E434();
  sub_21700F944();
  OUTLINED_FUNCTION_81_3();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    if (((1 << (v10 & v12)) & *(v8 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_8_23();
      sub_2168A557C();
      v19 = *v18;
      sub_2168A308C(v7, v13, isUniquelyReferenced_nonNull_native);
      *v18 = v19;
      OUTLINED_FUNCTION_57_9();
      sub_2168A5624();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_8_23();
    sub_2168A557C();
    OUTLINED_FUNCTION_109();
    v14 = sub_217006204();
    OUTLINED_FUNCTION_54_10();
    sub_2168A55D0(v7, v15);
    if (v14)
    {
      break;
    }

    v10 = v13 + 1;
  }

  OUTLINED_FUNCTION_54_10();
  sub_2168A55D0(v9, v17);
  OUTLINED_FUNCTION_8_23();
  sub_2168A557C();
LABEL_7:
  OUTLINED_FUNCTION_26();
}

void sub_2168A2200(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_21689FC88(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_21689E8AC(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_21700F8F4();
      sub_21700E614();
      v16 = sub_21700F944();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (sub_21700F7D4() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_21689DBC0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_21700F814();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

unint64_t sub_2168A2368(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21689FEE4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_21689EAE0(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_21700F8F4();
      MEMORY[0x21CEA0720](v5 & 1);
      result = sub_21700F944();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == (v5 & 1))
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_21689DEA8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5 & 1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_21700F814();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_2168A24A8(void *a1, unint64_t a2, char a3)
{
  v34 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v32 = v3;
  v33 = a1;
  v31 = v7;
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2168A0130(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_21689DFE8();
        goto LABEL_28;
      }

      sub_21689ECFC(v10 + 1);
    }

    v12 = *v3;
    sub_21700F8F4();
    v13 = (a1 + *(v34 + 52));
    v14 = *v13;
    v15 = v13[1];
    sub_21700E614();
    v17 = *a1;
    v16 = a1[1];
    sub_21700F914();
    if (v16)
    {
      sub_21700E614();
    }

    v18 = sub_21700F944();
    v19 = -1 << *(v12 + 32);
    a2 = v18 & ~v19;
    if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v35 = v17;
      v20 = ~v19;
      do
      {
        sub_2168A557C();
        v21 = v9[1];
        if (v21)
        {
          if (!v16 || (*v9 == v35 ? (v22 = v21 == v16) : (v22 = 0), !v22 && (sub_21700F7D4() & 1) == 0))
          {
LABEL_26:
            sub_2168A55D0(v9, type metadata accessor for SocialContactsCoordinator.Contact);
            goto LABEL_27;
          }
        }

        else if (v16)
        {
          goto LABEL_26;
        }

        v23 = (v9 + *(v34 + 52));
        if (*v23 == v14 && v23[1] == v15)
        {
          goto LABEL_31;
        }

        v25 = sub_21700F7D4();
        sub_2168A55D0(v9, type metadata accessor for SocialContactsCoordinator.Contact);
        if (v25)
        {
          goto LABEL_32;
        }

LABEL_27:
        a2 = (a2 + 1) & v20;
      }

      while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v26 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2168A5624();
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_31:
    sub_2168A55D0(v9, type metadata accessor for SocialContactsCoordinator.Contact);
LABEL_32:
    result = sub_21700F814();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

void sub_2168A27C0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2168A0338(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_21689EEC8(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_21700F8F4();
      sub_21700E614();
      v16 = sub_21700F944();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == a1 && v18[1] == a2;
        if (v19 || (sub_21700F7D4() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_21689E1F0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_21700F814();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

void *sub_2168A2928(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2168A0594(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_21689E2EC();
        goto LABEL_23;
      }

      sub_21689F0FC(v7 + 1);
    }

    v9 = *v3;
    sub_21700F8F4();
    v10 = a1[10];
    v11 = a1[11];
    sub_21700F914();
    if (v11)
    {
      sub_21700E614();
    }

    v12 = a1[14];
    MEMORY[0x21CEA0720](v12);
    v13 = sub_21700F944();
    v14 = v9 + 56;
    v15 = -1 << *(v9 + 32);
    a2 = v13 & ~v15;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v17 = *(v9 + 48);
      do
      {
        v18 = (v17 + 120 * a2);
        v19 = v18[11];
        v20 = v18[14];
        if (v19)
        {
          if (v11)
          {
            v21 = v18[10] == v10 && v19 == v11;
            if (v21 || (sub_21700F7D4() & 1) != 0)
            {
LABEL_21:
              if (v20 == v12)
              {
                goto LABEL_26;
              }
            }
          }
        }

        else if (!v11)
        {
          goto LABEL_21;
        }

        a2 = (a2 + 1) & v16;
      }

      while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_23:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = memcpy((*(v22 + 48) + 120 * a2), a1, 0x78uLL);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_26:
    result = sub_21700F814();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t sub_2168A2B14(uint64_t a1, unint64_t a2, char a3)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  MEMORY[0x28223BE20](Friends);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v23 = v8;
      sub_2168A085C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      v23 = v8;
      sub_21689F38C(v11 + 1);
LABEL_8:
      v24 = v3;
      v13 = *v3;
      sub_21700F8F4();
      v25 = a1;
      sub_21700E614();
      v14 = sub_21700F944();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        sub_2168A557C();
        sub_21700F8F4();
        sub_21700E614();
        v16 = sub_21700F944();
        sub_21700F8F4();
        sub_21700E614();
        v17 = sub_21700F944();
        sub_2168A55D0(v10, type metadata accessor for SocialFindFriendsController.Friend);
        if (v16 == v17)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_21689E474();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2168A5624();
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_21700F814();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2168A2D84(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_2168A0B60(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_21689E5F0();
      goto LABEL_28;
    }

    sub_21689F660(v6 + 1);
  }

  v8 = *v3;
  sub_21700F8F4();
  sub_216C6E3C8(v5);
  sub_21700E614();

  result = sub_21700F944();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = 0xD000000000000013;
      v12 = "ion";
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          v11 = 0xD00000000000001DLL;
          v12 = "fullCatalogPlayback";
          break;
        case 2:
          v11 = 0xD000000000000012;
          v12 = "voiceActivatedCatalogPlayback";
          break;
        case 3:
          v11 = 0xD000000000000014;
          v12 = "anyCatalogPlayback";
          break;
        case 4:
          v11 = 0xD00000000000001FLL;
          v12 = "cloudLibraryEligible";
          break;
        case 5:
          v11 = 0xD000000000000014;
          v12 = "addCatalogContentToCloudLibrary";
          break;
        default:
          break;
      }

      v13 = v12 | 0x8000000000000000;
      v14 = 0xD000000000000013;
      v15 = "ion";
      switch(v5)
      {
        case 1:
          v14 = 0xD00000000000001DLL;
          v15 = "fullCatalogPlayback";
          break;
        case 2:
          v14 = 0xD000000000000012;
          v15 = "voiceActivatedCatalogPlayback";
          break;
        case 3:
          v14 = 0xD000000000000014;
          v15 = "anyCatalogPlayback";
          break;
        case 4:
          v14 = 0xD00000000000001FLL;
          v15 = "cloudLibraryEligible";
          break;
        case 5:
          v14 = 0xD000000000000014;
          v15 = "addCatalogContentToCloudLibrary";
          break;
        default:
          break;
      }

      if (v11 == v14 && v13 == (v15 | 0x8000000000000000))
      {
        goto LABEL_31;
      }

      v17 = sub_21700F7D4();

      if (v17)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_21700F814();
  __break(1u);
  return result;
}

uint64_t sub_2168A308C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for MusicURLRequest(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2168A0E98(v10 + 1);
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      sub_21689F968(v10 + 1);
LABEL_10:
      v17 = *v4;
      sub_21700F8F4();
      sub_217006224();
      sub_2168A5534(&qword_280E4A4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_21700E434();
      v18 = sub_21700F944();
      v19 = ~(-1 << *(v17 + 32));
      while (1)
      {
        a2 = v18 & v19;
        if (((*(v17 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_2168A557C();
        v20 = sub_217006204();
        sub_2168A55D0(v9, type metadata accessor for MusicURLRequest);
        if (v20)
        {
          goto LABEL_15;
        }

        v18 = a2 + 1;
      }
    }

    sub_21689E730();
  }

LABEL_7:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2168A5624();
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_21700F814();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }

  return result;
}

uint64_t sub_2168A32FC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_21700E514();
  }

  return OUTLINED_FUNCTION_8();
}

uint64_t sub_2168A3358(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_2168A33D4()
{
  result = qword_27CABAA38;
  if (!qword_27CABAA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAA38);
  }

  return result;
}

unint64_t sub_2168A3428()
{
  result = qword_27CABAA50;
  if (!qword_27CABAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAA50);
  }

  return result;
}

unint64_t sub_2168A34FC()
{
  result = qword_27CABAAA8;
  if (!qword_27CABAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAA8);
  }

  return result;
}

unint64_t sub_2168A3550()
{
  result = qword_27CABAAB0;
  if (!qword_27CABAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAB0);
  }

  return result;
}

unint64_t sub_2168A35A4()
{
  result = qword_27CABAAB8;
  if (!qword_27CABAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAB8);
  }

  return result;
}

unint64_t sub_2168A35F8()
{
  result = qword_27CABAAD0;
  if (!qword_27CABAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAD0);
  }

  return result;
}

unint64_t sub_2168A364C()
{
  result = qword_27CABAAD8;
  if (!qword_27CABAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAD8);
  }

  return result;
}

unint64_t sub_2168A36A4()
{
  result = qword_27CABAAF0;
  if (!qword_27CABAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAF0);
  }

  return result;
}

unint64_t sub_2168A36FC()
{
  result = qword_27CABAAF8;
  if (!qword_27CABAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAAF8);
  }

  return result;
}

unint64_t sub_2168A3754()
{
  result = qword_280E3F2B0[0];
  if (!qword_280E3F2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3F2B0);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ContentKind(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 < 2)
    {
      v8 = 0;
    }

    if (v8 >= 0x14)
    {
      return (v8 - 19);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 22;
    if (a2 + 22 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 22);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 22;
  if (a3 + 22 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xEA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xE9)
  {
    v7 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2168A3934(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 3;
  v3 = v1 - 3;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2168A3950(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_2168A3988(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 105))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2168A39DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentIdentifiers.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2168A3B60(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContentIdentifiers.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContentIdentifiers.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentKind.AppleCuratorCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_2168A3F8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2168A4014(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2168A40F4()
{
  result = qword_27CABAB08;
  if (!qword_27CABAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB08);
  }

  return result;
}

unint64_t sub_2168A414C()
{
  result = qword_27CABAB10;
  if (!qword_27CABAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB10);
  }

  return result;
}

unint64_t sub_2168A41A4()
{
  result = qword_27CABAB18;
  if (!qword_27CABAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB18);
  }

  return result;
}

unint64_t sub_2168A41FC()
{
  result = qword_27CABAB20;
  if (!qword_27CABAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB20);
  }

  return result;
}

unint64_t sub_2168A4254()
{
  result = qword_27CABAB28;
  if (!qword_27CABAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB28);
  }

  return result;
}

unint64_t sub_2168A42AC()
{
  result = qword_27CABAB30;
  if (!qword_27CABAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB30);
  }

  return result;
}

unint64_t sub_2168A4304()
{
  result = qword_27CABAB38;
  if (!qword_27CABAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB38);
  }

  return result;
}

unint64_t sub_2168A435C()
{
  result = qword_27CABAB40;
  if (!qword_27CABAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB40);
  }

  return result;
}

unint64_t sub_2168A43B4()
{
  result = qword_27CABAB48;
  if (!qword_27CABAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB48);
  }

  return result;
}

unint64_t sub_2168A440C()
{
  result = qword_27CABAB50;
  if (!qword_27CABAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB50);
  }

  return result;
}

unint64_t sub_2168A4464()
{
  result = qword_27CABAB58;
  if (!qword_27CABAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB58);
  }

  return result;
}

unint64_t sub_2168A44BC()
{
  result = qword_27CABAB60;
  if (!qword_27CABAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB60);
  }

  return result;
}

unint64_t sub_2168A4514()
{
  result = qword_27CABAB68;
  if (!qword_27CABAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB68);
  }

  return result;
}

unint64_t sub_2168A456C()
{
  result = qword_27CABAB70;
  if (!qword_27CABAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB70);
  }

  return result;
}

unint64_t sub_2168A45C4()
{
  result = qword_27CABAB78;
  if (!qword_27CABAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB78);
  }

  return result;
}

unint64_t sub_2168A461C()
{
  result = qword_27CABAB80;
  if (!qword_27CABAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB80);
  }

  return result;
}

unint64_t sub_2168A4674()
{
  result = qword_27CABAB88;
  if (!qword_27CABAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB88);
  }

  return result;
}

unint64_t sub_2168A46CC()
{
  result = qword_27CABAB90;
  if (!qword_27CABAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB90);
  }

  return result;
}

unint64_t sub_2168A4724()
{
  result = qword_27CABAB98;
  if (!qword_27CABAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAB98);
  }

  return result;
}

unint64_t sub_2168A477C()
{
  result = qword_27CABABA0;
  if (!qword_27CABABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABA0);
  }

  return result;
}

unint64_t sub_2168A47D4()
{
  result = qword_27CABABA8;
  if (!qword_27CABABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABA8);
  }

  return result;
}

unint64_t sub_2168A482C()
{
  result = qword_27CABABB0;
  if (!qword_27CABABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABB0);
  }

  return result;
}

unint64_t sub_2168A4884()
{
  result = qword_27CABABB8;
  if (!qword_27CABABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABB8);
  }

  return result;
}

unint64_t sub_2168A48DC()
{
  result = qword_27CABABC0;
  if (!qword_27CABABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABC0);
  }

  return result;
}

unint64_t sub_2168A4934()
{
  result = qword_27CABABC8;
  if (!qword_27CABABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABC8);
  }

  return result;
}

unint64_t sub_2168A498C()
{
  result = qword_27CABABD0;
  if (!qword_27CABABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABD0);
  }

  return result;
}

unint64_t sub_2168A49E4()
{
  result = qword_27CABABD8;
  if (!qword_27CABABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABD8);
  }

  return result;
}

unint64_t sub_2168A4A3C()
{
  result = qword_27CABABE0;
  if (!qword_27CABABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABE0);
  }

  return result;
}

unint64_t sub_2168A4A94()
{
  result = qword_27CABABE8;
  if (!qword_27CABABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABE8);
  }

  return result;
}

unint64_t sub_2168A4AEC()
{
  result = qword_27CABABF0;
  if (!qword_27CABABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABF0);
  }

  return result;
}

unint64_t sub_2168A4B44()
{
  result = qword_27CABABF8;
  if (!qword_27CABABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABABF8);
  }

  return result;
}

unint64_t sub_2168A4B9C()
{
  result = qword_27CABAC00;
  if (!qword_27CABAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC00);
  }

  return result;
}

unint64_t sub_2168A4BF4()
{
  result = qword_27CABAC08;
  if (!qword_27CABAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC08);
  }

  return result;
}

unint64_t sub_2168A4C4C()
{
  result = qword_27CABAC10;
  if (!qword_27CABAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC10);
  }

  return result;
}

unint64_t sub_2168A4CA4()
{
  result = qword_27CABAC18;
  if (!qword_27CABAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC18);
  }

  return result;
}

unint64_t sub_2168A4CFC()
{
  result = qword_27CABAC20;
  if (!qword_27CABAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC20);
  }

  return result;
}

unint64_t sub_2168A4D54()
{
  result = qword_27CABAC28;
  if (!qword_27CABAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC28);
  }

  return result;
}

unint64_t sub_2168A4DAC()
{
  result = qword_27CABAC30;
  if (!qword_27CABAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC30);
  }

  return result;
}

unint64_t sub_2168A4E04()
{
  result = qword_27CABAC38;
  if (!qword_27CABAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC38);
  }

  return result;
}

unint64_t sub_2168A4E5C()
{
  result = qword_27CABAC40;
  if (!qword_27CABAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC40);
  }

  return result;
}

unint64_t sub_2168A4EB4()
{
  result = qword_27CABAC48;
  if (!qword_27CABAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC48);
  }

  return result;
}

unint64_t sub_2168A4F0C()
{
  result = qword_27CABAC50;
  if (!qword_27CABAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC50);
  }

  return result;
}

unint64_t sub_2168A4F64()
{
  result = qword_27CABAC58;
  if (!qword_27CABAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC58);
  }

  return result;
}

unint64_t sub_2168A4FBC()
{
  result = qword_27CABAC60;
  if (!qword_27CABAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC60);
  }

  return result;
}

unint64_t sub_2168A5014()
{
  result = qword_27CABAC68;
  if (!qword_27CABAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC68);
  }

  return result;
}

unint64_t sub_2168A506C()
{
  result = qword_27CABAC70;
  if (!qword_27CABAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC70);
  }

  return result;
}

unint64_t sub_2168A50C4()
{
  result = qword_27CABAC78;
  if (!qword_27CABAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC78);
  }

  return result;
}

unint64_t sub_2168A511C()
{
  result = qword_27CABAC80;
  if (!qword_27CABAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC80);
  }

  return result;
}

unint64_t sub_2168A5174()
{
  result = qword_27CABAC88;
  if (!qword_27CABAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC88);
  }

  return result;
}

unint64_t sub_2168A51CC()
{
  result = qword_27CABAC90;
  if (!qword_27CABAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC90);
  }

  return result;
}

unint64_t sub_2168A5224()
{
  result = qword_27CABAC98;
  if (!qword_27CABAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABAC98);
  }

  return result;
}

uint64_t sub_2168A5340(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v5 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_36(v5);
  return a2(a1, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)));
}

uint64_t sub_2168A53C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_36(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t sub_2168A5534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2168A557C()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2168A55D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168A5624()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_92_4@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 | (v3 << 6);
  v6 = (*(v2 + 48) + 16 * v5);
  v7 = v6[1];
  v8 = (*(v1 + 48) + 16 * v5);
  *v8 = *v6;
  v8[1] = v7;

  return sub_21700DF14();
}

uint64_t OUTLINED_FUNCTION_117_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return sub_21700F544();
}

uint64_t OUTLINED_FUNCTION_121_1(uint64_t a1, uint64_t a2)
{

  return sub_21700E614();
}

uint64_t sub_2168A59C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_2168A5A3C()
{
  result = qword_27CABB080;
  if (!qword_27CABB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB080);
  }

  return result;
}

unint64_t sub_2168A5A94()
{
  result = qword_27CABB088;
  if (!qword_27CABB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB088);
  }

  return result;
}

unint64_t sub_2168A5AF0()
{
  result = qword_27CABB090;
  if (!qword_27CABB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB090);
  }

  return result;
}

unint64_t sub_2168A5B58()
{
  result = qword_27CABB098;
  if (!qword_27CABB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB098);
  }

  return result;
}

uint64_t sub_2168A5C00@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_2168A5C30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

MusicUI::NowPlayingOptions sub_2168A5CDC@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = NowPlayingOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2168A5D1C@<X0>(uint64_t *a1@<X8>)
{
  result = NowPlayingOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NowPlayingOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

void sub_2168A5E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = sub_217006864();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_56_2();
  v36 = v27(0);
  OUTLINED_FUNCTION_1();
  v38 = v37;
  OUTLINED_FUNCTION_29();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &a9 - v41;
  v43 = (*(v38 + 16))(&a9 - v41, v20, v36, v40);
  v25(v43);
  (*(v30 + 104))(v34, *MEMORY[0x277D2A4B0], v28);
  sub_217006854();
  v44 = *(v30 + 8);
  v44(v34, v28);
  v44(v21, v28);
  (*(v38 + 8))(v42, v36);
  OUTLINED_FUNCTION_26();
}

void sub_2168A5FD4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for LiveRadioGridLockup(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_69_8();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v1[10]);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v62, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_28293DDA0);
  OUTLINED_FUNCTION_62_4();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[11]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_69_8();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v29, v1[12]);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[9]);
  if (v61[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45, v46);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v47, v48, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v49, v50);
    OUTLINED_FUNCTION_2_38();
    v51 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v51, v52, v53, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v54, v55, v56);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v57);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v58, v59, v60);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A63BC()
{
  OUTLINED_FUNCTION_49();
  v47 = v3;
  OUTLINED_FUNCTION_8_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_99_7();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_15();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for TopSearchLockup(v11);
  OUTLINED_FUNCTION_51_3(v12);
  v13 = sub_2168AED64(&qword_280E41CE0, type metadata accessor for TopSearchLockup);
  v14 = OUTLINED_FUNCTION_88_4(v13);
  OUTLINED_FUNCTION_76_6(v14);
  v15 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v15, &qword_27CAB6DB0, &qword_217016C00, v1[17]);
  if (v49)
  {
    sub_216697664(&v50, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v48, &qword_27CAB6DB0, &qword_217016C00);
  }

  v16 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v16);
  v17 = OUTLINED_FUNCTION_98_6(&off_282927618);
  OUTLINED_FUNCTION_76_6(v17);
  OUTLINED_FUNCTION_102_5();
  v18 = OUTLINED_FUNCTION_20_17();
  v19 = OUTLINED_FUNCTION_43_11(v18, v1[18]);
  OUTLINED_FUNCTION_104_4(v19, v20);
  v21 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_104_4(v21, v22);
  OUTLINED_FUNCTION_0_57();
  sub_2168AEDA8(v47, v2, v23);
  v24 = OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_104_4(v24, v25);
  OUTLINED_FUNCTION_104_4(v0 + v1[6], v48);
  if (v49)
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v26 = OUTLINED_FUNCTION_47_11();
    v27(v26);
    v28 = OUTLINED_FUNCTION_45_11();
    v29(v28);
    v30 = __swift_destroy_boxed_opaque_existential_1Tm(v48);
    OUTLINED_FUNCTION_87_6(v30, v31, &qword_27CAB6A00, &unk_217016B60);
    v32 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v33, v34);
    OUTLINED_FUNCTION_12_22();
    v35 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v35, v36, v37, v38);
  }

  else
  {
    v39 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00, &unk_217016B60);
    v32 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v41, v42);
    OUTLINED_FUNCTION_12_22();
    v43 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v43, v44, v45, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v46);
  OUTLINED_FUNCTION_113_5();
  OUTLINED_FUNCTION_114_4();
  OUTLINED_FUNCTION_115_4();
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_23_13(*(v32 + 36));
  OUTLINED_FUNCTION_26();
}

void sub_2168A6778()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_8_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v66 = v5;
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v6);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_13_15();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_4_28();
  v14 = type metadata accessor for PosterLockup(v13);
  OUTLINED_FUNCTION_51_3(v14);
  OUTLINED_FUNCTION_74_7();
  v17 = sub_2168AED64(v15, v16);
  OUTLINED_FUNCTION_88_4(v17);
  OUTLINED_FUNCTION_64_8();
  OUTLINED_FUNCTION_91_8(v18, v19);
  v20 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v20, &qword_27CAB6DB0, &qword_217016C00, *(v2 + 56));
  if (v69)
  {
    sub_216697664(v71, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v68, &qword_27CAB6DB0, &qword_217016C00);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_28291C010);
  OUTLINED_FUNCTION_64_8();
  v23 = v22;
  sub_2168AEDA8(v1, v24, v22);
  OUTLINED_FUNCTION_102_5();
  v25 = OUTLINED_FUNCTION_20_17();
  v26 = OUTLINED_FUNCTION_43_11(v25, *(v2 + 60));
  OUTLINED_FUNCTION_104_4(v26, v27);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_74_7();
  v30 = sub_2168AED64(v28, v29);
  OUTLINED_FUNCTION_88_4(v30);
  v31 = OUTLINED_FUNCTION_42_0();
  sub_2168AEDA8(v31, v32, v23);
  OUTLINED_FUNCTION_86_7();
  sub_21700DF14();
  v33 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_104_4(v33, v34);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_42_13();
  sub_2166A6F60(v38, v39, v40, v41);
  sub_21691A23C(v68);
  v42 = v69;
  if (!v69)
  {
    v57 = sub_216697664(v68, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_87_6(v57, v58, &qword_27CAB6A00, &unk_217016B60);
    v50 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v59, v60);
    OUTLINED_FUNCTION_84_8();
    v61 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v61, v62, v63, &qword_217016C00);
LABEL_8:
    v43 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_26_18();
  OUTLINED_FUNCTION_3_44();
  v43 = sub_21700D6C4();
  v45 = v44;
  (*(v66 + 8))(v42, v67);
  v46 = OUTLINED_FUNCTION_10_20();
  v47(v46);
  v48 = __swift_destroy_boxed_opaque_existential_1Tm(v68);
  OUTLINED_FUNCTION_87_6(v48, v49, &qword_27CAB6A00, &unk_217016B60);
  v50 = type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_89_8(v51, v52);
  OUTLINED_FUNCTION_84_8();
  v53 = OUTLINED_FUNCTION_35_12();
  sub_2166A6F60(v53, v54, v55, v56);
  if (!v45)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_21700DF14();
  OUTLINED_FUNCTION_125_2(&v70);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v3, v64);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_125_2(v71);
  type metadata accessor for MenuConfiguration(0);
  v65 = (v0 + *(v50 + 36));
  *v65 = v43;
  v65[1] = v45;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168A6BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v6 = sub_21700D704();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21700D284();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v19 = type metadata accessor for AlbumTrackLockup(0);
  v49 = v19;
  v50 = sub_2168AED64(&qword_27CABB110, type metadata accessor for AlbumTrackLockup);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_2168AEDA8(v3, boxed_opaque_existential_1, type metadata accessor for AlbumTrackLockup);
  v21 = __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2166A6F60(v21 + v19[23], &v45, &qword_27CAB6DB0, &qword_217016C00);
  v44 = a2;
  if (v46)
  {
    sub_216697664(v51, &qword_27CAB6DB0, &qword_217016C00);
    sub_2166A0F18(&v45, v51);
  }

  else
  {
    sub_216697664(&v45, &qword_27CAB6DB0, &qword_217016C00);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v22 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v22);
  v46 = v19;
  v47 = &off_282928B80;
  v23 = __swift_allocate_boxed_opaque_existential_1(&v45);
  sub_2168AEDA8(v3, v23, type metadata accessor for AlbumTrackLockup);
  sub_216697664(v18, &qword_27CAB6A00, &unk_217016B60);
  sub_2166A0F18(&v45, v48);
  v24 = __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2166A6F60(v24 + v19[26], v18, &qword_27CAB6A00, &unk_217016B60);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v49 = v19;
  v50 = sub_2168AED64(&qword_27CABB118, type metadata accessor for AlbumTrackLockup);
  v25 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_2168AEDA8(v3, v25, type metadata accessor for AlbumTrackLockup);
  v26 = (__swift_project_boxed_opaque_existential_1(v48, v49) + v19[24]);
  v27 = v26[1];
  v42 = *v26;
  sub_21700DF14();
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  sub_2166A6F60(v18, v15, &qword_27CAB6A00, &unk_217016B60);
  sub_2168AEDA8(v43, v12, type metadata accessor for MenuContext);
  sub_2166A6F60(v51, v48, &qword_27CAB6DB0, &qword_217016C00);
  sub_2166A6F60(v3 + v19[6], &v45, &qword_27CAB6DB0, &qword_217016C00);
  if (!v46)
  {
    sub_216697664(&v45, &qword_27CAB6DB0, &qword_217016C00);
    sub_2166A6F60(v15, a3, &qword_27CAB6A00, &unk_217016B60);
    v32 = type metadata accessor for MenuConfiguration(0);
    sub_2168AEDA8(v12, a3 + v32[5], type metadata accessor for MenuContext);
    v34 = (a3 + v32[6]);
    *v34 = v42;
    v34[1] = v27;
    *(a3 + v32[7]) = v44;
    sub_2166A6F60(v48, a3 + v32[8], &qword_27CAB6DB0, &qword_217016C00);
LABEL_8:
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(&v45, v46);
  sub_21700CE54();
  v28 = v38;
  sub_21700D274();
  v29 = sub_21700D6C4();
  v31 = v30;
  (*(v40 + 8))(v28, v41);
  (*(v37 + 8))(v9, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(&v45);
  sub_2166A6F60(v15, a3, &qword_27CAB6A00, &unk_217016B60);
  v32 = type metadata accessor for MenuConfiguration(0);
  sub_2168AEDA8(v12, a3 + v32[5], type metadata accessor for MenuContext);
  v33 = (a3 + v32[6]);
  *v33 = v42;
  v33[1] = v27;
  *(a3 + v32[7]) = v44;
  sub_2166A6F60(v48, a3 + v32[8], &qword_27CAB6DB0, &qword_217016C00);
  if (!v31)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_21700DF14();
  sub_216697664(v48, &qword_27CAB6DB0, &qword_217016C00);
  sub_2168AE788(v12, type metadata accessor for MenuContext);
  sub_216697664(v15, &qword_27CAB6A00, &unk_217016B60);
  sub_216697664(v18, &qword_27CAB6A00, &unk_217016B60);
  sub_216697664(v51, &qword_27CAB6DB0, &qword_217016C00);
  result = type metadata accessor for MenuConfiguration(0);
  v36 = (a3 + v32[9]);
  *v36 = v29;
  v36[1] = v31;
  return result;
}

void sub_2168A72B4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for FlowcaseLockup(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_72_8();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v20);
  OUTLINED_FUNCTION_79_9();
  if (v21)
  {
    sub_216697664(&v63, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v62, &qword_27CAB6DB0, &qword_217016C00);
  }

  v22 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v22);
  OUTLINED_FUNCTION_98_6(&off_28291F4B0);
  OUTLINED_FUNCTION_61_5();
  sub_2168AEDA8(v0, v23, v24);
  OUTLINED_FUNCTION_46_11();
  v25 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v25, v1[16]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_72_8();
  v28 = sub_2168AED64(v26, v27);
  v29 = OUTLINED_FUNCTION_88_4(v28);
  OUTLINED_FUNCTION_44_13(v29);
  v30 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v30, v1[17]);
  v31 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v31, v32);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v33, v34, v35);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v62[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v36 = OUTLINED_FUNCTION_11_24();
    v37(v36);
    v38 = OUTLINED_FUNCTION_10_20();
    v39(v38);
    v40 = __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_87_6(v40, v41, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v42, v43);
    OUTLINED_FUNCTION_2_38();
    v44 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v44, v45, v46, v47);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v48, v49, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v50, v51);
    OUTLINED_FUNCTION_2_38();
    v52 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v52, v53, v54, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56, v57);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v58);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v59, v60, v61);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A7698()
{
  OUTLINED_FUNCTION_49();
  v47 = v3;
  OUTLINED_FUNCTION_8_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_99_7();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_15();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_4_28();
  v12 = type metadata accessor for RecentSearchLockup(v11);
  OUTLINED_FUNCTION_51_3(v12);
  v13 = sub_2168AED64(&qword_27CAB7458, type metadata accessor for RecentSearchLockup);
  v14 = OUTLINED_FUNCTION_88_4(v13);
  OUTLINED_FUNCTION_77_7(v14);
  v15 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v15, &qword_27CAB6DB0, &qword_217016C00, *(v1 + 48));
  if (v49)
  {
    sub_216697664(&v50, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v48, &qword_27CAB6DB0, &qword_217016C00);
  }

  v16 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v16);
  v17 = OUTLINED_FUNCTION_98_6(&off_28291B398);
  OUTLINED_FUNCTION_77_7(v17);
  OUTLINED_FUNCTION_102_5();
  v18 = OUTLINED_FUNCTION_20_17();
  v19 = OUTLINED_FUNCTION_43_11(v18, *(v1 + 52));
  OUTLINED_FUNCTION_104_4(v19, v20);
  v21 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_104_4(v21, v22);
  OUTLINED_FUNCTION_0_57();
  sub_2168AEDA8(v47, v2, v23);
  v24 = OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_111_3(v24, v25);
  OUTLINED_FUNCTION_111_3(v0 + 40, v48);
  if (v49)
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v26 = OUTLINED_FUNCTION_47_11();
    v27(v26);
    v28 = OUTLINED_FUNCTION_45_11();
    v29(v28);
    v30 = __swift_destroy_boxed_opaque_existential_1Tm(v48);
    OUTLINED_FUNCTION_87_6(v30, v31, &qword_27CAB6A00, &unk_217016B60);
    v32 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v33, v34);
    OUTLINED_FUNCTION_12_22();
    v35 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v35, v36, v37, v38);
  }

  else
  {
    v39 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00, &unk_217016B60);
    v32 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v41, v42);
    OUTLINED_FUNCTION_12_22();
    v43 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v43, v44, v45, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v46);
  OUTLINED_FUNCTION_113_5();
  OUTLINED_FUNCTION_114_4();
  OUTLINED_FUNCTION_115_4();
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_23_13(*(v32 + 36));
  OUTLINED_FUNCTION_26();
}

void sub_2168A7A50()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for SuperHeroLockup(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_71_8();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_59_6();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v1[23]);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v62, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_282928FE8);
  OUTLINED_FUNCTION_59_6();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[24]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_71_8();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v29, v1[25]);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v61[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45, v46);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v47, v48, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v49, v50);
    OUTLINED_FUNCTION_2_38();
    v51 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v51, v52, v53, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v54, v55, v56);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v57);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v58, v59, v60);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A7E38()
{
  OUTLINED_FUNCTION_49();
  v51 = v3;
  v52 = v4;
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  v49 = v6;
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v48 = OUTLINED_FUNCTION_99_7();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_13_15();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_56_2();
  v19 = type metadata accessor for ContentDescriptor(0);
  memset(v57, 0, sizeof(v57));
  v58 = 0;
  OUTLINED_FUNCTION_88(v1, v20, v21, v19);
  v22 = type metadata accessor for BubbleLockup(0);
  v54 = v22;
  v55 = &off_28293B7B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  sub_2168AEDA8(v0, boxed_opaque_existential_1, type metadata accessor for BubbleLockup);
  OUTLINED_FUNCTION_102_5();
  v24 = OUTLINED_FUNCTION_20_17();
  v25 = OUTLINED_FUNCTION_43_11(v24, v22[10]);
  OUTLINED_FUNCTION_104_4(v25, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  v56[3] = v22;
  v27 = sub_2168AED64(&qword_27CABB260, type metadata accessor for BubbleLockup);
  OUTLINED_FUNCTION_88_4(v27);
  v28 = OUTLINED_FUNCTION_42_0();
  sub_2168AEDA8(v28, v29, type metadata accessor for BubbleLockup);
  v30 = *(OUTLINED_FUNCTION_86_7() + v22[14] + 8);
  sub_21700DF14();
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  OUTLINED_FUNCTION_104_4(v1, v17);
  OUTLINED_FUNCTION_0_57();
  sub_2168AEDA8(v51, v12, v31);
  v32 = OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_104_4(v32, v33);
  OUTLINED_FUNCTION_104_4(v0 + v22[6], v53);
  if (v54)
  {
    OUTLINED_FUNCTION_109_3();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_3_44();
    v34 = sub_21700D6C4();
    v36 = v35;
    (*(v49 + 8))(v2, v50);
    v37 = OUTLINED_FUNCTION_45_11();
    v38(v37, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    sub_2166A6F60(v17, v52, &qword_27CAB6A00, &unk_217016B60);
    v39 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    sub_2168AEDA8(v12, v52 + v40, v41);
    OUTLINED_FUNCTION_120_3((v52 + v39[6]));
    *(v52 + v42) = v30;
    sub_2166A6F60(v56, v52 + v39[8], &qword_27CAB6DB0, &qword_217016C00);
    if (!v36)
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }
  }

  else
  {
    sub_216697664(v53, &qword_27CAB6DB0, &qword_217016C00);
    sub_2166A6F60(v17, v52, &qword_27CAB6A00, &unk_217016B60);
    v39 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    sub_2168AEDA8(v12, v52 + v43, v44);
    OUTLINED_FUNCTION_120_3((v52 + v39[6]));
    *(v52 + v45) = v30;
    sub_2166A6F60(v56, v52 + v39[8], &qword_27CAB6DB0, &qword_217016C00);
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_125_2(v56);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v12, v46);
  sub_216697664(v17, &qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_125_2(v57);
  type metadata accessor for MenuConfiguration(0);
  v47 = (v52 + v39[9]);
  *v47 = v34;
  v47[1] = v36;
  OUTLINED_FUNCTION_26();
}

void sub_2168A82D8()
{
  OUTLINED_FUNCTION_49();
  v42 = v2;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_8_1();
  v6 = type metadata accessor for MenuContext(v5);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v19 = type metadata accessor for SplitPosterLockup.Item(0);
  v46[3] = v19;
  v20 = sub_2168AED64(&qword_27CABB310, type metadata accessor for SplitPosterLockup.Item);
  OUTLINED_FUNCTION_88_4(v20);
  OUTLINED_FUNCTION_52_7();
  sub_2168AEDA8(v1, v21, v22);
  v23 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v23, &qword_27CAB6DB0, &qword_217016C00, *(v19 + 40));
  if (v44)
  {
    sub_216697664(v47, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v43, &qword_27CAB6DB0, &qword_217016C00);
  }

  v24 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_88(v18, v25, v26, v24);
  v44 = v19;
  v45 = &off_2829163B8;
  __swift_allocate_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_52_7();
  sub_2168AEDA8(v1, v27, v28);
  sub_216697664(v18, &qword_27CAB6A00, &unk_217016B60);
  v29 = OUTLINED_FUNCTION_20_17();
  sub_2166A6F60(v29 + *(v19 + 20), v18, &qword_27CAB6A00, &unk_217016B60);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  OUTLINED_FUNCTION_37_13();
  sub_2166A6F60(v30, v31, v32, &unk_217016B60);
  sub_2168AEDA8(v4, v10, type metadata accessor for MenuContext);
  v33 = OUTLINED_FUNCTION_42_13();
  sub_2166A6F60(v33, v34, &qword_27CAB6DB0, &qword_217016C00);
  sub_2166A6F60(v15, v0, &qword_27CAB6A00, &unk_217016B60);
  v35 = type metadata accessor for MenuConfiguration(0);
  sub_2168AEDA8(v10, v0 + v35[5], type metadata accessor for MenuContext);
  v36 = (v0 + v35[6]);
  *v36 = 0;
  v36[1] = 0;
  *(v0 + v35[7]) = v42;
  v37 = OUTLINED_FUNCTION_35_12();
  sub_2166A6F60(v37, v38, &qword_27CAB6DB0, &qword_217016C00);
  sub_21700DF14();
  sub_216697664(v46, &qword_27CAB6DB0, &qword_217016C00);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v10, v39);
  sub_216697664(v15, &qword_27CAB6A00, &unk_217016B60);
  sub_216697664(v18, &qword_27CAB6A00, &unk_217016B60);
  sub_216697664(v47, &qword_27CAB6DB0, &qword_217016C00);
  v40 = (v0 + v35[9]);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_26();
}

void sub_2168A85FC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for VerticalVideoLockup(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_70_5();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_66_9();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v1[14]);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v62, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_282930770);
  OUTLINED_FUNCTION_66_9();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[15]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_70_5();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v29, v1[16]);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v61[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45, v46);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v47, v48, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v49, v50);
    OUTLINED_FUNCTION_2_38();
    v51 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v51, v52, v53, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v54, v55, v56);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v57);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v58, v59, v60);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A89E4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = _s6LockupVMa(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_68_7();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_57_10();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v1[11]);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v62, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_2829167C0);
  OUTLINED_FUNCTION_57_10();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[12]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_68_7();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v29, v1[13]);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[8]);
  if (v61[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45, v46);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v47, v48, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v49, v50);
    OUTLINED_FUNCTION_2_38();
    v51 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v51, v52, v53, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v54, v55, v56);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v57);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v58, v59, v60);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A8DCC()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for HorizontalPosterLockup(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_67_6();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_65_5();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v20);
  OUTLINED_FUNCTION_79_9();
  if (v21)
  {
    sub_216697664(&v63, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v62, &qword_27CAB6DB0, &qword_217016C00);
  }

  v22 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v22);
  OUTLINED_FUNCTION_98_6(&off_2829380E8);
  OUTLINED_FUNCTION_65_5();
  sub_2168AEDA8(v0, v23, v24);
  OUTLINED_FUNCTION_46_11();
  v25 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v25, v1[16]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_67_6();
  v28 = sub_2168AED64(v26, v27);
  v29 = OUTLINED_FUNCTION_88_4(v28);
  OUTLINED_FUNCTION_44_13(v29);
  v30 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v30, v1[17]);
  v31 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v31, v32);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v33, v34, v35);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v62[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v36 = OUTLINED_FUNCTION_11_24();
    v37(v36);
    v38 = OUTLINED_FUNCTION_10_20();
    v39(v38);
    v40 = __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_87_6(v40, v41, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v42, v43);
    OUTLINED_FUNCTION_2_38();
    v44 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v44, v45, v46, v47);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v48, v49, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v50, v51);
    OUTLINED_FUNCTION_2_38();
    v52 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v52, v53, v54, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56, v57);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v58);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v59, v60, v61);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A91B0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for SquareLockup(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_55_10();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_56_8();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v1[19]);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v62, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_28292DB28);
  OUTLINED_FUNCTION_56_8();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[20]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_55_10();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v29, v1[21]);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[18]);
  if (v61[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45, v46);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v47, v48, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v49, v50);
    OUTLINED_FUNCTION_2_38();
    v51 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v51, v52, v53, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v54, v55, v56);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v57);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v58, v59, v60);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A9598()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for TrackLockup(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_54_11();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v1[27]);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v62, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_282933EB0);
  OUTLINED_FUNCTION_63_6();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[30]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_54_11();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v29, v1[28]);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[6]);
  if (v61[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45, v46);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v47, v48, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v49, v50);
    OUTLINED_FUNCTION_2_38();
    v51 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v51, v52, v53, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v54, v55, v56);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v57);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v58, v59, v60);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A9980()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for HorizontalLockup(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_75_4();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_58_7();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v1[18]);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v62, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v61, &qword_27CAB6DB0, &qword_217016C00);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_282913660);
  OUTLINED_FUNCTION_58_7();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[19]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_75_4();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_31_18(v29, v1[20]);
  v30 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v30, v31);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v32, v33, v34);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[10]);
  if (v61[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v35 = OUTLINED_FUNCTION_11_24();
    v36(v35);
    v37 = OUTLINED_FUNCTION_10_20();
    v38(v37);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_87_6(v39, v40, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v41, v42);
    OUTLINED_FUNCTION_2_38();
    v43 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v43, v44, v45, v46);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v47, v48, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v49, v50);
    OUTLINED_FUNCTION_2_38();
    v51 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v51, v52, v53, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v54, v55, v56);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v57);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v58, v59, v60);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168A9D68()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_29_13(v3);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_13_15();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_4_28();
  v13 = type metadata accessor for ArtistLatestReleaseLockup(v12);
  OUTLINED_FUNCTION_51_3(v13);
  OUTLINED_FUNCTION_73_6();
  v16 = sub_2168AED64(v14, v15);
  OUTLINED_FUNCTION_88_4(v16);
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_91_8(v17, v18);
  v19 = OUTLINED_FUNCTION_86_7();
  OUTLINED_FUNCTION_96_2(v19, &qword_27CAB6DB0, &qword_217016C00, v1[14]);
  OUTLINED_FUNCTION_79_9();
  if (v20)
  {
    sub_216697664(&v63, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_97_4();
  }

  else
  {
    sub_216697664(v62, &qword_27CAB6DB0, &qword_217016C00);
  }

  v21 = OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_25_13(v21);
  OUTLINED_FUNCTION_98_6(&off_282937238);
  OUTLINED_FUNCTION_60_5();
  sub_2168AEDA8(v0, v22, v23);
  OUTLINED_FUNCTION_46_11();
  v24 = OUTLINED_FUNCTION_20_17();
  OUTLINED_FUNCTION_27_15(v24, v1[12]);
  OUTLINED_FUNCTION_33_16();
  OUTLINED_FUNCTION_73_6();
  v27 = sub_2168AED64(v25, v26);
  v28 = OUTLINED_FUNCTION_88_4(v27);
  OUTLINED_FUNCTION_44_13(v28);
  v29 = OUTLINED_FUNCTION_78_6();
  OUTLINED_FUNCTION_31_18(v29, v30);
  v31 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_90_5(v31, v32);
  OUTLINED_FUNCTION_0_57();
  OUTLINED_FUNCTION_105_4(v33, v34, v35);
  OUTLINED_FUNCTION_32_14();
  OUTLINED_FUNCTION_30_13(v1[10]);
  if (v62[3])
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v36 = OUTLINED_FUNCTION_11_24();
    v37(v36);
    v38 = OUTLINED_FUNCTION_10_20();
    v39(v38);
    v40 = __swift_destroy_boxed_opaque_existential_1Tm(v62);
    OUTLINED_FUNCTION_87_6(v40, v41, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v42, v43);
    OUTLINED_FUNCTION_2_38();
    v44 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v44, v45, v46, v47);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v48, v49, &qword_27CAB6A00, &unk_217016B60);
    type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_89_8(v50, v51);
    OUTLINED_FUNCTION_2_38();
    v52 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v52, v53, v54, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v55, v56, v57);
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v2, v58);
  OUTLINED_FUNCTION_41_10();
  OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_37_13();
  sub_216697664(v59, v60, v61);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_26();
}

void sub_2168AA14C()
{
  OUTLINED_FUNCTION_49();
  v45 = v3;
  OUTLINED_FUNCTION_8_1();
  sub_21700D704();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_99_7();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_13_15();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_119_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_56_2();
  v11 = type metadata accessor for ContentDescriptor(0);
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  OUTLINED_FUNCTION_88(v2, v12, v13, v11);
  v14 = type metadata accessor for ListLockup(0);
  v47 = v14;
  v48 = &off_28291B1E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  OUTLINED_FUNCTION_91_8(boxed_opaque_existential_1, boxed_opaque_existential_1);
  sub_216697664(v2, &qword_27CAB6A00, &unk_217016B60);
  v16 = OUTLINED_FUNCTION_20_17();
  v17 = OUTLINED_FUNCTION_43_11(v16, *(v14 + 44));
  OUTLINED_FUNCTION_111_3(v17, v18);
  v19 = OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_111_3(v19, v20);
  OUTLINED_FUNCTION_0_57();
  sub_2168AEDA8(v45, v1, v21);
  v22 = OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_111_3(v22, v23);
  OUTLINED_FUNCTION_111_3(v0 + *(v14 + 52), v46);
  if (v47)
  {
    OUTLINED_FUNCTION_8_24();
    sub_21700CE54();
    OUTLINED_FUNCTION_123_2();
    OUTLINED_FUNCTION_3_44();
    sub_21700D6C4();
    v24 = OUTLINED_FUNCTION_47_11();
    v25(v24);
    v26 = OUTLINED_FUNCTION_45_11();
    v27(v26);
    v28 = __swift_destroy_boxed_opaque_existential_1Tm(v46);
    OUTLINED_FUNCTION_87_6(v28, v29, &qword_27CAB6A00, &unk_217016B60);
    v30 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v31, v32);
    OUTLINED_FUNCTION_12_22();
    v33 = OUTLINED_FUNCTION_35_12();
    sub_2166A6F60(v33, v34, v35, v36);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_87_6(v37, v38, &qword_27CAB6A00, &unk_217016B60);
    v30 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_0_57();
    OUTLINED_FUNCTION_112_4(v39, v40);
    OUTLINED_FUNCTION_12_22();
    v41 = OUTLINED_FUNCTION_21_18();
    sub_2166A6F60(v41, v42, v43, &qword_217016C00);
    OUTLINED_FUNCTION_50_8();
  }

  sub_21700DF14();
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_1_44();
  sub_2168AE788(v1, v44);
  OUTLINED_FUNCTION_113_5();
  OUTLINED_FUNCTION_114_4();
  OUTLINED_FUNCTION_115_4();
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_23_13(*(v30 + 36));
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168AA4BC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_83_8(a1);
  sub_2166A6F60(v3, v4, &qword_27CAB7C70, &qword_2170182F0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB358, &unk_2170234C0);
  memcpy(__dst, *(v2 + 16), 0x49uLL);
  v6 = OUTLINED_FUNCTION_16_19();
  memmove(v6, v7, 0x49uLL);
  memcpy(v25, *(v2 + 24), 0xE9uLL);
  v8 = OUTLINED_FUNCTION_16_19();
  memmove(v8, v9, 0xE9uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D88, &unk_217018950);
  OUTLINED_FUNCTION_9();
  v10 = OUTLINED_FUNCTION_16_19();
  v11(v10);
  OUTLINED_FUNCTION_85_6(v1 + v5[28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D80, &unk_2170234D0);
  OUTLINED_FUNCTION_9();
  v12 = OUTLINED_FUNCTION_16_19();
  v13(v12);
  v14 = v1 + v5[36];
  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  v17 = *v15;
  v18 = *(v15 + 8);
  v19 = *(v15 + 24);
  LOBYTE(v15) = v15[40];
  *v14 = v17;
  *(v14 + 8) = v18;
  *(v14 + 24) = v19;
  *(v14 + 40) = v15;
  v20 = v1 + v5[40];
  v21 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v20 = v21;
  *(v20 + 8) = v16;
  sub_2166A6F60(*(v2 + 72), v1 + v5[44], &qword_27CAB7D78, &unk_217018940);
  sub_2166A6F60(__dst, v23, &qword_27CAB7E20, &unk_2170234A0);
  return sub_2166A6F60(v25, v23, &qword_27CAB7E18, &unk_217018BA0);
}

uint64_t sub_2168AA694()
{
  OUTLINED_FUNCTION_121_2();
  v3 = **v2;
  OUTLINED_FUNCTION_124_3(v12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *v4;
  v11 = *(v4 + 8);
  v7 = v11;
  v8 = *v5;
  *v1 = v3;
  OUTLINED_FUNCTION_124_3((v1 + 8));
  *(v1 + 112) = v6;
  *(v1 + 120) = v7;
  *(v1 + 121) = v8;

  return sub_2166A6F60(v12, v10, &qword_27CAB87F8, &unk_2170234E0);
}

uint64_t sub_2168AA734()
{
  OUTLINED_FUNCTION_121_2();
  v3 = *(*v2 + 8);
  *v1 = **v2;
  *(v1 + 8) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB308, &qword_217023418);
  sub_2166A6F60(v0[1], v1 + v4[12], &qword_27CABA1B0, &qword_217023420);
  v5 = v0[3];
  OUTLINED_FUNCTION_82_6(v1 + v4[16]);
  v6 = v4[20];
  memcpy(__dst, v5, 0x91uLL);
  memmove((v1 + v6), v5, 0x91uLL);
  sub_2166A6F60(v0[4], v1 + v4[24], &qword_27CABA198, &qword_21701F7C0);
  OUTLINED_FUNCTION_82_6(v1 + v4[28]);
  return sub_2166A6F60(__dst, &v8, &qword_27CABA1C8, &qword_21701F820);
}

uint64_t sub_2168AA838@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2168AEDA8(*a1, a2, type metadata accessor for TrackBadgeView);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB198, &qword_2170232C8);
  v5 = v4[12];
  v6 = a1[1];
  memcpy(__dst, v6, sizeof(__dst));
  memmove((a2 + v5), v6, 0x68uLL);
  v7 = (a2 + v4[16]);
  v9 = a1[2];
  v8 = a1[3];
  v10 = v9[3];
  v11 = *v9;
  v12 = v9[1];
  v7[2] = v9[2];
  v7[3] = v10;
  *v7 = v11;
  v7[1] = v12;
  sub_2166A6F60(v8, a2 + v4[20], &qword_27CABB158, &qword_217023200);
  sub_2166A6F60(a1[4], a2 + v4[24], &qword_27CABB140, &qword_2170231E8);
  sub_2166A6F60(a1[5], a2 + v4[28], &qword_27CABB128, &qword_2170231D0);
  return sub_2166A6F60(__dst, &v14, &qword_27CABB178, &unk_21704A020);
}

uint64_t sub_2168AA968@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, 0x159uLL);
  memcpy(__src, v4, 0x159uLL);
  v5 = *(a1 + 8);
  memcpy(v11, v5, 0x69uLL);
  memcpy(&__src[352], v5, 0x69uLL);
  OUTLINED_FUNCTION_124_3(v12);
  OUTLINED_FUNCTION_124_3(&__src[464]);
  v6 = *(a1 + 24);
  memcpy(v13, v6, 0x69uLL);
  memcpy(&__src[568], v6, 0x69uLL);
  memcpy(a2, __src, 0x2A1uLL);
  sub_2166A6F60(__dst, v8, &qword_27CABB2E8, &qword_2170233F8);
  sub_2166A6F60(v11, v8, &qword_27CABB2F0, &qword_217023400);
  sub_2166A6F60(v12, v8, &qword_27CABB2F8, &qword_217023408);
  return sub_2166A6F60(v13, v8, &qword_27CABB300, &qword_217023410);
}

uint64_t sub_2168AAAA8()
{
  OUTLINED_FUNCTION_121_2();
  sub_2166A6F60(*v2, v3, &qword_27CABB218, &qword_21702D230);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB220, &qword_217023340);
  sub_2166A6F60(v0[1], v1 + v4[12], &qword_27CABB228, &qword_217023348);
  v5 = v0[3];
  OUTLINED_FUNCTION_36_11(v1 + v4[16]);
  v6 = v4[20];
  memcpy(__dst, v5, 0x71uLL);
  memmove((v1 + v6), v5, 0x71uLL);
  sub_2166A6F60(v0[4], v1 + v4[24], &qword_27CABB230, &qword_217023350);
  OUTLINED_FUNCTION_36_11(v1 + v4[28]);
  return sub_2166A6F60(__dst, &v8, &qword_27CABB238, qword_217023358);
}

uint64_t sub_2168AABB4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_83_8(a1);
  sub_2168AEDA8(v3, v4, type metadata accessor for TrackBadgeView);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB1D0, &qword_217023318);
  sub_2168AEDA8(*(v2 + 8), v1 + v5[12], type metadata accessor for PlaylistTrackArtworkView);
  memcpy(__dst, *(v2 + 16), 0xB1uLL);
  v6 = OUTLINED_FUNCTION_16_19();
  memmove(v6, v7, 0xB1uLL);
  sub_2166A6F60(*(v2 + 24), v1 + v5[20], &qword_27CABB1D8, &unk_217023320);
  OUTLINED_FUNCTION_82_6(v1 + v5[24]);
  sub_2166A6F60(v8, v1 + v5[28], &qword_27CABB128, &qword_2170231D0);
  return sub_2166A6F60(__dst, &v10, &qword_27CABB1E0, &qword_217045510);
}

uint64_t sub_2168AACD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  v9 = *(*a1 + 40);
  v8 = *(*a1 + 32);
  *a2 = **a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  v21 = v4[1];
  v22 = *v4;
  v19 = v4[3];
  v20 = v4[2];
  v24 = v4[4];
  v23 = v4[5];
  *(a2 + 48) = *v4;
  *(a2 + 56) = v21;
  *(a2 + 64) = v20;
  *(a2 + 72) = v19;
  *(a2 + 80) = v24;
  *(a2 + 88) = v23;
  v10 = a1[2];
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *(a2 + 96) = v11;
  *(a2 + 104) = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB298, &qword_2170233A8);
  v13 = v12[20];
  v14 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2A0, &qword_2170233B0);
  OUTLINED_FUNCTION_9();
  (*(v15 + 16))(a2 + v13, v14);
  sub_2166A6F60(a1[4], a2 + v12[24], &qword_27CABB2A8, &qword_2170233B8);
  sub_2166A6F60(a1[5], a2 + v12[28], &qword_27CABB2B0, &unk_2170233C0);
  OUTLINED_FUNCTION_36_11(a2 + v12[32]);
  v16 = OUTLINED_FUNCTION_8();
  sub_2167770D0(v16, v17, v6, v7);

  sub_2167770D0(v22, v21, v20, v19);
}

uint64_t sub_2168AAE6C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_83_8(a1);
  sub_2166A6F60(v3, v4, &qword_27CABB360, &qword_217062400);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB368, &qword_2170234F0);
  memcpy(__dst, *(v2 + 8), sizeof(__dst));
  v6 = OUTLINED_FUNCTION_16_19();
  memmove(v6, v7, 0xB8uLL);
  OUTLINED_FUNCTION_122_3(v1 + v5[16]);
  v8 = (v1 + v5[20]);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  sub_2166A6F60(*(v2 + 32), v1 + v5[24], &qword_27CABB370, &qword_2170234F8);
  sub_2166A6F60(*(v2 + 40), v1 + v5[28], &qword_27CABB378, &qword_217023500);
  sub_2166A6F60(__dst, &v12, &qword_27CABB380, &unk_217023508);
  return sub_21700DF14();
}

uint64_t sub_2168AAF7C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LODWORD(v2) = *(v2 + 12);
  v9 = a1[2];
  v10 = a1[3];
  v11 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  v15 = v9[4];
  v16 = v9[5];
  LODWORD(v9) = *(v9 + 12);
  v17 = *v10;
  v20 = *(v10 + 8);
  v18 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v18;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v2;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  *(a2 + 112) = v16;
  *(a2 + 120) = v9;
  *(a2 + 128) = v17;
  *(a2 + 136) = v20;
  sub_2167770D0(v4, v3, v5, v6);

  sub_2167770D0(v11, v12, v13, v14);
}

uint64_t sub_2168AB074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2D8, &qword_2170233E8);
  OUTLINED_FUNCTION_53_9(v6);
  sub_2166A6F60(*(a1 + 16), a2 + v2[16], &qword_27CABB2C8, &qword_2170233D8);
  sub_2166A6F60(*(a1 + 24), a2 + v2[20], &qword_27CABB2E0, &qword_2170233F0);
  OUTLINED_FUNCTION_122_3(a2 + v2[24]);
  v7 = (a2 + v2[28]);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return sub_21700DF14();
}

uint64_t sub_2168AB144(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_83_8(a1);
  sub_2166A6F60(v4, v5, &qword_27CABB2B8, &unk_217069650);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2C0, &qword_2170233D0);
  OUTLINED_FUNCTION_53_9(v6);
  sub_2166A6F60(*(v2 + 16), v1 + v3[16], &qword_27CABB2C8, &qword_2170233D8);
  OUTLINED_FUNCTION_36_11(v1 + v3[20]);
  v7 = (v1 + v3[24]);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  sub_2166A6F60(*(v2 + 40), v1 + v3[28], &qword_27CABB2D0, &qword_2170233E0);

  return sub_21700DF14();
}

void sub_2168AB218()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = (*v0)[1];
  v5 = *(*v0 + 16);
  v6 = *(*v0 + 3);
  v7 = (*v0)[5];
  v8 = (*v0)[6];
  *v2 = **v0;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  *(v2 + 40) = v7;
  *(v2 + 48) = v8;
  OUTLINED_FUNCTION_118_4();
  memcpy(v9, v10, v11);
  OUTLINED_FUNCTION_118_4();
  memmove(v12, v13, v14);
  v15 = v1[2];
  memcpy(__dst, v15, 0xB9uLL);
  memmove((v3 + 320), v15, 0xB9uLL);
  OUTLINED_FUNCTION_117_4();
  memcpy(v16, v17, v18);
  OUTLINED_FUNCTION_117_4();
  memmove(v19, v20, v21);
  OUTLINED_FUNCTION_116_3();
  memcpy(v22, v23, v24);
  OUTLINED_FUNCTION_116_3();
  memmove(v25, v26, v27);
  OUTLINED_FUNCTION_118_4();
  memcpy(v28, v29, v30);
  OUTLINED_FUNCTION_118_4();
  memmove(v31, v32, v33);
  OUTLINED_FUNCTION_117_4();
  memcpy(v34, v35, v36);
  OUTLINED_FUNCTION_117_4();
  memmove(v37, v38, v39);
  OUTLINED_FUNCTION_116_3();
  memcpy(v40, v41, v42);
  OUTLINED_FUNCTION_116_3();
  memmove(v43, v44, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB328, &qword_217023478);
  sub_2166A6F60(v1[9], v3 + v46[44], &qword_27CABB330, &qword_217023480);
  v47 = v1[11];
  OUTLINED_FUNCTION_85_6(v3 + v46[48]);
  v48 = v46[52];
  memcpy(v72, v47, 0x101uLL);
  memmove((v3 + v48), v47, 0x101uLL);
  v49 = v46[56];
  v50 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB338, &qword_217023488);
  OUTLINED_FUNCTION_9();
  (*(v51 + 16))(v3 + v49, v50);

  OUTLINED_FUNCTION_108_6(v65, v52, v53, v54, v55);
  sub_2166A6F60(__dst, v64, &qword_27CABB348, &qword_217023498);
  sub_2166A6F60(v67, v64, &qword_27CAB7E20, &unk_2170234A0);
  sub_2166A6F60(v68, v64, &qword_27CAB7E18, &unk_217018BA0);
  OUTLINED_FUNCTION_108_6(v69, v56, v57, v58, v59);
  sub_2166A6F60(v70, v64, &qword_27CABB350, &unk_2170234B0);
  sub_2166A6F60(v71, v64, &qword_27CAB7E18, &unk_217018BA0);
  OUTLINED_FUNCTION_108_6(v72, v60, v61, v62, v63);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168AB50C()
{
  OUTLINED_FUNCTION_121_2();
  type metadata accessor for PlaybackPresenter(0);
  sub_2168AED64(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  *(v1 + 8) = sub_217008CF4();
  *(v1 + 16) = v2;
  *(v1 + 24) = swift_getKeyPath();
  *(v1 + 32) = 0;
  *(v1 + 40) = swift_getKeyPath();
  *(v1 + 48) = 0;
  type metadata accessor for AlbumTrackLockupView(0);
  sub_2167CD8D8();
  sub_2170082B4();
  result = sub_2170082B4();
  *v1 = v0;
  return result;
}

uint64_t sub_2168AB620@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v59 = a1;
  v58 = sub_217008C74();
  OUTLINED_FUNCTION_1();
  v56 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v7 = OUTLINED_FUNCTION_8_0(v6);
  v48 = type metadata accessor for AlbumTrackLockupView(v7);
  OUTLINED_FUNCTION_1();
  v49 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for AlbumTrackLockup(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0A0, &qword_217023120) - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_119_1();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0A8, &qword_217023128);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0B0, &qword_217023130);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0B8, &qword_217023138);
  OUTLINED_FUNCTION_1();
  v55 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  v53 = &v48 - v27;
  v51 = *v1;
  sub_2168ABD3C();
  sub_2166A6F60(v16 + *(v13 + 100), v2, &qword_27CAB6DB0, &qword_217016C00);
  sub_2168AE788(v16, type metadata accessor for AlbumTrackLockup);
  v28 = v17[13];
  v29 = sub_217007F04();
  OUTLINED_FUNCTION_88(v2 + v28, v30, v31, v29);
  sub_2168AEDA8(v3, &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlbumTrackLockupView);
  v32 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v33 = swift_allocObject();
  sub_2168AE8FC(&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for AlbumTrackLockupView);
  v34 = v17[14];
  *(v2 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v35 = v2 + v17[15];
  *v35 = swift_getKeyPath();
  v35[40] = 0;
  v2[5] = sub_2168AE3EC;
  v2[6] = v33;
  v2[7] = 0;
  v2[8] = 0;
  sub_2168AD5D4();
  if (v36)
  {

    sub_2168AD484();
  }

  sub_21700B3B4();
  sub_217008BB4();
  sub_2166DDCC0(v2, v21, &qword_27CABB0A0, &qword_217023120);
  memcpy(&v21[*(v50 + 36)], __src, 0x70uLL);
  v37 = v54;
  sub_217008C54();
  if (sub_2168AD484())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    sub_2170082C4();
    v38 = *v60 + 58.0;
  }

  else
  {
    v38 = 58.0;
  }

  v39 = &v24[*(v52 + 36)];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE8, &qword_2170454A0);
  (*(v56 + 32))(&v39[*(v40 + 40)], v37, v58);
  *v39 = v38;
  v39[8] = 0;
  v41 = sub_2166DDCC0(v21, v24, &qword_27CABB0A8, &qword_217023128);
  MEMORY[0x28223BE20](v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0C0, &unk_2170231B0);
  sub_2168AE40C();
  sub_2168AE57C();
  v42 = v53;
  sub_21700A3B4();
  sub_216697664(v24, &qword_27CABB0B0, &qword_217023130);
  v60[3] = sub_21700C2F4();
  v60[4] = MEMORY[0x277CD8390];
  __swift_allocate_boxed_opaque_existential_1(v60);
  sub_2168C032C();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB108, &qword_2170231C0);
  v44 = v59;
  v45 = (v59 + *(v43 + 36));
  sub_2167B7D58(v60, (v45 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2168AED64(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *v45 = sub_217008CF4();
  v45[1] = v46;
  (*(v55 + 32))(v44, v42, v57);
  return __swift_destroy_boxed_opaque_existential_1Tm(v60);
}

uint64_t sub_2168ABD3C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v13 = type metadata accessor for AlbumTrackLockup(v0);
  v14 = sub_2168AED64(qword_280E41540, type metadata accessor for AlbumTrackLockup);
  v15 = sub_2168AED64(&qword_280E41520, type metadata accessor for AlbumTrackLockup);
  swift_getKeyPath();
  OUTLINED_FUNCTION_100_0();
  v1 = OUTLINED_FUNCTION_28_18(&qword_27CABB1A0, &unk_27CABF8B0, &unk_217033E30);
  OUTLINED_FUNCTION_94_2(v1, v2, v3, v4, v5, v6, v13, v14, &off_28293B3C0, v15);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v7, v8, v9, v10, v11);
  return OUTLINED_FUNCTION_107_7();
}

uint64_t sub_2168ABE5C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v13 = type metadata accessor for ArtistDetailHeaderLockup(v0);
  v14 = sub_2168AED64(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup);
  v15 = sub_2168AED64(&qword_280E36D70, type metadata accessor for ArtistDetailHeaderLockup);
  swift_getKeyPath();
  OUTLINED_FUNCTION_100_0();
  v1 = OUTLINED_FUNCTION_28_18(&qword_27CABB1A8, &qword_27CABB1B0, &qword_217023310);
  OUTLINED_FUNCTION_94_2(v1, v2, v3, v4, v5, v6, v13, v14, &off_28293B400, v15);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v7, v8, v9, v10, v11);
  return OUTLINED_FUNCTION_107_7();
}

uint64_t sub_2168ABF7C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v13 = type metadata accessor for PlaylistTrackLockup(v0);
  v14 = sub_2168AED64(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup);
  v15 = sub_2168AED64(&qword_280E3D5C8, type metadata accessor for PlaylistTrackLockup);
  swift_getKeyPath();
  OUTLINED_FUNCTION_100_0();
  v1 = OUTLINED_FUNCTION_28_18(&qword_27CABB1E8, &unk_27CABF910, &unk_217023330);
  OUTLINED_FUNCTION_94_2(v1, v2, v3, v4, v5, v6, v13, v14, &off_28293B280, v15);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v7, v8, v9, v10, v11);
  return OUTLINED_FUNCTION_107_7();
}

uint64_t sub_2168AC09C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB120, &qword_2170231C8);
  return sub_2168AC0F0(a1, a2 + *(v4 + 44));
}

uint64_t sub_2168AC0F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v181 = a1;
  v176 = a2;
  v3 = type metadata accessor for AlbumTrackLockupView(0);
  v4 = *(v3 - 8);
  v157 = v3 - 8;
  v169 = v4;
  MEMORY[0x28223BE20](v3 - 8);
  v170 = v5;
  v171 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB128, &qword_2170231D0);
  MEMORY[0x28223BE20](v172);
  v175 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v174 = (&v135 - v8);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB130, &qword_2170231D8);
  MEMORY[0x28223BE20](v166);
  v150 = &v135 - v9;
  v146 = type metadata accessor for StackedTrackTitlesView(0);
  MEMORY[0x28223BE20](v146);
  v148 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v149 = (&v135 - v12);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB138, &qword_2170231E0);
  MEMORY[0x28223BE20](v163);
  v165 = &v135 - v13;
  v164 = type metadata accessor for TwoColumnTrackTitlesView(0);
  MEMORY[0x28223BE20](v164);
  v145 = (&v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v147 = &v135 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB140, &qword_2170231E8);
  MEMORY[0x28223BE20](v17 - 8);
  v173 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v168 = &v135 - v20;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB148, &qword_2170231F0);
  MEMORY[0x28223BE20](v152);
  v142 = &v135 - v21;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB150, &qword_2170231F8);
  MEMORY[0x28223BE20](v139);
  v141 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v140 = (&v135 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB158, &qword_217023200);
  MEMORY[0x28223BE20](v25 - 8);
  v167 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v180 = &v135 - v28;
  v177 = type metadata accessor for AlbumTrackLockup(0);
  MEMORY[0x28223BE20](v177);
  v144 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v143 = &v135 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v135 - v33;
  v35 = sub_21700C2F4();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TrackBadgeView(0);
  MEMORY[0x28223BE20](v39);
  v179 = &v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v135 - v42;
  v44 = *v2;
  sub_2168C032C();
  sub_2168A5E08(MEMORY[0x277CD83B8], MEMORY[0x277D2B1D0], v45, v46, v47, v48, v49, v50, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
  v52 = v51;
  v53 = v38;
  v54 = v44;
  (*(v36 + 8))(v53, v35);
  sub_2168ABD3C();
  v55 = v177;
  LOBYTE(v2) = v34[*(v177 + 48)];
  sub_2168AE788(v34, type metadata accessor for AlbumTrackLockup);
  *v43 = v52 & 1;
  v43[1] = v2;
  v195[0] = 0x4036000000000000;
  v56 = sub_2167CD8D8();
  v178 = v43;
  v158 = v56;
  sub_2170082B4();
  v153 = sub_2168AD35C();
  v162 = v57;
  v161 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v159 = sub_21700AD34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  sub_21700B3B4();
  sub_2170083C4();
  v154 = v205;
  v155 = v207;
  v156 = v210;
  v157 = v209;
  v204 = 1;
  v202 = v206;
  v200 = v208;
  sub_2168ABD3C();
  LODWORD(v2) = v34[*(v55 + 76)];
  v151 = v34;
  sub_2168AE788(v34, type metadata accessor for AlbumTrackLockup);
  if (v2 == 1)
  {
    v58 = sub_21700ADB4();
    sub_2168AE7E0();
    sub_21700F074();
    v59 = sub_217009EC4();
    v60 = swift_getKeyPath();
    v61 = sub_21700AD34();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB188, &unk_217023280);
    v63 = v140;
    v64 = (v140 + *(v62 + 36));
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450);
    v138 = v54;
    v66 = *(v65 + 28);
    v67 = *MEMORY[0x277CE1058];
    v68 = sub_21700ADF4();
    (*(*(v68 - 8) + 104))(v64 + v66, v67, v68);
    *v64 = swift_getKeyPath();
    *v63 = v58;
    v63[1] = v60;
    v63[2] = v59;
    v63[3] = v61;
    sub_21700B3B4();
    sub_2170083C4();
    v69 = (v63 + *(v139 + 36));
    v70 = v212;
    *v69 = v211;
    v69[1] = v70;
    v69[2] = v213;
    sub_21700B3B4();
    sub_2170083C4();
    v139 = v214;
    v71 = v219;
    v136 = v218;
    v137 = v216;
    LOBYTE(v195[0]) = 1;
    LOBYTE(v193[0]) = v215;
    LOBYTE(v182) = v217;
    v72 = v141;
    sub_2166A6F60(v63, v141, &qword_27CABB150, &qword_2170231F8);
    LOBYTE(v66) = v195[0];
    v73 = v193[0];
    LOBYTE(v64) = v182;
    v74 = v142;
    sub_2166A6F60(v72, v142, &qword_27CABB150, &qword_2170231F8);
    v75 = v74 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB190, &qword_2170232C0) + 48);
    *v75 = 0;
    *(v75 + 8) = v66;
    *(v75 + 16) = v139;
    *(v75 + 24) = v73;
    v76 = v136;
    *(v75 + 32) = v137;
    *(v75 + 40) = v64;
    *(v75 + 48) = v76;
    *(v75 + 56) = v71;
    sub_216697664(v63, &qword_27CABB150, &qword_2170231F8);
    sub_216697664(v72, &qword_27CABB150, &qword_2170231F8);
    v77 = v180;
    sub_2166DDCC0(v74, v180, &qword_27CABB148, &qword_2170231F0);
    v78 = v77;
    v79 = 0;
  }

  else
  {
    v78 = v180;
    v79 = 1;
  }

  __swift_storeEnumTagSinglePayload(v78, v79, 1, v152);
  if (v181[1])
  {

    LODWORD(v152) = sub_216C6D1E0();

    if (sub_2168AD484())
    {
      v80 = v143;
      sub_2168ABD3C();
      v81 = v177;
      v82 = (v80 + *(v177 + 28));
      v84 = *v82;
      v83 = v82[1];
      sub_21700DF14();
      sub_2168AE788(v80, type metadata accessor for AlbumTrackLockup);
      if (v83)
      {
        v85 = v84;
      }

      else
      {
        v85 = 0;
      }

      v150 = v85;
      if (v83)
      {
        v86 = v83;
      }

      else
      {
        v86 = 0xE000000000000000;
      }

      v87 = sub_2168AD5D4();
      v89 = v88;
      v90 = v151;
      sub_2168ABD3C();
      v91 = *(v90 + *(v81 + 44));
      sub_2168AE788(v90, type metadata accessor for AlbumTrackLockup);
      sub_2168AD6E0();
      v93 = v92;
      v94 = sub_2168AE1AC();
      v95 = v145;
      *v145 = v150;
      v95[1] = v86;
      v95[2] = v87;
      v95[3] = v89;
      *(v95 + 32) = v91;
      *(v95 + 33) = v152 & 1;
      v95[5] = v93;
      *(v95 + 6) = v94 * 0.3 + -16.0;
      v96 = *(v164 + 40);
      *(v95 + v96) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
      swift_storeEnumTagMultiPayload();
      v97 = v147;
      sub_2168AE8FC(v95, v147, type metadata accessor for TwoColumnTrackTitlesView);
      sub_2168AEDA8(v97, v165, type metadata accessor for TwoColumnTrackTitlesView);
      swift_storeEnumTagMultiPayload();
      sub_2168AED64(&qword_27CABB168, type metadata accessor for TwoColumnTrackTitlesView);
      sub_2168AECC8(&qword_27CABB170, &qword_27CABB130, &qword_2170231D8);
      v98 = v168;
      sub_217009554();
      v99 = type metadata accessor for TwoColumnTrackTitlesView;
      v100 = v97;
    }

    else
    {
      v101 = v151;
      sub_2168ABD3C();
      v102 = v177;
      v103 = (v101 + *(v177 + 28));
      v105 = *v103;
      v104 = v103[1];
      sub_21700DF14();
      sub_2168AE788(v101, type metadata accessor for AlbumTrackLockup);
      v106 = sub_2168AD5D4();
      v108 = v107;
      v109 = v144;
      sub_2168ABD3C();
      v110 = *(v109 + *(v102 + 44));
      sub_2168AE788(v109, type metadata accessor for AlbumTrackLockup);
      v111 = v149;
      *v149 = v105;
      *(v111 + 8) = v104;
      *(v111 + 16) = v106;
      *(v111 + 24) = v108;
      *(v111 + 32) = v110;
      *(v111 + 33) = v152 & 1;
      v112 = *(v146 + 32);
      *(v111 + v112) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
      swift_storeEnumTagMultiPayload();
      v113 = v148;
      sub_2168AEDA8(v111, v148, type metadata accessor for StackedTrackTitlesView);
      v114 = v150;
      sub_2168AEDA8(v113, v150, type metadata accessor for StackedTrackTitlesView);
      v115 = v114 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB160, &unk_217023270) + 48);
      *v115 = 0;
      *(v115 + 8) = 1;
      sub_2168AE788(v113, type metadata accessor for StackedTrackTitlesView);
      sub_2166A6F60(v114, v165, &qword_27CABB130, &qword_2170231D8);
      swift_storeEnumTagMultiPayload();
      sub_2168AED64(&qword_27CABB168, type metadata accessor for TwoColumnTrackTitlesView);
      sub_2168AECC8(&qword_27CABB170, &qword_27CABB130, &qword_2170231D8);
      v98 = v168;
      sub_217009554();
      sub_216697664(v114, &qword_27CABB130, &qword_2170231D8);
      v100 = v111;
      v99 = type metadata accessor for StackedTrackTitlesView;
    }

    sub_2168AE788(v100, v99);
    v116 = MEMORY[0x277D84F90];
    v117 = v162;
    if (!v162)
    {
      v116 = 0;
    }

    v177 = v116;
    if (v162)
    {
      v118 = v153;
    }

    else
    {
      v118 = 0;
    }

    v119 = v181;
    v120 = sub_2168AD81C();
    v122 = v121;
    v123 = v171;
    sub_2168AEDA8(v119, v171, type metadata accessor for AlbumTrackLockupView);
    v124 = (*(v169 + 80) + 16) & ~*(v169 + 80);
    v125 = swift_allocObject();
    sub_2168AE8FC(v123, v125 + v124, type metadata accessor for AlbumTrackLockupView);
    v126 = v174;
    *v174 = v120;
    v126[1] = v122;
    v126[2] = sub_2168AE6F4;
    v126[3] = v125;
    v195[0] = 0x4050400000000000;
    sub_2170082B4();
    v127 = v179;
    sub_2168AEDA8(v178, v179, type metadata accessor for TrackBadgeView);
    *&v193[7] = v196;
    v193[0] = v118;
    v193[1] = v117;
    v193[2] = 0;
    v193[3] = v177;
    v193[4] = KeyPath;
    v193[5] = v161;
    v193[6] = v159;
    *&v193[9] = v197;
    *&v193[11] = v198;
    v194[0] = v127;
    v194[1] = v193;
    v182 = 0;
    v183 = v204;
    *v184 = *v203;
    *&v184[3] = *&v203[3];
    v185 = v154;
    v186 = v202;
    *v187 = *v201;
    *&v187[3] = *&v201[3];
    v188 = v155;
    v189 = v200;
    *&v190[3] = *&v199[3];
    *v190 = *v199;
    v191 = v157;
    v192 = v156;
    v194[2] = &v182;
    v128 = v180;
    v129 = v167;
    sub_2166A6F60(v180, v167, &qword_27CABB158, &qword_217023200);
    v194[3] = v129;
    v130 = v98;
    v131 = v98;
    v132 = v173;
    sub_2166A6F60(v130, v173, &qword_27CABB140, &qword_2170231E8);
    v194[4] = v132;
    v133 = v175;
    sub_2166A6F60(v126, v175, &qword_27CABB128, &qword_2170231D0);
    v194[5] = v133;
    sub_2168AA838(v194, v176);
    sub_216697664(v126, &qword_27CABB128, &qword_2170231D0);
    sub_216697664(v131, &qword_27CABB140, &qword_2170231E8);
    sub_216697664(v128, &qword_27CABB158, &qword_217023200);
    sub_2168AE788(v178, type metadata accessor for TrackBadgeView);
    sub_216697664(v133, &qword_27CABB128, &qword_2170231D0);
    sub_216697664(v132, &qword_27CABB140, &qword_2170231E8);
    sub_216697664(v129, &qword_27CABB158, &qword_217023200);
    memcpy(v195, v193, sizeof(v195));
    sub_216697664(v195, &qword_27CABB178, &unk_21704A020);
    return sub_2168AE788(v179, type metadata accessor for TrackBadgeView);
  }

  else
  {
    type metadata accessor for PlaybackPresenter(0);
    sub_2168AED64(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_2168AD35C()
{
  v0 = type metadata accessor for AlbumTrackLockup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168ABD3C();
  v4 = &v3[*(v1 + 44)];
  v5 = *v4;
  v6 = v4[8];
  sub_2168AE788(v3, type metadata accessor for AlbumTrackLockup);
  v7 = 0;
  if ((v6 & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v10 = [v8 localizedStringFromNumber:v9 numberStyle:0];

    v7 = sub_21700E514();
  }

  return v7;
}

uint64_t sub_2168AD484()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    sub_21700ED94();
    v6 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return (0xFCu >> v5) & 1;
}

uint64_t sub_2168AD5D4()
{
  v0 = type metadata accessor for AlbumTrackLockup(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168ABD3C();
  v4 = *&v3[*(v1 + 40)];
  sub_21700DF14();
  sub_2168AE788(v3, type metadata accessor for AlbumTrackLockup);
  if (v4)
  {
    sub_216CE09CC(v4, &v7);

    if (v7.n128_u64[1])
    {
      v4 = v8;
      sub_21700DF14();
      sub_2167ADC98(&v7);
    }

    else
    {
      sub_216697664(&v7, &qword_27CAB8100, qword_21701B4C0);
      return 0;
    }
  }

  return v4;
}

uint64_t sub_2168AD6E0()
{
  v0 = type metadata accessor for AlbumTrackLockup(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168AD5D4();
  if (v3)
  {
  }

  sub_2168AE1AC();
  sub_2168ABD3C();
  return sub_2168AE788(v2, type metadata accessor for AlbumTrackLockup);
}

uint64_t sub_2168AD81C()
{
  v0 = type metadata accessor for AlbumTrackLockup(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2168AD484() & 1) == 0)
  {
    return 0;
  }

  sub_2168ABD3C();
  v3 = v2[*(v0 + 40) + 8];
  sub_2168AE788(v2, type metadata accessor for AlbumTrackLockup);
  if (v3)
  {
    return 0;
  }

  if (qword_27CAB5B60 != -1)
  {
    swift_once();
  }

  v5 = [qword_27CABEAF8 stringFromSeconds_];
  v4 = sub_21700E514();

  return v4;
}

uint64_t sub_2168AD964@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_21700D704();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21700D284();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AlbumTrackLockup(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for MenuConfiguration(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v50 = &v40 - v21;
  v22 = sub_21700C2F4();
  v48 = *(v22 - 8);
  v49 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168C032C();
  v25 = type metadata accessor for ContentDescriptor(0);
  v51 = v16;
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v25);
  v26 = v13;
  swift_storeEnumTagMultiPayload();
  sub_2168ABD3C();
  v27 = &v10[*(v5 + 104)];
  v28 = *(v27 + 1);
  v47 = *v27;
  sub_21700DF14();
  sub_2168AE788(v10, type metadata accessor for AlbumTrackLockup);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  sub_2168ABD3C();
  sub_2166A6F60(&v7[*(v5 + 32)], v53, &qword_27CAB6DB0, &qword_217016C00);
  sub_2168AE788(v7, type metadata accessor for AlbumTrackLockup);
  v29 = v54;
  if (v54)
  {
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v30 = v41;
    sub_21700CE54();
    v31 = v43;
    sub_21700D274();
    v32 = sub_21700D6C4();
    v29 = v33;
    (*(v45 + 8))(v31, v46);
    (*(v42 + 8))(v30, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  else
  {
    sub_216697664(v53, &qword_27CAB6DB0, &qword_217016C00);
    v32 = 0;
  }

  v34 = v51;
  sub_2166A6F60(v51, v19, &qword_27CAB6A00, &unk_217016B60);
  sub_2168AEDA8(v26, &v19[v17[5]], type metadata accessor for MenuContext);
  v35 = &v19[v17[6]];
  *v35 = v47;
  *(v35 + 1) = v28;
  *&v19[v17[7]] = 0;
  sub_2166A6F60(v55, &v19[v17[8]], &qword_27CAB6DB0, &qword_217016C00);
  if (!v29)
  {
    v32 = 0;
    v29 = 0xE000000000000000;
  }

  sub_216697664(v55, &qword_27CAB6DB0, &qword_217016C00);
  sub_2168AE788(v26, type metadata accessor for MenuContext);
  sub_216697664(v34, &qword_27CAB6A00, &unk_217016B60);
  v36 = &v19[v17[9]];
  *v36 = v32;
  v36[1] = v29;
  v37 = v19;
  v38 = v50;
  sub_2168AE8FC(v37, v50, type metadata accessor for MenuConfiguration);
  sub_2169BC258();
  sub_2168AE788(v38, type metadata accessor for MenuConfiguration);
  return (*(v48 + 8))(v24, v49);
}

uint64_t sub_2168ADF64()
{
  v0 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AlbumTrackLockup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700C2F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168C032C();
  sub_2168ABD3C();
  swift_storeEnumTagMultiPayload();
  sub_2168A6BB0(v2, 0, v8);
  sub_2168AE788(v2, type metadata accessor for MenuContext);
  sub_2168AE788(v5, type metadata accessor for AlbumTrackLockup);
  sub_2169BC258();
  sub_2168AE788(v8, type metadata accessor for MenuConfiguration);
  return (*(v10 + 8))(v12, v9);
}

double sub_2168AE1AC()
{
  v1 = v0;
  v2 = sub_2170090F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    v7 = *(v1 + 24);
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v13;
  }

  type metadata accessor for AlbumTrackLockupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  v9 = v13;
  if (sub_2168AD484())
  {
    sub_2170082C4();
    v10 = v13 + 58.0;
  }

  else
  {
    v10 = 58.0;
  }

  return v7 - (v9 + v9 + 9.0 + v10);
}

uint64_t type metadata accessor for AlbumTrackLockupView(uint64_t a1)
{
  result = qword_27CABB268;
  if (!qword_27CABB268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2168AE40C()
{
  result = qword_27CABB0C8;
  if (!qword_27CABB0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0B0, &qword_217023130);
    sub_2168AE4C4();
    sub_2168AECC8(&qword_280E2A818, &qword_27CAB8AE8, &qword_2170454A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB0C8);
  }

  return result;
}

unint64_t sub_2168AE4C4()
{
  result = qword_27CABB0D0;
  if (!qword_27CABB0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0A8, &qword_217023128);
    sub_2168AECC8(&qword_27CABB0D8, &qword_27CABB0A0, &qword_217023120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB0D0);
  }

  return result;
}

unint64_t sub_2168AE57C()
{
  result = qword_27CABB0E0;
  if (!qword_27CABB0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0, &unk_2170231B0);
    sub_2168AE608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB0E0);
  }

  return result;
}

unint64_t sub_2168AE608()
{
  result = qword_27CABB0E8;
  if (!qword_27CABB0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0F0, &qword_21702C500);
    sub_2168AED64(&qword_27CABB0F8, type metadata accessor for MusicVideoContextMenu);
    sub_2168AED64(&qword_27CABB100, type metadata accessor for SongContextMenu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB0E8);
  }

  return result;
}

uint64_t sub_2168AE70C(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = type metadata accessor for AlbumTrackLockupView(v2);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a1(v5);
}

uint64_t sub_2168AE788(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2168AE7E0()
{
  result = qword_27CABB180;
  if (!qword_27CABB180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CABB180);
  }

  return result;
}

uint64_t sub_2168AE848(uint64_t a1)
{
  sub_21700ADF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_217008D94();
}

uint64_t sub_2168AE8FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

void sub_2168AE97C(uint64_t a1)
{
  sub_2168AEA68(319);
  if (v1 <= 0x3F)
  {
    sub_2167B84AC(319);
    if (v2 <= 0x3F)
    {
      sub_2168AEB44(319, &qword_280E2B480, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_2168AEB44(319, &qword_280E2B488, &_s9SizeClassON);
        if (v4 <= 0x3F)
        {
          sub_2167D1C30(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2168AEA68(uint64_t a1)
{
  if (!qword_27CABB278)
  {
    v4[0] = type metadata accessor for AlbumTrackLockup(255);
    v4[1] = sub_2168AED64(qword_280E41540, type metadata accessor for AlbumTrackLockup);
    v4[2] = &off_28293B3C0;
    v4[3] = sub_2168AED64(&qword_280E41520, type metadata accessor for AlbumTrackLockup);
    v2 = type metadata accessor for MappedContainerItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_27CABB278);
    }
  }
}

void sub_2168AEB44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2168AEB90()
{
  result = qword_27CABB280;
  if (!qword_27CABB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB108, &qword_2170231C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0B0, &qword_217023130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB0C0, &unk_2170231B0);
    sub_2168AE40C();
    sub_2168AE57C();
    swift_getOpaqueTypeConformance2();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB280);
  }

  return result;
}

uint64_t sub_2168AECC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2168AED0C(uint64_t a1)
{
  result = sub_2168AED64(&qword_27CABB290, type metadata accessor for AlbumTrackLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2168AED64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2168AEDA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t *OUTLINED_FUNCTION_88_4(uint64_t a1)
{
  *(v1 - 136) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 168));
}

uint64_t OUTLINED_FUNCTION_89_8@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_2168AEDA8(v3, v2 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_97_4()
{

  return sub_2166A0F18((v0 - 208), v0 - 128);
}

uint64_t *OUTLINED_FUNCTION_98_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 184) = v1;
  *(v2 - 176) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 208));
}

uint64_t OUTLINED_FUNCTION_99_7()
{

  return sub_21700D284();
}

uint64_t OUTLINED_FUNCTION_109_3()
{
  __swift_project_boxed_opaque_existential_1((v1 - 208), v0);

  return sub_21700CE54();
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return sub_216697664(v2 - 128, v0, v1);
}

unint64_t sub_2168AEF28()
{
  result = qword_27CAB7038;
  if (!qword_27CAB7038)
  {
    type metadata accessor for NoProtoRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7038);
  }

  return result;
}

id sub_2168AEF80(void *a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB3A0, &unk_217023650);
    v4 = sub_21700E594();
    v8[3] = MEMORY[0x277D837D0];
    v8[0] = v4;
    v8[1] = v5;
    v6 = a1;
    v7 = sub_2166F1E10(v8, a1);
    sub_2166F1F64(v7, 0x646E696B24, 0xE500000000000000);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2168AF060()
{
  result = qword_27CABB388;
  if (!qword_27CABB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB388);
  }

  return result;
}

unint64_t sub_2168AF0B4(uint64_t a1)
{
  *(a1 + 8) = sub_2168AF0E4();
  result = sub_2168AF138();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2168AF0E4()
{
  result = qword_27CABB390;
  if (!qword_27CABB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB390);
  }

  return result;
}

unint64_t sub_2168AF138()
{
  result = qword_27CABB398;
  if (!qword_27CABB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB398);
  }

  return result;
}

void *sub_2168AF18C(char *a1)
{
  v2 = v1;
  v37 = *v1;
  v36 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - v7;
  v8 = type metadata accessor for AlbumDetailHeaderLockup(0);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v10 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  *(v1 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_containerItemAutoupdatingResponseSubscription) = 0;
  v19 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_libraryData;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB440, &qword_2170236D0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  *(v1 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_didUpdateTrackPopularity) = 0;
  v21 = *(v12 + 16);
  v22 = OUTLINED_FUNCTION_11_25();
  v21(v22);
  OUTLINED_FUNCTION_16_5(v1 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__album);
  (v21)(v15, v18, v10);
  sub_217007DA4();
  v33 = *(v12 + 8);
  v33(v18, v10);
  swift_endAccess();
  v23 = OUTLINED_FUNCTION_11_25();
  v21(v23);
  sub_216BC721C();
  v24 = OUTLINED_FUNCTION_11_25();
  v21(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB418, &qword_21704BD50);
  swift_allocObject();
  sub_216DC2AA4();
  v26 = v25;
  OUTLINED_FUNCTION_16_5(v2 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__headerModel);
  v38 = v26;
  sub_217007DA4();
  swift_endAccess();
  v27 = OUTLINED_FUNCTION_11_25();
  v21(v27);
  v28 = v34;
  sub_216F060C8(v18, v34);
  OUTLINED_FUNCTION_16_5(v2 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__footerModel);
  OUTLINED_FUNCTION_1_45();
  sub_2168B5B7C();
  sub_217007DA4();
  OUTLINED_FUNCTION_8_25();
  sub_2168B5B28(v28, v29);
  swift_endAccess();
  v30 = sub_2168AF79C(a1);
  OUTLINED_FUNCTION_16_5(v2 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__trackSections);
  v38 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB430, &qword_2170236B0);
  sub_217007DA4();
  swift_endAccess();
  sub_2168AFBE4();
  sub_2168AFCE4();
  v33(a1, v10);
  return v2;
}

uint64_t sub_2168AF560(uint64_t a1)
{
  v2 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v8, a1, v2);

  sub_217007DF4();
  sub_2168AFFE4();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_2168AF678()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_27_16(v0);
}

uint64_t sub_2168AF6D8(uint64_t a1)
{
  v2 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_45();
  sub_2168B5B7C();

  sub_217007DF4();
  OUTLINED_FUNCTION_8_25();
  return sub_2168B5B28(a1, v4);
}

uint64_t sub_2168AF79C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490, &qword_217023788);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498, &unk_217023790);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v22 = 0;
  v20 = 0;
  v21 = 0x8000000000000001;
  v19 = 0;
  v18 = MEMORY[0x277D84F90];
  sub_21700C1A4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2166997CC(v4, &qword_27CABB490, &qword_217023788);
    return MEMORY[0x277D84F90];
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = sub_216E9A354();
  if (v9)
  {
    (*(v6 + 8))(v8, v5);
    return MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v9);
  *(&v17 - 6) = &v22;
  *(&v17 - 5) = &v21;
  *(&v17 - 4) = &v20;
  *(&v17 - 3) = &v19;
  *(&v17 - 2) = a1;
  *(&v17 - 1) = &v18;
  sub_216CE15F0();
  if (v22 == 1)
  {
    v12 = sub_2168B36BC(v18, a1);
  }

  else
  {
    if (v20 < 2 || (v13 = v19, sub_2166D9530(&qword_27CABB540, &qword_27CABB498, &unk_217023790, MEMORY[0x277CD7CB8]), sub_21700EC54(), sub_21700EC94(), v13 != sub_21700EC84()))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB530, &qword_217023998);
      v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538, &unk_2170239A0) - 8);
      v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_217013DA0;
      v16 = v14[14];
      type metadata accessor for LibraryAlbumDataSource.HeaderType(0);
      swift_storeEnumTagMultiPayload();
      *(v10 + v15 + v16) = v18;
      (*(v6 + 8))(v8, v5);
      return v10;
    }

    v12 = sub_2168B408C(v18);
  }

  v10 = v12;
  (*(v6 + 8))(v8, v5);

  return v10;
}

uint64_t sub_2168AFB84()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_27_16(v0);
}

uint64_t sub_2168AFBE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21677BBA0();
}

void sub_2168AFCE4()
{
  v27 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB480, &qword_217023768);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488, &qword_217023770);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v19 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_didUpdateTrackPopularity;
  if ((*(v0 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_didUpdateTrackPopularity) & 1) == 0)
  {
    sub_2168B1C88(v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_2166997CC(v8, &qword_27CABB480, &qword_217023768);
    }

    else
    {
      v25 = *(v11 + 32);
      v26 = v4;
      v25(v18, v8, v9);
      *(v0 + v19) = 1;
      v20 = sub_21700EA74();
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v20);
      (*(v11 + 16))(v15, v18, v9);
      v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      v25((v23 + v21), v15, v9);
      *(v23 + v22) = v0;
      *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

      sub_21677BBA0();

      (*(v11 + 8))(v18, v9);
    }
  }
}

uint64_t sub_2168AFFE4()
{
  v10[1] = *v0;
  v1 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700C1E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AlbumDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v8 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_216BC721C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB418, &qword_21704BD50);
  swift_allocObject();
  sub_216DC2AA4();
  sub_2168AF678();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_216F060C8(v7, v3);
  sub_2168AF6D8(v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_2168AF79C(v7);
  (*(v5 + 8))(v7, v4);
  return sub_2168AFB84();
}

uint64_t sub_2168B02FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2168B0380(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_2168B03F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2168B0460(uint64_t a1)
{
  v2 = sub_21700C1E4();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_2168AF560(v5);
}

uint64_t sub_2168B057C()
{
  v0 = OUTLINED_FUNCTION_102();
  v1 = type metadata accessor for ContainerDetailTracklistFooterLockup(v0);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_1_45();
  sub_2168B5B7C();
  return sub_2168AF6D8(v5);
}

BOOL sub_2168B0624()
{
  v0 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490, &qword_217023788);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  sub_21700C1A4();
  (*(v2 + 8))(v6, v0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498, &unk_217023790);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2166997CC(v10, &qword_27CABB490, &qword_217023788);
    return 0;
  }

  else
  {
    sub_2166D9530(&qword_27CABB540, &qword_27CABB498, &unk_217023790, MEMORY[0x277CD7CB8]);
    sub_21700EC54();
    sub_21700EC94();
    v13 = sub_21700EC84();
    (*(*(v11 - 8) + 8))(v10, v11);
    return v13 > 0;
  }
}

uint64_t sub_2168B086C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABB3A8);
  __swift_project_value_buffer(v0, qword_27CABB3A8);
  return sub_217007C94();
}

uint64_t sub_2168B08EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2168B0984, v6, v5);
}

uint64_t sub_2168B0984()
{

  sub_2168B09E4();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2168B09E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0, &qword_217023920);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4D8, &qword_217023928);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v48 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4E0, &qword_217023930);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4E8, &qword_217023938);
  v11 = *(v10 - 8);
  v56 = v10;
  v57 = v11;
  MEMORY[0x28223BE20](v10);
  v50 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB478, &unk_217023758);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_21700C1E4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4F0, &qword_217023940);
  v21 = *(v20 - 8);
  v46 = v20;
  v47 = v21;
  MEMORY[0x28223BE20](v20);
  v58 = &v46 - v22;
  sub_21700B7E4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4F8, &qword_217023970);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_217013DA0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v25 = sub_21700C164();
  v27 = v26;
  (*(v17 + 8))(v19, v16);
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  v28 = v46;
  v29 = v58;
  MEMORY[0x21CE9C5F0](KeyPath, v24, v46, MEMORY[0x277CD7E88]);

  sub_2166D9530(&qword_27CABB500, &qword_27CABB4F0, &qword_217023940, MEMORY[0x277D2AE40]);
  v30 = sub_217006944();
  v31 = *(v21 + 16);
  v32 = v28;
  v31(v15, v29, v28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB440, &qword_2170236D0);
  *&v15[*(v33 + 36)] = v30;
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v33);
  v34 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_libraryData;
  swift_beginAccess();

  sub_2168B5888(v15, v1 + v34);
  swift_endAccess();
  v35 = v48;
  sub_217006974();
  sub_2166AF2EC();
  v36 = sub_21700EE84();
  v59 = v36;
  v37 = sub_21700EE64();
  v38 = v51;
  __swift_storeEnumTagSinglePayload(v51, 1, 1, v37);
  sub_2166D9530(&qword_27CABB508, &qword_27CABB4D8, &qword_217023928, MEMORY[0x277CBCEC8]);
  sub_2168B58F8(&qword_280E29CD8, sub_2166AF2EC, MEMORY[0x277D85228]);
  v39 = v49;
  v40 = v52;
  sub_217007E54();
  sub_2166997CC(v38, &qword_27CABE1F0, &qword_217023920);

  (*(v53 + 8))(v35, v40);
  sub_2166D9530(&qword_27CABB510, &qword_27CABB4E0, &qword_217023930, MEMORY[0x277CBCD60]);
  v41 = v50;
  v42 = v54;
  sub_217007E64();
  (*(v55 + 8))(v39, v42);
  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&qword_27CABB518, &qword_27CABB4E8, &qword_217023938, MEMORY[0x277CBCC18]);
  v43 = v56;
  v44 = sub_217007E84();

  (*(v57 + 8))(v41, v43);
  (*(v47 + 8))(v58, v32);
  *(v1 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_containerItemAutoupdatingResponseSubscription) = v44;
}

uint64_t sub_2168B115C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520, &qword_217023978);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2168B5948(a1, v7);
  sub_21700EA34();

  v12 = sub_21700EA24();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v12;
  v14[3] = v15;
  v14[4] = a2;
  sub_2167A6724(v7, v14 + v13, &qword_27CABB520, &qword_217023978);
  sub_21677BBA0();
}

uint64_t sub_2168B1324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_21700B804();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A8, &qword_2170237A0);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520, &qword_217023978);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A0, &unk_217056DD0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = sub_21700C1E4();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  sub_21700EA34();
  v5[20] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v5[21] = v10;
  v5[22] = v9;

  return MEMORY[0x2822009F8](sub_2168B1564, v10, v9);
}

uint64_t sub_2168B18E0()
{
  OUTLINED_FUNCTION_93();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_2168B1BA4;
  }

  else
  {
    v10 = v2[16];
    v11 = v2[17];
    v12 = v2[14];
    (*(v2[8] + 8))(v2[9], v2[7]);

    v13 = *(v11 + 8);
    v2[26] = v13;
    v2[27] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v12, v10);
    v7 = v2[21];
    v8 = v2[22];
    v9 = sub_2168B1A84;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2168B1A84()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[26];
  v2 = v0[19];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
  (*(v4 + 32))(v2, v6, v5);
  (*(v4 + 16))(v3, v2, v5);
  sub_2168AF560(v3);

  v1(v2, v5);
  OUTLINED_FUNCTION_13_0();

  OUTLINED_FUNCTION_3();

  return v7();
}

uint64_t sub_2168B1BA4()
{
  OUTLINED_FUNCTION_93();
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];

  (*(v3 + 8))(v4, v2);
  OUTLINED_FUNCTION_29_14();
  sub_2166997CC(v1, &qword_27CABB4A0, &unk_217056DD0);
  OUTLINED_FUNCTION_13_0();

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_2168B1C88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700C1E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v28[-v7];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v9 = sub_21700C0B4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v8, v2);
  if (v11)
  {
    swift_getKeyPath();
    v31[0] = v9;
    v31[1] = v11;
    sub_2168B58F8(&qword_27CABB4C8, MEMORY[0x277CD82C8], MEMORY[0x277CD82E8]);
    sub_21700B904();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21701D830;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4D0, &qword_217050BB0);
    *(v13 + 32) = sub_21700B704();
    *(v13 + 40) = sub_21700B674();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488, &qword_217023770);
    sub_21700B8E4();
    sub_21700B8F4();
    v15 = a1;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    if (qword_27CAB5988 != -1)
    {
      swift_once();
    }

    v18 = sub_217007CA4();
    __swift_project_value_buffer(v18, qword_27CABB3A8);

    v19 = sub_217007C84();
    v20 = sub_21700ED64();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v21 = 136315138;
      swift_getKeyPath();
      v29 = v20;
      swift_getKeyPath();
      sub_217007DE4();

      sub_2168B58F8(&qword_27CABB4B8, MEMORY[0x277CD82C8], MEMORY[0x277CD82F8]);
      v22 = sub_21700F784();
      v24 = v23;
      v12(v5, v2);
      v25 = sub_2166A85FC(v22, v24, v31);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_216679000, v19, v29, "Album has no catalog ID. album=%s", v21, 0xCu);
      v26 = v30;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x21CEA1440](v26, -1, -1);
      MEMORY[0x21CEA1440](v21, -1, -1);
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488, &qword_217023770);
    v15 = a1;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_2168B20D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB490, &qword_217023788);
  v5[3] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB498, &unk_217023790);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A0, &unk_217056DD0);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A8, &qword_2170237A0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4B0, &qword_2170237A8);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[13] = v9;
  v10 = sub_21700C1E4();
  v5[14] = v10;
  v5[15] = *(v10 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[19] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488, &qword_217023770);
  *v11 = v5;
  v11[1] = sub_2168B23B4;

  return MEMORY[0x282124780](v9, v12);
}

uint64_t sub_2168B23B4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 160) = v0;

  if (v0)
  {
    v5 = sub_2168B2BE0;
  }

  else
  {
    v5 = sub_2168B24C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2168B2990()
{
  OUTLINED_FUNCTION_93();
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v9;
  v9[23] = v0;

  v6 = *(v3 + 8);
  v9[24] = v6;
  v9[25] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);

  if (v0)
  {
    v7 = sub_2168B2E44;
  }

  else
  {
    v7 = sub_2168B2B24;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2168B2B24()
{
  OUTLINED_FUNCTION_82_0();
  v1 = OUTLINED_FUNCTION_14_18();
  v2(v1);
  v3 = OUTLINED_FUNCTION_38();
  v0(v3);
  OUTLINED_FUNCTION_6_31();

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2168B2BE0()
{
  v33 = v0;
  v2 = *(v0 + 160);
  if (qword_27CAB5988 != -1)
  {
    OUTLINED_FUNCTION_5_27(&qword_27CAB5988);
  }

  v3 = sub_217007CA4();
  __swift_project_value_buffer(v3, qword_27CABB3A8);

  v4 = v2;
  v5 = sub_217007C84();
  v6 = sub_21700ED64();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_19_20();
    swift_slowAlloc();
    v31 = OUTLINED_FUNCTION_28_19();
    v32 = v31;
    *v7 = 138412546;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_25_14(v9);
    KeyPath = swift_getKeyPath();
    v11 = swift_getKeyPath();
    OUTLINED_FUNCTION_23_14(v11, v12, v13, v14, v15, v16, v17, v18, v28, v29);

    OUTLINED_FUNCTION_0_58();
    sub_2168B58F8(v19, v20, MEMORY[0x277CD82F8]);
    sub_21700F784();
    v21 = OUTLINED_FUNCTION_21_19();
    v22(v21);
    v23 = sub_2166A85FC(v1, KeyPath, &v32);

    *(v7 + 14) = v23;
    OUTLINED_FUNCTION_30_14(&dword_216679000, v24, v25, "Could not fetch catalog album and set popularity track. error=%@ album=%s");
    sub_2166997CC(v30, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_15_20();
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_31();

  OUTLINED_FUNCTION_3();

  return v26();
}

uint64_t sub_2168B2E44()
{
  v37 = v0;
  v3 = OUTLINED_FUNCTION_14_18();
  v4(v3);
  v5 = OUTLINED_FUNCTION_38();
  v1(v5);
  v6 = *(v0 + 184);
  if (qword_27CAB5988 != -1)
  {
    OUTLINED_FUNCTION_5_27(&qword_27CAB5988);
  }

  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_27CABB3A8);

  v8 = v6;
  v9 = sub_217007C84();
  v10 = sub_21700ED64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_19_20();
    swift_slowAlloc();
    v35 = OUTLINED_FUNCTION_28_19();
    v36 = v35;
    *v11 = 138412546;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_25_14(v13);
    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();
    OUTLINED_FUNCTION_23_14(v15, v16, v17, v18, v19, v20, v21, v22, v32, v33);

    OUTLINED_FUNCTION_0_58();
    sub_2168B58F8(v23, v24, MEMORY[0x277CD82F8]);
    sub_21700F784();
    v25 = OUTLINED_FUNCTION_21_19();
    v26(v25);
    v27 = sub_2166A85FC(v2, KeyPath, &v36);

    *(v11 + 14) = v27;
    OUTLINED_FUNCTION_30_14(&dword_216679000, v28, v29, "Could not fetch catalog album and set popularity track. error=%@ album=%s");
    sub_2166997CC(v34, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_15_20();
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    OUTLINED_FUNCTION_15_20();
    OUTLINED_FUNCTION_6();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_31();

  OUTLINED_FUNCTION_3();

  return v30();
}

uint64_t sub_2168B30C0@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_2168B3118(uint64_t a1, BOOL *a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v49 = a6;
  v50 = a7;
  v12 = sub_21700C1E4();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21700C2F4();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlbumTrackLockup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  if (*a2)
  {
    v23 = 1;
  }

  else
  {
    v42 = a3;
    v43 = a4;
    v24 = a5;
    v25 = sub_21700C2E4();
    if (v26)
    {
      v27 = v25;
      v28 = v26;

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v27 & 0xFFFFFFFFFFFFLL;
      }

      v23 = v29 != 0;
    }

    else
    {
      v23 = 0;
    }

    a5 = v24;
    a3 = v42;
    a4 = v43;
  }

  *a2 = v23;
  result = sub_2168B34B8();
  if ((v31 & 1) == 0 && result != *a3)
  {
    *a3 = result;
    if (__OFADD__(*a4, 1))
    {
      goto LABEL_16;
    }

    ++*a4;
  }

  result = sub_2168B34B8();
  v33 = (v32 & 1) == 0;
  v34 = __OFADD__(*a5, v33);
  v35 = *a5 + v33;
  if (!v34)
  {
    *a5 = v35;
    v43 = v19;
    v46 = *(v46 + 16);
    (v46)(v16, a1, v14);
    v36 = v48;
    v37 = *(v47 + 16);
    v38 = v49;
    v47 = v14;
    v39 = v45;
    v37();
    v44 = v22;
    sub_216BC7FB8();
    sub_2168B5B7C();
    (v46)(v16, a1, v47);
    (v37)(v39, v38, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF8B0, &unk_217033E30);
    swift_allocObject();
    sub_2168C739C();
    v40 = v50;
    MEMORY[0x21CE9F610]();
    sub_2166C0198(*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_21700E8C4();
    return sub_2168B5B28(v44, type metadata accessor for AlbumTrackLockup);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2168B34B8()
{
  v1 = v0;
  v2 = sub_21700C084();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C2F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277CD8368])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v11 = sub_21700BF74();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  return v11;
}

uint64_t sub_2168B36BC(unint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for AlbumTrackLockup(0);
  MEMORY[0x28223BE20](v84);
  v83 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700C2F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = v69 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v69 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB548, &unk_21705ED90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v69 - v18;
  v20 = sub_21700C084();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v85 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v74 = v69 - v24;
  if (a1 >> 62)
  {
    v25 = sub_21700F2B4();
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = v25;
  if (!v25)
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
LABEL_49:
    sub_2166997CC(v19, &qword_27CABB548, &unk_21705ED90);
    return MEMORY[0x277D84F90];
  }

  v73 = a2;
  v79 = v6;
  sub_216C746F0();
  v94 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CEA0220](0, a1);
  }

  else
  {
  }

  sub_2168C032C();

  sub_216A8E8E8(v19);
  v26 = *(v6 + 8);
  v81 = v6 + 8;
  v80 = v26;
  v26(v13, v5);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    goto LABEL_49;
  }

  v27 = v74;
  v92 = *(v21 + 32);
  v93 = v21 + 32;
  v92();
  v28 = sub_21700C064();
  if (!v29)
  {
    (*(v21 + 8))(v27, v20);
    return MEMORY[0x277D84F90];
  }

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v28 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v29;
  if (!v30)
  {
    (*(v21 + 8))(v27, v20);

    return MEMORY[0x277D84F90];
  }

  v32 = v28;
  v33 = swift_allocObject();
  v91 = v32;
  *(v33 + 16) = v32;
  v82 = v33;
  v75 = v31;
  *(v33 + 24) = v31;
  v34 = sub_21700BFA4();
  if (!v35)
  {
    v34 = sub_21700BF64();
  }

  v90 = a1;
  v36 = v82;
  *(v82 + 32) = v34;
  *(v36 + 40) = v35;
  v72 = v35;
  *(v36 + 48) = 0;
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D84F90];
  v71 = v37;
  *(v37 + 16) = MEMORY[0x277D84F90];
  v39 = v37 + 16;
  v40 = swift_allocObject();
  v70 = v40;
  *(v40 + 16) = v38;
  result = v40 + 16;
  v42 = v85;
  if (v86 >= 1)
  {
    v69[1] = v39;
    v77 = result;
    swift_beginAccess();
    swift_beginAccess();
    v43 = 0;
    v88 = (v79 + 88);
    v89 = (v79 + 32);
    v87 = *MEMORY[0x277CD8368];
    v76 = (v79 + 96);
    v78 = (v21 + 8);
    v44 = 0.0;
    v79 = v38;
    v45 = v86;
    while (1)
    {
      if (v94)
      {
        MEMORY[0x21CEA0220](v43, v90);
      }

      else
      {
      }

      v46 = v95;
      sub_2168C032C();
      (*v89)(v8, v46, v5);
      v47 = (*v88)(v8, v5);
      if (v47 == v87)
      {
        (*v76)(v8, v5);
        (v92)(v16, v8, v20);
        __swift_storeEnumTagSinglePayload(v16, 0, 1, v20);
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
        v80(v8, v5);
      }

      if (__swift_getEnumTagSinglePayload(v16, 1, v20) != 1)
      {
        break;
      }

      sub_2166997CC(v16, &qword_27CABB548, &unk_21705ED90);
LABEL_39:
      if (v45 == ++v43)
      {
        v67 = v71;
        sub_2168B45C4(v70, v82, v73, v71);
        (*v78)(v74, v20);
        swift_beginAccess();
        v68 = *(v67 + 16);
        sub_21700DF14();

        return v68;
      }
    }

    v48 = v42;
    v49 = v8;
    v50 = v5;
    (v92)(v48, v16, v20);
    v51 = v83;
    sub_2168ABD3C();
    v52 = (v51 + *(v84 + 68));
    v53 = *v52;
    v54 = v52[1];
    sub_21700DF14();
    sub_2168B5B28(v51, type metadata accessor for AlbumTrackLockup);
    if (v54)
    {
      v55 = v53 == v91 && v54 == v75;
      v5 = v50;
      if (!v55)
      {
        v56 = v91;
        v8 = v49;
        if ((sub_21700F7D4() & 1) == 0)
        {
          v61 = HIBYTE(v54) & 0xF;
          if ((v54 & 0x2000000000000000) == 0)
          {
            v61 = v53 & 0xFFFFFFFFFFFFLL;
          }

          v42 = v85;
          if (v61)
          {
            v62 = v70;
            sub_2168B45C4(v70, v82, v73, v71);
            *(v62 + 16) = MEMORY[0x277D84F90];

            v63 = sub_21700BFA4();
            if (!v64)
            {
              v63 = sub_21700BF64();
            }

            v65 = v64;
            v66 = v82;
            *(v82 + 16) = v53;
            v66[3] = v54;
            v66[4] = v63;
            v66[5] = v64;
            v66[6] = 0;

            v44 = 0.0;
            v72 = v65;
            v75 = v54;
          }

          else
          {

            v53 = v91;
          }

          goto LABEL_34;
        }

        v53 = v56;
LABEL_33:
        v42 = v85;
LABEL_34:
        v57 = COERCE_DOUBLE(sub_21700C054());
        if (v58)
        {
          v57 = 0.0;
        }

        v44 = v44 + v57;
        *(v82 + 48) = v44;
        v59 = v77;
        swift_beginAccess();

        MEMORY[0x21CE9F610](v60);
        if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21700E874();
          v59 = v77;
        }

        sub_21700E8C4();
        v79 = *v59;
        swift_endAccess();

        (*v78)(v42, v20);
        v91 = v53;
        v45 = v86;
        goto LABEL_39;
      }

      v53 = v91;
    }

    else
    {
      v53 = v91;
      v5 = v50;
    }

    v8 = v49;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}