unint64_t sub_1A94B2858(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1A94B28C8()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387E50, &qword_1A9594E28);
  v2 = *v0;
  v3 = sub_1A957D108();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1A94B49FC(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
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

void *sub_1A94B2A98()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387E48, &qword_1A9594E20);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1A94B2BF4()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386F00, &qword_1A958A680);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v22 = 40 * v17;
        sub_1A9379534(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A93F0F10(v25, *(v4 + 56) + v22);
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

double sub_1A94B2D9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A937A490(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A94B28C8();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 88 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    *(a3 + 80) = *(v11 + 80);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_1A94B26A4(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1A94B2EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A94B2EC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A94B1D7C(v16, a4 & 1);
      v11 = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A94B28C8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 88 * v11;

    return sub_1A94B7158(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 88 * v11;
  v26 = *(a1 + 16);
  *v25 = *a1;
  *(v25 + 16) = v26;
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  v29 = *(a1 + 64);
  *(v25 + 80) = *(a1 + 80);
  *(v25 + 48) = v28;
  *(v25 + 64) = v29;
  *(v25 + 32) = v27;
  v30 = v21[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v31;
}

unint64_t sub_1A94B3064()
{
  result = qword_1EB38C0F0[0];
  if (!qword_1EB38C0F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C0F0);
  }

  return result;
}

unint64_t sub_1A94B30B8()
{
  result = qword_1EB39ED68;
  if (!qword_1EB39ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39ED68);
  }

  return result;
}

unint64_t sub_1A94B310C()
{
  result = qword_1EB38BF50[0];
  if (!qword_1EB38BF50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38BF50);
  }

  return result;
}

unint64_t sub_1A94B3160()
{
  result = qword_1EB38C878[0];
  if (!qword_1EB38C878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C878);
  }

  return result;
}

unint64_t sub_1A94B31B4()
{
  result = qword_1EB38C6D0[0];
  if (!qword_1EB38C6D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C6D0);
  }

  return result;
}

unint64_t sub_1A94B3208()
{
  result = qword_1EB3861A8;
  if (!qword_1EB3861A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861A8);
  }

  return result;
}

unint64_t sub_1A94B325C()
{
  result = qword_1EB38C538[0];
  if (!qword_1EB38C538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C538);
  }

  return result;
}

unint64_t sub_1A94B32B0()
{
  result = qword_1EB3861A0;
  if (!qword_1EB3861A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861A0);
  }

  return result;
}

unint64_t sub_1A94B3304()
{
  result = qword_1EB38B980[0];
  if (!qword_1EB38B980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B980);
  }

  return result;
}

unint64_t sub_1A94B3358()
{
  result = qword_1EB38B658[0];
  if (!qword_1EB38B658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B658);
  }

  return result;
}

unint64_t sub_1A94B33AC()
{
  result = qword_1EB39ED70;
  if (!qword_1EB39ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39ED70);
  }

  return result;
}

unint64_t sub_1A94B3400()
{
  result = qword_1EB38BB28[0];
  if (!qword_1EB38BB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38BB28);
  }

  return result;
}

unint64_t sub_1A94B3454()
{
  result = qword_1EB39ED80;
  if (!qword_1EB39ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB39ED80);
  }

  return result;
}

unint64_t sub_1A94B34A8()
{
  result = qword_1EB38B228[0];
  if (!qword_1EB38B228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B228);
  }

  return result;
}

unint64_t sub_1A94B34FC()
{
  result = qword_1EB3861B8;
  if (!qword_1EB3861B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861B8);
  }

  return result;
}

unint64_t sub_1A94B3550()
{
  result = qword_1EB3861B0;
  if (!qword_1EB3861B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861B0);
  }

  return result;
}

unint64_t sub_1A94B35A4()
{
  result = qword_1EB38C290[0];
  if (!qword_1EB38C290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38C290);
  }

  return result;
}

unint64_t sub_1A94B35F8()
{
  result = qword_1EB3861D8;
  if (!qword_1EB3861D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861D8);
  }

  return result;
}

unint64_t sub_1A94B364C()
{
  result = qword_1EB386020;
  if (!qword_1EB386020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386020);
  }

  return result;
}

unint64_t sub_1A94B36A0()
{
  result = qword_1EB3861C8;
  if (!qword_1EB3861C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861C8);
  }

  return result;
}

unint64_t sub_1A94B36F4()
{
  result = qword_1EB3861D0;
  if (!qword_1EB3861D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861D0);
  }

  return result;
}

unint64_t sub_1A94B3748()
{
  result = qword_1EB386008;
  if (!qword_1EB386008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386008);
  }

  return result;
}

unint64_t sub_1A94B379C()
{
  result = qword_1EB3861C0;
  if (!qword_1EB3861C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861C0);
  }

  return result;
}

unint64_t sub_1A94B37F0()
{
  result = qword_1EB38D528[0];
  if (!qword_1EB38D528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D528);
  }

  return result;
}

unint64_t sub_1A94B3844()
{
  result = qword_1EB39ED90[0];
  if (!qword_1EB39ED90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39ED90);
  }

  return result;
}

unint64_t sub_1A94B3898()
{
  result = qword_1EB38CEB8[0];
  if (!qword_1EB38CEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38CEB8);
  }

  return result;
}

unint64_t sub_1A94B38EC()
{
  result = qword_1EB38D050[0];
  if (!qword_1EB38D050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D050);
  }

  return result;
}

unint64_t sub_1A94B3940()
{
  result = qword_1EB38CD18[0];
  if (!qword_1EB38CD18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38CD18);
  }

  return result;
}

unint64_t sub_1A94B3994()
{
  result = qword_1EB38D1F0[0];
  if (!qword_1EB38D1F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D1F0);
  }

  return result;
}

uint64_t sub_1A94B39E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v16 = sub_1A937829C(a6, a7);
  v36 = v16;
  v34 = a8;
  v37 = sub_1A93B744C(a8, a6, a7, MEMORY[0x1E6988248]);
  *&v35 = a1;
  v17 = *a5;
  v19 = sub_1A937A490(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      sub_1A9378138(v26);
      return sub_1A93F0F10(&v35, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    sub_1A94B2BF4();
    goto LABEL_7;
  }

  sub_1A94B2374(v22, a4 & 1);
  v28 = sub_1A937A490(a2, a3);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = sub_1A9396054(&v35, v16);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  sub_1A94B3C28(v19, a2, a3, *v32, v25, a6, a7, v34);

  return sub_1A9378138(&v35);
}

uint64_t sub_1A94B3C28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v22 = sub_1A937829C(a6, a7);
  v23 = sub_1A93B744C(a8, a6, a7, MEMORY[0x1E6988248]);
  *&v21 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v16 = (a5[6] + 16 * a1);
  *v16 = a2;
  v16[1] = a3;
  result = sub_1A93F0F10(&v21, a5[7] + 40 * a1);
  v18 = a5[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v20;
  }

  return result;
}

uint64_t sub_1A94B3D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A94B3E2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A95C3F40 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E6964726163 && a2 == 0xEB00000000797469)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A94B3FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A94B4160(void *a1)
{
  v2 = sub_1A937829C(&qword_1EB387E60, &qword_1A9594E38);
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v37[-v3];
  v4 = sub_1A937829C(&qword_1EB387E68, &qword_1A9594E40);
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v37[-v6];
  v7 = sub_1A937829C(&qword_1EB387E70, &qword_1A9594E48);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v37[-v8];
  v9 = sub_1A937829C(&qword_1EB387E78, &qword_1A9594E50);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37[-v10];
  v12 = sub_1A937829C(&qword_1EB387E80, &qword_1A9594E58);
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37[-v13];
  v15 = sub_1A937829C(&qword_1EB387E88, &qword_1A9594E60);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37[-v17];
  v19 = a1[3];
  v54 = a1;
  sub_1A93780F4(a1, v19);
  sub_1A94B37F0();
  v20 = v53;
  sub_1A957D588();
  if (v20)
  {
    goto LABEL_18;
  }

  v39 = v12;
  v40 = v18;
  v22 = v51;
  v21 = v52;
  v53 = v16;
  v23 = sub_1A957D268();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 5) : (v26 = 1), v26))
  {
    v27 = sub_1A957CF58();
    swift_allocError();
    v28 = v15;
    v30 = v29;
    sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
    *v30 = &type metadata for TTSTaskRunner.TaskRecord.State;
    v31 = v40;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v53 + 8))(v31, v28);
    swift_unknownObjectRelease();
LABEL_18:
    sub_1A9378138(v54);
    return 0;
  }

  v38 = *(v23 + 32);
  if (v25 <= 1)
  {
    if (v25)
    {
      v56 = 1;
      sub_1A94B3940();
      v34 = v40;
      sub_1A957D178();
      (*(v42 + 8))(v11, v43);
    }

    else
    {
      v55 = 0;
      sub_1A94B3994();
      v34 = v40;
      sub_1A957D178();
      (*(v41 + 8))(v14, v39);
    }

    (*(v53 + 8))(v34, v15);
  }

  else
  {
    v32 = v53;
    if (v25 == 2)
    {
      v57 = 2;
      sub_1A94B38EC();
      v33 = v40;
      sub_1A957D178();
      (*(v44 + 8))(v22, v45);
    }

    else
    {
      v33 = v40;
      if (v25 == 3)
      {
        v58 = 3;
        sub_1A94B3898();
        sub_1A957D178();
        (*(v47 + 8))(v21, v46);
      }

      else
      {
        v59 = 4;
        sub_1A94B3844();
        v35 = v50;
        sub_1A957D178();
        (*(v48 + 8))(v35, v49);
      }
    }

    (*(v32 + 8))(v33, v15);
  }

  swift_unknownObjectRelease();
  sub_1A9378138(v54);
  return v38;
}

unint64_t sub_1A94B4858()
{
  result = qword_1EB38D6C8[0];
  if (!qword_1EB38D6C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D6C8);
  }

  return result;
}

unint64_t sub_1A94B48AC()
{
  result = qword_1EB386198;
  if (!qword_1EB386198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386198);
  }

  return result;
}

unint64_t sub_1A94B4900()
{
  result = qword_1EB386200;
  if (!qword_1EB386200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386200);
  }

  return result;
}

unint64_t sub_1A94B4954()
{
  result = qword_1EB386190;
  if (!qword_1EB386190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386190);
  }

  return result;
}

unint64_t sub_1A94B49A8()
{
  result = qword_1EB3861F0;
  if (!qword_1EB3861F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861F0);
  }

  return result;
}

uint64_t sub_1A94B4A90@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 200))();
  *a1 = result;
  return result;
}

unint64_t sub_1A94B4B4C()
{
  result = qword_1EB387E38;
  if (!qword_1EB387E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387E38);
  }

  return result;
}

unint64_t sub_1A94B4BA4()
{
  result = qword_1EB3861F8;
  if (!qword_1EB3861F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861F8);
  }

  return result;
}

__n128 sub_1A94B4D9C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A94B4DC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1A94B4E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TTSTaskRunner.TaskConfiguration.TaskType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for TTSTaskRunner.TaskConfiguration.TaskType(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.TaskType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 49);
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

uint64_t storeEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.TaskType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.FailureBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.FailureBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1A94B501C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_1A94B5030(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 24) = -a2;
  }

  return result;
}

__n128 initializeWithCopy for TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 sub_1A94B513C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A94B5160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1A94B51A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A94B5360()
{
  result = qword_1EB39EEA0[0];
  if (!qword_1EB39EEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39EEA0);
  }

  return result;
}

unint64_t sub_1A94B53B8()
{
  result = qword_1EB39EFB0[0];
  if (!qword_1EB39EFB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39EFB0);
  }

  return result;
}

unint64_t sub_1A94B5410()
{
  result = qword_1EB39F0C0[0];
  if (!qword_1EB39F0C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F0C0);
  }

  return result;
}

unint64_t sub_1A94B5468()
{
  result = qword_1EB39F1D0[0];
  if (!qword_1EB39F1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F1D0);
  }

  return result;
}

unint64_t sub_1A94B54C0()
{
  result = qword_1EB39F2E0[0];
  if (!qword_1EB39F2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F2E0);
  }

  return result;
}

unint64_t sub_1A94B5518()
{
  result = qword_1EB39F3F0[0];
  if (!qword_1EB39F3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F3F0);
  }

  return result;
}

unint64_t sub_1A94B5570()
{
  result = qword_1EB39F500[0];
  if (!qword_1EB39F500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F500);
  }

  return result;
}

unint64_t sub_1A94B55C8()
{
  result = qword_1EB39F610[0];
  if (!qword_1EB39F610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F610);
  }

  return result;
}

unint64_t sub_1A94B5620()
{
  result = qword_1EB39F720[0];
  if (!qword_1EB39F720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F720);
  }

  return result;
}

unint64_t sub_1A94B5678()
{
  result = qword_1EB39F830[0];
  if (!qword_1EB39F830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F830);
  }

  return result;
}

unint64_t sub_1A94B56D0()
{
  result = qword_1EB39F940[0];
  if (!qword_1EB39F940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39F940);
  }

  return result;
}

unint64_t sub_1A94B5728()
{
  result = qword_1EB39FA50[0];
  if (!qword_1EB39FA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB39FA50);
  }

  return result;
}

unint64_t sub_1A94B5780()
{
  result = qword_1EB38D6B0;
  if (!qword_1EB38D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D6B0);
  }

  return result;
}

unint64_t sub_1A94B57D8()
{
  result = qword_1EB38D6B8;
  if (!qword_1EB38D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D6B8);
  }

  return result;
}

unint64_t sub_1A94B5830()
{
  result = qword_1EB38D1E0;
  if (!qword_1EB38D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D1E0);
  }

  return result;
}

unint64_t sub_1A94B5888()
{
  result = qword_1EB38D1E8;
  if (!qword_1EB38D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D1E8);
  }

  return result;
}

unint64_t sub_1A94B58E0()
{
  result = qword_1EB38CD00;
  if (!qword_1EB38CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38CD00);
  }

  return result;
}

unint64_t sub_1A94B5938()
{
  result = qword_1EB38CD08;
  if (!qword_1EB38CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38CD08);
  }

  return result;
}

unint64_t sub_1A94B5990()
{
  result = qword_1EB38D040;
  if (!qword_1EB38D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D040);
  }

  return result;
}

unint64_t sub_1A94B59E8()
{
  result = qword_1EB38D048;
  if (!qword_1EB38D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D048);
  }

  return result;
}

unint64_t sub_1A94B5A40()
{
  result = qword_1EB38CEA0;
  if (!qword_1EB38CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38CEA0);
  }

  return result;
}

unint64_t sub_1A94B5A98()
{
  result = qword_1EB38CEA8;
  if (!qword_1EB38CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38CEA8);
  }

  return result;
}

unint64_t sub_1A94B5AF0()
{
  result = qword_1EB38D380;
  if (!qword_1EB38D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D380);
  }

  return result;
}

unint64_t sub_1A94B5B48()
{
  result = qword_1EB38D388[0];
  if (!qword_1EB38D388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38D388);
  }

  return result;
}

unint64_t sub_1A94B5BA0()
{
  result = qword_1EB38D510;
  if (!qword_1EB38D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D510);
  }

  return result;
}

unint64_t sub_1A94B5BF8()
{
  result = qword_1EB38D518;
  if (!qword_1EB38D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38D518);
  }

  return result;
}

unint64_t sub_1A94B5C50()
{
  result = qword_1EB38C280;
  if (!qword_1EB38C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C280);
  }

  return result;
}

unint64_t sub_1A94B5CA8()
{
  result = qword_1EB38C288;
  if (!qword_1EB38C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C288);
  }

  return result;
}

unint64_t sub_1A94B5D00()
{
  result = qword_1EB38B210;
  if (!qword_1EB38B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B210);
  }

  return result;
}

unint64_t sub_1A94B5D58()
{
  result = qword_1EB38B218;
  if (!qword_1EB38B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B218);
  }

  return result;
}

unint64_t sub_1A94B5DB0()
{
  result = qword_1EB38B3B0;
  if (!qword_1EB38B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B3B0);
  }

  return result;
}

unint64_t sub_1A94B5E08()
{
  result = qword_1EB38B3B8[0];
  if (!qword_1EB38B3B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B3B8);
  }

  return result;
}

unint64_t sub_1A94B5E60()
{
  result = qword_1EB38BB10;
  if (!qword_1EB38BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BB10);
  }

  return result;
}

unint64_t sub_1A94B5EB8()
{
  result = qword_1EB38BB18;
  if (!qword_1EB38BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BB18);
  }

  return result;
}

unint64_t sub_1A94B5F10()
{
  result = qword_1EB38B7E0;
  if (!qword_1EB38B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B7E0);
  }

  return result;
}

unint64_t sub_1A94B5F68()
{
  result = qword_1EB38B7E8[0];
  if (!qword_1EB38B7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38B7E8);
  }

  return result;
}

unint64_t sub_1A94B5FC0()
{
  result = qword_1EB38B640;
  if (!qword_1EB38B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B640);
  }

  return result;
}

unint64_t sub_1A94B6018()
{
  result = qword_1EB38B648;
  if (!qword_1EB38B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B648);
  }

  return result;
}

unint64_t sub_1A94B6070()
{
  result = qword_1EB38B970;
  if (!qword_1EB38B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B970);
  }

  return result;
}

unint64_t sub_1A94B60C8()
{
  result = qword_1EB38B978;
  if (!qword_1EB38B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38B978);
  }

  return result;
}

unint64_t sub_1A94B6120()
{
  result = qword_1EB38C520;
  if (!qword_1EB38C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C520);
  }

  return result;
}

unint64_t sub_1A94B6178()
{
  result = qword_1EB38C528;
  if (!qword_1EB38C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C528);
  }

  return result;
}

unint64_t sub_1A94B61D0()
{
  result = qword_1EB38C6C0;
  if (!qword_1EB38C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C6C0);
  }

  return result;
}

unint64_t sub_1A94B6228()
{
  result = qword_1EB38C6C8;
  if (!qword_1EB38C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C6C8);
  }

  return result;
}

unint64_t sub_1A94B6280()
{
  result = qword_1EB38C860;
  if (!qword_1EB38C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C860);
  }

  return result;
}

unint64_t sub_1A94B62D8()
{
  result = qword_1EB38C868;
  if (!qword_1EB38C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C868);
  }

  return result;
}

unint64_t sub_1A94B6330()
{
  result = qword_1EB38BF40;
  if (!qword_1EB38BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BF40);
  }

  return result;
}

unint64_t sub_1A94B6388()
{
  result = qword_1EB38BF48;
  if (!qword_1EB38BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BF48);
  }

  return result;
}

unint64_t sub_1A94B63E0()
{
  result = qword_1EB38BDB0;
  if (!qword_1EB38BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38BDB0);
  }

  return result;
}

unint64_t sub_1A94B6438()
{
  result = qword_1EB38BDB8[0];
  if (!qword_1EB38BDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38BDB8);
  }

  return result;
}

unint64_t sub_1A94B6490()
{
  result = qword_1EB38C0E0;
  if (!qword_1EB38C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C0E0);
  }

  return result;
}

unint64_t sub_1A94B64E8()
{
  result = qword_1EB38C0E8;
  if (!qword_1EB38C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38C0E8);
  }

  return result;
}

uint64_t sub_1A94B653C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736572756C696166 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A94B6658(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB386E78, qword_1A9589E60);
    sub_1A94B66F8(a2, 255, MEMORY[0x1E6969530], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A94B66F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1A94B6740()
{
  v1 = sub_1A94B7048(MEMORY[0x1E69E7CC0]);
  v2 = (*(*v0 + 200))();
  v3 = 0;
  v4 = v2 + 64;
  v56 = v2;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_11:
    v10 = *(v56 + 56) + 88 * (__clz(__rbit64(v7)) | (v9 << 6));
    v11 = *(v10 + 32);
    v12 = *(v10 + 48);
    v13 = *(v10 + 80);
    v63 = *(v10 + 64);
    v14 = *v10;
    v15 = *(v10 + 16);
    v64 = v13;
    v61 = v11;
    v62 = v12;
    v59 = v14;
    v60 = v15;
    v16 = BYTE9(v63);
    if (v1[2] && (v17 = sub_1A94B2638(BYTE9(v63)), (v18 & 1) != 0))
    {
      v19 = *(v1[7] + 8 * v17);
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    sub_1A937829C(&qword_1EB387E40, &qword_1A9594E18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    v21 = v60;
    *(inited + 32) = v59;
    v22 = v64;
    v23 = v63;
    v24 = v61;
    *(inited + 80) = v62;
    *(inited + 96) = v23;
    *(inited + 112) = v22;
    *(inited + 48) = v21;
    *(inited + 64) = v24;
    v25 = *(v19 + 2);
    sub_1A94B49FC(&v59, &v57);
    sub_1A94B49FC(&v59, &v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v27 = *(v19 + 3) >> 1, v27 <= v25))
    {
      v19 = sub_1A94B17C8(isUniquelyReferenced_nonNull_native, v25 + 1, 1, v19);
      v27 = *(v19 + 3) >> 1;
    }

    if (v27 <= *(v19 + 2))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
      goto LABEL_39;
    }

    swift_arrayInitWithCopy();

    ++*(v19 + 2);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v1;
    v29 = sub_1A94B2638(v16);
    v31 = v1[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      goto LABEL_46;
    }

    v35 = v30;
    if (v1[3] >= v34)
    {
      if ((v28 & 1) == 0)
      {
        v39 = v29;
        sub_1A94B2A98();
        v29 = v39;
        v1 = v57;
      }
    }

    else
    {
      sub_1A94B20E4(v34, v28);
      v1 = v57;
      v29 = sub_1A94B2638(v16);
      if ((v35 & 1) != (v36 & 1))
      {
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    v7 &= v7 - 1;
    if (v35)
    {
      *(v1[7] + 8 * v29) = v19;

      sub_1A94B4A34(&v59);
    }

    else
    {
      v1[(v29 >> 6) + 8] |= 1 << v29;
      *(v1[6] + v29) = v16;
      *(v1[7] + 8 * v29) = v19;
      sub_1A94B4A34(&v59);
      v37 = v1[2];
      v33 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v33)
      {
        goto LABEL_47;
      }

      v1[2] = v38;
    }

    v3 = v9;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  *&v59 = 0x20676E696E6E7552;
  *(&v59 + 1) = 0xEF2073746E756F63;
  v40 = 1 << *(v1 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v1[8];
  v43 = (v40 + 63) >> 6;

  v44 = 0;
  if (v42)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_44;
    }

    if (v45 >= v43)
    {
      break;
    }

    v42 = v1[v45 + 8];
    ++v44;
    if (v42)
    {
      v44 = v45;
      do
      {
LABEL_36:
        v42 &= v42 - 1;
        v57 = 32;
        v58 = 0xE100000000000000;

        v46 = sub_1A957C198();
        MEMORY[0x1AC585140](v46);

        MEMORY[0x1AC585140](91, 0xE100000000000000);

        v47 = sub_1A957D3A8();
        MEMORY[0x1AC585140](v47);

        MEMORY[0x1AC585140](8285, 0xE200000000000000);
        MEMORY[0x1AC585140](v57, v58);
      }

      while (v42);
      continue;
    }
  }

  if (qword_1EB3892A0 != -1)
  {
    goto LABEL_48;
  }

LABEL_39:
  v48 = sub_1A957BC88();
  sub_1A937731C(v48, qword_1EB3892A8);
  v49 = v59;

  v50 = sub_1A957BC68();
  v51 = sub_1A957CA58();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v57 = v53;
    *v52 = 136315138;
    v54 = sub_1A937A5C0(v49, *(&v49 + 1), &v57);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_1A9324000, v50, v51, "%s", v52, 0xCu);
    sub_1A9378138(v53);
    MEMORY[0x1AC587CD0](v53, -1, -1);
    MEMORY[0x1AC587CD0](v52, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1A94B6D5C()
{
  result = qword_1EB3861E0;
  if (!qword_1EB3861E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861E0);
  }

  return result;
}

uint64_t sub_1A94B6DB0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB387E10, &qword_1A9593628);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A94B6E34()
{
  result = qword_1EB3861E8;
  if (!qword_1EB3861E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3861E8);
  }

  return result;
}

unint64_t sub_1A94B6E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB387E50, &qword_1A9594E28);
  v3 = sub_1A957D128();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_1A9391BAC(&v27, v26, &qword_1EB387E58, &qword_1A9594E30);
  result = sub_1A937A490(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_1A9391BAC(&v27, v26, &qword_1EB387E58, &qword_1A9594E30);
    result = sub_1A937A490(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A94B7048(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB387E48, &qword_1A9594E20);
  v3 = sub_1A957D128();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1A94B2638(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1A94B2638(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94B7190()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A9382328;

  return sub_1A94AA0EC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A94B7248()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A94AAE88(v4, v5, v6, v2, v3);
}

uint64_t sub_1A94B7318(uint64_t *a1, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a3)
{
  ppDb[1] = *MEMORY[0x1E69E9840];
  ppDb[0] = 0;
  v7 = sub_1A94B7DD8(a1);
  v8 = v4;
  sqlite3_open("file::memory:", ppDb);
  v9 = ppDb[0];
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v15 = v10 + 16;
    v10 = *(v10 + 16);
    v14 = *(v15 + 8);
    v13 = v14 - v10;
    if (!__OFSUB__(v14, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    v16 = __OFSUB__(HIDWORD(v10), v10);
    v17 = HIDWORD(v10) - v10;
    if (v16)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    v13 = v17;
    goto LABEL_10;
  }

  if (v12)
  {
    goto LABEL_8;
  }

  v13 = BYTE6(v11);
LABEL_10:
  if (sqlite3_deserialize(v9, "main", v7, v13, v13, 0))
  {
    sub_1A94B8060();
    swift_allocError();
    v19 = 3;
LABEL_12:
    *v18 = v19;
    *(v18 + 8) = 1;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  ppStmt = 0;
  v20 = ppDb[0];
  v21 = sub_1A957C1C8();
  sqlite3_prepare_v2(v20, (v21 + 32), -1, &ppStmt, 0);

  v22 = ppStmt;
  if (qword_1EB39FB60 != -1)
  {
    goto LABEL_74;
  }

LABEL_14:
  v23 = qword_1EB3A7CA8;
  v24 = sub_1A957C1C8();
  v25 = sqlite3_bind_text(v22, 1, (v24 + 32), -1, v23);

  if (v25)
  {
    sub_1A94B8060();
    swift_allocError();
    *v26 = 4;
    *(v26 + 8) = 1;
    goto LABEL_16;
  }

  if (sqlite3_step(ppStmt) != 100)
  {
    sqlite3_finalize(ppStmt);
    sub_1A94B8060();
    swift_allocError();
    v19 = 5;
    goto LABEL_12;
  }

  if (!sqlite3_column_text(ppStmt, 0))
  {
    __break(1u);
LABEL_83:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v28 = sub_1A957C2A8();
  v96[0] = 44;
  v96[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v28);
  v85[2] = v96;
  v31 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A9394148, v85, v29, v30, &v86);
  v86 = v8;
  v32 = *(v31 + 16);
  v89 = v3;
  if (v32)
  {
    v96[0] = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v32, 0);
    v33 = v96[0];
    v34 = (v31 + 56);
    do
    {
      v36 = *(v34 - 3);
      v35 = *(v34 - 2);
      v37 = *(v34 - 1);
      v38 = *v34;

      v39 = MEMORY[0x1AC585090](v36, v35, v37, v38);
      v41 = v40;

      v96[0] = v33;
      v43 = *(v33 + 2);
      v42 = *(v33 + 3);
      if (v43 >= v42 >> 1)
      {
        sub_1A93ABB68((v42 > 1), v43 + 1, 1);
        v33 = v96[0];
      }

      *(v33 + 2) = v43 + 1;
      v44 = v33 + 16 * v43;
      *(v44 + 4) = v39;
      *(v44 + 5) = v41;
      v34 += 4;
      --v32;
    }

    while (v32);
    v92 = v33;
  }

  else
  {

    v92 = MEMORY[0x1E69E7CC0];
  }

  sqlite3_finalize(ppStmt);
  v96[0] = 0;
  v45 = ppDb[0];
  v46 = sub_1A957C1C8();
  sqlite3_prepare_v2(v45, (v46 + 32), -1, v96, 0);

  v8 = MEMORY[0x1E69E7CC0];
  v3 = sub_1A94B8530(MEMORY[0x1E69E7CC0]);
  v5 = 1;
  v47 = 1;
  while (sqlite3_step(v96[0]) == 100)
  {
    if (!sqlite3_column_text(v96[0], 0))
    {
      goto LABEL_81;
    }

    v22 = sub_1A957C2A8();
    v49 = v48;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v3;
    v51 = sub_1A937A490(v22, v49);
    v53 = v3[2];
    v54 = (v52 & 1) == 0;
    v16 = __OFADD__(v53, v54);
    v55 = v53 + v54;
    if (v16)
    {
      goto LABEL_70;
    }

    v56 = v52;
    if (v3[3] < v55)
    {
      sub_1A94B80B4(v55, v50);
      v51 = sub_1A937A490(v22, v49);
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_83;
      }

LABEL_39:
      if (v56)
      {
        goto LABEL_30;
      }

      goto LABEL_40;
    }

    if (v50)
    {
      goto LABEL_39;
    }

    v61 = v51;
    sub_1A94B8354();
    v51 = v61;
    if (v56)
    {
LABEL_30:
      v22 = v51;

      v3 = v95;
      *(*(v95 + 56) + 8 * v22) = v47;
      goto LABEL_31;
    }

LABEL_40:
    v3 = v95;
    *(v95 + 8 * (v51 >> 6) + 64) |= 1 << v51;
    v58 = (v3[6] + 16 * v51);
    *v58 = v22;
    v58[1] = v49;
    *(v3[7] + 8 * v51) = v47;
    v59 = v3[2];
    v16 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v16)
    {
      goto LABEL_72;
    }

    v3[2] = v60;
LABEL_31:
    v16 = __OFADD__(v47++, 1);
    if (v16)
    {
      goto LABEL_71;
    }
  }

  sqlite3_finalize(v96[0]);
  v95 = v8;
  v62 = v92;
  v22 = *(v92 + 2);
  if (!v22)
  {

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_67;
  }

  v91 = v92 + 32;

  v63 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v90 = 30;
  v87 = v3;
  v88 = v22;
  while (1)
  {
    if (v63 >= *(v62 + 2))
    {
      goto LABEL_73;
    }

    if (!v3[2])
    {
      goto LABEL_47;
    }

    v93 = v63;
    v64 = &v91[16 * v63];
    v65 = *v64;
    v66 = v64[1];

    v67 = sub_1A937A490(v65, v66);
    if (v68)
    {
      break;
    }

    v62 = v92;
    v63 = v93;
LABEL_47:
    if (++v63 == v22)
    {

LABEL_67:

      sqlite3_close(ppDb[0]);
      return v5;
    }
  }

  v69 = *(v3[7] + 8 * v67);
  v70 = [objc_allocWithZone(TTSRuleset) init];
  v71 = sub_1A957C0C8();
  [v70 setIdentifier_];

  v94 = v70;
  v72 = v90;
  [v70 setPriority_];
  v90 = v72 + 1;
  if (__OFADD__(v72, 1))
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v97 = 0;
  v73 = ppDb[0];
  v74 = sub_1A957C1C8();
  sqlite3_prepare_v2(v73, (v74 + 32), -1, &v97, 0);

  if (v69 < 0xFFFFFFFF80000000)
  {
    goto LABEL_76;
  }

  if (v69 > 0x7FFFFFFF)
  {
    goto LABEL_77;
  }

  if (!sqlite3_bind_int(v97, 1, v69))
  {
    while (sqlite3_step(v97) == 100)
    {
      if (!sqlite3_column_text(v97, 0))
      {
        goto LABEL_80;
      }

      sub_1A957C2A8();
      v8 = v75;
      if (!sqlite3_column_text(v97, 1))
      {
        goto LABEL_79;
      }

      sub_1A957C2A8();
      v76 = sqlite3_column_int(v97, 2);
      v5 = sqlite3_column_int(v97, 3);
      v77 = [objc_allocWithZone(TTSRuleReplacement) init];
      v78 = objc_allocWithZone(TTSRegex);
      v79 = sub_1A957C0C8();

      v80 = [v78 initWithPerlPattern_];

      [v77 setRegex_];
      [v77 setIsTerminalRule_];
      v3 = objc_opt_self();
      v81 = sub_1A957C0C8();

      v22 = [v3 processReplacementStringForSpecialCharacters_];

      if (!v22)
      {
        sub_1A957C0F8();
        v3 = v82;
        v22 = sub_1A957C0C8();
      }

      [v77 setReplacement_];

      if ((v5 & 0x80000000) != 0)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
        goto LABEL_14;
      }

      [v77 setOriginalRulesetIndex_];
      [v94 addRuleReplacement_];
    }

    v83 = v94;
    MEMORY[0x1AC585360]();
    if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A957C4F8();
    }

    sub_1A957C538();
    v5 = v95;
    sqlite3_finalize(v97);

    v62 = v92;
    v63 = v93;
    v3 = v87;
    v22 = v88;
    goto LABEL_47;
  }

  swift_bridgeObjectRelease_n();
  sub_1A94B8060();
  swift_allocError();
  *v84 = 4;
  *(v84 + 8) = 1;
  swift_willThrow();

LABEL_17:
  sqlite3_close(ppDb[0]);
  return v5;
}

void *TTSSQLiteReader.deinit()
{

  return v0;
}

uint64_t TTSSQLiteReader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1A94B7D68()
{
  result = swift_allocObject();
  result[2] = 0xD000000000000033;
  result[3] = 0x80000001A95C3FC0;
  result[4] = 0xD00000000000002ALL;
  result[5] = 0x80000001A95C4000;
  result[6] = 0xD000000000000049;
  result[7] = 0x80000001A95C4030;
  return result;
}

uint64_t *sub_1A94B7DD8(uint64_t *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_1A9442638(v4, v3);
      LOWORD(v14) = v3;
      BYTE2(v14) = BYTE2(v3);
      BYTE3(v14) = BYTE3(v3);
      BYTE4(v14) = BYTE4(v3);
      BYTE5(v14) = BYTE5(v3);
      result = &v13;
      v7 = v14 | ((WORD2(v14) | (BYTE6(v3) << 16)) << 32);
      *a1 = v4;
      a1[1] = v7;
      return result;
    }

    v9 = v3 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1A9442638(v4, v3);
    *a1 = xmmword_1A958AD40;
    sub_1A9442638(0, 0xC000000000000000);
    v10 = v4 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v10 < v4)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (sub_1A957AE78() && __OFSUB__(v4, sub_1A957AE98()))
      {
LABEL_19:
        __break(1u);
      }

      sub_1A957AEA8();
      swift_allocObject();
      v11 = sub_1A957AE68();

      v9 = v11;
    }

    if (v10 >= v4)
    {

      v12 = sub_1A94B84BC(v4, v4 >> 32);

      *a1 = v4;
      a1[1] = v9 | 0x4000000000000000;
      if (!v1)
      {
        return v12;
      }

      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v5 != 2)
  {
    return &v13;
  }

  sub_1A9442638(v4, v3);
  v13 = v4;
  v14 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1A958AD40;
  sub_1A9442638(0, 0xC000000000000000);
  sub_1A957AFE8();
  v8 = v14;
  result = sub_1A94B84BC(*(v13 + 16), *(v13 + 24));
  *a1 = v13;
  a1[1] = v8 | 0x8000000000000000;
  return result;
}

unint64_t sub_1A94B8060()
{
  result = qword_1EB387E90;
  if (!qword_1EB387E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387E90);
  }

  return result;
}

uint64_t sub_1A94B80B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB387E98, &qword_1A9594F18);
  v34 = v4;
  result = sub_1A957D118();
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

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
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

void *sub_1A94B8354()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387E98, &qword_1A9594F18);
  v2 = *v0;
  v3 = sub_1A957D108();
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

uint64_t sub_1A94B84BC(uint64_t a1, uint64_t a2)
{
  result = sub_1A957AE78();
  if (result)
  {
    v5 = result;
    result = sub_1A957AE98();
    v6 = a1 - result;
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_1A957AE88();
      return v6 + v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A94B8530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387E98, &qword_1A9594F18);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A937A490(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SQLiteError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLiteError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1A94B8690(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A94B86AC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 TTSAudioEffect.spec.getter@<Q0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = sub_1A937BD90();
  }

  else
  {
    v3 = sub_1A9475F20();
  }

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *&v17[32] = *(v3 + 10);
  *v17 = v5;
  *&v17[16] = v6;
  v16[2] = v4;
  v7 = v3[1];
  v16[0] = *v3;
  v16[1] = v7;
  v13 = *&v17[8];
  v14 = *&v17[24];
  v8 = v17[0];
  v11 = v7;
  v12 = v4;
  v9 = v16[0];
  sub_1A937BE84(v16, v15);
  *a1 = v9;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  *(a1 + 48) = v8;
  result = v14;
  *(a1 + 56) = v13;
  *(a1 + 72) = v14;
  return result;
}

TextToSpeech::TTSAudioEffect_optional __swiftcall TTSAudioEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A957D158();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TTSAudioEffect.rawValue.getter()
{
  if (*v0)
  {
    return 0x627265766572;
  }

  else
  {
    return 0x657A696C61757165;
  }
}

uint64_t sub_1A94B88B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x627265766572;
  }

  else
  {
    v3 = 0x657A696C61757165;
  }

  if (v2)
  {
    v4 = 0xE900000000000072;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x627265766572;
  }

  else
  {
    v5 = 0x657A696C61757165;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE900000000000072;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A957D3E8();
  }

  return v8 & 1;
}

uint64_t sub_1A94B8958@<X0>(char *a2@<X8>)
{
  v3 = sub_1A957D158();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1A94B89B8(uint64_t *a1@<X8>)
{
  v2 = 0x657A696C61757165;
  if (*v1)
  {
    v2 = 0x627265766572;
  }

  v3 = 0xE900000000000072;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1A94B89FC()
{
  result = qword_1EB387EA0;
  if (!qword_1EB387EA0)
  {
    sub_1A93A7B68(&qword_1EB387EA8, &qword_1A9594F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387EA0);
  }

  return result;
}

unint64_t sub_1A94B8A74()
{
  result = qword_1EB387EB0;
  if (!qword_1EB387EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387EB0);
  }

  return result;
}

uint64_t sub_1A94B8AC8()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94B8B4C(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A94B8BBC(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

unint64_t sub_1A94B8CFC()
{
  result = qword_1EB387EB8;
  if (!qword_1EB387EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387EB8);
  }

  return result;
}

uint64_t sub_1A94B8D88(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A94B8E04(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

id sub_1A94B8E94()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1A94B8ED8(double a1)
{
  v2 = swift_allocObject();
  sub_1A94B8F20(a1);
  return v2;
}

uint64_t sub_1A94B8F20(double a1)
{
  v10 = sub_1A957CAD8();
  v3 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A957CAC8();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A957BF48();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v1 + 16) = 0;
  v9[1] = sub_1A9387478(0, &qword_1ED96FE90, 0x1E69E9610);
  sub_1A957BF28();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1A94BCAA4(&qword_1ED96FE98, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A937829C(&unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A946D250(&qword_1ED96FEA8, &unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A957CE08();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v10);
  *(v1 + 32) = sub_1A957CB08();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1A94B91A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A957BF18();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A957BF48();
  v8 = *(v17 - 8);
  v9 = MEMORY[0x1EEE9AC00](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*v2 + 152))(v9);
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1A94B9AF8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CED838;
  v14 = _Block_copy(aBlock);

  sub_1A957BF28();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1A94BCAA4(qword_1ED96FED0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v11, v17);
}

void sub_1A94B9494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v40 = sub_1A957BF18();
  MEMORY[0x1EEE9AC00](v40);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A957BF08();
  v37 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v36 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v35 - v8);
  v42 = sub_1A957BF78();
  v45 = *(v42 - 8);
  v10 = MEMORY[0x1EEE9AC00](v42);
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v12;
  v13 = sub_1A957CB28();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*a1 + 104);
  v44 = a1;
  if (v18(v15))
  {
    swift_getObjectType();
    sub_1A957CB58();
    swift_unknownObjectRelease();
  }

  sub_1A9387478(0, &unk_1ED96FD20, 0x1E69E9630);
  v19 = sub_1A957CB18();
  v20 = v44;
  v21 = (*(*v44 + 152))(v19);
  sub_1A957CB38();

  (*(v14 + 8))(v17, v13);
  v22 = sub_1A957BF58();
  v23 = (*(*v20 + 128))(v22) * 1000.0;
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v23 < 9.22337204e18)
  {
    *v9 = v23;
    v24 = v37;
    v25 = v37[13];
    v25(v9, *MEMORY[0x1E69E7F38], v5);
    v26 = v41;
    v27 = v43;
    sub_1A957BF68();
    v28 = v24[1];
    v28(v9, v5);
    v29 = v9;
    v30 = *(v45 + 8);
    v45 += 8;
    v37 = v30;
    (v30)(v27, v42);
    ObjectType = swift_getObjectType();
    v43 = ObjectType;
    v25(v29, *MEMORY[0x1E69E7F40], v5);
    v32 = v36;
    *v36 = 0;
    v25(v32, *MEMORY[0x1E69E7F28], v5);
    MEMORY[0x1AC585AB0](v26, v29, v32, ObjectType);
    v28(v32, v5);
    v28(v29, v5);
    aBlock[4] = v38;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A93C80E8;
    aBlock[3] = &unk_1F1CF9CB8;
    _Block_copy(aBlock);
    v46 = MEMORY[0x1E69E7CC0];
    sub_1A94BCAA4(qword_1ED96FED0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

    sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
    sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
    sub_1A957CE08();
    sub_1A957BF98();
    swift_allocObject();
    sub_1A957BF88();

    sub_1A957CB48();

    sub_1A957CB68();
    v33 = *(*v44 + 112);
    v34 = swift_unknownObjectRetain();
    v33(v34);
    swift_unknownObjectRelease();
    (v37)(v41, v42);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1A94B9B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A94B9B1C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1A94B9B94(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void sub_1A94B9C2C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1A93B5100();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1A94B9C94(uint64_t *a1)
{
  v2 = *(*a1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-v7];
  (*(v3 + 16))(v6);
  v9 = (*(*a1 + 128))(v11);
  sub_1A957C938();
  sub_1A957C8D8();
  (*(v3 + 8))(v8, v2);
  return v9(v11, 0);
}

void sub_1A94B9E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v4));
  sub_1A94BCF58();
  os_unfair_lock_unlock((a3 + v4));
}

void sub_1A94B9F14()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1A93BC800();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1A94B9F7C(void *a1, uint64_t *a2)
{
  v23 = *a2;
  v4 = *(v23 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = sub_1A957CC58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_1A93780F4(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v13);
  (*(v15 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1A93981E4(v25);
  sub_1A957C3C8();
  v16 = (v5 + 48);
  v17 = (v5 + 32);
  v18 = (v5 + 8);
  while (1)
  {
    sub_1A9396054(v25, AssociatedTypeWitness);
    sub_1A957CCB8();
    if ((*v16)(v12, 1, v4) == 1)
    {
      break;
    }

    (*v17)(v22, v12, v4);
    v19 = (*(*a2 + 128))(v24);
    sub_1A957C938();
    sub_1A957C8D8();
    (*v18)(v9, v4);
    v19(v24, 0);
  }

  return sub_1A9378138(v25);
}

void sub_1A94BA2E0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1A93BC800();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1A94BA348(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = sub_1A957CC58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = (*(v2 + 128))(v9);
  sub_1A957C938();
  sub_1A957C8E8();
  (*(v4 + 8))(v6, v3);
  return v7(v9, 0);
}

uint64_t sub_1A94BA4B8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a1;
  v5[3] = a2;
  sub_1A957C938();
  sub_1A94B9E5C(sub_1A94BC710, v5, v3);
  return v5[7];
}

uint64_t sub_1A94BA554()
{
  v1 = *(v0 + 16);
  sub_1A957C938();
  sub_1A94B9E5C(sub_1A94BC8E8, v0, v1);
  return v3;
}

uint64_t sub_1A94BA5E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A94BA628()
{
  v0 = swift_allocObject();
  sub_1A94BA660();
  return v0;
}

uint64_t *sub_1A94BA660()
{
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = sub_1A957C008();
  return v0;
}

void sub_1A94BA6DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_1A94BCA7C(v2);
}

uint64_t sub_1A94BA6EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A957C838();
  v4 = sub_1A957CC58();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A94BA7C8(uint64_t a1)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A957C838();
  v4 = sub_1A957CC58();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1A94BA8AC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v46 = *v1;
  v2 = *(v46 + 80);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v44 = sub_1A957C7F8();
  v37 = *(v44 - 8);
  v3 = MEMORY[0x1EEE9AC00](v44);
  v5 = &v35 - v4;
  v6 = *(v2 - 8);
  v36 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v35 - v7;
  v9 = sub_1A957C838();
  v10 = sub_1A957CC58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v43 = (&v35 - v11);
  v45 = sub_1A957C808();
  v42 = *(v45 - 8);
  v12 = MEMORY[0x1EEE9AC00](v45);
  v14 = &v35 - v13;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v18 = sub_1A957C868();
  v39 = *(v18 - 8);
  v40 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  [*(v1 + *(v46 + 120)) lock];
  sub_1A94BAED4(v14);
  v38 = v20;
  sub_1A957C7E8();
  (*(v42 + 8))(v14, v45);
  v21 = *(v15 + 16);
  v22 = v43;
  v45 = v17;
  v21(v43, v17, v9);
  v42 = v15;
  v23 = *(v15 + 56);
  v46 = v9;
  v23(v22, 0, 1, v9);
  sub_1A94BA7C8(v22);
  v24 = *(*v1 + 13);
  swift_beginAccess();
  v43 = v1;
  v25 = *(v1 + v24);

  if (sub_1A957C558())
  {
    v26 = 0;
    v27 = (v37 + 8);
    do
    {
      v28 = sub_1A957C528();
      sub_1A957C4E8();
      if (v28)
      {
        (*(v6 + 16))(v8, v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v2);
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1A957CF18();
        if (v36 != 8)
        {
          __break(1u);
          return result;
        }

        v47[0] = result;
        (*(v6 + 16))(v8, v47, v2);
        swift_unknownObjectRelease();
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      sub_1A957C818();
      (*v27)(v5, v44);
      ++v26;
    }

    while (v29 != sub_1A957C558());
  }

  v31 = v43;
  swift_beginAccess();
  sub_1A957C578();
  sub_1A957C568();
  swift_endAccess();
  v32 = v31[2];
  if (v32 == 1)
  {
    (*(v42 + 8))(v45, v46);
  }

  else
  {
    v47[0] = v31[2];
    sub_1A94BCA6C(v32);
    v34 = v45;
    v33 = v46;
    sub_1A957C828();
    (*(v42 + 8))(v34, v33);
  }

  (*(v39 + 32))(v41, v38, v40);
  return [*(v31 + *(*v31 + 15)) unlock];
}

uint64_t sub_1A94BAED4@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8790];
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v4 = sub_1A957C808();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

id sub_1A94BAF78(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v21 - v5;
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v6 = sub_1A957C7F8();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = sub_1A957C838();
  v10 = sub_1A957CC58();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - v16;
  [*(v2 + *(v3 + 120)) lock];
  sub_1A94BA6EC(v14);
  v18 = (*(v15 + 48))(v14, 1, v9);
  v19 = (v23 + 16);
  if (v18 == 1)
  {
    (*(v11 + 8))(v14, v10);
    (*v19)(v25, v24, v4);
    swift_beginAccess();
    sub_1A957C578();
    sub_1A957C548();
    swift_endAccess();
  }

  else
  {
    (*(v15 + 32))(v17, v14, v9);
    (*v19)(v25, v24, v4);
    sub_1A957C818();
    (*(v21 + 8))(v8, v22);
    (*(v15 + 8))(v17, v9);
  }

  return [*(v2 + *(*v2 + 120)) unlock];
}

id sub_1A94BB364(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v5 = sub_1A957C838();
  v6 = sub_1A957CC58();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = v18 - v12;
  [*(v2 + *(v4 + 120)) lock];
  v14 = a1;
  v15 = v2[2];
  v2[2] = a1;
  sub_1A94BCA7C(v15);
  sub_1A94BA6EC(v10);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v11 + 32))(v13, v10, v5);
    v18[1] = a1;
    v16 = a1;
    sub_1A957C828();
    (*(v11 + 8))(v13, v5);
  }

  return [*(v2 + *(*v2 + 120)) unlock];
}

id *SuspendableStream.deinit()
{
  (*(*v0 + 34))();
  sub_1A94BCA7C(v0[2]);
  v1 = *(*v0 + 12);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A957C838();
  v2 = sub_1A957CC58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SuspendableStream.__deallocating_deinit()
{
  SuspendableStream.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A94BB788()
{
  v0 = swift_allocObject();
  sub_1A94BB7C0();
  return v0;
}

char *sub_1A94BB7C0()
{
  v1 = *v0;
  *(v0 + 2) = 1;
  v2 = *(v1 + 96);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v3 = sub_1A957C838();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = *(*v0 + 104);
  *&v0[v4] = sub_1A957C508();
  v0[*(*v0 + 112)] = 2;
  v5 = *(*v0 + 120);
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  return v0;
}

uint64_t sub_1A94BB8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A94BB91C, v3, 0);
}

uint64_t sub_1A94BB91C()
{
  v1 = *(v0[5] + 112);
  v5 = (v0[3] + *v0[3]);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1A94BBA20;
  v3 = v0[2];

  return v5(v3, v1);
}

uint64_t sub_1A94BBA20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A94BBB14(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A94BBB70(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_1A94BBBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AXSendableLockBox(0, a2, a3, a4);
  v5 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  *(v5 + 112) = a1;
  return v5;
}

uint64_t sub_1A94BBC00()
{
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t withRetry<A>(startDelay:multiplier:maxDelay:maxAttempts:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 88) = a2;
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 64) = a5;
  *(v7 + 56) = a1;
  v8 = sub_1A957D008();
  *(v7 + 112) = v8;
  *(v7 + 120) = *(v8 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v9 = sub_1A957D018();
  *(v7 + 144) = v9;
  *(v7 + 152) = *(v9 - 8);
  *(v7 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94BBD8C, 0, 0);
}

void sub_1A94BBD8C()
{
  v1 = v0[11];
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = v0[12];
    v0[23] = v0[8];
    v0[21] = MEMORY[0x1E69E7CC0];
    v0[22] = 0;
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_1A94BBF30;
    v4 = v0[7];

    v7(v4);
  }

  else
  {
    sub_1A94BCAEC();
    swift_allocError();
    *v5 = MEMORY[0x1E69E7CC0];
    swift_willThrow();

    v6 = v0[1];

    v6();
  }
}

uint64_t sub_1A94BBF30()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A94BC098, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A94BC098()
{
  v1 = *(v0 + 200);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1A94BC938(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1A94BC938((v4 > 1), v5 + 1, 1, v3);
  }

  *(v0 + 208) = v3;
  v6 = *(v0 + 200);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v9 = *(v0 + 112);
  v3[2] = v5 + 1;
  v3[v5 + 4] = v6;
  v10 = sub_1A957D5A8();
  v12 = v11;
  sub_1A957D468();
  *(v0 + 40) = v10;
  *(v0 + 48) = v12;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v13 = sub_1A94BCAA4(&qword_1EB385E98, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1A957D448();
  sub_1A94BCAA4(&qword_1EB385EA0, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1A957D028();
  v14 = *(v8 + 8);
  *(v0 + 216) = v14;
  *(v0 + 224) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v7, v9);
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  *v15 = v0;
  v15[1] = sub_1A94BC2DC;
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);

  return MEMORY[0x1EEE6DE58](v17, v0 + 16, v16, v13);
}

uint64_t sub_1A94BC2DC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    (*(v2 + 216))(*(v2 + 136), *(v2 + 112));
    v3 = sub_1A94BC60C;
  }

  else
  {
    v5 = *(v2 + 152);
    v4 = *(v2 + 160);
    v6 = *(v2 + 144);
    (*(v2 + 216))(*(v2 + 136), *(v2 + 112));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1A94BC434;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A94BC434()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 176) + 1;

  if (v5 == v2)
  {
    v6 = *(v0 + 208);
    sub_1A94BCAEC();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = v1 * v4;
    if (v1 * v4 > v3)
    {
      v10 = v3;
    }

    v11 = *(v0 + 208);
    v12 = *(v0 + 176) + 1;
    *(v0 + 184) = v10;
    *(v0 + 168) = v11;
    *(v0 + 176) = v12;
    v15 = (*(v0 + 96) + **(v0 + 96));
    v13 = swift_task_alloc();
    *(v0 + 192) = v13;
    *v13 = v0;
    v13[1] = sub_1A94BBF30;
    v14 = *(v0 + 56);

    return v15(v14);
  }
}

uint64_t sub_1A94BC60C()
{
  v1 = v0[25];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A94BC710@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *v5;
  if (v4)
  {
    v8 = *(v2 + 24);
    v9 = *(v6 + 112);

    v9(v10);

    v11 = sub_1A957C8C8();
    sub_1A93CF5C8(v4, v8);
    v12 = (*(*v5 + 128))(v16);
    sub_1A957C938();
    sub_1A957C908();
    v12(v16, 0);
    v13 = v8;
    v3 = a1;
    result = sub_1A93CF5C8(v4, v13);
  }

  else
  {
    v11 = (*(v6 + 112))();
    v15 = (*(*v5 + 128))(v16);
    sub_1A957C938();
    sub_1A957C928();
    result = v15(v16, 0);
  }

  *v3 = v11;
  return result;
}

uint64_t sub_1A94BC8E8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 112))();
  *a1 = result;
  return result;
}

void *sub_1A94BC938(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387F38, &qword_1A95952E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1A94BCA6C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1A94BCA7C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1A94BCAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A94BCAEC()
{
  result = qword_1EB387EC8;
  if (!qword_1EB387EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387EC8);
  }

  return result;
}

uint64_t sub_1A94BCBD0(uint64_t a1)
{
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A957C838();
  result = sub_1A957CC58();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A94BCD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A94BCDD8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A94BCDFC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A94BCE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1A94BCEB4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t TTSMarkup.Emphasis.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Emphasis.init(_:)@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v29, 0, v29, &v25);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v5 = MEMORY[0x1E69E7D40];
  if (!*((*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4) + 16) || (sub_1A937A490(0x6C6576656CLL, 0xE500000000000000), (v6 & 1) == 0))
  {

    goto LABEL_21;
  }

  v7 = sub_1A957D158();

  if (v7 > 2)
  {
LABEL_21:

    result = sub_1A937B960(v26, &qword_1EB3868E8, &unk_1A958F280);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    return result;
  }

  v28 = v7;
  v9 = (*((*v5 & *a1) + 0x100))(v8);
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_24;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2; v11; i = a2)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1AC585DE0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_1A93D1250(&v20);

      if (v21)
      {
        sub_1A932D070(&v20, &v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1A93ADC90(0, v13[2] + 1, 1, v13);
        }

        a2 = v13[2];
        v17 = v13[3];
        if (a2 >= v17 >> 1)
        {
          v13 = sub_1A93ADC90((v17 > 1), a2 + 1, 1, v13);
        }

        v13[2] = a2 + 1;
        sub_1A932D070(&v22, &v13[5 * a2 + 4]);
      }

      else
      {
        sub_1A937B960(&v20, &qword_1EB3868E8, &unk_1A958F280);
      }

      ++v12;
      if (v16 == v11)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v11 = sub_1A957CE48();
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v23 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v24 = &protocol witness table for <A> [A];

  *&v22 = v13;
  sub_1A93A38D8(&v22, v26);
  sub_1A94BDC98(&v25, i);
  return sub_1A94BDCD0(&v25);
}

uint64_t TTSMarkup.Emphasis.Level.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t TTSMarkup.Emphasis.Level.description.getter()
{
  v1 = 0x6574617265646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x64656375646572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E6F727473;
  }
}

uint64_t sub_1A94BD40C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6574617265646F6DLL;
  if (v2 != 1)
  {
    v4 = 0x64656375646572;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E6F727473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6574617265646F6DLL;
  if (*a2 != 1)
  {
    v8 = 0x64656375646572;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E6F727473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}

uint64_t sub_1A94BD50C()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94BD5AC(uint64_t a1)
{
  sub_1A957C228();
}

uint64_t sub_1A94BD638(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

void sub_1A94BD6E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6574617265646F6DLL;
  if (v2 != 1)
  {
    v5 = 0x64656375646572;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E6F727473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A94BD73C()
{
  v1 = 0x6574617265646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x64656375646572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E6F727473;
  }
}

uint64_t TTSMarkup.Emphasis.init(_:speech:)@<X0>(char *a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, void *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  v6 = SpeechContext.init<each A>(_:)(&v9, 0, &v9, a3);
  *++v4 = 0u;
  v4[4] = 0;
  *(v4 + 1) = 0u;
  *(v4 + 40) = v5;
  a2(v8, v6);
  return sub_1A93A38D8(v8, v4);
}

unint64_t TTSMarkup.Emphasis.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x6C6576656CLL;
  v2 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v3 = *(v0 + 48);
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6574617265646F6DLL;
  if (v3 != 1)
  {
    v6 = 0x64656375646572;
    v5 = 0xE700000000000000;
  }

  v7 = v3 == 0;
  if (*(v0 + 48))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x676E6F727473;
  }

  if (!v7)
  {
    v4 = v5;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v4;
  v9 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(v2, &qword_1EB3868E0, &qword_1A95885D0);
  return v9;
}

uint64_t TTSMarkup.Emphasis.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = &type metadata for TTSMarkup.Emphasis;
  v7[4] = &protocol witness table for TTSMarkup.Emphasis;
  v7[0] = swift_allocObject();
  sub_1A94BDC98(v3, v7[0] + 16);
  TTSMarkupVisitor.visit(_:)(v7, a2, a3);
  return sub_1A9378138(v7);
}

{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

unint64_t sub_1A94BDAC8()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x6C6576656CLL;
  v2 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v3 = *(v0 + 48);
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6574617265646F6DLL;
  if (v3 != 1)
  {
    v6 = 0x64656375646572;
    v5 = 0xE700000000000000;
  }

  v7 = v3 == 0;
  if (*(v0 + 48))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x676E6F727473;
  }

  if (!v7)
  {
    v4 = v5;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v4;
  v9 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(v2, &qword_1EB3868E0, &qword_1A95885D0);
  return v9;
}

uint64_t sub_1A94BDBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Emphasis.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A94BDD04()
{
  result = qword_1EB387FA0;
  if (!qword_1EB387FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387FA0);
  }

  return result;
}

uint64_t sub_1A94BDD58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A94BDDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1A94BDE14()
{
  result = [objc_allocWithZone(type metadata accessor for CoreSynthesisVoiceShim()) init];
  qword_1EB389560 = result;
  return result;
}

id CoreSynthesisVoiceShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CoreSynthesisVoiceShim.shared.getter()
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EB389560;

  return v0;
}

void static CoreSynthesisVoiceShim.shared.setter(uint64_t a1)
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB389560;
  qword_1EB389560 = a1;
}

uint64_t (*static CoreSynthesisVoiceShim.shared.modify(uint64_t a1))(void)
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1A94BE100@<X0>(void *a1@<X8>)
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB389560;
  *a1 = qword_1EB389560;

  return v2;
}

void sub_1A94BE18C(id *a1)
{
  v1 = qword_1EB389558;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EB389560;
  qword_1EB389560 = v2;
}

uint64_t sub_1A94BE214()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource);
  }

  else
  {
    v3 = v0;
    type metadata accessor for VoiceDatabaseClient();
    v4 = sub_1A938983C();
    v2 = VoiceDatabaseClient.__allocating_init(readOnly:)(v4 & 1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_1A94BE2A4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A94BE214();
  return sub_1A94BE2EC;
}

char *sub_1A94BE2F8()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver);
  }

  else
  {
    type metadata accessor for VoiceResolver(0);
    v3 = v0;
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
    v9[3] = type metadata accessor for VoiceDatabaseClient();
    v9[4] = &protocol witness table for VoiceDatabaseClient;
    v9[0] = v4;
    sub_1A9387410();
    sub_1A937829C(&unk_1EB388360, qword_1A958B690);
    sub_1A93B0F54();
    sub_1A957CE08();
    v8[0] = v8[1];
    sub_1A957CE08();
    v7[0] = v7[1];
    sub_1A9431DA4(&v6);
    v2 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v9, v8, v7, &v6);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_1A94BE48C(char **a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A94BE2F8();
  return sub_1A94BE4D4;
}

uint64_t sub_1A94BE4E0()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver);
  }

  else
  {
    type metadata accessor for VoiceResolver(0);
    v3 = v0;
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
    v8[3] = type metadata accessor for VoiceDatabaseClient();
    v8[4] = &protocol witness table for VoiceDatabaseClient;
    v8[0] = v4;
    v7 = *sub_1A9493C84();
    sub_1A9431DA4(&v6);
    v2 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:sortMode:)(v8, &v7, &v6);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_1A94BE5E4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A94BE4E0();
  return sub_1A94BE62C;
}

uint64_t sub_1A94BE638()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver);
  }

  else
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_1A94BE6E4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A94BE638();
  return sub_1A94BE72C;
}

char *sub_1A94BE738()
{
  v1 = v0;
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A9588500;
  *(v2 + 32) = *sub_1A9493C6C();
  *(v2 + 40) = *sub_1A9493D5C();
  *(v2 + 48) = *sub_1A9493D8C();
  v12[0] = v2;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  result = sub_1A957CE08();
  if (*MEMORY[0x1E69D5608])
  {
    v4 = *MEMORY[0x1E69D5608];
    v5 = TCCAccessPreflight();

    if (v5)
    {
      v6 = sub_1A949016C();
      sub_1A93B0A74(v12, *v6);
    }

    type metadata accessor for VoiceResolver(0);
    v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
    v12[3] = type metadata accessor for VoiceDatabaseClient();
    v12[4] = &protocol witness table for VoiceDatabaseClient;
    v12[0] = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A9587160;
    *(v8 + 32) = *sub_1A9493C84();
    sub_1A957CE08();
    v10 = v12[5];
    v11[0] = v11[1];
    sub_1A9431DA4(&v9);
    return VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v12, v11, &v10, &v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A94BE944(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94BE96C, 0, 0);
}

uint64_t sub_1A94BE96C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 872)) + 0xC0))();
  *(v0 + 880) = v1;
  v6 = (*(*v1 + 360) + **(*v1 + 360));
  v2 = swift_task_alloc();
  *(v0 + 888) = v2;
  *v2 = v0;
  v2[1] = sub_1A94BEAE0;
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);

  return v6(v0 + 576, v4, v3);
}

uint64_t sub_1A94BEAE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94C5F88, 0, 0);
}

uint64_t sub_1A94BED80(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1A957C0F8();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94C5F80;

  return sub_1A94BE944(v5, v7);
}

uint64_t sub_1A94BEE84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xE0);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1A938E6B8;

  return v10(a3, a4);
}

uint64_t sub_1A94BEFF8(uint64_t a1, uint64_t a2)
{
  v3[214] = v2;
  v3[213] = a2;
  v3[212] = a1;
  v4 = sub_1A957B308();
  v3[215] = v4;
  v3[216] = *(v4 - 8);
  v3[217] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94BF0C0, 0, 0);
}

uint64_t sub_1A94BF0C0()
{
  if (*(v0 + 1704))
  {
    v1 = *((*MEMORY[0x1E69E7D40] & **(v0 + 1712)) + 0xC0);

    v3 = v1(v2);
    *(v0 + 1744) = v3;
    sub_1A957B1B8();
    v11 = (*(*v3 + 416) + **(*v3 + 416));
    v4 = swift_task_alloc();
    *(v0 + 1752) = v4;
    *v4 = v0;
    v4[1] = sub_1A94BF3BC;
    v5 = *(v0 + 1736);

    return v11(v0 + 1416, v5);
  }

  else
  {
    v7 = *((*MEMORY[0x1E69E7D40] & **(v0 + 1712)) + 0xC0);
    *(v0 + 1760) = v7();
    v8 = v7();
    *(v0 + 1768) = v8;
    v12 = (*(*v8 + 200) + **(*v8 + 200));
    v9 = swift_task_alloc();
    *(v0 + 1776) = v9;
    *v9 = v0;
    v9[1] = sub_1A94BF608;
    v10 = *(v0 + 1736);

    return v12(v10);
  }
}

uint64_t sub_1A94BF3BC()
{
  v1 = *(*v0 + 1736);
  v2 = *(*v0 + 1728);
  v3 = *(*v0 + 1720);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A94BF530, 0, 0);
}

uint64_t sub_1A94BF530()
{
  v5 = v0;
  memcpy(v0 + 142, v0 + 177, 0x118uLL);
  memcpy(v0 + 107, v0 + 177, 0x118uLL);
  if (sub_1A932D058((v0 + 107)) == 1)
  {
    v1 = 0;
  }

  else
  {
    memcpy(__dst, v0 + 107, sizeof(__dst));
    v1 = sub_1A95025A4();
    sub_1A937B960((v0 + 142), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A94BF608()
{
  v1 = *v0;
  v2 = *(*v0 + 1760);
  v3 = *v0;

  v7 = (*(*v2 + 416) + **(*v2 + 416));
  v4 = swift_task_alloc();
  *(v1 + 1784) = v4;
  *v4 = v3;
  v4[1] = sub_1A94BF824;
  v5 = *(v1 + 1736);

  return v7(v1 + 576, v5);
}

uint64_t sub_1A94BF824()
{
  v1 = *(*v0 + 1736);
  v2 = *(*v0 + 1728);
  v3 = *(*v0 + 1720);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A94BF998, 0, 0);
}

uint64_t sub_1A94BF998()
{
  v5 = v0;
  memcpy(v0 + 37, v0 + 72, 0x118uLL);
  memcpy(v0 + 2, v0 + 72, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = 0;
  }

  else
  {
    memcpy(__dst, v0 + 2, sizeof(__dst));
    v1 = sub_1A95025A4();
    sub_1A937B960((v0 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A94BFBF8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1A957C0F8();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94BFCDC;

  return sub_1A94BEFF8(a1, v7);
}

uint64_t sub_1A94BFCDC(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A94BFE44(uint64_t a1, uint64_t a2)
{
  sub_1A94C46C8();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  v6 = v2;
  sub_1A937829C(&qword_1EB387FD0, &qword_1A9595480);
  sub_1A957B9C8();

  return v8;
}

uint64_t sub_1A94BFF0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xF0);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1A938E6B8;

  return v10(a3, a4);
}

uint64_t sub_1A94C0148()
{
  v1[3] = v0;
  v2 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C0214, 0, 0);
}

uint64_t sub_1A94C0214()
{
  v1 = *(*((*MEMORY[0x1E69E7D40] & **(v0 + 24)) + 0xC0))();
  (*(v1 + 352))();

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1A94C0338;
  v3 = *(v0 + 32);

  return MEMORY[0x1EEDE9B70](v0 + 16, v3);
}

uint64_t sub_1A94C0338()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A94C0490, 0, 0);
}

void sub_1A94C0490()
{
  v9 = v0;
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v1 + 32);
    while (v4 < *(v1 + 16))
    {
      memcpy(__dst, v5, sizeof(__dst));
      sub_1A95025A4();
      MEMORY[0x1AC585360]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A957C4F8();
      }

      ++v4;
      sub_1A957C538();
      v5 += 280;
      if (v3 == v4)
      {
        v2 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v6 = *(v0 + 8);

    v6(v2);
  }
}

uint64_t sub_1A94C074C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A94C07F4;

  return sub_1A94C0148();
}

uint64_t sub_1A94C07F4(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  sub_1A9387478(0, &qword_1EB385ED8, 0x1E69584F8);
  v4 = sub_1A957C4B8();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A94C0970()
{
  sub_1A94C46C8();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_1A937829C(&qword_1EB387FD8, &qword_1A95954C0);
  sub_1A957B9C8();

  return v3;
}

uint64_t sub_1A94C0A1C(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x100);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A938E6B8;

  return v6();
}

uint64_t sub_1A94C0C4C(char a1)
{
  *(v2 + 600) = v1;
  *(v2 + 640) = a1;
  v3 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  *(v2 + 608) = v3;
  *(v2 + 616) = *(v3 - 8);
  *(v2 + 624) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C0D1C, 0, 0);
}

uint64_t sub_1A94C0D1C()
{
  v1 = *(*((*MEMORY[0x1E69E7D40] & **(v0 + 600)) + 0xA8))();
  (*(v1 + 352))();

  v2 = swift_task_alloc();
  *(v0 + 632) = v2;
  *v2 = v0;
  v2[1] = sub_1A94C0E40;
  v3 = *(v0 + 608);

  return MEMORY[0x1EEDE9B70](v0 + 576, v3);
}

uint64_t sub_1A94C0E40()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 608);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A94C0F98, 0, 0);
}

void sub_1A94C0F98()
{
  v14 = v0;
  v1 = *(v0 + 576);
  v2 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 32;
    do
    {
      v6 = (v5 + 280 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v0 + 640);
        memcpy((v0 + 16), v6, 0x118uLL);
        v4 = v7 + 1;
        v9 = *(v0 + 80);
        sub_1A937B3DC(v0 + 16, v0 + 296);
        *(v0 + 584) = *sub_1A9493C6C();
        *(v0 + 592) = v9;
        sub_1A9387410();
        if (sub_1A957CD88() & 1) == 0 || (v8)
        {
          break;
        }

        sub_1A937B48C(v0 + 16);
        v6 += 280;
        ++v7;
        if (v3 == v4)
        {
          goto LABEL_12;
        }
      }

      memcpy(__dst, (v0 + 16), sizeof(__dst));
      sub_1A95025A4();
      v10 = sub_1A937B48C(v0 + 16);
      MEMORY[0x1AC585360](v10);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A957C4F8();
      }

      sub_1A957C538();
      v2 = v12;
      v5 = v1 + 32;
    }

    while (v3 - 1 != v7);
  }

LABEL_12:

  v11 = *(v0 + 8);

  v11(v2);
}

uint64_t sub_1A94C12F8(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1A94C5F84;

  return sub_1A94C0C4C(a1);
}

uint64_t sub_1A94C13E4(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x110);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A938E6B8;

  return v8(a3);
}

uint64_t sub_1A94C1638(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94C1660, 0, 0);
}

uint64_t sub_1A94C1660()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 872)) + 0xA8))();
  *(v0 + 880) = v1;
  v6 = (*(*v1 + 360) + **(*v1 + 360));
  v2 = swift_task_alloc();
  *(v0 + 888) = v2;
  *v2 = v0;
  v2[1] = sub_1A94C17D4;
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);

  return v6(v0 + 576, v4, v3);
}

uint64_t sub_1A94C17D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94C18EC, 0, 0);
}

uint64_t sub_1A94C18EC()
{
  v6 = v0;
  memcpy(v0 + 37, v0 + 72, 0x118uLL);
  memcpy(v0 + 2, v0 + 72, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = 0;
  }

  else
  {
    memcpy(__dst, v0 + 2, sizeof(__dst));
    v2 = sub_1A95025A4();
    sub_1A937B960((v0 + 37), &unk_1EB387BC0, &qword_1A9587E30);
    v1 = v2;
  }

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1A94C1B44(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1A957C0F8();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94C1C18;

  return sub_1A94C1638(v5, v7);
}

uint64_t sub_1A94C1C18(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A94C1DB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x120);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1A938E8EC;

  return v10(a3, a4);
}

uint64_t sub_1A94C1F2C(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94C1F54, 0, 0);
}

uint64_t sub_1A94C1F54()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 872)) + 0x90))();
  *(v0 + 880) = v1;
  v6 = (*(*v1 + 360) + **(*v1 + 360));
  v2 = swift_task_alloc();
  *(v0 + 888) = v2;
  *v2 = v0;
  v2[1] = sub_1A94C20C8;
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);

  return v6(v0 + 296, v4, v3);
}

uint64_t sub_1A94C20C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94C21E0, 0, 0);
}

uint64_t sub_1A94C21E0()
{
  v8 = v0;
  memcpy(v0 + 2, v0 + 37, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = 0;
  }

  else
  {
    memcpy(__dst, v0 + 2, sizeof(__dst));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v2);
    v4 = v3;
    memcpy(v0 + 72, __dst, 0x118uLL);
    sub_1A937B48C((v0 + 72));
    v1 = v4;
  }

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_1A94C2428(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1A957C0F8();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94C5F80;

  return sub_1A94C1F2C(v5, v7);
}

uint64_t sub_1A94C252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  sub_1A94C46C8();
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = a1;
  v11[4] = a2;
  v12 = v6;

  sub_1A937829C(a4, a5);
  sub_1A957B9C8();

  return v14;
}

uint64_t sub_1A94C25F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x130);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1A938E6B8;

  return v10(a3, a4);
}

id sub_1A94C2774(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v10 = sub_1A957C0F8();
  v12 = v11;
  sub_1A94C46C8();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v10;
  v13[4] = v12;
  v14 = a1;
  sub_1A937829C(a5, a6);
  sub_1A957B9C8();

  return v16;
}

uint64_t sub_1A94C2860(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 80) = a1;
  v3 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C2930, 0, 0);
}

uint64_t sub_1A94C2930()
{
  v1 = *(v0 + 32);
  if (*(v0 + 80) == 1)
  {
    v2 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))();
    (*(v2 + 352))();

    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1A94C2B34;
    v4 = *(v0 + 40);
    v5 = v0 + 24;
  }

  else
  {
    v6 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
    (*(v6 + 352))();

    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v7[1] = sub_1A94C2DD0;
    v4 = *(v0 + 40);
    v5 = v0 + 16;
  }

  return MEMORY[0x1EEDE9B70](v5, v4);
}

uint64_t sub_1A94C2B34()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A94C2C8C, 0, 0);
}

void sub_1A94C2C8C()
{
  v10 = v0;
  v1 = *(v0 + 24);
  v2 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v1 + 32);
    while (v4 < *(v1 + 16))
    {
      memcpy(__dst, v5, sizeof(__dst));
      CoreSynthesizer.Voice._bridgeToObjectiveC()(v6);
      MEMORY[0x1AC585360]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A957C4F8();
      }

      ++v4;
      sub_1A957C538();
      v5 += 280;
      if (v3 == v4)
      {
        v2 = v8;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v7 = *(v0 + 8);

    v7(v2);
  }
}

uint64_t sub_1A94C2DD0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A94C2F28, 0, 0);
}

void sub_1A94C2F28()
{
  v10 = v0;
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v1 + 32);
    while (v4 < *(v1 + 16))
    {
      memcpy(__dst, v5, sizeof(__dst));
      CoreSynthesizer.Voice._bridgeToObjectiveC()(v6);
      MEMORY[0x1AC585360]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A957C4F8();
      }

      ++v4;
      sub_1A957C538();
      v5 += 280;
      if (v3 == v4)
      {
        v2 = v8;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v7 = *(v0 + 8);

    v7(v2);
  }
}

uint64_t sub_1A94C31F0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1A94C32AC;

  return sub_1A94C2860(a1);
}

uint64_t sub_1A94C32AC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
  v4 = sub_1A957C4B8();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A94C3458(char a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_1A94C46C8();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = a1;
  v10 = v5;
  sub_1A937829C(a3, a4);
  sub_1A957B9C8();

  return v12;
}

uint64_t sub_1A94C3510(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x140);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A938E6B8;

  return v8(a3);
}

uint64_t sub_1A94C3764(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A957B308();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C3828, 0, 0);
}

uint64_t sub_1A94C3828()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0x90))();
  *(v0 + 64) = v1;

  sub_1A957B1B8();
  v5 = (*(*v1 + 424) + **(*v1 + 424));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1A94C39C4;
  v3 = *(v0 + 56);

  return v5(v3);
}

uint64_t sub_1A94C39C4(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 80) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A94C3B40, 0, 0);
}

uint64_t sub_1A94C3B40()
{
  v10 = v0;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1A957CFA8();
    v3 = (v1 + 32);
    do
    {
      memcpy(__dst, v3, sizeof(__dst));
      CoreSynthesizer.Voice._bridgeToObjectiveC()(v4);
      sub_1A957CF78();
      sub_1A957CFB8();
      sub_1A957CFC8();
      sub_1A957CF88();
      v3 += 280;
      --v2;
    }

    while (v2);

    v5 = v8;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1A94C3DE8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1A957C0F8();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94C3EBC;

  return sub_1A94C3764(v5, v7);
}

uint64_t sub_1A94C3EBC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
  v4 = sub_1A957C4B8();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A94C4060(uint64_t a1, uint64_t a2)
{
  sub_1A94C46C8();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = v2;

  sub_1A937829C(&qword_1EB387FE8, &qword_1A9595530);
  sub_1A957B9C8();

  return v8;
}

uint64_t sub_1A94C4128(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x150);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1A938E6B8;

  return v10(a3, a4);
}

uint64_t sub_1A94C4390()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
  v3 = *((*v1 & *v0) + 0xC8);

  return v3(v2);
}

id CoreSynthesisVoiceShim.init()()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor;
  sub_1A957B978();
  swift_allocObject();
  *&v0[v1] = sub_1A957B968();
  *&v0[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource] = 0;
  *&v0[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver] = 0;
  *&v0[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver] = 0;
  *&v0[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CoreSynthesisVoiceShim();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CoreSynthesisVoiceShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSynthesisVoiceShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A94C46C8()
{
  result = qword_1EB385FE8;
  if (!qword_1EB385FE8)
  {
    sub_1A957B978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385FE8);
  }

  return result;
}

uint64_t sub_1A94C4720(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94BEE84(a1, v4, v5, v6);
}

uint64_t sub_1A94C47D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94BFF0C(a1, v4, v5, v6);
}

uint64_t sub_1A94C4888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return sub_1A94C0A1C(a1, v4);
}

uint64_t sub_1A94C4928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A94C13E4(a1, v4, v5);
}

uint64_t sub_1A94C49D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94C1DB0(a1, v4, v5, v6);
}

uint64_t sub_1A94C4A8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94C25F8(a1, v4, v5, v6);
}

uint64_t sub_1A94C4B40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A94C3510(a1, v4, v5);
}

uint64_t sub_1A94C4BF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94C4128(a1, v4, v5, v6);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.voice(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A9431DCC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.voice(languageCode:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A9431DCC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.publicVoices()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x100);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9431DCC;

  return v5();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.internalVoices(includingSiri:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A9431DCC;

  return v7(a1);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.internalVoice(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x120);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93916A8;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.resourceVoice(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x130);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A9431DCC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.resourceVoices(onlyInstalled:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x140);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A9431DCC;

  return v7(a1);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.resources(languageCode:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x150);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A9431DCC;

  return v9(a1, a2);
}

uint64_t sub_1A94C58B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C3DE8(v2, v3, v4);
}

uint64_t sub_1A94C5968()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C31F0(v2, v4, v3);
}

uint64_t sub_1A94C5A1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C2428(v2, v3, v4);
}

uint64_t sub_1A94C5AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A9382328;

  return sub_1A94C1DB0(a1, v4, v5, v6);
}

uint64_t sub_1A94C5B84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C1B44(v2, v3, v4);
}

uint64_t sub_1A94C5C38()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A94C5C78()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C12F8(v2, v4, v3);
}

uint64_t sub_1A94C5D2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A94C074C(v2, v3);
}

uint64_t sub_1A94C5DD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94BFBF8(v2, v3, v4);
}

uint64_t sub_1A94C5E8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A94C5ECC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94BED80(v2, v3, v4);
}

double sub_1A94C5F8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [v3 originalString];
  if (v7)
  {
    v8 = v7;
    a1 = sub_1A957C0F8();
    a2 = v9;
  }

  else if (a2)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  v10 = [v3 ignoreCase] ^ 1;
  v11 = [v3 phonemes];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A957C0F8();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v23 = a1;
      v24 = a2;
      v25 = v10;
      CoreSynthesizer.Substitution.init(search:ipa:)(&v23, v13, v15, a3);
      return result;
    }
  }

  v27[0] = a1;
  v27[1] = a2;
  v28 = v10;
  v18 = [v3 replacementString];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1A957C0F8();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = v20;
  v24 = v22;
  v26 = 1;
  *&result = CoreSynthesizer.Substitution.init(replacing:with:)(v27, &v23, a3).n128_u64[0];
  return result;
}

void sub_1A94C6100(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7CD0];
  v75 = MEMORY[0x1E69E7CD0];
  v4 = [v1 bundleIdentifiers];
  if (v4)
  {

    v5 = [v1 bundleIdentifiers];
    if (!v5)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v6 = v5;
    v7 = sub_1A957C8A8();

    v8 = *(v7 + 16);

    if (v8)
    {
      v74 = v3;
      v9 = [v2 bundleIdentifiers];
      if (!v9)
      {
LABEL_66:
        __break(1u);
        return;
      }

      v10 = v9;
      v11 = MEMORY[0x1E69E69B8];
      v12 = sub_1A957C8A8();

      v13 = 0;
      v14 = v12 + 56;
      v15 = 1 << *(v12 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v12 + 56);
      v18 = (v15 + 63) >> 6;
      v19 = MEMORY[0x1E69E6158];
      v67 = v12;
      while (v17)
      {
        v20 = v13;
LABEL_14:
        v21 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        sub_1A93B1F94(*(v12 + 48) + 40 * (v21 | (v20 << 6)), v72);
        v70[0] = v72[0];
        v70[1] = v72[1];
        v71 = v73;
        if (swift_dynamicCast())
        {
          v22 = v3;
          v23 = v2;
          v24 = v19;
          v25 = v11;
          v26 = v69[1];
          v27 = swift_allocObject();
          *(v27 + 16) = v69[0];
          *(v27 + 24) = v26;
          v11 = v25;
          v19 = v24;
          v2 = v23;
          v3 = v22;
          v12 = v67;
          sub_1A94C69A4(v70, v27);
        }

        v13 = v20;
      }

      while (1)
      {
        v20 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_62;
        }

        if (v20 >= v18)
        {

          v28 = v74;
          if (*(v74 + 16))
          {
            v29 = swift_allocObject();
            *(v29 + 16) = v28;
            sub_1A94C69A4(v72, v29 | 0x6000000000000000);
          }

          else
          {
          }

          break;
        }

        v17 = *(v14 + 8 * v20);
        ++v13;
        if (v17)
        {
          goto LABEL_14;
        }
      }
    }
  }

  *&v70[0] = 0;
  v30 = [v2 voiceIds];
  if (v30)
  {

    v31 = [v2 voiceIds];
    if (!v31)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v32 = v31;
    v33 = sub_1A957C8A8();

    v34 = 0;
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v33 + 56);
    v38 = (v35 + 63) >> 6;
    while (v37)
    {
      v39 = v34;
LABEL_29:
      v40 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v41 = (*(v33 + 48) + ((v39 << 10) | (16 * v40)));
      v42 = *v41;
      v43 = v41[1];
      v44 = *&v70[0];
      if (!*&v70[0])
      {
        v44 = v3;
      }

      *&v70[0] = v44;

      sub_1A93AB260(v72, v42, v43);
    }

    while (1)
    {
      v39 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v39 >= v38)
      {

        goto LABEL_34;
      }

      v37 = *(v33 + 56 + 8 * v39);
      ++v34;
      if (v37)
      {
        v34 = v39;
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_34:
  *&v72[0] = v3;
  v45 = [v2 languages];
  if (v45)
  {

    v46 = [v2 languages];
    if (!v46)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v47 = v46;
    v48 = sub_1A957C8A8();

    v49 = 0;
    v50 = 1 << *(v48 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v48 + 56);
    v53 = (v50 + 63) >> 6;
    while (v52)
    {
LABEL_46:
      v61 = sub_1A957C1A8() == 0x6F6E2D6F6ELL && v60 == 0xE500000000000000;
      if (v61 || (v62 = sub_1A957D3E8(), , , (v62 & 1) != 0))
      {
      }

      v52 &= v52 - 1;
      v54 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
      v55 = swift_allocBox();
      v57 = v56;
      v58 = *(v54 + 48);
      sub_1A957B1B8();
      *(v57 + v58) = *&v70[0];

      sub_1A94C69A4(v69, v55 | 0x2000000000000000);
    }

    while (1)
    {
      v59 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v59 >= v53)
      {

        v3 = *&v72[0];
        goto LABEL_53;
      }

      v52 = *(v48 + 56 + 8 * v59);
      ++v49;
      if (v52)
      {
        v49 = v59;
        goto LABEL_46;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_53:
  if (*(v3 + 16))
  {
    v63 = swift_allocObject();
    *(v63 + 16) = v3;
    sub_1A94C69A4(v69, v63 | 0x6000000000000000);
  }

  else
  {
  }

  v64 = v75;
  if (*(v75 + 16))
  {
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    v66 = v65 | 0x4000000000000000;
  }

  else
  {

    v66 = 0x8000000000000000;
  }

  *a1 = v66;
}

uint64_t sub_1A94C6720(unint64_t a1)
{
  v2 = type metadata accessor for CoreSynthesizer.Substitution(0);
  v19 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

  result = sub_1A957CE48();
  v5 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC8];
    v8 = &selRef_needsParameterSync;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC585DE0](v6, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v6 + 32);
      }

      v10 = v9;
      [v9 v8[113]];
      if (v11 >= 1)
      {
      }

      else
      {
        sub_1A94C6100(&v22);
        if (*(v7 + 16) && (v12 = sub_1A940F5D8(v22), (v13 & 1) != 0))
        {
          v14 = *(*(v7 + 56) + 8 * v12);
        }

        else
        {
          v14 = MEMORY[0x1E69E7CC0];
        }

        sub_1A94C5F8C(0, 0, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A9499E30(0, v14[2] + 1, 1, v14);
        }

        v16 = v14[2];
        v15 = v14[3];
        if (v16 >= v15 >> 1)
        {
          v14 = sub_1A9499E30((v15 > 1), v16 + 1, 1, v14);
        }

        v14[2] = v16 + 1;
        sub_1A94C77FC(v20, v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16);
        sub_1A94C6100(&v22);
        v17 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v7;
        sub_1A94C7534(v14, v17, isUniquelyReferenced_nonNull_native);

        v7 = v21;
        v8 = &selRef_needsParameterSync;
      }

      ++v6;
    }

    while (v5 != v6);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94C69A4(void *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1A94139E0();
  v5 = sub_1A957C058();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1A9413A34();
    while (1)
    {

      v9 = sub_1A957C098();

      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v4 + 48) + 8 * v7);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;

    sub_1A94C6D70(a2, v7, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1A94C6B18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&unk_1EB387FF0, &qword_1A9595718);
  result = sub_1A957CEA8();
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
      v25 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1A94139E0();
      result = sub_1A957C058();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v25;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero((v3 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A94C6D70(uint64_t result, unint64_t a2, char a3)
{
  v15 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A94C6B18(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1A94C6F08();
      goto LABEL_12;
    }

    sub_1A94C705C(v5 + 1);
  }

  v7 = *v3;
  sub_1A94139E0();
  result = sub_1A957C058();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    sub_1A9413A34();
    do
    {

      v10 = sub_1A957C098();

      if (v10)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v15;
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
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A94C6F08()
{
  v1 = v0;
  sub_1A937829C(&unk_1EB387FF0, &qword_1A9595718);
  v2 = *v0;
  v3 = sub_1A957CE98();
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

uint64_t sub_1A94C705C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&unk_1EB387FF0, &qword_1A9595718);
  result = sub_1A957CEA8();
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
      v23 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1A94139E0();

      result = sub_1A957C058();
      v16 = -1 << *(v5 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
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
          v22 = *(v11 + 8 * v18);
          if (v22 != -1)
          {
            v12 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v23;
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

uint64_t sub_1A94C7294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB3871F0, &qword_1A958BEE8);
  v29 = v4;
  result = sub_1A957D118();
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
      v30 = *(*(v5 + 48) + 8 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v29 & 1) == 0)
      {
      }

      sub_1A94139E0();
      result = sub_1A957C058();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v30;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v29 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A94C7534(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A940F5D8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A94C7294(v14, a3 & 1);
      v9 = sub_1A940F5D8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1A94C7694();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

void *sub_1A94C7694()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3871F0, &qword_1A958BEE8);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_1A94C77FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreSynthesizer.Substitution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VoiceDatabase.voice(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[110] = v3;
  v4[109] = a3;
  v4[108] = a2;
  v4[107] = a1;
  sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v4[111] = swift_task_alloc();
  type metadata accessor for VoiceQueryCriteria(0);
  v4[112] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C7934, v3, 0);
}

uint64_t sub_1A94C7934()
{
  v13 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = sub_1A957B308();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_1A9431DA8();
  sub_1A9431DA8();

  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(v5, v4, v2, &v11, &v12, v1);
  v10 = (*(*v3 + 392) + **(*v3 + 392));
  v7 = swift_task_alloc();
  v0[113] = v7;
  *v7 = v0;
  v7[1] = sub_1A94C7AFC;
  v8 = v0[112];

  return v10(v8);
}

uint64_t sub_1A94C7AFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 896);
  *(v4 + 912) = a1;
  *(v4 + 920) = v1;

  sub_1A9391040(v5);
  v6 = *(v3 + 880);
  if (v1)
  {
    v7 = sub_1A94C7D34;
  }

  else
  {
    v7 = sub_1A94C7C50;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1A94C7C50()
{
  v1 = v0[114];
  v2 = v0[107];
  if (*(v1 + 16))
  {
    memcpy(v0 + 2, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 2), (v0 + 37));

    memcpy(v2, v0 + 2, 0x118uLL);
    nullsub_23();
  }

  else
  {

    sub_1A93847E0((v0 + 72));
    memcpy(v2, v0 + 72, 0x118uLL);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A94C7D34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t VoiceDatabase.withVoice<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[145] = v5;
  v6[144] = a5;
  v6[143] = a4;
  v6[142] = a1;
  v9 = swift_task_alloc();
  v6[146] = v9;
  *v9 = v6;
  v9[1] = sub_1A94C7E60;

  return VoiceDatabase.voice(forIdentifier:)((v6 + 2), a2, a3);
}

uint64_t sub_1A94C7E60()
{
  v2 = *v1;
  *(*v1 + 1176) = v0;

  v3 = *(v2 + 1160);
  if (v0)
  {
    v4 = sub_1A94C8298;
  }

  else
  {
    v4 = sub_1A94C7F78;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A94C7F78()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  if (sub_1A932D058((v0 + 37)) == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[143];
    memcpy(v0 + 107, v0 + 37, 0x118uLL);
    v7 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[148] = v5;
    *v5 = v0;
    v5[1] = sub_1A94C811C;
    v6 = v0[142];

    return (v7)(v6, v0 + 107);
  }
}

uint64_t sub_1A94C811C()
{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  v3 = *(v2 + 1160);
  if (v0)
  {
    v4 = sub_1A94C82B0;
  }

  else
  {
    v4 = sub_1A94C8234;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A94C8234()
{
  sub_1A9384810(v0 + 576);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94C82B0()
{
  sub_1A9384810(v0 + 576);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t VoiceDatabase.download(voiceId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[143] = v3;
  v4[142] = a1;
  v7 = swift_task_alloc();
  v4[144] = v7;
  *v7 = v4;
  v7[1] = sub_1A94C83C8;

  return VoiceDatabase.voice(forIdentifier:)((v4 + 2), a2, a3);
}

uint64_t sub_1A94C83C8()
{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  v3 = *(v2 + 1144);
  if (v0)
  {
    v4 = sub_1A94C86C4;
  }

  else
  {
    v4 = sub_1A94C84E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A94C84E0()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  if (sub_1A932D058((v0 + 37)) == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[143];
    memcpy(v0 + 107, v0 + 37, 0x118uLL);
    v7 = (*(*v4 + 472) + **(*v4 + 472));
    v5 = swift_task_alloc();
    v0[146] = v5;
    *v5 = v0;
    v5[1] = sub_1A94C86DC;
    v6 = v0[142];

    return v7(v6, v0 + 107);
  }
}

uint64_t sub_1A94C86DC()
{
  v2 = *v1;
  *(*v1 + 1176) = v0;

  v3 = *(v2 + 1144);
  if (v0)
  {
    v4 = sub_1A94C87F4;
  }

  else
  {
    v4 = sub_1A94C9254;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A94C87F4()
{
  sub_1A9384810(v0 + 576);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t VoiceDatabase.cancelDownload(voiceId:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1136) = v2;
  v6 = swift_task_alloc();
  *(v3 + 1144) = v6;
  *v6 = v3;
  v6[1] = sub_1A94C8908;

  return VoiceDatabase.voice(forIdentifier:)(v3 + 16, a1, a2);
}

uint64_t sub_1A94C8908()
{
  v2 = *v1;
  *(*v1 + 1152) = v0;

  v3 = *(v2 + 1136);
  if (v0)
  {
    v4 = sub_1A94C8C00;
  }

  else
  {
    v4 = sub_1A94C8A20;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A94C8A20()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  if (sub_1A932D058((v0 + 37)) == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[142];
    memcpy(v0 + 107, v0 + 37, 0x118uLL);
    v6 = (*(*v4 + 464) + **(*v4 + 464));
    v5 = swift_task_alloc();
    v0[145] = v5;
    *v5 = v0;
    v5[1] = sub_1A94C8C18;

    return v6(v0 + 107);
  }
}

uint64_t sub_1A94C8C18()
{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  v3 = *(v2 + 1136);
  if (v0)
  {
    v4 = sub_1A94C8D30;
  }

  else
  {
    v4 = sub_1A94C9254;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A94C8D30()
{
  sub_1A9384810(v0 + 576);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t VoiceDatabase.purge(voiceId:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1136) = v2;
  v6 = swift_task_alloc();
  *(v3 + 1144) = v6;
  *v6 = v3;
  v6[1] = sub_1A94C8E44;

  return VoiceDatabase.voice(forIdentifier:)(v3 + 16, a1, a2);
}

uint64_t sub_1A94C8E44()
{
  v2 = *v1;
  *(*v1 + 1152) = v0;

  v3 = *(v2 + 1136);
  if (v0)
  {
    v4 = sub_1A94C9258;
  }

  else
  {
    v4 = sub_1A94C8F5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A94C8F5C()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  if (sub_1A932D058((v0 + 37)) == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[142];
    memcpy(v0 + 107, v0 + 37, 0x118uLL);
    v6 = (*(*v4 + 456) + **(*v4 + 456));
    v5 = swift_task_alloc();
    v0[145] = v5;
    *v5 = v0;
    v5[1] = sub_1A94C913C;

    return v6(v0 + 107);
  }
}

uint64_t sub_1A94C913C()
{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  v3 = *(v2 + 1136);
  if (v0)
  {
    v4 = sub_1A94C925C;
  }

  else
  {
    v4 = sub_1A94C9254;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

BOOL sub_1A94C9278(void *a1, uint64_t a2, char a3)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x168);
  v5 = a1;
  v4();

  sub_1A957BE58();

  v9[0] = v9[1];
  v8 = a3;
  v6 = static TTSSpeechQueue.State.== infix(_:_:)(v9, &v8);

  return v6;
}

BOOL sub_1A94C9350(char a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))();

  sub_1A957BE58();

  v5[0] = v5[1];
  v4 = a1;
  return static TTSSpeechQueue.State.== infix(_:_:)(v5, &v4);
}

uint64_t CoreSynthesizer.speak(_:synth:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C94A4, 0, 0);
}

uint64_t sub_1A94C94A4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x538))(0, 0);
  sub_1A937829C(&qword_1EB388008, &qword_1A9595760);
  v5 = sub_1A9387478(0, &qword_1EB388010, 0x1E6958510);
  v8 = sub_1A94BBBB0(v3, v5, v6, v7);
  sub_1A937829C(&qword_1EB388018, &qword_1A9595768);
  v9 = sub_1A9387478(0, &unk_1EB388020, 0x1E6958520);
  v12 = sub_1A94BBBB0(v4, v9, v10, v11);
  v13 = sub_1A957C688();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v8;
  *(v14 + 40) = v12;
  *(v14 + 48) = v2;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  v15 = v2;
  sub_1A93C4B70(0, 0, v1, &unk_1A9595778, v14);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1A94C9814(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1A94C98EC;

  return CoreSynthesizer.speak(_:synth:)(v8, v9);
}

uint64_t sub_1A94C98EC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A94C9A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 1360) = v16;
  *(v8 + 1344) = v15;
  *(v8 + 1336) = a8;
  *(v8 + 393) = a7;
  *(v8 + 1328) = a6;
  *(v8 + 1320) = a5;
  *(v8 + 1312) = a4;
  v9 = sub_1A957BF18();
  *(v8 + 1368) = v9;
  *(v8 + 1376) = *(v9 - 8);
  *(v8 + 1384) = swift_task_alloc();
  v10 = sub_1A957BF48();
  *(v8 + 1392) = v10;
  *(v8 + 1400) = *(v10 - 8);
  *(v8 + 1408) = swift_task_alloc();
  v11 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  *(v8 + 1416) = v11;
  *(v8 + 1424) = *(v11 - 8);
  *(v8 + 1432) = swift_task_alloc();
  v12 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  *(v8 + 1440) = v12;
  *(v8 + 1448) = *(v12 - 8);
  *(v8 + 1456) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C9C6C, 0, 0);
}

uint64_t sub_1A94C9C6C()
{
  v1 = sub_1A957C0C8();
  v2 = NSClassFromString(v1);
  v0[183] = v2;

  if (v2)
  {
    v3 = v0[164];
    v0[184] = swift_getKeyPath();
    v4 = *v3 + 120;
    v0[185] = *v4;
    v0[186] = v4 & 0xFFFFFFFFFFFFLL | 0xEBF000000000000;

    return MEMORY[0x1EEE6DFA0](sub_1A94C9E80, v3, 0);
  }

  else
  {
    v5 = v0[166];
    v6 = v0[165];
    v7 = swift_task_alloc();
    v0[192] = v7;
    *(v7 + 16) = v5;
    v11 = (*(*v6 + 112) + **(*v6 + 112));
    v8 = swift_task_alloc();
    v0[193] = v8;
    v9 = sub_1A937829C(&qword_1EB388050, qword_1A95958E8);
    *v8 = v0;
    v8[1] = sub_1A94CA730;

    return v11(v0 + 50, &unk_1A95958E0, v7, v9);
  }
}

uint64_t sub_1A94C9E80()
{
  (*(v0 + 1480))(*(v0 + 1472));

  return MEMORY[0x1EEE6DFA0](sub_1A94C9F04, 0, 0);
}

uint64_t sub_1A94C9F04()
{
  if (*(v0 + 1304) && (v1 = [*(v0 + 1304) isKindOfClass_], swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    v2 = *(v0 + 1320);
    v3 = sub_1A93776E0();
    swift_beginAccess();
    v4 = *v3;
    *(v0 + 1496) = *v3;
    *(v0 + 1504) = swift_getKeyPath();
    v5 = *v2 + 120;
    *(v0 + 1512) = *v5;
    *(v0 + 1520) = v5 & 0xFFFFFFFFFFFFLL | 0xEBF000000000000;
    v6 = v4;

    return MEMORY[0x1EEE6DFA0](sub_1A94CA138, v2, 0);
  }

  else
  {
    v7 = *(v0 + 1328);
    v8 = *(v0 + 1320);
    v9 = swift_task_alloc();
    *(v0 + 1536) = v9;
    *(v9 + 16) = v7;
    v13 = (*(*v8 + 112) + **(*v8 + 112));
    v10 = swift_task_alloc();
    *(v0 + 1544) = v10;
    v11 = sub_1A937829C(&qword_1EB388050, qword_1A95958E8);
    *v10 = v0;
    v10[1] = sub_1A94CA730;

    return v13(v0 + 400, &unk_1A95958E0, v9, v11);
  }
}

uint64_t sub_1A94CA138()
{
  (*(v0 + 1512))(*(v0 + 1504));

  return MEMORY[0x1EEE6DFA0](sub_1A94CA1BC, 0, 0);
}

uint64_t sub_1A94CA1BC()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 1496)) + 0x50))(*(v0 + 1272), *(v0 + 1280));
  v1 = *(v0 + 1320);

  v4 = (*(*v1 + 112) + **(*v1 + 112));
  v2 = swift_task_alloc();
  *(v0 + 1528) = v2;
  *v2 = v0;
  v2[1] = sub_1A94CA4C4;

  return v4();
}

uint64_t sub_1A94CA4C4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94CA5C0, 0, 0);
}

uint64_t sub_1A94CA5C0()
{
  v1 = v0[166];
  v2 = v0[165];
  v3 = swift_task_alloc();
  v0[192] = v3;
  *(v3 + 16) = v1;
  v7 = (*(*v2 + 112) + **(*v2 + 112));
  v4 = swift_task_alloc();
  v0[193] = v4;
  v5 = sub_1A937829C(&qword_1EB388050, qword_1A95958E8);
  *v4 = v0;
  v4[1] = sub_1A94CA730;

  return v7(v0 + 50, &unk_1A95958E0, v3, v5);
}

uint64_t sub_1A94CA730()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94CA848, 0, 0);
}

uint64_t sub_1A94CA848()
{
  if (*(v0 + 408))
  {
    v1 = *(v0 + 393);
    v2 = *(v0 + 1328);
    memcpy((v0 + 16), (v0 + 400), 0x179uLL);
    if (v1 == 1)
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4C8))(v0 + 16);
    }

    else
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4B0))(v0 + 16);
    }

    sub_1A957C6F8();
    v5 = swift_task_alloc();
    *(v0 + 1552) = v5;
    *v5 = v0;
    v5[1] = sub_1A94CAA1C;
    v6 = *(v0 + 1416);

    return MEMORY[0x1EEE6DB90](v0 + 1216, 0, 0, v6, v0 + 1288);
  }

  else
  {
    sub_1A937B960(v0 + 400, &qword_1EB388050, qword_1A95958E8);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1A94CAA1C()
{

  if (v0)
  {
    v1 = sub_1A94CAF90;
  }

  else
  {
    v1 = sub_1A94CAB2C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A94CAB2C()
{
  v1 = v0[154];
  if (v1 >> 3 == 0xFFFFFFFF)
  {
    v2 = v0[182];
    v3 = v0[181];
    v4 = v0[180];
    (*(v0[178] + 8))(v0[179], v0[177]);
    (*(v3 + 8))(v2, v4);
    sub_1A9410E64((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[152];
    v8 = v0[153];
    v9 = v0[155];
    v19 = v0[176];
    v24 = v0[175];
    v25 = v0[174];
    v23 = v0[172];
    v21 = v0[173];
    v22 = v0[171];
    v27 = v0[169];
    v28 = v0[170];
    v10 = v0[168];
    v11 = v0[167];
    v26 = v0[166];
    v12 = v0[165];
    v13 = v0[164];
    sub_1A9387478(0, &qword_1ED96FE90, 0x1E69E9610);
    v20 = sub_1A957CAE8();
    sub_1A9410E08((v0 + 2), (v0 + 98));
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v12;
    v14[4] = v7;
    v14[5] = v8;
    v14[6] = v1;
    v14[7] = v9;
    v14[8] = v11;
    v14[9] = v10;
    memcpy(v14 + 10, v0 + 98, 0x179uLL);
    v14[58] = v27;
    v14[59] = v28;
    v14[60] = v26;
    v0[150] = sub_1A94CED74;
    v0[151] = v14;
    v0[146] = MEMORY[0x1E69E9820];
    v0[147] = 1107296256;
    v0[148] = sub_1A93C80E8;
    v0[149] = &unk_1F1CFAAD0;
    aBlock = _Block_copy(v0 + 146);

    sub_1A9410FA4(v7, v8, v1, v9);
    sub_1A932D0E4(v11, v10);
    sub_1A932D0E4(v27, v28);
    v15 = v26;
    sub_1A957BF28();
    v0[162] = MEMORY[0x1E69E7CC0];
    sub_1A94CF178(qword_1ED96FED0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
    sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0, MEMORY[0x1E69E6328]);
    sub_1A957CE08();
    MEMORY[0x1AC5859B0](0, v19, v21, aBlock);
    _Block_release(aBlock);

    sub_1A9410F4C(v7, v8, v1, v9);
    (*(v23 + 8))(v21, v22);
    (*(v24 + 8))(v19, v25);

    v16 = swift_task_alloc();
    v0[194] = v16;
    *v16 = v0;
    v16[1] = sub_1A94CAA1C;
    v17 = v0[177];

    return MEMORY[0x1EEE6DB90](v0 + 152, 0, 0, v17, v0 + 161);
  }
}

uint64_t sub_1A94CAF90()
{
  v1 = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  (*(v0[178] + 8))(v0[179], v0[177]);
  (*(v2 + 8))(v1, v3);
  sub_1A9410E64((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A94CB070()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A93836DC;

  return sub_1A94C9A5C(v7, v8, v9, v2, v3, v4, v5, v6);
}

id sub_1A94CB154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

void sub_1A94CB1A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 speechString];
  v4 = sub_1A957C0F8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1A94CB21C()
{
  v1 = [*(v0 + 16) speechString];
  if (!v1)
  {
    sub_1A957C0F8();
    v1 = sub_1A957C0C8();
  }

  [*(v0 + 16) setSsmlRepresentation_];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94CB2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94CB2E8, 0, 0);
}

uint64_t sub_1A94CB2E8()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0x198))(*(v0 + 24));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1A94CB3D4;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_1A937880C(v3, v4, v1);
}

uint64_t sub_1A94CB3D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1A94CB4C8(unint64_t *a1)
{
  v1 = a1[1];
  v2 = *(a1 + 16);
  v3 = a1[3];
  if (v2 <= 1)
  {
    v7 = *a1;
    if (v2)
    {
      v8 = sub_1A94CDE34(v7, v1);
      v10 = v17;
      v11 = objc_allocWithZone(MEMORY[0x1E69584E0]);
      v12 = sel_initWithSentenceRange_atByteSampleOffset_;
    }

    else
    {
      v8 = sub_1A94CDE34(v7, v1);
      v10 = v9;
      v11 = objc_allocWithZone(MEMORY[0x1E69584E0]);
      v12 = sel_initWithWordRange_atByteSampleOffset_;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v4 = objc_allocWithZone(MEMORY[0x1E69584E0]);
        v5 = sub_1A957C0C8();
        v6 = [v4 initWithBookmarkName:v5 atByteSampleOffset:v3];
      }

      else
      {
        v14 = objc_allocWithZone(MEMORY[0x1E69584E0]);
        v5 = sub_1A957C0C8();
        v6 = [v14 initWithPhonemeString:v5 atByteSampleOffset:v3];
      }

      v15 = v6;

      return v15;
    }

    v8 = sub_1A94CDE34(*a1, v1);
    v10 = v13;
    v11 = objc_allocWithZone(MEMORY[0x1E69584E0]);
    v12 = sel_initWithParagraphRange_atByteSampleOffset_;
  }

  return [v11 v12];
}

uint64_t CoreSynthesizer.write(_:toBufferCallback:synth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94CB6CC, 0, 0);
}

uint64_t sub_1A94CB6CC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x538))(0, 0);
  sub_1A937829C(&qword_1EB388008, &qword_1A9595760);
  v7 = sub_1A9387478(0, &qword_1EB388010, 0x1E6958510);
  v10 = sub_1A94BBBB0(v4, v7, v8, v9);
  sub_1A937829C(&qword_1EB388018, &qword_1A9595768);
  v11 = sub_1A9387478(0, &unk_1EB388020, 0x1E6958520);
  v14 = sub_1A94BBBB0(v5, v11, v12, v13);
  v15 = sub_1A957C688();
  (*(*(v15 - 8) + 56))(v1, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v10;
  *(v16 + 40) = v14;
  *(v16 + 48) = v2;
  *(v16 + 56) = 1;
  *(v16 + 64) = v6;
  *(v16 + 72) = v3;
  *(v16 + 80) = 0;
  *(v16 + 88) = 0;
  v17 = v2;

  sub_1A93C4B70(0, 0, v1, &unk_1A9595788, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A94CBA70(void *a1, void *aBlock, void *a3, const void *a4, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v10 = _Block_copy(aBlock);
  v5[5] = _Block_copy(a4);
  v11 = swift_allocObject();
  v5[6] = v11;
  *(v11 + 16) = v10;
  v12 = a1;
  v13 = a3;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_1A94CBB98;

  return CoreSynthesizer.write(_:toBufferCallback:synth:)(v12, sub_1A94CF238, v11, v13);
}

uint64_t sub_1A94CBB98()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t CoreSynthesizer.write(_:toBufferCallback:toMarkerCallback:synth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94CBDD4, 0, 0);
}

uint64_t sub_1A94CBDD4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v21 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x538))(0, 0);
  sub_1A937829C(&qword_1EB388008, &qword_1A9595760);
  v8 = sub_1A9387478(0, &qword_1EB388010, 0x1E6958510);
  v11 = sub_1A94BBBB0(v4, v8, v9, v10);
  sub_1A937829C(&qword_1EB388018, &qword_1A9595768);
  v12 = sub_1A9387478(0, &unk_1EB388020, 0x1E6958520);
  v15 = sub_1A94BBBB0(v6, v12, v13, v14);
  v16 = sub_1A957C688();
  (*(*(v16 - 8) + 56))(v1, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v11;
  *(v17 + 40) = v15;
  *(v17 + 48) = v2;
  *(v17 + 56) = 1;
  *(v17 + 64) = v7;
  *(v17 + 72) = v5;
  *(v17 + 80) = v21;
  *(v17 + 88) = v3;
  v18 = v2;

  sub_1A93C4B70(0, 0, v1, &unk_1A9595798, v17);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A94CC1A4(void *a1, void *aBlock, const void *a3, void *a4, const void *a5, void *a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a1;
  v12 = _Block_copy(aBlock);
  v13 = _Block_copy(a3);
  v6[5] = _Block_copy(a5);
  v14 = swift_allocObject();
  v6[6] = v14;
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  v6[7] = v15;
  *(v15 + 16) = v13;
  v16 = a1;
  v17 = a4;
  a6;
  v18 = swift_task_alloc();
  v6[8] = v18;
  *v18 = v6;
  v18[1] = sub_1A94CC314;

  return CoreSynthesizer.write(_:toBufferCallback:toMarkerCallback:synth:)(v16, sub_1A94CE9F8, v14, sub_1A94CEA0C, v15, v17);
}

uint64_t sub_1A94CC314()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

void sub_1A94CC4C4(uint64_t a1, uint64_t a2)
{
  sub_1A9387478(0, &qword_1EB388030, 0x1E69584E0);
  v3 = sub_1A957C4B8();
  (*(a2 + 16))(a2, v3);
}

uint64_t CoreSynthesizer.stopSpeaking(at:)(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A94CC560, 0, 0);
}

uint64_t sub_1A94CC560()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v8 = v0 + 16;
  v7 = v0[16];
  v6 = v8[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1A94CC6B4;
  v9 = swift_continuation_init();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v1[14] = sub_1A94CE148;
  v1[15] = v10;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1A93FB164;
  v1[13] = &unk_1F1CED860;
  v11 = _Block_copy(v4);

  [v6 stopSpeakingAt:v7 completionHandler:v11];
  _Block_release(v11);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A94CC6B4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 8);

  return v2(v1);
}

uint64_t CoreSynthesizer.stopSpeaking(at:completionHandler:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - v11;
  if ([v3 isSpeaking])
  {
    v13 = 1;
    if (a1)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v3;
      v15 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x538);
      v16 = v3;
      v15(sub_1A94CE188, v14);
      return a2(v13);
    }
  }

  else
  {
    v13 = [v3 isPaused];
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v18 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x138))();
  v19 = sub_1A957C688();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v12, 1, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = v13;
  sub_1A93F8120(v12, v10);
  v22 = (*(v20 + 48))(v10, 1, v19);
  v23 = v3;

  if (v22 == 1)
  {
    sub_1A937B960(v10, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v20 + 8))(v10, v19);
  }

  v24 = sub_1A94CF178(&qword_1ED96FE68, type metadata accessor for TTSExecutor, &_s12TextToSpeech11TTSExecutorCSchAAMc);
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_1A95957B0;
  *(v25 + 24) = v21;
  v26[0] = 6;
  v26[1] = 0;
  v26[2] = v18;
  v26[3] = v24;

  swift_task_create();
  sub_1A937B960(v12, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A94CCB48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x4E8);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_1A94CCC88;

  return v9();
}

uint64_t sub_1A94CCC88()
{

  return MEMORY[0x1EEE6DFA0](sub_1A94CCD84, 0, 0);
}

uint64_t sub_1A94CCD84()
{
  (*(v0 + 16))(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94CCDEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x4E8);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A9382328;

  return v8();
}

uint64_t CoreSynthesizer.pauseSpeaking(at:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A94CCFB8, 0, 0);
}

uint64_t sub_1A94CCFB8()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = [*(v0 + 24) isSpeaking];
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x538);
    v5 = v2;
    v4(sub_1A94CE270, v3);
    v6 = *(v0 + 8);
    v7 = *(v0 + 40);

    return v6(v7);
  }

  else
  {
    v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x4F0);
    v11 = (v9 + *v9);
    v10 = swift_task_alloc();
    *(v0 + 32) = v10;
    *v10 = v0;
    v10[1] = sub_1A94CD1D4;

    return v11();
  }
}