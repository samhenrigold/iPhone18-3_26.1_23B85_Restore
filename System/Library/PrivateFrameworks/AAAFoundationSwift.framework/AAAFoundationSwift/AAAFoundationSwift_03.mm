unint64_t sub_1B99EF914(uint64_t a1, uint64_t a2)
{
  sub_1B99F4A04();
  sub_1B99F3B84();
  v4 = sub_1B99F4A24();

  return sub_1B99F04D0(a1, a2, v4);
}

unint64_t sub_1B99EF98C(uint64_t a1)
{
  sub_1B99F43C4();
  v2 = sub_1B99F3B64();

  return sub_1B99F0588(a1, v2);
}

uint64_t sub_1B99EF9F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD740, &qword_1B99F9AF8);
  v33 = v4;
  result = sub_1B99F4404();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1B99A1904(v24, v34);
      }

      else
      {
        sub_1B99B6424(v24, v34);
      }

      sub_1B99F4A04();
      sub_1B99F3B84();
      result = sub_1B99F4A24();
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
      result = sub_1B99A1904(v34, *(v7 + 56) + 40 * v15);
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

uint64_t sub_1B99EFCB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDB0, &qword_1B99F7200);
  v38 = v4;
  result = sub_1B99F4404();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 48 * v23);
      if (v38)
      {
        v28 = *v27;
        v29 = v27[1];
        *(v40 + 9) = *(v27 + 25);
        v39 = v28;
        v40[0] = v29;
      }

      else
      {
        sub_1B99BFBE4(v27, &v39);
      }

      sub_1B99F4A04();
      sub_1B99F3B84();
      result = sub_1B99F4A24();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = (*(v7 + 56) + 48 * v15);
      v18 = v39;
      v19 = v40[0];
      *(v17 + 25) = *(v40 + 9);
      *v17 = v18;
      v17[1] = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B99EFF84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDA8, &unk_1B99F9B10);
  v34 = v4;
  result = sub_1B99F4404();
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

      sub_1B99F4A04();
      sub_1B99F3B84();
      result = sub_1B99F4A24();
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

uint64_t sub_1B99F022C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDA0, &unk_1B99F71F0);
  v35 = v4;
  result = sub_1B99F4404();
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

      sub_1B99F4A04();
      sub_1B99F3B84();
      result = sub_1B99F4A24();
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

unint64_t sub_1B99F04D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B99F4704())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B99F0588(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1B99F43C4();
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
      v17 = sub_1B99F3BF4();
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

void EncodableError.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getErrorValue();
  v4 = sub_1B99F49B4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t EncodableError.localizedDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1B99F07B8()
{
  sub_1B99F4A04();
  MEMORY[0x1BFAE12E0](0);
  return sub_1B99F4A24();
}

uint64_t sub_1B99F0824(uint64_t a1)
{
  sub_1B99F4A04();
  MEMORY[0x1BFAE12E0](0);
  return sub_1B99F4A24();
}

uint64_t sub_1B99F0880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001B99FAFB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B99F4704();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B99F0920(uint64_t a1)
{
  v2 = sub_1B99F0AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B99F095C(uint64_t a1)
{
  v2 = sub_1B99F0AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EncodableError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD750, &qword_1B99F9B30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F0AD4();
  sub_1B99F4AA4();
  sub_1B99F44A4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B99F0AD4()
{
  result = qword_1EBBDD758;
  if (!qword_1EBBDD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD758);
  }

  return result;
}

uint64_t EncodableError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD760, &qword_1B99F9B38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F0AD4();
  sub_1B99F4A74();
  if (!v2)
  {
    v9 = sub_1B99F4464();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B99F0CB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD750, &qword_1B99F9B30);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F0AD4();
  sub_1B99F4AA4();
  sub_1B99F44A4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B99F0DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B99F0E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B99F0E98()
{
  result = qword_1EBBDD768;
  if (!qword_1EBBDD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD768);
  }

  return result;
}

unint64_t sub_1B99F0EF0()
{
  result = qword_1EBBDD770;
  if (!qword_1EBBDD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD770);
  }

  return result;
}

unint64_t sub_1B99F0F48()
{
  result = qword_1EBBDD778;
  if (!qword_1EBBDD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD778);
  }

  return result;
}

uint64_t sub_1B99F0F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B99AB800(a3, v22 - v9);
  v11 = sub_1B99F3EC4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B99A18A4(v10, &qword_1EBBDC4F0, &qword_1B99F5B20);
  }

  else
  {
    sub_1B99F3EB4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B99F3E44();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B99F3C64() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1B99A18A4(a3, &qword_1EBBDC4F0, &qword_1B99F5B20);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B99A18A4(a3, &qword_1EBBDC4F0, &qword_1B99F5B20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t OptimisticUpdating.optimisticSet<A>(_:for:task:commit:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = v6;
  v13[4] = a2;
  swift_unknownObjectRetain();

  OptimisticUpdating.optimisticSet<A>(_:for:task:commit:revert:)(a1, a2, a3, a4, a5, &unk_1B99F9D48, v13, a6);
}

uint64_t sub_1B99F12FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1B99F3EA4();
  v3[9] = sub_1B99F3E94();
  v6 = sub_1B99F3E44();

  return MEMORY[0x1EEE6DFA0](sub_1B99F1424, v6, v5);
}

uint64_t sub_1B99F1424()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[3];

  (*(v3 + 16))(v1, v5, v2);
  v0[2] = v4;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B99F14EC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B99A3EB8;

  return sub_1B99F12FC(a1, v4, v5);
}

uint64_t OptimisticUpdating.optimisticSet<A>(_:for:task:commit:revert:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v42 = a6;
  v43 = a5;
  v44 = a7;
  v40 = a4;
  v36 = a3;
  v37 = a1;
  v9 = *a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - v12;
  v14 = *MEMORY[0x1E69E6F98];
  v38 = v9;
  v15 = *(v9 + v14 + 8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v19 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  v47 = v8;
  swift_unknownObjectRetain();
  v22 = swift_readAtKeyPath();
  v39 = v16;
  v23 = *(v16 + 16);
  v45 = v21;
  v24 = v21;
  v25 = v36;
  v23(v24);
  v22(v46, 0);
  swift_unknownObjectRelease();
  (v23)(v19, v37, v15);
  v46[0] = v8;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();
  if (v25)
  {
    v47 = v8;
    swift_unknownObjectRetain();

    swift_getAtKeyPath();
    swift_unknownObjectRelease();
    if (v46[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
      sub_1B99F3EE4();
    }
  }

  v26 = sub_1B99F3EC4();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  (v23)(v19, v45, v15);
  v27 = v39;
  v28 = (*(v39 + 80) + 72) & ~*(v39 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 4) = *(v38 + *MEMORY[0x1E69E6F98]);
  *(v29 + 5) = v15;
  v30 = v40;
  *(v29 + 6) = v41;
  *(v29 + 7) = v30;
  *(v29 + 8) = v43;
  (*(v27 + 32))(&v29[v28], v19, v15);
  v31 = &v29[(v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8];
  v32 = v44;
  *v31 = v42;
  v31[1] = v32;

  v33 = sub_1B99F0F9C(0, 0, v13, &unk_1B99F9D60, v29);
  if (v25)
  {
    v46[0] = v8;
    v47 = v33;
    swift_unknownObjectRetain();

    swift_setAtReferenceWritableKeyPath();
    swift_unknownObjectRelease();

    return (*(v27 + 8))(v45, v15);
  }

  else
  {
    (*(v27 + 8))(v45, v15);
  }
}

uint64_t sub_1B99F19DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v14;
  v8[2] = a6;
  v8[3] = a7;
  v8[6] = *(v14 - 8);
  v8[7] = swift_task_alloc();
  v8[8] = swift_task_alloc();
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v8[9] = v10;
  *v10 = v8;
  v10[1] = sub_1B99F1B3C;

  return v12();
}

uint64_t sub_1B99F1B3C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99F1E00, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B99F1C84()
{

  return MEMORY[0x1EEE6DFA0](sub_1B99F1D80, 0, 0);
}

uint64_t sub_1B99F1D80(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B99F1E00()
{
  v34 = v0;
  sub_1B99F3EF4();
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  v6 = sub_1B99F3974();
  __swift_project_value_buffer(v6, qword_1ED99EC18);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v8 = v1;
  v9 = sub_1B99F3954();
  v10 = sub_1B99F40C4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[10];
    v12 = v0[7];
    v29 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    v15 = swift_slowAlloc();
    v30 = v10;
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v15 = 138412546;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    *(v15 + 12) = 2080;
    v7(v12, v29, v14);
    v19 = sub_1B99F3C44();
    v21 = v20;
    (*(v13 + 8))(v29, v14);
    v22 = sub_1B99BFCEC(v19, v21, &v33);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1B99A0000, v9, v30, "Optimistic update failed with error: %@. Reverting value to: %s", v15, 0x16u);
    sub_1B99A18A4(v16, &qword_1EBBDD2A0, &qword_1B99F8738);
    MEMORY[0x1BFAE1C50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1BFAE1C50](v31, -1, -1);
    MEMORY[0x1BFAE1C50](v15, -1, -1);
  }

  else
  {
    v23 = v0[8];
    v24 = v0[5];
    v25 = v0[6];

    (*(v25 + 8))(v23, v24);
  }

  v32 = (v0[3] + *v0[3]);
  v26 = swift_task_alloc();
  v0[11] = v26;
  *v26 = v0;
  v26[1] = sub_1B99F1C84;
  v27 = v0[2];

  return v32(v27);
}

uint64_t sub_1B99F21B4(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v5 = v1[7];
  v6 = (*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  v10 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B99A3EB8;

  return sub_1B99F19DC(a1, v7, v8, v5, v9, v1 + v6, v11, v12);
}

uint64_t sub_1B99F2314()
{
  v0 = sub_1B99F3974();
  __swift_allocate_value_buffer(v0, qword_1ED99EBF0);
  __swift_project_value_buffer(v0, qword_1ED99EBF0);

  return sub_1B99F3964();
}

uint64_t sub_1B99F23A0()
{
  v0 = sub_1B99F3974();
  __swift_allocate_value_buffer(v0, qword_1ED99EC18);
  __swift_project_value_buffer(v0, qword_1ED99EC18);

  return sub_1B99F3964();
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

int *LazyOptionalDependency.init(dependencyId:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 56))(a5, 1, 1);
  result = type metadata accessor for LazyOptionalDependency(0, a4, v10, v11);
  *(a5 + result[7]) = 0;
  v13 = (a5 + result[8]);
  *v13 = a1;
  v13[1] = a2;
  *(a5 + result[9]) = a3;
  return result;
}

uint64_t LazyOptionalDependency.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_1B99F41C4();
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(a1 + 28);
  if (*(v3 + v11) == 1)
  {
    v12 = *(v8 + 16);

    return v12(a2, v3, v7);
  }

  else
  {
    v14 = (v3 + *(a1 + 32));
    v15 = *v14;
    v16 = v14[1];
    v18 = v8;
    type metadata accessor for DependencyRegistry();
    static DependencyRegistry.locateService<A>(by:config:)(v15, v16, *(v3 + *(a1 + 36)), v6, v10);
    (*(v18 + 40))(v3, v10, v7);
    *(v3 + v11) = 1;
    return (*(v18 + 16))(a2, v3, v7);
  }
}

uint64_t LazyOptionalDependency.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B99F41C4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

void (*LazyOptionalDependency.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = *(a2 + 16);
  v8 = sub_1B99F41C4();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  LazyOptionalDependency.wrappedValue.getter(a2, v11);
  return sub_1B99DFBF8;
}

uint64_t sub_1B99F28AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LazyOptionalDependency(0, *(a3 + a4 - 8), a3, a4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return LazyOptionalDependency.projectedValue.setter(v7, v5);
}

uint64_t LazyOptionalDependency.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*LazyOptionalDependency.projectedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a2 - 8);
  v10 = v9;
  v7[2] = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  (*(v10 + 16))();
  return sub_1B99C94E0;
}

void sub_1B99F2B5C(uint64_t a1)
{
  sub_1B99F41C4();
  if (v1 <= 0x3F)
  {
    sub_1B99F2FDC();
    if (v2 <= 0x3F)
    {
      sub_1B99F302C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B99F2C04(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *(((a1 + v8) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1B99F2D7C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if ((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if ((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if ((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFE)
  {
    v22 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *(v22 + 8) = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v22 + 16) = a2;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

void sub_1B99F2FDC()
{
  if (!qword_1EBBDD810)
  {
    v0 = sub_1B99F41C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBDD810);
    }
  }
}

void sub_1B99F302C(uint64_t a1)
{
  if (!qword_1EBBDD818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD820, ".L");
    v1 = sub_1B99F41C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBDD818);
    }
  }
}

uint64_t sub_1B99F30F8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v21 = a2;
  v22 = a4;
  v20 = a5;
  v8 = type metadata accessor for TypedCodingEnvelope(0, a2, a1, a2);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDF8, &qword_1B99F7478);
  v12 = *(a3 + 8);
  v13 = sub_1B99F32DC();
  (v12)(v23, v11, v11, v13, a1, a3);
  if (v5)
  {

    v23[3] = v22;
    WitnessTable = swift_getWitnessTable();
    v12(v8, v8, WitnessTable, a1, a3);
    return (*(*(v21 - 8) + 32))(v20, v10);
  }

  else
  {
    v16 = v23[0];
    v17 = v23[1];
    sub_1B99F33B4();
    swift_allocError();
    *v18 = v16;
    v18[1] = v17;
    return swift_willThrow();
  }
}

unint64_t sub_1B99F32DC()
{
  result = qword_1EBBDD828;
  if (!qword_1EBBDD828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDCDF8, &qword_1B99F7478);
    sub_1B99F3360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD828);
  }

  return result;
}

unint64_t sub_1B99F3360()
{
  result = qword_1EBBDD830;
  if (!qword_1EBBDD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD830);
  }

  return result;
}

unint64_t sub_1B99F33B4()
{
  result = qword_1EBBDD838;
  if (!qword_1EBBDD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD838);
  }

  return result;
}

uint64_t XPCCodingError.UnexpectedType.expectedType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XPCCodingError.UnexpectedType.actualType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t XPCCodingError.UnexpectedType.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0xD000000000000033, 0x80000001B99FB010);
  MEMORY[0x1BFAE0580](v1, v2);
  MEMORY[0x1BFAE0580](0x203A746F6720, 0xE600000000000000);
  MEMORY[0x1BFAE0580](v3, v4);
  return 0;
}

uint64_t sub_1B99F352C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B99F3574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}