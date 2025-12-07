__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1B0B7273C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
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

uint64_t sub_1B0B72784(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B72800@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a5@<X8>, double d0_0@<D0>)
{
  result = sub_1B0B729D0(a1, a2, a3, d0_0);
  *a5 = result;
  return result;
}

unint64_t sub_1B0B72854()
{
  result = qword_1EB6DDF20;
  if (!qword_1EB6DDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF20);
  }

  return result;
}

unint64_t sub_1B0B728A8(uint64_t a1)
{
  result = sub_1B0B728D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B728D0()
{
  result = qword_1EB6DDF18;
  if (!qword_1EB6DDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF18);
  }

  return result;
}

uint64_t sub_1B0B72924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = a1 + 32;
  while (1)
  {
    v7 = v6 + 48 * result;
    if (*(v7 + 32) == a3)
    {
      v8 = *(v7 + 24);
      v9 = *(v8 + 16);
      if (v9 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_3:
    if (++result == v3)
    {
      return 0;
    }
  }

  if (v9)
  {
    v10 = v8 == a2;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = (v8 + 32);
    v12 = (a2 + 32);
    while (v9)
    {
      if (*v11 != *v12)
      {
        goto LABEL_3;
      }

      ++v11;
      ++v12;
      if (!--v9)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B729D0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 20);
  v7 = *(v4 + 108);
  if (v6)
  {
    if (*(v4 + 108))
    {
      return 0xF000000000000007;
    }
  }

  else
  {
    if (v5 != *(v4 + 104))
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      return 0xF000000000000007;
    }
  }

  v8 = *(a3 + 32);
  if (v8 < 2)
  {
    v9 = *(a3 + 24);
    if ((*(v4 + 145) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
    if ((*(v4 + 145) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v10 = 0x100000000;
  if (!*(a3 + 20))
  {
    v10 = 0;
  }

  *(v4 + 112) = v10 | v5;
  a4 = 0.0;
  *(v4 + 120) = xmmword_1B0EA4610;
  *(v4 + 136) = v9;
  *(v4 + 144) = v8 > 1;
  *(v4 + 145) = 0;
LABEL_14:
  if (sub_1B0A9F17C(a1, a2, a4))
  {
    return 0xF000000000000007;
  }

  v12 = swift_allocObject();
  v13 = *(v4 + 8);
  *(v12 + 16) = *v4;
  *(v12 + 24) = v13;
  *(v12 + 32) = v5;
  *(v12 + 36) = v6;
  *(v12 + 40) = 0;
  *(v12 + 48) = 1;
  *(v12 + 56) = v9;
  *(v12 + 64) = v8 > 1;
  v14 = v12 | 0x1000000000000004;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v14;
}

uint64_t sub_1B0B72AE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_1B0B72924(*a1, a2, a3);
  v7 = result;
  if (v3)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v4 + 16);
      if (v8 == v10)
      {
        return v7;
      }

      if (v8 >= v10)
      {
        goto LABEL_30;
      }

      v11 = v4 + 32 + 48 * v8;
      v13 = *(v11 + 24);
      v12 = *(v11 + 32);
      if (v12 == a3 && (v14 = *(v13 + 16), v14 == *(a2 + 16)))
      {
        if (v14)
        {
          v15 = v13 == a2;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = (v13 + 32);
          v17 = (a2 + 32);
          while (v14)
          {
            if (*v16 != *v17)
            {
              goto LABEL_21;
            }

            ++v16;
            ++v17;
            if (!--v14)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          break;
        }
      }

      else
      {
LABEL_21:
        if (v7 != v8)
        {
          if (v7 >= v10)
          {
            goto LABEL_33;
          }

          v18 = v4 + 32 + 48 * v7;
          v19 = *v18;
          v32 = *(v18 + 16);
          v20 = *(v18 + 24);
          v30 = *(v18 + 40);
          v31 = *(v18 + 32);
          v22 = *v11;
          v21 = *(v11 + 8);
          v34 = *(v11 + 16);
          v35 = *(v11 + 40);
          v33 = *(v18 + 8);
          sub_1B03B2000(*v18, v33);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B03B2000(v22, v21);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0B8C8D8(v4);
            v4 = result;
          }

          if (v7 >= *(v4 + 16))
          {
            goto LABEL_34;
          }

          v23 = v4 + 32 + 48 * v7;
          v24 = *v23;
          v25 = *(v23 + 8);
          *v23 = v22;
          *(v23 + 8) = v21;
          *(v23 + 16) = v34;
          *(v23 + 24) = v13;
          *(v23 + 32) = v12;
          *(v23 + 40) = v35;
          sub_1B0391D50(v24, v25);

          if (v8 >= *(v4 + 16))
          {
            goto LABEL_35;
          }

          v26 = v4 + 32 + 48 * v8;
          v27 = *v26;
          v28 = *(v26 + 8);
          *v26 = v19;
          *(v26 + 8) = v33;
          *(v26 + 16) = v32;
          *(v26 + 24) = v20;
          *(v26 + 32) = v31;
          *(v26 + 40) = v30;
          sub_1B0391D50(v27, v28);

          *a1 = v4;
        }

        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
          goto LABEL_32;
        }
      }

LABEL_7:
      v9 = __OFADD__(v8++, 1);
      if (v9)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13IMAP2Behavior19RunningSyncRequestsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v28 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v27 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = *(*(v3 + 48) + 4 * v11);
    v13 = (*(v3 + 56) + 32 * v11);
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = v13[16];
    v17 = *(v13 + 3);
    v18 = sub_1B03FE284(v12);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v20 = v2;
    v21 = (*(v2 + 56) + 32 * v18);
    v22 = *(v21 + 1);
    v23 = *(v21 + 3);
    v29 = *v21;
    v30 = v21[16];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25 = static SyncRequest.__derived_struct_equals(_:_:)(v29, v22, v30, v14, v15, v16, v24);

    result = 0;
    if (v25)
    {
      v26 = v23 == v17;
      v2 = v20;
      if (v26)
      {
        continue;
      }
    }

    return result;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v27)
    {
      return 1;
    }

    v10 = *(v28 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0B72F70(uint64_t result, uint64_t a2)
{
  if (result != a2 && *(result + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(result + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(result + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(result + 48) + 16 * v12;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(result + 56) + 72 * v12;
      v17 = *(v16 + 64);
      v19 = *(v16 + 32);
      v18 = *(v16 + 48);
      v35 = *(v16 + 16);
      v20 = *v16;
      v36 = v19;
      v37 = v18;
      v34 = v20;
      v38 = v17;
      v31 = v18;
      v32 = v35;
      v29 = v19;
      v30 = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03BB0B4(&v34, v33);
      if (!v14)
      {
        return;
      }

      v41[0] = v30;
      v41[1] = v32;
      v41[2] = v29;
      v41[3] = v31;
      v42 = v17;
      v21 = sub_1B03AB888(v14, v15);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        sub_1B039E440(v41);
        return;
      }

      v24 = *(a2 + 56) + 72 * v21;
      v39[0] = *v24;
      v26 = *(v24 + 32);
      v25 = *(v24 + 48);
      v27 = *(v24 + 16);
      v40 = *(v24 + 64);
      v39[2] = v26;
      v39[3] = v25;
      v39[1] = v27;
      sub_1B03BB0B4(v39, &v34);
      v28 = static RemoteMailbox.__derived_struct_equals(_:_:)(v39, v41);
      sub_1B039E440(v39);
      sub_1B039E440(v41);
      if ((v28 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(result + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B0B73180(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_1B03B8A9C(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    v16 = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_1B03B6298(*(*(a2 + 56) + 8 * v14), v13);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0B732C0(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 2 * v12);
    result = sub_1B03B8A9C(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 2 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B733CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v32 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_13:
    v14 = v10 | (v4 << 6);
    v15 = *(*(v3 + 48) + 4 * v14);
    v16 = (*(v3 + 56) + 24 * v14);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = v16[16];
    v20 = sub_1B03FE284(v15);
    if (v21)
    {
      v22 = (*(v2 + 56) + 24 * v20);
      v23 = *(v22 + 1);
      v24 = v22[16];
      v25 = v11;
      v26 = *v22;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v27 = v26;
      v8 = v25;
      v28 = v24;
      v2 = a2;
      v30 = static SyncRequest.__derived_struct_equals(_:_:)(v27, v23, v28, v17, v18, v19, v29);

      v3 = v32;

      if (v30)
      {
        continue;
      }
    }

    return 0;
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0B73554(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    v15 = *(v3 + 56) + 12 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    result = sub_1B0ADFFE8(v14);
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(a2 + 56) + 12 * result;
    if (*(v19 + 8))
    {
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v16 == *v19)
      {
        v9 = v17;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B73688(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (!v8)
      {
        v11 = v4;
        while (1)
        {
          v4 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v12 = *(v5 + 8 * v4);
          ++v11;
          if (v12)
          {
            v10 = __clz(__rbit64(v12));
            v96 = (v12 - 1) & v12;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
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
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
      }

      v10 = __clz(__rbit64(v8));
      v96 = (v8 - 1) & v8;
LABEL_13:
      v13 = v10 | (v4 << 6);
      v14 = *(*(v3 + 48) + 4 * v13);
      v15 = (*(v3 + 56) + 24 * v13);
      v16 = *v15;
      v18 = *(v15 + 1);
      v17 = *(v15 + 2);
      sub_1B03B2000(v18, v17);
      v19 = sub_1B03FE284(v14);
      if ((v20 & 1) == 0 || (v21 = (*(v2 + 56) + 24 * v19), v16 != *v21))
      {
LABEL_155:
        sub_1B0391D50(v18, v17);
        return 0;
      }

      v22 = *(v21 + 1);
      v23 = *(v21 + 2);
      v24 = v23 >> 62;
      v25 = v17 >> 62;
      if (v23 >> 62 == 3)
      {
        if (v22)
        {
          v26 = 0;
        }

        else
        {
          v26 = v23 == 0xC000000000000000;
        }

        if (v26 && v17 >> 62 == 3 && !v18 && v17 == 0xC000000000000000)
        {
          v29 = 0;
          v30 = 0xC000000000000000;
          goto LABEL_59;
        }

LABEL_39:
        v31 = 0;
        if (v25 <= 1)
        {
          goto LABEL_37;
        }

        goto LABEL_40;
      }

      if (v24 > 1)
      {
        if (v24 != 2)
        {
          goto LABEL_39;
        }

        v33 = *(v22 + 16);
        v32 = *(v22 + 24);
        v34 = __OFSUB__(v32, v33);
        v31 = v32 - v33;
        if (v34)
        {
          goto LABEL_160;
        }

        if (v25 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v24)
      {
        LODWORD(v31) = HIDWORD(v22) - v22;
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_161;
        }

        v31 = v31;
        if (v25 <= 1)
        {
LABEL_37:
          if (v25)
          {
            LODWORD(v35) = HIDWORD(v18) - v18;
            if (__OFSUB__(HIDWORD(v18), v18))
            {
              goto LABEL_158;
            }

            v35 = v35;
          }

          else
          {
            v35 = BYTE6(v17);
          }

          goto LABEL_46;
        }
      }

      else
      {
        v31 = BYTE6(v23);
        if (v25 <= 1)
        {
          goto LABEL_37;
        }
      }

LABEL_40:
      if (v25 != 2)
      {
        if (v31)
        {
          goto LABEL_155;
        }

        goto LABEL_58;
      }

      v37 = *(v18 + 16);
      v36 = *(v18 + 24);
      v34 = __OFSUB__(v36, v37);
      v35 = v36 - v37;
      if (v34)
      {
        goto LABEL_159;
      }

LABEL_46:
      if (v31 != v35)
      {
        goto LABEL_155;
      }

      if (v31 >= 1)
      {
        break;
      }

LABEL_58:
      v29 = v18;
      v30 = v17;
LABEL_59:
      sub_1B0391D50(v29, v30);
      v8 = v96;
    }

    if (v24 <= 1)
    {
      break;
    }

    if (v24 != 2)
    {
      memset(__s1, 0, 14);
      if (v25 == 2)
      {
        v67 = *(v18 + 16);
        v88 = *(v18 + 24);
        v93 = v22;
        sub_1B03B2000(v22, v23);
        v68 = sub_1B0E42A98();
        v92 = v2;
        if (v68)
        {
          v69 = sub_1B0E42AC8();
          if (__OFSUB__(v67, v69))
          {
            goto LABEL_175;
          }

          v68 += v67 - v69;
        }

        v70 = &v88[-v67];
        if (__OFSUB__(v88, v67))
        {
          goto LABEL_169;
        }

        v71 = sub_1B0E42AB8();
        if (!v68)
        {
          goto LABEL_186;
        }

LABEL_119:
        if (v71 >= v70)
        {
          v74 = v70;
        }

        else
        {
          v74 = v71;
        }

        v55 = memcmp(__s1, v68, v74);
        sub_1B0391D50(v93, v23);
        sub_1B0391D50(v18, v17);
        v2 = v92;
        goto LABEL_148;
      }

      if (v25 != 1)
      {
LABEL_81:
        __s2 = v18;
        v98 = v17;
        v99 = BYTE2(v17);
        v100 = BYTE3(v17);
        v101 = BYTE4(v17);
        v102 = BYTE5(v17);
        v55 = memcmp(__s1, &__s2, BYTE6(v17));
        v58 = v18;
        v59 = v17;
LABEL_151:
        sub_1B0391D50(v58, v59);
        goto LABEL_152;
      }

      v85 = ((v18 >> 32) - v18);
      if (v18 >> 32 < v18)
      {
        goto LABEL_166;
      }

      v93 = v22;
      sub_1B03B2000(v22, v23);
      v51 = sub_1B0E42A98();
      if (!v51)
      {
        goto LABEL_182;
      }

      v52 = v51;
      v53 = sub_1B0E42AC8();
      if (__OFSUB__(v18, v53))
      {
        goto LABEL_171;
      }

      v41 = (v18 - v53 + v52);
      result = sub_1B0E42AB8();
      if (!v41)
      {
        goto LABEL_183;
      }

      goto LABEL_77;
    }

    v90 = v2;
    v94 = v22;
    v43 = *(v22 + 16);
    sub_1B03B2000(v22, v23);
    v44 = sub_1B0E42A98();
    if (v44)
    {
      v45 = v44;
      v46 = sub_1B0E42AC8();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_163;
      }

      v86 = (v43 - v46 + v45);
    }

    else
    {
      v86 = 0;
    }

    sub_1B0E42AB8();
    v3 = a1;
    if (v25 == 2)
    {
      v76 = *(v18 + 16);
      v75 = *(v18 + 24);
      v60 = sub_1B0E42A98();
      if (v60)
      {
        v77 = sub_1B0E42AC8();
        if (__OFSUB__(v76, v77))
        {
          goto LABEL_177;
        }

        v60 += v76 - v77;
      }

      v34 = __OFSUB__(v75, v76);
      v78 = v75 - v76;
      if (v34)
      {
        goto LABEL_172;
      }

      v79 = sub_1B0E42AB8();
      if (v79 >= v78)
      {
        v63 = v78;
      }

      else
      {
        v63 = v79;
      }

      v64 = v86;
      if (!v86)
      {
        goto LABEL_192;
      }

      v2 = v90;
      if (!v60)
      {
        goto LABEL_191;
      }
    }

    else
    {
      if (v25 != 1)
      {
        result = v86;
        v2 = v90;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v86)
        {
          goto LABEL_187;
        }

LABEL_150:
        v55 = memcmp(result, __s1, BYTE6(v17));
        sub_1B0391D50(v18, v17);
        v58 = v94;
        v59 = v23;
        goto LABEL_151;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_167;
      }

      v60 = sub_1B0E42A98();
      if (v60)
      {
        v61 = sub_1B0E42AC8();
        if (__OFSUB__(v18, v61))
        {
          goto LABEL_179;
        }

        v60 += v18 - v61;
      }

      v2 = v90;
      v62 = sub_1B0E42AB8();
      if (v62 >= (v18 >> 32) - v18)
      {
        v63 = (v18 >> 32) - v18;
      }

      else
      {
        v63 = v62;
      }

      v64 = v86;
      if (!v86)
      {
        goto LABEL_189;
      }

      if (!v60)
      {
        goto LABEL_188;
      }
    }

LABEL_144:
    if (v64 == v60)
    {
      sub_1B0391D50(v18, v17);
      sub_1B0391D50(v94, v23);
      v3 = a1;
      v8 = v96;
    }

    else
    {
      v55 = memcmp(v64, v60, v63);
      sub_1B0391D50(v18, v17);
      v56 = v94;
      v57 = v23;
LABEL_147:
      sub_1B0391D50(v56, v57);
LABEL_148:
      v3 = a1;
LABEL_152:
      v8 = v96;
      if (v55)
      {
        return 0;
      }
    }
  }

  if (!v24)
  {
    __s1[0] = v22;
    LOWORD(__s1[1]) = v23;
    BYTE2(__s1[1]) = BYTE2(v23);
    BYTE3(__s1[1]) = BYTE3(v23);
    BYTE4(__s1[1]) = BYTE4(v23);
    BYTE5(__s1[1]) = BYTE5(v23);
    if (!v25)
    {
      goto LABEL_81;
    }

    v93 = v22;
    if (v25 != 1)
    {
      v72 = *(v18 + 16);
      v89 = *(v18 + 24);
      sub_1B03B2000(v22, v23);
      v68 = sub_1B0E42A98();
      v92 = v2;
      if (v68)
      {
        v73 = sub_1B0E42AC8();
        if (__OFSUB__(v72, v73))
        {
          goto LABEL_176;
        }

        v68 += v72 - v73;
      }

      v70 = &v89[-v72];
      if (__OFSUB__(v89, v72))
      {
        goto LABEL_168;
      }

      v71 = sub_1B0E42AB8();
      if (!v68)
      {
        goto LABEL_190;
      }

      goto LABEL_119;
    }

    v85 = ((v18 >> 32) - v18);
    if (v18 >> 32 < v18)
    {
      goto LABEL_165;
    }

    sub_1B03B2000(v22, v23);
    v38 = sub_1B0E42A98();
    if (!v38)
    {
      goto LABEL_193;
    }

    v39 = v38;
    v40 = sub_1B0E42AC8();
    if (__OFSUB__(v18, v40))
    {
      goto LABEL_170;
    }

    v41 = (v18 - v40 + v39);
    result = sub_1B0E42AB8();
    if (!v41)
    {
      goto LABEL_194;
    }

LABEL_77:
    if (result >= v85)
    {
      v54 = v85;
    }

    else
    {
      v54 = result;
    }

    v55 = memcmp(__s1, v41, v54);
    sub_1B0391D50(v93, v23);
    v56 = v18;
    v57 = v17;
    goto LABEL_147;
  }

  v91 = v2;
  v47 = v22;
  if (v22 > v22 >> 32)
  {
    goto LABEL_162;
  }

  v94 = v22;
  sub_1B03B2000(v22, v23);
  v48 = sub_1B0E42A98();
  if (v48)
  {
    v49 = v48;
    v50 = sub_1B0E42AC8();
    if (__OFSUB__(v47, v50))
    {
      goto LABEL_164;
    }

    v87 = (v47 - v50 + v49);
  }

  else
  {
    v87 = 0;
  }

  sub_1B0E42AB8();
  v3 = a1;
  if (v25 == 2)
  {
    v81 = *(v18 + 16);
    v80 = *(v18 + 24);
    v60 = sub_1B0E42A98();
    if (v60)
    {
      v82 = sub_1B0E42AC8();
      if (__OFSUB__(v81, v82))
      {
        goto LABEL_178;
      }

      v60 += v81 - v82;
    }

    v34 = __OFSUB__(v80, v81);
    v83 = v80 - v81;
    if (v34)
    {
      goto LABEL_174;
    }

    v84 = sub_1B0E42AB8();
    if (v84 >= v83)
    {
      v63 = v83;
    }

    else
    {
      v63 = v84;
    }

    v64 = v87;
    if (!v87)
    {
      goto LABEL_185;
    }

    v2 = v91;
    if (!v60)
    {
      goto LABEL_184;
    }

    goto LABEL_144;
  }

  if (v25 != 1)
  {
    result = v87;
    v2 = v91;
    __s1[0] = v18;
    LOWORD(__s1[1]) = v17;
    BYTE2(__s1[1]) = BYTE2(v17);
    BYTE3(__s1[1]) = BYTE3(v17);
    BYTE4(__s1[1]) = BYTE4(v17);
    BYTE5(__s1[1]) = BYTE5(v17);
    if (!v87)
    {
      goto LABEL_195;
    }

    goto LABEL_150;
  }

  if (v18 >> 32 < v18)
  {
    goto LABEL_173;
  }

  v60 = sub_1B0E42A98();
  if (v60)
  {
    v65 = sub_1B0E42AC8();
    if (__OFSUB__(v18, v65))
    {
      goto LABEL_180;
    }

    v60 += v18 - v65;
  }

  v2 = v91;
  v66 = sub_1B0E42AB8();
  if (v66 >= (v18 >> 32) - v18)
  {
    v63 = (v18 >> 32) - v18;
  }

  else
  {
    v63 = v66;
  }

  v64 = v87;
  if (!v87)
  {
    goto LABEL_181;
  }

  if (v60)
  {
    goto LABEL_144;
  }

  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  sub_1B0E42AB8();
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  result = sub_1B0E42AB8();
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
  return result;
}

uint64_t sub_1B0B74018(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v11 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v12 = v4;
      do
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_159;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v13 = *(v5 + 8 * v4);
        ++v12;
      }

      while (!v13);
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
LABEL_13:
      v14 = v10 | (v4 << 6);
      v15 = *(*(v3 + 48) + 4 * v14);
      v16 = (*(v3 + 56) + 16 * v14);
      v18 = *v16;
      v17 = v16[1];
      sub_1B03B2000(*v16, v17);
      result = v17 >> 60 == 15;
      if (v17 >> 60 == 15)
      {
        return result;
      }

      v94 = v11;
      v20 = sub_1B03FE284(v15);
      if ((v21 & 1) == 0)
      {
        goto LABEL_155;
      }

      v22 = (*(v2 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v24 >> 62;
      v26 = v17 >> 62;
      if (v24 >> 62 != 3)
      {
        break;
      }

      if (v23)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24 == 0xC000000000000000;
      }

      v28 = v27 && v17 >> 62 == 3;
      if (!v28 || (!v18 ? (v29 = v17 == 0xC000000000000000) : (v29 = 0), !v29))
      {
LABEL_39:
        v32 = 0;
        if (v26 > 1)
        {
          goto LABEL_40;
        }

LABEL_37:
        if (!v26)
        {
          v36 = BYTE6(v17);
          goto LABEL_46;
        }

        LODWORD(v36) = HIDWORD(v18) - v18;
        if (!__OFSUB__(HIDWORD(v18), v18))
        {
          v36 = v36;
          goto LABEL_46;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
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
      }

      v30 = 0;
      v31 = 0xC000000000000000;
LABEL_59:
      sub_1B0391D50(v30, v31);
      v8 = v94;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_39;
      }

      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (!v35)
      {
        if (v26 > 1)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_161;
    }

    if (v25)
    {
      LODWORD(v32) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
        goto LABEL_162;
      }

      v32 = v32;
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v32 = BYTE6(v24);
      if (v26 <= 1)
      {
        goto LABEL_37;
      }
    }

LABEL_40:
    if (v26 != 2)
    {
      if (v32)
      {
        goto LABEL_155;
      }

LABEL_58:
      v30 = v18;
      v31 = v17;
      goto LABEL_59;
    }

    v38 = *(v18 + 16);
    v37 = *(v18 + 24);
    v35 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (v35)
    {
      goto LABEL_160;
    }

LABEL_46:
    if (v32 != v36)
    {
LABEL_155:
      sub_1B0391D50(v18, v17);
      return 0;
    }

    if (v32 < 1)
    {
      goto LABEL_58;
    }

    if (v25 > 1)
    {
      break;
    }

    if (!v25)
    {
      __s1[0] = v23;
      LOWORD(__s1[1]) = v24;
      BYTE2(__s1[1]) = BYTE2(v24);
      BYTE3(__s1[1]) = BYTE3(v24);
      BYTE4(__s1[1]) = BYTE4(v24);
      BYTE5(__s1[1]) = BYTE5(v24);
      if (!v26)
      {
        goto LABEL_81;
      }

      v91 = v23;
      if (v26 != 1)
      {
        v70 = *(v18 + 16);
        v87 = *(v18 + 24);
        sub_1B03B2000(v23, v24);
        v67 = sub_1B0E42A98();
        v90 = v2;
        if (v67)
        {
          v71 = sub_1B0E42AC8();
          if (__OFSUB__(v70, v71))
          {
            goto LABEL_177;
          }

          v67 += v70 - v71;
        }

        v69 = v87 - v70;
        if (__OFSUB__(v87, v70))
        {
          goto LABEL_169;
        }

        result = sub_1B0E42AB8();
        if (!v67)
        {
          goto LABEL_187;
        }

        goto LABEL_119;
      }

      v83 = ((v18 >> 32) - v18);
      if (v18 >> 32 < v18)
      {
        goto LABEL_167;
      }

      sub_1B03B2000(v23, v24);
      v39 = sub_1B0E42A98();
      if (!v39)
      {
        goto LABEL_186;
      }

      v40 = v39;
      v41 = sub_1B0E42AC8();
      if (__OFSUB__(v18, v41))
      {
        goto LABEL_171;
      }

      v42 = (v18 - v41 + v40);
      result = sub_1B0E42AB8();
      if (!v42)
      {
        goto LABEL_193;
      }

      goto LABEL_77;
    }

    v89 = v2;
    v47 = v23;
    if (v23 > v23 >> 32)
    {
      goto LABEL_163;
    }

    v92 = v23;
    sub_1B03B2000(v23, v24);
    v48 = sub_1B0E42A98();
    if (v48)
    {
      v49 = v48;
      v50 = sub_1B0E42AC8();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_165;
      }

      v85 = (v47 - v50 + v49);
    }

    else
    {
      v85 = 0;
    }

    sub_1B0E42AB8();
    v3 = a1;
    if (v26 == 2)
    {
      v79 = *(v18 + 16);
      v78 = *(v18 + 24);
      v60 = sub_1B0E42A98();
      if (v60)
      {
        v80 = sub_1B0E42AC8();
        if (__OFSUB__(v79, v80))
        {
          goto LABEL_179;
        }

        v60 += v79 - v80;
      }

      v35 = __OFSUB__(v78, v79);
      v81 = v78 - v79;
      if (v35)
      {
        goto LABEL_175;
      }

      v82 = sub_1B0E42AB8();
      if (v82 >= v81)
      {
        v63 = v81;
      }

      else
      {
        v63 = v82;
      }

      result = v85;
      if (!v85)
      {
        goto LABEL_197;
      }

      v2 = v89;
      if (!v60)
      {
        goto LABEL_196;
      }
    }

    else
    {
      if (v26 != 1)
      {
        result = v85;
        v2 = v89;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v85)
        {
          goto LABEL_194;
        }

        goto LABEL_150;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_174;
      }

      v60 = sub_1B0E42A98();
      if (v60)
      {
        v64 = sub_1B0E42AC8();
        if (__OFSUB__(v18, v64))
        {
          goto LABEL_181;
        }

        v60 += v18 - v64;
      }

      v2 = v89;
      v65 = sub_1B0E42AB8();
      if (v65 >= (v18 >> 32) - v18)
      {
        v63 = (v18 >> 32) - v18;
      }

      else
      {
        v63 = v65;
      }

      result = v85;
      if (!v85)
      {
        goto LABEL_185;
      }

      if (!v60)
      {
        goto LABEL_184;
      }
    }

LABEL_144:
    if (result == v60)
    {
      sub_1B0391D50(v18, v17);
      sub_1B0391D50(v92, v24);
      v3 = a1;
      v8 = v94;
    }

    else
    {
      v55 = memcmp(result, v60, v63);
      sub_1B0391D50(v18, v17);
      v56 = v92;
      v57 = v24;
LABEL_147:
      sub_1B0391D50(v56, v57);
LABEL_148:
      v3 = a1;
LABEL_152:
      v8 = v94;
      result = 0;
      if (v55)
      {
        return result;
      }
    }
  }

  if (v25 == 2)
  {
    v88 = v2;
    v92 = v23;
    v43 = *(v23 + 16);
    sub_1B03B2000(v23, v24);
    v44 = sub_1B0E42A98();
    if (v44)
    {
      v45 = v44;
      v46 = sub_1B0E42AC8();
      if (__OFSUB__(v43, v46))
      {
        goto LABEL_164;
      }

      v84 = (v43 - v46 + v45);
    }

    else
    {
      v84 = 0;
    }

    sub_1B0E42AB8();
    v3 = a1;
    if (v26 == 2)
    {
      v74 = *(v18 + 16);
      v73 = *(v18 + 24);
      v60 = sub_1B0E42A98();
      if (v60)
      {
        v75 = sub_1B0E42AC8();
        if (__OFSUB__(v74, v75))
        {
          goto LABEL_178;
        }

        v60 += v74 - v75;
      }

      v35 = __OFSUB__(v73, v74);
      v76 = v73 - v74;
      if (v35)
      {
        goto LABEL_173;
      }

      v77 = sub_1B0E42AB8();
      if (v77 >= v76)
      {
        v63 = v76;
      }

      else
      {
        v63 = v77;
      }

      result = v84;
      if (!v84)
      {
        goto LABEL_190;
      }

      v2 = v88;
      if (!v60)
      {
        goto LABEL_189;
      }
    }

    else
    {
      if (v26 != 1)
      {
        result = v84;
        v2 = v88;
        __s1[0] = v18;
        LOWORD(__s1[1]) = v17;
        BYTE2(__s1[1]) = BYTE2(v17);
        BYTE3(__s1[1]) = BYTE3(v17);
        BYTE4(__s1[1]) = BYTE4(v17);
        BYTE5(__s1[1]) = BYTE5(v17);
        if (!v84)
        {
          goto LABEL_188;
        }

LABEL_150:
        v55 = memcmp(result, __s1, BYTE6(v17));
        sub_1B0391D50(v18, v17);
        v58 = v92;
        v59 = v24;
        goto LABEL_151;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_170;
      }

      v60 = sub_1B0E42A98();
      if (v60)
      {
        v61 = sub_1B0E42AC8();
        if (__OFSUB__(v18, v61))
        {
          goto LABEL_180;
        }

        v60 += v18 - v61;
      }

      v2 = v88;
      v62 = sub_1B0E42AB8();
      if (v62 >= (v18 >> 32) - v18)
      {
        v63 = (v18 >> 32) - v18;
      }

      else
      {
        v63 = v62;
      }

      result = v84;
      if (!v84)
      {
        goto LABEL_192;
      }

      if (!v60)
      {
        goto LABEL_191;
      }
    }

    goto LABEL_144;
  }

  memset(__s1, 0, 14);
  if (v26 == 2)
  {
    v66 = *(v18 + 16);
    v86 = *(v18 + 24);
    v91 = v23;
    sub_1B03B2000(v23, v24);
    v67 = sub_1B0E42A98();
    v90 = v2;
    if (v67)
    {
      v68 = sub_1B0E42AC8();
      if (__OFSUB__(v66, v68))
      {
        goto LABEL_176;
      }

      v67 += v66 - v68;
    }

    v69 = v86 - v66;
    if (__OFSUB__(v86, v66))
    {
      goto LABEL_168;
    }

    result = sub_1B0E42AB8();
    if (!v67)
    {
      goto LABEL_195;
    }

LABEL_119:
    if (result >= v69)
    {
      v72 = v69;
    }

    else
    {
      v72 = result;
    }

    v55 = memcmp(__s1, v67, v72);
    sub_1B0391D50(v91, v24);
    sub_1B0391D50(v18, v17);
    v2 = v90;
    goto LABEL_148;
  }

  if (v26 != 1)
  {
LABEL_81:
    __s2 = v18;
    v96 = v17;
    v97 = BYTE2(v17);
    v98 = BYTE3(v17);
    v99 = BYTE4(v17);
    v100 = BYTE5(v17);
    v55 = memcmp(__s1, &__s2, BYTE6(v17));
    v58 = v18;
    v59 = v17;
LABEL_151:
    sub_1B0391D50(v58, v59);
    goto LABEL_152;
  }

  v83 = ((v18 >> 32) - v18);
  if (v18 >> 32 < v18)
  {
    goto LABEL_166;
  }

  v91 = v23;
  sub_1B03B2000(v23, v24);
  v51 = sub_1B0E42A98();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1B0E42AC8();
    if (__OFSUB__(v18, v53))
    {
      goto LABEL_172;
    }

    v42 = (v18 - v53 + v52);
    result = sub_1B0E42AB8();
    if (!v42)
    {
      goto LABEL_183;
    }

LABEL_77:
    if (result >= v83)
    {
      v54 = v83;
    }

    else
    {
      v54 = result;
    }

    v55 = memcmp(__s1, v42, v54);
    sub_1B0391D50(v91, v24);
    v56 = v18;
    v57 = v17;
    goto LABEL_147;
  }

  sub_1B0E42AB8();
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  result = sub_1B0E42AB8();
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
  return result;
}

uint64_t sub_1B0B749AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 4 * v12);
    v14 = *(v3 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 9);
    v18 = sub_1B03FE284(v13);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

    v20 = *(a2 + 56) + 16 * v18;
    if (*(v20 + 8) == 1)
    {
      result = 0;
      if (!v16)
      {
        return result;
      }
    }

    else
    {
      if (v16)
      {
        return 0;
      }

      result = 0;
      if (*v20 != v15)
      {
        return result;
      }
    }

    if ((v17 ^ *(v20 + 9)))
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t RunningSyncRequests.Change.started.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_1B0450C74(a1, v1);
}

uint64_t RunningSyncRequests.Change.completed.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 40));

  return sub_1B0450C74(a1, v1 + 40);
}

uint64_t RunningSyncRequests.Change.init<A, B>(started:completed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  a7[3] = a3;
  a7[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
  v17 = *(a3 - 8);
  (*(v17 + 16))(boxed_opaque_existential_1, a1, a3);
  a7[8] = a4;
  a7[9] = a6;
  v14 = __swift_allocate_boxed_opaque_existential_1(a7 + 5);
  (*(*(a4 - 8) + 32))(v14, a2, a4);
  v15 = *(v17 + 8);

  return v15(a1, a3);
}

uint64_t sub_1B0B74D20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 32);
  *a2 = *result;
  *(a2 + 4) = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t static RunningSyncRequests.Change.Started.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    switch(BYTE4(a1))
    {
      case 2u:
        if (BYTE4(a2) == 2)
        {
          return 1;
        }

        break;
      case 3u:
        if (BYTE4(a2) == 3)
        {
          return 1;
        }

        break;
      case 4u:
        if (BYTE4(a2) == 4)
        {
          return 1;
        }

        break;
      default:
        if (BYTE4(a2) - 2 >= 3 && ((HIDWORD(a2) ^ HIDWORD(a1)) & 1) == 0)
        {
          return 1;
        }

        break;
    }
  }

  return 0;
}

BOOL sub_1B0B74E1C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v2 != 4)
  {
    return (v3 - 2) >= 3 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 4;
}

BOOL static RunningSyncRequests.Change.Completed.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  if (BYTE4(a1) == 2)
  {
    if (BYTE4(a3) == 2)
    {
      return a2 == a4;
    }
  }

  else
  {
    if (BYTE4(a1) != 3)
    {
      if (BYTE4(a1) == 4)
      {
        if (BYTE4(a3) != 4)
        {
          return 0;
        }
      }

      else if (BYTE4(a3) - 2 < 3 || ((HIDWORD(a3) ^ HIDWORD(a1)) & 1) != 0)
      {
        return 0;
      }

      return a2 == a4;
    }

    if (BYTE4(a3) == 3)
    {
      return a2 == a4;
    }
  }

  return 0;
}

BOOL sub_1B0B74F9C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  else
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        if (v3 != 4)
        {
          return 0;
        }
      }

      else if (v3 - 2) < 3 || ((v3 ^ v2))
      {
        return 0;
      }

      return *(a1 + 8) == *(a2 + 8);
    }

    if (v3 == 3)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  return 0;
}

uint64_t sub_1B0B75030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B75078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy46_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0B75140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 46))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 45);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0B7517C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 30) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *(result + 45) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0B751C8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 29) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 45) = a2;
  return result;
}

uint64_t sub_1B0B75280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = MEMORY[0x1E69E7CC0];
  *(a3 + 48) = MEMORY[0x1E69E7CC0];
  *(a3 + 56) = v6;
  v7 = type metadata accessor for RunningTask(0);
  v8 = a3 + v7[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a3 + v7[13]);
  *v9 = sub_1B0B75200;
  v9[1] = 0;
  v10 = (a3 + v7[14]);
  *v10 = sub_1B0B75228;
  v10[1] = 0;
  sub_1B0B7ABE4(a1, v18);
  if (v19)
  {
    sub_1B0450C74(v18, v15);
    sub_1B03D2CA8(v15, a3);
    *(a3 + 40) = 0;
    *(a3 + 44) = 257;
  }

  else
  {
    sub_1B0450C74(v18, v15);
    sub_1B03D2CA8(v15, a3);
    *(a3 + 45) = 0;
  }

  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_0(v15, v16);
  (*(v12 + 16))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  sub_1B0B7ABE4(a1, v18);
  sub_1B0BAF464(v18, v3, a3 + v7[7]);
  *(a3 + v7[8]) = 0;
  *(a3 + v7[11]) = 1;
  *(a3 + v7[12]) = 1;
  v13 = static MonotonicTime.now()();
  result = sub_1B0B7AC40(a1);
  *(a3 + v7[10]) = v13;
  return result;
}

unint64_t sub_1B0B7544C()
{
  result = qword_1EB6E4BB0;
  if (!qword_1EB6E4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4BB0);
  }

  return result;
}

uint64_t sub_1B0B754A0()
{
  v0 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v0);

  return 35;
}

uint64_t sub_1B0B75508()
{
  sub_1B0450DB0(v0, v7);
  if (!v11)
  {
    goto LABEL_4;
  }

  if (v11 == 1)
  {
    if ((v10 & 1) == 0)
    {
      sub_1B0450C74(v7[0].i8, v5);
      __swift_project_boxed_opaque_existential_0(v5, v6);
      v3 = sub_1B0E46A88();
      sub_1B0E46298();
      MEMORY[0x1B2726E80](0x6E6E6F63206E6F20, 0xEF206E6F69746365);
      sub_1B0E46508();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](0, 0xE000000000000000);

      v1 = v3;
      goto LABEL_9;
    }

LABEL_4:
    sub_1B0450C74(v7[0].i8, v5);
    __swift_project_boxed_opaque_existential_0(v5, v6);
    v1 = sub_1B0E46A88();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    return v1;
  }

  v2 = vorrq_s8(v7[0], v7[1]);
  if (v9 | (v10 << 32) | *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v8)
  {
    return 0x64656C696146;
  }

  else
  {
    return 0x6574656C706D6F43;
  }
}

uint64_t sub_1B0B756E8()
{
  v1 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v51 - v4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v58 = v0;
  v59 = v8;
  v13 = *(v0 + 48);
  v14 = *(v13 + 16);
  v60 = v15;
  v51 = v10;
  v55 = v13;
  if (v14)
  {
    v16 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B0390340(v16, v12, type metadata accessor for TaskHistory.Running);
      sub_1B0390340(v12, v5, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B0453E78(v12, type metadata accessor for TaskHistory.Running);
        sub_1B0453E78(v5, type metadata accessor for TaskHistory.Running);
      }

      else
      {
        v19 = *v5;
        v20 = v5[1];
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
        sub_1B0453E78(v5 + *(v21 + 64), type metadata accessor for ClientCommand);
        LOBYTE(v61[0]) = v19;
        HIDWORD(v61[0]) = v20;
        v22 = sub_1B0E44B88();
        v24 = v23;
        sub_1B0453E78(v12, type metadata accessor for TaskHistory.Running);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B0AFF0E8(0, *(v18 + 2) + 1, 1, v18);
        }

        v26 = *(v18 + 2);
        v25 = *(v18 + 3);
        if (v26 >= v25 >> 1)
        {
          v18 = sub_1B0AFF0E8((v25 > 1), v26 + 1, 1, v18);
        }

        *(v18 + 2) = v26 + 1;
        v27 = &v18[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
        v8 = v59;
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v61[0] = v18;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  v53 = sub_1B03B11C4();
  v54 = v28;
  v56 = sub_1B0E448E8();
  v57 = v29;

  v30 = *(v55 + 16);
  if (v30)
  {
    v31 = v52;
    v32 = v55 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v33 = *(v51 + 72);
    v34 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B0390340(v32, v8, type metadata accessor for TaskHistory.Running);
      sub_1B0390340(v8, v31, type metadata accessor for TaskHistory.Running);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = *v31;
        sub_1B03E1BE8(*(v31 + 8));
        LODWORD(v61[0]) = v35;
        sub_1B07467B8();
        v36 = sub_1B0E44E98();
        v38 = v37;
        sub_1B0453E78(v8, type metadata accessor for TaskHistory.Running);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1B0AFF0E8(0, *(v34 + 2) + 1, 1, v34);
        }

        v40 = *(v34 + 2);
        v39 = *(v34 + 3);
        if (v40 >= v39 >> 1)
        {
          v34 = sub_1B0AFF0E8((v39 > 1), v40 + 1, 1, v34);
        }

        *(v34 + 2) = v40 + 1;
        v41 = &v34[16 * v40];
        *(v41 + 4) = v36;
        *(v41 + 5) = v38;
        v8 = v59;
      }

      else
      {
        sub_1B0453E78(v8, type metadata accessor for TaskHistory.Running);
        sub_1B0453E78(v31, type metadata accessor for TaskHistory.Running);
      }

      v32 += v33;
      --v30;
    }

    while (v30);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v61[0] = v34;
  v42 = sub_1B0E448E8();
  v44 = v43;

  v45 = sub_1B0B75508();
  v47 = v46;
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_1B0E46298();

  strcpy(v61, " commands: {");
  BYTE5(v61[1]) = 0;
  HIWORD(v61[1]) = -5120;
  MEMORY[0x1B2726E80](v56, v57);

  MEMORY[0x1B2726E80](0x6F69746361202C7DLL, 0xED00007B203A736ELL);
  MEMORY[0x1B2726E80](v42, v44);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  v48 = v61[0];
  v49 = v61[1];
  v61[0] = v45;
  v61[1] = v47;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](v48, v49);

  return v61[0];
}

void sub_1B0B75C78(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TaskHistory.Running(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RunningTask(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + *(v9 + 40));
  if (v19 <= a1)
  {
LABEL_6:
    v20 = a1 - v19;
    if (!__OFSUB__(a1, v19))
    {
      goto LABEL_7;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v19, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v20 = a1 - v19;
  if (__OFSUB__(0, v19 - a1))
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v21 = v20 / 1000000000.0;
  if (v21 > 9.0)
  {
    v56 = v2;
    v57 = v18;
    v55 = v16;
    v22 = *(v2 + 48);
    v23 = *(v22 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v51 = a2;
      v52 = v9;
      v53 = v14;
      v54 = v11;
      v58 = MEMORY[0x1E69E7CC0];
      sub_1B041D32C(0, v23, 0);
      v24 = v58;
      v25 = v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v26 = *(v6 + 72);
      do
      {
        sub_1B0390340(v25, v8, type metadata accessor for TaskHistory.Running);
        v27 = sub_1B0BB0264();
        v29 = v28;
        sub_1B0453E78(v8, type metadata accessor for TaskHistory.Running);
        v58 = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1B041D32C((v30 > 1), v31 + 1, 1);
          v24 = v58;
        }

        *(v24 + 16) = v31 + 1;
        v32 = v24 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        v25 += v26;
        --v23;
      }

      while (v23);
      v14 = v53;
      v11 = v54;
      a2 = v51;
      v9 = v52;
    }

    v58 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v33 = sub_1B0E448E8();
    v35 = v34;

    v36 = v57;
    sub_1B0390340(a2, v57, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v37 = v56;
    sub_1B0390340(v56, v14, type metadata accessor for RunningTask);
    sub_1B0390340(v37, v11, type metadata accessor for RunningTask);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = sub_1B0E43988();
    v39 = sub_1B0E458E8();

    if (os_log_type_enabled(v38, v39))
    {
      v56 = v33;
      v40 = v36;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 68158978;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v43 = *(v40 + *(v55 + 20));
      sub_1B0453E78(v40, type metadata accessor for State.Logger);
      *(v41 + 10) = v43;
      *(v41 + 11) = 2082;
      v44 = &v14[*(v9 + 28)];
      v45 = &v44[*(type metadata accessor for Task.Logger(0) + 20)];
      v46 = *(v45 + 1);
      v47 = *(v45 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0453E78(v14, type metadata accessor for RunningTask);
      v48 = sub_1B0399D64(v46, v47, &v58);

      *(v41 + 13) = v48;
      *(v41 + 21) = 2048;
      if (*&v21 >> 52 <= 0x7FEuLL)
      {
        if (v21 > -9.22337204e18)
        {
          if (v21 < 9.22337204e18)
          {
            *(v41 + 23) = v21;
            *(v41 + 31) = 2048;
            v49 = *(*(v11 + 6) + 16);
            sub_1B0453E78(v11, type metadata accessor for RunningTask);
            *(v41 + 33) = v49;
            *(v41 + 41) = 2082;
            v50 = sub_1B0399D64(v56, v35, &v58);

            *(v41 + 43) = v50;
            _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx] Task %{public}s has been running for %ld s. Still running %ld: %{public}s", v41, 0x33u);
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v42, -1, -1);
            MEMORY[0x1B272C230](v41, -1, -1);

            return;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_1B0453E78(v11, type metadata accessor for RunningTask);
    sub_1B0453E78(v36, type metadata accessor for State.Logger);

    sub_1B0453E78(v14, type metadata accessor for RunningTask);
  }
}

void *sub_1B0B76258(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a4 & 0x100000000) == 0)
  {
    v9 = a4;
    v12 = result[3];
    v13 = result[4];
    v14 = result;
    v18[8] = a5;
    __swift_project_boxed_opaque_existential_0(result, v12);
    (*(v13 + 32))(&v19, v12, v13);
    v15 = v20;
    v16 = v21;
    v22 = v19;
    sub_1B039E440(&v22);
    MEMORY[0x1EEE9AC00](v17);
    v18[2] = v14;
    v18[3] = a6;
    v18[4] = a2;
    v18[5] = a3;
    v18[6] = a7;
    sub_1B0B7637C(v9, v15, v16, sub_1B0B7C754, v18);
  }

  return result;
}

void sub_1B0B7637C(int a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v55 = a1;
  v11 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 192) == 1)
  {
    v14 = *(v5 + 168);
    v15 = *(v14 + 16);
    if (v15)
    {
      v38 = v13;
      v39 = a5;
      v40 = a4;
      v41 = v6;
      v16 = 0;
      v17 = v14 + 32;
      v18 = a3 | (a3 << 32);
      v42 = (a2 + 32);
      do
      {
        v19 = (v17 + 176 * v16);
        v20 = *v19;
        v21 = v19[2];
        v45 = v19[1];
        v46 = v21;
        v44 = v20;
        v22 = v19[3];
        v23 = v19[4];
        v24 = v19[6];
        v49 = v19[5];
        v50 = v24;
        v47 = v22;
        v48 = v23;
        v25 = v19[7];
        v26 = v19[8];
        v27 = v19[10];
        v53 = v19[9];
        v54 = v27;
        v51 = v25;
        v52 = v26;
        v28 = v50;
        if (v50)
        {
          v29 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v30 = *(v28 + v29);
        }

        else
        {
          v30 = 0;
        }

        if ((DWORD2(v45) | (DWORD2(v45) << 32)) == v18)
        {
          v31 = *(v45 + 16);
          if (v31 == *(a2 + 16))
          {
            if (!v31 || v45 == a2)
            {
LABEL_15:
              if (v28 && v30 == v55)
              {
                v34 = v28 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                swift_beginAccess();
                v35 = _s13SelectedStateV7WrappedVMa(0);
                v36 = v38;
                sub_1B0390340(v34 + *(v35 + 20), v38, type metadata accessor for MailboxSyncState);
                sub_1B03A35B8(&v44, &v43);

                v40(&v56, v36);
                sub_1B0453E78(v36, type metadata accessor for MailboxSyncState);

                sub_1B03A3614(&v44);
                return;
              }
            }

            else
            {
              v32 = (v45 + 32);
              v33 = v42;
              while (*v32 == *v33)
              {
                ++v32;
                ++v33;
                if (!--v31)
                {
                  goto LABEL_15;
                }
              }
            }
          }
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }
}

void sub_1B0B76610(int a1, uint64_t a2, unsigned int a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v55 = a1;
  v11 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + 192) == 1)
  {
    v14 = *(v5 + 168);
    v15 = *(v14 + 16);
    if (v15)
    {
      v38 = v13;
      v39 = a5;
      v40 = a4;
      v41 = v6;
      v16 = 0;
      v17 = v14 + 32;
      v18 = a3 | (a3 << 32);
      v42 = (a2 + 32);
      do
      {
        v19 = (v17 + 176 * v16);
        v20 = *v19;
        v21 = v19[2];
        v45 = v19[1];
        v46 = v21;
        v44 = v20;
        v22 = v19[3];
        v23 = v19[4];
        v24 = v19[6];
        v49 = v19[5];
        v50 = v24;
        v47 = v22;
        v48 = v23;
        v25 = v19[7];
        v26 = v19[8];
        v27 = v19[10];
        v53 = v19[9];
        v54 = v27;
        v51 = v25;
        v52 = v26;
        v28 = v50;
        if (v50)
        {
          v29 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
          swift_beginAccess();
          v30 = *(v28 + v29);
        }

        else
        {
          v30 = 0;
        }

        if ((DWORD2(v45) | (DWORD2(v45) << 32)) == v18)
        {
          v31 = *(v45 + 16);
          if (v31 == *(a2 + 16))
          {
            if (!v31 || v45 == a2)
            {
LABEL_15:
              if (v28 && v30 == v55)
              {
                v34 = v28 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                swift_beginAccess();
                v35 = _s13SelectedStateV7WrappedVMa(0);
                v36 = v38;
                sub_1B0390340(v34 + *(v35 + 20), v38, type metadata accessor for MailboxSyncState);
                sub_1B03A35B8(&v44, &v43);

                v40(&v56, v36);
                sub_1B0453E78(v36, type metadata accessor for MailboxSyncState);

                sub_1B03A3614(&v44);
                return;
              }
            }

            else
            {
              v32 = (v45 + 32);
              v33 = v42;
              while (*v32 == *v33)
              {
                ++v32;
                ++v33;
                if (!--v31)
                {
                  goto LABEL_15;
                }
              }
            }
          }
        }

        ++v16;
      }

      while (v16 != v15);
    }
  }
}

unint64_t sub_1B0B768A4(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (!(result >> 62))
  {
    v14 = *(result + 16);
    v15 = *(result + 24);
    v16 = *(result + 40);
    sub_1B0450DB0(a2, v21);
    if (v24 == 1)
    {
      v26 = v16;
      v17 = v22;
      v18 = v23;
      sub_1B0450C74(v21, v25);
      if ((v18 & 1) != 0 || v14 != v17)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(v25);
      }

      v19 = *(a2 + 48);
      v20 = *(a2 + 56);
      sub_1B044CD04(v15);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (sub_1B0BB2528(v15, v19))
      {
        LOBYTE(v21[0]) = 0;
        sub_1B0B7874C(v25, v19, v20, v14, a3, a4, a5);
        sub_1B044CEF8(v15);

        if (v5)
        {
          return __swift_destroy_boxed_opaque_existential_0Tm(v25);
        }

        sub_1B0B7ABB4(a2);
        result = sub_1B0450C74(v25, a2);
        *(a2 + 40) = v14;
        *(a2 + 44) = 256;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        sub_1B044CEF8(v15);
      }

      return result;
    }

    return sub_1B0B7ABB4(v21);
  }

  if (result >> 62 != 1)
  {
    return result;
  }

  sub_1B0450DB0(a2, v21);
  if (v24 != 1)
  {
    return sub_1B0B7ABB4(v21);
  }

  v10 = v22;
  v11 = v23;
  sub_1B0450C74(v21, v25);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  LOBYTE(v21[0]) = v11;
  sub_1B0B7874C(v25, v12, v13, v10 | (v11 << 32), a3, a4, a5);
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  sub_1B0B7ABB4(a2);
  result = sub_1B0450C74(v25, a2);
  *(a2 + 40) = v10;
  *(a2 + 44) = v11;
  *(a2 + 45) = 1;
  return result;
}

unint64_t sub_1B0B76AEC(unint64_t result, void (*a2)(__int128 *, uint64_t, uint64_t, unint64_t))
{
  if (!(result >> 62))
  {
    v9 = *(result + 16);
    v10 = *(result + 24);
    v11 = *(result + 48);
    sub_1B0450DB0(v2, v16);
    if (v19 == 1)
    {
      v21 = v11;
      v12 = v17;
      v13 = v18;
      sub_1B0450C74(v16, v20);
      if ((v13 & 1) != 0 || v9 != v12)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(v20);
      }

      v14 = *(v2 + 48);
      v15 = *(v2 + 56);
      sub_1B044CD04(v10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (sub_1B0BB2528(v10, v14))
      {
        LOBYTE(v16[0]) = 0;
        a2(v20, v14, v15, v9);
        sub_1B044CEF8(v10);

        if (v3)
        {
          return __swift_destroy_boxed_opaque_existential_0Tm(v20);
        }

        sub_1B0B7ABB4(v2);
        result = sub_1B0450C74(v20, v2);
        *(v2 + 40) = v9;
        *(v2 + 44) = 256;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        sub_1B044CEF8(v10);
      }

      return result;
    }

    return sub_1B0B7ABB4(v16);
  }

  if (result >> 62 != 1)
  {
    return result;
  }

  sub_1B0450DB0(v2, v16);
  if (v19 != 1)
  {
    return sub_1B0B7ABB4(v16);
  }

  v5 = v17;
  v6 = v18;
  sub_1B0450C74(v16, v20);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  LOBYTE(v16[0]) = v6;
  a2(v20, v7, v8, v5 | (v6 << 32));
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  sub_1B0B7ABB4(v2);
  result = sub_1B0450C74(v20, v2);
  *(v2 + 40) = v5;
  *(v2 + 44) = v6;
  *(v2 + 45) = 1;
  return result;
}

uint64_t sub_1B0B76D20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8)
{
  v10 = v9;
  v11 = v8;
  v79 = a7;
  v80 = a8;
  LODWORD(v88) = a6;
  v81 = a4;
  v82 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BE0, &qword_1B0EC9338);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v74 - v16);
  v18 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v74 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  sub_1B0BB04F0(a2, v17);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BE8, &qword_1B0EC9340);
  if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
  {
    return sub_1B0398EFC(v17, &qword_1EB6E4BE0, &qword_1B0EC9338);
  }

  v77 = v20;
  v28 = *v17;
  sub_1B0423C18(v17 + *(v26 + 48), v25, type metadata accessor for ClientCommand);
  sub_1B0450DB0(v11, v83);
  if (v84)
  {
    v29 = sub_1B0B7ABB4(v83);
    goto LABEL_5;
  }

  v75 = a2;
  sub_1B0450C74(v83, &v85);
  v54 = v86;
  v53 = v87;
  __swift_mutable_project_boxed_opaque_existential_1(&v85, v86);
  v55 = *(v53 + 72);
  v76 = v25;
  v55(v28, v25, a3, v81, v82, v88, a1, v54, v53);
  v10 = v9;
  if (!v9)
  {
    sub_1B0B7ABB4(v11);
    v29 = sub_1B0450C74(&v85, v11);
    *(v11 + 45) = 0;
    a2 = v75;
    v25 = v76;
LABEL_5:
    MEMORY[0x1EEE9AC00](v29);
    *(&v74 - 16) = v28;
    *(&v74 - 7) = v25;
    *(&v74 - 6) = a3;
    v30 = v82;
    *(&v74 - 5) = v81;
    *(&v74 - 4) = v30;
    *(&v74 - 24) = v88;
    v73 = a1;
    sub_1B0B768A4(v79, v11, v80, sub_1B0B7C7E4, (&v74 - 10));
    if (!v10)
    {
      LODWORD(v81) = v28;
      v75 = a2;
      v88 = 0;
      v31 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
      v32 = *(v31 + 8);
      v82 = *v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      v35 = *(v31 + 32);
      v36 = *(v31 + 40);
      if (v33 < 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v76 = v25;
        v56 = v77;
        sub_1B0390340(v25, v77, type metadata accessor for ClientCommand);
        v57 = sub_1B0E43988();
        v58 = sub_1B0E458C8();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          LODWORD(v78) = v36;
          v60 = v32;
          v61 = v59;
          v80 = swift_slowAlloc();
          *&v85 = v80;
          *v61 = 68160003;
          LODWORD(v79) = v58;
          *(v61 + 4) = 2;
          *(v61 + 8) = 256;
          *(v61 + 10) = v82;
          *(v61 + 11) = 2082;
          *(v61 + 13) = sub_1B0399D64(v60, v34, &v85);
          *(v61 + 21) = 1040;
          *(v61 + 23) = 2;
          *(v61 + 27) = 512;
          *(v61 + 29) = v33;

          *(v61 + 31) = 2160;
          *(v61 + 33) = 0x786F626C69616DLL;
          *(v61 + 41) = 2085;
          *&v83[0] = v35;
          DWORD2(v83[0]) = v78;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v62 = sub_1B0E44BA8();
          v64 = sub_1B0399D64(v62, v63, &v85);

          *(v61 + 43) = v64;
          *(v61 + 51) = 2082;
          v65 = ClientCommand.logIdentifier.getter();
          v67 = v66;
          sub_1B0453E78(v56, type metadata accessor for ClientCommand);
          v68 = sub_1B0399D64(v65, v67, &v85);

          *(v61 + 53) = v68;
          *(v61 + 61) = 2082;
          v69 = Tag.debugDescription.getter(v75 & 0xFFFFFFFF000000FFLL);
          v71 = sub_1B0399D64(v69, v70, &v85);

          *(v61 + 63) = v71;
          *(v61 + 71) = 1024;
          *(v61 + 73) = v81;
          _os_log_impl(&dword_1B0389000, v57, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed '%{public}s' (%{public}s, #%u)", v61, 0x4Du);
          v72 = v80;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v72, -1, -1);
          MEMORY[0x1B272C230](v61, -1, -1);
        }

        else
        {

          sub_1B0453E78(v56, type metadata accessor for ClientCommand);
        }

        v25 = v76;
      }

      else
      {
        v37 = v32;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v38 = v78;
        sub_1B0390340(v25, v78, type metadata accessor for ClientCommand);
        v39 = sub_1B0E43988();
        v40 = sub_1B0E458C8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          LODWORD(v79) = v40;
          v42 = v38;
          v43 = v41;
          v80 = swift_slowAlloc();
          *&v83[0] = v80;
          *v43 = 68158978;
          *(v43 + 4) = 2;
          *(v43 + 8) = 256;
          v44 = v82;
          *(v43 + 10) = v82;
          sub_1B0A92018(v44, v37, v34, v33);
          *(v43 + 11) = 2082;
          *(v43 + 13) = sub_1B0399D64(v37, v34, v83);
          *(v43 + 21) = 2082;
          v45 = ClientCommand.logIdentifier.getter();
          v47 = v46;
          sub_1B0453E78(v42, type metadata accessor for ClientCommand);
          v48 = sub_1B0399D64(v45, v47, v83);

          *(v43 + 23) = v48;
          *(v43 + 31) = 2082;
          v49 = Tag.debugDescription.getter(v75 & 0xFFFFFFFF000000FFLL);
          v51 = sub_1B0399D64(v49, v50, v83);

          *(v43 + 33) = v51;
          *(v43 + 41) = 1024;
          *(v43 + 43) = v81;
          _os_log_impl(&dword_1B0389000, v39, v79, "[%.*hhx-%{public}s] Completed '%{public}s' (%{public}s, #%u)", v43, 0x2Fu);
          v52 = v80;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v52, -1, -1);
          MEMORY[0x1B272C230](v43, -1, -1);
        }

        else
        {
          sub_1B0A92018(v82, v37, v34, v33);

          sub_1B0453E78(v38, type metadata accessor for ClientCommand);
        }
      }
    }

    return sub_1B0453E78(v25, type metadata accessor for ClientCommand);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v85);
  v25 = v76;
  return sub_1B0453E78(v25, type metadata accessor for ClientCommand);
}

uint64_t sub_1B0B77560(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v5;
  sub_1B0BB08D8(a2);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    v13 = v10;
    v14 = v11;
    sub_1B0450DB0(v4, v67);
    if (v68)
    {
      v15 = sub_1B0B7ABB4(v67);
    }

    else
    {
      v72 = a1;
      sub_1B0450C74(v67, &v69);
      v16 = v14;
      v17 = v13;
      v19 = v70;
      v18 = v71;
      __swift_mutable_project_boxed_opaque_existential_1(&v69, v70);
      (*(v18 + 80))(v17, v16, v19, v18);
      v6 = v5;
      if (v5)
      {
        sub_1B0AEF160(v17, v16);
        __swift_destroy_boxed_opaque_existential_0Tm(&v69);
        return v12 & 1;
      }

      sub_1B0B7ABB4(v4);
      v15 = sub_1B0450C74(&v69, v4);
      *(v4 + 45) = 0;
      v13 = v17;
      v14 = v16;
      a1 = v72;
    }

    MEMORY[0x1EEE9AC00](v15);
    v60[4] = v13;
    v61 = v14;
    v62 = a1;
    sub_1B0B768A4(a3, v4, a4, sub_1B0B7C8E4, v60);
    if (v6)
    {
      sub_1B0AEF160(v13, v14);
      return v12 & 1;
    }

    v72 = 0;
    v20 = a1 + *(type metadata accessor for Task.Logger(0) + 20);
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    v26 = *(v20 + 40);
    if (v24 < 0)
    {
      v64 = *v20;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v14);
      v43 = sub_1B0E43988();
      v44 = sub_1B0E458C8();
      sub_1B0AEF160(v13, v14);
      LODWORD(v66) = v44;
      v45 = v44;
      v31 = v43;
      if (os_log_type_enabled(v43, v45))
      {
        v46 = swift_slowAlloc();
        v65 = v26;
        v47 = v25;
        v48 = v46;
        v63 = swift_slowAlloc();
        *&v69 = v63;
        *v48 = 68159747;
        *(v48 + 4) = 2;
        *(v48 + 8) = 256;
        *(v48 + 10) = v64;
        *(v48 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v49 = v13;
        v50 = sub_1B0399D64(v21, v23, &v69);

        *(v48 + 13) = v50;
        *(v48 + 21) = 1040;
        *(v48 + 23) = 2;
        *(v48 + 27) = 512;

        *(v48 + 29) = v24;

        *(v48 + 31) = 2160;
        *(v48 + 33) = 0x786F626C69616DLL;
        *(v48 + 41) = 2085;

        *&v67[0] = v47;
        DWORD2(v67[0]) = v65;
        v51 = sub_1B0E44BA8();
        v53 = sub_1B0399D64(v51, v52, &v69);

        *(v48 + 43) = v53;
        *(v48 + 51) = 2082;
        v54 = Action.kind.getter(v14);
        v55 = Action.Kind.description.getter(v54);
        v57 = sub_1B0399D64(v55, v56, &v69);

        *(v48 + 53) = v57;
        *(v48 + 61) = 1024;
        *(v48 + 63) = v49;
        _os_log_impl(&dword_1B0389000, v31, v66, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Completed action '%{public}s' (#%u)", v48, 0x43u);
        v58 = v63;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v58, -1, -1);
        MEMORY[0x1B272C230](v48, -1, -1);
        v42 = v49;
        goto LABEL_15;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_1B0A982D8(*v20, *(v20 + 8), *(v20 + 16), *(v20 + 24));
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v14);
      v27 = sub_1B0E43988();
      v66 = v24;
      v28 = v27;
      v29 = sub_1B0E458C8();
      sub_1B0AEF160(v13, v14);
      LODWORD(v64) = v29;
      v30 = v29;
      v31 = v28;
      if (os_log_type_enabled(v28, v30))
      {
        v32 = swift_slowAlloc();
        v65 = v26;
        v33 = v32;
        v34 = swift_slowAlloc();
        *&v67[0] = v34;
        *v33 = 68158722;
        *(v33 + 4) = 2;
        *(v33 + 8) = 256;
        *(v33 + 10) = v22;
        *(v33 + 11) = 2082;
        v35 = sub_1B0399D64(v21, v23, v67);
        v63 = v13;
        v36 = v35;
        sub_1B0A92018(v22, v21, v23, v66);
        *(v33 + 13) = v36;
        *(v33 + 21) = 2082;
        v37 = Action.kind.getter(v14);
        v38 = Action.Kind.description.getter(v37);
        v40 = sub_1B0399D64(v38, v39, v67);

        *(v33 + 23) = v40;
        *(v33 + 31) = 1024;
        v41 = v63;
        *(v33 + 33) = v63;
        _os_log_impl(&dword_1B0389000, v31, v64, "[%.*hhx-%{public}s] Completed action '%{public}s' (#%u)", v33, 0x25u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v34, -1, -1);
        MEMORY[0x1B272C230](v33, -1, -1);
        v42 = v41;
LABEL_15:
        sub_1B0AEF160(v42, v14);

LABEL_19:
        v12 = 1;
        return v12 & 1;
      }

      sub_1B0A92018(v22, v21, v23, v66);
    }

    sub_1B0AEF160(v13, v14);
    goto LABEL_19;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1B0B77B7C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0450DB0(v4, &v41);
  if (v44 != 1)
  {
    return sub_1B0B7ABB4(&v41);
  }

  sub_1B0450C74(&v41, v45);
  v13 = v46;
  v14 = v47;
  __swift_project_boxed_opaque_existential_0(v45, v46);
  (*(v14 + 32))(&v48, v13, v14);
  v52 = v49;
  v53 = v50;
  v51 = v48;
  sub_1B039E440(&v51);
  if ((v53 | (v53 << 32)) == (a2 | (a2 << 32)))
  {
    v15 = sub_1B04520BC(v52, a1);
    sub_1B039E440(&v52);
    if (v15)
    {
      sub_1B0390340(a4, v12, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03D2CA8(v45, &v41);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v16 = sub_1B0E43988();
      v17 = sub_1B0E458C8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = v35;
        *v18 = 68158723;
        *(v18 + 4) = 2;
        *(v18 + 8) = 256;
        v19 = v12[*(v10 + 20)];
        sub_1B0453E78(v12, type metadata accessor for State.Logger);
        *(v18 + 10) = v19;
        *(v18 + 11) = 2160;
        *(v18 + 13) = 0x786F626C69616DLL;
        *(v18 + 21) = 2085;
        v37 = a1;
        v38 = a2;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v20 = sub_1B0E44BA8();
        v22 = sub_1B0399D64(v20, v21, &v36);

        *(v18 + 23) = v22;
        *(v18 + 31) = 2082;
        v23 = v42;
        v24 = v43;
        __swift_project_boxed_opaque_existential_0(&v41, v42);
        v25 = (*(v24 + 72))(v23, v24);
        v27 = v26;
        __swift_destroy_boxed_opaque_existential_0Tm(&v41);
        v28 = sub_1B0399D64(v25, v27, &v36);

        *(v18 + 33) = v28;
        _os_log_impl(&dword_1B0389000, v16, v17, "[%.*hhx] [%{sensitive,mask.mailbox}s] Marking task '%{public}s' as failed because we de-selected its mailbox.", v18, 0x29u);
        v29 = v35;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v29, -1, -1);
        MEMORY[0x1B272C230](v18, -1, -1);
      }

      else
      {
        sub_1B0453E78(v12, type metadata accessor for State.Logger);

        __swift_destroy_boxed_opaque_existential_0Tm(&v41);
      }

      sub_1B0450DB0(v5, &v41);
      if (v44)
      {
        if (v44 == 1)
        {
          sub_1B0450C74(&v41, &v37);
          v31 = v39;
          v32 = v40;
          __swift_project_boxed_opaque_existential_0(&v37, v39);
          v33 = type metadata accessor for RunningTask(0);
          (*(v32 + 136))(a3, v5 + *(v33 + 28), v31, v32);
          sub_1B0B7ABB4(v5);
          *v5 = 1;
          *(v5 + 8) = 0u;
          *(v5 + 24) = 0u;
          *(v5 + 37) = 0;
          *(v5 + 45) = 2;
          __swift_destroy_boxed_opaque_existential_0Tm(&v37);
        }
      }

      else
      {
        sub_1B0B7ABB4(v5);
        *v5 = 1;
        *(v5 + 8) = 0u;
        *(v5 + 24) = 0u;
        *(v5 + 37) = 0;
        *(v5 + 45) = 2;
        sub_1B0B7ABB4(&v41);
      }
    }
  }

  else
  {
    sub_1B039E440(&v52);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v45);
}

uint64_t sub_1B0B78004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t (*a6)(unint64_t)@<X5>, char *a7@<X8>)
{
  v9 = *(type metadata accessor for RunningTask(0) + 44);
  v10 = *(a2 + v9);
  *(a2 + v9) = v10 + 1;
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v14 = *(a3 + 24);
  v13 = *(a3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  v15 = *(v13 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v58 = v10;
  v16 = v15(v10 & 0xFFFFFF, v11, v12, a1, a4, v14, v13);

  if ((~v16 & 0xF000000000000007) != 0)
  {
    v53 = a2;
    v54 = a3;
    v60 = a6(v16);
    v19 = a4 + *(type metadata accessor for Task.Logger(0) + 20);
    v20 = *v19;
    v21 = *(v19 + 8);
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    v24 = *(v19 + 32);
    v25 = *(v19 + 40);
    if (v22 < 0)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v16);
      v37 = sub_1B0E43988();
      v38 = sub_1B0E458C8();
      sub_1B0B7C1A0(v16);
      if (os_log_type_enabled(v37, v38))
      {
        log = v37;
        v39 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v69 = v57;
        *v39 = 68159747;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        *(v39 + 10) = v20;
        *(v39 + 11) = 2082;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v40 = HIDWORD(v24);
        v41 = sub_1B0399D64(v21, v23, &v69);

        *(v39 + 13) = v41;
        *(v39 + 21) = 1040;
        *(v39 + 23) = 2;
        *(v39 + 27) = 512;

        *(v39 + 29) = v22;

        *(v39 + 31) = 2160;
        *(v39 + 33) = 0x786F626C69616DLL;
        *(v39 + 41) = 2085;

        HIDWORD(v65) = v40;
        v66 = v25;
        v42 = sub_1B0E44BA8();
        v44 = sub_1B0399D64(v42, v43, &v69);

        *(v39 + 43) = v44;
        *(v39 + 51) = 2082;
        v45 = Action.kind.getter(v16);
        v46 = Action.Kind.description.getter(v45);
        v48 = sub_1B0399D64(v46, v47, &v69);

        *(v39 + 53) = v48;
        *(v39 + 61) = 2080;
        LODWORD(v65) = v60;
        sub_1B07467B8();
        v49 = sub_1B0E44E98();
        v51 = sub_1B0399D64(v49, v50, &v69);

        *(v39 + 63) = v51;
        _os_log_impl(&dword_1B0389000, log, v38, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' %s", v39, 0x47u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v57, -1, -1);
        MEMORY[0x1B272C230](v39, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
      sub_1B0A982D8(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24));
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03E14B4(v16);
      v26 = sub_1B0E43988();
      v27 = sub_1B0E458C8();
      sub_1B0B7C1A0(v16);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = v64;
        *v28 = 68158722;
        *(v28 + 4) = 2;
        *(v28 + 8) = 256;
        *(v28 + 10) = v20;
        *(v28 + 11) = 2082;
        v29 = sub_1B0399D64(v21, v23, &v65);
        sub_1B0A92018(v20, v21, v23, v22);
        *(v28 + 13) = v29;
        *(v28 + 21) = 2082;
        v30 = Action.kind.getter(v16);
        v31 = Action.Kind.description.getter(v30);
        v33 = sub_1B0399D64(v31, v32, &v65);

        *(v28 + 23) = v33;
        *(v28 + 31) = 2080;
        LODWORD(v69) = v60;
        sub_1B07467B8();
        v34 = sub_1B0E44E98();
        v36 = sub_1B0399D64(v34, v35, &v65);

        *(v28 + 33) = v36;
        _os_log_impl(&dword_1B0389000, v26, v27, "[%.*hhx-%{public}s] Sent '%{public}s' %s", v28, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v64, -1, -1);
        MEMORY[0x1B272C230](v28, -1, -1);
      }

      else
      {

        sub_1B0A92018(v20, v21, v23, v22);
      }
    }

    sub_1B03D2CA8(v54, &v65);
    v67 = a5;
    v68 = 256;
    sub_1B0B7C1B4(&v65, v53);
    sub_1B0BB0FA8(v16, v60, v58 & 0xFFFFFF, v52);
    result = sub_1B0B7C1A0(v16);
    v18 = 0;
  }

  else
  {
    sub_1B03D2CA8(a3, &v65);
    v67 = a5;
    v68 = 256;
    result = sub_1B0B7C1B4(&v65, a2);
    v18 = 1;
  }

  *a7 = v18;
  return result;
}

uint64_t sub_1B0B7862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0390340(a1, v6, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    result = sub_1B0453E78(v6, type metadata accessor for TaskHistory.Running);
    v9 = 0;
  }

  else
  {
    v9 = *v6;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    result = sub_1B0453E78(v6 + *(v10 + 64), type metadata accessor for ClientCommand);
  }

  *a2 = v9;
  *(a2 + 4) = EnumCaseMultiPayload == 1;
  return result;
}

void sub_1B0B7874C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v67 = a7;
  v14 = type metadata accessor for MailboxSyncState(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 0x100000000) == 0)
  {
    v44 = v16;
    v45 = a6;
    v46 = a3;
    v47 = a2;
    v48 = v7;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v17);
    (*(v18 + 32))(&v61, v17, v18);
    v65 = v62;
    v66 = v63;
    v64 = v61;
    sub_1B039E440(&v64);
    if (*(a5 + 192) == 1)
    {
      v19 = *(a5 + 168);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = v19 + 32;
        do
        {
          v23 = (v22 + 176 * v21);
          v24 = *v23;
          v25 = v23[2];
          v51 = v23[1];
          v52 = v25;
          v50 = v24;
          v26 = v23[3];
          v27 = v23[4];
          v28 = v23[6];
          v55 = v23[5];
          v56 = v28;
          v53 = v26;
          v54 = v27;
          v29 = v23[7];
          v30 = v23[8];
          v31 = v23[10];
          v59 = v23[9];
          v60 = v31;
          v57 = v29;
          v58 = v30;
          v32 = v56;
          if (v56)
          {
            v33 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            v34 = *(v32 + v33);
          }

          else
          {
            v34 = 0;
          }

          if ((DWORD2(v51) | (DWORD2(v51) << 32)) == (v66 | (v66 << 32)))
          {
            v35 = *(v51 + 16);
            if (v35 == *(v65 + 16))
            {
              if (!v35 || v51 == v65)
              {
LABEL_16:
                if (v32 && v34 == a4)
                {
                  v38 = v32 + OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                  swift_beginAccess();
                  v39 = _s13SelectedStateV7WrappedVMa(0);
                  v40 = v44;
                  sub_1B0390340(v38 + *(v39 + 20), v44, type metadata accessor for MailboxSyncState);
                  v41 = v47;
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v42 = v46;
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B03A35B8(&v50, &v49);

                  v45(a1, v40, v41, v42);
                  sub_1B0453E78(v40, type metadata accessor for MailboxSyncState);

                  sub_1B03A3614(&v50);

                  sub_1B039E440(&v65);
                  return;
                }
              }

              else
              {
                v36 = (v51 + 32);
                v37 = (v65 + 32);
                while (*v36 == *v37)
                {
                  ++v36;
                  ++v37;
                  if (!--v35)
                  {
                    goto LABEL_16;
                  }
                }
              }
            }
          }

          ++v21;
        }

        while (v21 != v20);
      }
    }

    sub_1B039E440(&v65);
    sub_1B0B7C890();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_1B0B78A8C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TaskHistory.Running(0);
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for RunningTask(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v67[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67[-v11];
  v74 = sub_1B0E43828();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v14 = &v67[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v67[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v67[-v18];
  v76 = sub_1B0E43868();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v20 = &v67[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v70 = &v67[-v22];
  v23 = *tracingLog.unsafeMutableAddressor();
  v24 = sub_1B0E45D38();

  if (v24)
  {
    sub_1B0450DB0(v2, &v80);
    v25 = v2;
    if (v83 == 1)
    {
      sub_1B0450C74(&v80, v84);
      v26 = tracingSignposter.unsafeMutableAddressor();
      (*(v75 + 16))(v70, v26, v76);
      v27 = *(v2 + *(v7 + 32));
      v28 = v71;
      sub_1B0E43838();
      sub_1B0390340(v2, v12, type metadata accessor for RunningTask);
      sub_1B03D2CA8(v84, &v80);
      v29 = sub_1B0E43858();
      v30 = sub_1B0E45AD8();
      if (sub_1B0E45D38())
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v79 = v32;
        *v31 = 136315651;
        *&v85 = *(v12 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BB8, &qword_1B0EC92F0);
        v33 = sub_1B0E44B88();
        v68 = v30;
        v34 = v25;
        v36 = v35;
        sub_1B0453E78(v12, type metadata accessor for RunningTask);
        v37 = sub_1B0399D64(v33, v36, &v79);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2160;
        *(v31 + 14) = 0x786F626C69616DLL;
        *(v31 + 22) = 2085;
        v38 = v81;
        v39 = v82;
        __swift_project_boxed_opaque_existential_0(&v80, v81);
        v40 = *(v39 + 32);
        v41 = v39;
        v25 = v34;
        v40(&v85, v38, v41);
        v88 = v85;
        sub_1B039E440(&v88);
        v77 = v86;
        v78 = v87;
        v42 = sub_1B0E44BA8();
        v44 = v43;
        __swift_destroy_boxed_opaque_existential_0Tm(&v80);
        v45 = sub_1B0399D64(v42, v44, &v79);

        *(v31 + 24) = v45;
        v46 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v29, v68, v46, "BehaviorTask", "M %s,%{sensitive,mask.mailbox}s", v31, 0x20u);
        swift_arrayDestroy();
        v47 = v32;
        v28 = v71;
        MEMORY[0x1B272C230](v47, -1, -1);
        MEMORY[0x1B272C230](v31, -1, -1);
      }

      else
      {

        sub_1B0453E78(v12, type metadata accessor for RunningTask);
        __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      }

      v59 = v74;
      v60 = v73;
      (*(v73 + 16))(v72, v28, v74);
      sub_1B0E43968();
      swift_allocObject();
      sub_1B0E43958();

      (*(v60 + 8))(v28, v59);
      (*(v75 + 8))(v70, v76);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
    }

    else
    {
      sub_1B0B7ABB4(&v80);
      v48 = tracingSignposter.unsafeMutableAddressor();
      (*(v75 + 16))(v20, v48, v76);
      v27 = *(v2 + *(v7 + 32));
      sub_1B0E43838();
      sub_1B0390340(v2, v9, type metadata accessor for RunningTask);
      v49 = sub_1B0E43858();
      v50 = sub_1B0E45AD8();
      if (sub_1B0E45D38())
      {
        v51 = swift_slowAlloc();
        v68 = v50;
        v52 = v51;
        v70 = swift_slowAlloc();
        *&v80 = v70;
        *v52 = 136315138;
        v84[0] = *(v9 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BB8, &qword_1B0EC92F0);
        v53 = sub_1B0E44B88();
        v71 = v25;
        v55 = v54;
        sub_1B0453E78(v9, type metadata accessor for RunningTask);
        v56 = sub_1B0399D64(v53, v55, &v80);
        v25 = v71;

        *(v52 + 4) = v56;
        v57 = sub_1B0E43818();
        _os_signpost_emit_with_name_impl(&dword_1B0389000, v49, v68, v57, "BehaviorTask", "A %s", v52, 0xCu);
        v58 = v70;
        __swift_destroy_boxed_opaque_existential_0Tm(v70);
        MEMORY[0x1B272C230](v58, -1, -1);
        MEMORY[0x1B272C230](v52, -1, -1);
      }

      else
      {

        sub_1B0453E78(v9, type metadata accessor for RunningTask);
      }

      v61 = v73;
      v62 = v74;
      (*(v73 + 16))(v72, v14, v74);
      sub_1B0E43968();
      swift_allocObject();
      sub_1B0E43958();

      (*(v61 + 8))(v14, v62);
      (*(v75 + 8))(v20, v76);
    }

    v63 = *(v25 + 6);
    v64 = *(v63 + 16);
    if (v64)
    {
      v65 = v63 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v66 = *(v69 + 72);
      do
      {
        sub_1B0390340(v65, v6, type metadata accessor for TaskHistory.Running);
        sub_1B0B793EC(a1, v27);
        sub_1B0453E78(v6, type metadata accessor for TaskHistory.Running);
        v65 += v66;
        --v64;
      }

      while (v64);
    }
  }
}

uint64_t sub_1B0B793EC(uint64_t a1, int a2)
{
  LODWORD(v82) = a2;
  v81 = a1;
  v3 = sub_1B0E43828();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v74 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v74 - v9;
  v10 = sub_1B0E43868();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v17 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v78 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v74 - v23;
  v25 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0390340(v2, v27, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = *v27;
  v29 = v27[1];
  if (EnumCaseMultiPayload == 1)
  {
    v31 = v27[1];
    v32 = *(v27 + 1);
    v33 = tracingSignposter.unsafeMutableAddressor();
    v79 = v11;
    (*(v11 + 16))(v13, v33, v10);
    sub_1B0E43838();
    sub_1B03E14B4(v32);
    sub_1B03E14B4(v32);
    v34 = sub_1B0E43858();
    v35 = sub_1B0E45AD8();
    v36 = v5;
    if (sub_1B0E45D38())
    {
      v37 = v30;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v80 = v10;
      v40 = v39;
      v86 = v39;
      *v38 = 67109890;
      *(v38 + 4) = v37;
      *(v38 + 8) = 2080;
      v41 = Action.kind.getter(v32);
      v42 = Action.Kind.description.getter(v41);
      v44 = sub_1B0399D64(v42, v43, &v86);

      *(v38 + 10) = v44;
      *(v38 + 18) = 1024;
      *(v38 + 20) = v31;
      *(v38 + 24) = 1024;
      v45 = dword_1B0EC951C[(v32 >> 58) & 0x3C | (v32 >> 1) & 3];
      sub_1B03E1BE8(v32);
      *(v38 + 26) = v45;
      sub_1B03E1BE8(v32);
      v46 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v34, v35, v46, "BehaviorAction", "ID: %u name: %s %u %u", v38, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      v47 = v40;
      v10 = v80;
      MEMORY[0x1B272C230](v47, -1, -1);
      MEMORY[0x1B272C230](v38, -1, -1);
    }

    else
    {
      sub_1B03E1BE8(v32);
      sub_1B03E1BE8(v32);
    }

    v69 = v84;
    v70 = v85;
    (*(v84 + 16))(v83, v36, v85);
    sub_1B0E43968();
    swift_allocObject();
    sub_1B0E43958();

    sub_1B03E1BE8(v32);
    (*(v69 + 8))(v36, v70);
    return (*(v79 + 8))(v13, v10);
  }

  else
  {
    v76 = *v27;
    v75 = v27[2];
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    sub_1B0423C18(v27 + *(v48 + 64), v24, type metadata accessor for ClientCommand);
    v49 = tracingSignposter.unsafeMutableAddressor();
    v50 = *(v11 + 16);
    v80 = v10;
    v50(v16, v49, v10);
    v51 = v77;
    sub_1B0E43838();
    sub_1B0390340(v24, v21, type metadata accessor for ClientCommand);
    v82 = v24;
    v52 = v24;
    v53 = v78;
    sub_1B0390340(v52, v78, type metadata accessor for ClientCommand);
    v54 = sub_1B0E43858();
    v55 = sub_1B0E45AD8();
    v56 = v16;
    if (sub_1B0E45D38())
    {
      v57 = swift_slowAlloc();
      v79 = v11;
      v74 = v55;
      v58 = v57;
      v81 = swift_slowAlloc();
      v86 = v81;
      *v58 = 136447234;
      v59 = v76;
      v60 = Tag.debugDescription.getter(v76 | (v29 << 32));
      v62 = sub_1B0399D64(v60, v61, &v86);

      *(v58 + 4) = v62;
      *(v58 + 12) = 2080;
      v63 = ClientCommand.logIdentifier.getter();
      v65 = v64;
      sub_1B0453E78(v21, type metadata accessor for ClientCommand);
      v66 = sub_1B0399D64(v63, v65, &v86);

      *(v58 + 14) = v66;
      *(v58 + 22) = 1024;
      *(v58 + 24) = v75;
      *(v58 + 28) = 1024;
      *(v58 + 30) = v59;
      *(v58 + 34) = 1024;
      LODWORD(v66) = sub_1B0B7A864() + 1;
      sub_1B0453E78(v53, type metadata accessor for ClientCommand);
      *(v58 + 36) = v66;
      v67 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v54, v74, v67, "BehaviorCommand", "tag: %{public}s, name: %s %u %u %u", v58, 0x28u);
      v68 = v81;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v68, -1, -1);
      v11 = v79;
      MEMORY[0x1B272C230](v58, -1, -1);
    }

    else
    {
      sub_1B0453E78(v53, type metadata accessor for ClientCommand);

      sub_1B0453E78(v21, type metadata accessor for ClientCommand);
    }

    v72 = v84;
    v73 = v85;
    (*(v84 + 16))(v83, v51, v85);
    sub_1B0E43968();
    swift_allocObject();
    sub_1B0E43958();

    (*(v72 + 8))(v51, v73);
    (*(v11 + 8))(v56, v80);
    return sub_1B0453E78(v82, type metadata accessor for ClientCommand);
  }
}

void sub_1B0B79C14(uint64_t a1)
{
  v2 = type metadata accessor for TaskHistory.Running(0);
  v61 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  v8 = sub_1B0E43878();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E43828();
  v11 = *(v10 - 8);
  v65 = v10;
  v66 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = sub_1B0E43868();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *tracingLog.unsafeMutableAddressor();
  v23 = sub_1B0E45D38();

  if (v23)
  {
    v24 = tracingSignposter.unsafeMutableAddressor();
    v56 = v19;
    v57 = v18;
    v25 = *(v19 + 16);
    v54 = v21;
    v25(v21, v24, v18);
    v26 = *(v64 + *(type metadata accessor for RunningTask(0) + 32));
    v55 = a1;
    sub_1B0E43838();
    v28 = v65;
    v27 = v66;
    (*(v66 + 16))(v62, v17, v65);
    sub_1B0E43968();
    swift_allocObject();
    sub_1B0E43958();
    v29 = *(v27 + 8);
    v66 = v27 + 8;
    v29(v17, v28);
    v30 = v29;
    v31 = v54;
    v32 = sub_1B0E43858();
    v33 = v63;
    sub_1B0E43948();
    LODWORD(v62) = sub_1B0E45AC8();
    v34 = sub_1B0E45D38();
    v35 = v65;
    if (v34)
    {
      v53 = v30;

      v36 = v58;
      sub_1B0E43978();

      v37 = v59;
      v38 = v60;
      if ((*(v59 + 88))(v36, v60) == *MEMORY[0x1E69E93E8])
      {
        v39 = "[Error] Interval already ended";
      }

      else
      {
        (*(v37 + 8))(v36, v38);
        v39 = "";
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = v63;
      v42 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v32, v62, v42, "BehaviorTask", v39, v40, 2u);
      v43 = v40;
      v33 = v41;
      MEMORY[0x1B272C230](v43, -1, -1);
      v35 = v65;
      v30 = v53;
    }

    v30(v33, v35);
    (*(v56 + 8))(v31, v57);
    v44 = *(v64 + 48);
    v45 = *(v44 + 16);
    v46 = v55;
    if (v45)
    {
      v47 = v44 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v48 = *(v61 + 72);
      do
      {
        sub_1B0390340(v47, v7, type metadata accessor for TaskHistory.Running);
        sub_1B0390340(v7, v4, type metadata accessor for TaskHistory.Running);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v49 = *v4;
          sub_1B03E1BE8(v4[1]);
        }

        else
        {
          v49 = *v4;
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
          sub_1B0453E78(v4 + *(v52 + 64), type metadata accessor for ClientCommand);
        }

        sub_1B0B7A1F4(v46, v26, v49, EnumCaseMultiPayload == 1, v50);
        sub_1B0453E78(v7, type metadata accessor for TaskHistory.Running);
        v47 += v48;
        --v45;
      }

      while (v45);
    }
  }
}

uint64_t sub_1B0B7A1F4(uint64_t a1, int a2, unint64_t a3, int a4, double a5)
{
  LODWORD(v61) = a4;
  v62 = a3;
  v5 = sub_1B0E43878();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v54 - v8;
  v9 = sub_1B0E43828();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v20 = sub_1B0E43868();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v27 = tracingSignposter.unsafeMutableAddressor();
  v63 = v21;
  v28 = *(v21 + 16);
  v29 = (v10 + 16);
  v30 = (v10 + 8);
  if ((v61 & 1) == 0)
  {
    v61 = v20;
    v28(v26, v27, v20);
    sub_1B0E43838();
    (*v29)(v16, v19, v9);
    sub_1B0E43968();
    swift_allocObject();
    sub_1B0E43958();
    v39 = *v30;
    (*v30)(v19, v9);
    v40 = sub_1B0E43858();
    v41 = v57;
    sub_1B0E43948();
    v42 = sub_1B0E45AC8();
    if (sub_1B0E45D38())
    {
      v62 = v9;

      v43 = v55;
      sub_1B0E43978();

      v45 = v59;
      v44 = v60;
      if ((*(v59 + 88))(v43, v60) == *MEMORY[0x1E69E93E8])
      {
        v46 = "[Error] Interval already ended";
      }

      else
      {
        (*(v45 + 8))(v43, v44);
        v46 = "";
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v40, v42, v52, "BehaviorCommand", v46, v51, 2u);
      MEMORY[0x1B272C230](v51, -1, -1);

      v47 = v41;
      v48 = v62;
    }

    else
    {

      v47 = v41;
      v48 = v9;
    }

    v39(v47, v48);
    goto LABEL_15;
  }

  v28(v23, v27, v20);
  sub_1B0E43838();
  (*v29)(v16, v19, v9);
  sub_1B0E43968();
  swift_allocObject();
  sub_1B0E43958();
  v31 = *v30;
  (*v30)(v19, v9);
  v32 = sub_1B0E43858();
  v33 = v58;
  sub_1B0E43948();
  v34 = sub_1B0E45AC8();
  if (sub_1B0E45D38())
  {
    LODWORD(v57) = v34;
    v61 = v20;
    v62 = v23;

    v35 = v56;
    sub_1B0E43978();

    v37 = v59;
    v36 = v60;
    if ((*(v59 + 88))(v35, v60) == *MEMORY[0x1E69E93E8])
    {
      v38 = "[Error] Interval already ended";
    }

    else
    {
      (*(v37 + 8))(v35, v36);
      v38 = "";
    }

    v49 = swift_slowAlloc();
    *v49 = 0;
    v50 = sub_1B0E43818();
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v32, v57, v50, "BehaviorAction", v38, v49, 2u);
    MEMORY[0x1B272C230](v49, -1, -1);

    v31(v33, v9);
    v26 = v62;
LABEL_15:
    v20 = v61;
    return (*(v63 + 8))(v26, v20);
  }

  v31(v33, v9);
  v26 = v23;
  return (*(v63 + 8))(v26, v20);
}

uint64_t sub_1B0B7A864()
{
  v1 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0390340(v0, v3, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 9:
      sub_1B0453E78(v3, type metadata accessor for ClientCommand);
      goto LABEL_11;
    case 10:

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v10 = *(v9 + 64);
      sub_1B0391D50(*&v3[*(v9 + 80)], *&v3[*(v9 + 80) + 8]);
      v6 = &unk_1EB6E2990;
      v7 = &qword_1B0E9B060;
      v8 = &v3[v10];
      goto LABEL_8;
    case 11:
    case 12:
    case 13:
    case 14:
      sub_1B0453E78(v3, type metadata accessor for ClientCommand);
      goto LABEL_4;
    case 15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return 4;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770);

      sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return 5;
    case 17:
    case 18:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000);

      v6 = &unk_1EB6E1AF0;
      v7 = &unk_1B0E9AF40;
      v8 = v3;
LABEL_8:
      sub_1B0398EFC(v8, v6, v7);
      result = 2;
      break;
    case 19:
LABEL_4:
      result = 3;
      break;
    case 22:
    case 23:
    case 24:
    case 25:
    case 29:
      return result;
    case 26:
    case 27:
    case 28:
LABEL_11:
      result = 1;
      break;
    default:
      sub_1B0453E78(v3, type metadata accessor for ClientCommand);
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_1B0B7AAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TaskHistory.Running(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0390340(a1, v6, type metadata accessor for TaskHistory.Running);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *v6;
    result = sub_1B03E1BE8(v6[1]);
  }

  else
  {
    v8 = *v6;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
    result = sub_1B0453E78(v6 + *(v10 + 64), type metadata accessor for ClientCommand);
  }

  *a2 = v8;
  *(a2 + 8) = EnumCaseMultiPayload == 1;
  return result;
}

uint64_t sub_1B0B7ACA4(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v103 = a1;
  v101 = a7;
  v102 = a8;
  v99 = a5;
  v100 = a6;
  v92 = a4;
  v98 = a3;
  v8 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v97 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v89 - v12;
  v13 = type metadata accessor for ClientCommand(0);
  v94 = *(v13 - 8);
  v95 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v93 = &v89 - v18;
  v19 = type metadata accessor for Command(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BD8, &qword_1B0EC9308);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v89 - v28;
  sub_1B03B5C80(v103, &v89 - v28, &qword_1EB6E4BD0, &qword_1B0EC9300);
  v30 = *(v24 + 56);
  v31 = v8;
  *&v29[v30] = v8;
  sub_1B03B5C80(v29, v26, &qword_1EB6E4BD8, &qword_1B0EC9308);
  if ((*(v20 + 48))(v26, 1, v19) == 1)
  {
    sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
    sub_1B0398EFC(v26, &qword_1EB6E4BD0, &qword_1B0EC9300);
    return 1;
  }

  else
  {
    sub_1B0423C18(v26, v22, type metadata accessor for Command);
    v33 = v104;
    v34 = sub_1B0BA790C(v22, v99, v100, v101, v102);
    if (v33)
    {
      sub_1B0453E78(v22, type metadata accessor for Command);
      return sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
    }

    else if (v35)
    {
      v36 = v98 + *(type metadata accessor for RunningTask(0) + 36);
      if (*(v36 + 8))
      {
        v37 = static MonotonicTime.now()();
        sub_1B0453E78(v22, type metadata accessor for Command);
        sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
        *v36 = v37;
        *(v36 + 8) = 0;
      }

      else
      {
        sub_1B0453E78(v22, type metadata accessor for Command);
        sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
      }

      return 2;
    }

    else
    {
      v104 = v34;
      v38 = v96;
      sub_1B0A91328(v96);
      if ((*(v94 + 48))(v38, 1, v95) == 1)
      {
        sub_1B0398EFC(v38, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      }

      else
      {
        v39 = v38;
        v40 = v93;
        sub_1B0423C18(v39, v93, type metadata accessor for ClientCommand);
        v41 = v92 + *(type metadata accessor for Task.Logger(0) + 20);
        v42 = *v41;
        v102 = *(v41 + 8);
        v43 = *(v41 + 16);
        v44 = *(v41 + 24);
        v45 = *(v41 + 32);
        LODWORD(v103) = *(v41 + 40);
        v100 = v42;
        v101 = v44;
        if (v44 < 0)
        {
          v66 = v43;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v67 = v45;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v68 = v90;
          sub_1B0390340(v40, v90, type metadata accessor for ClientCommand);
          v69 = sub_1B0E43988();
          v70 = sub_1B0E458C8();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v99 = v29;
            v72 = v71;
            v96 = swift_slowAlloc();
            v107 = v96;
            *v72 = 68159747;
            LODWORD(v95) = v70;
            *(v72 + 4) = 2;
            *(v72 + 8) = 256;
            *(v72 + 10) = v100;
            *(v72 + 11) = 2082;
            *(v72 + 13) = sub_1B0399D64(v102, v66, &v107);
            *(v72 + 21) = 1040;
            *(v72 + 23) = 2;
            *(v72 + 27) = 512;
            *(v72 + 29) = v101;

            *(v72 + 31) = 2160;
            *(v72 + 33) = 0x786F626C69616DLL;
            *(v72 + 41) = 2085;
            v105 = v67;
            v106 = v103;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v73 = sub_1B0E44BA8();
            v75 = sub_1B0399D64(v73, v74, &v107);

            *(v72 + 43) = v75;
            *(v72 + 51) = 2082;
            v76 = ClientCommand.logIdentifier.getter();
            v77 = v68;
            v78 = v22;
            v80 = v79;
            sub_1B0453E78(v77, type metadata accessor for ClientCommand);
            v81 = sub_1B0399D64(v76, v80, &v107);

            *(v72 + 53) = v81;
            *(v72 + 61) = 2082;
            v82 = Tag.debugDescription.getter(v104 & 0xFFFFFFFF000000FFLL);
            v84 = sub_1B0399D64(v82, v83, &v107);

            *(v72 + 63) = v84;
            v22 = v78;
            _os_log_impl(&dword_1B0389000, v69, v95, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' command as %{public}s", v72, 0x47u);
            v85 = v96;
            swift_arrayDestroy();
            MEMORY[0x1B272C230](v85, -1, -1);
            v86 = v72;
            v29 = v99;
            MEMORY[0x1B272C230](v86, -1, -1);
          }

          else
          {

            sub_1B0453E78(v68, type metadata accessor for ClientCommand);
          }

          sub_1B0453E78(v93, type metadata accessor for ClientCommand);
        }

        else
        {
          v99 = v29;
          v46 = v43;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v47 = v91;
          sub_1B0390340(v40, v91, type metadata accessor for ClientCommand);
          v48 = sub_1B0E43988();
          v49 = sub_1B0E458C8();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            LODWORD(v94) = v49;
            v51 = v47;
            v52 = v50;
            v95 = swift_slowAlloc();
            v96 = v22;
            v105 = v95;
            *v52 = 68158722;
            *(v52 + 4) = 2;
            *(v52 + 8) = 256;
            v53 = v100;
            v54 = v101;
            *(v52 + 10) = v100;
            v55 = v102;
            sub_1B0A92018(v53, v102, v46, v54);
            *(v52 + 11) = 2082;
            *(v52 + 13) = sub_1B0399D64(v55, v46, &v105);
            *(v52 + 21) = 2082;
            v56 = ClientCommand.logIdentifier.getter();
            v58 = v57;
            v103 = type metadata accessor for ClientCommand;
            sub_1B0453E78(v51, type metadata accessor for ClientCommand);
            v59 = sub_1B0399D64(v56, v58, &v105);

            *(v52 + 23) = v59;
            *(v52 + 31) = 2082;
            v60 = Tag.debugDescription.getter(v104 & 0xFFFFFFFF000000FFLL);
            v62 = sub_1B0399D64(v60, v61, &v105);

            *(v52 + 33) = v62;
            _os_log_impl(&dword_1B0389000, v48, v94, "[%.*hhx-%{public}s] Sent '%{public}s' command as %{public}s", v52, 0x29u);
            v63 = v95;
            swift_arrayDestroy();
            v22 = v96;
            MEMORY[0x1B272C230](v63, -1, -1);
            MEMORY[0x1B272C230](v52, -1, -1);

            v64 = v93;
            v65 = v103;
          }

          else
          {

            sub_1B0A92018(v100, v102, v46, v101);
            sub_1B0453E78(v47, type metadata accessor for ClientCommand);
            v64 = v40;
            v65 = type metadata accessor for ClientCommand;
          }

          sub_1B0453E78(v64, v65);
          v29 = v99;
        }
      }

      v87 = v97;
      sub_1B0A91328(v97);
      sub_1B0BB0B38(v87, v104, v31, v88);
      sub_1B0398EFC(v87, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      sub_1B0453E78(v22, type metadata accessor for Command);
      sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
      return 0;
    }
  }
}

uint64_t sub_1B0B7B704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B7B774(uint64_t a1, int a2, uint64_t (*a3)(void), char *a4, uint64_t a5, uint64_t a6)
{
  v91 = a3;
  v82 = a6;
  v89 = a5;
  v90 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC8, &qword_1B0EC92F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v79 - v11;
  v12 = type metadata accessor for ClientCommand(0);
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v79 - v17;
  v18 = type metadata accessor for Command(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BD8, &qword_1B0EC9308);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v27 = a1;
  v29 = &v79 - v28;
  sub_1B03B5C80(v27, &v79 - v28, &qword_1EB6E4BD0, &qword_1B0EC9300);
  v30 = *(v23 + 56);
  v88 = a2;
  *&v29[v30] = a2;
  sub_1B03B5C80(v29, v25, &qword_1EB6E4BD8, &qword_1B0EC9308);
  if ((*(v19 + 48))(v25, 1, v18) == 1)
  {
    sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
    sub_1B0398EFC(v25, &qword_1EB6E4BD0, &qword_1B0EC9300);
    return 1;
  }

  sub_1B0423C18(v25, v21, type metadata accessor for Command);
  v32 = v92;
  v33 = (v91)(v21);
  v35 = v21;
  if (v32)
  {
    sub_1B0453E78(v21, type metadata accessor for Command);
    return sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
  }

  if ((v34 & 1) == 0)
  {
    v91 = v33;
    v38 = v86;
    sub_1B0A91328(v86);
    if ((*(v84 + 48))(v38, 1, v85) == 1)
    {
      sub_1B0398EFC(v38, &qword_1EB6E4BC8, &qword_1B0EC92F8);
LABEL_22:
      v77 = v87;
      sub_1B0A91328(v87);
      sub_1B0BB0B38(v77, v91, v88, v78);
      sub_1B0398EFC(v77, &qword_1EB6E4BC8, &qword_1B0EC92F8);
      sub_1B0453E78(v35, type metadata accessor for Command);
      sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
      return 0;
    }

    v90 = v29;
    v39 = v83;
    sub_1B0423C18(v38, v83, type metadata accessor for ClientCommand);
    v40 = v82 + *(type metadata accessor for Task.Logger(0) + 20);
    v41 = *(v40 + 8);
    v92 = *v40;
    v43 = *(v40 + 16);
    v42 = *(v40 + 24);
    v44 = *(v40 + 32);
    LODWORD(v86) = *(v40 + 40);
    v84 = v42;
    v85 = v41;
    if (v42 < 0)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v45 = v80;
      sub_1B0390340(v39, v80, type metadata accessor for ClientCommand);
      v63 = sub_1B0E43988();
      v64 = sub_1B0E458C8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v95 = v82;
        *v65 = 68159747;
        *(v65 + 4) = 2;
        *(v65 + 8) = 256;
        *(v65 + 10) = v92;
        v92 = 0;
        *(v65 + 11) = 2082;
        *(v65 + 13) = sub_1B0399D64(v85, v43, &v95);
        *(v65 + 21) = 1040;
        *(v65 + 23) = 2;
        *(v65 + 27) = 512;
        *(v65 + 29) = v84;

        *(v65 + 31) = 2160;
        *(v65 + 33) = 0x786F626C69616DLL;
        *(v65 + 41) = 2085;
        v93 = v44;
        v94 = v86;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v66 = sub_1B0E44BA8();
        v68 = sub_1B0399D64(v66, v67, &v95);

        *(v65 + 43) = v68;
        *(v65 + 51) = 2082;
        v69 = ClientCommand.logIdentifier.getter();
        v71 = v70;
        sub_1B0453E78(v45, type metadata accessor for ClientCommand);
        v72 = sub_1B0399D64(v69, v71, &v95);

        *(v65 + 53) = v72;
        *(v65 + 61) = 2082;
        v73 = Tag.debugDescription.getter(v91 & 0xFFFFFFFF000000FFLL);
        v75 = sub_1B0399D64(v73, v74, &v95);

        *(v65 + 63) = v75;
        _os_log_impl(&dword_1B0389000, v63, v64, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Sent '%{public}s' command as %{public}s", v65, 0x47u);
        v76 = v82;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v76, -1, -1);
        MEMORY[0x1B272C230](v65, -1, -1);

        v61 = v83;
LABEL_20:
        v62 = type metadata accessor for ClientCommand;
        goto LABEL_21;
      }
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v45 = v81;
      sub_1B0390340(v39, v81, type metadata accessor for ClientCommand);
      v46 = sub_1B0E43988();
      v47 = sub_1B0E458C8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = v43;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v82 = v35;
        v80 = v50;
        v93 = v50;
        *v49 = 68158722;
        *(v49 + 4) = 2;
        *(v49 + 8) = 256;
        v51 = v92;
        *(v49 + 10) = v92;
        v52 = v85;
        sub_1B0A92018(v51, v85, v48, v84);
        *(v49 + 11) = 2082;
        *(v49 + 13) = sub_1B0399D64(v52, v48, &v93);
        *(v49 + 21) = 2082;
        v53 = ClientCommand.logIdentifier.getter();
        v55 = v54;
        v92 = type metadata accessor for ClientCommand;
        sub_1B0453E78(v45, type metadata accessor for ClientCommand);
        v56 = sub_1B0399D64(v53, v55, &v93);

        *(v49 + 23) = v56;
        *(v49 + 31) = 2082;
        v57 = Tag.debugDescription.getter(v91 & 0xFFFFFFFF000000FFLL);
        v59 = sub_1B0399D64(v57, v58, &v93);

        *(v49 + 33) = v59;
        _os_log_impl(&dword_1B0389000, v46, v47, "[%.*hhx-%{public}s] Sent '%{public}s' command as %{public}s", v49, 0x29u);
        v60 = v80;
        swift_arrayDestroy();
        v35 = v82;
        MEMORY[0x1B272C230](v60, -1, -1);
        MEMORY[0x1B272C230](v49, -1, -1);

        v61 = v83;
        v62 = v92;
LABEL_21:
        sub_1B0453E78(v61, v62);
        v29 = v90;
        goto LABEL_22;
      }

      sub_1B0A92018(v92, v85, v43, v84);
    }

    sub_1B0453E78(v45, type metadata accessor for ClientCommand);
    v61 = v39;
    goto LABEL_20;
  }

  v36 = v89 + *(type metadata accessor for RunningTask(0) + 36);
  if (*(v36 + 8) == 1)
  {
    v37 = static MonotonicTime.now()();
    sub_1B0453E78(v21, type metadata accessor for Command);
    sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
    *v36 = v37;
    *(v36 + 8) = 0;
  }

  else
  {
    sub_1B0453E78(v21, type metadata accessor for Command);
    sub_1B0398EFC(v29, &qword_1EB6E4BD8, &qword_1B0EC9308);
  }

  return 2;
}

unint64_t sub_1B0B7C1A0(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1B03E1BE8(result);
  }

  return result;
}

uint64_t sub_1B0B7C1FC(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for TaskHistory.Running(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  result = sub_1B0450DB0(v5, v49);
  if (v52)
  {
    if (v52 != 1)
    {
      return result;
    }

    v18 = a4;
    v19 = v50;
    v20 = v51;
    sub_1B0450C74(v49, v46);
    if ((v20 & 1) == 0 && v19 == a1)
    {
      goto LABEL_5;
    }

    v35 = v47;
    v36 = v48;
    __swift_project_boxed_opaque_existential_0(v46, v47);
    (*(v36 + 32))(&v53, v35, v36);
    v57 = v54;
    v58 = v55;
    v56 = v53;
    sub_1B039E440(&v56);
    if (a2 && (v58 | (v58 << 32)) == (a3 | (a3 << 32)))
    {
      v37 = sub_1B04520BC(v57, a2);
      sub_1B039E440(&v57);
      if (v37)
      {
LABEL_5:
        sub_1B0450DB0(v5, v44);
        if (v45)
        {
          if (v45 == 1)
          {
            sub_1B0450C74(v44, v41);
            v21 = v42;
            v22 = v43;
            __swift_project_boxed_opaque_existential_0(v41, v42);
            v23 = type metadata accessor for RunningTask(0);
            (*(v22 + 136))(v18, v5 + *(v23 + 28), v21, v22);
            sub_1B0B7ABB4(v5);
            *v5 = 1;
            *(v5 + 8) = 0u;
            *(v5 + 24) = 0u;
            *(v5 + 37) = 0;
            *(v5 + 45) = 2;
            __swift_destroy_boxed_opaque_existential_0Tm(v41);
          }
        }

        else
        {
          sub_1B0B7ABB4(v5);
          *v5 = 1;
          *(v5 + 8) = 0u;
          *(v5 + 24) = 0u;
          *(v5 + 37) = 0;
          *(v5 + 45) = 2;
          sub_1B0B7ABB4(v44);
        }
      }
    }

    else
    {
      sub_1B039E440(&v57);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v46);
  }

  v39 = a4;
  v40 = v5;
  v24 = *(v5 + 48);
  v25 = *(v24 + 16);
  if (!v25)
  {
    return sub_1B0B7ABB4(v49);
  }

  v26 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v27 = *(v11 + 72);
  while (1)
  {
    sub_1B0390340(v26, v16, type metadata accessor for TaskHistory.Running);
    sub_1B0423C18(v16, v13, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0453E78(v13, type metadata accessor for TaskHistory.Running);
LABEL_11:
    v26 += v27;
    if (!--v25)
    {
      return sub_1B0B7ABB4(v49);
    }
  }

  v28 = *v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0453E78(v13 + *(v29 + 64), type metadata accessor for ClientCommand);
  if (v28 != a1)
  {
    goto LABEL_11;
  }

  v30 = v40;
  sub_1B0450DB0(v40, v44);
  v31 = v39;
  if (v45)
  {
    if (v45 == 1)
    {
      sub_1B0450C74(v44, v46);
      v32 = v47;
      v33 = v48;
      __swift_project_boxed_opaque_existential_0(v46, v47);
      v34 = type metadata accessor for RunningTask(0);
      (*(v33 + 136))(v31, v30 + *(v34 + 28), v32, v33);
      sub_1B0B7ABB4(v30);
      *v30 = 1;
      *(v30 + 8) = 0u;
      *(v30 + 24) = 0u;
      *(v30 + 37) = 0;
      *(v30 + 45) = 2;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
    }
  }

  else
  {
    sub_1B0B7ABB4(v30);
    *v30 = 1;
    *(v30 + 8) = 0u;
    *(v30 + 24) = 0u;
    *(v30 + 37) = 0;
    *(v30 + 45) = 2;
    sub_1B0B7ABB4(v44);
  }

  return sub_1B0B7ABB4(v49);
}

uint64_t sub_1B0B7C698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  return (*(v9 + 104))(v7, a2, a3, v6, v8, v9);
}

uint64_t sub_1B0B7C754(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v8);
  return (*(v9 + 96))(v4, v5, v6, a1, v7, v8, v9);
}

uint64_t sub_1B0B7C7E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 64);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(v2 + 56);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  return (*(v10 + 112))(v3, v4, v5, v6, v7, v11, a2, v8, v9, v10);
}

unint64_t sub_1B0B7C890()
{
  result = qword_1EB6E4BF0;
  if (!qword_1EB6E4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4BF0);
  }

  return result;
}

uint64_t sub_1B0B7C8E4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 120))(v4, v6, a2, v5, v7, v8);
}

unint64_t sub_1B0B7C9A0()
{
  result = qword_1EB6E4BF8;
  if (!qword_1EB6E4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4BF8);
  }

  return result;
}

unint64_t sub_1B0B7C9F8()
{
  result = qword_1EB6E4C00;
  if (!qword_1EB6E4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4C00);
  }

  return result;
}

unint64_t sub_1B0B7CA50()
{
  result = qword_1EB6E4C08;
  if (!qword_1EB6E4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4C08);
  }

  return result;
}

uint64_t sub_1B0B7CAB8(void *a1, uint64_t a2)
{
  result = sub_1B0450DB0(a2, v29);
  if (!v30)
  {
    return sub_1B0B7ABB4(v29);
  }

  if (v30 == 1)
  {
    sub_1B0450C74(v29, v26);
    v6 = v27;
    v7 = v28;
    __swift_project_boxed_opaque_existential_0(v26, v27);
    (*(v7 + 32))(&v31, v6, v7);
    v8 = v32;
    v9 = v33;
    v34 = v31;
    sub_1B039E440(&v34);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_1B0450DB0(a2, v29);
    if (v30)
    {
      if (v30 == 1)
      {
        sub_1B0450C74(v29, v26);
        v10 = v27;
        v2 = v28;
        __swift_project_boxed_opaque_existential_0(v26, v27);
        v11 = (*(v2 + 40))(v10, v2);
        __swift_destroy_boxed_opaque_existential_0(v26);
        v12 = v11;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1B0B7ABB4(v29);
    }

    v12 = MEMORY[0x1E69E7CD0];
LABEL_9:
    v13 = *(v12 + 16);

    if (!v13)
    {
    }

    sub_1B0450DB0(a2, v29);
    if (v30)
    {
      if (v30 == 1)
      {
        sub_1B0450C74(v29, v26);
        v14 = v27;
        v15 = v28;
        __swift_project_boxed_opaque_existential_0(v26, v27);
        v16 = (*(v15 + 40))(v14, v15);
        __swift_destroy_boxed_opaque_existential_0(v26);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B0B7ABB4(v29);
    }

    v16 = MEMORY[0x1E69E7CD0];
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29[0] = *a1;
    v18 = *&v29[0];
    v20 = sub_1B03AB888(v8, v9);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v19;
      if (v18[3] < v23)
      {
        sub_1B0B33C48(v23, isUniquelyReferenced_nonNull_native);
        v18 = *&v29[0];
        v24 = sub_1B03AB888(v8, v9);
        if ((v2 & 1) != (v25 & 1))
        {
          result = sub_1B0E46BA8();
          __break(1u);
          return result;
        }

        v20 = v24;
        *a1 = v18;
        if ((v2 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_23:

        return sub_1B0AFBD00(v16);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *a1 = v18;
        if (v19)
        {
          goto LABEL_23;
        }

LABEL_26:
        sub_1B0A9BDC4(v20, v8, v9, MEMORY[0x1E69E7CD0], v18);
        return sub_1B0AFBD00(v16);
      }
    }

    sub_1B0B8F2BC();
    v18 = *&v29[0];
    *a1 = *&v29[0];
    if (v2)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1B0B7CD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  (*(a5 + 16))(v34, a4, a5);
  v9 = sub_1B03D0AD8(v34, a2);
  sub_1B03B04BC(v34);
  if (v9)
  {
    return 0;
  }

  result = (*(v5 + 24))(v6, v5);
  v32 = *(result + 16);
  if (!v32)
  {

    goto LABEL_17;
  }

  v29 = a3;
  v30 = v6;
  v31 = v5;
  v11 = 0;
  v33 = result + 32;
  v12 = a2 + 56;
  do
  {
    if (v11 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v13 = result;
    sub_1B03D0A20(v33 + 48 * v11, v37);
    if (*(a2 + 16))
    {
      sub_1B0E46C28();
      sub_1B0E461D8();
      v14 = sub_1B0E46CB8();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if ((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        v18 = *&v37[0];
        do
        {
          sub_1B03D0A20(*(a2 + 48) + 48 * v16, v34);
          if (v34[0] == v18)
          {
            v19 = MEMORY[0x1B27282E0](&v34[1], v37 + 8);
            sub_1B03B04BC(v34);
            if (v19)
            {
              sub_1B03B04BC(v37);

              return 0;
            }
          }

          else
          {
            sub_1B03B04BC(v34);
          }

          v16 = (v16 + 1) & v17;
        }

        while (((*(v12 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
      }
    }

    ++v11;
    sub_1B03B04BC(v37);
    result = v13;
  }

  while (v11 != v32);

  v6 = v30;
  v5 = v31;
  a3 = v29;
LABEL_17:
  (*(v5 + 32))(v34, v6, v5);
  v20 = v35;
  v21 = v36;
  v37[0] = *v34;
  sub_1B039E440(v37);
  if (!*(a3 + 16))
  {

    return 1;
  }

  v22 = sub_1B03AB888(v20, v21);
  v24 = v23;

  if (v24)
  {
    v25 = *(*(a3 + 56) + 8 * v22);
    v26 = *(v5 + 48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v27 = v26(v6, v5);
    v28 = sub_1B0B872CC(v27, v25);

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t (*sub_1B0B7D080(uint64_t (*result)(char *)))(char *)
{
  v2 = *(v1 + 8);
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = sub_1B0B8CA2C(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      if (i >= *(v2 + 2))
      {
        __break(1u);
        goto LABEL_9;
      }

      v6 = *(type metadata accessor for RunningTask(0) - 8);
      result = v4(&v2[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * i]);
    }

    *(v1 + 8) = v2;
  }

  return result;
}

uint64_t sub_1B0B7D174(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RunningTask(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_1B0450D48(a1, &v17 - v10, type metadata accessor for RunningTask);
  v12 = *(v2 + 4);
  *&v11[*(v5 + 40)] = v12;
  *(v2 + 4) = (v12 + 1) & 0xFFFFFF;
  sub_1B0B78A8C(*v2);
  sub_1B0450D48(v11, v8, type metadata accessor for RunningTask);
  v13 = *(v2 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1B043B274(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1B043B274((v14 > 1), v15 + 1, 1, v13);
  }

  sub_1B0450ED8(v11, type metadata accessor for RunningTask);
  v13[2] = v15 + 1;
  result = sub_1B0B7EA14(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, type metadata accessor for RunningTask);
  *(v2 + 1) = v13;
  return result;
}

unsigned int *sub_1B0B7D354(unsigned int *result, uint64_t a2, uint64_t a3)
{
  if (*(*(v3 + 8) + 16))
  {
    v5 = result;
    sub_1B0B7DEE0(result, a3);
    MEMORY[0x1EEE9AC00](v7);
    v10[0] = v5;
    v10[1] = a2;
    v8 = sub_1B0B7D080(sub_1B0B7E968);
    MEMORY[0x1EEE9AC00](v8);
    v10[2] = v3;
    v10[3] = a3;
    result = sub_1B03C9E58(sub_1B0455540, v10);
    v9 = *(*(v3 + 8) + 16);
    if (v9 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_1B03AD818(result, v9);
    }
  }

  return result;
}

uint64_t sub_1B0B7D460(uint64_t a1, uint64_t a2)
{
  v22 = type metadata accessor for RunningTask(0);
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v9, 0);
    v10 = v23;
    v11 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    do
    {
      sub_1B0450D48(v11, v8, type metadata accessor for RunningTask);
      sub_1B0450D48(v8, v5, type metadata accessor for RunningTask);
      v12 = sub_1B0E44BA8();
      v14 = v13;
      sub_1B0450ED8(v8, type metadata accessor for RunningTask);
      v23 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1B041D32C((v15 > 1), v16 + 1, 1);
        v10 = v23;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v11 += v21;
      --v9;
    }

    while (v9);
  }

  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v18 = sub_1B0E448E8();

  return v18;
}

uint64_t sub_1B0B7D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0450D48(a1, v9, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = 1;
  switch(EnumCaseMultiPayload)
  {
    case 10:

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v19 = *(v18 + 64);
      sub_1B0391D50(*&v9[*(v18 + 80)], *&v9[*(v18 + 80) + 8]);
      v20 = &unk_1EB6E2990;
      v21 = &qword_1B0E9B060;
      v22 = &v9[v19];
      goto LABEL_10;
    case 15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0);
      goto LABEL_9;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770);
LABEL_9:

      v20 = &unk_1EB6E1AF0;
      v21 = &unk_1B0E9AF40;
      v22 = v9;
LABEL_10:
      sub_1B0398EFC(v22, v20, v21);
      goto LABEL_3;
    case 17:
    case 18:
      v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      v14 = *v13;
      v15 = *(v13 + 2);
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0B7D8A4(v14, v15, a2, a3);
      v17 = v16;

      v11 = v17 ^ 1;
      return v11 & 1;
    case 19:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
      return v11 & 1;
    default:
      sub_1B0450ED8(v9, type metadata accessor for ClientCommand);
LABEL_3:
      v11 = 1;
      return v11 & 1;
  }
}

void sub_1B0B7D8A4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RunningTask(0) - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = a4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    v15 = a2 | (a2 << 32);
    v25 = a1;
    v24 = (a1 + 32);
    do
    {
      sub_1B0450D48(v13 + v14 * v12, v10, type metadata accessor for RunningTask);
      sub_1B0450DB0(v10, v26);
      if (v27 == 1)
      {
        sub_1B0450C74(v26, v28);
        v16 = v29;
        v17 = v30;
        __swift_project_boxed_opaque_existential_0(v28, v29);
        (*(v17 + 32))(&v31, v16, v17);
        v35 = v32;
        v36 = v33;
        v34 = v31;
        sub_1B039E440(&v34);
        if ((v36 | (v36 << 32)) != v15)
        {
          sub_1B0450ED8(v10, type metadata accessor for RunningTask);
          sub_1B039E440(&v35);
          goto LABEL_17;
        }

        v18 = *(v35 + 16);
        if (v18 != *(v25 + 16))
        {
          goto LABEL_16;
        }

        if (v18 && v35 != v25)
        {
          v19 = (v35 + 32);
          v20 = v24;
          while (*v19 == *v20)
          {
            ++v19;
            ++v20;
            if (!--v18)
            {
              goto LABEL_13;
            }
          }

LABEL_16:
          sub_1B039E440(&v35);
          sub_1B0450ED8(v10, type metadata accessor for RunningTask);
LABEL_17:
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
          goto LABEL_4;
        }

LABEL_13:
        sub_1B039E440(&v35);
        v21 = v29;
        v22 = v30;
        __swift_project_boxed_opaque_existential_0(v28, v29);
        v23 = (*(v22 + 56))(v21, v22);
        sub_1B0450ED8(v10, type metadata accessor for RunningTask);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        if (v23)
        {
          return;
        }
      }

      else
      {
        sub_1B0450ED8(v10, type metadata accessor for RunningTask);
        sub_1B0B7ABB4(v26);
      }

LABEL_4:
      ++v12;
    }

    while (v12 != v11);
  }
}

void sub_1B0B7DBA8()
{
  v1 = v0;
  v26 = type metadata accessor for TaskHistory.Running(0);
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C10, &qword_1B0EC9630);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v27 = *v1;
  v12 = (v2 + 56);
  v13 = (v2 + 48);
  v14 = v1[3];
  v25 = v1[2];
  v23 = v2;
  v24 = v14;
  while (1)
  {
    v15 = *(v27 + 16);
    v16 = v1[1];
    if (v16 == v15)
    {
      v17 = 1;
      goto LABEL_6;
    }

    if (v16 >= v15)
    {
      break;
    }

    sub_1B0450D48(v27 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16, v11, type metadata accessor for TaskHistory.Running);
    v17 = 0;
    v1[1] = v16 + 1;
LABEL_6:
    v18 = v26;
    (*v12)(v11, v17, 1, v26, v9);
    sub_1B0B7E9A4(v11, v7);
    v19 = (*v13)(v7, 1, v18);
    if (v19 != 1)
    {
      sub_1B0B7EA14(v7, v4, type metadata accessor for TaskHistory.Running);
      v25(&v28, v4);
      v20 = v28;
      v21 = BYTE4(v28);
      sub_1B0450ED8(v4, type metadata accessor for TaskHistory.Running);
      v29 = v20;
      v30 = v21;
      if (((v1[4])(&v29) & 1) == 0)
      {
        continue;
      }
    }

    HIBYTE(v28) = v19 == 1;
    return;
  }

  __break(1u);
}

uint64_t sub_1B0B7DE64@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 4))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_1B0B7DE7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningTask(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B0B7DEE0(unsigned int *a1, uint64_t a2)
{
  v87 = a2;
  v85 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v81 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v81 - v9;
  v10 = a1[6];
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v88 = a1;
  v13 = *(v11 + 16);
  v95 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v13, 0);
  v14 = v95;
  LODWORD(v86) = v10;
  v89 = v12;
  v90 = v11;
  ConnectionCommandIDSet.makeIterator()(v10, v11, v12);
  if (!v13)
  {
LABEL_6:
    sub_1B0E466E8();
    if ((v94 & 1) == 0)
    {
      v49 = v93;
      do
      {
        v93 = 0;
        v94 = 0xE000000000000000;
        v91 = v49;
        v92 = HIDWORD(v49);
        sub_1B0E46508();
        v50 = v93;
        v51 = v94;
        v95 = v14;
        v53 = *(v14 + 16);
        v52 = *(v14 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1B041D32C((v52 > 1), v53 + 1, 1);
          v14 = v95;
        }

        *(v14 + 16) = v53 + 1;
        v54 = v14 + 16 * v53;
        *(v54 + 32) = v50;
        *(v54 + 40) = v51;
        sub_1B0E466E8();
        v49 = v93;
      }

      while (v94 != 1);
    }

    v93 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v21 = sub_1B0E448E8();
    v23 = v22;

    v24 = v90;
    v25 = ConnectionCommandIDSet.normalCommandCount.getter(v86, v90, v89);
    v26 = v88;
    v27 = *(v88 + 1);
    if (v27)
    {
      v28 = v88[4];
      if (v25)
      {
        v29 = v84;
        sub_1B0450D48(v87, v84, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v30 = sub_1B0E43988();
        v31 = sub_1B0E458E8();

        LODWORD(v83) = v31;
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          LODWORD(v87) = v28;
          v33 = v29;
          v34 = v32;
          v35 = swift_slowAlloc();
          v86 = v21;
          v36 = v24;
          v37 = v35;
          v95 = v35;
          *v34 = 68159235;
          *(v34 + 4) = 2;
          *(v34 + 8) = 256;
          v38 = *(v33 + *(v85 + 20));
          sub_1B0450ED8(v33, type metadata accessor for State.Logger);
          *(v34 + 10) = v38;
          *(v34 + 11) = 2082;
          v39 = ConnectionID.debugDescription.getter(*v26);
          v41 = sub_1B0399D64(v39, v40, &v95);

          *(v34 + 13) = v41;
          *(v34 + 21) = 2048;
          v42 = *(v36 + 16);

          *(v34 + 23) = v42;

          *(v34 + 31) = 2082;
          v43 = sub_1B0399D64(v86, v23, &v95);

          *(v34 + 33) = v43;
          *(v34 + 41) = 2160;
          *(v34 + 43) = 0x786F626C69616DLL;
          *(v34 + 51) = 2085;
          v93 = v27;
          LODWORD(v94) = v87;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v44 = sub_1B0E44BA8();
          v46 = sub_1B0399D64(v44, v45, &v95);

          *(v34 + 53) = v46;
          v47 = "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s were running and '%{sensitive,mask.mailbox}s' was selected.";
          v48 = v83;
LABEL_20:
          _os_log_impl(&dword_1B0389000, v30, v48, v47, v34, 0x3Du);
          swift_arrayDestroy();
          v71 = v37;
LABEL_25:
          MEMORY[0x1B272C230](v71, -1, -1);
          MEMORY[0x1B272C230](v34, -1, -1);

          return;
        }
      }

      else
      {
        v86 = v21;
        v29 = v82;
        sub_1B0450D48(v87, v82, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v30 = sub_1B0E43988();
        v57 = sub_1B0E45908();

        if (os_log_type_enabled(v30, v57))
        {
          v58 = swift_slowAlloc();
          LODWORD(v84) = v57;
          v59 = v29;
          v34 = v58;
          v60 = swift_slowAlloc();
          LODWORD(v87) = v28;
          v61 = v24;
          v37 = v60;
          v95 = v60;
          *v34 = 68159235;
          *(v34 + 4) = 2;
          *(v34 + 8) = 256;
          v62 = *(v59 + *(v85 + 20));
          sub_1B0450ED8(v59, type metadata accessor for State.Logger);
          *(v34 + 10) = v62;
          *(v34 + 11) = 2082;
          v63 = ConnectionID.debugDescription.getter(*v26);
          v65 = sub_1B0399D64(v63, v64, &v95);

          *(v34 + 13) = v65;
          *(v34 + 21) = 2048;
          v66 = *(v61 + 16);

          *(v34 + 23) = v66;

          *(v34 + 31) = 2082;
          v67 = sub_1B0399D64(v86, v23, &v95);

          *(v34 + 33) = v67;
          *(v34 + 41) = 2160;
          *(v34 + 43) = 0x786F626C69616DLL;
          *(v34 + 51) = 2085;
          v93 = v27;
          LODWORD(v94) = v87;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v68 = sub_1B0E44BA8();
          v70 = sub_1B0399D64(v68, v69, &v95);

          *(v34 + 53) = v70;
          v47 = "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s  were running and '%{sensitive,mask.mailbox}s' was selected.";
          v48 = v84;
          goto LABEL_20;
        }
      }

      sub_1B0450ED8(v29, type metadata accessor for State.Logger);
    }

    else
    {
      if (v25)
      {
        v55 = v83;
        sub_1B0450D48(v87, v83, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v30 = sub_1B0E43988();
        v56 = sub_1B0E458E8();
      }

      else
      {
        v55 = v81;
        sub_1B0450D48(v87, v81, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v30 = sub_1B0E43988();
        v56 = sub_1B0E45908();
      }

      v72 = v56;

      if (os_log_type_enabled(v30, v72))
      {
        v34 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v86 = v21;
        v74 = v73;
        v93 = v73;
        *v34 = 68158722;
        *(v34 + 4) = 2;
        *(v34 + 8) = 256;
        v75 = *(v55 + *(v85 + 20));
        sub_1B0450ED8(v55, type metadata accessor for State.Logger);
        *(v34 + 10) = v75;
        *(v34 + 11) = 2082;
        v76 = ConnectionID.debugDescription.getter(*v26);
        v78 = sub_1B0399D64(v76, v77, &v93);

        *(v34 + 13) = v78;
        *(v34 + 21) = 2048;
        v79 = *(v24 + 16);

        *(v34 + 23) = v79;

        *(v34 + 31) = 2082;
        v80 = sub_1B0399D64(v86, v23, &v93);

        *(v34 + 33) = v80;
        _os_log_impl(&dword_1B0389000, v30, v72, "[%.*hhx] Connection %{public}s failed while %ld command(s) %{public}s  were running. No mailbox selected.", v34, 0x29u);
        swift_arrayDestroy();
        v71 = v74;
        goto LABEL_25;
      }

      sub_1B0450ED8(v55, type metadata accessor for State.Logger);
    }

    return;
  }

  while (1)
  {
    sub_1B0E466E8();
    if (v94)
    {
      break;
    }

    v15 = v93;
    v93 = 0;
    v94 = 0xE000000000000000;
    v91 = v15;
    v92 = HIDWORD(v15);
    sub_1B0E46508();
    v17 = v93;
    v16 = v94;
    v95 = v14;
    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1B041D32C((v18 > 1), v19 + 1, 1);
      v14 = v95;
    }

    *(v14 + 16) = v19 + 1;
    v20 = v14 + 16 * v19;
    *(v20 + 32) = v17;
    *(v20 + 40) = v16;
    if (!--v13)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1B0B7E9A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C10, &qword_1B0EC9630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B7EA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B7EAA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B7EB08(uint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B7EB8C@<X0>(__int16 a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3E98, &qword_1B0EC1FF8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27[*(v18 + 56) - v17];
  sub_1B0B7EAA4(v9, v19);
  type metadata accessor for UntaggedResponse(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((a1 & 0x100) == 0)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v21 = v19[1];
      v29[0] = *v19;
      v29[1] = v21;
      v29[2] = v19[2];
      a4();
      return sub_1B0A96464(v29);
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 11)
  {
LABEL_9:
    sub_1B0B7EB08(v19);
    return (*(v13 + 56))(a5, 1, 1, v12);
  }

  v23 = *v19;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (v23 + 32);
    do
    {
      v26 = *v25++;
      v28 = v26;
      MessageIdentifierSet.insert(_:)(v29, &v28, v12);
      --v24;
    }

    while (v24);
  }

  sub_1B03C60A4(v15, a5, a2, a3);
  return (*(v13 + 56))(a5, 0, 1, v12);
}

uint64_t sub_1B0B7EDB0()
{
  result = sub_1B03D0770(&unk_1F2710F48);
  qword_1EB737DA8 = result;
  return result;
}

void sub_1B0B7EDD8(uint64_t a1)
{
  v3 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = *(v1 + 8);
  sub_1B0A92638(a1, v21 - v7);
  sub_1B0A92638(a1, v5);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = &v5[*(v3 + 20)];
    *(v12 + 10) = *v14;
    *(v12 + 11) = 2082;
    v15 = &v8[*(v3 + 20)];
    *(v12 + 13) = sub_1B0399D64(*(v15 + 1), *(v15 + 2), &v23);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v16 = *(v14 + 12);
    sub_1B0A9269C(v5);
    *(v12 + 29) = v16;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v17 = *(v15 + 4);
    LODWORD(v15) = *(v15 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v8);
    v21[1] = v17;
    v22 = v15;
    v18 = sub_1B0E44BA8();
    v20 = sub_1B0399D64(v18, v19, &v23);

    *(v12 + 43) = v20;
    *(v12 + 51) = 1024;
    *(v12 + 53) = v9;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task for search #%u.", v12, 0x39u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v5);

    sub_1B0A9269C(v8);
  }
}

unint64_t sub_1B0B7F06C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  if ((sub_1B0B7134C(a1, a2, a4) & 1) != 0 || (result = sub_1B0B7F38C(), (~result & 0xF000000000000007) == 0))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C20, &qword_1B0EC9758);
    v8 = *(*(v7 - 8) + 56);

    return v8(a3, 1, 1, v7);
  }

  v9 = *v4 - 1;
  if (__OFSUB__(*v4, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 > 0xFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v9 > 0x7FFFFFFFFFFFFFFELL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(*v4))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (*(v4 + 146))
  {
    *a3 = result;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    v10 = result;
    if (*(v4 + 145))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      type metadata accessor for SearchReturnOption(0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B0EC1E70;
    }

    else
    {
      v17 = *v4;
      v18 = 1;
      sub_1B041B7F0();
      static MessageIdentifier.... infix(_:_:)(&v18, &v17, &type metadata for SequenceNumber, &v19);
      v12 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
      v13 = *(type metadata accessor for SearchReturnOption(0) - 8);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B0EC1E70;
      v15 = v11 + v14;
      *v15 = v12;
      *(v15 + 8) = 0;
    }

    swift_storeEnumTagMultiPayload();
    *a3 = v10;
    a3[1] = v11;
    type metadata accessor for ClientCommand(0);
  }

  swift_storeEnumTagMultiPayload();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C20, &qword_1B0EC9758);
  return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
}

unint64_t sub_1B0B7F38C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v19 = *(v0 + 128);
  if (!*(v19 + 16))
  {
    v31 = *(v0 + 120);
    sub_1B0B23938(v31);
    return v31;
  }

  v43 = v0;
  v44 = v18;
  v46 = v9;
  v47 = v17;
  v48 = v1;
  v49 = v12;
  v42 = &v41 - v16;
  v50 = v15;
  v20 = sub_1B041C1E8();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v20, v51);
  v52 = v51[0];
  v51[4] = Range<>.init<A>(_:)(&v52, &type metadata for UID, v20);
  sub_1B03D06F8();
  v45 = v6;
  sub_1B0E46F08();
  result = sub_1B0E46EE8();
  v22 = *(v19 + 16);
  if (!v22)
  {
LABEL_8:
    v26 = v45;
    v25 = v46;
    MessageIdentifierSet.subtracting(_:)(v3, v46);
    sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v29 = 1;
      v28 = v49;
    }

    else
    {
      v27 = v44;
      sub_1B03C60A4(v25, v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v28 = v49;
      sub_1B03C60A4(v27, v49, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v29 = 0;
    }

    v30 = v50;
    v32 = v47;
    v33 = *(v47 + 56);
    v33(v28, v29, 1, v50);
    if ((*(v32 + 48))(v28, 1, v30) == 1)
    {
      sub_1B0398EFC(v28, &unk_1EB6E3670, &unk_1B0E9B260);
      return 0xF000000000000007;
    }

    else
    {
      v34 = v42;
      sub_1B03C60A4(v28, v42, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v35 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1B0EC3500;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
      v37 = swift_allocBox();
      v39 = v38;
      sub_1B03B5C80(v34, v38, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v33(v39, 0, 1, v30);
      v40 = *(v43 + 120);
      *(v36 + 32) = v37 | 0xA000000000000000;
      *(v36 + 40) = v40;
      sub_1B0B23938(v40);
      sub_1B0398EFC(v34, &unk_1EB6E26C0, &unk_1B0E9DE10);
      *(v35 + 16) = v36;
      return v35 | 0xC000000000000000;
    }
  }

  v23 = 0;
  while (v23 < *(v19 + 16))
  {
    v51[0] = *(v19 + 32 + 8 * v23);
    result = Range<>.init<A>(_:)(v51, &type metadata for UID, v20);
    v52 = result;
    if (HIDWORD(result) != result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v24 = sub_1B0E46E88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      sub_1B0E46E38();
      result = v24(v51, 0);
    }

    if (v22 == ++v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B7F8E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  sub_1B0A92638(a2, v28 - v10);
  sub_1B0A92638(a2, v8);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v12 = sub_1B0E43988();
  v13 = sub_1B0E458E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 68159235;
    *(v14 + 4) = 2;
    *(v14 + 8) = 256;
    v16 = *(v6 + 20);
    v28[0] = a1;
    v17 = &v8[v16];
    *(v14 + 10) = v8[v16];
    *(v14 + 11) = 2082;
    v18 = &v11[*(v6 + 20)];
    *(v14 + 13) = sub_1B0399D64(*(v18 + 1), *(v18 + 2), &v30);
    *(v14 + 21) = 1040;
    *(v14 + 23) = 2;
    *(v14 + 27) = 512;
    LOWORD(v17) = *(v17 + 12);
    sub_1B0A9269C(v8);
    *(v14 + 29) = v17;
    *(v14 + 31) = 2160;
    *(v14 + 33) = 0x786F626C69616DLL;
    *(v14 + 41) = 2085;
    v19 = *(v18 + 4);
    LODWORD(v17) = *(v18 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0A9269C(v11);
    v28[1] = v19;
    v29 = v17;
    v20 = sub_1B0E44BA8();
    v22 = sub_1B0399D64(v20, v21, &v30);

    *(v14 + 43) = v22;
    _os_log_impl(&dword_1B0389000, v12, v13, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search did fail.", v14, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v15, -1, -1);
    MEMORY[0x1B272C230](v14, -1, -1);
  }

  else
  {
    sub_1B0A9269C(v8);

    sub_1B0A9269C(v11);
  }

  v23 = *(v3 + 8);
  v24 = *(v3 + 16);
  v25 = *(v3 + 24);
  v26 = type metadata accessor for SearchMailbox(0);
  return sub_1B0B29950(v23, v24, v25, v3 + *(v26 + 52));
}

double sub_1B0B7FBA4()
{
  if (qword_1EB6DDF10 != -1)
  {
    swift_once();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0B7FCA8()
{
  v1 = *(v0 + 16);
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B7FD08()
{
  v1 = *(v0 + 16);
  sub_1B0E46C88();
  return MEMORY[0x1B2728D70](v1 | (v1 << 32));
}

uint64_t sub_1B0B7FD48(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1B0E46C28();
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

void sub_1B0B7FE38(uint64_t a1)
{
  sub_1B0AA95BC(319);
  if (v1 <= 0x3F)
  {
    sub_1B0B7FF14(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B7FF14(uint64_t a1)
{
  if (!qword_1EB6DE248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DE248);
    }
  }
}

unint64_t sub_1B0B7FF78()
{
  result = qword_1EB6DDF08;
  if (!qword_1EB6DDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF08);
  }

  return result;
}

unint64_t sub_1B0B7FFCC(uint64_t a1)
{
  result = sub_1B0B7FFF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B7FFF4()
{
  result = qword_1EB6DDF00;
  if (!qword_1EB6DDF00)
  {
    type metadata accessor for SearchMailbox(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DDF00);
  }

  return result;
}

unint64_t sub_1B0B80050()
{
  result = qword_1EB6E4C18;
  if (!qword_1EB6E4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4C18);
  }

  return result;
}

uint64_t sub_1B0B800A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v68 = a6;
  v73 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v63[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v70 = &v63[-v14];
  v66 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v66);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v63[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v63[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v63[-v27];
  MEMORY[0x1EEE9AC00](v29);
  v74 = &v63[-v30];
  result = sub_1B0AD53E8(a2, a3, a4);
  if (result)
  {
    if (*(v7 + 146))
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    sub_1B0B7EA7C(v32 | *(v7 + 145), v22);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      return sub_1B0398EFC(v22, &qword_1EB6E3920, &qword_1B0E9B070);
    }

    else
    {
      v33 = v74;
      sub_1B03C60A4(v22, v74, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v34 = *(v7 + 8);
      v35 = v68;
      sub_1B0A92638(v68, v19);
      sub_1B0A92638(v35, v16);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v33, v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v36 = sub_1B0E43988();
      v37 = sub_1B0E45908();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v68 = v7;
        v39 = v38;
        v40 = swift_slowAlloc();
        v73 = v23;
        v41 = v40;
        v77 = v40;
        *v39 = 68159747;
        v65 = v36;
        *(v39 + 4) = 2;
        *(v39 + 8) = 256;
        v42 = v66;
        v43 = *(v66 + 20);
        v64 = v34;
        v44 = &v16[v43];
        *(v39 + 10) = v16[v43];
        *(v39 + 11) = 2082;
        v45 = &v19[*(v42 + 20)];
        *(v39 + 13) = sub_1B0399D64(*(v45 + 1), *(v45 + 2), &v77);
        *(v39 + 21) = 1040;
        *(v39 + 23) = 2;
        *(v39 + 27) = 512;
        v46 = *(v44 + 12);
        sub_1B0A9269C(v16);
        *(v39 + 29) = v46;
        *(v39 + 31) = 2160;
        *(v39 + 33) = 0x786F626C69616DLL;
        *(v39 + 41) = 2085;
        v47 = *(v45 + 4);
        v48 = *(v45 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v19);
        v75 = v47;
        v76 = v48;
        v49 = sub_1B0E44BA8();
        v51 = sub_1B0399D64(v49, v50, &v77);

        *(v39 + 43) = v51;
        *(v39 + 51) = 2048;
        v52 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v39 + 53) = v52;
        *(v39 + 61) = 1024;
        *(v39 + 63) = v64;
        v53 = v65;
        _os_log_impl(&dword_1B0389000, v65, v37, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search returned %ld UIDs for search #%u.", v39, 0x43u);
        swift_arrayDestroy();
        v23 = v73;
        MEMORY[0x1B272C230](v41, -1, -1);
        v54 = v39;
        v7 = v68;
        MEMORY[0x1B272C230](v54, -1, -1);
      }

      else
      {
        sub_1B0398EFC(v28, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0A9269C(v16);

        sub_1B0A9269C(v19);
      }

      v55 = v69;
      v56 = v74;
      MessageIdentifierSet.suffix(_:)(*v7, v23, v69);
      v57 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v57 < 1)
      {
        sub_1B0398EFC(v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v61 = 1;
        v60 = v70;
      }

      else
      {
        v58 = v67;
        sub_1B03C60A4(v55, v67, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v59 = v58;
        v60 = v70;
        sub_1B03C60A4(v59, v70, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v61 = 0;
      }

      (*(v71 + 56))(v60, v61, 1, v72);
      v62 = type metadata accessor for SearchMailbox(0);
      return sub_1B0B41460(v60, v7 + *(v62 + 52));
    }
  }

  return result;
}

void sub_1B0B80744(unint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v53 = a2;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50[-v20];
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1B0A92638(a6, &v50[-v20]);
      sub_1B0A92638(a6, v18);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = sub_1B0E43988();
      v23 = sub_1B0E458E8();
      sub_1B0447F00(a1);

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v56 = v52;
        *v24 = 68159491;
        *(v24 + 4) = 2;
        *(v24 + 8) = 256;
        v25 = &v18[*(v10 + 20)];
        *(v24 + 10) = *v25;
        *(v24 + 11) = 2082;
        v26 = &v21[*(v10 + 20)];
        *(v24 + 13) = sub_1B0399D64(*(v26 + 1), *(v26 + 2), &v56);
        *(v24 + 21) = 1040;
        *(v24 + 23) = 2;
        *(v24 + 27) = 512;
        LOWORD(v25) = *(v25 + 12);
        sub_1B0A9269C(v18);
        *(v24 + 29) = v25;
        *(v24 + 31) = 2160;
        *(v24 + 33) = 0x786F626C69616DLL;
        *(v24 + 41) = 2085;
        v27 = *(v26 + 4);
        LODWORD(v26) = *(v26 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v21);
        v54 = v27;
        v55 = v26;
        v28 = sub_1B0E44BA8();
        v30 = sub_1B0399D64(v28, v29, &v56);

        *(v24 + 43) = v30;
        *(v24 + 51) = 2082;
        v31 = ResponseText.debugDescription.getter(a1, v53, a3);
        v33 = sub_1B0399D64(v31, v32, &v56);

        *(v24 + 53) = v33;
        _os_log_impl(&dword_1B0389000, v22, v23, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search failed with NO %{public}s.", v24, 0x3Du);
        v34 = v52;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v34, -1, -1);
        v35 = v24;
LABEL_7:
        MEMORY[0x1B272C230](v35, -1, -1);

        return;
      }

      sub_1B0A9269C(v18);

      v49 = v21;
    }

    else
    {
      sub_1B0A92638(a6, v15);
      sub_1B0A92638(a6, v12);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B04420D8(a1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = sub_1B0E43988();
      v36 = sub_1B0E458E8();
      sub_1B0447F00(a1);

      if (os_log_type_enabled(v22, v36))
      {
        v37 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v56 = v52;
        *v37 = 68159491;
        *(v37 + 4) = 2;
        *(v37 + 8) = 256;
        v38 = *(v10 + 20);
        v51 = v36;
        v39 = &v12[v38];
        *(v37 + 10) = v12[v38];
        *(v37 + 11) = 2082;
        v40 = &v15[*(v10 + 20)];
        *(v37 + 13) = sub_1B0399D64(*(v40 + 1), *(v40 + 2), &v56);
        *(v37 + 21) = 1040;
        *(v37 + 23) = 2;
        *(v37 + 27) = 512;
        LOWORD(v39) = *(v39 + 12);
        sub_1B0A9269C(v12);
        *(v37 + 29) = v39;
        *(v37 + 31) = 2160;
        *(v37 + 33) = 0x786F626C69616DLL;
        *(v37 + 41) = 2085;
        v41 = *(v40 + 4);
        LODWORD(v39) = *(v40 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0A9269C(v15);
        v54 = v41;
        v55 = v39;
        v42 = sub_1B0E44BA8();
        v44 = sub_1B0399D64(v42, v43, &v56);

        *(v37 + 43) = v44;
        *(v37 + 51) = 2082;
        v45 = ResponseText.debugDescription.getter(a1, v53, a3);
        v47 = sub_1B0399D64(v45, v46, &v56);

        *(v37 + 53) = v47;
        _os_log_impl(&dword_1B0389000, v22, v51, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] User search failed with BAD %{public}s.", v37, 0x3Du);
        v48 = v52;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v48, -1, -1);
        v35 = v37;
        goto LABEL_7;
      }

      sub_1B0A9269C(v12);

      v49 = v15;
    }

    sub_1B0A9269C(v49);
  }
}

uint64_t sub_1B0B80CB4(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
      v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v53 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v56 = swift_allocObject();
      result = sub_1B09AEA14(a1);
      if ((v52 - 2501) < 0xFFFFFFFFFFFFFDA7 || (v53 - 13) < 0xFFFFFFFFFFFFFFF4 || (v54 - 32) < 0xFFFFFFFFFFFFFFE1)
      {
        goto LABEL_39;
      }

      *(v56 + 16) = v52;
      *(v56 + 24) = v53;
      result = v56 | 4;
      *(v56 + 32) = v54;
      return result;
    case 2uLL:
      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v33 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v34 = ByteBufferAllocator.buffer(string:)(v30, v31, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v36 = v35;
      v38 = v37;

      sub_1B09AEA14(a1);
      *(v33 + 16) = v34;
      *(v33 + 24) = v36;
      *(v33 + 32) = v38;
      *(v33 + 36) = WORD2(v38);
      result = v33 | 0x1000000000000000;
      *(v33 + 38) = BYTE6(v38);
      return result;
    case 3uLL:
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v42 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v43 = ByteBufferAllocator.buffer(string:)(v39, v40, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v45 = v44;
      v47 = v46;

      sub_1B09AEA14(a1);
      *(v42 + 16) = v43;
      *(v42 + 24) = v45;
      *(v42 + 32) = v47;
      *(v42 + 36) = WORD2(v47);
      *(v42 + 38) = BYTE6(v47);
      return v42 | 0x1000000000000004;
    case 4uLL:
      v22 = sub_1B0AFCB98(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) + 1);
      sub_1B09AEA14(a1);
      return v22;
    case 5uLL:
      v59 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v62 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v63 = ByteBufferAllocator.buffer(string:)(v59, v60, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v65 = v64;
      v67 = v66;

      sub_1B09AEA14(a1);
      *(v62 + 16) = v63;
      *(v62 + 24) = v65;
      *(v62 + 32) = v67;
      *(v62 + 36) = WORD2(v67);
      result = v62 | 0x2000000000000000;
      *(v62 + 38) = BYTE6(v67);
      return result;
    case 6uLL:
      v69 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v70 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v71 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v73 = swift_allocObject();
      *(v73 + 16) = v69;
      *(v73 + 24) = v68;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v74 = ByteBufferAllocator.buffer(string:)(v70, v71, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      LODWORD(v70) = v75;
      LODWORD(v71) = v76;
      v77 = HIDWORD(v75);
      v78 = HIDWORD(v76);
      v79 = HIWORD(v76);
      sub_1B09AEA14(a1);
      *(v73 + 32) = v74;
      *(v73 + 40) = v70;
      *(v73 + 44) = v77;
      *(v73 + 48) = v71;
      *(v73 + 52) = v78;
      result = v73 | 0x6000000000000000;
      *(v73 + 54) = v79;
      return result;
    case 7uLL:
      v48 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v50 = swift_allocObject();
      sub_1B09AE83C(v48);
      v51 = sub_1B0B80CB4(v48);
      sub_1B09AEA14(a1);
      *(v50 + 16) = v51;
      return v50 | 0x7000000000000000;
    case 8uLL:
      v89 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v90 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v92 = swift_allocObject();
      sub_1B09AE83C(v90);
      sub_1B09AE83C(v89);
      *(v92 + 16) = sub_1B0B80CB4(v89);
      v93 = sub_1B0B80CB4(v90);
      sub_1B09AEA14(a1);
      *(v92 + 24) = v93;
      return v92 | 0x7000000000000004;
    case 9uLL:
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v27 = swift_allocObject();
      result = sub_1B09AEA14(a1);
      if ((v23 - 2501) >= 0xFFFFFFFFFFFFFDA7 && (v24 - 13) >= 0xFFFFFFFFFFFFFFF4 && (v25 - 32) >= 0xFFFFFFFFFFFFFFE1)
      {
        *(v27 + 16) = v23;
        *(v27 + 24) = v24;
        *(v27 + 32) = v25;
        return v27 | 0x3000000000000004;
      }

      else
      {
        __break(1u);
LABEL_39:
        __break(1u);
      }

      return result;
    case 0xAuLL:
      v80 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v81 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v83 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v84 = ByteBufferAllocator.buffer(string:)(v80, v81, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v86 = v85;
      v88 = v87;

      sub_1B09AEA14(a1);
      *(v83 + 16) = v84;
      *(v83 + 24) = v86;
      *(v83 + 32) = v88;
      *(v83 + 36) = WORD2(v88);
      result = v83 | 0x4000000000000000;
      *(v83 + 38) = BYTE6(v88);
      return result;
    case 0xBuLL:
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v14 = swift_allocObject();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v15 = ByteBufferAllocator.buffer(string:)(v11, v12, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
      v17 = v16;
      v19 = v18;

      sub_1B09AEA14(a1);
      *(v14 + 16) = v15;
      *(v14 + 24) = v17;
      *(v14 + 32) = v19;
      *(v14 + 36) = WORD2(v19);
      result = v14 | 0x5000000000000000;
      *(v14 + 38) = BYTE6(v19);
      return result;
    case 0xCuLL:
      return *(&unk_1B0EC97B0 + ((a1 + 0x4000000000000000) & 0xFFFFFFFFFFFFFFF8));
    default:
      v1 = *(a1 + 16);
      v2 = *(a1 + 24);
      sub_1B09AE83C(v1);
      v4 = sub_1B0B80CB4(v1);
      sub_1B09AE83C(v2);
      v5 = sub_1B0B80CB4(v2);
      v6 = v5;
      if (((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 0x18)
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0x18)
        {
          v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v9 = swift_allocObject();
          v100 = v7;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AFC914(v8);
          sub_1B0B239C8(v6);
          v10 = v4;
LABEL_35:
          sub_1B0B239C8(v10);
          sub_1B09AEA14(a1);
          *(v9 + 16) = v100;
          return v9 | 0xC000000000000000;
        }

        v96 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B0EC1E70;
        *(inited + 32) = v6;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0B23938(v6);
        sub_1B0AFC914(inited);
        sub_1B0B239C8(v6);
        sub_1B0B239C8(v4);
        sub_1B09AEA14(a1);
        *(v96 + 16) = v7;
        return v96 | 0xC000000000000000;
      }

      else
      {
        if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) == 0x18)
        {
          v9 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_1B0EC1E70;
          *(v94 + 32) = v4;
          v100 = v94;
          v95 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0AFC914(v95);
          v10 = v6;
          goto LABEL_35;
        }

        v98 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_1B0EC3500;
        *(v99 + 32) = v4;
        *(v99 + 40) = v6;
        sub_1B09AEA14(a1);
        *(v98 + 16) = v99;
        return v98 | 0xC000000000000000;
      }
  }
}

uint64_t sub_1B0B815D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v19 = *(a1 + 16);
  if (!v19)
  {
    return 1;
  }

  v12 = 0;
  v18 = a3;
  v20 = a3 & 0xFE00000000;
  v21 = a1 + 32;
  while (1)
  {
    v22 = v12;
    v13 = *(v21 + 8 * v12);
    if (v20 || v13 < v18)
    {
      break;
    }

LABEL_3:
    v12 = v22 + 1;
    if (v22 + 1 == v19)
    {
      return 1;
    }
  }

  v14 = 0;
  v15 = *(v23 + 16);
  while (v15 != v14)
  {
    sub_1B03B5C80(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14++, v11, &qword_1EB6E41B8, &qword_1B0EC4100);
    sub_1B03C60A4(v11, v8, &qword_1EB6E41B8, &qword_1B0EC4100);
    v16 = *v8;
    sub_1B0398EFC(v8 + *(v5 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
    if (v16 == v13)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_1B0B817C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v197 = a3;
  v198 = a1;
  v4 = sub_1B0E443C8();
  v194 = *(v4 - 8);
  v195 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v192 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v193);
  v190 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v191 = &v169 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v185 = &v169 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v186 = &v169 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v187 = *(v13 - 8);
  v188 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v169 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v169 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v169 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v169 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v169 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v169 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = (&v169 - v35);
  v37 = sub_1B0E43308();
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v169 - v39;
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  HIDWORD(v48) = -1431655765 * a2;
  LODWORD(v48) = -1431655765 * a2;
  if ((v48 >> 17) > 0x2AAA)
  {
    type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error, &unk_1B0EC98CC);
    swift_allocError();
    *v49 = a2;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v175 = v40;
  v176 = v36;
  v177 = v33;
  v180 = v27;
  v174 = v30;
  v178 = v47;
  v50 = v197;
  v172 = v24;
  v173 = v21;
  v179 = v46;
  v170 = v18;
  v171 = v15;
  v184 = &v169 - v44;
  v181 = v43;
  v182 = v45;
  v183 = a2;
  v51 = v198;
  if (_s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0() > 393216)
  {
    v52 = v191;
    sub_1B0A92638(v50, v191);
    v53 = v190;
    sub_1B0A92638(v50, v190);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v55 = v194;
    v54 = v195;
    v56 = v192;
    (v194[2].isa)(v192, v51, v195);
    v57 = sub_1B0E43988();
    v58 = sub_1B0E458E8();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v193;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v196 = v57;
      v62 = v52;
      v63 = v61;
      v197 = swift_slowAlloc();
      v203 = v197;
      *v63 = 68159747;
      LODWORD(v189) = v58;
      *(v63 + 4) = 2;
      *(v63 + 8) = 256;
      v64 = v53 + *(v60 + 20);
      *(v63 + 10) = *v64;
      *(v63 + 11) = 2082;
      v65 = v62 + *(v60 + 20);
      *(v63 + 13) = sub_1B0399D64(*(v65 + 8), *(v65 + 16), &v203);
      *(v63 + 21) = 1040;
      *(v63 + 23) = 2;
      *(v63 + 27) = 512;
      v66 = *(v64 + 24);
      sub_1B0A9269C(v53);
      *(v63 + 29) = v66;
      *(v63 + 31) = 2160;
      *(v63 + 33) = 0x786F626C69616DLL;
      *(v63 + 41) = 2085;
      v67 = *(v65 + 32);
      LODWORD(v65) = *(v65 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v62);
      v199 = v67;
      LODWORD(v200) = v65;
      v68 = sub_1B0E44BA8();
      v70 = sub_1B0399D64(v68, v69, &v203);

      *(v63 + 43) = v70;
      *(v63 + 51) = 2048;
      v71 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (v55[1].isa)(v56, v54);
      *(v63 + 53) = v71;
      *(v63 + 61) = 1024;
      *(v63 + 63) = 393216;
      v72 = v196;
      _os_log_impl(&dword_1B0389000, v196, v189, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Data length %ld > %u (segment length).", v63, 0x43u);
      v73 = v197;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v73, -1, -1);
      MEMORY[0x1B272C230](v63, -1, -1);
    }

    else
    {
      (v55[1].isa)(v56, v54);
      sub_1B0A9269C(v53);

      sub_1B0A9269C(v52);
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error, &unk_1B0EC98CC);
    swift_allocError();
    *v83 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    goto LABEL_17;
  }

  v74 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if ((v74 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v75 = v74;
  v36 = v196;
  a2 = v180;
  if (HIDWORD(v74))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v77 = v183;
  if (result >= 393216)
  {
    goto LABEL_32;
  }

  isa = v36[1].isa;
  if (!BYTE4(v36[1].isa))
  {
    if (!v75)
    {
      goto LABEL_32;
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error, &unk_1B0EC98CC);
    swift_allocError();
    v85 = v84;
    if (isa <= v77)
    {
      *v84 = isa;
      v84[1] = v77;
      goto LABEL_17;
    }

    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C30, &qword_1B0EC9898) + 48);
    result = sub_1B0B82A64(v196->isa);
    if (!__CFADD__(v77, v75))
    {
      v87 = (v85 + v86);
      *v87 = v77;
      v87[1] = v77 + v75;
      goto LABEL_17;
    }

LABEL_75:
    __break(1u);
    return result;
  }

  if (BYTE4(v36[1].isa) == 1)
  {
    if (v75)
    {
      v79 = v183 + v75;
      if (!__CFADD__(v183, v75))
      {
        if (isa < v79)
        {
          type metadata accessor for SegmentResequencer.Error(0);
          sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error, &unk_1B0EC98CC);
          swift_allocError();
          v81 = v80;
          v82 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
          *v81 = isa;
          *(v81 + 4) = v77;
          *(v81 + 8) = v82;
          goto LABEL_17;
        }

        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_74;
    }

    if (isa <= v183)
    {
      goto LABEL_32;
    }

    v88 = 1;
LABEL_30:
    v79 = v183;
    goto LABEL_31;
  }

  if (!v75)
  {
    v88 = v183 != 0;
    goto LABEL_30;
  }

  v79 = v183 + v75;
  if (__CFADD__(v183, v75))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

LABEL_26:
  v88 = 0;
LABEL_31:
  LODWORD(v36[1].isa) = v79;
  BYTE4(v36[1].isa) = v88;
LABEL_32:
  v89 = v77 + v75;
  if (__CFADD__(v77, v75))
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v33 = sub_1B0AFFD78(0, *(v33 + 2) + 1, 1, v33);
    goto LABEL_38;
  }

  if (!v75)
  {
    goto LABEL_41;
  }

  v33 = v36->isa;
  sub_1B0B82A64(v36->isa);
  v90 = v77 + v75;
  if (sub_1B0E432C8())
  {
    v91 = v175;
    sub_1B0E43238();
    v92 = v179;
    sub_1B0E43248();
    v93 = v182;
    v198 = v89;
    v94 = *(v182 + 8);
    v95 = v91;
    v96 = v181;
    v94(v95, v181);
    v97 = v186;
    sub_1B0A92638(v50, v186);
    v98 = v185;
    sub_1B0A92638(v50, v185);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v99 = *(v93 + 16);
    v100 = v178;
    v182 = v93 + 16;
    v196 = v99;
    (v99)(v178, v92, v96);
    v101 = sub_1B0E43988();
    v102 = sub_1B0E458E8();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v203 = v197;
      *v103 = 68159747;
      LODWORD(v195) = v102;
      *(v103 + 4) = 2;
      *(v103 + 8) = 256;
      v104 = v193;
      v105 = v100;
      v106 = v98 + *(v193 + 20);
      *(v103 + 10) = *v106;
      *(v103 + 11) = 2082;
      v107 = *(v104 + 20);
      v194 = v101;
      v108 = v94;
      v109 = v98;
      v110 = v97;
      v111 = v97 + v107;
      *(v103 + 13) = sub_1B0399D64(*(v111 + 8), *(v111 + 16), &v203);
      *(v103 + 21) = 1040;
      *(v103 + 23) = 2;
      *(v103 + 27) = 512;
      v112 = *(v106 + 24);
      v113 = v109;
      v94 = v108;
      sub_1B0A9269C(v113);
      *(v103 + 29) = v112;
      *(v103 + 31) = 2160;
      *(v103 + 33) = 0x786F626C69616DLL;
      *(v103 + 41) = 2085;
      v114 = *(v111 + 32);
      LODWORD(v106) = *(v111 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A9269C(v110);
      v199 = v114;
      LODWORD(v200) = v106;
      v115 = sub_1B0E44BA8();
      v117 = sub_1B0399D64(v115, v116, &v203);

      *(v103 + 43) = v117;
      *(v103 + 51) = 2080;
      LODWORD(v108) = v183;
      v201 = v198;
      v202 = v183;
      v199 = 0;
      v200 = 0xE000000000000000;
      sub_1B0E46508();
      MEMORY[0x1B2726E80](3943982, 0xE300000000000000);
      v118 = v108;
      sub_1B0E46508();
      v119 = sub_1B0399D64(v199, v200, &v203);

      *(v103 + 53) = v119;
      *(v103 + 61) = 2080;
      sub_1B0B83D74(&qword_1EB6E4C38, MEMORY[0x1E6969B50], MEMORY[0x1E6969B98]);
      v120 = v181;
      v121 = sub_1B0E469C8();
      v123 = v122;
      v94(v105, v120);
      v124 = sub_1B0399D64(v121, v123, &v203);

      *(v103 + 63) = v124;
      v125 = v194;
      _os_log_impl(&dword_1B0389000, v194, v195, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Received bytes in range %s -- some of which have previously been received: %s", v103, 0x47u);
      v126 = v197;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v126, -1, -1);
      MEMORY[0x1B272C230](v103, -1, -1);
    }

    else
    {
      sub_1B0A9269C(v98);

      v94(v100, v181);
      sub_1B0A9269C(v97);
      v118 = v183;
    }

    type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error, &unk_1B0EC98CC);
    swift_allocError();
    v153 = v152;
    v154 = (v152 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C30, &qword_1B0EC9898) + 48));
    v155 = v184;
    v156 = v181;
    (v196)(v153, v184, v181);
    v157 = v198;
    *v154 = v118;
    v154[1] = v157;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v94(v179, v156);
    return (v94)(v155, v156);
  }

  v128 = v194;
  v127 = v195;
  v129 = v176;
  (v194[2].isa)(v176, v198, v195);
  (v128[7].isa)(v129, 0, 1, v127);
  v130 = *(v188 + 48);
  v50 = v177;
  *v177 = v77;
  *(v50 + 4) = v90;
  sub_1B03C60A4(v129, v50 + v130, &qword_1EB6E2070, &qword_1B0E9F040);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_38:
  v131 = v182;
  v132 = v187;
  v134 = *(v33 + 2);
  v133 = *(v33 + 3);
  if (v134 >= v133 >> 1)
  {
    v168 = sub_1B0AFFD78((v133 > 1), v134 + 1, 1, v33);
    v131 = v182;
    v33 = v168;
  }

  (*(v131 + 8))();
  *(v33 + 2) = v134 + 1;
  result = sub_1B03C60A4(v50, v33 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v134, &qword_1EB6E41B8, &qword_1B0EC4100);
  v36->isa = v33;
LABEL_41:
  if (BYTE4(v36[1].isa) != 1)
  {
    return result;
  }

  v135 = v36[1].isa;
  v136 = v36->isa;
  v137 = *(v36->isa + 2);
  if (!v137)
  {
    v145 = v196;
    if (v135)
    {
      return result;
    }

LABEL_58:
    LODWORD(v145[1].isa) = v135;
    BYTE4(v145[1].isa) = 0;
    return result;
  }

  LODWORD(v198) = v135;
  v138 = 0;
  v139 = v188;
  v140 = (*(v187 + 80) + 32) & ~*(v187 + 80);
  v197 = v136;
  v141 = v136 + v140;
  v142 = *(v187 + 72);
  v195 = v141;
  v143 = v174;
  do
  {
    v144 = v142;
    sub_1B03B5C80(v141, v143, &qword_1EB6E41B8, &qword_1B0EC4100);
    sub_1B03C60A4(v143, a2, &qword_1EB6E41B8, &qword_1B0EC4100);
    if (*(a2 + 4) > v138)
    {
      v138 = *(a2 + 4);
    }

    result = sub_1B0398EFC(a2 + *(v139 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
    v142 = v144;
    v141 += v144;
    --v137;
  }

  while (v137);
  v135 = v198;
  v145 = v196;
  if (v138 == v198)
  {
    goto LABEL_58;
  }

  v146 = *(v197 + 16);
  if (!v146)
  {
    if (v198)
    {
      return result;
    }

LABEL_61:
    v158 = type metadata accessor for SegmentResequencer.Error(0);
    sub_1B0B83D74(&qword_1EB6E4C28, type metadata accessor for SegmentResequencer.Error, &unk_1B0EC98CC);
    v196 = v158;
    v189 = swift_allocError();
    v194 = v159;
    v160 = *(v197 + 16);
    if (v160)
    {
      v161 = 0;
      v162 = v188;
      v163 = v171;
      v164 = v170;
      v165 = v195;
      do
      {
        sub_1B03B5C80(v165, v164, &qword_1EB6E41B8, &qword_1B0EC4100);
        sub_1B03C60A4(v164, v163, &qword_1EB6E41B8, &qword_1B0EC4100);
        if (*(v163 + 4) > v161)
        {
          v161 = *(v163 + 4);
        }

        sub_1B0398EFC(v163 + *(v162 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
        v165 += v144;
        --v160;
      }

      while (v160);
    }

    else
    {
      v161 = 0;
    }

    v166 = v194;
    v167 = v198;
    LODWORD(v194->isa) = v161;
    HIDWORD(v166->isa) = v167;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v147 = 0;
  v148 = v195;
  v149 = v188;
  v150 = v173;
  v151 = v172;
  do
  {
    sub_1B03B5C80(v148, v151, &qword_1EB6E41B8, &qword_1B0EC4100);
    sub_1B03C60A4(v151, v150, &qword_1EB6E41B8, &qword_1B0EC4100);
    if (*(v150 + 4) > v147)
    {
      v147 = *(v150 + 4);
    }

    result = sub_1B0398EFC(v150 + *(v149 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
    v148 += v144;
    --v146;
  }

  while (v146);
  if (v147 >= v198)
  {
    goto LABEL_61;
  }

  return result;
}

uint64_t sub_1B0B82A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v10 - v4);
  result = sub_1B0E432F8();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    while (1)
    {
      sub_1B03B5C80(v8, v5, &qword_1EB6E41B8, &qword_1B0EC4100);
      result = *v5;
      if (v5[1] < result)
      {
        break;
      }

      sub_1B0E43298();
      result = sub_1B0398EFC(v5, &qword_1EB6E41B8, &qword_1B0EC4100);
      v8 += v9;
      if (!--v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B82B94@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v78 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v84 = (&v78 - v10);
  v11 = sub_1B0E443C8();
  v85 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v78 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v78 - v16);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v99 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = (&v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v92 = (&v78 - v20);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
  v97 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v90 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v78 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v94 = &v78 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v91 = (&v78 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v78 - v32);
  v34 = *v1;
  v93 = sub_1B0B83818(*v1, *(v1 + 8) | (*(v1 + 12) << 32));
  v86 = v35;
  if (v36 == 1)
  {
    v82 = v26;
    v79 = v1;
    v83 = v17;
    v81 = v6;
    v95 = v11;
    v80 = a1;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = v34;
    v87 = *(v34 + 16);
    v102 = v34;
    if (v87)
    {
      v39 = 0;
      v40 = &qword_1EB6E4C40;
      while (v39 < v38[2])
      {
        v98 = v37;
        v41 = v38 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v39;
        v42 = v103;
        v43 = *(v103 + 48);
        v44 = v91;
        *v91 = v39;
        sub_1B03B5C80(v41, v44 + v43, &qword_1EB6E41B8, &qword_1B0EC4100);
        v2 = v40;
        sub_1B03C60A4(v44, v33, v40, &qword_1B0EC98A0);
        v45 = (v33 + *(v42 + 48));
        v46 = v104;
        v47 = *(v104 + 48);
        v48 = v92;
        *v92 = *v45;
        sub_1B03B5C80(v45 + v47, v48 + v47, &qword_1EB6E2070, &qword_1B0E9F040);
        v49 = v101;
        sub_1B03C60A4(v48, v101, &qword_1EB6E41B8, &qword_1B0EC4100);
        a1 = *v49;
        sub_1B0398EFC(v49 + *(v46 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
        if (v93 > a1 || v86 <= a1)
        {
          v40 = v2;
          sub_1B0398EFC(v33, v2, &qword_1B0EC98A0);
          v38 = v102;
          v37 = v98;
        }

        else
        {
          v40 = v2;
          sub_1B03C60A4(v33, v94, v2, &qword_1B0EC98A0);
          v37 = v98;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B0A104(0, *(v37 + 16) + 1, 1);
            v37 = v105;
          }

          v38 = v102;
          v52 = *(v37 + 16);
          v51 = *(v37 + 24);
          a1 = (v52 + 1);
          if (v52 >= v51 >> 1)
          {
            sub_1B0B0A104((v51 > 1), v52 + 1, 1);
            v37 = v105;
          }

          *(v37 + 16) = a1;
          sub_1B03C60A4(v94, v37 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v52, v2, &qword_1B0EC98A0);
        }

        v39 = (v39 + 1);
        if (v87 == v39)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      v105 = v37;

      sub_1B0B83CC0(&v105);

      v33 = v105;
      sub_1B0E44378();
      v2 = v84;
      v55 = v82;
      v94 = v33[2];
      if (!v94)
      {
        v65 = *(v85 + 32);
        v64 = (v85 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
LABEL_24:
        v39 = v83;
        v2 = v95;
        v86 = v64;
        v98 = v65;
        v65(v83, v96, v95);
        v66 = v33[2];
        if (v66)
        {
          v105 = MEMORY[0x1E69E7CC0];
          sub_1B0452620(0, v66, 0);
          v37 = v105;
          v67 = v33 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
          v68 = *(v97 + 72);
          do
          {
            v69 = v100;
            sub_1B03B5C80(v67, v100, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v70 = v90;
            sub_1B03C60A4(v69, v90, &qword_1EB6E4C40, &qword_1B0EC98A0);
            v71 = *v70;
            sub_1B0398EFC(v70 + *(v103 + 48) + *(v104 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
            v105 = v37;
            v73 = *(v37 + 16);
            v72 = *(v37 + 24);
            if (v73 >= v72 >> 1)
            {
              sub_1B0452620((v72 > 1), v73 + 1, 1);
              v37 = v105;
            }

            *(v37 + 16) = v73 + 1;
            *(v37 + 8 * v73 + 32) = v71;
            v67 += v68;
            --v66;
          }

          while (v66);

          v2 = v95;
          v39 = v83;
          v38 = v102;
        }

        else
        {

          v37 = MEMORY[0x1E69E7CC0];
        }

        a1 = *(v37 + 16);
        v33 = v81;
        if (!a1)
        {

LABEL_39:
          v77 = v80;
          v98(v80, v39, v2);
          return (*(v85 + 56))(v77, 0, 1, v2);
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_33:
          v74 = *(v85 + 56);
          v75 = 32;
          do
          {
            v76 = *(v37 + v75);
            v74(v33, 1, 1, v2);
            if ((v76 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v76 >= v102[2])
            {
              goto LABEL_43;
            }

            sub_1B075F6A0(v33, v102 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v76 + *(v104 + 48));
            v75 += 8;
            a1 = (a1 - 1);
          }

          while (a1);

          *v79 = v102;
          goto LABEL_39;
        }

LABEL_44:
        v102 = sub_1B0B8C914(v38);
        goto LABEL_33;
      }

      v37 = 0;
      v91 = (v85 + 8);
      v39 = &qword_1EB6E4C40;
      a1 = &qword_1B0EC98A0;
      v92 = (v85 + 32);
      v93 = (v85 + 48);
      v86 = ((v85 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
      v87 = v33;
      while (v37 < v33[2])
      {
        v56 = v37;
        sub_1B03B5C80(v33 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v37, v55, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v57 = v100;
        sub_1B03B5C80(v55, v100, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v58 = v57 + *(v103 + 48);
        v59 = *(v104 + 48);
        v60 = v101;
        sub_1B03C60A4(v58 + v59, v101 + v59, &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B03C60A4(v60 + v59, v2, &qword_1EB6E2070, &qword_1B0E9F040);
        v61 = v89;
        sub_1B03B5C80(v2, v89, &qword_1EB6E2070, &qword_1B0E9F040);
        v62 = v2;
        v63 = v95;
        if ((*v93)(v61, 1, v95) == 1)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v38 = v88;
        v98 = *v92;
        v98(v88, v61, v63);
        sub_1B0E44388();
        v37 = v56 + 1;
        (*v91)(v38, v63);
        sub_1B0398EFC(v62, &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B0398EFC(v55, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v2 = v62;
        v33 = v87;
        if (v94 == v56 + 1)
        {
          v38 = v102;
          v64 = v86;
          v65 = v98;
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v53 = *(v85 + 56);

  return v53(a1, 1, 1, v11);
}

uint64_t sub_1B0B83690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - v4;
  result = sub_1B0E432F8();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1B03B5C80(v9, v5, &qword_1EB6E41B8, &qword_1B0EC4100);
      v11 = sub_1B0E443C8();
      if ((*(*(v11 - 8) + 48))(&v5[v8], 1, v11) != 1)
      {
        result = *v5;
        if (*(v5 + 1) < result)
        {
          __break(1u);
          return result;
        }

        sub_1B0E43298();
      }

      result = sub_1B0398EFC(v5, &qword_1EB6E41B8, &qword_1B0EC4100);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

unint64_t sub_1B0B83818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E432D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = sub_1B0E43308();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  if ((a2 & 0xFFFFFFFFFFLL) != 0)
  {
    v43 = a2 & 0xFFFFFFFFFFLL;
    v44 = v19;
    v42 = a2;
    v45 = a1;
    sub_1B0B82A64(a1);
    sub_1B0E432E8();
    v22 = *(v11 + 8);
    v22(v21, v10);
    sub_1B0B83D74(&qword_1EB6DECC0, MEMORY[0x1E6969B30], MEMORY[0x1E6969B48]);
    sub_1B0E45668();
    sub_1B0E456C8();
    if (v48 == v47[0])
    {
      (*(v5 + 8))(v9, v4);
      return 0;
    }

    v23 = sub_1B0E457B8();
    v25 = *v24;
    v41 = v24[1];
    v23(v47, 0);
    v27 = *(v5 + 8);
    v26 = v5 + 8;
    v28 = v9;
    v29 = v27;
    v27(v28, v4);
    if (v25)
    {
      return 0;
    }

    v39 = v29;
    v40 = v26;
    sub_1B0B83690(v45);
    sub_1B0E43238();
    v31 = v22;
    v32 = v44;
    sub_1B0E43248();
    v31(v13, v10);
    v31(v16, v10);
    v33 = v46;
    sub_1B0E432E8();
    v31(v32, v10);
    sub_1B0E45668();
    sub_1B0E456C8();
    if (v48 != v47[0])
    {
      v35 = sub_1B0E457B8();
      v37 = *v36;
      v35(v47, 0);
      v39(v33, v4);
      return v37;
    }

    v34 = v42;
    v39(v33, v4);
    result = v41;
    if ((v34 & 0xFF00000000) != 0 || v41 != v34)
    {
      if ((v41 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v41))
        {
          return result;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  return 0;
}

double sub_1B0B83C94@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void sub_1B0B83CC0(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B0B945EC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B0B83DBC(v5);
  *a1 = v3;
}

uint64_t sub_1B0B83D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B0B83DBC(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B0E469A8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
        v6 = sub_1B0E45278();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1B0B8426C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B0B83F00(0, v2, 1, a1);
  }
}

void sub_1B0B83F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v39 - v17;
  v41 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v46 = -v19;
    v47 = v18;
    v21 = &qword_1EB6E4C40;
    v22 = a1 - a3;
    v40 = v19;
    v23 = v18 + v19 * a3;
    v24 = &qword_1B0EC98A0;
LABEL_5:
    v44 = v20;
    v45 = a3;
    v42 = v23;
    v43 = v22;
    v53 = v22;
    v25 = v52;
    while (1)
    {
      v26 = v56;
      sub_1B03B5C80(v23, v56, v21, v24);
      v27 = v49;
      sub_1B03B5C80(v20, v49, v21, v24);
      v28 = v21;
      v29 = v50;
      sub_1B03B5C80(v26, v50, v28, v24);
      v30 = (v29 + *(v25 + 48));
      v55 = *v30;
      v31 = v24;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
      v54 = *(v32 + 48);
      v33 = v51;
      sub_1B03B5C80(v27, v51, v28, v31);
      v34 = (v33 + *(v25 + 48));
      v21 = v28;
      v35 = *v34;
      v36 = *(v32 + 48);
      v24 = v31;
      sub_1B0398EFC(v34 + v36, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0398EFC(v30 + v54, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0398EFC(v27, v28, v31);
      sub_1B0398EFC(v56, v28, v31);
      v37 = v55 >= v35;
      v25 = v52;
      if (v37)
      {
LABEL_4:
        a3 = v45 + 1;
        v20 = v44 + v40;
        v22 = v43 - 1;
        v23 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v38 = v48;
      sub_1B03C60A4(v23, v48, v28, v31);
      swift_arrayInitWithTakeFrontToBack();
      sub_1B03C60A4(v38, v20, v28, v31);
      v20 += v46;
      v23 += v46;
      v37 = __CFADD__(v53++, 1);
      if (v37)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1B0B8426C(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4C40, &qword_1B0EC98A0);
  v140 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v128 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v149 = &v128 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v148 = &v128 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v147 = &v128 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v128 - v20;
  v21 = a3[1];
  v136 = a3;
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v22 = v23;
    v23 = *v132;
    if (!*v132)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v153 = v22;
      v124 = *(v22 + 16);
      if (v124 >= 2)
      {
        while (*a3)
        {
          v125 = *(v22 + 16 * v124);
          v126 = *(v22 + 16 * (v124 - 1) + 40);
          sub_1B0B84E7C(*a3 + *(v140 + 72) * v125, *a3 + *(v140 + 72) * *(v22 + 16 * (v124 - 1) + 32), *a3 + *(v140 + 72) * v126, v23);
          if (v5)
          {
            goto LABEL_108;
          }

          if (v126 < v125)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1B0B9443C(v22);
          }

          if (v124 - 2 >= *(v22 + 16))
          {
            goto LABEL_124;
          }

          v127 = (v22 + 16 * v124);
          *v127 = v125;
          v127[1] = v126;
          v153 = v22;
          sub_1B0B943B0(v124 - 1);
          v22 = v153;
          v124 = *(v153 + 16);
          a3 = v136;
          if (v124 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v22 = sub_1B0B9443C(v22);
    goto LABEL_100;
  }

  v129 = a4;
  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = v19;
  v150 = v19;
  while (1)
  {
    if (v22 + 1 >= v21)
    {
      v38 = v22 + 1;
    }

    else
    {
      v142 = v21;
      v130 = v23;
      v131 = v5;
      v25 = v22;
      v133 = v22;
      v152 = *a3;
      v26 = v152;
      v27 = *(v140 + 72);
      v28 = v152 + v27 * (v22 + 1);
      v29 = v146;
      sub_1B03B5C80(v28, v146, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v30 = v147;
      sub_1B03B5C80(v26 + v27 * v25, v147, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v31 = v148;
      sub_1B03B5C80(v29, v148, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v32 = (v31 + *(v24 + 48));
      LODWORD(v139) = *v32;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
      v151 = *(v33 + 48);
      v23 = &qword_1B0EC98A0;
      v34 = v149;
      sub_1B03B5C80(v30, v149, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v35 = (v34 + *(v24 + 48));
      LODWORD(v138) = *v35;
      v137 = v33;
      sub_1B0398EFC(v35 + *(v33 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0398EFC(v32 + v151, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0398EFC(v30, &qword_1EB6E4C40, &qword_1B0EC98A0);
      sub_1B0398EFC(v29, &qword_1EB6E4C40, &qword_1B0EC98A0);
      v36 = v133 + 2;
      v141 = v27;
      v37 = v152 + v27 * (v133 + 2);
      while (1)
      {
        v38 = v142;
        if (v142 == v36)
        {
          break;
        }

        LODWORD(v152) = v139 < v138;
        v39 = v146;
        sub_1B03B5C80(v37, v146, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v40 = v28;
        v41 = v147;
        sub_1B03B5C80(v28, v147, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v42 = v148;
        sub_1B03B5C80(v39, v148, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v43 = v150;
        v44 = (v42 + *(v150 + 48));
        LODWORD(v151) = *v44;
        v45 = v137;
        v143 = *(v137 + 48);
        v46 = v149;
        sub_1B03B5C80(v41, v149, &qword_1EB6E4C40, &qword_1B0EC98A0);
        v47 = (v46 + *(v43 + 48));
        LODWORD(v144) = *v47;
        sub_1B0398EFC(v47 + *(v45 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
        sub_1B0398EFC(v44 + v143, &qword_1EB6E2070, &qword_1B0E9F040);
        v23 = &qword_1B0EC98A0;
        sub_1B0398EFC(v41, &qword_1EB6E4C40, &qword_1B0EC98A0);
        sub_1B0398EFC(v39, &qword_1EB6E4C40, &qword_1B0EC98A0);
        ++v36;
        v37 += v141;
        v28 = v40 + v141;
        if (((v152 ^ (v151 >= v144)) & 1) == 0)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v24 = v150;
      v5 = v131;
      a3 = v136;
      v22 = v133;
      if (v139 >= v138)
      {
        goto LABEL_24;
      }

      if (v38 < v133)
      {
        goto LABEL_127;
      }

      if (v133 >= v38)
      {
LABEL_24:
        v23 = v130;
      }

      else
      {
        v48 = v38;
        v49 = v141 * (v38 - 1);
        v50 = v38 * v141;
        v142 = v38;
        v51 = v133;
        v52 = v133 * v141;
        do
        {
          if (v51 != --v48)
          {
            v53 = *v136;
            if (!*v136)
            {
              goto LABEL_133;
            }

            sub_1B03C60A4(v53 + v52, v135, &qword_1EB6E4C40, &qword_1B0EC98A0);
            if (v52 < v49 || v53 + v52 >= v53 + v50)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B03C60A4(v135, v53 + v49, &qword_1EB6E4C40, &qword_1B0EC98A0);
          }

          ++v51;
          v49 -= v141;
          v50 -= v141;
          v52 += v141;
        }

        while (v51 < v48);
        v5 = v131;
        v23 = v130;
        v24 = v150;
        a3 = v136;
        v22 = v133;
        v38 = v142;
      }
    }

    v54 = a3[1];
    if (v38 >= v54)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v38, v22))
    {
      goto LABEL_126;
    }

    if (v38 - v22 >= v129)
    {
LABEL_35:
      v56 = v38;
      if (v38 < v22)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v22, v129))
    {
      goto LABEL_128;
    }

    if (v22 + v129 >= v54)
    {
      v55 = a3[1];
    }

    else
    {
      v55 = v22 + v129;
    }

    if (v55 < v22)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v38 == v55)
    {
      goto LABEL_35;
    }

    v130 = v23;
    v131 = v5;
    v104 = *a3;
    v105 = *(v140 + 72);
    v106 = *a3 + v105 * (v38 - 1);
    v143 = -v105;
    v144 = v104;
    v133 = v22;
    v134 = v105;
    v107 = v22 - v38;
    v108 = v104 + v38 * v105;
    v109 = v24;
    v137 = v55;
LABEL_89:
    v141 = v106;
    v142 = v38;
    v138 = v108;
    v139 = v107;
    v110 = v108;
    v111 = v107;
LABEL_90:
    v151 = v111;
    v112 = v146;
    sub_1B03B5C80(v110, v146, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v113 = v147;
    sub_1B03B5C80(v106, v147, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v114 = v148;
    sub_1B03B5C80(v112, v148, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v115 = (v114 + *(v109 + 48));
    LODWORD(v152) = *v115;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E41B8, &qword_1B0EC4100);
    v117 = *(v116 + 48);
    v118 = v149;
    sub_1B03B5C80(v113, v149, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v119 = (v118 + *(v109 + 48));
    v120 = *v119;
    sub_1B0398EFC(v119 + *(v116 + 48), &qword_1EB6E2070, &qword_1B0E9F040);
    sub_1B0398EFC(v115 + v117, &qword_1EB6E2070, &qword_1B0E9F040);
    sub_1B0398EFC(v113, &qword_1EB6E4C40, &qword_1B0EC98A0);
    sub_1B0398EFC(v112, &qword_1EB6E4C40, &qword_1B0EC98A0);
    if (v152 < v120)
    {
      break;
    }

    v109 = v150;
LABEL_88:
    v38 = v142 + 1;
    v106 = v141 + v134;
    v107 = v139 - 1;
    v108 = v138 + v134;
    v56 = v137;
    if (v142 + 1 != v137)
    {
      goto LABEL_89;
    }

    v5 = v131;
    a3 = v136;
    v23 = v130;
    v22 = v133;
    if (v137 < v133)
    {
      goto LABEL_125;
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v137 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1B0AFF300(0, *(v23 + 2) + 1, 1, v23);
    }

    v59 = *(v23 + 2);
    v58 = *(v23 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v23 = sub_1B0AFF300((v58 > 1), v59 + 1, 1, v23);
    }

    *(v23 + 2) = v60;
    v61 = &v23[16 * v59];
    v62 = v137;
    *(v61 + 4) = v22;
    *(v61 + 5) = v62;
    v152 = *v132;
    if (!v152)
    {
      goto LABEL_135;
    }

    if (v59)
    {
      v24 = v150;
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v23 + 4);
          v65 = *(v23 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_56:
          if (v67)
          {
            goto LABEL_114;
          }

          v80 = &v23[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_117;
          }

          v86 = &v23[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_121;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v90 = &v23[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_70:
        if (v85)
        {
          goto LABEL_116;
        }

        v93 = &v23[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_119;
        }

        if (v96 < v84)
        {
          goto LABEL_4;
        }

LABEL_77:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v102 = *&v23[16 * v101 + 32];
        v22 = *&v23[16 * v63 + 40];
        sub_1B0B84E7C(*a3 + *(v140 + 72) * v102, *a3 + *(v140 + 72) * *&v23[16 * v63 + 32], *a3 + *(v140 + 72) * v22, v152);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v22 < v102)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1B0B9443C(v23);
        }

        if (v101 >= *(v23 + 2))
        {
          goto LABEL_111;
        }

        v103 = &v23[16 * v101];
        *(v103 + 4) = v102;
        *(v103 + 5) = v22;
        v153 = v23;
        sub_1B0B943B0(v63);
        v23 = v153;
        v60 = *(v153 + 16);
        v24 = v150;
        if (v60 <= 1)
        {
          goto LABEL_4;
        }
      }

      v68 = &v23[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_112;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_113;
      }

      v75 = &v23[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_115;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_118;
      }

      if (v79 >= v71)
      {
        v97 = &v23[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_122;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v24 = v150;
LABEL_4:
    v21 = a3[1];
    v22 = v137;
    if (v137 >= v21)
    {
      goto LABEL_98;
    }
  }

  v121 = v151;
  if (v144)
  {
    v122 = v145;
    sub_1B03C60A4(v110, v145, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v109 = v150;
    swift_arrayInitWithTakeFrontToBack();
    sub_1B03C60A4(v122, v106, &qword_1EB6E4C40, &qword_1B0EC98A0);
    v106 += v143;
    v110 += v143;
    v123 = __CFADD__(v121, 1);
    v111 = v121 + 1;
    if (v123)
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

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
}