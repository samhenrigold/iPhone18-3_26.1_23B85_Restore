void *sub_21A3E18F4(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 64);
  if (!*(v6 + 16))
  {
    goto LABEL_7;
  }

  v10 = sub_21A3DCA2C(a2, a3);
  if ((v11 & 1) == 0)
  {

LABEL_7:
    sub_21A3DCAA4();
    swift_allocError();
    *v15 = 10;
    swift_willThrow();
    return v5;
  }

  v57 = a4;
  v12 = *(*(v6 + 56) + 8 * v10);

  v13 = sub_21A3E5498(MEMORY[0x277D84F90], &qword_27CD284E0, &qword_21A4561D8);
  if (*(v12 + 16))
  {
    sub_21A4510E4();

    LODWORD(v14) = e5rt_execution_stream_operation_retain_input_port();

    if (!v14)
    {

      sub_21A3DCAF8();
      swift_allocError();
      *v56 = 6;
      swift_willThrow();

LABEL_47:

      return v5;
    }

    EspressoError.init(rawValue:)(v14 + 9150);
    v50 = v61;
    if (v61 != 48)
    {
LABEL_46:
      sub_21A3DCAA4();
      swift_allocError();
      *v55 = v50;
      swift_willThrow();

      goto LABEL_47;
    }

    if (qword_27CD28170 == -1)
    {
LABEL_43:
      v51 = sub_21A450F24();
      __swift_project_value_buffer(v51, qword_27CD28C90);
      v52 = sub_21A450F04();
      v53 = sub_21A451584();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 67109120;
        *(v54 + 4) = v14;
        _os_log_impl(&dword_21A3C2000, v52, v53, "Unknown E5 code: %u", v54, 8u);
        MEMORY[0x21CEDB220](v54, -1, -1);
      }

      v50 = 27;
      goto LABEL_46;
    }

LABEL_50:
    swift_once();
    goto LABEL_43;
  }

  v17 = v13 + 64;
  v18 = 1 << *(v13 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v14 = v19 & *(v13 + 64);
  v20 = (v18 + 63) >> 6;
  v60 = v13;

  v21 = 0;
  v5 = MEMORY[0x277D84F98];
  while (2)
  {
    v48 = v57;
LABEL_12:
    while (2)
    {
      if (v14)
      {
        v22 = v14;
        goto LABEL_18;
      }

      do
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v23 >= v20)
        {

          return v5;
        }

        v22 = *(v17 + 8 * v23);
        ++v21;
      }

      while (!v22);
      v21 = v23;
LABEL_18:
      v14 = (v22 - 1) & v22;
      if (!*(v48 + 16))
      {
        continue;
      }

      break;
    }

    v24 = __clz(__rbit64(v22)) | (v21 << 6);
    v25 = (*(v60 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v60 + 56) + 8 * v24);

    v29 = sub_21A3DCA2C(v26, v27);
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }

    v31 = *(*(v57 + 56) + 8 * v29);
    v32 = sub_21A4094A0();
    if (!*(v32 + 16))
    {
      goto LABEL_49;
    }

    v33 = *(v32 + 32);

    if (v33 == v31)
    {
LABEL_38:

      continue;
    }

    break;
  }

  v34 = *(v28 + 64);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (*(v34 + 2))
    {
      goto LABEL_24;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v34 = sub_21A410FA4(v34);
  if (!*(v34 + 2))
  {
    goto LABEL_51;
  }

LABEL_24:
  *(v34 + 4) = v31;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v5;
  v36 = sub_21A3DCA2C(v26, v27);
  v37 = v5[2];
  v38 = (v35 & 1) == 0;
  v39 = v37 + v38;
  if (__OFADD__(v37, v38))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v5[3] >= v39)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v35)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v59 = v35;
      v49 = v36;
      sub_21A3E4410(&qword_27CD284D8, &qword_21A4561D0);
      v36 = v49;
      v5 = v62;
      if (v59)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    v5[(v36 >> 6) + 8] |= 1 << v36;
    v44 = (v5[6] + 16 * v36);
    *v44 = v26;
    v44[1] = v27;
    *(v5[7] + 8 * v36) = v34;
    v45 = v5[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (!v46)
    {
      v5[2] = v47;

      goto LABEL_33;
    }

LABEL_53:
    __break(1u);
  }

  v40 = v35;
  sub_21A3E3588(v39, isUniquelyReferenced_nonNull_native, &qword_27CD284D8, &qword_21A4561D0);
  v41 = sub_21A3DCA2C(v26, v27);
  if ((v40 & 1) == (v42 & 1))
  {
    v36 = v41;
    v43 = v40;
    v5 = v62;
    if ((v43 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    *(v5[7] + 8 * v36) = v34;

    swift_bridgeObjectRelease_n();
LABEL_33:
    v48 = v57;

    goto LABEL_12;
  }

  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A3E2418()
{
  v2 = v0;
  v3 = v0[12];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:

      sub_21A3E5D68(v11, v2);
      if (v1)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21A3E2554(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21A3E2620(v11, 0, 0, 1, a1, a2);
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
    sub_21A3D3B94(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21A3E2620(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21A3E272C(a5, a6);
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
    result = sub_21A4517E4();
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

void *sub_21A3E272C(uint64_t a1, unint64_t a2)
{
  v3 = sub_21A3E2778(a1, a2);
  sub_21A3E28A8(&unk_282B3F7C8);
  return v3;
}

void *sub_21A3E2778(uint64_t a1, unint64_t a2)
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

  v6 = sub_21A423888(v5, 0);
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

  result = sub_21A4517E4();
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
        v10 = sub_21A4511D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21A423888(v10, 0);
        result = sub_21A451714();
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

uint64_t sub_21A3E28A8(uint64_t result)
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

  result = sub_21A3E2994(result, v11, 1, v3);
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

char *sub_21A3E2994(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28550, &unk_21A456260);
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

uint64_t sub_21A3E2A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
  v33 = v4;
  result = sub_21A451864();
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
        sub_21A3D3B38(v24, v34);
      }

      else
      {
        sub_21A3D3B94(v24, v34);
      }

      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
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
      result = sub_21A3D3B38(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_21A3E2D7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_21A451864();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_21A3E301C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
  v34 = v4;
  result = sub_21A451864();
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

      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
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

uint64_t sub_21A3E32D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284E8, &qword_21A4561E0);
  v33 = v4;
  result = sub_21A451864();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21A3E3588(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_21A451864();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_21A3E3828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28500, &qword_21A456200);
  v36 = v4;
  result = sub_21A451864();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = (v22 + 168 * v21);
      v45 = v26[8];
      v46 = v26[9];
      v47 = *(v26 + 20);
      v41 = v26[4];
      v42 = v26[5];
      v43 = v26[6];
      v44 = v26[7];
      v37 = *v26;
      v38 = v26[1];
      v39 = v26[2];
      v40 = v26[3];
      if ((v36 & 1) == 0)
      {
      }

      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = *(v7 + 56) + 168 * v15;
      *(v17 + 128) = v45;
      *(v17 + 144) = v46;
      *(v17 + 160) = v47;
      *(v17 + 64) = v41;
      *(v17 + 80) = v42;
      *(v17 + 96) = v43;
      *(v17 + 112) = v44;
      *v17 = v37;
      *(v17 + 16) = v38;
      *(v17 + 32) = v39;
      *(v17 + 48) = v40;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21A3E3B34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D00, &qword_21A4561E8);
  v35 = v4;
  result = sub_21A451864();
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

      sub_21A451B04();
      sub_21A451144();
      result = sub_21A451B24();
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

void *sub_21A3E3DD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
  v2 = *v0;
  v3 = sub_21A451854();
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
        sub_21A3D3B94(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21A3D3B38(v25, (*(v4 + 56) + v22));
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

void *sub_21A3E3FB8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21A451854();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_21A3E4118()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
  v2 = *v0;
  v3 = sub_21A451854();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_21A3E4294()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284E8, &qword_21A4561E0);
  v2 = *v0;
  v3 = sub_21A451854();
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

void *sub_21A3E4410(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21A451854();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_21A3E4570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28500, &qword_21A456200);
  v2 = *v0;
  v3 = sub_21A451854();
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
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 168;
      v21 = *(v2 + 56) + v16;
      v32 = *(v21 + 128);
      v33 = *(v21 + 144);
      v34 = *(v21 + 160);
      v28 = *(v21 + 64);
      v29 = *(v21 + 80);
      v30 = *(v21 + 96);
      v31 = *(v21 + 112);
      v24 = *v21;
      v25 = *(v21 + 16);
      v26 = *(v21 + 32);
      v27 = *(v21 + 48);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      v23 = *(v4 + 56) + v16;
      *(v23 + 128) = v32;
      *(v23 + 144) = v33;
      *(v23 + 160) = v34;
      *(v23 + 64) = v28;
      *(v23 + 80) = v29;
      *(v23 + 96) = v30;
      *(v23 + 112) = v31;
      *v23 = v24;
      *(v23 + 16) = v25;
      *(v23 + 32) = v26;
      *(v23 + 48) = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

id sub_21A3E4750()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D00, &qword_21A4561E8);
  v2 = *v0;
  v3 = sub_21A451854();
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

char *sub_21A3E48BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F58B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E48DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F59B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E48FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F5AC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E491C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F5AD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E493C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F5AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E495C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F5BF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E497C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F5F80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A3E499C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F6090(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21A3E49BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F60A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21A3E49DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A3F61D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21A3E49FC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_21A3E4B5C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_21A3E4CB0(v8, v4, v2);
  result = MEMORY[0x21CEDB220](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_21A3E4B5C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v19 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    result = *v15;
    if (*v15 != 1953066601 || v15[1] != 0xE400000000000000)
    {
      result = sub_21A4519B4();
      if ((result & 1) == 0)
      {
        *(v19 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
          return sub_21A3E4D28(v19, a2, v4, a3);
        }
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_21A3E4D28(v19, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_21A3E4CB0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21A3E4B5C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21A3E4D28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28520, &unk_21A456220);
  result = sub_21A451874();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_21A451B04();

    sub_21A451144();
    result = sub_21A451B24();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_21A3E4F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28420, &unk_21A458D20);
    v3 = sub_21A451874();
    v4 = a1 + 32;

    while (1)
    {
      sub_21A3E7060(v4, &v13, &qword_27CD28438, &unk_21A455EA0);
      v5 = v13;
      v6 = v14;
      result = sub_21A3DCA2C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21A3D3B38(&v15, (v3[7] + 32 * result));
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

unint64_t sub_21A3E509C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284F8, &qword_21A4561F8);
    v3 = sub_21A451874();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21A3DCA2C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

unint64_t sub_21A3E51B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284E8, &qword_21A4561E0);
    v3 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21A3DCA2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21A3E536C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28518, &qword_21A456218);
    v3 = sub_21A451874();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_21A3E700C(v7, v8);
      result = sub_21A3DCA2C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

unint64_t sub_21A3E5498(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21A3DCA2C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_21A3E5594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
    v3 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21A3DCA2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_21A3E56A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21A3DCA2C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_21A3E57A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28538, &qword_21A456248);
    v3 = sub_21A451874();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21A3DCA2C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_21A3E58A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28500, &qword_21A456200);
  v3 = sub_21A451874();

  v4 = *(a1 + 176);
  v43 = *(a1 + 160);
  v44 = v4;
  v45 = *(a1 + 192);
  v46 = *(a1 + 208);
  v5 = *(a1 + 112);
  v39 = *(a1 + 96);
  v40 = v5;
  v6 = *(a1 + 144);
  v41 = *(a1 + 128);
  v42 = v6;
  v7 = *(a1 + 48);
  v35 = *(a1 + 32);
  v36 = v7;
  v8 = *(a1 + 80);
  v37 = *(a1 + 64);
  v38 = v8;
  v10 = *(&v35 + 1);
  v9 = v35;
  sub_21A3E7060(&v35, v34, &qword_27CD28508, &qword_21A456208);
  result = sub_21A3DCA2C(v9, v10);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 216);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v3[7] + 168 * result;
    v16 = v36;
    v17 = v38;
    *(v15 + 16) = v37;
    *(v15 + 32) = v17;
    *v15 = v16;
    v18 = v39;
    v19 = v40;
    v20 = v42;
    *(v15 + 80) = v41;
    *(v15 + 96) = v20;
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    v21 = v43;
    v22 = v44;
    v23 = v45;
    *(v15 + 160) = v46;
    *(v15 + 128) = v22;
    *(v15 + 144) = v23;
    *(v15 + 112) = v21;
    v24 = v3[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      break;
    }

    v3[2] = v26;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v27 = (v13 + 184);
    v28 = v13[9];
    v43 = v13[8];
    v44 = v28;
    v45 = v13[10];
    v46 = *(v13 + 22);
    v29 = v13[5];
    v39 = v13[4];
    v40 = v29;
    v30 = v13[7];
    v41 = v13[6];
    v42 = v30;
    v31 = v13[1];
    v35 = *v13;
    v36 = v31;
    v32 = v13[3];
    v37 = v13[2];
    v38 = v32;
    v10 = *(&v35 + 1);
    v9 = v35;
    sub_21A3E7060(&v35, v34, &qword_27CD28508, &qword_21A456208);
    result = sub_21A3DCA2C(v9, v10);
    v13 = v27;
    if (v33)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21A3E5AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284F0, &qword_21A4561F0);
    v3 = sub_21A451874();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21A3DCA2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_21A3E5BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28528, &qword_21A456230);
  result = sub_21A451854();
  v6 = 0;
  v27 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v26 = result + 8;
  v30 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v27 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];

      sub_21A3DDC1C(a2, a3, &v31);

      if (v3)
      {
        break;
      }

      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v30;
      v21 = v31;
      v22 = (v30[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      *(v30[7] + 8 * v17) = v21;
      v23 = v30[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_17;
      }

      v30[2] = v25;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v30;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_21A3E5D68(void *a1, void *a2)
{
  v52 = a2;
  v55[3] = *MEMORY[0x277D85DE8];
  v4 = sub_21A404940();
  v5 = v4;
  v53 = v4[2];
  if (v53)
  {
    v6 = 0;
    v7 = v4 + 5;
    while (1)
    {
      if (v6 >= v5[2])
      {
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v8 = *(v7 - 1);
      v9 = *v7;
      v55[0] = 0;
      sub_21A4510E4();

      v10 = e5rt_execution_stream_operation_retain_output_port();

      sub_21A3DCF54(v10);
      if (v2)
      {
        break;
      }

      v11 = v55[0];
      if (!v55[0])
      {
LABEL_32:

        sub_21A3DCAF8();
        swift_allocError();
        *v46 = 6;
        swift_willThrow();
      }

      LOBYTE(v55[0]) = 0;
      type metadata accessor for IOPort();
      swift_allocObject();
      v12 = sub_21A425138(v11, v55);
      ++v6;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54[0] = a1[7];
      a1[7] = 0x8000000000000000;
      sub_21A403158(v12, v8, v9, isUniquelyReferenced_nonNull_native);

      a1[7] = v54[0];
      swift_endAccess();

      v7 += 2;
      if (v53 == v6)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:

  v14 = sub_21A404854();
  v15 = v14;
  v51 = v14[2];
  if (!v51)
  {
LABEL_24:

    v36 = v52[2];
    v37 = v52[3];
    result = swift_beginAccess();
    if (!*(a1[6] + 16))
    {
      return result;
    }

    sub_21A3DCA2C(v36, v37);
    if (v39)
    {

      v40 = v52;
      swift_beginAccess();
      if ((*(v40 + 60) & 1) == 0)
      {
        v41 = *(v40 + 14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21A455E00;
        *(inited + 32) = v41;
        v43 = sub_21A3DAD38(inited);
        v45 = v44;
        swift_setDeallocating();
        sub_21A439640(v43, v45);
        sub_21A3E759C(v43, v45);
      }
    }
  }

  v16 = 0;
  v17 = v14 + 5;
  v50 = v14;
  while (1)
  {
    if (v16 >= v15[2])
    {
      goto LABEL_39;
    }

    v18 = *(v17 - 1);
    v19 = *v17;
    v20 = v52[14];
    v53 = v18;
    if (!v20)
    {

      goto LABEL_20;
    }

    swift_retain_n();

    v21 = sub_21A404940();

    v55[0] = v18;
    v55[1] = v19;
    MEMORY[0x28223BE20](v22);
    v48[2] = v55;
    v23 = sub_21A4412B8(sub_21A3E75F0, v48, v21);

    if (v23)
    {
      v24 = v52[15];
      if (*(v24 + 16))
      {
        break;
      }
    }

    v15 = v50;
LABEL_20:
    v55[0] = 0;
    sub_21A4510E4();
    v32 = e5rt_execution_stream_operation_retain_input_port();

    sub_21A3DCF54(v32);
    if (v2)
    {
    }

    v33 = v55[0];
    if (!v55[0])
    {
      goto LABEL_32;
    }

    LOBYTE(v55[0]) = 0;
    type metadata accessor for IOPort();
    swift_allocObject();
    v34 = sub_21A425138(v33, v55);
    swift_beginAccess();

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = a1[6];
    a1[6] = 0x8000000000000000;
    sub_21A403158(v34, v53, v19, v35);

    a1[6] = v54[0];
    swift_endAccess();
LABEL_23:
    ++v16;

    v17 += 2;
    if (v51 == v16)
    {
      goto LABEL_24;
    }
  }

  v25 = sub_21A3DCA2C(v53, v19);
  v15 = v50;
  if ((v26 & 1) == 0)
  {

    goto LABEL_20;
  }

  v49 = *(*(v24 + 56) + 8 * v25);

  v55[0] = 0;
  sub_21A4510E4();
  v27 = e5rt_execution_stream_operation_retain_input_port();

  sub_21A3DCF54(v27);
  if (v2)
  {
    goto LABEL_34;
  }

  v28 = v55[0];
  if (v55[0])
  {
    type metadata accessor for IOPort();
    swift_allocObject();
    v29 = v49;

    v30 = sub_21A425434(v28, v29);
    swift_beginAccess();

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v54[0] = a1[6];
    a1[6] = 0x8000000000000000;
    sub_21A403158(v30, v53, v19, v31);

    a1[6] = v54[0];
    swift_endAccess();

    goto LABEL_23;
  }

  sub_21A3DCAF8();
  swift_allocError();
  *v47 = 6;
  swift_willThrow();
LABEL_34:
}

uint64_t sub_21A3E647C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v115 = *MEMORY[0x277D85DE8];
  v103 = sub_21A450C24();
  v10 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v12 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a3 + 16) || (v13 = sub_21A3DCA2C(a1, a2), (v14 & 1) == 0))
  {
    sub_21A3DCAA4();
    swift_allocError();
    *v82 = 44;
    swift_willThrow();
    return v10;
  }

  v15 = *(*(a3 + 56) + 8 * v13);
  v16 = *(v15 + 16);

  v108 = v15;
  v102 = v16;
  v95[1] = v5;
  if (!v16)
  {
    v10 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F98];
    goto LABEL_80;
  }

  v101 = v12;
  v17 = 0;
  v18 = 0;
  v99 = (v10 + 8);
  v100 = (v10 + 104);
  v19 = MEMORY[0x277D84F98];
  v20 = (v15 + 40);
  v98 = *MEMORY[0x277CC92A8];
  v10 = v103;
  v97 = a4;
  while (1)
  {
    if (v17 >= *(v15 + 16))
    {
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
      goto LABEL_106;
    }

    if (!*(a4 + 16))
    {
      goto LABEL_93;
    }

    v22 = *(v20 - 1);
    v23 = *v20;

    v24 = sub_21A3DCA2C(v22, v23);
    if ((v25 & 1) == 0)
    {
      break;
    }

    v107 = v22;
    v104 = v20;
    v105 = v17;
    v26 = v18;
    v27 = *(*(a4 + 56) + 8 * v24);
    v29 = *(v27 + 24);
    v28 = *(v27 + 32);
    v30 = v101;
    (*v100)(v101, v98, v10);
    v106 = v27;

    sub_21A450C14();
    if (!v28)
    {
      v46 = sub_21A450C14();
      v46(v29, 0);

      (*v99)(v30, v10);
      v35 = 0xC000000000000000;
      v37 = v26;
LABEL_35:
      v39 = v107;
LABEL_36:
      sub_21A3E759C(v28, v35);
      v40 = MEMORY[0x277D84F90];
      goto LABEL_61;
    }

    sub_21A450A44();
    swift_allocObject();

    v31 = sub_21A4509D4();
    v32 = sub_21A450A34();
    *v33 |= 0x8000000000000000;
    v32(&v109, 0);
    v28 = sub_21A439D94(v31, v28);
    v35 = v34;

    (*v99)(v30, v10);
    v36 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      v37 = v26;
      if (v36 != 2)
      {
        goto LABEL_35;
      }

      v47 = *(v28 + 16);
      v96 = *(v28 + 24);
      v48 = sub_21A4509F4();
      v39 = v107;
      if (v48)
      {
        v49 = sub_21A450A24();
        if (__OFSUB__(v47, v49))
        {
          goto LABEL_104;
        }

        v48 += v47 - v49;
      }

      v50 = __OFSUB__(v96, v47);
      v51 = v96 - v47;
      if (v50)
      {
        goto LABEL_103;
      }

      v52 = sub_21A450A14();
      if (!v48)
      {
        goto LABEL_36;
      }

      v53 = v52 >= v51 ? v51 : v52;
      v54 = v53 >= 0 ? v53 : v53 + 3;
      if ((v53 + 3) <= 6)
      {
        goto LABEL_36;
      }

      v96 = v48;
      v55 = v54 >> 2;
      if (v53 <= 3)
      {
        v45 = 4 * v55;
        v40 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
        v40 = swift_allocObject();
        v56 = _swift_stdlib_malloc_size(v40);
        v45 = 4 * v55;
        v57 = v56 - 32;
        if (v56 < 32)
        {
          v57 = v56 - 29;
        }

        v40[2] = v55;
        v40[3] = 2 * (v57 >> 2);
      }

      v43 = v40 + 4;
      v44 = v96;
      goto LABEL_59;
    }

    v37 = v26;
    if (v36)
    {
      if (v28 >> 32 < v28)
      {
        goto LABEL_102;
      }

      v58 = sub_21A4509F4();
      if (!v58)
      {
        sub_21A450A14();
LABEL_54:
        sub_21A3E759C(v28, v35);
        v40 = MEMORY[0x277D84F90];
        v39 = v107;
        goto LABEL_61;
      }

      v59 = v58;
      v60 = sub_21A450A24();
      if (__OFSUB__(v28, v60))
      {
        goto LABEL_105;
      }

      v61 = (v28 - v60 + v59);
      v62 = sub_21A450A14();
      if (!v61)
      {
        goto LABEL_54;
      }

      v63 = v62 >= (v28 >> 32) - v28 ? (v28 >> 32) - v28 : v62;
      v64 = v63 >= 0 ? v63 : v63 + 3;
      if ((v63 + 3) <= 6)
      {
        goto LABEL_54;
      }

      v65 = v61;
      v66 = v64 >> 2;
      if (v63 <= 3)
      {
        v45 = 4 * v66;
        v40 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
        v40 = swift_allocObject();
        v67 = _swift_stdlib_malloc_size(v40);
        v45 = 4 * v66;
        v68 = v67 - 32;
        if (v67 < 32)
        {
          v68 = v67 - 29;
        }

        v40[2] = v66;
        v40[3] = 2 * (v68 >> 2);
      }

      v39 = v107;
      v43 = v40 + 4;
      v44 = v65;
      goto LABEL_59;
    }

    v109 = v28;
    v110 = v35;
    v111 = BYTE2(v35);
    v112 = BYTE3(v35);
    v113 = BYTE4(v35);
    v38 = (v35 >> 50) & 0x3F;
    v114 = BYTE5(v35);
    v39 = v107;
    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
      v40 = swift_allocObject();
      v41 = _swift_stdlib_malloc_size(v40);
      v42 = v41 - 32;
      if (v41 < 32)
      {
        v42 = v41 - 29;
      }

      v40[2] = v38;
      v40[3] = 2 * (v42 >> 2);
      v43 = v40 + 4;
      v44 = &v109;
      v45 = 4 * v38;
LABEL_59:
      memcpy(v43, v44, v45);
      goto LABEL_60;
    }

    v40 = MEMORY[0x277D84F90];
LABEL_60:
    sub_21A3E759C(v28, v35);
LABEL_61:
    v69 = v40[2];
    v50 = __OFADD__(v37, v69);
    v18 = v37 + v69;
    if (v50)
    {
      goto LABEL_97;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v19;
    v71 = sub_21A3DCA2C(v39, v23);
    v73 = v19[2];
    v74 = (v72 & 1) == 0;
    v50 = __OFADD__(v73, v74);
    v75 = v73 + v74;
    if (v50)
    {
      goto LABEL_98;
    }

    v76 = v72;
    if (v19[3] < v75)
    {
      sub_21A3E3588(v75, isUniquelyReferenced_nonNull_native, &qword_27CD28510, &qword_21A456210);
      v71 = sub_21A3DCA2C(v39, v23);
      if ((v76 & 1) != (v77 & 1))
      {
        result = sub_21A451A94();
        __break(1u);
        return result;
      }

LABEL_67:
      if ((v76 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_67;
    }

    v81 = v71;
    sub_21A3E4410(&qword_27CD28510, &qword_21A456210);
    v71 = v81;
    if ((v76 & 1) == 0)
    {
LABEL_68:
      v19 = v109;
      v109[(v71 >> 6) + 8] |= 1 << v71;
      v78 = (v19[6] + 16 * v71);
      *v78 = v39;
      v78[1] = v23;
      *(v19[7] + 8 * v71) = v40;

      v79 = v19[2];
      v50 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v50)
      {
        goto LABEL_101;
      }

      v19[2] = v80;
      goto LABEL_6;
    }

LABEL_5:
    v21 = v71;

    v19 = v109;
    *(v109[7] + 8 * v21) = v40;

LABEL_6:
    v17 = v105 + 1;
    v20 = v104 + 2;
    v10 = v103;
    v15 = v108;
    a4 = v97;
    if (v102 == v105 + 1)
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        if (v18)
        {
          v10 = sub_21A451344();
          *(v10 + 16) = v18;
          memset_pattern16((v10 + 32), &unk_21A456140, 4 * v18);
        }

        else
        {
          v10 = MEMORY[0x277D84F90];
        }

LABEL_80:
        v83 = 0;
        v84 = (v15 + 40);
        v85 = -v102;
        v86 = -1;
        while (v85 + v86 != -1)
        {
          if (++v86 >= *(v15 + 16))
          {
            goto LABEL_99;
          }

          if (!v19[2])
          {
            goto LABEL_92;
          }

          v87 = *(v84 - 1);
          v88 = *v84;

          v89 = sub_21A3DCA2C(v87, v88);
          v91 = v90;

          if ((v91 & 1) == 0)
          {
            goto LABEL_92;
          }

          v92 = *(*(v19[7] + 8 * v89) + 16);

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v92 >> 31)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v10 = sub_21A410F90(v10);
            if (v92 >> 31)
            {
LABEL_91:
              __break(1u);
LABEL_92:

              goto LABEL_93;
            }
          }

          v84 += 2;
          cblas_scopy_NEWLAPACK();

          v50 = __OFADD__(v83, v92);
          v83 += v92;
          v15 = v108;
          if (v50)
          {
            goto LABEL_100;
          }
        }

        return v10;
      }

LABEL_106:
      __break(1u);
    }
  }

LABEL_93:

  sub_21A3DCAA4();
  swift_allocError();
  *v93 = 44;
  swift_willThrow();

  return v10;
}

uint64_t sub_21A3E700C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21A3E7060(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21A3E70C8(uint64_t a1)
{
  result = sub_21A40BC4C(a1);
  if (v3)
  {
LABEL_2:
    v4 = result;
    sub_21A3DCAA4();
    swift_allocError();
    *v5 = 46;
    swift_willThrow();
    return v4;
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = v6;
LABEL_13:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      if (*(*(a1 + 56) + ((v11 << 9) | (8 * v12))) != result)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        return result;
      }

      v9 = *(a1 + 64 + 8 * v11);
      ++v6;
      if (v9)
      {
        v6 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A3E71C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = a3 + a6;
  v15 = __OFADD__(a3, a6);
  v16 = v14 - 1;
  v17 = __OFSUB__(v14, 1);
  v50 = v17;
  v51 = v15;
  v19 = v16 == 0x8000000000000000 && a6 == -1;
  v48 = v19;

  v21 = 0;
  v49 = a6;
  v47 = v16 / a6;
  v52 = a2;
  for (i = result; v12; v8 = i)
  {
LABEL_20:
    v23 = (v8[6] + ((v21 << 10) | (16 * __clz(__rbit64(v12)))));
    v25 = *v23;
    v24 = v23[1];
    swift_beginAccess();
    if (!*(*(a5 + 48) + 16))
    {
      goto LABEL_59;
    }

    sub_21A3DCA2C(v25, v24);
    if ((v26 & 1) == 0)
    {

      goto LABEL_58;
    }

    if (!*(a2 + 16) || (v27 = sub_21A3DCA2C(v25, v24), (v28 & 1) == 0))
    {

LABEL_59:
      sub_21A3DCAA4();
      swift_allocError();
      *v44 = 10;
      swift_willThrow();
    }

    if (!v8[2] || (v29 = *(*(a2 + 56) + 8 * v27), v30 = sub_21A3DCA2C(v25, v24), (v31 & 1) == 0))
    {

LABEL_58:

      goto LABEL_59;
    }

    v56 = *(v8[7] + 8 * v30);

    result = sub_21A4094A0();
    v32 = *(result + 16);
    if (v32)
    {
      v33 = (result + 32);
      v34 = 1;
      while (1)
      {
        v35 = *v33++;
        v36 = v34 * v35;
        if ((v34 * v35) >> 64 != (v34 * v35) >> 63)
        {
          break;
        }

        v34 = v36;
        if (!--v32)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_64;
    }

    v36 = 1;
LABEL_32:

    if (*(a4 + 16))
    {
      v37 = sub_21A3DCA2C(v25, v24);
      v39 = v38;

      if (v39)
      {
        if (v29 < 1)
        {
          goto LABEL_60;
        }

        if ((v29 * a3) >> 64 != (v29 * a3) >> 63)
        {
          goto LABEL_70;
        }

        v40 = *(*(a4 + 56) + 8 * v37);
        v41 = *(v56 + 16);

        if (v41 < v29 * a3)
        {
          goto LABEL_61;
        }

        if ((v40 * v29) >> 64 != (v40 * v29) >> 63)
        {
          goto LABEL_71;
        }

        if (v36 != v40 * v29)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }
    }

    else
    {
    }

    if (v51)
    {
      goto LABEL_65;
    }

    if (v50)
    {
      goto LABEL_66;
    }

    if (!v49)
    {
      goto LABEL_67;
    }

    if (v48)
    {
      goto LABEL_69;
    }

    if (v29 < 1)
    {
LABEL_60:

LABEL_61:
      sub_21A3DCAA4();
      swift_allocError();
      *v45 = 11;
      swift_willThrow();
    }

    if ((v29 * v47) >> 64 != (v29 * v47) >> 63)
    {
      goto LABEL_68;
    }

    v42 = *(v56 + 16);

    if (v42 < v29 * v47 || v36 != v29)
    {
      goto LABEL_61;
    }

LABEL_52:
    v12 &= v12 - 1;

    a2 = v52;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v13)
    {
    }

    v12 = *(v9 + 8 * v22);
    ++v21;
    if (v12)
    {
      v21 = v22;
      goto LABEL_20;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_21A3E759C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_21A3E7630(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4 >= *(v3 + 16))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for CKRecipeDescriptorRecord(0);
    v6 = v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v4;
    *(v1 + 24) = v4 + 1;
    *(a1 + 24) = v5;
    *(a1 + 32) = &off_282B40378;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    sub_21A3ED1C8(v6, boxed_opaque_existential_1, type metadata accessor for CKRecipeDescriptorRecord);
  }
}

uint64_t sub_21A3E771C()
{

  return swift_deallocClassInstance();
}

void sub_21A3E7778()
{
  if (!*(*(*v0 + 16) + 16))
  {
    sub_21A3EC940();
    swift_allocError();
    *v1 = 16;
    swift_willThrow();
  }
}

void *sub_21A3E77F4()
{
  v1 = sub_21A41101C(*v0);

  return v1;
}

void *sub_21A3E7850(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = *(v3 + 16);
    v8 = 1;
    while (1)
    {
      v9 = *(v3 + 24);
      if (v9 >= *(v7 + 16))
      {
        v5 = v8 - 1;
        goto LABEL_13;
      }

      if (v9 < 0)
      {
        break;
      }

      v10 = type metadata accessor for CKRecipeDescriptorRecord(0);
      v14 = v10;
      v15 = &off_282B40378;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
      sub_21A3ED1C8(v7 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v9, boxed_opaque_existential_1, type metadata accessor for CKRecipeDescriptorRecord);
      *(v3 + 24) = v9 + 1;
      sub_21A3C50DC(&v13, v16);
      result = sub_21A3C50DC(v16, v6);
      if (v5 == v8)
      {
        goto LABEL_13;
      }

      v6 += 40;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21A3E79B0(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_12:
    *v4 = v3;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = *(v3 + 16);
    v8 = 1;
    while (1)
    {
      v9 = *(v3 + 24);
      if (v9 >= v7)
      {
        break;
      }

      *(v3 + 24) = v9 + 1;
      v10 = type metadata accessor for FileRecipeDescriptor();
      v11 = swift_allocObject();
      v14 = v10;
      v15 = &off_282B41030;
      *&v13 = v11;
      sub_21A3C50DC(&v13, v16);
      sub_21A3C50DC(v16, v6);
      if (v5 == v8)
      {
        goto LABEL_12;
      }

      v6 += 40;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v5 = v8 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A3E7B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v138 = a2;
  v139 = a3;
  v137 = a1;
  v150 = *MEMORY[0x277D85DE8];
  v5 = sub_21A4510B4();
  v141 = *(v5 - 8);
  v142 = v5;
  MEMORY[0x28223BE20](v5);
  v140 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A450D14();
  v146 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CKRecipeDescriptorRecord(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v136 = &v131 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v131 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v134 = &v131 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v131 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v131 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v131 - v25;
  v27 = v10;
  if (*(v4 + *(v10 + 60)) < vcvtd_n_f64_u64(sub_21A3ECA48(0x20000000000001uLL), 0x35uLL))
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v28 = sub_21A450F24();
    __swift_project_value_buffer(v28, qword_27CD28C90);
    sub_21A3ED1C8(v4, v26, type metadata accessor for CKRecipeDescriptorRecord);
    sub_21A3ED1C8(v4, v24, type metadata accessor for CKRecipeDescriptorRecord);
    v29 = sub_21A450F04();
    v30 = sub_21A451574();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v149[0] = v32;
      *v31 = 134218242;
      v33 = *&v26[v27[15]];
      sub_21A3ED168(v26, type metadata accessor for CKRecipeDescriptorRecord);
      *(v31 + 4) = v33;
      *(v31 + 12) = 2080;
      sub_21A3ED1C8(v24, v145, type metadata accessor for CKRecipeDescriptorRecord);
      v34 = sub_21A4510C4();
      v36 = v35;
      sub_21A3ED168(v24, type metadata accessor for CKRecipeDescriptorRecord);
      v37 = sub_21A3E2554(v34, v36, v149);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_21A3C2000, v29, v30, "Recipe targeting failed to target by sampling rate %f for recipe %s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x21CEDB220](v32, -1, -1);
      MEMORY[0x21CEDB220](v31, -1, -1);
    }

    else
    {

      sub_21A3ED168(v24, type metadata accessor for CKRecipeDescriptorRecord);
      sub_21A3ED168(v26, type metadata accessor for CKRecipeDescriptorRecord);
    }

    sub_21A3EC940();
    swift_allocError();
    *v50 = 18;
    return swift_willThrow();
  }

  sub_21A450D04();
  sub_21A3ED340(&qword_27CD28578, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v144 = v9;
  v38 = v7;
  v39 = v10;
  if ((sub_21A450FE4() & 1) == 0 && (sub_21A450FE4() & 1) == 0)
  {
    v133 = v7;
    type metadata accessor for PopulationSegmentation();
    swift_initStackObject();
    v54 = sub_21A401DA8();
    v55 = v54;
    v56 = *(v4 + v27[19]);
    v57 = MEMORY[0x277D837D0];
    if (*(v56 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28580, &qword_21A456480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21A455F00;
      v59 = (v4 + v27[20]);
      v60 = v59[1];
      *(inited + 32) = *v59;
      v61 = MEMORY[0x277D83838];
      *(inited + 56) = v57;
      *(inited + 64) = v61;
      *(inited + 40) = v60;
      v62 = MEMORY[0x277D84A78];
      *(inited + 96) = MEMORY[0x277D84A28];
      *(inited + 104) = v62;
      *(inited + 72) = *(v56 + 32);

      v63 = v143;
      v64 = sub_21A401E94(inited);
      v65 = v63;
      if (v63)
      {
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28588, &qword_21A456488);
        swift_arrayDestroy();

        return (*(v146 + 8))(v144, v133);
      }

      v66 = v64;
      v132 = v55;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28588, &qword_21A456488);
      swift_arrayDestroy();
    }

    else
    {
      v132 = v54;
      v66 = -1;
      v65 = v143;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_21A455F10;
    *(v67 + 32) = 0x5F65636976656424;
    v143 = v67 + 32;
    *(v67 + 40) = 0xEA0000000000736FLL;
    *(v67 + 48) = _s24PrivateFederatedLearning8PFLUtilsO18sysctlStringByName4nameS2S_tFZ_0(0x76736F2E6E72656BLL, 0xEE006E6F69737265);
    *(v67 + 56) = v68;
    *(v67 + 72) = v57;
    strcpy((v67 + 80), "$device_type");
    *(v67 + 93) = 0;
    *(v67 + 94) = -5120;
    sub_21A3FF888();
    *(v67 + 96) = v69;
    *(v67 + 104) = v70;
    *(v67 + 120) = v57;
    strcpy((v67 + 128), "$dodml_dataset");
    *(v67 + 143) = -18;
    v71 = v138;
    *(v67 + 144) = v137;
    *(v67 + 152) = v71;
    *(v67 + 168) = v57;
    *(v67 + 176) = 0xD000000000000013;
    v72 = MEMORY[0x277D83B88];
    *(v67 + 184) = 0x800000021A45BEC0;
    *(v67 + 192) = v66;
    *(v67 + 216) = v72;
    *(v67 + 224) = 0xD000000000000014;
    *(v67 + 232) = 0x800000021A45BEE0;
    v73 = (v4 + v39[20]);
    v75 = *v73;
    v74 = v73[1];
    v76 = (v4 + v39[13]);
    v78 = *v76;
    v77 = v76[1];

    v79 = sub_21A4039D8(v75, v74, v78, v77);
    *(v67 + 264) = v72;
    *(v67 + 240) = v79;
    v80 = sub_21A3E4F6C(v67);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
    swift_arrayDestroy();
    v81 = sub_21A3D3450(v139);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v149[0] = v80;
    sub_21A3D3D28(v81, sub_21A3EC9F8, 0, isUniquelyReferenced_nonNull_native, v149);
    if (v65)
    {

      __break(1u);
      return result;
    }

    v83 = *&v149[0];
    v84 = v140;
    sub_21A4510A4();
    v85 = sub_21A451094();
    v87 = v86;
    (*(v141 + 8))(v84, v142);
    v142 = v87;
    if (v87 >> 60 == 15)
    {
    }

    else
    {
      v88 = objc_opt_self();
      v89 = sub_21A450C54();
      v147[0] = 0;
      v90 = [v88 JSONObjectWithData:v89 options:4 error:v147];

      v91 = v147[0];
      if (v90)
      {
        v141 = v85;
        sub_21A451694();
        swift_unknownObjectRelease();
        sub_21A3D3B38(v148, v149);
        sub_21A3D3B94(v149, v148);
        v147[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
        v147[0] = v83;

        LODWORD(v83) = sub_21A420EF4(v148, v147);
        sub_21A3D3BF0(v148, &qword_27CD28468, &unk_21A455FB0);
        sub_21A3D3BF0(v147, &qword_27CD28468, &unk_21A455FB0);
        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v92 = sub_21A450F24();
        __swift_project_value_buffer(v92, qword_27CD28C90);
        v93 = v134;
        sub_21A3ED1C8(v4, v134, type metadata accessor for CKRecipeDescriptorRecord);
        v94 = v4;
        v95 = v135;
        sub_21A3ED1C8(v94, v135, type metadata accessor for CKRecipeDescriptorRecord);

        v96 = sub_21A450F04();
        v97 = sub_21A451574();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          LODWORD(v140) = v83;
          v83 = v99;
          *&v148[0] = v99;
          *v98 = 67109890;
          *(v98 + 4) = v140 & 1;
          *(v98 + 8) = 2080;
          v100 = (v93 + v39[17]);
          v143 = 0;
          LODWORD(v139) = v97;
          v102 = *v100;
          v101 = v100[1];

          sub_21A3ED168(v93, type metadata accessor for CKRecipeDescriptorRecord);
          v103 = sub_21A3E2554(v102, v101, v148);

          *(v98 + 10) = v103;
          *(v98 + 18) = 2080;
          v104 = sub_21A450F74();
          v106 = v105;

          v107 = sub_21A3E2554(v104, v106, v148);

          *(v98 + 20) = v107;
          *(v98 + 28) = 2080;
          v108 = v135;
          sub_21A3ED1C8(v135, v145, type metadata accessor for CKRecipeDescriptorRecord);
          v109 = sub_21A4510C4();
          v111 = v110;
          sub_21A3ED168(v108, type metadata accessor for CKRecipeDescriptorRecord);
          v112 = sub_21A3E2554(v109, v111, v148);

          *(v98 + 30) = v112;
          _os_log_impl(&dword_21A3C2000, v96, v139, "Recipe targeting %{BOOL}d, predicate: %s, subject: %s, recipe: %s", v98, 0x26u);
          swift_arrayDestroy();
          v113 = v83;
          LOBYTE(v83) = v140;
          MEMORY[0x21CEDB220](v113, -1, -1);
          MEMORY[0x21CEDB220](v98, -1, -1);
        }

        else
        {

          sub_21A3ED168(v95, type metadata accessor for CKRecipeDescriptorRecord);
          sub_21A3ED168(v93, type metadata accessor for CKRecipeDescriptorRecord);
        }

        v126 = v133;
        v127 = v144;
        v129 = v141;
        if ((v83 & 1) == 0)
        {
          sub_21A3EC940();
          swift_allocError();
          *v130 = 20;
          swift_willThrow();
        }

        sub_21A3ECC34(v129, v142);

        __swift_destroy_boxed_opaque_existential_0(v149);
        return (*(v146 + 8))(v127, v126);
      }

      v114 = v91;

      v115 = sub_21A450A84();

      swift_willThrow();
      sub_21A3ECC34(v85, v142);
    }

    v116 = v136;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v117 = sub_21A450F24();
    __swift_project_value_buffer(v117, qword_27CD28C90);
    sub_21A3ED1C8(v4, v116, type metadata accessor for CKRecipeDescriptorRecord);
    v118 = sub_21A450F04();
    v119 = sub_21A451584();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&v149[0] = v121;
      *v120 = 136315138;
      v122 = (v116 + v39[17]);
      v123 = *v122;
      v124 = v122[1];

      sub_21A3ED168(v116, type metadata accessor for CKRecipeDescriptorRecord);
      v125 = sub_21A3E2554(v123, v124, v149);

      *(v120 + 4) = v125;
      _os_log_impl(&dword_21A3C2000, v118, v119, "Failed to parse target criteria %s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x21CEDB220](v121, -1, -1);
      MEMORY[0x21CEDB220](v120, -1, -1);
    }

    else
    {

      sub_21A3ED168(v116, type metadata accessor for CKRecipeDescriptorRecord);
    }

    v126 = v133;
    v127 = v144;
    sub_21A3EC940();
    swift_allocError();
    *v128 = 19;
    swift_willThrow();

    return (*(v146 + 8))(v127, v126);
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v40 = sub_21A450F24();
  __swift_project_value_buffer(v40, qword_27CD28C90);
  sub_21A3ED1C8(v4, v13, type metadata accessor for CKRecipeDescriptorRecord);
  v41 = sub_21A450F04();
  v42 = sub_21A451574();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v149[0] = v44;
    *v43 = 136315138;
    sub_21A3ED1C8(v13, v145, type metadata accessor for CKRecipeDescriptorRecord);
    v45 = sub_21A4510C4();
    v46 = v38;
    v48 = v47;
    sub_21A3ED168(v13, type metadata accessor for CKRecipeDescriptorRecord);
    v49 = sub_21A3E2554(v45, v48, v149);
    v38 = v46;

    *(v43 + 4) = v49;
    _os_log_impl(&dword_21A3C2000, v41, v42, "Recipe targeting failed at timestamp check for recipe %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x21CEDB220](v44, -1, -1);
    MEMORY[0x21CEDB220](v43, -1, -1);
  }

  else
  {

    sub_21A3ED168(v13, type metadata accessor for CKRecipeDescriptorRecord);
  }

  v52 = v144;
  sub_21A3EC940();
  swift_allocError();
  *v53 = 48;
  swift_willThrow();
  return (*(v146 + 8))(v52, v38);
}

void *sub_21A3E8C70(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v92 = a6;
  v90 = a5;
  v82 = a4;
  v81 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28618, &qword_21A456508);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v80 - v11;
  v12 = sub_21A450DF4();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x28223BE20](v12);
  v83 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28620, &unk_21A456510);
  MEMORY[0x28223BE20](v14 - 8);
  v86 = &v80 - v15;
  v16 = sub_21A450D94();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21A450E14();
  v94 = *(v87 - 8);
  v20 = MEMORY[0x28223BE20](v87);
  v93 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v80 - v25;
  v28 = *a1;
  v27 = a1[1];
  v29 = a1[2];
  v30 = a1[3];
  v7[2] = v28;
  v7[3] = v27;
  v7[4] = v29;
  v7[5] = v30;
  v31 = v81;
  v7[6] = a2;
  v7[7] = v31;
  v32 = v90;
  v7[8] = v82;
  v7[9] = v32;
  v90 = v29;
  sub_21A3ED4E4(v28, v27, v29, v30);
  sub_21A3FFD24();
  v7[10] = v33;
  v7[11] = v34;
  v91 = v28;
  v89 = v30;
  if (v27 == 3)
  {
LABEL_5:
    v36 = 0x69746375646F7270;
    v35 = 0xEA00000000006E6FLL;
    goto LABEL_7;
  }

  if (v27 != 4)
  {
    if (v27 == 5)
    {
      v35 = 0xE700000000000000;
      v36 = 0x676E6967617473;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v35 = 0xE500000000000000;
  v36 = 0x7972726163;
LABEL_7:
  v82 = v27;
  v37 = 0x6E776F6E6B6E7524;
  v7[12] = v36;
  v7[13] = v35;
  sub_21A450DD4();
  (*(v17 + 104))(v19, *MEMORY[0x277CC9668], v16);
  sub_21A450D54();
  v38 = sub_21A450D64();
  v40 = v39;

  (*(v17 + 8))(v19, v16);
  v41 = sub_21A3FFDD0(v38, v40);
  v43 = v42;

  v95 = v41;
  v96 = v43;
  v101 = 45;
  v102 = 0xE100000000000000;
  v99 = 95;
  v100 = 0xE100000000000000;
  sub_21A3ED2CC();
  v44 = sub_21A451654();
  v46 = v45;
  v48 = v94 + 8;
  v47 = *(v94 + 8);
  v49 = v26;
  v50 = v87;
  v47(v49, v87);

  v7[14] = v44;
  v7[15] = v46;
  sub_21A450DD4();
  v51 = v83;
  sub_21A450E04();
  v52 = v86;
  sub_21A450DE4();
  (*(v84 + 8))(v51, v85);
  v53 = sub_21A450D84();
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {
    sub_21A3D3BF0(v52, &qword_27CD28620, &unk_21A456510);
    v55 = 0xE800000000000000;
    v56 = 0x6E776F6E6B6E7524;
  }

  else
  {
    v57 = sub_21A450D74();
    v58 = v52;
    v56 = v57;
    v55 = v59;
    (*(v54 + 8))(v58, v53);
  }

  v94 = v48;
  v47(v24, v50);
  v7[16] = v56;
  v7[17] = v55;
  sub_21A450DD4();
  v60 = v88;
  sub_21A450DC4();
  v61 = sub_21A450DB4();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 48))(v60, 1, v61);
  v64 = v91;
  if (v63 == 1)
  {
    sub_21A3D3BF0(v60, &qword_27CD28618, &qword_21A456508);
    v65 = 0xE800000000000000;
  }

  else
  {
    v37 = sub_21A450D74();
    v65 = v66;
    (*(v62 + 8))(v60, v61);
  }

  v67 = v90;
  v47(v93, v50);
  v7[18] = v37;
  v7[19] = v65;
  v68 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
  v69 = v82;
  v70 = v89;
  if (v82 == 3)
  {
    sub_21A3ED49C(v64, 3uLL, v67, v89);
    sub_21A3ED49C(0, 3uLL, 0, 0);
    v71 = sub_21A451054();
    [v68 setApplicationBundleIdentifierOverrideForPushTopicGeneration_];
  }

  else
  {
    sub_21A3ED4E4(v64, v82, v67, v89);
    sub_21A3ED49C(v64, v69, v67, v70);
    sub_21A3ED49C(0, 3uLL, 0, 0);
  }

  v95 = v64;
  v96 = v69;
  v97 = v67;
  v98 = v70;
  v72 = sub_21A3ECDCC(&v95);
  sub_21A3ED49C(v64, v69, v67, v70);
  v73 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v72 options:v68];

  v7[20] = [v73 publicCloudDatabase];
  v74 = [objc_opt_self() defaultRecordZone];
  v75 = [v74 zoneID];

  v7[21] = v75;
  v76 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
  v77 = sub_21A451054();
  [v76 setName_];

  v7[22] = v76;
  v78 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  [v78 setPreferAnonymousRequests_];
  [v78 setQualityOfService_];
  [v78 setContainer_];
  [v78 setAllowsCellularAccess_];
  [v78 setAllowsExpensiveNetworkAccess_];

  v7[23] = v78;
  return v7;
}

uint64_t sub_21A3E953C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[86] = v3;
  v4[85] = a3;
  v4[84] = a2;
  v4[83] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285B8, &qword_21A4564C8);
  v4[87] = swift_task_alloc();
  v5 = type metadata accessor for CKRecipeDescriptorRecord(0);
  v4[88] = v5;
  v4[89] = *(v5 - 8);
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3E9664, 0, 0);
}

uint64_t sub_21A3E9664()
{
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v1 = sub_21A450F24();
  v0[94] = __swift_project_value_buffer(v1, qword_27CD28C90);
  v2 = sub_21A450F04();
  v3 = sub_21A451574();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21A3C2000, v2, v3, "Querying CK for policies", v4, 2u);
    MEMORY[0x21CEDB220](v4, -1, -1);
  }

  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[84];

  sub_21A3ED284(0, &qword_27CD285C0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285C8, &unk_21A4564D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21A455F00;
  v9 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v10 = sub_21A3ED230();
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 64) = v10;
  *(v8 + 72) = 0x695F6E6967756C70;
  *(v8 + 80) = 0xE900000000000064;

  v11 = sub_21A451534();
  v0[95] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21A455F00;
  *(v12 + 56) = v9;
  *(v12 + 64) = v10;
  *(v12 + 32) = 0x657669746361;
  *(v12 + 40) = 0xE600000000000000;
  *(v12 + 96) = v9;
  *(v12 + 104) = v10;
  v54 = v10;
  *(v12 + 72) = 0x737574617473;
  *(v12 + 80) = 0xE600000000000000;
  v13 = sub_21A451534();
  v0[96] = v13;
  v14 = sub_21A3ECFA8(0x73656369766564, 0xE700000000000000, v5[10], v5[11], 1819042084, 0xE400000000000000);
  v0[97] = v14;
  v15 = sub_21A3ECFA8(0x73656C61636F6CLL, 0xE700000000000000, v5[14], v5[15], 1819042084, 0xE400000000000000);
  v0[98] = v15;
  v16 = sub_21A3ECFA8(0x65676175676E616CLL, 0xE900000000000073, v5[16], v5[17], 1819042084, 0xE400000000000000);
  v0[99] = v16;
  v17 = sub_21A3ECFA8(0x736E6F69676572, 0xE700000000000000, v5[18], v5[19], 1819042084, 0xE400000000000000);
  v0[100] = v17;
  v18 = sub_21A3ECFA8(0xD000000000000013, 0x800000021A45BF00, v5[12], v5[13], 1819042084, 0xE400000000000000);
  v0[101] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285B0, &qword_21A4564C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_21A456270;
  v55 = v11;
  *(v19 + 32) = v11;
  *(v19 + 40) = v13;
  v20 = v13;
  *(v19 + 48) = v14;
  *(v19 + 56) = v15;
  v21 = v17;
  *(v19 + 64) = v16;
  *(v19 + 72) = v17;
  *(v19 + 80) = v18;
  v0[79] = v19;
  v22 = v5[7];
  if (v22)
  {
    v23 = *(v0[86] + 48);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21A455F00;
    v25 = MEMORY[0x277D837D0];
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = v54;
    *(v24 + 32) = v23;
    *(v24 + 40) = v22;
    *(v24 + 96) = v25;
    *(v24 + 104) = v54;
    *(v24 + 72) = 0xD000000000000015;
    *(v24 + 80) = 0x800000021A45B9A0;
    v26 = v55;
    v27 = v20;
    v28 = v14;
    v29 = v15;
    v30 = v16;
    v31 = v21;
    v32 = v18;

    v33 = sub_21A451534();
    MEMORY[0x21CED99D0]();
    if (*((v0[79] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[79] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21A451314();
    }

    sub_21A451364();
  }

  else
  {
    v34 = v55;
    v35 = v20;
    v36 = v14;
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v40 = v18;
  }

  v41 = v0[86];
  v42 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v43 = sub_21A4512D4();

  v44 = [v42 initWithType:1 subpredicates:v43];
  v0[102] = v44;

  sub_21A3ED284(0, &qword_27CD285D8, 0x277CBC578);
  v45 = v44;
  v46 = sub_21A4515B4();
  v0[103] = v46;
  v47 = *(v41 + 168);
  v0[104] = v47;
  v0[105] = sub_21A3EC940();
  v48 = swift_allocError();
  v0[106] = v48;
  *v49 = 6;

  v50 = v47;
  v51 = swift_task_alloc();
  v0[107] = v51;
  *v51 = v0;
  v51[1] = sub_21A3E9C90;
  v52 = v0[86];

  return sub_21A400430(v48, v52, v46, v50);
}

uint64_t sub_21A3E9C90(uint64_t a1, void *a2)
{
  v5 = *v3;
  v6 = *(*v3 + 832);
  v5[108] = a1;
  v5[109] = v2;

  if (v2)
  {
    v7 = sub_21A3EAF80;
  }

  else
  {
    v8 = v5[106];

    v7 = sub_21A3E9E08;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21A3E9E08()
{
  v129 = v0;

  v1 = sub_21A450F04();
  v2 = sub_21A451574();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[108];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_21A3C2000, v1, v2, "Number of CK Policies %ld", v5, 0xCu);
    MEMORY[0x21CEDB220](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[108];
  v7 = *(v6 + 16);
  if (v7)
  {
    v114 = v0[88];
    v115 = v0[89];
    v116 = v0[86];
    v8 = (v6 + 48);
    v117 = MEMORY[0x277D84F90];
    while (1)
    {
      v15 = *(v8 - 1);
      v16 = *v8;
      v17 = *(v8 - 2);
      sub_21A3ED150(v15);
      v18 = sub_21A450F04();
      v19 = sub_21A451574();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v17;
        v22 = v17;
        _os_log_impl(&dword_21A3C2000, v18, v19, "Policy CKRecordID: %@", v20, 0xCu);
        sub_21A3D3BF0(v21, &qword_27CD28608, &qword_21A456570);
        MEMORY[0x21CEDB220](v21, -1, -1);
        MEMORY[0x21CEDB220](v20, -1, -1);
      }

      v127 = v17;
      if (v16)
      {
        v125 = v7;
        sub_21A3ECC48();
        v23 = *(v116 + 64);
        v24 = *(v116 + 72);
        v25 = swift_allocError();
        *v26 = 35;
        v27 = sub_21A450A74();
        [v27 code];

        v0[80] = v25;
        v28 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v0 + 58);
        }

        else
        {
          v44 = sub_21A450A74();
          v45 = [v44 domain];

          sub_21A451084();
        }

        v123 = v8;
        v46 = v0[85];
        v0[71] = v0[84];
        v0[72] = v46;
        v0[73] = 46;
        v47 = 0xE100000000000000;
        v0[74] = 0xE100000000000000;
        sub_21A3ED2CC();
        v48 = (sub_21A451644() + 16);
        if (*v48)
        {
          v49 = &v48[2 * *v48];
          v50 = *v49;
          v47 = v49[1];
        }

        else
        {
          v50 = 85;
        }

        if ((v23 != v50 || v24 != v47) && (sub_21A4519B4() & 1) == 0)
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21A456280;
        *(inited + 32) = 0x6E6967756C70;
        *(inited + 40) = 0xE600000000000000;
        v69 = sub_21A451054();

        *(inited + 48) = v69;
        *(inited + 56) = 0x64496B736174;
        *(inited + 64) = 0xE600000000000000;
        v70 = sub_21A451054();

        *(inited + 72) = v70;
        *(inited + 80) = 0x6E6F697461636F6CLL;
        *(inited + 88) = 0xE800000000000000;
        *(inited + 96) = sub_21A451054();
        *(inited + 104) = 0x65736143657375;
        *(inited + 112) = 0xE700000000000000;
        v71 = sub_21A451054();

        *(inited + 120) = v71;
        *(inited + 128) = 0x646F43726F727265;
        *(inited + 136) = 0xE900000000000065;
        *(inited + 144) = sub_21A4514E4();
        *(inited + 152) = 0x6D6F44726F727265;
        *(inited + 160) = 0xEB000000006E6961;
        v72 = sub_21A451054();

        *(inited + 168) = v72;
        v73 = sub_21A3E57A0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
        swift_arrayDestroy();
        v74 = swift_allocObject();
        *(v74 + 16) = v73;
        v75 = sub_21A451054();
        v0[50] = sub_21A3ED320;
        v0[51] = v74;
        v0[46] = MEMORY[0x277D85DD0];
        v0[47] = 1107296256;
        v0[48] = sub_21A432B2C;
        v0[49] = &block_descriptor;
        v76 = _Block_copy(v0 + 46);

        AnalyticsSendEventLazy();

        _Block_release(v76);

        v77 = v15;
        v78 = sub_21A450F04();
        v79 = sub_21A451584();
        if (os_log_type_enabled(v78, v79))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v128[0] = v10;
          *v9 = 136315138;
          swift_getErrorValue();
          v11 = sub_21A451AA4();
          v13 = v12;
          sub_21A3ED15C(v15);
          v14 = sub_21A3E2554(v11, v13, v128);

          *(v9 + 4) = v14;
          _os_log_impl(&dword_21A3C2000, v78, v79, "Error: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v10);
          MEMORY[0x21CEDB220](v10, -1, -1);
          MEMORY[0x21CEDB220](v9, -1, -1);
        }

        else
        {

          sub_21A3ED15C(v15);
        }

        sub_21A3ED15C(v15);
      }

      else
      {
        v29 = v0[88];
        v30 = v0[87];
        sub_21A3ED150(v15);
        v31 = v15;
        sub_21A444828(v31, v30);
        if ((*(v115 + 48))(v30, 1, v29) != 1)
        {
          v51 = v0[93];
          v52 = v0[92];
          v53 = v0[91];
          sub_21A3ED388(v0[87], v51, type metadata accessor for CKRecipeDescriptorRecord);
          sub_21A3ED1C8(v51, v52, type metadata accessor for CKRecipeDescriptorRecord);
          sub_21A3ED1C8(v51, v53, type metadata accessor for CKRecipeDescriptorRecord);
          v54 = sub_21A450F04();
          v55 = sub_21A451574();
          v56 = os_log_type_enabled(v54, v55);
          v57 = v0[92];
          v58 = v0[91];
          if (v56)
          {
            v59 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v128[0] = v121;
            *v59 = 136315394;
            v60 = (v57 + *(v114 + 44));
            v124 = v8;
            v126 = v7;
            v61 = *v60;
            v62 = v60[1];

            sub_21A3ED168(v57, type metadata accessor for CKRecipeDescriptorRecord);
            v63 = sub_21A3E2554(v61, v62, v128);
            v8 = v124;

            *(v59 + 4) = v63;
            *(v59 + 12) = 2080;
            v64 = (v58 + *(v114 + 52));
            v65 = *v64;
            v66 = v64[1];

            sub_21A3ED168(v58, type metadata accessor for CKRecipeDescriptorRecord);
            v67 = sub_21A3E2554(v65, v66, v128);
            v7 = v126;

            *(v59 + 14) = v67;
            _os_log_impl(&dword_21A3C2000, v54, v55, "fetched CK policy record with plugin_id: %s, and recipe_id: %s", v59, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CEDB220](v121, -1, -1);
            MEMORY[0x21CEDB220](v59, -1, -1);
          }

          else
          {

            sub_21A3ED168(v58, type metadata accessor for CKRecipeDescriptorRecord);
            sub_21A3ED168(v57, type metadata accessor for CKRecipeDescriptorRecord);
          }

          v87 = v117;
          sub_21A3ED1C8(v0[93], v0[90], type metadata accessor for CKRecipeDescriptorRecord);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = sub_21A408640(0, v117[2] + 1, 1, v117);
          }

          v89 = v87[2];
          v88 = v87[3];
          if (v89 >= v88 >> 1)
          {
            v117 = sub_21A408640((v88 > 1), v89 + 1, 1, v87);
          }

          else
          {
            v117 = v87;
          }

          v90 = v0[93];
          v91 = v0[90];
          sub_21A3ED15C(v15);
          sub_21A3ED15C(v15);

          sub_21A3ED168(v90, type metadata accessor for CKRecipeDescriptorRecord);
          v117[2] = v89 + 1;
          sub_21A3ED388(v91, v117 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v89, type metadata accessor for CKRecipeDescriptorRecord);
          goto LABEL_9;
        }

        v125 = v7;
        sub_21A3D3BF0(v0[87], &qword_27CD285B8, &qword_21A4564C8);
        v32 = v31;
        v33 = sub_21A450F04();
        v34 = sub_21A451584();
        sub_21A3ED15C(v15);
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v35 = 138412290;
          *(v35 + 4) = v32;
          *v36 = v15;
          v37 = v32;
          _os_log_impl(&dword_21A3C2000, v33, v34, "Failed to decode Policy, skipping record: %@", v35, 0xCu);
          sub_21A3D3BF0(v36, &qword_27CD28608, &qword_21A456570);
          MEMORY[0x21CEDB220](v36, -1, -1);
          MEMORY[0x21CEDB220](v35, -1, -1);
        }

        sub_21A3ECC48();
        v38 = *(v116 + 64);
        v39 = *(v116 + 72);
        v40 = swift_allocError();
        *v41 = 46;
        v42 = sub_21A450A74();
        [v42 code];

        v0[82] = v40;
        v43 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v0 + 63);
        }

        else
        {
          v80 = sub_21A450A74();
          v81 = [v80 domain];

          sub_21A451084();
        }

        v123 = v8;
        v82 = v0[85];
        v0[75] = v0[84];
        v0[76] = v82;
        v0[77] = 46;
        v83 = 0xE100000000000000;
        v0[78] = 0xE100000000000000;
        sub_21A3ED2CC();
        v84 = (sub_21A451644() + 16);
        if (*v84)
        {
          v85 = &v84[2 * *v84];
          v86 = *v85;
          v83 = v85[1];
        }

        else
        {
          v86 = 85;
        }

        if ((v38 != v86 || v39 != v83) && (sub_21A4519B4() & 1) == 0)
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
        v92 = swift_initStackObject();
        *(v92 + 16) = xmmword_21A456280;
        *(v92 + 32) = 0x6E6967756C70;
        *(v92 + 40) = 0xE600000000000000;
        v93 = sub_21A451054();

        *(v92 + 48) = v93;
        *(v92 + 56) = 0x64496B736174;
        *(v92 + 64) = 0xE600000000000000;
        v94 = sub_21A451054();

        *(v92 + 72) = v94;
        *(v92 + 80) = 0x6E6F697461636F6CLL;
        *(v92 + 88) = 0xE800000000000000;
        *(v92 + 96) = sub_21A451054();
        *(v92 + 104) = 0x65736143657375;
        *(v92 + 112) = 0xE700000000000000;
        v95 = sub_21A451054();

        *(v92 + 120) = v95;
        *(v92 + 128) = 0x646F43726F727265;
        *(v92 + 136) = 0xE900000000000065;
        *(v92 + 144) = sub_21A4514E4();
        *(v92 + 152) = 0x6D6F44726F727265;
        *(v92 + 160) = 0xEB000000006E6961;
        v96 = sub_21A451054();

        *(v92 + 168) = v96;
        v97 = sub_21A3E57A0(v92);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
        swift_arrayDestroy();
        v98 = swift_allocObject();
        *(v98 + 16) = v97;
        v99 = sub_21A451054();
        v0[56] = sub_21A3ED530;
        v0[57] = v98;
        v0[52] = MEMORY[0x277D85DD0];
        v0[53] = 1107296256;
        v0[54] = sub_21A432B2C;
        v0[55] = &block_descriptor_33;
        v100 = _Block_copy(v0 + 52);

        AnalyticsSendEventLazy();

        _Block_release(v100);

        sub_21A3ED15C(v15);
        sub_21A3ED15C(v15);
      }

      v8 = v123;
      v7 = v125;
LABEL_9:
      v8 += 24;
      if (!--v7)
      {
        v101 = v117;
        goto LABEL_52;
      }
    }
  }

  v101 = MEMORY[0x277D84F90];
LABEL_52:

  v120 = v0[103];
  v122 = v0[102];
  v118 = v0[100];
  v119 = v0[101];
  v102 = v0[99];
  v103 = v0[98];
  v104 = v0[97];
  v105 = v0[96];
  v106 = v0[95];
  v128[0] = v101;
  v107 = v0[83];
  sub_21A3F63DC();
  v108 = v128[0];
  v109 = type metadata accessor for CKRecipeDescriptorIterator();
  v110 = swift_allocObject();
  *(v110 + 16) = v108;
  *(v110 + 24) = 0;
  v107[3] = v109;
  v107[4] = sub_21A3ED340(&qword_27CD28600, v111, type metadata accessor for CKRecipeDescriptorIterator, &unk_21A456460);

  *v107 = v110;

  v112 = v0[1];

  return v112();
}

uint64_t sub_21A3EAF80()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);
  v5 = *(v0 + 792);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v11 = *(v0 + 848);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21A3EB098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21A3EB0BC, 0, 0);
}

uint64_t sub_21A3EB0BC()
{
  v1 = v0[4];
  v2 = *MEMORY[0x277CBBFC0];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_21A3EB178;
  v4 = v0[3];

  return MEMORY[0x28210DF20](v4, v1, 0, v2);
}

uint64_t sub_21A3EB178(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_21A3EB288(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  type metadata accessor for PFLTaskPreferences(0);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28598, &qword_21A4564A8);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for CKPayloadRecord(0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3EB3DC, 0, 0);
}

uint64_t sub_21A3EB3DC()
{
  v23 = v0;
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = v0[10];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 48))(v2, v3);
  v6 = v5;
  v0[18] = v4;
  v0[19] = v5;
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v7 = sub_21A450F24();
  v0[20] = __swift_project_value_buffer(v7, qword_27CD28C90);

  v8 = sub_21A450F04();
  v9 = sub_21A451574();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_21A3E2554(v4, v6, v22);
    _os_log_impl(&dword_21A3C2000, v8, v9, "Querying Payload for recipe: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x21CEDB220](v11, -1, -1);
    MEMORY[0x21CEDB220](v10, -1, -1);
  }

  v12 = v0[12];
  sub_21A3ED284(0, &qword_27CD284B8, 0x277CBC5D0);
  v13 = *(v12 + 168);

  v14 = v13;
  v15 = sub_21A451524();
  v0[21] = v15;
  v0[22] = sub_21A3EC940();
  v16 = swift_allocError();
  v0[23] = v16;
  *v17 = 41;

  v18 = v15;
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_21A3EB69C;
  v20 = v0[12];

  return sub_21A4008C8(v16, v20, v18);
}

uint64_t sub_21A3EB69C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v5 = sub_21A3EC084;
  }

  else
  {

    v5 = sub_21A3EB82C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3EB82C()
{
  v71 = v0;
  v70[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 168);

  v2 = sub_21A450F04();
  v3 = sub_21A451574();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v70[0] = v6;
    *v5 = 136315138;
    if (*(v4 + 16) && (v7 = sub_21A3DCB4C(*(v0 + 168)), (v8 & 1) != 0))
    {
      v9 = *(*(v0 + 200) + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      sub_21A3ED150(*v9);
    }

    else
    {
      v10 = 0;
      v11 = -1;
    }

    *(v0 + 48) = v10;
    *(v0 + 56) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285A8, &qword_21A4564B0);
    v12 = sub_21A4510C4();
    v14 = sub_21A3E2554(v12, v13, v70);

    *(v5 + 4) = v14;
    _os_log_impl(&dword_21A3C2000, v2, v3, "fetchedPayload: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x21CEDB220](v6, -1, -1);
    MEMORY[0x21CEDB220](v5, -1, -1);
  }

  if (!*(*(v0 + 200) + 16) || (v15 = sub_21A3DCB4C(*(v0 + 168)), (v16 & 1) == 0))
  {
    v25 = *(v0 + 168);

    v26 = swift_allocError();
    *v27 = 42;
    sub_21A3ED0FC();
    swift_allocError();
    *v28 = 4;
    *(v28 + 8) = v26;
    swift_willThrow();

LABEL_23:

    v55 = *(v0 + 8);

    return v55();
  }

  v17 = *(*(v0 + 200) + 56) + 16 * v15;
  v18 = *v17;
  v19 = *(v17 + 8);
  sub_21A3ED150(*v17);

  if (v19)
  {
    v20 = *(v0 + 168);

    v21 = swift_allocError();
    *v22 = 43;
    sub_21A3ED0FC();
    swift_allocError();
    *v23 = 4;
    *(v23 + 8) = v21;
    swift_willThrow();
    v24 = v18;
LABEL_14:
    sub_21A3ED15C(v24);

    goto LABEL_23;
  }

  v29 = *(v0 + 120);
  v30 = *(v0 + 128);
  v31 = *(v0 + 112);
  sub_21A446940(v18, v31);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v20 = *(v0 + 168);
    v32 = *(v0 + 112);

    sub_21A3D3BF0(v32, &qword_27CD28598, &qword_21A4564A8);
    v33 = swift_allocError();
    *v34 = 44;
    sub_21A3ED0FC();
    swift_allocError();
    *v35 = 4;
    *(v35 + 8) = v33;
    swift_willThrow();
    v24 = v18;
    goto LABEL_14;
  }

  sub_21A3ED388(*(v0 + 112), *(v0 + 136), type metadata accessor for CKPayloadRecord);
  v36 = objc_opt_self();
  v37 = sub_21A450C54();
  *(v0 + 64) = 0;
  v38 = [v36 JSONObjectWithData:v37 options:0 error:v0 + 64];

  v39 = *(v0 + 64);
  if (!v38)
  {
    v49 = v39;

    v50 = sub_21A450A84();

    swift_willThrow();
LABEL_21:
    v51 = *(v0 + 168);
    v46 = *(v0 + 136);
    v52 = swift_allocError();
    *v53 = 45;
    sub_21A3ED0FC();
    swift_allocError();
    *v54 = 4;
    *(v54 + 8) = v52;
    swift_willThrow();

    sub_21A3ED15C(v18);
    goto LABEL_22;
  }

  v40 = v39;
  sub_21A451694();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v41 = *(v0 + 208);
  v42 = *(v0 + 72);
  type metadata accessor for FederatedBuffer();
  swift_allocObject();

  v44 = sub_21A409EB0(v43);
  if (v41)
  {
    v45 = *(v0 + 168);
    v46 = *(v0 + 136);

    sub_21A3ED0FC();
    swift_allocError();
    *v47 = 4;
    *(v47 + 8) = v41;
    swift_willThrow();
    v48 = v41;
    sub_21A3ED15C(v18);

LABEL_22:
    sub_21A3ED168(v46, type metadata accessor for CKPayloadRecord);
    goto LABEL_23;
  }

  v69 = v44;
  v57 = *(v0 + 136);
  v58 = *(v0 + 120);
  type metadata accessor for PFLTaskStorage(0);
  swift_allocObject();
  sub_21A433D34();
  sub_21A4341BC((v57 + *(v58 + 24)));
  v59 = *(v0 + 168);
  v60 = *(v0 + 152);
  v62 = v61;
  v63 = *(v0 + 136);
  v64 = *(v0 + 104);
  v68 = *(v0 + 144);
  v65 = *(v0 + 88);

  sub_21A3ED15C(v18);

  sub_21A3ED1C8(v65, v64, type metadata accessor for PFLTaskPreferences);
  type metadata accessor for PFLTask(0);
  v66 = swift_allocObject();
  v66[5] = v62;
  v66[6] = 0;
  v66[2] = v68;
  v66[3] = v60;
  v66[4] = v42;
  sub_21A3ED388(v64, v66 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences, type metadata accessor for PFLTaskPreferences);
  v66[6] = v69;
  sub_21A3ED168(v63, type metadata accessor for CKPayloadRecord);

  v67 = *(v0 + 8);

  return v67(v66);
}

uint64_t sub_21A3EC084()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);

  sub_21A3ED0FC();
  swift_allocError();
  *v3 = 4;
  *(v3 + 8) = v1;
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21A3EC188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21A3EC1AC, 0, 0);
}

uint64_t sub_21A3EC1AC()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285B0, &qword_21A4564C0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_21A456290;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_21A3EC294;

  return MEMORY[0x28210DF18](v2, 0);
}

uint64_t sub_21A3EC294(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_21A3EC3E8;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_21A3EC3C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3EC3E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3EC44C()
{
  sub_21A3ED49C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return v0;
}

uint64_t sub_21A3EC4C8()
{
  sub_21A3EC44C();

  return swift_deallocClassInstance();
}

uint64_t sub_21A3EC520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3EC5D4;

  return sub_21A3E953C(a1, a2, a3);
}

uint64_t sub_21A3EC5D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A3EC6CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A3EC774;

  return sub_21A3EB288(a1, a2);
}

uint64_t sub_21A3EC774(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21A3EC8BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_21A3ED340(&qword_27CD28560, a2, type metadata accessor for CKRecipeDescriptorIterator, &unk_21A4563C8);
  result = sub_21A3ED340(&qword_27CD28568, v3, type metadata accessor for CKRecipeDescriptorIterator, &unk_21A4563F8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21A3EC940()
{
  result = qword_27CD28570;
  if (!qword_27CD28570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28570);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_21A3EC9F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_21A3D3B94((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_21A3ECA48(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x21CEDB240](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x21CEDB240](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A3ECAD4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21A3D3B94(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_21A3D3B38(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_21A3D3BF0(v21, &qword_27CD28590, &qword_21A4564A0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A3ECC34(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21A3E759C(result, a2);
  }

  return result;
}

uint64_t sub_21A3ECC48()
{
  v0 = sub_21A450D14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A450D04();
  v4 = _s24PrivateFederatedLearning8PFLUtilsO18getDayAndHourInGMT4dateSi3day_Si4hourt10Foundation4DateV_tFZ_0(v3);
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = sub_21A451974();
  v13 = v7;
  MEMORY[0x21CED98B0](58, 0xE100000000000000);
  v11 = v6;
  v8 = sub_21A451974();
  MEMORY[0x21CED98B0](v8);

  return v12;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_21A3ECDCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (v2 != 5)
  {
    v14 = *a1;
    v15 = v2;
    v16 = v4;
    v17 = v3;
    v18 = xmmword_21A4562A0;
    v19 = 0;
    v20 = 0;
    if (v2 >= 4)
    {
      if (v2 == 4)
      {
        sub_21A3D3BF0(&v14, &qword_27CD28628, &unk_21A458B90);
LABEL_8:
        v5 = 1;
        goto LABEL_9;
      }
    }

    sub_21A3D3BF0(&v14, &qword_27CD28628, &unk_21A458B90);
    v10[0] = v1;
    v10[1] = v2;
    v10[2] = v4;
    v10[3] = v3;
    v11 = xmmword_21A4562B0;
    v12 = 0;
    v13 = 0;
    sub_21A3ED4E4(v1, v2, v4, v3);
    sub_21A3D3BF0(v10, &qword_27CD28628, &unk_21A458B90);
    goto LABEL_8;
  }

  v14 = *a1;
  v15 = 5;
  v16 = v4;
  v17 = v3;
  v18 = xmmword_21A4562A0;
  v19 = 0;
  v20 = 0;
  sub_21A3D3BF0(&v14, &qword_27CD28628, &unk_21A458B90);
  v14 = v1;
  v15 = 5;
  v16 = v4;
  v17 = v3;
  *&v18 = v1;
  *(&v18 + 1) = 5;
  v19 = v4;
  v20 = v3;
  sub_21A3D3BF0(&v14, &qword_27CD28628, &unk_21A458B90);
  v5 = 2;
LABEL_9:
  v6 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v7 = sub_21A451054();

  v8 = [v6 initWithContainerIdentifier:v7 environment:v5];

  return v8;
}

uint64_t sub_21A3ECFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21A3ED284(0, &qword_27CD285C0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285C8, &unk_21A4564D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21A455F00;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21A3ED230();
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A455F00;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
  *(v12 + 104) = sub_21A3ED3F0();
  *(v12 + 72) = v13;

  return sub_21A451534();
}

unint64_t sub_21A3ED0FC()
{
  result = qword_27CD285A0;
  if (!qword_27CD285A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD285A0);
  }

  return result;
}

uint64_t sub_21A3ED168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A3ED1C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A3ED230()
{
  result = qword_27CD285D0;
  if (!qword_27CD285D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD285D0);
  }

  return result;
}

uint64_t sub_21A3ED284(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_21A3ED2CC()
{
  result = qword_27CD285E8;
  if (!qword_27CD285E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD285E8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21A3ED340(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_21A3ED388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A3ED3F0()
{
  result = qword_27CD28610;
  if (!qword_27CD28610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284A0, &qword_21A4560F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28610);
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

void sub_21A3ED49C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 6)
  {
  }
}

void sub_21A3ED4E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 6)
  {
  }
}

uint64_t sub_21A3ED538(void (*a1)(unint64_t *__return_ptr, void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v8 = sub_21A3F6A64(a3, a4);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v58 = MEMORY[0x277D84F90];
    sub_21A3E495C(0, v8 & ~(v8 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v53 = v58;
      v11 = (v7 >> 59) & 1;
      if ((a4 & 0x1000000000000000) == 0)
      {
        LOBYTE(v11) = 1;
      }

      v12 = 4 << v11;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(a4) & 0xF;
      }

      else
      {
        v13 = v7 & 0xFFFFFFFFFFFFLL;
      }

      v14 = 15;
      v47 = v8;
      while (!__OFADD__(v10, 1))
      {
        v15 = v14 & 0xC;
        v16 = (v14 & 1) == 0 || v15 == v12;
        v17 = v16;
        v52 = v17;
        if (v16)
        {
          v18 = v14;
          if (v15 == v12)
          {
            v44 = v14;
            v18 = sub_21A424280(v14, v7, a4);
            v14 = v44;
          }

          v19 = v18 >> 16;
          if (v18 >> 16 >= v13)
          {
            goto LABEL_62;
          }

          if ((v18 & 1) == 0)
          {
            v20 = v14;
            v21 = sub_21A3F6CA0(v18, v7, a4);
            v14 = v20;
            v19 = v21 >> 16;
          }
        }

        else
        {
          v19 = v14 >> 16;
          if (v14 >> 16 >= v13)
          {
            goto LABEL_63;
          }
        }

        v51 = v14;
        v49 = v15;
        if ((a4 & 0x1000000000000000) != 0)
        {
          v24 = sub_21A451744();
        }

        else
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v55[0] = v7;
            v55[1] = a4 & 0xFFFFFFFFFFFFFFLL;
            v23 = v55 + v19;
          }

          else
          {
            v22 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v7 & 0x1000000000000000) == 0)
            {
              v22 = sub_21A4517E4();
            }

            v23 = (v22 + v19);
          }

          v24 = *v23;
          if (*v23 < 0)
          {
            v43 = (__clz(v24 ^ 0xFF) - 24);
            if (v43 > 2)
            {
              if (v43 == 3)
              {
                v24 = ((v24 & 0xF) << 12) | ((v23[1] & 0x3F) << 6) | v23[2] & 0x3F;
              }

              else
              {
                v24 = ((v24 & 0xF) << 18) | ((v23[1] & 0x3F) << 12) | ((v23[2] & 0x3F) << 6) | v23[3] & 0x3F;
              }
            }

            else if (v43 != 1)
            {
              v24 = v23[1] & 0x3F | ((v24 & 0x1F) << 6);
            }
          }
        }

        v50 = v10 + 1;
        v25 = v7;
        LODWORD(v55[0]) = v24;
        a1(&v56, v55);
        if (v5)
        {
          goto LABEL_67;
        }

        v5 = 0;
        v26 = v56;
        v27 = v57;
        v28 = v53;
        v58 = v53;
        v30 = *(v53 + 16);
        v29 = *(v53 + 24);
        if (v30 >= v29 >> 1)
        {
          v54 = v56;
          v46 = v57;
          sub_21A3E495C((v29 > 1), v30 + 1, 1);
          v27 = v46;
          v26 = v54;
          v28 = v58;
        }

        *(v28 + 16) = v30 + 1;
        v31 = v28 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v27;
        if (v52)
        {
          v7 = v25;
          v32 = v51;
          if (v49 == v12)
          {
            v45 = v28;
            v32 = sub_21A424280(v51, v25, a4);
            v28 = v45;
          }

          v33 = v47;
          if (v13 <= v32 >> 16)
          {
            goto LABEL_64;
          }

          if ((v32 & 1) == 0)
          {
            v34 = v25;
            v35 = v28;
            v36 = v32;
            v37 = sub_21A3F6CA0(v32, v34, a4);
            v28 = v35;
            v32 = v36 & 0xC | v37 & 0xFFFFFFFFFFFFFFF3 | 1;
          }
        }

        else
        {
          v32 = v51;
          v7 = v25;
          v33 = v47;
          if (v13 <= v51 >> 16)
          {
            goto LABEL_65;
          }
        }

        v53 = v28;
        if ((a4 & 0x1000000000000000) != 0)
        {
          v14 = sub_21A451104();
        }

        else
        {
          v38 = v32 >> 16;
          if ((a4 & 0x2000000000000000) != 0)
          {
            v56 = v7;
            v57 = a4 & 0xFFFFFFFFFFFFFFLL;
            v40 = *(&v56 + v38);
          }

          else
          {
            v39 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v7 & 0x1000000000000000) == 0)
            {
              v39 = sub_21A4517E4();
            }

            v40 = *(v39 + v38);
          }

          v41 = v40;
          v42 = __clz(v40 ^ 0xFF) - 24;
          if (v41 >= 0)
          {
            LOBYTE(v42) = 1;
          }

          v14 = ((v38 + v42) << 16) | 5;
        }

        ++v10;
        if (v50 == v33)
        {
          return v53;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
    }

    __break(1u);
LABEL_67:

    __break(1u);
  }

  return result;
}

uint64_t PFLPluginError.rawValue.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PFLPluginError.__allocating_init(rawValue:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PFLPluginError.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PFLPluginError.__allocating_init(error:)(void *a1)
{
  v2 = sub_21A3F73FC(a1);

  return v2;
}

uint64_t PFLPluginError.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21A3EDA44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for PFLPluginError();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_21A3EDA88@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

BOOL sub_21A3EDB34(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_21A3EDB64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_21A3EDB90@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_21A3EDC68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21A3EDC98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A3EC5D4;

  return PFLTaskRunner.resolveTask(for:taskPreferences:)(a1);
}

uint64_t sub_21A3EDD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3EC5D4;

  return PFLTaskRunner.ensureDataAvailability(taskPreferences:)(a1, a2, a3);
}

uint64_t PFLTaskRunner.ensureDataAvailability(taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A3EDF40;

  return v9(a1, a2, a3);
}

uint64_t sub_21A3EDF40(char a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_21A3EE040, 0, 0);
}

uint64_t sub_21A3EE040()
{
  if (*(v0 + 24) != 1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3EE178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_21A3EE210(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_21A3F74C8(v2, v3);
  return sub_21A3ECC34(v5, v6);
}

uint64_t sub_21A3EE280()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_21A3F74C8(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_21A3EE2D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
}

uint64_t sub_21A3EE368(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t PFLTaskResult.__allocating_init(json:vector:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 24) = xmmword_21A456520;
  *(v6 + 40) = sub_21A3E4F6C(MEMORY[0x277D84F90]);
  *(v6 + 16) = a1;
  swift_beginAccess();
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  sub_21A3F74C8(a2, a3);
  sub_21A3ECC34(v7, v8);
  sub_21A3ECC34(a2, a3);
  return v6;
}

void *PFLTaskResult.init(json:vector:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(v3 + 3) = xmmword_21A456520;
  v3[5] = sub_21A3E4F6C(MEMORY[0x277D84F90]);
  v3[2] = a1;
  swift_beginAccess();
  v7 = v3[3];
  v8 = v3[4];
  v3[3] = a2;
  v3[4] = a3;
  sub_21A3F74C8(a2, a3);
  sub_21A3ECC34(v7, v8);
  sub_21A3ECC34(a2, a3);
  return v3;
}

uint64_t sub_21A3EE578(char *a1, unint64_t a2)
{
  v80 = a1;
  v81 = a2;
  v85 = sub_21A450AB4();
  v2 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21A450BE4();
  v82 = *(v86 - 8);
  v5 = MEMORY[0x28223BE20](v86);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v69 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v69 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v69 - v12;
  MEMORY[0x28223BE20](v11);
  v92 = &v69 - v14;
  v15 = sub_21A4509C4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v69 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v69 - v23;
  sub_21A450994();
  sub_21A450984();
  sub_21A4509A4();
  v25 = *(v16 + 8);
  v25(v19, v15);
  v25(v22, v15);
  v88 = v24;
  v26 = v84;
  v27 = sub_21A3ED538(sub_21A3F9318, v87, v80, v81);
  v84 = v26;
  v90 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD286A0, &qword_21A456A28);
  sub_21A3F9338();
  v28 = sub_21A451264();
  v30 = v29;
  v25(v24, v15);
  sub_21A450B24();
  v90 = v28;
  v91 = v30;
  v31 = *MEMORY[0x277CC91C0];
  v32 = v85;
  v79 = *(v2 + 104);
  v76 = v2 + 104;
  v79(v4, v31, v85);
  v78 = sub_21A3ED2CC();
  sub_21A450BC4();
  v33 = *(v2 + 8);
  v80 = v4;
  v81 = v2 + 8;
  v77 = v33;
  v33(v4, v32);
  v34 = v82[1];
  v34(v13, v86);

  v35 = [objc_opt_self() defaultManager];
  sub_21A450B84();
  v36 = sub_21A451054();

  LOBYTE(v28) = [v35 fileExistsAtPath_];

  if ((v28 & 1) == 0)
  {
    v37 = v84;
    sub_21A3EEE34();
    if (v37)
    {
      sub_21A3EEF24(v37, v92, "Failed to create folder at %s, error: %@");
      swift_willThrow();
      v38 = v86;
      return (v34)(v92, v38);
    }

    v84 = 0;
  }

  v39 = v83;
  swift_beginAccess();
  v40 = *(v39 + 32);
  v41 = *MEMORY[0x277CC91D0];
  v42 = v85;
  if (v40 >> 60 == 15)
  {
    v43 = v79;
    v44 = v80;
    v45 = v77;
  }

  else
  {
    v72 = v34;
    v46 = *(v39 + 24);
    strcpy(v89, "results.bin");
    HIDWORD(v89[1]) = -352321536;
    v47 = v80;
    v48 = v41;
    (v79)(v80);
    sub_21A3E700C(v46, v40);
    v49 = v74;
    sub_21A450BC4();
    v50 = v47;
    v45 = v77;
    v77(v50, v42);
    v51 = v84;
    sub_21A450C74();
    if (v51)
    {
      sub_21A3EEF24(v51, v49, "Failed to store PFL result (gradients) at %s, error: %@");
      swift_willThrow();
      sub_21A3ECC34(v46, v40);
      v52 = v49;
      v38 = v86;
      v34 = v72;
      v72(v52, v86);
      return (v34)(v92, v38);
    }

    v69 = v46;
    v70 = v40;
    v71 = v48;
    v84 = 0;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v53 = sub_21A450F24();
    __swift_project_value_buffer(v53, qword_27CD28C90);
    v54 = v73;
    v55 = v86;
    (v82[2])(v73, v49, v86);
    v56 = sub_21A450F04();
    v57 = sub_21A451574();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v54;
      v59 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v89[0] = v82;
      *v59 = 136315138;
      v60 = sub_21A450B84();
      v62 = v61;
      v63 = v58;
      v64 = v72;
      v72(v63, v86);
      v73 = sub_21A3E2554(v60, v62, v89);
      v45 = v77;
      v55 = v86;

      *(v59 + 4) = v73;
      _os_log_impl(&dword_21A3C2000, v56, v57, "PFL result (gradients) stored at %s", v59, 0xCu);
      v65 = v82;
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x21CEDB220](v65, -1, -1);
      MEMORY[0x21CEDB220](v59, -1, -1);
    }

    else
    {

      v64 = v72;
      v72(v54, v55);
    }

    sub_21A3ECC34(v69, v70);
    v64(v49, v55);
    v42 = v85;
    v43 = v79;
    v44 = v80;
    v34 = v64;
    v41 = v71;
  }

  strcpy(v89, "metrics.json");
  BYTE5(v89[1]) = 0;
  HIWORD(v89[1]) = -5120;
  v43(v44, v41, v42);
  v66 = v75;
  sub_21A450BC4();
  v45(v44, v42);
  v67 = v84;
  sub_21A3EF1CC(v83, v66);
  if (v67)
  {
    sub_21A3EEF24(v67, v66, "Failed to store PFL metrics at %s, error: %@");
    swift_willThrow();
  }

  v38 = v86;
  v34(v66, v86);
  return (v34)(v92, v38);
}

id sub_21A3EEE34()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_21A450B34();
  v5[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_21A450A84();

  return swift_willThrow();
}

void sub_21A3EEF24(void *a1, uint64_t a2, const char *a3, ...)
{
  v6 = sub_21A450BE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v10 = sub_21A450F24();
  __swift_project_value_buffer(v10, qword_27CD28C90);
  (*(v7 + 16))(v9, a2, v6);
  v11 = a1;
  v12 = sub_21A450F04();
  v13 = sub_21A451584();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315394;
    v16 = sub_21A450B84();
    v24 = a3;
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    v19 = sub_21A3E2554(v16, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = a1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_21A3C2000, v12, v13, v24, v14, 0x16u);
    sub_21A3D3BF0(v15, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v15, -1, -1);
    v22 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x21CEDB220](v22, -1, -1);
    MEMORY[0x21CEDB220](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

void sub_21A3EF1CC(uint64_t a1, uint64_t a2)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = sub_21A450BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  swift_beginAccess();

  v9 = sub_21A450F54();

  v28[0] = 0;
  v10 = [v8 dataWithJSONObject:v9 options:1 error:v28];

  v11 = v28[0];
  if (v10)
  {
    v12 = sub_21A450C64();
    v14 = v13;

    sub_21A450C74();
    if (v2)
    {
      sub_21A3E759C(v12, v14);
    }

    else
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v16 = sub_21A450F24();
      __swift_project_value_buffer(v16, qword_27CD28C90);
      (*(v5 + 16))(v7, a2, v4);
      v17 = sub_21A450F04();
      v18 = sub_21A451574();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28[0] = v27;
        *v19 = 136315138;
        v26 = v17;
        v25 = sub_21A450B84();
        v21 = v20;
        (*(v5 + 8))(v7, v4);
        v22 = sub_21A3E2554(v25, v21, v28);

        *(v19 + 4) = v22;
        v23 = v26;
        _os_log_impl(&dword_21A3C2000, v26, v18, "PFL metrics stored at %s", v19, 0xCu);
        v24 = v27;
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x21CEDB220](v24, -1, -1);
        MEMORY[0x21CEDB220](v19, -1, -1);
        sub_21A3E759C(v12, v14);
      }

      else
      {
        sub_21A3E759C(v12, v14);

        (*(v5 + 8))(v7, v4);
      }
    }
  }

  else
  {
    v15 = v11;
    sub_21A450A84();

    swift_willThrow();
  }
}

void *PFLTaskResult.deinit()
{

  sub_21A3ECC34(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t PFLTaskResult.__deallocating_deinit()
{

  sub_21A3ECC34(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_21A3EF5CC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_21A3EF604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_21A3EF62C, 0, 0);
}

uint64_t sub_21A3EF62C()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v9 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_21A3EF760;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_21A3EF760()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A3EF854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  return (*(v8 + 64))(a1, a2, a3, v7, v8);
}

__n128 PFLPlugin.__allocating_init(plugin:useCase:consent:taskSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = *a5;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = v13;
  result = *a6;
  v15 = *(a6 + 16);
  *(v12 + 56) = *a6;
  *(v12 + 72) = v15;
  return result;
}

uint64_t PFLPlugin.init(plugin:useCase:consent:taskSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _OWORD *a6)
{
  v7 = a6[1];
  *(v6 + 56) = *a6;
  v8 = *a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = v8;
  *(v6 + 72) = v7;
  return v6;
}

uint64_t sub_21A3EF980(uint64_t a1, uint64_t a2)
{
  v3[112] = v2;
  v3[111] = a2;
  v3[110] = a1;
  v3[113] = type metadata accessor for PFLTaskPreferences(0);
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3EFA28, 0, 0);
}

uint64_t sub_21A3EFA28()
{
  v25 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  *(v0 + 928) = sub_21A3F74DC();
  *(v0 + 936) = v4;
  v5 = v3[8];
  v6 = v3[9];
  v7 = v3[10];
  v21 = v3[7];
  v22 = v5;
  v23 = v6;
  v24 = v7;
  sub_21A3ED4E4(v21, v5, v6, v7);
  sub_21A450EF4();
  static PFLTaskPreferences.loadTaskPreferences(preferredTaskSource:from:)(&v21, v8, v1);

  sub_21A3ED49C(v21, v22, v23, v24);
  v9 = *(v2 + 20);
  *(v0 + 1280) = v9;
  v10 = type metadata accessor for PFLDecodableTaskParameters(0);
  *(v0 + 944) = v10;
  v11 = (v1 + *(v10 + 48) + v9);
  v12 = *(v0 + 896);
  if (v11[1])
  {
    v13 = *v11;
    v14 = v11[1];
    v16 = v12[2];
    v15 = v12[3];
  }

  else
  {
    v16 = v12[2];
    v15 = v12[3];

    v13 = v16;
    v14 = v15;
  }

  *(v0 + 976) = v14;
  *(v0 + 968) = v13;
  *(v0 + 960) = v16;
  *(v0 + 952) = v15;
  *(v0 + 984) = v12[4];
  *(v0 + 992) = v12[5];

  v17 = swift_task_alloc();
  *(v0 + 1000) = v17;
  *v17 = v0;
  v17[1] = sub_21A3EFBD4;
  v18 = *(v0 + 920);
  v19 = *(v0 + 888);

  return sub_21A3F2E8C(v18, v13, v14, v19);
}

uint64_t sub_21A3EFBD4()
{
  *(*v1 + 1008) = v0;

  if (v0)
  {

    v2 = sub_21A3F01D4;
  }

  else
  {
    v2 = sub_21A3EFCF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A3EFCF0()
{
  v1 = *(v0 + 119);
  *(v0 + 97) = *(v0 + 120);
  *(v0 + 98) = v1;
  *(v0 + 91) = 46;
  v2 = 0xE100000000000000;
  *(v0 + 92) = 0xE100000000000000;
  *(v0 + 127) = sub_21A3ED2CC();
  v3 = sub_21A451644();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 16 + 16 * v4);
    v6 = *v5;
    v2 = v5[1];
  }

  else
  {
    v6 = 85;
  }

  v7 = *(v0 + 124);
  v8 = *(v0 + 123);

  if (v8 == v6 && v7 == v2 || (sub_21A4519B4() & 1) != 0)
  {
  }

  v26 = *(v0 + 114);
  v27 = *(v0 + 115);
  v25 = *(v0 + 112);
  v28 = *(v0 + 111);
  *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21A456280;
  *(v9 + 32) = 0x6E6967756C70;
  *(v9 + 40) = 0xE600000000000000;
  v10 = sub_21A451054();

  *(v9 + 48) = v10;
  *(v9 + 56) = 0x64496B736174;
  *(v9 + 64) = 0xE600000000000000;
  *(v9 + 72) = sub_21A451054();
  *(v9 + 80) = 0x6E6F697461636F6CLL;
  *(v9 + 88) = 0xE800000000000000;
  *(v9 + 96) = sub_21A451054();
  *(v9 + 104) = 0x65736143657375;
  *(v9 + 112) = 0xE700000000000000;
  v11 = sub_21A451054();

  *(v9 + 120) = v11;
  *(v9 + 128) = 0x646F43726F727265;
  *(v9 + 136) = 0xE900000000000065;
  *(v9 + 144) = sub_21A4514E4();
  *(v9 + 152) = 0x6D6F44726F727265;
  *(v9 + 160) = 0xEB000000006E6961;
  *(v9 + 168) = sub_21A451054();
  v12 = sub_21A3E57A0(v9);
  swift_setDeallocating();
  *(v0 + 129) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_21A451054();
  *(v0 + 62) = sub_21A3ED530;
  *(v0 + 63) = v13;
  *(v0 + 58) = MEMORY[0x277D85DD0];
  *(v0 + 59) = 1107296256;
  *(v0 + 60) = sub_21A432B2C;
  *(v0 + 61) = &block_descriptor_10;
  v15 = _Block_copy(v0 + 29);

  AnalyticsSendEventLazy();

  _Block_release(v15);

  v17 = v25[2];
  v16 = v25[3];
  v18 = v25[4];
  v19 = v25[5];
  sub_21A3F924C(v27, v26, type metadata accessor for PFLTaskPreferences);
  v20 = (v25[6] & 0x10) == 0;
  sub_21A3F939C(v28, (v0 + 32));
  type metadata accessor for PFLPluginTaskDiscoveryPolicy();
  v21 = swift_allocObject();
  sub_21A3C50DC(v0 + 32, v21 + 16);

  v22 = sub_21A3F6EC0(v17, v16, v18, v19, v26, v20, v21);
  *(v0 + 107) = MEMORY[0x277D84F90];
  *(v0 + 131) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policyDownloadTimeSeconds;
  *(v0 + 132) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds;
  *(v0 + 130) = v22;
  *(v0 + 133) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries;
  *(v0 + 134) = 0;

  v23 = swift_task_alloc();
  *(v0 + 135) = v23;
  *v23 = v0;
  v23[1] = sub_21A3F0854;

  return sub_21A427C24();
}

uint64_t sub_21A3F01D4()
{
  v1 = v0[126];
  v2 = sub_21A450A74();
  [v2 code];

  v0[109] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 69);
  }

  else
  {
    v4 = sub_21A450A74();
    v5 = [v4 domain];

    sub_21A451084();
  }

  v6 = v0[119];
  v0[105] = v0[120];
  v0[106] = v6;
  v0[103] = 46;
  v7 = 0xE100000000000000;
  v0[104] = 0xE100000000000000;
  sub_21A3ED2CC();
  v8 = sub_21A451644();

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 16 + 16 * v9);
    v11 = *v10;
    v7 = v10[1];
  }

  else
  {
    v11 = 85;
  }

  v12 = v0[124];
  v13 = v0[123];

  if (v13 == v11 && v12 == v7 || (sub_21A4519B4() & 1) != 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v15 = sub_21A451054();

  *(inited + 48) = v15;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  v16 = sub_21A451054();

  *(inited + 72) = v16;
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v17 = sub_21A451054();

  *(inited + 120) = v17;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v18 = sub_21A451054();

  *(inited + 168) = v18;
  v19 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = sub_21A451054();
  v0[50] = sub_21A3ED320;
  v0[51] = v20;
  v0[46] = MEMORY[0x277D85DD0];
  v0[47] = 1107296256;
  v0[48] = sub_21A432B2C;
  v0[49] = &block_descriptor_0;
  v22 = _Block_copy(v0 + 46);

  AnalyticsSendEventLazy();

  _Block_release(v22);

  swift_willThrow();
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v23 = v0[126];
  v24 = sub_21A450F24();
  __swift_project_value_buffer(v24, qword_27CD28C90);
  v25 = v23;
  v26 = sub_21A450F04();
  v27 = sub_21A451584();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v0[126];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = v28;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_21A3C2000, v26, v27, "PreflightCheck failed with error %@", v29, 0xCu);
    sub_21A3D3BF0(v30, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v30, -1, -1);
    MEMORY[0x21CEDB220](v29, -1, -1);
  }

  v33 = v0[126];

  v34 = v33;
  v35 = sub_21A3F73FC(v33);

  v36 = v0[126];
  v37 = v0[115];
  if (v35)
  {
    type metadata accessor for PFLPluginError();
    sub_21A3F9400(&qword_27CD28630, v38, type metadata accessor for PFLPluginError, &protocol conformance descriptor for PFLPluginError);
    v39 = objc_allocWithZone(sub_21A450EE4());
    v40 = sub_21A450EC4();
  }

  else
  {
    v41 = objc_allocWithZone(sub_21A450EE4());
    v40 = sub_21A450ED4();
  }

  v42 = v40;

  sub_21A3D843C(v37);
  sub_21A4356CC();

  v43 = v0[1];

  return v43(v42);
}

uint64_t sub_21A3F0854(uint64_t a1)
{
  *(*v1 + 1088) = a1;

  return MEMORY[0x2822009F8](sub_21A3F0954, 0, 0);
}

uint64_t sub_21A3F0954()
{
  v1 = v0[136];
  v2 = v0[134];
  if (v1)
  {
    v0[137] = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else if (qword_27CD28170 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
LABEL_4:
    v3 = sub_21A450F24();
    v0[138] = __swift_project_value_buffer(v3, qword_27CD28C90);

    v4 = sub_21A450F04();
    v5 = sub_21A451574();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v40 = v7;
      *v6 = 136315138;
      swift_beginAccess();
      v8 = *(v1 + 16);
      v9 = *(v1 + 24);

      v10 = sub_21A3E2554(v8, v9, &v40);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_21A3C2000, v4, v5, "Start running plugin for recipe %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x21CEDB220](v7, -1, -1);
      MEMORY[0x21CEDB220](v6, -1, -1);
    }

    v11 = v0[112];
    v12 = v0[111];
    v13 = v0[110];
    v0[139] = *(v11 + 24);
    swift_beginAccess();
    v0[140] = *(v1 + 24);
    v0[141] = *(v11 + 40);
    v14 = swift_task_alloc();
    v0[142] = v14;
    v14[2] = v12;
    v14[3] = v1;
    v14[4] = v11;
    v14[5] = v13;

    v15 = swift_task_alloc();
    v0[143] = v15;
    *v15 = v0;
    v15[1] = sub_21A3F0F98;

    JUMPOUT(0x21A3F7634);
  }

  if (v2)
  {

    v40 = v0[107];
    sub_21A3F6630();
    v16 = v40;
    if (v40[2])
    {
      v17 = v40[4];
      v0[155] = v17;
      v18 = *(v16 + 40);
      v0[156] = v18;
      v19 = v17;

      v20 = swift_task_alloc();
      v0[157] = v20;
      *v20 = v0;
      v20[1] = sub_21A3F2414;
      v21 = v0[122];
      v22 = v0[121];

      return sub_21A3F3F44(v17, v18, v22, v21);
    }

    else
    {
      v34 = v0[115];

      v35 = objc_allocWithZone(sub_21A450EE4());
      v36 = sub_21A450ED4();

      sub_21A3D843C(v34);
      sub_21A4356CC();

      v37 = v0[1];

      return v37(v36);
    }
  }

  else
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v24 = sub_21A450F24();
    __swift_project_value_buffer(v24, qword_27CD28C90);
    v25 = sub_21A450F04();
    v26 = sub_21A451574();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21A3C2000, v25, v26, "No tasks available for processing.", v27, 2u);
      MEMORY[0x21CEDB220](v27, -1, -1);
    }

    v28 = v0[112];
    v29 = v0[111];

    v0[149] = v28[2];
    v0[150] = v28[3];
    v0[151] = v28[4];
    v0[152] = v28[5];

    v30 = v29[3];
    v31 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v38 = (*(v31 + 80) + **(v31 + 80));
    v32 = swift_task_alloc();
    v0[153] = v32;
    *v32 = v0;
    v32[1] = sub_21A3F1884;
    v33 = v0[115];

    return v38(v33, v30, v31);
  }
}

uint64_t sub_21A3F0F98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1152) = a1;
  *(v3 + 1160) = v1;

  if (v1)
  {
    v4 = sub_21A3F148C;
  }

  else
  {

    v4 = sub_21A3F10E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21A3F10E4()
{
  v29 = v0;
  v1 = v0[144];
  swift_beginAccess();
  if (*(v1 + 32) >> 60 == 15 && (v2 = v0[144], swift_beginAccess(), !*(*(v2 + 16) + 16)))
  {

    v16 = sub_21A450F04();
    v17 = sub_21A451574();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[136];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);

      v23 = sub_21A3E2554(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_21A3C2000, v16, v17, "Empty result for recipe %s, skip donating.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x21CEDB220](v20, -1, -1);
      MEMORY[0x21CEDB220](v19, -1, -1);
    }

    v24 = v0[115];
    v25 = objc_allocWithZone(sub_21A450EE4());
    v26 = sub_21A450ED4();

    sub_21A3D843C(v24);
    sub_21A4356CC();

    v27 = v0[1];

    return v27(v26);
  }

  else
  {
    v3 = v0[136];
    v4 = v0[132];
    v5 = v0[131];
    v6 = v0[130];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A455F00;
    strcpy((inited + 32), "PolicyDownload");
    *(inited + 47) = -18;
    v8 = MEMORY[0x277D839F8];
    *(inited + 48) = *(v6 + v5);
    *(inited + 72) = v8;
    strcpy((inited + 80), "TaskDownload");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    v9 = *(v6 + v4);
    *(inited + 120) = v8;
    *(inited + 96) = v9;
    v10 = sub_21A3E4F6C(inited);
    v0[146] = v10;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
    swift_arrayDestroy();
    v11 = swift_task_alloc();
    v0[147] = v11;
    *v11 = v0;
    v11[1] = sub_21A3F15E8;
    v12 = v0[144];
    v13 = v0[122];
    v14 = v0[121];

    return sub_21A3F34D8(v12, v3, v14, v13, v10);
  }
}

uint64_t sub_21A3F148C()
{

  v1 = *(v0 + 1160);
  *(v0 + 1264) = v1;
  v2 = *(v0 + 1088);
  v3 = *(v0 + 896);
  v4 = *(v0 + 888);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v6 + 72);

  v10 = v9(v2, v7, v8, v5, v6) & 1;
  *(v0 + 1284) = v10;

  v11 = swift_task_alloc();
  *(v0 + 1272) = v11;
  *v11 = v0;
  v11[1] = sub_21A3F26B4;
  v12 = *(v0 + 976);
  v13 = *(v0 + 968);

  return sub_21A3F4984(v1, v2, v13, v12, v10, v0 + 856);
}

uint64_t sub_21A3F15E8()
{
  *(*v1 + 1184) = v0;

  if (v0)
  {

    v2 = sub_21A3F2A14;
  }

  else
  {

    v2 = sub_21A3F1740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A3F1740()
{
  v1 = *(v0 + 920);
  if (*(v1 + *(*(v0 + 904) + 24)) == 1 && *(v1 + *(v0 + 1280) + *(*(v0 + 944) + 40)) == 1)
  {
    v2 = *(v0 + 1184);
    v3 = *(v0 + 1088);
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);

    sub_21A3EE578(v5, v4);
    if (v2)
    {
    }

    v1 = *(v0 + 920);
  }

  v6 = objc_allocWithZone(sub_21A450EE4());
  v7 = sub_21A450ED4();

  sub_21A3D843C(v1);
  sub_21A4356CC();

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_21A3F1884()
{
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v2 = sub_21A3F1E60;
  }

  else
  {
    v2 = sub_21A3F1998;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A3F1998()
{
  v1 = v0[150];
  v0[99] = v0[149];
  v0[100] = v1;
  v0[101] = 46;
  v2 = 0xE100000000000000;
  v0[102] = 0xE100000000000000;
  v3 = sub_21A451644();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 16 + 16 * v4);
    v6 = *v5;
    v2 = v5[1];
  }

  else
  {
    v6 = 85;
  }

  v7 = v0[152];
  v8 = v0[151];

  if (v8 == v6 && v7 == v2 || (sub_21A4519B4() & 1) != 0)
  {
  }

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21A456280;
  *(v9 + 32) = 0x6E6967756C70;
  *(v9 + 40) = 0xE600000000000000;
  v10 = sub_21A451054();

  *(v9 + 48) = v10;
  *(v9 + 56) = 0x64496B736174;
  *(v9 + 64) = 0xE600000000000000;
  v11 = sub_21A451054();

  *(v9 + 72) = v11;
  *(v9 + 80) = 0x6E6F697461636F6CLL;
  *(v9 + 88) = 0xE800000000000000;
  *(v9 + 96) = sub_21A451054();
  *(v9 + 104) = 0x65736143657375;
  *(v9 + 112) = 0xE700000000000000;
  v12 = sub_21A451054();

  *(v9 + 120) = v12;
  *(v9 + 128) = 0x646F43726F727265;
  *(v9 + 136) = 0xE900000000000065;
  *(v9 + 144) = sub_21A4514E4();
  *(v9 + 152) = 0x6D6F44726F727265;
  *(v9 + 160) = 0xEB000000006E6961;
  *(v9 + 168) = sub_21A451054();
  v13 = sub_21A3E57A0(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = sub_21A451054();
  v0[44] = sub_21A3ED530;
  v0[45] = v14;
  v0[40] = MEMORY[0x277D85DD0];
  v0[41] = 1107296256;
  v0[42] = sub_21A432B2C;
  v0[43] = &block_descriptor_27;
  v16 = _Block_copy(v0 + 40);

  AnalyticsSendEventLazy();

  _Block_release(v16);

  v28 = v0[107];
  sub_21A3F6630();
  if (v28[2])
  {
    v17 = v28[4];
    v0[155] = v17;
    v18 = v28[5];
    v0[156] = v18;
    v19 = v17;

    v20 = swift_task_alloc();
    v0[157] = v20;
    *v20 = v0;
    v20[1] = sub_21A3F2414;
    v21 = v0[122];
    v22 = v0[121];

    return sub_21A3F3F44(v17, v18, v22, v21);
  }

  else
  {
    v24 = v0[115];

    v25 = objc_allocWithZone(sub_21A450EE4());
    v26 = sub_21A450ED4();

    sub_21A3D843C(v24);
    sub_21A4356CC();

    v27 = v0[1];

    return v27(v26);
  }
}

uint64_t sub_21A3F1E60()
{
  v1 = v0[154];
  v2 = sub_21A450A74();
  [v2 code];

  v0[108] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 74);
  }

  else
  {
    v4 = sub_21A450A74();
    v5 = [v4 domain];

    sub_21A451084();
  }

  v6 = v0[150];
  v0[93] = v0[149];
  v0[94] = v6;
  v0[95] = 46;
  v7 = 0xE100000000000000;
  v0[96] = 0xE100000000000000;
  v8 = sub_21A451644();

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 16 + 16 * v9);
    v11 = *v10;
    v7 = v10[1];
  }

  else
  {
    v11 = 85;
  }

  v12 = v0[152];
  v13 = v0[151];

  if (v13 == v11 && v12 == v7 || (sub_21A4519B4() & 1) != 0)
  {
  }

  v34 = v0[154];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21A456280;
  *(v14 + 32) = 0x6E6967756C70;
  *(v14 + 40) = 0xE600000000000000;
  v15 = sub_21A451054();

  *(v14 + 48) = v15;
  *(v14 + 56) = 0x64496B736174;
  *(v14 + 64) = 0xE600000000000000;
  v16 = sub_21A451054();

  *(v14 + 72) = v16;
  *(v14 + 80) = 0x6E6F697461636F6CLL;
  *(v14 + 88) = 0xE800000000000000;
  *(v14 + 96) = sub_21A451054();
  *(v14 + 104) = 0x65736143657375;
  *(v14 + 112) = 0xE700000000000000;
  v17 = sub_21A451054();

  *(v14 + 120) = v17;
  *(v14 + 128) = 0x646F43726F727265;
  *(v14 + 136) = 0xE900000000000065;
  *(v14 + 144) = sub_21A4514E4();
  *(v14 + 152) = 0x6D6F44726F727265;
  *(v14 + 160) = 0xEB000000006E6961;
  v18 = sub_21A451054();

  *(v14 + 168) = v18;
  v19 = sub_21A3E57A0(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = sub_21A451054();
  v0[56] = sub_21A3ED530;
  v0[57] = v20;
  v0[52] = MEMORY[0x277D85DD0];
  v0[53] = 1107296256;
  v0[54] = sub_21A432B2C;
  v0[55] = &block_descriptor_20;
  v22 = _Block_copy(v0 + 52);

  AnalyticsSendEventLazy();

  _Block_release(v22);

  swift_willThrow();

  v35 = v0[107];
  sub_21A3F6630();
  if (v35[2])
  {
    v23 = v35[4];
    v0[155] = v23;
    v24 = v35[5];
    v0[156] = v24;
    v25 = v23;

    v26 = swift_task_alloc();
    v0[157] = v26;
    *v26 = v0;
    v26[1] = sub_21A3F2414;
    v27 = v0[122];
    v28 = v0[121];

    return sub_21A3F3F44(v23, v24, v28, v27);
  }

  else
  {
    v30 = v0[115];

    v31 = objc_allocWithZone(sub_21A450EE4());
    v32 = sub_21A450ED4();

    sub_21A3D843C(v30);
    sub_21A4356CC();

    v33 = v0[1];

    return v33(v32);
  }
}

uint64_t sub_21A3F2414()
{

  return MEMORY[0x2822009F8](sub_21A3F252C, 0, 0);
}

uint64_t sub_21A3F252C()
{
  v1 = v0[155];
  v2 = v1;
  v3 = sub_21A3F73FC(v1);

  v4 = v0[155];
  v5 = v0[115];
  if (v3)
  {
    type metadata accessor for PFLPluginError();
    sub_21A3F9400(&qword_27CD28630, v6, type metadata accessor for PFLPluginError, &protocol conformance descriptor for PFLPluginError);
    v7 = objc_allocWithZone(sub_21A450EE4());

    v8 = sub_21A450EC4();
  }

  else
  {
    v9 = objc_allocWithZone(sub_21A450EE4());
    v8 = sub_21A450ED4();
  }

  sub_21A3D843C(v5);
  sub_21A4356CC();

  v10 = v0[1];

  return v10(v8);
}

uint64_t sub_21A3F26B4()
{

  return MEMORY[0x2822009F8](sub_21A3F27B0, 0, 0);
}

void sub_21A3F27B0()
{
  v1 = *(v0 + 1264);
  if (*(v0 + 1284) == 1)
  {
    v2 = *(v0 + 1064);
    v3 = *(v0 + 1040);

    v4 = *(v3 + v2);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(*(v0 + 1040) + *(v0 + 1064)) = v6;
      *(v0 + 1072) = *(v0 + 1096);
      v7 = swift_task_alloc();
      *(v0 + 1080) = v7;
      *v7 = v0;
      v7[1] = sub_21A3F0854;

      sub_21A427C24();
    }
  }

  else
  {

    v8 = v1;
    v9 = sub_21A3F73FC(v1);

    v10 = *(v0 + 1264);
    v11 = *(v0 + 920);
    if (v9)
    {
      type metadata accessor for PFLPluginError();
      sub_21A3F9400(&qword_27CD28630, v12, type metadata accessor for PFLPluginError, &protocol conformance descriptor for PFLPluginError);
      v13 = objc_allocWithZone(sub_21A450EE4());

      v14 = sub_21A450EC4();
    }

    else
    {
      v15 = objc_allocWithZone(sub_21A450EE4());
      v14 = sub_21A450ED4();
    }

    sub_21A3D843C(v11);
    sub_21A4356CC();

    v16 = *(v0 + 8);

    v16(v14);
  }
}

uint64_t sub_21A3F2A14()
{

  v1 = *(v0 + 1184);
  *(v0 + 1264) = v1;
  v2 = *(v0 + 1088);
  v3 = *(v0 + 896);
  v4 = *(v0 + 888);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v6 + 72);

  v10 = v9(v2, v7, v8, v5, v6) & 1;
  *(v0 + 1284) = v10;

  v11 = swift_task_alloc();
  *(v0 + 1272) = v11;
  *v11 = v0;
  v11[1] = sub_21A3F26B4;
  v12 = *(v0 + 976);
  v13 = *(v0 + 968);

  return sub_21A3F4984(v1, v2, v13, v12, v10, v0 + 856);
}

uint64_t sub_21A3F2B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21A3F2B74, 0, 0);
}

uint64_t sub_21A3F2B74()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v0[7] = v6;
  v7 = *(v4 + 56);

  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_21A3F2CD4;
  v9 = v0[6];
  v10 = v0[4];

  return v12(v10, v5, v6, v9, v3, v4);
}

uint64_t sub_21A3F2CD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_21A3F2E28;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_21A3F2E04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21A3F2E28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A3F2E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_21A450D14();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A3F2F54, 0, 0);
}

id sub_21A3F2F54()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for PFLTaskPreferences(0);
  v6 = v4 + *(v5 + 20);
  v7 = *(v6 + 48);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);

  sub_21A403BF0(v3, v2, v8, v9, v7);

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  type metadata accessor for PFLDecodableTaskParameters(0);
  sub_21A450CF4();
  sub_21A3F9400(&qword_27CD28578, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  LOBYTE(v8) = sub_21A450FE4();
  (*(v11 + 8))(v10, v12);
  if (v8)
  {
    sub_21A3EC940();
    swift_allocError();
    *v13 = 49;
    goto LABEL_3;
  }

  v14 = v0[6];
  v15 = *(v14 + 48);
  if (v15)
  {
    sub_21A3EC940();
    v16 = swift_allocError();
    *v17 = 1;
    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      goto LABEL_28;
    }

    v19 = result;
    v20 = [result isDiagnosticSubmissionAllowed];

    if (!v20)
    {
      goto LABEL_3;
    }

    v15 = *(v14 + 48);
  }

  if ((v15 & 2) != 0 && (*(v0[2] + *(v5 + 24)) != 1 || (*(v6 + 40) & 1) == 0))
  {
    sub_21A44FED4(v0[3], v0[4]);
    v15 = *(v14 + 48);
  }

  if ((v15 & 4) != 0)
  {
    sub_21A3EC940();
    v21 = swift_allocError();
    *v22 = 33;
    v23 = MKBGetDeviceLockState();
    if (v23 != 3 && v23)
    {
      goto LABEL_3;
    }

    v15 = *(v14 + 48);
  }

  if ((v15 & 8) != 0)
  {
    sub_21A3EC940();
    v24 = swift_allocError();
    *v25 = 2;
    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v26 = result;
      v27 = [result isHealthDataSubmissionAllowed];

      if (v27)
      {

        goto LABEL_20;
      }

LABEL_3:
      swift_willThrow();

      v32 = v0[1];

      return v32();
    }

LABEL_28:
    __break(1u);
    return result;
  }

LABEL_20:
  v28 = v0[5];
  v29 = v0[2];
  v30 = v28[3];
  v31 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v30);
  (*(v31 + 8))(v29, v30, v31);
  v34 = v28[3];
  v33 = v28[4];
  __swift_project_boxed_opaque_existential_1(v0[5], v34);
  v37 = (*(v33 + 32) + **(v33 + 32));
  v35 = swift_task_alloc();
  v0[10] = v35;
  *v35 = v0;
  v35[1] = sub_21A3F33C0;
  v36 = v0[2];

  return v37(v36, v34, v33);
}

uint64_t sub_21A3F33C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21A3F34D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[86] = v5;
  v6[85] = a5;
  v6[84] = a4;
  v6[83] = a3;
  v6[82] = a2;
  v6[81] = a1;
  return MEMORY[0x2822009F8](sub_21A3F350C, 0, 0);
}

uint64_t sub_21A3F350C()
{
  v46 = v0;
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v1[3];
  aBlock = v1[2];
  swift_beginAccess();
  v7 = v1[4];
  v6 = v1[5];

  swift_beginAccess();
  v8 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45[0] = v2;
  sub_21A3D3D28(v8, sub_21A3EC9F8, 0, isUniquelyReferenced_nonNull_native, v45);

  v10 = v45[0];
  v42 = v5;
  v41 = v3;
  v43 = v6;
  v11 = v0[84];
  v12 = v0[83];
  v13 = v0[82];
  v14 = v0[81];
  type metadata accessor for DediscoUploader();
  swift_beginAccess();
  v16 = *(v14 + 24);
  v15 = *(v14 + 32);
  sub_21A3F74C8(v16, v15);
  v17 = sub_21A4016D8(v10);

  static DediscoUploader.upload(binaryResult:jsonResult:task:privacyBudgetPrefix:taskSucceeded:)(v16, v15, v17, v13, v12, v11, 1);

  sub_21A3ECC34(v16, v15);
  v0[76] = aBlock;
  v0[77] = v42;
  v0[78] = 46;
  v18 = 0xE100000000000000;
  v0[79] = 0xE100000000000000;
  sub_21A3ED2CC();
  v19 = sub_21A451644();

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v19 + 16 + 16 * v20);
    v22 = *v21;
    v18 = v21[1];
  }

  else
  {
    v22 = 85;
  }

  if (v7 == v22 && v43 == v18 || (sub_21A4519B4() & 1) != 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v24 = sub_21A451054();

  *(inited + 48) = v24;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  v25 = sub_21A451054();

  *(inited + 72) = v25;
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v26 = sub_21A451054();

  *(inited + 120) = v26;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  *(inited + 168) = sub_21A451054();
  v27 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v29 = sub_21A451054();
  v0[56] = sub_21A3ED530;
  v0[57] = v28;
  v0[52] = MEMORY[0x277D85DD0];
  v0[53] = 1107296256;
  v0[54] = sub_21A432B2C;
  v0[55] = &block_descriptor_102;
  v30 = _Block_copy(v0 + 52);

  AnalyticsSendEventLazy();

  _Block_release(v30);

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v31 = sub_21A450F24();
  __swift_project_value_buffer(v31, qword_27CD28C90);

  v32 = sub_21A450F04();
  v33 = sub_21A451574();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45[0] = v35;
    *v34 = 136315138;
    v36 = *(v41 + 16);
    v37 = *(v41 + 24);

    v38 = sub_21A3E2554(v36, v37, v45);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_21A3C2000, v32, v33, "Successfully donate to Dedisco for recipe %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x21CEDB220](v35, -1, -1);
    MEMORY[0x21CEDB220](v34, -1, -1);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_21A3F3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[92] = v4;
  v5[91] = a4;
  v5[90] = a3;
  v5[89] = a2;
  v5[88] = a1;
  return MEMORY[0x2822009F8](sub_21A3F3F74, 0, 0);
}

uint64_t sub_21A3F3F74()
{
  v41 = v0;
  v1 = sub_21A450A74();
  v38 = [v1 code];

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v2 = sub_21A450F24();
  __swift_project_value_buffer(v2, qword_27CD28C90);

  v3 = sub_21A450F04();
  v4 = sub_21A451564();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[89];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40 = v7;
    *v6 = 136315138;
    swift_beginAccess();
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);

    v10 = sub_21A3E2554(v8, v9, &v40);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21A3C2000, v3, v4, "Try to donate error to Dedisco for recipe %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x21CEDB220](v7, -1, -1);
    MEMORY[0x21CEDB220](v6, -1, -1);
  }

  v11 = v0[92];
  v12 = v0[91];
  v13 = v0[90];
  v14 = v0[89];
  v15 = v11[3];
  aBlock = v11[2];
  swift_beginAccess();
  v16 = v11[4];
  v17 = v11[5];
  v39 = v16;
  type metadata accessor for DediscoUploader();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455E00;
  *(inited + 32) = 0x6F635F726F727265;
  v19 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = v38;
  v20 = sub_21A3E4F6C(inited);
  swift_setDeallocating();
  sub_21A3D3BF0(v19, &qword_27CD28438, &unk_21A455EA0);
  v21 = sub_21A4016D8(v20);

  static DediscoUploader.upload(binaryResult:jsonResult:task:privacyBudgetPrefix:taskSucceeded:)(0, 0xF000000000000000, v21, v14, v13, v12, 0);

  v0[83] = aBlock;
  v0[84] = v15;
  v0[85] = 46;
  v22 = 0xE100000000000000;
  v0[86] = 0xE100000000000000;
  sub_21A3ED2CC();
  v23 = sub_21A451644();

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (v23 + 16 + 16 * v24);
    v26 = *v25;
    v22 = v25[1];
  }

  else
  {
    v26 = 85;
  }

  if (v39 == v26 && v17 == v22 || (sub_21A4519B4() & 1) != 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_21A456280;
  *(v27 + 32) = 0x6E6967756C70;
  *(v27 + 40) = 0xE600000000000000;
  v28 = sub_21A451054();

  *(v27 + 48) = v28;
  *(v27 + 56) = 0x64496B736174;
  *(v27 + 64) = 0xE600000000000000;
  v29 = sub_21A451054();

  *(v27 + 72) = v29;
  *(v27 + 80) = 0x6E6F697461636F6CLL;
  *(v27 + 88) = 0xE800000000000000;
  *(v27 + 96) = sub_21A451054();
  *(v27 + 104) = 0x65736143657375;
  *(v27 + 112) = 0xE700000000000000;
  v30 = sub_21A451054();

  *(v27 + 120) = v30;
  *(v27 + 128) = 0x646F43726F727265;
  *(v27 + 136) = 0xE900000000000065;
  *(v27 + 144) = sub_21A4514E4();
  *(v27 + 152) = 0x6D6F44726F727265;
  *(v27 + 160) = 0xEB000000006E6961;
  *(v27 + 168) = sub_21A451054();
  v31 = sub_21A3E57A0(v27);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v33 = sub_21A451054();
  v0[66] = sub_21A3ED530;
  v0[67] = v32;
  v0[62] = MEMORY[0x277D85DD0];
  v0[63] = 1107296256;
  v0[64] = sub_21A432B2C;
  v0[65] = &block_descriptor_143;
  v34 = _Block_copy(v0 + 62);

  AnalyticsSendEventLazy();

  _Block_release(v34);

  v35 = v0[1];

  return v35();
}

uint64_t sub_21A3F4984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 432) = a6;
  *(v7 + 440) = v6;
  *(v7 + 465) = a5;
  *(v7 + 416) = a3;
  *(v7 + 424) = a4;
  *(v7 + 400) = a1;
  *(v7 + 408) = a2;
  return MEMORY[0x2822009F8](sub_21A3F49B0, 0, 0);
}

uint64_t sub_21A3F49B0()
{
  v69 = v0;
  v1 = *(v0 + 400);
  *(v0 + 384) = v1;
  v2 = v1;
  *(v0 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 464);
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v4 = sub_21A450F24();
    __swift_project_value_buffer(v4, qword_27CD28C90);

    v5 = sub_21A450F04();
    v6 = sub_21A451584();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 408);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v68 = v10;
      *v8 = 136315394;
      swift_beginAccess();
      v11 = *(v7 + 16);
      v12 = *(v7 + 24);

      v13 = sub_21A3E2554(v11, v12, &v68);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      sub_21A3D3C88();
      swift_allocError();
      *v14 = v3;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v15;
      *v9 = v15;
      _os_log_impl(&dword_21A3C2000, v5, v6, "Failed to donate to Dedisco for recipe %s with error %@", v8, 0x16u);
      sub_21A3D3BF0(v9, &qword_27CD28608, &qword_21A456570);
      MEMORY[0x21CEDB220](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CEDB220](v10, -1, -1);
      MEMORY[0x21CEDB220](v8, -1, -1);
    }

LABEL_17:
    v37 = *(v0 + 440);
    v38 = *(v0 + 400);
    v39 = v37[2];
    v40 = v37[3];
    swift_beginAccess();
    v42 = v37[4];
    v41 = v37[5];

    v43 = sub_21A450A74();
    [v43 code];

    *(v0 + 392) = v38;
    v44 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 240));
    }

    else
    {
      v45 = sub_21A450A74();
      v46 = [v45 domain];

      sub_21A451084();
    }

    *(v0 + 352) = v39;
    *(v0 + 360) = v40;
    v47 = 0xE100000000000000;
    *(v0 + 368) = 46;
    *(v0 + 376) = 0xE100000000000000;
    sub_21A3ED2CC();
    v48 = sub_21A451644();

    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = (v48 + 16 + 16 * v49);
      v51 = *v50;
      v47 = v50[1];
    }

    else
    {
      v51 = 85;
    }

    if (v42 == v51 && v41 == v47 || (sub_21A4519B4() & 1) != 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21A456280;
    *(inited + 32) = 0x6E6967756C70;
    *(inited + 40) = 0xE600000000000000;
    v53 = sub_21A451054();

    *(inited + 48) = v53;
    *(inited + 56) = 0x64496B736174;
    *(inited + 64) = 0xE600000000000000;
    v54 = sub_21A451054();

    *(inited + 72) = v54;
    *(inited + 80) = 0x6E6F697461636F6CLL;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = sub_21A451054();
    *(inited + 104) = 0x65736143657375;
    *(inited + 112) = 0xE700000000000000;
    v55 = sub_21A451054();

    *(inited + 120) = v55;
    *(inited + 128) = 0x646F43726F727265;
    *(inited + 136) = 0xE900000000000065;
    *(inited + 144) = sub_21A4514E4();
    *(inited + 152) = 0x6D6F44726F727265;
    *(inited + 160) = 0xEB000000006E6961;
    v56 = sub_21A451054();

    *(inited + 168) = v56;
    v57 = sub_21A3E57A0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
    swift_arrayDestroy();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    v59 = sub_21A451054();
    *(v0 + 224) = sub_21A3ED530;
    *(v0 + 232) = v58;
    *(v0 + 192) = MEMORY[0x277D85DD0];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_21A432B2C;
    *(v0 + 216) = &block_descriptor_110;
    v60 = _Block_copy((v0 + 192));

    AnalyticsSendEventLazy();

    _Block_release(v60);

    v61 = *(v0 + 8);

    return v61();
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 400);
  v17 = sub_21A450F24();
  __swift_project_value_buffer(v17, qword_27CD28C90);
  v18 = v16;

  v19 = sub_21A450F04();
  v20 = sub_21A451584();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 400);
    v22 = *(v0 + 408);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v68 = v25;
    *v23 = 136315394;
    swift_beginAccess();
    v26 = *(v22 + 16);
    v27 = *(v22 + 24);

    v28 = sub_21A3E2554(v26, v27, &v68);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2112;
    v29 = v21;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v30;
    *v24 = v30;
    _os_log_impl(&dword_21A3C2000, v19, v20, "Failed to execute plugin for recipe %s with error %@", v23, 0x16u);
    sub_21A3D3BF0(v24, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x21CEDB220](v25, -1, -1);
    MEMORY[0x21CEDB220](v23, -1, -1);
  }

  if (*(v0 + 465) == 1)
  {
    v31 = **(v0 + 432);
    v32 = *(v0 + 400);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_21A40886C(0, v31[2] + 1, 1, v31);
    }

    v34 = v31[2];
    v33 = v31[3];
    if (v34 >= v33 >> 1)
    {
      v31 = sub_21A40886C((v33 > 1), v34 + 1, 1, v31);
    }

    v35 = *(v0 + 432);
    v36 = *(v0 + 400);
    v31[2] = v34 + 1;
    *&v31[2 * v34 + 4] = v36;
    *v35 = v31;
    goto LABEL_17;
  }

  v63 = swift_task_alloc();
  *(v0 + 456) = v63;
  *v63 = v0;
  v63[1] = sub_21A3F52D0;
  v64 = *(v0 + 416);
  v65 = *(v0 + 424);
  v67 = *(v0 + 400);
  v66 = *(v0 + 408);

  return sub_21A3F3F44(v67, v66, v64, v65);
}

uint64_t sub_21A3F52D0()
{

  return MEMORY[0x2822009F8](sub_21A3F53CC, 0, 0);
}

uint64_t sub_21A3F53CC()
{
  v1 = v0[55];
  v2 = v0[50];
  v3 = v1[2];
  v4 = v1[3];
  swift_beginAccess();
  v6 = v1[4];
  v5 = v1[5];

  v7 = sub_21A450A74();
  [v7 code];

  v0[49] = v2;
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 30);
  }

  else
  {
    v9 = sub_21A450A74();
    v10 = [v9 domain];

    sub_21A451084();
  }

  v0[44] = v3;
  v0[45] = v4;
  v11 = 0xE100000000000000;
  v0[46] = 46;
  v0[47] = 0xE100000000000000;
  sub_21A3ED2CC();
  v12 = sub_21A451644();

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 16 + 16 * v13);
    v15 = *v14;
    v11 = v14[1];
  }

  else
  {
    v15 = 85;
  }

  if (v6 == v15 && v5 == v11 || (sub_21A4519B4() & 1) != 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A456280;
  *(inited + 32) = 0x6E6967756C70;
  *(inited + 40) = 0xE600000000000000;
  v17 = sub_21A451054();

  *(inited + 48) = v17;
  *(inited + 56) = 0x64496B736174;
  *(inited + 64) = 0xE600000000000000;
  v18 = sub_21A451054();

  *(inited + 72) = v18;
  *(inited + 80) = 0x6E6F697461636F6CLL;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21A451054();
  *(inited + 104) = 0x65736143657375;
  *(inited + 112) = 0xE700000000000000;
  v19 = sub_21A451054();

  *(inited + 120) = v19;
  *(inited + 128) = 0x646F43726F727265;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_21A4514E4();
  *(inited + 152) = 0x6D6F44726F727265;
  *(inited + 160) = 0xEB000000006E6961;
  v20 = sub_21A451054();

  *(inited + 168) = v20;
  v21 = sub_21A3E57A0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = sub_21A451054();
  v0[28] = sub_21A3ED530;
  v0[29] = v22;
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_21A432B2C;
  v0[27] = &block_descriptor_110;
  v24 = _Block_copy(v0 + 24);

  AnalyticsSendEventLazy();

  _Block_release(v24);

  v25 = v0[1];

  return v25();
}

void *PFLPlugin.deinit()
{

  sub_21A3ED49C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t PFLPlugin.__deallocating_deinit()
{

  sub_21A3ED49C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

char *sub_21A3F58B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
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

char *sub_21A3F59B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
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

char *sub_21A3F5AFC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}