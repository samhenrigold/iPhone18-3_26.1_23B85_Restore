void sub_1B21C9D20(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = *v1;
  if (v4)
  {
    sub_1B211B358();

    v25 = sub_1B2252190();
    v5 = 0;
    v6 = v4 + 64;
    sub_1B21115A0();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    v26 = v11;
    v27 = v4;
LABEL_3:
    v12 = v5;
    if (!v9)
    {
      goto LABEL_5;
    }

    do
    {
      v5 = v12;
LABEL_8:
      v13 = (*(v4 + 56) + 16 * (__clz(__rbit64(v9)) | (v5 << 6)));
      v14 = *v13;
      v15 = v13[1];

      v16 = v3;
      v17 = sub_1B21BD090();
      v19 = v18;

      if (v16)
      {

        return;
      }

      v9 &= v9 - 1;
      if (v19)
      {
        v20 = sub_1B2252220();
        v23 = v21;
        sub_1B21619D8(&qword_1EB7A2190, &unk_1B225B250);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B22546B0;
        *(inited + 32) = v20;
        *(inited + 40) = v23;
        *(inited + 48) = v17;
        *(inited + 56) = v19;
        *(inited + 64) = v14;
        *(inited + 72) = v15;
        v28[0] = sub_1B2252190();
        v28[1] = v25;
        v30.tableRegions.value._rawValue = v28;
        DatabaseRegion.union(_:)(v30);

        v25 = v29;
        v3 = 0;
        v11 = v26;
        v4 = v27;
        goto LABEL_3;
      }

      v12 = v5;
      v3 = 0;
      v11 = v26;
      v4 = v27;
    }

    while (v9);
LABEL_5:
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v11)
      {

        *a1 = v25;
        return;
      }

      v9 = *(v6 + 8 * v5);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t DatabaseRegion.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x746164206C6C7566;
  }

  if (!*(v1 + 16))
  {
    return 0x7974706D65;
  }

  v31 = sub_1B216E5AC(v1);
  sub_1B21CB4B4(&v31);
  v6 = v31;
  v7 = *(v31 + 16);
  if (!v7)
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v31 = v9;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v27 = sub_1B2252250();

    return v27;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10(0, v7, 0, v2, v3, v4, v5);
  v8 = 0;
  v9 = v31;
  v10 = (v6 + 72);
  v29 = v7;
  v30 = v6;
  while (v8 < *(v6 + 16))
  {
    v11 = *(v10 - 5);
    v12 = *(v10 - 4);
    v13 = *(v10 - 3);
    v14 = *(v10 - 2);
    v15 = *(v10 - 1);
    v16 = *v10;

    v17 = sub_1B21CA544(v11, v12, v13, v14, v15, v16);
    v19 = v18;

    v31 = v9;
    v25 = *(v9 + 16);
    v24 = *(v9 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1B2116B10(v24 > 1, v25 + 1, 1, v20, v21, v22, v23);
      v9 = v31;
    }

    ++v8;
    *(v9 + 16) = v25 + 1;
    v26 = v9 + 16 * v25;
    *(v26 + 32) = v17;
    *(v26 + 40) = v19;
    v10 += 6;
    v6 = v30;
    if (v29 == v8)
    {

      goto LABEL_13;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t static DatabaseRegion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  swift_bridgeObjectRetain_n();

  v4 = sub_1B2133390(v2);

  v6 = sub_1B2133390(v5);
  if ((sub_1B21C90D0(v4, v6) & 1) == 0)
  {
LABEL_37:

    return 0;
  }

  v7 = v4 + 56;
  sub_1B21115A0();
  v10 = v9 & v8;
  v26 = (v11 + 63) >> 6;

  v13 = 0;
  v27 = v2;
  while (v10)
  {
LABEL_10:
    if (!*(v2 + 16))
    {
      goto LABEL_40;
    }

    sub_1B211D680();
    result = sub_1B2133834();
    if ((v15 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_42;
    }

    v16 = (*(v2 + 56) + 16 * result);
    v17 = *v16;
    v18 = v16[1];

    sub_1B211D680();
    v19 = sub_1B2133834();
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_43;
    }

    v22 = (*(v3 + 56) + 16 * v19);
    v23 = *v22;
    v24 = v22[1];
    if (v17)
    {
      if (!v23)
      {

        goto LABEL_34;
      }

      if ((sub_1B21C90D0(v17, v23) & 1) == 0)
      {

        goto LABEL_33;
      }
    }

    else
    {
      if (v23)
      {

        goto LABEL_37;
      }
    }

    v10 &= v10 - 1;
    if (v18)
    {
      if (!v24)
      {

LABEL_33:

LABEL_34:

        goto LABEL_37;
      }

      v25 = sub_1B21C9298(v18, v24);

      v7 = v4 + 56;
      v2 = v27;
      if ((v25 & 1) == 0)
      {

        goto LABEL_37;
      }
    }

    else
    {
      if (v24)
      {

        goto LABEL_37;
      }

      v7 = v4 + 56;
      v2 = v27;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v26)
    {

      return 1;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1B21CA544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a3;
  v53 = a4;
  if (a5)
  {

    sub_1B21C89A8(a5, v8, v9, v10, v11, v12, v13);
    v49 = v14;

    sub_1B222EB88(&v49);

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v15 = sub_1B2252250();
    v17 = v16;

    v49 = 40;
    v50 = 0xE100000000000000;
    MEMORY[0x1B2741EB0](v15, v17);

    MEMORY[0x1B2741EB0](41, 0xE100000000000000);

    MEMORY[0x1B2741EB0](v49, v50);

    if (!a6)
    {
      return v52;
    }
  }

  else
  {

    MEMORY[0x1B2741EB0](2697768, 0xE300000000000000);
    if (!a6)
    {
      return v52;
    }
  }

  sub_1B219C550(a6, v18, v19, v20, v21, v22, v23, v24, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, vars0, vars8);
  v30 = v29;
  v31 = *(v29 + 16);
  if (v31)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v31, 0, v25, v26, v27, v28);
    v32 = 32;
    v33 = v49;
    do
    {
      v51 = *(v30 + v32);
      v38 = sub_1B2252FD0();
      v40 = v39;
      v49 = v33;
      v42 = *(v33 + 16);
      v41 = *(v33 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1B2116B10(v41 > 1, v42 + 1, 1, v34, v35, v36, v37);
        v33 = v49;
      }

      *(v33 + 16) = v42 + 1;
      v43 = v33 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
      v32 += 8;
      --v31;
    }

    while (v31);
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v49 = v33;
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v44 = sub_1B2252250();
  v46 = v45;

  v49 = 91;
  v50 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](v44, v46);

  MEMORY[0x1B2741EB0](93, 0xE100000000000000);

  MEMORY[0x1B2741EB0](v49, v50);

  return v52;
}

uint64_t sub_1B21CA838(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1B211D964();
    v5 = sub_1B2253410();
    v6 = ~(-1 << *(v2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(v2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v4 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(v2 + 48) + 8 * v7) != v3);
  }

  return v4;
}

uint64_t sub_1B21CA8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;

    LOBYTE(v7) = sub_1B21C90D0(v7, a3);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4 && (sub_1B21C9298(a2, a4) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t AnyDatabaseRegionConvertible.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AnyDatabaseRegionConvertible.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = swift_allocObject();
  result = sub_1B21217FC(a1, v4 + 16);
  *a2 = sub_1B21CC150;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B21CAA08(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  sub_1B21139A0(a2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_1B21CAAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1B211B358();
  result = sub_1B2252190();
  v8 = result;
  v9 = *(a2 + 16);
  v10 = a2 + 32;
  if (v9)
  {
    while (1)
    {
      sub_1B211EE68(v10, v15);
      v11 = v16;
      v12 = v17;
      sub_1B21139A0(v15, v16);
      (*(v12 + 8))(&v18, a1, v11, v12);
      if (v3)
      {
        break;
      }

      v14[0] = v18;
      v14[1] = v8;
      v13.tableRegions.value._rawValue = v14;
      DatabaseRegion.union(_:)(v13);

      v8 = v14[2];
      result = sub_1B2113208(v15);
      v10 += 40;
      if (!--v9)
      {
        goto LABEL_4;
      }
    }

    return sub_1B2113208(v15);
  }

  else
  {
LABEL_4:
    *a3 = v8;
  }

  return result;
}

void *sub_1B21CAC20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_1B21CACB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  sub_1B211D964();
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = *(v6 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1B2148CEC(0, v9, v19 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B212DF10();
    v12 = a3();
    if (!v9)
    {
      v13 = v12;

      return v13;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v10 = swift_slowAlloc();

    sub_1B212DF10();
    v13 = sub_1B21CAC20(v15, v16, v17, v18, a4);

    if (!v9)
    {

      MEMORY[0x1B2743C50](v10, -1, -1);
      return v13;
    }
  }

  result = MEMORY[0x1B2743C50](v10, -1, -1);
  __break(1u);
  return result;
}

void sub_1B21CAE7C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4[2] >= a3[2])
  {
LABEL_16:
    v42 = 0;
    v24 = 0;
    sub_1B211837C();
    sub_1B21161AC();
    v27 = v26 & v25;
    v29 = (v28 + 63) >> 6;
LABEL_17:
    while (v27)
    {
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_24:
      v34 = v30 | (v24 << 6);
      v35 = *(a3[6] + 8 * v34);
      sub_1B2253410();
      sub_1B2113B98();
      v38 = ~v37;
      while (1)
      {
        v39 = v36 & v38;
        if (((*(a4 + (((v36 & v38) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v36 & v38)) & 1) == 0)
        {
          break;
        }

        v36 = v39 + 1;
        if (*(a4[6] + 8 * v39) == v35)
        {
          *(a1 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
          v23 = __OFADD__(v42++, 1);
          if (!v23)
          {
            goto LABEL_17;
          }

          __break(1u);
          goto LABEL_30;
        }
      }
    }

    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v29)
      {
        goto LABEL_30;
      }

      ++v31;
      if (a3[v24 + 7])
      {
        sub_1B211667C();
        v27 = v33 & v32;
        goto LABEL_24;
      }
    }
  }

  else
  {
    v42 = 0;
    v6 = 0;
    sub_1B21161AC();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
LABEL_3:
    while (v9)
    {
      sub_1B2118090();
LABEL_10:
      v16 = *(a4[6] + 8 * (v12 | (v6 << 6)));
      sub_1B2253410();
      sub_1B2113B98();
      v19 = ~v18;
      while (1)
      {
        v20 = v17 & v19;
        v21 = (v17 & v19) >> 6;
        v22 = 1 << (v17 & v19);
        if ((v22 & a3[v21 + 7]) == 0)
        {
          break;
        }

        v17 = v20 + 1;
        if (*(a3[6] + 8 * v20) == v16)
        {
          *(a1 + 8 * v21) |= v22;
          v23 = __OFADD__(v42++, 1);
          if (!v23)
          {
            goto LABEL_3;
          }

          __break(1u);
          goto LABEL_16;
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
LABEL_30:

        sub_1B21D77B4(a1, a2, v42, a3);
        return;
      }

      ++v13;
      if (a4[v6 + 7])
      {
        sub_1B211667C();
        v9 = v15 & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1B21CB0CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 32 * v49);
      v38 = *v37;
      v39 = v37[1];
      sub_1B2253420();

      sub_1B2252370();
      v40 = sub_1B2253470();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 32 * v42);
        if (*v43 == v38 && v43[1] == v39)
        {
          break;
        }

        v45 = sub_1B22531F0();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(result + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        sub_1B21D795C(result, a2, v53, v5);
        return;
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 32 * (v12 | (v6 << 6)));
      v16 = *v15;
      v17 = v15[1];
      sub_1B2253420();

      sub_1B2252370();
      v18 = sub_1B2253470();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 32 * v21);
        if (*v24 == v16 && v24[1] == v17)
        {
          break;
        }

        v26 = sub_1B22531F0();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      *(result + 8 * v22) |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

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
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_1B21CB4B4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B21A152C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1B21CB520(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1B21CB520(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B2252FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B21619D8(&qword_1EB7A1190, &qword_1B225C150);
        v6 = sub_1B2252610();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B21CB704(v7, v8, a1, v4);
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
    return sub_1B21CB624(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B21CB624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 48 * a3 - 48;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 48 * v4;
      result = *(v9 + 16);
      v10 = *(v9 + 24);
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 + 16) && v10 == *(v12 + 24))
        {
          break;
        }

        result = sub_1B22531F0();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v12 + 64);
        v10 = *(v12 + 72);
        v14 = *(v12 + 80);
        v15 = *v12;
        v16 = *(v12 + 32);
        *(v12 + 64) = *(v12 + 16);
        *(v12 + 80) = v16;
        v17 = *(v12 + 56);
        *v12 = *(v12 + 48);
        *(v12 + 8) = v17;
        *(v12 + 16) = result;
        *(v12 + 24) = v10;
        *(v12 + 32) = v14;
        *(v12 + 48) = v15;
        v12 -= 48;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 48;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B21CB704(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    i = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = i++;
      if (i < v5)
      {
        v9 = *a3;
        v10 = *a3 + 48 * i;
        v11 = *(v10 + 16);
        v12 = *(v10 + 24);
        v13 = *a3 + 48 * v8;
        if (v11 == *(v13 + 16) && v12 == *(v13 + 24))
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1B22531F0();
        }

        v16 = (v9 + 48 * v8 + 120);
        for (i = v8 + 2; i < v5; ++i)
        {
          if (*(v16 - 1) == *(v16 - 7) && *v16 == *(v16 - 6))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1B22531F0()))
          {
            break;
          }

          v16 += 6;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v8)
        {
          goto LABEL_122;
        }

        if (v8 < i)
        {
          v18 = 48 * i - 24;
          v19 = 48 * v8 + 32;
          v20 = i;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 32);
              v25 = v22 + v18;
              v26 = *(v23 - 2);
              v27 = *(v23 - 1);
              v28 = *v23;
              v29 = *(v25 + 8);
              v30 = *(v25 - 8);
              *(v23 - 2) = *(v25 - 24);
              *(v23 - 1) = v30;
              *v23 = v29;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v27;
              *(v25 + 8) = v28;
            }

            ++v21;
            v18 -= 48;
            v19 += 48;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (i < v31)
      {
        if (__OFSUB__(i, v8))
        {
          goto LABEL_121;
        }

        if (i - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v8 + a4;
          }

          if (v32 < v8)
          {
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
            return;
          }

          if (i != v32)
          {
            v33 = *a3;
            v34 = *a3 + 48 * i - 48;
            v35 = v8 - i;
            do
            {
              v36 = v33 + 48 * i;
              v37 = *(v36 + 16);
              v38 = *(v36 + 24);
              v39 = v35;
              v40 = v34;
              do
              {
                v41 = v37 == *(v40 + 16) && v38 == *(v40 + 24);
                if (v41 || (sub_1B22531F0() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v37 = *(v40 + 64);
                v38 = *(v40 + 72);
                v42 = *(v40 + 80);
                v43 = *v40;
                v44 = *(v40 + 32);
                *(v40 + 64) = *(v40 + 16);
                *(v40 + 80) = v44;
                v45 = *(v40 + 56);
                *v40 = *(v40 + 48);
                *(v40 + 8) = v45;
                *(v40 + 16) = v37;
                *(v40 + 24) = v38;
                *(v40 + 32) = v42;
                *(v40 + 48) = v43;
                v40 -= 48;
              }

              while (!__CFADD__(v39++, 1));
              ++i;
              v34 += 48;
              --v35;
            }

            while (i != v32);
            i = v32;
          }
        }
      }

      if (i < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B2161EC4(0, v7[2] + 1, 1, v7);
        v7 = v90;
      }

      v48 = v7[2];
      v47 = v7[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        sub_1B2161EC4(v47 > 1, v48 + 1, 1, v7);
        v7 = v91;
      }

      v7[2] = v49;
      v50 = v7 + 4;
      v51 = &v7[2 * v48 + 4];
      *v51 = v8;
      v51[1] = i;
      v94 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v48)
      {
        while (1)
        {
          v52 = v49 - 1;
          v53 = &v50[2 * v49 - 2];
          v54 = &v7[2 * v49];
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v55 = v7[4];
            v56 = v7[5];
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_69:
            if (v58)
            {
              goto LABEL_110;
            }

            v70 = *v54;
            v69 = v54[1];
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_113;
            }

            v74 = v53[1];
            v75 = v74 - *v53;
            if (__OFSUB__(v74, *v53))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v72, v75))
            {
              goto LABEL_118;
            }

            if (v72 + v75 >= v57)
            {
              if (v57 < v75)
              {
                v52 = v49 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v49 < 2)
          {
            goto LABEL_112;
          }

          v77 = *v54;
          v76 = v54[1];
          v65 = __OFSUB__(v76, v77);
          v72 = v76 - v77;
          v73 = v65;
LABEL_84:
          if (v73)
          {
            goto LABEL_115;
          }

          v79 = *v53;
          v78 = v53[1];
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_117;
          }

          if (v80 < v72)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v84 = v7;
          v85 = &v50[2 * v52 - 2];
          v86 = *v85;
          v87 = &v50[2 * v52];
          v88 = v87[1];
          sub_1B21CBD7C((*a3 + 48 * *v85), (*a3 + 48 * *v87), (*a3 + 48 * v88), v94);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v88 < v86)
          {
            goto LABEL_105;
          }

          v89 = v84[2];
          if (v52 > v89)
          {
            goto LABEL_106;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v52 >= v89)
          {
            goto LABEL_107;
          }

          v49 = v89 - 1;
          memmove(&v50[2 * v52], v87 + 2, 16 * (v89 - 1 - v52));
          v7 = v84;
          v84[2] = v89 - 1;
          if (v89 <= 2)
          {
            goto LABEL_98;
          }
        }

        v59 = &v50[2 * v49];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_108;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_109;
        }

        v66 = v54[1];
        v67 = v66 - *v54;
        if (__OFSUB__(v66, *v54))
        {
          goto LABEL_111;
        }

        v65 = __OFADD__(v57, v67);
        v68 = v57 + v67;
        if (v65)
        {
          goto LABEL_114;
        }

        if (v68 >= v62)
        {
          v82 = *v53;
          v81 = v53[1];
          v65 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v65)
          {
            goto LABEL_119;
          }

          if (v57 < v83)
          {
            v52 = v49 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (i >= v5)
      {
        v96 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1B21CBC44(&v96, *result, a3);
LABEL_103:
}

uint64_t sub_1B21CBC44(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B21A00CC();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1B21CBD7C((*a3 + 48 * *v4), (*a3 + 48 * *v9), (*a3 + 48 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1B21CBD7C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1B2245534(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v12 || (sub_1B22531F0() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 3;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 48;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 48;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = v13[2];
    *(v7 + 1) = v13[1];
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1B2245534(a2, (a3 - a2) / 48, a4);
  v10 = &v4[48 * v9];
LABEL_19:
  for (v5 -= 48; v10 > v4 && v6 > v7; v5 -= 48)
  {
    v17 = *(v10 - 4) == *(v6 - 4) && *(v10 - 3) == *(v6 - 3);
    if (!v17 && (sub_1B22531F0() & 1) != 0)
    {
      v20 = v6 - 3;
      v12 = v5 + 48 == v6;
      v6 -= 3;
      if (!v12)
      {
        v21 = *v20;
        v22 = v20[2];
        *(v5 + 1) = v20[1];
        *(v5 + 2) = v22;
        *v5 = v21;
        v6 = v20;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 48)
    {
      v18 = *(v10 - 3);
      v19 = *(v10 - 1);
      *(v5 + 1) = *(v10 - 2);
      *(v5 + 2) = v19;
      *v5 = v18;
    }

    v10 -= 48;
  }

LABEL_36:
  v23 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v23])
  {
    memmove(v6, v4, 48 * v23);
  }

  return 1;
}

void sub_1B21CBF44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2112AB0(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = (*(v6 + 56) + 16 * v5);
  *v9 = v10;
  v9[1] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_1B2111AD4(v6, v14);
  }
}

uint64_t sub_1B21CBF7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1B21157C0(a1, a8 + 8 * (a1 >> 6));
  v10 = (v9[6] + 32 * result);
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v15 = (v9[7] + 16 * result);
  *v15 = v16;
  v15[1] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

void *sub_1B21CBFCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1B2117584(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 176 * v6), v8, 0xABuLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_1B21CC018(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1B2112AB0(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = (*(v6 + 56) + 16 * v5);
  *v11 = v12;
  v11[1] = v13;
  v14 = *(v6 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    sub_1B2111AD4(v6, v16);
  }
}

void *sub_1B21CC064(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1B2117584(a1, a2, a3, a4, a5);
  result = memcpy((v7 + 216 * v6), v8, 0xD2uLL);
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

uint64_t sub_1B21CC0B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1B21157C0(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = (v8[7] + 24 * result);
  *v12 = v13;
  v12[1] = v14;
  v12[2] = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

uint64_t sub_1B21CC104(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1B21157C0(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_1B21CC16C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B21CC1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B21CC258(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B21CC2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B21CC30C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t UUID.databaseValue.getter@<X0>(uint64_t a2@<X8>)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = sub_1B2251ED0();
  v6[1] = v3;
  result = MEMORY[0x1B27418E0](v6, 16);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 3;
  return result;
}

uint64_t NSUUID.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B2252610();
  v3[2] = 16;
  v3[5] = 0;
  v3[4] = 0;
  v4 = v3 + 4;
  [v1 getUUIDBytes_];
  v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v4 length:16];
  v6 = sub_1B2251DE0();
  v8 = v7;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = 3;
}

id static NSUUID.fromDatabaseValue(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  if (v3 == 3)
  {
    result = 0;
    switch(v2 >> 62)
    {
      case 1uLL:
        LODWORD(v5) = HIDWORD(v1) - v1;
        if (!__OFSUB__(HIDWORD(v1), v1))
        {
          v5 = v5;
          goto LABEL_11;
        }

        __break(1u);
        goto LABEL_16;
      case 2uLL:
        v7 = *(v1 + 16);
        v6 = *(v1 + 24);
        v8 = __OFSUB__(v6, v7);
        v5 = v6 - v7;
        if (!v8)
        {
          goto LABEL_11;
        }

LABEL_16:
        __break(1u);
        return result;
      case 3uLL:
        return result;
      default:
        v5 = BYTE6(v2);
LABEL_11:
        if (v5 != 16)
        {
          return 0;
        }

        MEMORY[0x1EEE9AC00](0);
        sub_1B2251DC0();
        result = v9;
        break;
    }
  }

  else if (v3 == 2)
  {

    return sub_1B21CC618(v1, v2);
  }

  else
  {
    return 0;
  }

  return result;
}

id sub_1B21CC5C4@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUUIDBytes_];
  *a3 = result;
  return result;
}

id sub_1B21CC618(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1B2252290();

  v4 = [v2 initWithUUIDString_];

  return v4;
}

id sub_1B21CC6B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSUUID.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t static UUID.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6 == 3)
  {
    v8 = v5 >> 62;
    switch(v5 >> 62)
    {
      case 1uLL:
        LODWORD(v9) = HIDWORD(v4) - v4;
        if (__OFSUB__(HIDWORD(v4), v4))
        {
          __break(1u);
LABEL_24:
          __break(1u);
        }

        else
        {
          v9 = v9;
LABEL_11:
          if (v9 != 16)
          {
            goto LABEL_16;
          }

          if (v8 == 2)
          {
            v16 = *(v4 + 24);
            v4 = *(v4 + 16);
            v14 = v16;
            goto LABEL_20;
          }

          if (v8 != 1)
          {
            v18 = v4;
            v19 = v5;
            v20 = BYTE2(v5);
            v21 = BYTE3(v5);
            v22 = BYTE4(v5);
            v23 = BYTE5(v5);
            sub_1B21CC954(&v18, &v18 + BYTE6(v5));
            goto LABEL_22;
          }

          v13 = v4 >> 32;
          if (v4 >> 32 >= v4)
          {
            v4 = v4;
            v14 = v13;
LABEL_20:
            sub_1B21CCF64(v4, v14);
LABEL_22:
            v17 = sub_1B2251EE0();
            return sub_1B21117B4(a2, 0, 1, v17);
          }
        }

        __break(1u);
        return result;
      case 2uLL:
        v11 = *(v4 + 16);
        v10 = *(v4 + 24);
        v12 = __OFSUB__(v10, v11);
        v9 = v10 - v11;
        if (!v12)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      case 3uLL:
        goto LABEL_16;
      default:
        v9 = BYTE6(v5);
        goto LABEL_11;
    }
  }

  if (v6 == 2)
  {

    return sub_1B2251EA0();
  }

LABEL_16:
  v15 = sub_1B2251EE0();

  return sub_1B21117B4(a2, 1, 1, v15);
}

unsigned __int8 *sub_1B21CC954(unsigned __int8 *result, uint64_t a2)
{
  if (result && (a2 - result + 15) >= 0x1F)
  {
    return sub_1B2251EC0();
  }

  __break(1u);
  return result;
}

const unsigned __int8 *UUID.init(sqliteStatement:index:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B21619D8(&qword_1EB7A1568, &qword_1B2258E20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1B2251EE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = sub_1B2115B7C();
  v14 = sqlite3_column_type(v12, v13);
  if (v14 == 4)
  {
    v18 = sub_1B2115B7C();
    if (sqlite3_column_bytes(v18, v19) != 16)
    {
      goto LABEL_9;
    }

    v20 = sub_1B2115B7C();
    if (!sqlite3_column_blob(v20, v21))
    {
      goto LABEL_9;
    }

    sub_1B2251EC0();
    (*(v6 + 32))(a1, v11, v5);
    goto LABEL_11;
  }

  if (v14 != 3)
  {
LABEL_9:
    v22 = 1;
    return sub_1B21117B4(a1, v22, 1, v5);
  }

  v15 = sub_1B2115B7C();
  result = sqlite3_column_text(v15, v16);
  if (result)
  {
    sub_1B2252400();
    sub_1B2251EA0();

    if (sub_1B2122A98(v4, 1, v5) == 1)
    {
      sub_1B21CCFF8(v4);
      goto LABEL_9;
    }

    v23 = *(v6 + 32);
    v23(v8, v4, v5);
    sub_1B2251ED0();
    sub_1B2251EC0();
    (*(v6 + 8))(v8, v5);
    v23(a1, v11, v5);
LABEL_11:
    v22 = 0;
    return sub_1B21117B4(a1, v22, 1, v5);
  }

  __break(1u);
  return result;
}

const unsigned __int8 *sub_1B21CCC94@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1B21619D8(&qword_1EB7A1568, &qword_1B2258E20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = sqlite3_column_type(a1, a2);
  if (v18 == 4)
  {
    if (sqlite3_column_bytes(a1, a2) != 16 || !sqlite3_column_blob(a1, a2))
    {
      goto LABEL_9;
    }

    sub_1B2251EC0();
    (*(v11 + 32))(a4, v17, a3);
    goto LABEL_11;
  }

  if (v18 != 3)
  {
LABEL_9:
    v20 = 1;
    return sub_1B21117B4(a4, v20, 1, a3);
  }

  result = sqlite3_column_text(a1, a2);
  if (result)
  {
    sub_1B2252400();
    sub_1B2251EA0();

    if (sub_1B2122A98(v10, 1, a3) == 1)
    {
      sub_1B21CCFF8(v10);
      goto LABEL_9;
    }

    v21 = *(v11 + 32);
    v21(v14, v10, a3);
    sub_1B2251ED0();
    sub_1B2251EC0();
    (*(v11 + 8))(v14, a3);
    v21(a4, v17, a3);
LABEL_11:
    v20 = 0;
    return sub_1B21117B4(a4, v20, 1, a3);
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1B21CCF64(uint64_t a1, uint64_t a2)
{
  result = sub_1B2251BC0();
  v5 = result;
  if (result)
  {
    result = sub_1B2251BE0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1B2251BD0();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v5[v9];
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1B21CC954(v5, v11);
}

uint64_t sub_1B21CCFF8(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1568, &qword_1B2258E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B21CD07C(__n128 a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 16))
  {
    if (v3 != 1)
    {
      v6 = *(v1 + 24);
      v7 = *(v1 + 8);
      v10[3] = &type metadata for DatabaseValueDecodingContainer;
      v10[4] = sub_1B21CE3F4();
      v8 = swift_allocObject();
      v10[0] = v8;
      *(v8 + 16) = v2;
      *(v8 + 24) = v7;
      *(v8 + 32) = v3;
      *(v8 + 40) = v6;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(v2, v7, v3);

      sub_1B2252D20();
      sub_1B2113208(v10);
      swift_willThrow();
      return v5 & 1;
    }

    v4 = (v2 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  }

  else
  {
    v4 = v2 == 0;
  }

  v5 = !v4;
  return v5 & 1;
}

uint64_t sub_1B21CD19C(__n128 a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = *v1;
  if (!*(v1 + 16))
  {
LABEL_13:
    if (result == result)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 == 1 && v3 >= -9.22337204e18 && v3 < 9.22337204e18)
  {
    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        result = v3;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v3, v2, v4);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

uint64_t sub_1B21CD2F0(__n128 a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = *v1;
  if (!*(v1 + 16))
  {
LABEL_13:
    if (result == result)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 == 1 && v3 >= -9.22337204e18 && v3 < 9.22337204e18)
  {
    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        result = v3;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v3, v2, v4);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

uint64_t sub_1B21CD444(__n128 a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = *v1;
  if (!*(v1 + 16))
  {
LABEL_13:
    if (result == result)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 == 1 && v3 >= -9.22337204e18 && v3 < 9.22337204e18)
  {
    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        result = v3;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v3, v2, v4);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

unint64_t sub_1B21CD598(__n128 a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = *v1;
  if (!*(v1 + 16))
  {
LABEL_13:
    if (result <= 0xFF)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 == 1 && v3 >= -9.22337204e18 && v3 < 9.22337204e18)
  {
    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        result = v3;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v3, v2, v4);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

unint64_t sub_1B21CD6EC(__n128 a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = *v1;
  if (!*(v1 + 16))
  {
LABEL_13:
    if (!(result >> 16))
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 == 1 && v3 >= -9.22337204e18 && v3 < 9.22337204e18)
  {
    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        result = v3;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v3, v2, v4);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

unint64_t sub_1B21CD840(__n128 a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = *v1;
  if (!*(v1 + 16))
  {
LABEL_13:
    if (!HIDWORD(result))
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 == 1 && v3 >= -9.22337204e18 && v3 < 9.22337204e18)
  {
    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        result = v3;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v10[3] = &type metadata for DatabaseValueDecodingContainer;
  v10[4] = sub_1B21CE3F4();
  v9 = swift_allocObject();
  v10[0] = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v3, v2, v4);

  sub_1B2252D20();
  sub_1B2113208(v10);
  return swift_willThrow();
}

uint64_t sub_1B21CD994(__n128 a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = *v1;
  if (!*(v1 + 16))
  {
LABEL_13:
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v4 == 1 && v3 >= -9.22337204e18 && v3 < 9.22337204e18)
  {
    if ((~*&v3 & 0x7FF0000000000000) != 0)
    {
      if (v3 > -9.22337204e18)
      {
        result = v3;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_14:
  v19[3] = &type metadata for DatabaseValueDecodingContainer;
  v19[4] = sub_1B21CE3F4();
  sub_1B2113B74();
  v9 = swift_allocObject();
  LOBYTE(v19[0]) = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_1B2252D40();
  swift_allocError();
  sub_1B2113A20(*&v3, v2, v4);

  sub_1B2115188(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19[0]);
  sub_1B2252D20();
  sub_1B2113208(v19);
  return swift_willThrow();
}

void sub_1B21CDAC0(__n128 a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 16))
  {
    if (v3 != 1)
    {
      v4 = *(v1 + 24);
      v5 = *(v1 + 8);
      v7[3] = &type metadata for DatabaseValueDecodingContainer;
      v7[4] = sub_1B21CE3F4();
      v6 = swift_allocObject();
      v7[0] = v6;
      *(v6 + 16) = v2;
      *(v6 + 24) = v5;
      *(v6 + 32) = v3;
      *(v6 + 40) = v4;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(v2, v5, v3);

      sub_1B2252D20();
      sub_1B2113208(v7);
      swift_willThrow();
    }
  }
}

void sub_1B21CDBDC(__n128 a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 16))
  {
    if (v3 != 1)
    {
      v4 = *(v1 + 24);
      v5 = *(v1 + 8);
      v7[3] = &type metadata for DatabaseValueDecodingContainer;
      v7[4] = sub_1B21CE3F4();
      v6 = swift_allocObject();
      v7[0] = v6;
      *(v6 + 16) = v2;
      *(v6 + 24) = v5;
      *(v6 + 32) = v3;
      *(v6 + 40) = v4;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(v2, v5, v3);

      sub_1B2252D20();
      sub_1B2113208(v7);
      swift_willThrow();
    }
  }
}

uint64_t sub_1B21CDCF4()
{
  v1 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (v4 == 3)
  {
    sub_1B2113A20(*v0, *(v0 + 8), 3);
    sub_1B22522E0();
    v6 = sub_1B22522C0();
    v8 = v7;
    sub_1B2113A44(v3, v2, 3);
    if (v8)
    {
      return v6;
    }

LABEL_6:
    v11[3] = &type metadata for DatabaseValueDecodingContainer;
    v11[4] = sub_1B21CE3F4();
    v9 = swift_allocObject();
    v11[0] = v9;
    *(v9 + 16) = v3;
    *(v9 + 24) = v2;
    *(v9 + 32) = v4;
    *(v9 + 40) = v5;
    sub_1B2252D40();
    swift_allocError();
    sub_1B2113A20(v3, v2, v4);

    sub_1B2252D20();
    sub_1B2113208(v11);
    swift_willThrow();
    return v3;
  }

  if (v4 != 2)
  {
    goto LABEL_6;
  }

  sub_1B2113A20(*v0, *(v0 + 8), 2);
  return v3;
}

uint64_t sub_1B21CDEB4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v7 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = sub_1B212FED0(a1, a1, &protocol descriptor for DatabaseValueConvertible);
  if (v10)
  {
    v12 = v10;
    v13 = v11;
    v22[1] = a3;
    v23 = v9;
    v26 = v7;
    v27 = v6;
    v28 = v8;
    v14 = *(v11 + 32);
    v24 = v4;
    v25 = v14;
    v35 = v22;
    v22[0] = sub_1B2252B00();
    v15 = *(v22[0] - 8);
    MEMORY[0x1EEE9AC00](v22[0]);
    v17 = v22 - v16;
    sub_1B2113A20(v7, v6, v8);
    v25(&v26, v12, v13);
    sub_1B2113A44(v26, v27, v28);
    if (sub_1B2122A98(v17, 1, v12) == 1)
    {
      (*(v15 + 8))(v17, v22[0]);
      v33 = &type metadata for DatabaseValueDecodingContainer;
      v34 = sub_1B21CE3F4();
      v18 = swift_allocObject();
      *&v32 = v18;
      *(v18 + 16) = v7;
      *(v18 + 24) = v6;
      *(v18 + 32) = v8;
      *(v18 + 40) = v23;
      sub_1B2252D40();
      swift_allocError();
      sub_1B2113A20(v7, v6, v8);

      sub_1B2252D20();
      sub_1B2113208(&v32);
      return swift_willThrow();
    }

    else
    {
      v30 = v12;
      v31 = v13;
      v21 = sub_1B212FF14(&v29);
      (*(*(v12 - 8) + 32))(v21, v17, v12);
      sub_1B21217FC(&v29, &v32);
      sub_1B21217FC(&v32, &v29);
      sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
      return swift_dynamicCast();
    }
  }

  else
  {
    v33 = &type metadata for DatabaseValueDecoder;
    v34 = sub_1B21552B8();
    v20 = swift_allocObject();
    *&v32 = v20;
    *(v20 + 16) = v7;
    *(v20 + 24) = v6;
    *(v20 + 32) = v8;
    *(v20 + 40) = v9;
    sub_1B2113A20(v7, v6, v8);

    return sub_1B22527E0();
  }
}

uint64_t sub_1B21CE338@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 24);
  a1[3] = &type metadata for DatabaseValueDecodingContainer;
  v7 = *(v2 + 16);
  a1[4] = sub_1B21CE3F4();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  sub_1B2113A20(v4, v5, v7);
}

unint64_t sub_1B21CE3F4()
{
  result = qword_1EB7A2258;
  if (!qword_1EB7A2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2258);
  }

  return result;
}

uint64_t sub_1B21CE448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1B21CE488(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1B21CE520@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0xA2uLL);
  sub_1B21D0350(__dst);
  memcpy(__src, __dst, 0xA3uLL);
  sub_1B214D464(__src);
  memcpy(a1, __src, 0xB8uLL);
  return sub_1B214CFE0(v1, &v4);
}

uint64_t sub_1B21CE594@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  LOBYTE(v9[2]) = a3;
  sub_1B2127D7C(v9);
  memcpy(__dst, v9, 0xA3uLL);
  sub_1B214D464(__dst);
  memcpy(a4, __dst, 0xB8uLL);
  return sub_1B2113A20(a1, a2, a3);
}

uint64_t sub_1B21CE620@<X0>(void *a1@<X8>)
{
  sub_1B2111ADC();
  memcpy(v3, v4, v5);
  sub_1B214D464(__src);
  memcpy(a1, __src, 0xB8uLL);
  return sub_1B2127DC0(v1, v7);
}

void *sub_1B21CE678@<X0>(void *a1@<X8>)
{
  __src[0] = sub_1B21B6C84();
  __src[1] = v2;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B214D464(__dst);
  return memcpy(a1, __dst, 0xB8uLL);
}

uint64_t sub_1B21CE700@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0xA2uLL);
  sub_1B21D0350(__dst);
  memcpy(__src, __dst, 0xA3uLL);
  sub_1B214D7CC(__src);
  memcpy(a1, __src, 0xA3uLL);
  return sub_1B214CFE0(v1, &v4);
}

uint64_t sub_1B21CE774@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v9[0] = a1;
  v9[1] = a2;
  LOBYTE(v9[2]) = a3;
  sub_1B2127D7C(v9);
  memcpy(__dst, v9, 0xA3uLL);
  sub_1B214D7CC(__dst);
  memcpy(a4, __dst, 0xA3uLL);
  return sub_1B2113A20(a1, a2, a3);
}

uint64_t sub_1B21CE800@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0xA3uLL);
  sub_1B214D7CC(__dst);
  memcpy(a1, __dst, 0xA3uLL);
  return sub_1B2127DC0(v1, v4);
}

void *sub_1B21CE85C@<X0>(void *a1@<X8>)
{
  __src[0] = sub_1B21B6C84();
  __src[1] = v2;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B214D7CC(__dst);
  return memcpy(a1, __dst, 0xA3uLL);
}

uint64_t sub_1B21CE8F0()
{
  memcpy(__dst, v0, 0xA3uLL);
  v1 = 1;
  v2 = 200;
  v3 = 32;
  v4 = 16;
  switch(sub_1B2127E1C(__dst))
  {
    case 3u:
      v7 = sub_1B2127E38(__dst);
      goto LABEL_11;
    case 6u:
    case 0xFu:
    case 0x10u:
    case 0x12u:
      goto LABEL_2;
    case 7u:
      goto LABEL_4;
    case 9u:
      v7 = sub_1B2127E38(__dst) + 40;
LABEL_11:
      v8 = *v7;
      v9 = *(*v7 + 16);

      v11 = -1;
      v12 = 32;
      while (2)
      {
        if (v11 - v9 == -1)
        {

          goto LABEL_28;
        }

        if (++v11 < *(v8 + 16))
        {
          v13 = v12 + 168;
          memcpy(v35, (v8 + v12), 0xA3uLL);
          result = sub_1B21CE8F0();
          v12 = v13;
          if (result)
          {

            goto LABEL_19;
          }

          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_31;
    case 0xBu:
      v14 = *sub_1B2127E38(__dst);
      memcpy(v35, (v14 + 16), 0xA3uLL);
      memcpy(v30, (v14 + 184), 0xA2uLL);
      if (sub_1B21CE8F0())
      {
        goto LABEL_19;
      }

      memcpy(v32, v30, 0xA2uLL);
      if (sub_1B214CB20(v32))
      {
        sub_1B214CB10(v32);
        goto LABEL_28;
      }

      v15 = sub_1B214CB10(v32);
      v16 = *v15;
      v17 = *(*v15 + 16);
      v25 = sub_1B21D09F8(v15, v18, v19, v20, v21, v22, v23, v24, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7], v30[8], v30[9], v30[10], v30[11], v30[12], v30[13], v30[14], v30[15], v30[16], v30[17], v30[18], v30[19], v30[20], v31[0]);
      memcpy(v25, v26, 0xA2uLL);
      sub_1B214CB10(v31);
      v27 = (v16 + 32);

      v28 = -1;
      break;
    case 0xCu:
      v4 = 40;
LABEL_2:
      v5 = sub_1B2127E38(__dst);
      memcpy(__src, (*v5 + v4), sizeof(__src));
      v1 = sub_1B21CE8F0();
      return v1 & 1;
    case 0xDu:
      v2 = 192;
      v3 = 24;
LABEL_4:
      v6 = *sub_1B2127E38(__dst);
      memcpy(v34, (v6 + v3), sizeof(v34));
      memcpy(v35, (v6 + v2), 0xA3uLL);
      sub_1B2127DC0(v35, v30);
      if (sub_1B21CE8F0())
      {
        sub_1B21356F8(v35);
        goto LABEL_19;
      }

      sub_1B212B4CC(v30);
      v1 = sub_1B21CE8F0();
      sub_1B21356F8(v35);
      return v1 & 1;
    case 0x11u:
      if (*(sub_1B2127E38(__dst) + 16))
      {
        return v1 & 1;
      }

      goto LABEL_28;
    case 0x15u:
      return v1 & 1;
    default:
      goto LABEL_28;
  }

  while (1)
  {
    if (v28 - v17 == -1)
    {
      sub_1B214D4C8(v30);
LABEL_28:
      v1 = 0;
      return v1 & 1;
    }

    if (++v28 >= *(v16 + 16))
    {
      break;
    }

    memcpy(v35, v27, 0xA3uLL);
    result = sub_1B21CE8F0();
    v27 += 168;
    if (result)
    {
      sub_1B214D4C8(v30);
LABEL_19:
      v1 = 1;
      return v1 & 1;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B21CEBD4()
{
  memcpy(__dst, v0, 0xA2uLL);
  v1 = sub_1B21D0350(__dst);
  sub_1B211A2B4(v1, __dst);
  return sub_1B214CFE0(v0, v3);
}

uint64_t Sequence<>.joined(operator:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1B211F69C();
  v21[0] = v8;
  v21[1] = v9;
  v22 = *(v10 + 16);
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v20[6] = v14;
  v20[7] = v15;
  v20[8] = v16;
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = swift_getKeyPath();
  v18 = sub_1B2150D28(sub_1B2151328, v20, a1, &type metadata for SQLExpression, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v17);

  sub_1B213B4BC(v21, v18, a4);
}

void sub_1B21CED88()
{
  qword_1EB7A2260 = 43;
  *algn_1EB7A2268 = 0xE100000000000000;
  qword_1EB7A2270 = 0;
  unk_1EB7A2278 = 0;
  unk_1EB7A227F = 0;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.add.getter()
{
  if (qword_1EB7A0D48 != -1)
  {
    swift_once();
  }

  sub_1B21157D8(&qword_1EB7A2260);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

void sub_1B21CEE20()
{
  qword_1EB7A2288 = 42;
  unk_1EB7A2290 = 0xE100000000000000;
  qword_1EB7A2298 = 1;
  unk_1EB7A22A0 = 0;
  unk_1EB7A22A7 = 0;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.multiply.getter()
{
  if (qword_1EB7A0D50 != -1)
  {
    swift_once();
  }

  sub_1B21157D8(&qword_1EB7A2288);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

double sub_1B21CEEBC()
{
  *&xmmword_1ED85DC88 = 4476481;
  *(&xmmword_1ED85DC88 + 1) = 0xE300000000000000;
  *&result = 1;
  xmmword_1ED85DC98 = xmmword_1B2259350;
  word_1ED85DCA8 = 256;
  byte_1ED85DCAA = 0;
  return result;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.and.getter()
{
  if (qword_1ED85DC80 != -1)
  {
    sub_1B2112AD4();
    swift_once();
  }

  sub_1B21157D8(&xmmword_1ED85DC88);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

void sub_1B21CEF5C()
{
  *&xmmword_1ED85D4F0 = 21071;
  *(&xmmword_1ED85D4F0 + 1) = 0xE200000000000000;
  xmmword_1ED85D500 = 0uLL;
  LOBYTE(word_1ED85D510) = 0;
  *(&word_1ED85D510 + 1) = 1;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.or.getter()
{
  if (qword_1ED85D4E8 != -1)
  {
    sub_1B21175B4();
    swift_once();
  }

  sub_1B21157D8(&xmmword_1ED85D4F0);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

double sub_1B21CEFF0()
{
  qword_1EB7A0C40 = 31868;
  *algn_1EB7A0C48 = 0xE200000000000000;
  result = 0.0;
  xmmword_1EB7A0C50 = xmmword_1B225C420;
  word_1EB7A0C60 = 258;
  byte_1EB7A0C62 = 1;
  return result;
}

uint64_t static SQLExpression.AssociativeBinaryOperator.concat.getter()
{
  if (qword_1EB7A0C38 != -1)
  {
    swift_once();
  }

  sub_1B21157D8(&qword_1EB7A0C40);
  v0 = sub_1B2114748();

  return sub_1B2113A20(v0, v1, v2);
}

uint64_t SQLExpression.AssociativeBinaryOperator.hash(into:)(uint64_t a1)
{
  sub_1B2252370();
  DatabaseValue.hash(into:)(a1);
  sub_1B2253440();
  return sub_1B2253440();
}

uint64_t SQLExpression.AssociativeBinaryOperator.hashValue.getter()
{
  sub_1B2253420();
  sub_1B2252370();
  DatabaseValue.hash(into:)(v1);
  sub_1B2253440();
  sub_1B2253440();
  return sub_1B2253470();
}

uint64_t sub_1B21CF1C4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 33);
  v5 = *(v1 + 34);
  v7[9] = *v1;
  v7[10] = v2;
  v8 = *(v1 + 16);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_1B2253420();
  SQLExpression.AssociativeBinaryOperator.hash(into:)(v7);
  return sub_1B2253470();
}

uint64_t sub_1B21CF230(uint64_t a1, uint64_t a2)
{
  sub_1B2253420();
  sub_1B2252370();
  return sub_1B2253470();
}

unint64_t sub_1B21CF29C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B2252F40();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B21CF2E8(char a1)
{
  result = 61;
  switch(a1)
  {
    case 1:
      result = 15932;
      break;
    case 2:
      result = 21321;
      break;
    case 3:
      result = 0x544F4E205349;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B21CF368@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B21CF29C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B21CF398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B21CF2E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B21CF3C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (v9 = sub_1B22531F0(), v10 = 0, (v9 & 1) != 0))
  {
    v10 = a3 ^ a6 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1B21CF448(uint64_t a1, uint64_t a2, char a3)
{
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253440();
  return sub_1B2253470();
}

uint64_t sub_1B21CF4C8(uint64_t a1)
{
  sub_1B2253420();
  sub_1B2252370();
  sub_1B2253440();
  return sub_1B2253470();
}

uint64_t sub_1B21CF544()
{
  result = sqlite3_libversion_number();
  byte_1ED8618E0 = result > 3014999;
  return result;
}

uint64_t sub_1B21CF574@<X0>(char a4@<W3>, uint64_t x8_0@<X8>)
{
  sub_1B21D0950();
  memcpy(v7, v8, v9);
  sub_1B212D6F0(v26);
  sub_1B212E2E0(v27);
  sub_1B21D0950();
  memcpy(v10, v11, v12);
  if (sub_1B2127E1C(v28) == 16)
  {
    v13 = *sub_1B2127E38(v28);
    memcpy(__dst, (v13 + 16), sizeof(__dst));
    v14 = __dst[21];
    v15 = __dst[22];
    memcpy(v23, (v13 + 16), 0xA3uLL);
    sub_1B214CC30(v22);
    sub_1B212D6D8(v21);
    sub_1B2122B00(__dst, v20, &qword_1EB7A22B8, &qword_1B225D308);
    sub_1B21CF574(v23, v22, v21, a4 & 1);
    v23[0] = v14;
    v23[1] = v15;
    sub_1B21CF728(v23, x8_0);
    sub_1B21356F8(__dst);
    memcpy(v20, v19, 0xA3uLL);
    sub_1B21356F8(v20);
  }

  else
  {
    v17 = swift_allocObject();
    memcpy(v17 + 16, __src, 0xA3uLL);
    sub_1B214CC30(v17 + 184);
    sub_1B212D6D8(v17 + 352);
    v17[515] = a4 & 1;
    __dst[0] = v17;
    v18 = sub_1B21D0394(__dst);
    sub_1B211A2B4(v18, __dst);
    sub_1B2127DC0(__src, v20);
    sub_1B2127DC0(v26, v20);
    return sub_1B2127DC0(v27, v20);
  }
}

uint64_t sub_1B21CF728@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1B212D6F0(v51);
  v5 = *a1;
  v4 = a1[1];
  sub_1B212D6F0(v52);
  v6 = sub_1B2127E1C(v52);
  if (v6 == 9)
  {
    sub_1B2127E38(v52);
    sub_1B211F69C();
    v20 = *(v19 + 40);
    v44[0] = v21;
    v44[1] = v22;
    v45 = *(v19 + 16);
    v46 = v23;
    v47 = v24;
    v48 = v25;
    v26 = *(v20 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      v43 = MEMORY[0x1E69E7CC0];
      sub_1B213CA68();
      v27 = v43;
      v28 = v20 + 32;
      do
      {
        sub_1B21D0950();
        memcpy(v29, v30, v31);
        sub_1B21D0950();
        memcpy(v32, v33, v34);
        v40[0] = v5;
        v40[1] = v4;
        sub_1B2127DC0(v42, v50);
        sub_1B21CF728(v40, v50);
        memcpy(__src, v41, 0xA3uLL);
        sub_1B21356F8(__src);
        v43 = v27;
        v36 = v27[2];
        v35 = v27[3];
        if (v36 >= v35 >> 1)
        {
          sub_1B211156C(v35);
          sub_1B213CA68();
          v27 = v43;
        }

        v27[2] = v36 + 1;
        memcpy(&v27[21 * v36 + 4], v50, 0xA3uLL);
        v28 += 168;
        --v26;
      }

      while (v26);
    }

    sub_1B213B4BC(v44, v27, a2);
  }

  else if (v6 == 11)
  {
    v7 = *sub_1B2127E38(v52);
    sub_1B211D694();
    memcpy(v8, v9, v10);
    sub_1B2114090();
    memcpy(v11, v12, v13);
    v14 = *(v7 + 346);
    v41[0] = v5;
    v41[1] = v4;
    sub_1B21CF728(v41, __src);
    sub_1B21D0994();
    v15 = swift_allocObject();
    v16 = sub_1B211E4F4(v15);
    memcpy(v16, __src, 0xA3uLL);
    memcpy((v7 + 184), v42, 0xA2uLL);
    *(v7 + 346) = v14;
    v50[0] = v7;
    v17 = sub_1B214C468(v50);
    sub_1B211A2B4(v17, v50);
    return sub_1B214CB2C(v42, v41);
  }

  else
  {
    v37 = swift_allocObject();
    v38 = sub_1B211E4F4(v37);
    memcpy(v38, v51, 0xA3uLL);
    a1[23] = v5;
    a1[24] = v4;
    v50[0] = a1;
    v39 = sub_1B21D0574(v50);
    sub_1B211A2B4(v39, v50);
    sub_1B2127DC0(v51, __src);
  }
}

uint64_t sub_1B21CF9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, a3, 0xA3uLL);
  sub_1B212D6F0(v102);
  sub_1B21D0950();
  memcpy(v8, v9, v10);
  if (sub_1B2127E1C(v103) == 16)
  {
    v11 = sub_1B2127E38(v103);
    sub_1B2135370(v11);
    v12 = v98;
    v13 = v99;
    memcpy(v100, (a3 + 16), 0xA3uLL);
    v14 = sub_1B212D660(v96);
    sub_1B215433C(v14, v15, &qword_1EB7A22B8, &qword_1B225D308, v16, v17, v18, v19, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94[0]);
    v20 = sub_1B2112864();
    sub_1B21CF9AC(v20, v21, v22, v23);
    v100[0] = v12;
    v100[1] = v13;
    sub_1B21CF728(v100, a4);
    sub_1B21356F8(v97);
    v24 = v94;
    v25 = v95;
LABEL_5:
    memcpy(v24, v25, 0xA3uLL);
    sub_1B21356F8(v94);
  }

  sub_1B212D660(v100);
  if (sub_1B2127E1C(v100) == 16)
  {
    v26 = sub_1B2127E38(v100);
    sub_1B2135370(v26);
    v27 = v98;
    v28 = v99;
    sub_1B2146FF4(v96);
    v29 = memcpy(v95, (a3 + 16), 0xA3uLL);
    sub_1B215433C(v29, v30, &qword_1EB7A22B8, &qword_1B225D308, v31, v32, v33, v34, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94[0]);
    v35 = sub_1B2112864();
    sub_1B21CF9AC(v35, v36, v37, v38);
    v96[0] = v27;
    v96[1] = v28;
    sub_1B21CF728(v96, a4);
    v39 = sub_1B21356F8(v97);
    v24 = sub_1B21D09F8(v39, v40, v41, v42, v43, v44, v45, v46, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v94[0]);
    goto LABEL_5;
  }

  v48 = swift_allocObject();
  v48[2] = a1;
  v48[3] = a2;
  sub_1B2146FF4(v48 + 4);
  sub_1B212D660(v48 + 25);
  v97[0] = v48;
  v49 = sub_1B21D05B8(v97);
  sub_1B211A2B4(v49, v97);

  sub_1B2127DC0(__dst, v94);
  return sub_1B2127DC0(v102, v94);
}

uint64_t SQLSpecificExpressible.collating(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  (*(*(a3 + 8) + 8))(__src, a2);
  v8[0] = v5;
  v8[1] = v6;
  sub_1B21CF728(v8, a4);
  memcpy(__dst, __src, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

void *sub_1B21CFCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + a3 - 8) + 8);
  v4 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = v4(v8, AssociatedTypeWitness, v3);
  return sub_1B211A2B4(v6, v8);
}

uint64_t Sequence<>.joined(operator:)@<X0>(uint64_t a1@<X8>)
{
  sub_1B211F69C();
  v13[0] = v2;
  v13[1] = v3;
  v14 = *(v4 + 16);
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v11 = sub_1B2150D28(sub_1B21CFE1C, 0, v8, &type metadata for SQLExpression, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  sub_1B213B4BC(v13, v11, a1);
}

void *sub_1B21CFE1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_1B21139A0(a1, v4);
  (*(*(v3 + 8) + 8))(__src, v4);
  return memcpy(a2, __src, 0xA3uLL);
}

void *sub_1B21CFEF4@<X0>(void (*a1)(_BYTE *)@<X2>, void *a2@<X8>)
{
  sub_1B2124228();
  v4();
  a1(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t SQLSpecificExpressible.forKey(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1B21139A0(a1, a1[3]);
  v3 = sub_1B22534D0();
  SQLSpecificExpressible.forKey(_:)(v3, v4, a2);
}

uint64_t SQLSpecificExpressible.collating(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 + 8) + 8))(__src, a2);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9[0] = v6;
  v9[1] = v7;

  sub_1B21CF728(v9, a4);

  memcpy(__dst, __src, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

unint64_t sub_1B21D0080()
{
  result = qword_1EB7A22B0;
  if (!qword_1EB7A22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A22B0);
  }

  return result;
}

__n128 sub_1B21D00D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B21D00E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1B21D0128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1B21D0190(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 162) = 0;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 163) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 2 * -a2;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 147) = 0u;
      return result;
    }

    *(a1 + 163) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21D0228(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 7;
  *result = v2;
  return result;
}

void sub_1B21D0244(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x15)
  {
    v4 = *(a1 + 104) & 1;
    v3 = (*(a1 + 160) | (*(a1 + 162) << 16)) & 0x181FF | (a2 << 19);
    *(a1 + 64) &= 1uLL;
    *(a1 + 104) = v4;
  }

  else
  {
    *a1 = a2 - 21;
    bzero((a1 + 8), 0x98uLL);
    v3 = 11010048;
  }

  *(a1 + 160) = v3;
  *(a1 + 162) = BYTE2(v3);
}

uint64_t sub_1B21D0350(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x200000u) >> 16;
  return result;
}

uint64_t sub_1B21D0394(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x300000u) >> 16;
  return result;
}

uint64_t sub_1B21D03D8(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x780000u) >> 16;
  return result;
}

uint64_t sub_1B21D041C(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0xA00000u) >> 16;
  return result;
}

uint64_t sub_1B21D0460(uint64_t a1)
{
  sub_1B2114F84();

  return swift_deallocObject();
}

uint64_t sub_1B21D04A8(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x900000u) >> 16;
  return result;
}

uint64_t sub_1B21D04EC(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x500000u) >> 16;
  return result;
}

uint64_t sub_1B21D0530(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x400000u) >> 16;
  return result;
}

uint64_t sub_1B21D0574(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x800000u) >> 16;
  return result;
}

uint64_t sub_1B21D05B8(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x380000u) >> 16;
  return result;
}

uint64_t sub_1B21D05FC(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x980000u) >> 16;
  return result;
}

uint64_t sub_1B21D0640(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x700000u) >> 16;
  return result;
}

uint64_t sub_1B21D0684(uint64_t a1)
{
  v2 = *(a1 + 160);
  result = a1 + 160;
  v3 = v2 | (*(result + 2) << 16);
  v4 = *(result - 56) & 1;
  *(result - 96) &= 1uLL;
  *(result - 56) = v4;
  *result = v3 & 0x81FF;
  *(result + 2) = (v3 & 0x1FFFF | 0x600000u) >> 16;
  return result;
}

_BYTE *sub_1B21D06C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B21D07A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B21D07E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B21D0848()
{
  result = qword_1EB7A22D8;
  if (!qword_1EB7A22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A22D8);
  }

  return result;
}

unint64_t sub_1B21D08A0()
{
  result = qword_1EB7A22E0;
  if (!qword_1EB7A22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A22E0);
  }

  return result;
}

unint64_t sub_1B21D08F8()
{
  result = qword_1EB7A22E8;
  if (!qword_1EB7A22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A22E8);
  }

  return result;
}

void sub_1B21D0968()
{

  JUMPOUT(0x1B2741EB0);
}

void *sub_1B21D0A04()
{

  return sub_1B213F348(v0, v1, 0);
}

void *sub_1B21D0A24(uint64_t *a1)
{
  v2 = *a1;

  return memcpy(&STACK[0x2B8], (v2 + 16), 0xB8uLL);
}

uint64_t sub_1B21D0A44()
{

  return sub_1B2127DC0(v0 + 2840, v0 + 1920);
}

void *sub_1B21D0A5C(void *a1)
{

  return memcpy(a1, &STACK[0x2C0], 0xA3uLL);
}

void *sub_1B21D0A74(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xA3uLL);
}

uint64_t sub_1B21D0A8C(uint64_t a1)
{

  return sub_1B212AC5C(a1, v1, v2);
}

void NSDecimal.databaseValue.getter(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = a1;
  v25 = a4;
  v7 = HIDWORD(a1);
  v8 = HIWORD(a1);
  v9 = a2 >> 16;
  v10 = HIDWORD(a2);
  v23 = HIWORD(a2);
  v24 = HIWORD(a3);
  v11 = sub_1B2251F10();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(MEMORY[0x1E696AB90]);
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v5;
  v30 = v9;
  v31 = v10;
  v32 = v23;
  v33 = v4;
  v34 = v24;
  v16 = [v15 initWithDecimal_];
  sub_1B2251EF0();
  v17 = sub_1B2251F00();
  (*(v12 + 8))(v14, v11);
  v18 = [v16 descriptionWithLocale_];

  v19 = sub_1B22522A0();
  v21 = v20;

  v22 = v25;
  *v25 = v19;
  v22[1] = v21;
  *(v22 + 16) = 2;
}

uint64_t static NSDecimal.fromDatabaseValue(_:)(uint64_t *a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  v7 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    MEMORY[0x1B27425D0](*a1, v3);
LABEL_9:
    sub_1B21151B0();
    return v6;
  }

  if (v7 != 2)
  {
    if (v7 != 1)
    {
      return 0;
    }

    MEMORY[0x1B27425C0](*a1);
    goto LABEL_9;
  }

  if (qword_1EB7A0D58 != -1)
  {
    sub_1B21175C8(&qword_1EB7A0D58);
  }

  v8 = sub_1B2251F10();
  v9 = sub_1B2156958(v8, qword_1EB7A22F0);
  (*(*(v8 - 8) + 16))(v5, v9, v8);
  sub_1B21117B4(v5, 0, 1, v8);
  sub_1B2252AD0();
  sub_1B21151B0();
  sub_1B21D12D0(v5);
  return v6;
}

uint64_t sub_1B21D0E30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = static NSDecimal.fromDatabaseValue(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 20) = v6 & 1;
  return result;
}

void __swiftcall NSDecimal.init(sqliteStatement:index:)(NSDecimal_optional *__return_ptr retstr, Swift::OpaquePointer sqliteStatement, Swift::Int32 index)
{
  v3 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22[-v4];
  v6 = sub_1B2112864();
  v8 = sqlite3_column_type(v6, v7);
  if (v8 != 3)
  {
    if (v8 == 2)
    {
      v12 = sub_1B2112864();
      v14 = sqlite3_column_double(v12, v13);
      MEMORY[0x1B27425C0](v14);
    }

    else
    {
      if (v8 != 1)
      {
        v15 = 1;
        goto LABEL_14;
      }

      v9 = sub_1B2112864();
      v11 = sqlite3_column_int64(v9, v10);
      MEMORY[0x1B27425D0](v11);
    }

    sub_1B21151B0();
LABEL_7:
    v15 = 0;
LABEL_14:
    v22[12] = v15;
    return;
  }

  v16 = sub_1B2112864();
  if (sqlite3_column_text(v16, v17))
  {
    sub_1B2252400();
    if (qword_1EB7A0D58 != -1)
    {
      sub_1B21175C8(&qword_1EB7A0D58);
    }

    v18 = sub_1B2251F10();
    v19 = sub_1B2156958(v18, qword_1EB7A22F0);
    (*(*(v18 - 8) + 16))(v5, v19, v18);
    v15 = 1;
    sub_1B21117B4(v5, 0, 1, v18);
    sub_1B2252AD0();
    sub_1B21151B0();
    v21 = v20;

    sub_1B21D12D0(v5);
    if ((v21 & 0x100000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t _posixLocale.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB7A0D58 != -1)
  {
    sub_1B21175C8(&qword_1EB7A0D58);
  }

  v2 = sub_1B2251F10();
  v3 = sub_1B2156958(v2, qword_1EB7A22F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B21D10D4@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  result = sqlite3_column_type(a1, a2);
  if (result != 3)
  {
    if (result == 2)
    {
      v13 = sqlite3_column_double(a1, a2);
      result = MEMORY[0x1B27425C0](v13);
    }

    else
    {
      if (result != 1)
      {
        v14 = 0;
        v15 = 0;
        LODWORD(v16) = 0;
        v17 = 1;
        goto LABEL_12;
      }

      v10 = sqlite3_column_int64(a1, a2);
      result = MEMORY[0x1B27425D0](v10);
    }

    v14 = result;
    v15 = v11;
    LODWORD(v16) = v12;
    goto LABEL_7;
  }

  result = sqlite3_column_text(a1, a2);
  if (result)
  {
    sub_1B2252400();
    _posixLocale.getter(v8);
    v18 = sub_1B2251F10();
    v17 = 1;
    sub_1B21117B4(v8, 0, 1, v18);
    v14 = sub_1B2252AD0();
    v15 = v19;
    v16 = v20;

    result = sub_1B21D12D0(v8);
    if ((v16 & 0x100000000) != 0)
    {
      v14 = 0;
      v15 = 0;
      LODWORD(v16) = 0;
      goto LABEL_12;
    }

LABEL_7:
    v17 = 0;
LABEL_12:
    *a3 = v14;
    *(a3 + 8) = v15;
    *(a3 + 16) = v16;
    *(a3 + 20) = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21D1264()
{
  v0 = sub_1B2251F10();
  sub_1B2175CC4(v0, qword_1EB7A22F0);
  sub_1B2156958(v0, qword_1EB7A22F0);
  return sub_1B2251EF0();
}

uint64_t sub_1B21D12D0(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *Database.makeTokenizer(_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = sub_1B219D2C4(v1);
  if (v2)
  {
    return v1;
  }

  v5 = v4;
  v6 = swift_slowAlloc();
  result = swift_slowAlloc();
  v8 = *(v5 + 16);
  if (!v8)
  {
    goto LABEL_10;
  }

  if (!*(v3 + 16))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  v10 = sub_1B2252350();
  v1 = v8(v5, v10 + 32, v9, v6);

  if (!v1)
  {
    v16 = *v9;
    v17 = *v6;
    v18 = *(v6 + 8);
    v19 = *(v6 + 16);
    v20 = sub_1B21FB4C4(v11);
    _s23FTS5RegisteredTokenizerCMa();
    swift_allocObject();
    v1 = sub_1B21D1BB0(v17, v18, v19, v16, v20);
    sub_1B2112AE8();
    sub_1B2112AE8();
    return v1;
  }

  sub_1B21AC298();
  swift_allocError();
  v13 = v12;
  result = sqlite3_errstr(v1);
  if (result)
  {
    v14 = sub_1B22523F0();
    *v13 = v1;
    *(v13 + 8) = v14;
    *(v13 + 16) = v15;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0;
    swift_willThrow();
    sub_1B2112AE8();
    sub_1B2112AE8();
    return v1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B21D15E8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = FTS5Tokenization.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B21D1628@<X0>(_DWORD *a1@<X8>)
{
  result = FTS5Tokenization.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B21D1660()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B21D16CC(uint64_t a1, unint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v10 = *a3;
  v11 = sub_1B221B250(a1, a2);
  sub_1B21D1784(v11 + 32, *(v11 + 16), v7, v10, a4, a5, &v13, &v14);

  if (!v6)
  {
    v11 = sub_1B21B3044(v14);
  }

  return v11;
}

uint64_t sub_1B21D1784@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v21[3] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *a8 = MEMORY[0x1E69E7CC0];
    return result;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_9;
  }

  v14 = a4;
  v16 = result;
  type metadata accessor for TokenizeContext();
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CC0];
  v20 = v17;
  sub_1B21D18E8(&v20, a3, v14, v16, a2, a5, a6, v21);
  if (v8)
  {
    *a7 = v21[0];
  }

  else
  {
    v18 = v20;
    swift_beginAccess();
    v19 = *(v18 + 16);

    *a8 = v19;
  }

  return result;
}

const char *sub_1B21D18E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v16 = a3;
  result = (*(a7 + 8))(a1, &v16, a4, a5, sub_1B21D1BAC, a6);
  if (result)
  {
    v10 = result;
    sub_1B21AC298();
    v11 = swift_allocError();
    v13 = v12;
    result = sqlite3_errstr(v10);
    if (result)
    {
      v14 = sub_1B22523F0();
      *v13 = v10;
      *(v13 + 8) = v14;
      *(v13 + 16) = v15;
      *(v13 + 24) = 0u;
      *(v13 + 40) = 0u;
      *(v13 + 56) = 0;
      result = swift_willThrow();
      *a8 = v11;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B21D19C0(uint64_t *a1, int a2, uint64_t a3, int a4)
{
  v8 = sub_1B22522F0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1B2251D80();
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 1;
  }

  if (a3)
  {
    (*(v10 + 104))(v13, *MEMORY[0x1E6969010], v11);
    v14 = MEMORY[0x1B2741870](a3, a4, v13);
    v16 = v15;
    sub_1B22522E0();
    v17 = sub_1B22522C0();
    v19 = v18;
    sub_1B21267A8(v14, v16);
    if (v19)
    {
      v20 = *a1;
      swift_beginAccess();

      sub_1B21614D8();
      v21 = *(*(v20 + 16) + 16);
      sub_1B21617DC(v21);
      v22 = *(v20 + 16);
      *(v22 + 16) = v21 + 1;
      v23 = v22 + 24 * v21;
      *(v23 + 32) = v17;
      *(v23 + 40) = v19;
      *(v23 + 48) = a2;
      *(v20 + 16) = v22;
      swift_endAccess();
    }
  }

  return 0;
}

void *sub_1B21D1BB0(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = *v5;
  if (!a1)
  {

    sub_1B21AC298();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0xD00000000000001ALL;
    *(v15 + 16) = 0x80000001B226EA10;
LABEL_15:
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    return v6;
  }

  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v24[0] = 0;
  v11 = *(a5 + 16);
  if (v11)
  {
    v22[6] = v8;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B216EEAC(0, v11, 0);
    MEMORY[0x1EEE9AC00](v12);
    v22[2] = a1;
    v22[3] = a4;
    v22[4] = v24;
    v13 = *(v23 + 16);
    if (v13 == v11)
    {

      if (!(*(v23 + 16) >> 31))
      {
        v14 = a1(a4, v23 + 32);
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (v13 < *(a5 + 16))
    {
      v16 = a5 + 16 * v13;
      v17 = *(v16 + 32);
      v18 = *(v16 + 40);

      v14 = sub_1B21D2044(v17, v18, &v23, a5, sub_1B21D23A4, v22);

LABEL_12:

      if (v14)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    __break(1u);
  }

  v14 = (a1)(a4, 0, 0, v24);
  if (v14)
  {
LABEL_13:
    v19 = 0x80000001B226EA30;
    v20 = 0xD00000000000001DLL;
LABEL_14:
    sub_1B21AC298();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = v20;
    *(v15 + 16) = v19;
    goto LABEL_15;
  }

LABEL_8:
  if (!v24[0])
  {
    v14 = 0;
    v19 = 0xED000072657A696ELL;
    v20 = 0x656B6F74206C696ELL;
    goto LABEL_14;
  }

  v6[5] = v24[0];
  return v6;
}

uint64_t sub_1B21D1EB8(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4)
{
  result = *a2;
  v8 = *(*a2 + 16);
  v9 = *(a1 + 16);
  if (v8 == v9)
  {
    a3(&v15);
    return v15;
  }

  if (v8 < v9)
  {
    v12 = a1 + 16 * v8;
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);

    v10 = sub_1B21D2044(v13, v14, a2, a1, a3, a4);

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21D1F74(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr), uint64_t a5)
{
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B216EEAC(0, *(v10 + 16) + 1, 1);
    v10 = *a2;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1B216EEAC(v12 > 1, v13 + 1, 1);
    v10 = *a2;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = a1;
  return sub_1B21D1EB8(a3, a2, a4, a5);
}

uint64_t sub_1B21D2044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr), uint64_t a6)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = v10;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      v7 = sub_1B21D1F74(v8, a3, a4, a5, a6);

      return v7;
    }
  }

  sub_1B2252CC0();

  if (!v6)
  {
    return v11;
  }

  return v7;
}

uint64_t sub_1B21D211C@<X0>(uint64_t result@<X0>, uint64_t (*a2)(uint64_t, uint64_t, unint64_t)@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = *(result + 16);
  if (v5 >> 31)
  {
    __break(1u);
  }

  else
  {
    result = a2(a3, result + 32, v5);
    *a4 = result;
  }

  return result;
}

uint64_t sub_1B21D2164()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v1(*(v0 + 40));
  }

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B21D21A4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 32);
  if (v6)
  {
    return v6(*(v5 + 40), a1, *a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1B21D2200()
{
  result = qword_1EB7A2308;
  if (!qword_1EB7A2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2308);
  }

  return result;
}

unint64_t sub_1B21D2258()
{
  result = qword_1EB7A2310;
  if (!qword_1EB7A2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2310);
  }

  return result;
}

unint64_t sub_1B21D22B0()
{
  result = qword_1EB7A2318;
  if (!qword_1EB7A2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2318);
  }

  return result;
}

unint64_t sub_1B21D2308()
{
  result = qword_1EB7A2320;
  if (!qword_1EB7A2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2320);
  }

  return result;
}

uint64_t sub_1B21D23B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr)@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  result = sub_1B21D1F74(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

GRDBInternal::PersistenceConflictPolicy __swiftcall PersistenceConflictPolicy.init(insert:update:)(GRDBInternal::Database::ConflictResolution insert, GRDBInternal::Database::ConflictResolution update)
{
  v3 = *update;
  *v2 = *insert;
  v2[1] = v3;
  result.conflictResolutionForInsert = insert;
  return result;
}

uint64_t sub_1B21D2410()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = v2;
    }

    else
    {
      v4 = &unk_1F2968FA0;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_1B22546B0;
    *(v4 + 4) = v2;
    *(v4 + 5) = v1;
  }

  v5 = *(v4 + 2);
  if (v5)
  {
    sub_1B21414CC(v2, v1, v3);
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B212DF24();
    result = sub_1B216EB80(v6, v7, v8);
    v10 = 0;
    v11 = v35;
    v12 = (v4 + 40);
    v29 = v4;
    while (v10 < *(v4 + 2))
    {
      v13 = *v12;
      v31[0] = *(v12 - 1);
      v31[1] = v13;

      sub_1B21D67C8(v31, v30, v32);

      v15 = v32[0];
      v14 = v32[1];
      v16 = v33;
      v17 = v34;
      v35 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = sub_1B211156C(v18);
        v28 = v22;
        result = sub_1B216EB80(v21, v19 + 1, 1);
        v16 = v28;
        v11 = v35;
      }

      ++v10;
      *(v11 + 16) = v19 + 1;
      v20 = v11 + 40 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v14;
      *(v20 + 48) = v16;
      *(v20 + 64) = v17;
      v12 += 2;
      v4 = v29;
      if (v5 == v10)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B21414CC(v2, v1, v3);

    v11 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v23 = sub_1B21962F4(v11);
    v25 = *(v30 + 40);
    v24 = *(v30 + 48);
    sub_1B216B0CC();
    v26 = swift_allocError();
    *v27 = v25;
    v27[1] = v24;
    v27[2] = v23;

    return v26;
  }

  return result;
}

void sub_1B21D2610()
{
  sub_1B2111640();
  v2 = v0;
  v4 = v3;
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 72);
  v181 = *v8;
  if (v7)
  {
    if (v7 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = &unk_1F2968FD0;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1B22546B0;
    *(v9 + 4) = v6;
    *(v9 + 5) = v5;
  }

  v10 = *(v9 + 2);
  v193 = v9;
  v194 = v2;
  if (v10)
  {
    v190 = v4;
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B21414CC(v6, v5, v7);
    v201 = v11;
    v9 = v193;
    v12 = sub_1B21143E4();
    sub_1B2114114(v12, v13, v14, v15, v16, v17, v18);
    v19 = 0;
    v20 = v201;
    v21 = v193 + 5;
    while (v19 < *(v9 + 2))
    {
      v22 = *v21;
      v199 = *(v21 - 1);
      v200 = v22;

      sub_1B21D5FC0(&v195);

      v29 = v195;
      v30 = v196;
      v32 = *(v201 + 16);
      v31 = *(v201 + 24);
      if (v32 >= v31 >> 1)
      {
        v34 = sub_1B211D6A0(v31);
        v186 = v35;
        sub_1B2114114(v34, v32 + 1, 1, v36, v37, v38, v39);
        v29 = v186;
      }

      ++v19;
      *(v201 + 16) = v32 + 1;
      v33 = v201 + 24 * v32;
      *(v33 + 32) = v29;
      *(v33 + 48) = v30;
      v21 += 2;
      v9 = v193;
      v2 = v194;
      if (v10 == v19)
      {
        v4 = v190;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
    sub_1B21414CC(v6, v5, v7);
    v20 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v40 = (v20 + 48);
    v41 = *(v20 + 16) + 1;
    do
    {
      if (v41 == 1)
      {

LABEL_68:
        sub_1B2112FDC();
        return;
      }

      if (*v40 != 4)
      {
        break;
      }

      sub_1B211E500();
    }

    while (!v42);
    sub_1B21D3270(v4, v23, v24, v25, v26, v27, v28);
    v44 = sub_1B2140648(v43);
    v45 = v44;
    v46 = *(v2 + 24);
    v47 = *(v46 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    if (v47)
    {
      v187 = v44;
      *&v195 = MEMORY[0x1E69E7CC0];

      v49 = sub_1B2122CE8();
      sub_1B2116B10(v49, v50, v51, v52, v53, v54, v55);
      v48 = v195;
      v56 = v46 + 40;
      do
      {
        v57 = sub_1B2252220();
        v59 = v58;
        *&v195 = v48;
        v61 = *(v48 + 16);
        v60 = *(v48 + 24);
        if (v61 >= v60 >> 1)
        {
          v63 = sub_1B211156C(v60);
          sub_1B2116B10(v63, v61 + 1, 1, v64, v65, v66, v67);
          v48 = v195;
        }

        *(v48 + 16) = v61 + 1;
        v62 = v48 + 16 * v61;
        *(v62 + 32) = v57;
        *(v62 + 40) = v59;
        v56 += 16;
        --v47;
      }

      while (v47);

      v9 = v193;
      v45 = v187;
    }

    v68 = sub_1B21D6D60(v48, v45);

    v73 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      *&v195 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v10, 0, v69, v70, v71, v72);
      v73 = v195;
      v74 = v9 + 40;
      do
      {
        v75 = sub_1B2252220();
        v77 = v76;
        *&v195 = v73;
        v79 = *(v73 + 16);
        v78 = *(v73 + 24);
        if (v79 >= v78 >> 1)
        {
          v81 = sub_1B211156C(v78);
          sub_1B2116B10(v81, v79 + 1, 1, v82, v83, v84, v85);
          v73 = v195;
        }

        *(v73 + 16) = v79 + 1;
        v80 = v73 + 16 * v79;
        *(v80 + 32) = v75;
        *(v80 + 40) = v77;
        v74 += 16;
        --v10;
      }

      while (v10);
    }

    v86 = sub_1B21D6EE8(v73, v68);

    v88 = *(v194 + 40);
    v87 = *(v194 + 48);
    v89 = Database.columns(in:)(v88, v87);
    if (v1)
    {

      goto LABEL_68;
    }

    v90 = v89;
    v179 = v88;
    v180 = v87;
    v91 = *(v89 + 16);
    if (v91)
    {
      *&v195 = MEMORY[0x1E69E7CC0];
      v92 = sub_1B212CE88();
      sub_1B2116B10(v92, v93, v94, v95, v96, v97, v98);
      v99 = v195;
      v100 = (v90 + 64);
      do
      {
        v101 = *(v100 - 1);
        v102 = *v100;
        *&v195 = v99;
        v104 = *(v99 + 16);
        v103 = *(v99 + 24);

        if (v104 >= v103 >> 1)
        {
          sub_1B2116B10(v103 > 1, v104 + 1, 1, v105, v106, v107, v108);
          v99 = v195;
        }

        *(v99 + 16) = v104 + 1;
        v109 = v99 + 16 * v104;
        *(v109 + 32) = v101;
        *(v109 + 40) = v102;
        v100 += 11;
        --v91;
      }

      while (v91);
    }

    else
    {

      v99 = MEMORY[0x1E69E7CC0];
    }

    v110 = 0;
    v184 = *(v99 + 16);
    v188 = v99;
    v182 = v99 + 32;
    v111 = MEMORY[0x1E69E7CC0];
    while (v110 != v184)
    {
      if (v110 >= *(v188 + 16))
      {
        goto LABEL_71;
      }

      v112 = (v182 + 16 * v110);
      v114 = *v112;
      v113 = v112[1];
      ++v110;
      v115 = sub_1B2252220();
      v117 = v116;
      if (*(v86 + 16))
      {
        v118 = v115;
        v183 = v114;
        v191 = v111;
        sub_1B2253420();

        sub_1B2252370();
        v119 = sub_1B2253470();
        v120 = ~(-1 << *(v86 + 32));
        do
        {
          v121 = v119 & v120;
          if (((*(v86 + 56 + (((v119 & v120) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v119 & v120)) & 1) == 0)
          {

            v111 = v191;
            goto LABEL_57;
          }

          v122 = (*(v86 + 48) + 16 * v121);
          if (*v122 == v118 && v122[1] == v117)
          {
            break;
          }

          v124 = sub_1B22531F0();
          v119 = v121 + 1;
        }

        while ((v124 & 1) == 0);

        v111 = v191;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v199 = v191;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B2116B10(0, v191[2] + 1, 1, v126, v127, v128, v129);
          v111 = v199;
        }

        v131 = v111[2];
        v130 = v111[3];
        if (v131 >= v130 >> 1)
        {
          v133 = sub_1B211156C(v130);
          sub_1B2116B10(v133, v131 + 1, 1, v134, v135, v136, v137);
          v111 = v199;
        }

        v111[2] = v131 + 1;
        v132 = &v111[2 * v131];
        v132[4] = v183;
        v132[5] = v113;
      }

      else
      {
LABEL_57:
      }
    }

    v189 = v111[2];
    if (v189)
    {
      v142 = 0;
    }

    else
    {

      v111 = v193;
      v143 = v193[2];

      v142 = 0;
      v189 = v143;
      if (!v143)
      {
        v146 = MEMORY[0x1E69E7CC0];
        v161 = v193;
        v144 = v193;
LABEL_67:
        LOBYTE(v195) = v181;
        *(&v195 + 1) = v179;
        v196 = v180;
        v197 = v144;
        v198 = v161;

        v162 = sub_1B21D609C();
        v164 = v163;

        sub_1B212DAFC(v162, v164);

        *&v195 = v146;
        sub_1B212A518(v20);
        v165 = v195;
        MEMORY[0x1EEE9AC00](v166);
        v167 = sub_1B2112F9C();
        sub_1B21619D8(v167, v168);
        sub_1B2115810();
        sub_1B211AB74(v169, &qword_1EB7A10C0, &unk_1B2257E70, v170);
        KeyPath = swift_getKeyPath();

        v177 = sub_1B21506CC(v165, KeyPath, v172, v173, v174, v175, v176);

        *&v195 = v177;
        *(&v195 + 1) = MEMORY[0x1E69E7CC8];
        v178.values._rawValue = &v195;
        Statement.setUncheckedArguments(_:)(v178);

        goto LABEL_68;
      }
    }

    v192 = v111;
    v202 = MEMORY[0x1E69E7CC0];
    sub_1B2114114(0, v189, 0, v138, v139, v140, v141);
    v144 = v111;
    v145 = 0;
    v146 = v202;
    v147 = v111 + 5;
    while (v145 < v144[2])
    {
      v148 = *v147;
      v199 = *(v147 - 1);
      v200 = v148;

      v149 = v142;
      sub_1B21D5FC0(&v195);

      v150 = v195;
      v151 = v196;
      v153 = *(v202 + 16);
      v152 = *(v202 + 24);
      if (v153 >= v152 >> 1)
      {
        v155 = sub_1B211D6A0(v152);
        v185 = v156;
        sub_1B2114114(v155, v153 + 1, 1, v157, v158, v159, v160);
        v150 = v185;
      }

      ++v145;
      *(v202 + 16) = v153 + 1;
      v154 = v202 + 24 * v153;
      *(v154 + 32) = v150;
      *(v154 + 48) = v151;
      v147 += 2;
      v142 = v149;
      v144 = v192;
      if (v189 == v145)
      {
        v161 = v193;
        goto LABEL_67;
      }
    }
  }

  __break(1u);
}

void PersistableRecord.performSave(_:)()
{
  sub_1B2146B10();
  sub_1B21D54E8();
  if (!v0)
  {
    if (v1)
    {
      sub_1B21225BC();
      MutablePersistableRecord.update(_:)(v2, v3, v4);
    }

    else
    {
      sub_1B21225BC();
      sub_1B211314C();
      v5();
    }
  }
}

BOOL MutablePersistableRecord.performDelete(_:)(uint64_t a1)
{
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B2111844();
  type metadata accessor for DAO(0, v3, v4, v5);
  v6 = sub_1B213CF48();
  v7(v6);

  sub_1B2143004();
  if (!v1)
  {
    sub_1B21D592C();
    v10 = v9;

    if (v10)
    {
      v15[0] = 0;
      v15[1] = 0;
      v11.value.values._rawValue = v15;
      Statement.execute(arguments:)(v11);
      if (v13)
      {
      }

      else
      {
        v14 = Database.changesCount.getter();

        return v14 > 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void sub_1B21D3270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1B2132AF4(v8);
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v7;
    v35 = v8 + 56;
    v36 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v37 = v9;
        v19 = sub_1B2252220();
        v21 = v20;
        v23 = *(v39 + 16);
        v22 = *(v39 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B2116B10(v22 > 1, v23 + 1, 1, v15, v16, v17, v18);
        }

        *(v39 + 16) = v23 + 1;
        v24 = v39 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v35;
        v8 = v36;
        v25 = 1 << *(v36 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v35 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v36 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_1B21268C8(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_1B21268C8(v11, v37, 0);
        }

LABEL_19:
        if (++v12 == v34)
        {
          return;
        }

        v10 = 0;
        v9 = *(v36 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1B21D34AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    sub_1B21115A0();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      sub_1B2135344();
      v35 = v11;
      v13 = v12 | (v3 << 6);
LABEL_11:
      v18 = (*(v10 + 56) + 24 * v13);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];

      v36 = v21;

      v22 = sub_1B211E590();
      LOBYTE(v21) = v23;

      if ((v21 & 1) == 0)
      {
        goto LABEL_37;
      }

      v24 = (*(a2 + 56) + 24 * v22);
      v25 = v24[1];
      v26 = v24[2];
      if (*v24)
      {
        if (!v19)
        {

          goto LABEL_38;
        }

        v28 = sub_1B21B808C(v27, v19);

        if ((v28 & 1) == 0)
        {

LABEL_37:

LABEL_38:

          return;
        }
      }

      else
      {
        if (v19)
        {
          goto LABEL_37;
        }
      }

      v29 = *(v25 + 16);
      if (v29 != *(v20 + 16))
      {
LABEL_34:

        goto LABEL_38;
      }

      if (v29)
      {
        v30 = v25 == v20;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v31 = 0;
        while (v29)
        {
          v32 = *(v25 + v31 + 32) == *(v20 + v31 + 32) && *(v25 + v31 + 40) == *(v20 + v31 + 40);
          if (!v32 && (sub_1B22531F0() & 1) == 0)
          {
            goto LABEL_34;
          }

          v31 += 16;
          if (!--v29)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_41;
      }

LABEL_31:
      sub_1B21D34AC(v26, v36);
      v34 = v33;

      v7 = v35;
      if ((v34 & 1) == 0)
      {
        return;
      }
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v9)
      {
        return;
      }

      ++v14;
      if (*(v4 + 8 * v3))
      {
        sub_1B211667C();
        v35 = v16 & v15;
        v13 = v17 | (v3 << 6);
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }
}

BOOL sub_1B21D37A8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  sub_1B21115A0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v163 = v3;
  while (2)
  {
    if (v8)
    {
      sub_1B2135344();
      v164 = v12;
    }

    else
    {
      v13 = v4;
      do
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
        }

        if (v4 >= v10)
        {
          return 1;
        }

        ++v13;
      }

      while (!*(v5 + 8 * v4));
      sub_1B211667C();
      v164 = v15 & v14;
    }

    v16 = v11 | (v4 << 6);
    v17 = *(*(v3 + 48) + 16 * v16 + 8);
    v18 = *(v3 + 56) + 24 * v16;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);

    v22 = sub_1B21146D8();
    sub_1B2113A20(v22, v23, v21);
    result = v17 == 0;
    if (!v17)
    {
      return result;
    }

    v25 = sub_1B211E590();
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_86;
    }

    v28 = *(a2 + 56) + 24 * v25;
    v29 = *v28;
    v30 = *(v28 + 8);
    v31 = *(v28 + 16);
    switch(v31)
    {
      case 1:
        if (v21)
        {
          if (v21 != 1)
          {
            goto LABEL_84;
          }

          v66 = sub_1B2111664();
          v68 = sub_1B21161DC(v66, v67, 1);
          sub_1B2113A44(v68, v69, 1);
          v70 = sub_1B2111664();
          v72 = sub_1B21161DC(v70, v71, 1);
          sub_1B2113A44(v72, v73, 1);
          v43 = v29 == v20;
        }

        else
        {
          v82 = sub_1B2111664();
          v84 = sub_1B21161DC(v82, v83, 1);
          sub_1B2113A44(v84, v85, 0);
          v86 = sub_1B2111664();
          v88 = sub_1B21161DC(v86, v87, 1);
          sub_1B2113A44(v88, v89, 0);
          v90 = trunc(v29);
          v43 = v29 > -9.22337204e18 && v29 < 9.22337204e18 && v90 == v29 && *&v20 == v29;
        }

LABEL_65:
        v3 = v163;
        v8 = v164;
        result = 0;
        if (!v43)
        {
          return result;
        }

        continue;
      case 2:
        if (v21 == 2)
        {
          if (*&v29 == *&v20 && v30 == v19)
          {
            v93 = sub_1B21146D8();
            sub_1B2113A20(v93, v94, 2);
            v95 = sub_1B21146D8();
            v52 = sub_1B21161DC(v95, v96, 2);
            v54 = 2;
LABEL_78:
            sub_1B2113A44(v52, v53, v54);
            v3 = v163;
            v8 = v164;
          }

          else
          {
            sub_1B2111664();
            sub_1B21D8118();
            v56 = sub_1B22531F0();
            v57 = sub_1B2111664();
            sub_1B2113A20(v57, v58, 2);
            v59 = sub_1B2111664();
            v61 = sub_1B21161DC(v59, v60, 2);
            sub_1B2113A44(v61, v62, 2);
            v3 = v163;
            v8 = v164;
            result = 0;
            if ((v56 & 1) == 0)
            {
              return result;
            }
          }

          continue;
        }

        v137 = sub_1B2111664();
        sub_1B2113A20(v137, v138, 2);

LABEL_84:
        v144 = sub_1B21146D8();
        sub_1B2113A20(v144, v145, v21);
LABEL_85:
        v146 = sub_1B2111664();
        v148 = sub_1B21161DC(v146, v147, v31);
        sub_1B2113A44(v148, v149, v21);
        v150 = sub_1B2111664();
        sub_1B2113A44(v150, v151, v31);
LABEL_86:
        v152 = sub_1B21146D8();
        sub_1B2113A44(v152, v153, v21);
        return 0;
      case 3:
        if (v21 != 3)
        {
          v139 = sub_1B2112B00();
          sub_1B2113A20(v139, v140, v141);
          v142 = sub_1B2111664();
          sub_1B2126638(v142, v143);
          goto LABEL_84;
        }

        v64 = v29 == 0.0 && v30 == 0xC000000000000000 && v19 >> 62 == 3;
        if (v64 && (v20 == 0.0 ? (v65 = v19 == 0xC000000000000000) : (v65 = 0), v65))
        {
          v97 = sub_1B2111A28();
          sub_1B2113A20(v97, v98, v99);
          v100 = sub_1B2111A28();
          sub_1B2113A20(v100, v101, v102);
          v103 = sub_1B2111A28();
          sub_1B2113A20(v103, v104, v105);
          v106 = sub_1B2111A28();
          sub_1B2113A44(v106, v107, v108);
          v109 = sub_1B2111A28();
          sub_1B2113A44(v109, v110, v111);
          v112 = sub_1B2111A28();
          sub_1B2113A44(v112, v113, v114);
        }

        else
        {
          switch(v19 >> 62)
          {
            case 1uLL:
              LODWORD(v115) = HIDWORD(v20) - LODWORD(v20);
              if (__OFSUB__(HIDWORD(v20), LODWORD(v20)))
              {
                goto LABEL_92;
              }

              v115 = v115;
LABEL_75:
              if (v115)
              {
                v31 = 3;
                v154 = sub_1B2112B00();
                sub_1B2113A20(v154, v155, v156);
                v157 = sub_1B21175E8();
                sub_1B2113A20(v157, v158, v159);
                v160 = sub_1B2112B00();
                sub_1B2113A20(v160, v161, v162);
                LOBYTE(v21) = 3;
                goto LABEL_85;
              }

LABEL_76:
              v119 = sub_1B2112B00();
              sub_1B2113A20(v119, v120, v121);
              v122 = sub_1B21175E8();
              sub_1B2113A20(v122, v123, v124);
              v125 = sub_1B2112B00();
              sub_1B2113A20(v125, v126, v127);
              v128 = sub_1B2112B00();
              sub_1B2113A44(v128, v129, v130);
              v131 = sub_1B21175E8();
              sub_1B2113A44(v131, v132, v133);
              v134 = sub_1B2112B00();
              sub_1B2113A44(v134, v135, v136);
              break;
            case 2uLL:
              v117 = *(*&v20 + 16);
              v116 = *(*&v20 + 24);
              v118 = __OFSUB__(v116, v117);
              v115 = v116 - v117;
              if (!v118)
              {
                goto LABEL_75;
              }

              goto LABEL_91;
            case 3uLL:
              goto LABEL_76;
            default:
              v115 = BYTE6(v19);
              goto LABEL_75;
          }
        }

        v52 = sub_1B21175E8();
        goto LABEL_78;
      case 4:
        if (v21 != 4 || (v19 | *&v20) != 0)
        {
          goto LABEL_84;
        }

        v45 = sub_1B2111664();
        sub_1B2113A44(v45, v46, 4);
        v47 = sub_1B2111670();
        sub_1B2113A44(v47, v48, v49);
        v50 = sub_1B2111664();
        sub_1B2113A44(v50, v51, 4);
        v52 = sub_1B2111670();
        goto LABEL_78;
      default:
        if (v21)
        {
          if (v21 != 1)
          {
            goto LABEL_84;
          }

          v32 = sub_1B2111664();
          v34 = sub_1B21161DC(v32, v33, 0);
          sub_1B2113A44(v34, v35, 1);
          v36 = sub_1B2111664();
          v38 = sub_1B21161DC(v36, v37, 0);
          sub_1B2113A44(v38, v39, 1);
          v40 = trunc(v20);
          v43 = v20 > -9.22337204e18 && v20 < 9.22337204e18 && v40 == v20 && *&v29 == v20;
        }

        else
        {
          v74 = sub_1B2111664();
          v76 = sub_1B21161DC(v74, v75, 0);
          sub_1B2113A44(v76, v77, 0);
          v78 = sub_1B2111664();
          v80 = sub_1B21161DC(v78, v79, 0);
          sub_1B2113A44(v80, v81, 0);
          v43 = *&v29 == *&v20;
        }

        goto LABEL_65;
    }
  }
}

unint64_t PersistenceError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for Row();
  v3 = sub_1B2113B28();
  v4 = sub_1B2224EAC(v3);
  Row.__allocating_init(_:)(v4);
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](v1, v2);
  v5 = MEMORY[0x1B2741EB0](8250, 0xE200000000000000);
  v12 = Row.description.getter(v5, v6, v7, v8, v9, v10, v11);
  MEMORY[0x1B2741EB0](v12);

  return 0xD000000000000017;
}

void MutablePersistableRecord.performInsert(_:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v21[1] = v5;
  sub_1B21115E0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = *(v7 + 16);
  sub_1B212CF80();
  v12();
  sub_1B212DF24();
  swift_getDynamicType();
  (*(v7 + 8))(v11, v4);
  (*(v2 + 24))(v22, v4, v2);
  v13 = LOBYTE(v22[0]);
  type metadata accessor for DAO(0, v4, v2, v14);
  sub_1B212CF80();
  v12();

  v15 = sub_1B2143004();
  if (!v0)
  {
    v16 = v15;
    LOBYTE(v22[0]) = v13;
    sub_1B21454D4(v22);
    v22[0] = 0;
    v22[1] = 0;
    v23.value.values._rawValue = v22;
    Statement.execute(arguments:)(v23);
    if (v17)
    {

LABEL_6:

      goto LABEL_7;
    }

    if (v13 == 3)
    {
      goto LABEL_6;
    }

    v18 = Database.lastInsertedRowID.getter();
    if (*(v16 + 72))
    {
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v19 = *(v16 + 56);
      v20 = *(v16 + 64);
    }

    (*(v2 + 32))(v18, v19, v20, v4, v2);
  }

LABEL_7:
  sub_1B2112FDC();
}

uint64_t MutablePersistableRecord.inserted(_:)()
{
  sub_1B2122590();
  v4 = v3;
  (*(v5 + 16))(v1, v6, v0);
  v7 = sub_1B2117268();
  result = v8(v7);
  if (v2)
  {
    return (*(v4 + 8))(v1, v0);
  }

  return result;
}

void MutablePersistableRecord.performUpdate(_:columns:)()
{
  sub_1B2111640();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  sub_1B21115E0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v12 = v11 - v10;
  type metadata accessor for DAO(0, v13, v14, v14);
  (*(v8 + 16))(v12, v2, v6);

  sub_1B2143004();
  if (!v1)
  {
    swift_getDynamicType();
    (*(v4 + 24))(v17, v6, v4);
    sub_1B21D2610();
    if (v15)
    {
      v17[0] = 0;
      v17[1] = 0;
      sub_1B21225BC();
      Statement.execute(arguments:)(v18);
      if (!v16 && !Database.changesCount.getter())
      {
        sub_1B21D2410();
        swift_willThrow();
      }
    }

    else
    {
      sub_1B21D2410();
      swift_willThrow();
    }
  }

  sub_1B2112FDC();
}

uint64_t MutablePersistableRecord.update<A>(_:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v14[2] = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  KeyPath = swift_getKeyPath();
  v11 = sub_1B2150D28(sub_1B21D6D34, v14, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v10);

  v12 = sub_1B2140648(v11);
  (*(a5 + 48))(a1, v12, a3, a5);
  return sub_1B21325B0();
}

uint64_t sub_1B21D47EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v5(AssociatedTypeWitness, v4);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t MutablePersistableRecord.update<A>(_:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  v11 = sub_1B212D048(v10);
  v12(v11);
  v13 = sub_1B2252820();
  (*(a5 + 48))(a1, v13, a3, a5);
  return sub_1B21325B0();
}

uint64_t MutablePersistableRecord.update(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getDynamicType();
  v6 = (*(*(a3 + 16) + 8))(a2);
  v8 = Database.columns(in:)(v6, v7);
  if (!v3)
  {
    v9 = v8;

    v10 = *(v9 + 16);
    if (v10)
    {
      v32 = MEMORY[0x1E69E7CC0];
      v11 = sub_1B2122CE8();
      sub_1B2116B10(v11, v12, v13, v14, v15, v16, v17);
      v18 = v32;
      v19 = (v9 + 64);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        v23 = *(v32 + 16);
        v22 = *(v32 + 24);

        if (v23 >= v22 >> 1)
        {
          sub_1B2116B10(v22 > 1, v23 + 1, 1, v24, v25, v26, v27);
        }

        *(v32 + 16) = v23 + 1;
        v28 = v32 + 16 * v23;
        *(v28 + 32) = v20;
        *(v28 + 40) = v21;
        v19 += 11;
        --v10;
      }

      while (v10);
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1B2140648(v18);
    v29 = sub_1B21D810C();
    v30(v29);
  }
}

uint64_t MutablePersistableRecord.updateChanges<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  v16 = sub_1B212D048(v15);
  v17(v16);
  v18 = *(a6 + 8);
  v19 = *(a6 + 16);

  sub_1B2143368(v20, v7, a4, v18, v19);
  if (!v8)
  {
    v22[0] = v22[1];
    LOBYTE(a5) = sub_1B21D4C3C(a1, v22, a3, a5);
  }

  return a5 & 1;
}

uint64_t sub_1B21D4C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = v14[1];
  (*(v17 + 16))(v13, v7, v11);
  v18 = *(a4 + 8);
  v19 = *(a4 + 16);

  sub_1B2143368(v20, v13, a3, v18, v19);
  if (!v6)
  {
    v35 = a1;
    v36 = v7;
    v37 = a3;
    v38 = a4;
    v39 = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = v46;
    *(v21 + 32) = 0;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v48 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      sub_1B21903D4(&v41, v21, v15, v16);
      v22 = v42;
      if (!v42)
      {
        break;
      }

      v23 = v41;
      v25 = v43;
      v24 = v44;
      v26 = v45;

      sub_1B2113A20(v25, v24, v26);
      sub_1B2113A44(v25, v24, v26);
      sub_1B2139304(v40, v23, v22, v27, v28, v29, v30, v31, v35, v36, v37, v38, v39, v40[0], v40[1], v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50, v51, v52, v53, v54);
      sub_1B21906DC(v23, v22, v25, v24, v26);
    }

    v32 = *(v48 + 16);
    LOBYTE(v6) = v32 != 0;
    if (v32 && (v33 = v39, (*(v38 + 48))(v35, v48, v37), v33))
    {
    }

    else
    {
    }
  }

  return v6 & 1;
}

void MutablePersistableRecord.updateChanges(_:with:)()
{
  sub_1B2111640();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v14 = sub_1B212D048(v13);
  v16(v14, v0, v15);
  v17 = *(v5 + 8);
  v18 = *(v5 + 16);

  sub_1B2143368(v19, v2, v7, v17, v18);
  if (!v3)
  {
    v9(v0);
    sub_1B21D4C3C(v11, &v20, v7, v5);
  }

  sub_1B2112FDC();
}

void MutablePersistableRecord.performSave(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B2111640();
  sub_1B2146B10();
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1B2111844();
  sub_1B21D54E8();
  if (!v20)
  {
    if (v22)
    {
      sub_1B211314C();
      sub_1B21225BC();
      MutablePersistableRecord.update(_:)(v23, v24, v25);
    }

    else
    {
      sub_1B21225BC();
      sub_1B211314C();
      v26();
    }
  }

  sub_1B2112FDC();
}

uint64_t MutablePersistableRecord.saved(_:)()
{
  sub_1B2122590();
  v4 = v3;
  (*(v5 + 16))(v1, v6, v0);
  v7 = sub_1B2117268();
  result = v8(v7);
  if (v2)
  {
    return (*(v4 + 8))(v1, v0);
  }

  return result;
}

uint64_t MutablePersistableRecord.performExists(_:)()
{
  sub_1B2117A7C();
  sub_1B21115E0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B2111844();
  type metadata accessor for DAO(0, v2, v3, v4);
  v5 = sub_1B213CF48();
  v6(v5);

  sub_1B2143004();
  if (!v0)
  {
    sub_1B21D5BBC();
    v9 = v8;

    if (v9 && (type metadata accessor for Row(), v14 = 0uLL, v13 = 0, memset(v12, 0, sizeof(v12)), v11 = static Row.fetchOne(_:arguments:adapter:)(v9, &v14, v12), sub_1B212AC5C(v12, &qword_1EB7A1370, &unk_1B2257580), , v11))
    {

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

void sub_1B21D54E8()
{
  sub_1B2111640();
  v5 = v4;
  sub_1B2117A7C();
  sub_1B21115E0();
  v55 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B2111844();
  sub_1B212D870(v8, v9);
  v10 = *(v5 + 16);
  (*(v10 + 8))(v2, v10);
  Database.primaryKey(_:)();
  if (v1)
  {

LABEL_4:
    sub_1B21440EC();
    sub_1B2112FDC();
    return;
  }

  v52 = v62;
  (*(v55 + 16))(v3, v0, v2);
  v11 = *(v5 + 8);

  sub_1B2143368(v12, v3, v2, v11, v10);
  v13 = v61;
  v53 = v62;
  v54 = v61;
  if (v63)
  {
    if (v63 == 1)
    {
      v14 = v61;
    }

    else
    {
      v14 = &unk_1F2969030;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v14 = swift_allocObject();
    *(v14 + 1) = xmmword_1B22546B0;
    *(v14 + 4) = v13;
    *(v14 + 5) = v52;
  }

  v15 = *(v14 + 2);
  if (v15)
  {
    v66 = MEMORY[0x1E69E7CC0];
    v16 = sub_1B21143E4();
    sub_1B216EB80(v16, v17, v18);
    v19 = v66;
    v20 = (v14 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v59 = v54;
      v60 = v53;
      swift_bridgeObjectRetain_n();
      sub_1B219020C();
      v23 = v64;
      if (v64)
      {
        v24 = v65;
        sub_1B21139A0(&v61, v64);
        (*(v24 + 24))(&v57, v23, v24);
        v56 = v57;
        v25 = v58;
        sub_1B2113208(&v61);
      }

      else
      {
        sub_1B212AC5C(&v61, &qword_1EB7A0E30, &unk_1B2259360);

        v56 = 0u;
        v25 = 4;
      }

      v27 = *(v66 + 16);
      v26 = *(v66 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = sub_1B211D6A0(v26);
        sub_1B216EB80(v29, v27 + 1, 1);
      }

      *(v66 + 16) = v27 + 1;
      v28 = v66 + 40 * v27;
      *(v28 + 32) = v21;
      *(v28 + 40) = v22;
      *(v28 + 48) = v56;
      *(v28 + 64) = v25;
      v20 += 2;
      --v15;
    }

    while (v15);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v30 = sub_1B21962F4(v19);
  sub_1B21115A0();
  v33 = v32 & v31;
  v35 = (v34 + 63) >> 6;

  v36 = 0;
  if (v33)
  {
    while (1)
    {
      v37 = v36;
LABEL_25:
      v38 = *(v30 + 56) + 24 * (__clz(__rbit64(v33)) | (v37 << 6));
      v39 = *(v38 + 16);
      v40 = *(v38 + 8) | *v38;
      if (v39 != 4 || v40 != 0)
      {
        break;
      }

      v33 &= v33 - 1;

      v42 = sub_1B2111670();
      sub_1B2113A20(v42, v43, v44);

      v45 = sub_1B2111670();
      sub_1B2113A44(v45, v46, v47);
      v36 = v37;
      if (!v33)
      {
        goto LABEL_22;
      }
    }

    v48 = sub_1B2112F9C();
    sub_1B2113A20(v48, v49, v39);

    v50 = sub_1B2112F9C();
    sub_1B2113A44(v50, v51, v39);
    goto LABEL_4;
  }

LABEL_22:
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      goto LABEL_4;
    }

    v33 = *(v30 + 64 + 8 * v37);
    ++v36;
    if (v33)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_1B21D592C()
{
  sub_1B2111640();
  sub_1B211F39C();
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = &unk_1F2969090;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v3;
    *(v4 + 5) = v2;
  }

  if (*(v4 + 2))
  {
    sub_1B2116A84();
    v44 = MEMORY[0x1E69E7CC0];
    v5 = sub_1B21143E4();
    sub_1B2114114(v5, v6, v7, v8, v9, v10, v11);
    v12 = v44;
    while (*(v4 + 2))
    {
      sub_1B2149824();
      sub_1B21D5FC0(v43);

      v14 = sub_1B211409C();
      if (v15)
      {
        v17 = sub_1B211D6A0(v13);
        v42 = v18;
        sub_1B2114114(v17, v3, 1, v19, v20, v21, v22);
        v14 = v42;
        v12 = v44;
      }

      sub_1B211ADF0(v14);
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B2116A84();
    v12 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v23 = (v12 + 48);
    v24 = *(v12 + 16) + 1;
    while (v24 != 1)
    {
      if (*v23 == 4)
      {
        sub_1B211E500();
        if (!v25)
        {
          continue;
        }
      }

      sub_1B21262E4();
      sub_1B213CE48();
      v26 = sub_1B212D5CC();
      sub_1B21D65AC(v26, v27, v4, 23, v28);

      v29 = sub_1B21D810C();
      sub_1B212DAFC(v29, v30);
      if (!v0)
      {
        sub_1B2115F1C();

        MEMORY[0x1EEE9AC00](v31);
        sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
        sub_1B2115810();
        sub_1B211AB74(v32, &qword_1EB7A10C0, &unk_1B2257E70, v33);
        KeyPath = swift_getKeyPath();

        v40 = sub_1B21506CC(v12, KeyPath, v35, v36, v37, v38, v39);
        sub_1B21325B0();

        v43[0] = v40;
        v43[1] = MEMORY[0x1E69E7CC8];
        v41.values._rawValue = v43;
        Statement.setUncheckedArguments(_:)(v41);
      }

      break;
    }

    sub_1B21440EC();
    sub_1B2112FDC();
  }
}

void sub_1B21D5BBC()
{
  sub_1B2111640();
  sub_1B211F39C();
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = &unk_1F29690C0;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v3;
    *(v4 + 5) = v2;
  }

  if (*(v4 + 2))
  {
    sub_1B2116A84();
    v44 = MEMORY[0x1E69E7CC0];
    v5 = sub_1B21143E4();
    sub_1B2114114(v5, v6, v7, v8, v9, v10, v11);
    v12 = v44;
    while (*(v4 + 2))
    {
      sub_1B2149824();
      sub_1B21D5FC0(v43);

      v14 = sub_1B211409C();
      if (v15)
      {
        v17 = sub_1B211D6A0(v13);
        v42 = v18;
        sub_1B2114114(v17, v3, 1, v19, v20, v21, v22);
        v14 = v42;
        v12 = v44;
      }

      sub_1B211ADF0(v14);
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B2116A84();
    v12 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v23 = (v12 + 48);
    v24 = *(v12 + 16) + 1;
    while (v24 != 1)
    {
      if (*v23 == 4)
      {
        sub_1B211E500();
        if (!v25)
        {
          continue;
        }
      }

      sub_1B21262E4();
      v26 = sub_1B212D5CC();
      sub_1B21D65AC(v26, v27, v4, 25, v28);

      v29 = sub_1B21D810C();
      sub_1B212DAFC(v29, v30);
      if (!v0)
      {
        sub_1B2115F1C();

        MEMORY[0x1EEE9AC00](v31);
        sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
        sub_1B2115810();
        sub_1B211AB74(v32, &qword_1EB7A10C0, &unk_1B2257E70, v33);
        KeyPath = swift_getKeyPath();

        v40 = sub_1B21506CC(v12, KeyPath, v35, v36, v37, v38, v39);
        sub_1B21325B0();

        v43[0] = v40;
        v43[1] = MEMORY[0x1E69E7CC8];
        v41.values._rawValue = v43;
        Statement.setUncheckedArguments(_:)(v41);
      }

      break;
    }

    sub_1B21440EC();
    sub_1B2112FDC();
  }
}

uint64_t MutablePersistableRecord<>.updateChanges(_:with:)(uint64_t a1, void (*a2)(uint64_t), char a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v17 = v7;
  v13 = *(a5 + 8);
  v14 = *(a5 + 16);

  swift_unknownObjectRetain();
  sub_1B2143368(a1, &v17, a4, v13, v14);
  if (!v6)
  {
    a2(v7);
    v17 = v7;
    a3 = sub_1B21D4C3C(a1, &v16, a4, a5);
  }

  return a3 & 1;
}

uint64_t sub_1B21D5FC0@<X0>(uint64_t a1@<X8>)
{
  sub_1B219020C();
  if (v10)
  {
    sub_1B21139A0(v9, v10);
    v2 = sub_1B2112F9C();
    v3(v2);
    v4 = v8;
    result = sub_1B2113208(v9);
    v6 = v7;
  }

  else
  {
    result = sub_1B212AC5C(v9, &qword_1EB7A0E30, &unk_1B2259360);
    v6 = 0uLL;
    v4 = 4;
  }

  *a1 = v6;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1B21D609C()
{
  v1 = v0[1];
  v66 = *v0;
  v67 = v1;
  v68 = *(v0 + 4);
  if (qword_1ED85D4D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B2117D3C();
  sub_1B221E37C(v2, v3);
  v5 = v4;

  v6 = sub_1B21C9050(&v66, v5);
  v8 = v7;

  if (!v8)
  {
    v13 = *(&v67 + 1);
    v14 = *(*(&v67 + 1) + 16);
    if (v14)
    {
      v63 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10(0, v14, 0, v9, v10, v11, v12);
      v15 = (v13 + 40);
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;

        MEMORY[0x1B2741EB0](v16, v17);
        sub_1B2122C5C();
        sub_1B21233A4();

        v19 = *(v63 + 16);
        v18 = *(v63 + 24);
        if (v19 >= v18 >> 1)
        {
          v21 = sub_1B211156C(v18);
          sub_1B2116B10(v21, v19 + 1, 1, v22, v23, v24, v25);
        }

        *(v63 + 16) = v19 + 1;
        v20 = v63 + 16 * v19;
        *(v20 + 32) = 34;
        *(v20 + 40) = 0xE100000000000000;
        v15 += 2;
        --v14;
      }

      while (v14);
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B21151BC();
    sub_1B211AB74(v26, &qword_1EB7A0DA0, &qword_1B2254340, v27);
    v28 = sub_1B2252250();
    v30 = v29;

    v31 = v68;
    v32 = *(v68 + 16);
    if (v32)
    {
      v62 = v28;
      v64 = MEMORY[0x1E69E7CC0];
      v33 = sub_1B212CE88();
      sub_1B2116B10(v33, v34, v35, v36, v37, v38, v39);
      v40 = (v31 + 40);
      do
      {
        v41 = *(v40 - 1);
        v42 = *v40;

        MEMORY[0x1B2741EB0](v41, v42);
        sub_1B2122C5C();
        sub_1B21233A4();

        v44 = *(v64 + 16);
        v43 = *(v64 + 24);
        if (v44 >= v43 >> 1)
        {
          v46 = sub_1B211156C(v43);
          sub_1B2116B10(v46, v44 + 1, 1, v47, v48, v49, v50);
        }

        *(v64 + 16) = v44 + 1;
        v45 = v64 + 16 * v44;
        *(v45 + 32) = 34;
        *(v45 + 40) = 0xE100000000000000;
        v40 += 2;
        --v32;
      }

      while (v32);
      v28 = v62;
    }

    sub_1B2252250();

    v51 = v66;
    if (v66 == 1)
    {
      sub_1B2252CD0();

      v65 = 0x20455441445055;
      v52 = *(&v66 + 1);
      v53 = v67;
    }

    else
    {
      sub_1B2252CD0();

      v65 = 0x4F20455441445055;
      v54 = 0xE800000000000000;
      result = sub_1B21D8124();
      switch(v51)
      {
        case 1:
          __break(1u);
          return result;
        case 2:
          v54 = 0xE400000000000000;
          result = 1279869254;
          goto LABEL_21;
        case 3:
          v54 = 0xE600000000000000;
          result = 0x45524F4E4749;
          goto LABEL_21;
        case 4:
          v54 = 0xE700000000000000;
          result = sub_1B21260C0();
          goto LABEL_21;
        default:
LABEL_21:
          MEMORY[0x1B2741EB0](result, v54);

          MEMORY[0x1B2741EB0](32, 0xE100000000000000);
          v52 = *(&v66 + 1);
          v53 = v67;
          break;
      }
    }

    MEMORY[0x1B2741EB0](v52, v53);
    sub_1B2122C5C();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](0x2054455320, 0xE500000000000000);
    MEMORY[0x1B2741EB0](v28, v30);

    v56 = sub_1B2115828();
    MEMORY[0x1B2741EB0](v56, 0xE700000000000000);
    v57 = sub_1B21146D8();
    MEMORY[0x1B2741EB0](v57);

    v6 = v65;

    v58 = sub_1B2117D3C();
    sub_1B221E37C(v58, v59);
    v61 = v60;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1B21AC070();
    sub_1B221E3B8(v61);
  }

  return v6;
}

uint64_t sub_1B21D65AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a2;
  v7 = a1;
  v8 = *(a3 + 16);
  if (v8)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v10 = sub_1B212CE88();
    sub_1B2116B10(v10, v11, v12, v13, v14, v15, v16);
    v17 = v39;
    v18 = (a3 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;

      MEMORY[0x1B2741EB0](v19, v20);
      sub_1B2122C5C();
      MEMORY[0x1B2741EB0](16189, 0xE200000000000000);

      v38 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1B2116B10(v25 > 1, v26 + 1, 1, v21, v22, v23, v24);
      }

      *(v17 + 16) = v26 + 1;
      v27 = v17 + 16 * v26;
      *(v27 + 32) = 34;
      *(v27 + 40) = 0xE100000000000000;
      v18 += 2;
      --v8;
    }

    while (v8);
    v7 = a1;
    v6 = a2;
    v5 = a5;
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B21151BC();
  sub_1B211AB74(v28, &qword_1EB7A0DA0, &qword_1B2254340, v29);
  v30 = sub_1B2252250();
  v32 = v31;

  sub_1B211A2CC();
  sub_1B2252CD0();

  sub_1B21131A0();
  MEMORY[0x1B2741EB0](v7, v6);
  sub_1B2122C5C();
  MEMORY[0x1B2741EB0](v38);

  v33 = sub_1B2115828();
  MEMORY[0x1B2741EB0](v33, 0xE700000000000000);
  MEMORY[0x1B2741EB0](v30, v32);

  return v5;
}

uint64_t sub_1B21D67C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v4;
  v13 = *(a2 + 24);

  sub_1B219020C();
  v5 = v15;
  if (v15)
  {
    v6 = v16;
    sub_1B21139A0(v14, v15);
    (*(v6 + 24))(&v11, v5, v6);
    v10 = v11;
    v7 = v12;
    result = sub_1B2113208(v14);
    v9 = v10;
  }

  else
  {
    result = sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
    v9 = 0uLL;
    v7 = 4;
  }

  *(a3 + 16) = v9;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_1B21D68B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if ((sub_1B21AAB68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1B22531F0() & 1) == 0)
  {
    return 0;
  }

  return sub_1B21B8000(v4, v7);
}

void sub_1B21D6958(uint64_t a1)
{
  sub_1B2145DB0(a1, *v1);
  sub_1B2252370();

  sub_1B2145E84();
}

uint64_t sub_1B21D69C0()
{
  v1 = *v0;
  sub_1B2253420();
  sub_1B2145DB0(v3, v1);
  sub_1B2252370();
  sub_1B2145E84();
  return sub_1B2253470();
}

uint64_t sub_1B21D6A3C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v4[72] = *v1;
  v5 = v2;
  v6 = *(v1 + 16);
  sub_1B2253420();
  sub_1B21D6958(v4);
  return sub_1B2253470();
}

uint64_t sub_1B21D6A98(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  if ((sub_1B21AAB68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 != v6 || v3 != v7)
  {
    sub_1B2112F9C();
    if ((sub_1B22531F0() & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1B21B8000(v5, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1B21B8000(v4, v8);
}

void sub_1B21D6B54(uint64_t a1)
{
  sub_1B2145DB0(a1, *v1);
  sub_1B2252370();
  sub_1B2145E84();

  sub_1B2145E84();
}

uint64_t sub_1B21D6BC8()
{
  v1 = *v0;
  sub_1B2253420();
  sub_1B2145DB0(v3, v1);
  sub_1B2252370();
  sub_1B2145E84();
  sub_1B2145E84();
  return sub_1B2253470();
}

uint64_t sub_1B21D6C58(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v5[72] = *v1;
  v6 = v2;
  v7 = *(v1 + 16);
  v8 = v3;
  sub_1B2253420();
  sub_1B21D6B54(v5);
  return sub_1B2253470();
}

uint64_t sub_1B21D6CBC()
{
  sub_1B21D7F7C();
  v0 = sub_1B2252190();
  sub_1B21619D8(&qword_1EB7A2328, &qword_1B225D988);
  swift_allocObject();
  result = sub_1B21537C8(v0);
  qword_1ED85D4D8 = result;
  return result;
}

unint64_t sub_1B21D6D60(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v10[6] = *MEMORY[0x1E69E9840];
  v10[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v10[3] = v10;
  v10[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = (&v10[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B2148CEC(0, v5, v6);
    sub_1B21D7D74(v6, v5, v3, a2);
    sub_1B2113B28();
  }

  else
  {
    v8 = swift_slowAlloc();
    sub_1B21D7F00(v8, v5, sub_1B21D8000);
    sub_1B2113B28();

    sub_1B2112AE8();
  }

  return v5;
}

unint64_t sub_1B21D6EE8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v42[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v42[0] = a1;
    v3 = *(a1 + 16);
    v40 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v39 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v40 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      sub_1B2253420();

      sub_1B212CF80();
      sub_1B2252370();
      v9 = sub_1B2253470();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        v12 = (v9 & v10) >> 6;
        v13 = 1 << (v9 & v10);
        if ((v13 & *(v4 + 8 * v12)) == 0)
        {

          v3 = v39;
          goto LABEL_3;
        }

        v14 = (*(v2 + 48) + 16 * v11);
        v15 = *v14 == v8 && v14[1] == v7;
        if (v15)
        {
          break;
        }

        sub_1B21D8118();
        if (sub_1B22531F0())
        {
          break;
        }

        v9 = v11 + 1;
      }

      v16 = v5;
      v42[1] = v5;

      v18 = *(v2 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      if ((v18 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v34 = swift_slowAlloc();
          sub_1B21D772C(v34, v19, (v2 + 56), v19, v2, v11, v42);
          sub_1B2113B28();

          sub_1B2112AE8();

          return v11;
        }
      }

      v35[0] = v19;
      v35[1] = v35;
      MEMORY[0x1EEE9AC00](v17);
      v21 = v35 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v21, (v2 + 56), v20);
      v22 = *&v21[8 * v12] & ~v13;
      v37 = v21;
      *&v21[8 * v12] = v22;
      v23 = *(v2 + 16) - 1;
      v11 = v41;
      v39 = *(v41 + 16);
      v19 = v16;
      while (1)
      {
        v36 = v23;
        v38 = v16;
LABEL_16:
        while (2)
        {
          if (v19 == v39)
          {
            v2 = sub_1B21D7B58(v37, v35[0], v36, v2);
            goto LABEL_33;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v19 >= *(v11 + 16))
          {
            goto LABEL_37;
          }

          v24 = (v40 + 16 * v19);
          v13 = *v24;
          v12 = v24[1];
          ++v19;
          sub_1B2253420();

          sub_1B2252370();
          v25 = sub_1B2253470();
          v20 = ~(-1 << *(v2 + 32));
          do
          {
            v26 = v25 & v20;
            v27 = (v25 & v20) >> 6;
            v28 = 1 << (v25 & v20);
            if ((v28 & *(v4 + 8 * v27)) == 0)
            {

              v11 = v41;
              v16 = v38;
              goto LABEL_16;
            }

            v29 = (*(v2 + 48) + 16 * v26);
            if (*v29 == v13 && v29[1] == v12)
            {
              break;
            }

            v31 = sub_1B22531F0();
            v25 = v26 + 1;
          }

          while ((v31 & 1) == 0);

          v32 = v37[v27];
          v37[v27] = v32 & ~v28;
          v15 = (v32 & v28) == 0;
          v11 = v41;
          v16 = v38;
          if (v15)
          {
            continue;
          }

          break;
        }

        v23 = v36 - 1;
        if (__OFSUB__(v36, 1))
        {
          break;
        }

        v16 = v19;
        if (v36 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for PersistenceConflictPolicy(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceConflictPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t *sub_1B21D7580(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v25 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v26 = a5;
  while (1)
  {
    v24 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1B21D7B58(v25, a2, v24, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    sub_1B2253420();

    sub_1B2252370();
    v14 = sub_1B2253470();
    v15 = ~(-1 << *(a3 + 32));
    do
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = 1 << (v14 & v15);
      if ((v18 & *(v8 + 8 * v17)) == 0)
      {

        a5 = v26;
        goto LABEL_3;
      }

      v19 = (*(a3 + 48) + 16 * v16);
      if (*v19 == v13 && v19[1] == v12)
      {
        break;
      }

      v21 = sub_1B22531F0();
      v14 = v16 + 1;
    }

    while ((v21 & 1) == 0);

    v22 = v25[v17];
    v25[v17] = v22 & ~v18;
    a5 = v26;
    if ((v22 & v18) == 0)
    {
      goto LABEL_3;
    }

    v7 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_20;
    }

    if (v24 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *sub_1B21D772C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1B21D7580(a1, a2, a5, a6, a7);

  return v12;
}

void sub_1B21D77B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_1B2117A7C();
      sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
      v8 = sub_1B2252C90();
      v9 = v8;
      if (v4 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v17 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        v18 = sub_1B2253410() & ~(-1 << *(v9 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          sub_1B2114850();
          while (++v19 != v21 || (v20 & 1) == 0)
          {
            v22 = v19 == v21;
            if (v19 == v21)
            {
              v19 = 0;
            }

            v20 |= v22;
            if (*(v12 + 8 * v19) != -1)
            {
              sub_1B2118398();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1B2112110();
LABEL_25:
        sub_1B2111AE8();
        *(v12 + v23) |= v24;
        *(*(v9 + 48) + 8 * v25) = v17;
        ++*(v9 + 16);
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_30;
        }

        if (!v7)
        {
          goto LABEL_5;
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

        if (v11 >= v4)
        {
          goto LABEL_5;
        }

        ++v14;
        if (v5[v11])
        {
          sub_1B211667C();
          v10 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1B21D795C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_1B2117A7C();
      sub_1B21619D8(&qword_1EB7A2340, qword_1B225D9B0);
      v8 = sub_1B2252C90();
      v9 = v8;
      if (v4 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v12 = v8 + 56;
      v31 = v6;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v17 = (*(v6 + 48) + 32 * (v13 | (v11 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[3];
        v32 = v17[2];
        sub_1B2253420();

        sub_1B2252370();
        v21 = sub_1B2253470() & ~(-1 << *(v9 + 32));
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          sub_1B2114850();
          while (++v22 != v24 || (v23 & 1) == 0)
          {
            v25 = v22 == v24;
            if (v22 == v24)
            {
              v22 = 0;
            }

            v23 |= v25;
            if (*(v12 + 8 * v22) != -1)
            {
              sub_1B2118398();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1B2112110();
LABEL_25:
        sub_1B2111AE8();
        *(v12 + v26) |= v27;
        v29 = (*(v9 + 48) + 32 * v28);
        *v29 = v18;
        v29[1] = v19;
        v29[2] = v32;
        v29[3] = v20;
        ++*(v9 + 16);
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_30;
        }

        v6 = v31;
        if (!v7)
        {
          goto LABEL_5;
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

        if (v11 >= v4)
        {
          goto LABEL_5;
        }

        ++v14;
        if (v5[v11])
        {
          sub_1B211667C();
          v10 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1B21D7B58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
  result = sub_1B2252C90();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1B2253420();

    sub_1B2252370();
    result = sub_1B2253470();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t *sub_1B21D7D74(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    sub_1B2253420();

    sub_1B2252370();
    v11 = sub_1B2253470();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(v7 + 8 * v14)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v16 = (*(a4 + 48) + 16 * v13);
      if (*v16 == v10 && v16[1] == v9)
      {
        break;
      }

      v18 = sub_1B22531F0();
      v11 = v13 + 1;
    }

    while ((v18 & 1) == 0);

    v19 = v22[v14];
    v22[v14] = v19 | v15;
    v6 = v25;
    if ((v19 & v15) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      return sub_1B21D7B58(v22, a2, v21, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_1B21D7F00(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

unint64_t sub_1B21D7F7C()
{
  result = qword_1ED85D1F0;
  if (!qword_1ED85D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D1F0);
  }

  return result;
}

unint64_t *sub_1B21D7FD0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  result = sub_1B21D7D74(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B21D801C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1B21D805C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1B21D80B8()
{
  result = qword_1ED85D1E8;
  if (!qword_1ED85D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D1E8);
  }

  return result;
}

uint64_t *sub_1B21D8138(uint64_t a1)
{
  ppSnapshot[1] = *MEMORY[0x1E69E9840];
  ppSnapshot[0] = 0;
  swift_beginAccess();
  v3 = sqlite3_snapshot_get(*(a1 + 16), "main", ppSnapshot);

  if (v3 || !ppSnapshot[0])
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = ppSnapshot[0];
  }

  return v1;
}

uint64_t sub_1B21D8224()
{
  sqlite3_snapshot_free(*(v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B21D8280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2122784(a6, v14);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  sub_1B2114CC4(__src);
  memcpy((v11 + 32), __src, 0xB8uLL);
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v11;

  sub_1B2142B5C(v14, v15);
  v18 = 2;
  v12 = sub_1B21D83A0(a1, v15);
  sub_1B212AC5C(v15, &qword_1EB7A1C18, &qword_1B2259C90);
  return v12;
}

uint64_t sub_1B21D83A0(uint64_t a1, uint64_t a2)
{
  sub_1B2146A54(&v9);
  if (!v2)
  {
    sub_1B2122784(&v10, v8);
    sub_1B21619D8(qword_1EB7A2350, &unk_1B22604F0);
    swift_allocObject();

    v6 = sub_1B215A0E0(v4, 0, 0, v8);
    v11 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    if (*(v6 + 24) == 1)
    {

      a2 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v7 = v6[2];

      sub_1B222FE44(v7, v6, &v11);
      *(v6 + 24) = 1;

      a2 = v11;
    }

    sub_1B2142D18(&v9);
  }

  return a2;
}

uint64_t FTS3.Diacritics.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

GRDBInternal::FTS3 __swiftcall FTS3.init()()
{
  *v0 = 863204454;
  v0[1] = 0xE400000000000000;
  return result;
}

uint64_t static FTS3.tokenize(_:withTokenizer:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for Configuration(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a3;
  *v9 = 1;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 23) = 0;
  *(v9 + 4) = MEMORY[0x1E69E7CC0];
  *(v9 + 20) = 0;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  v9[64] = 2;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  v9[88] = -1;
  *(v9 + 12) = 5;
  sub_1B2252110();
  *&v9[v7[19]] = 0;
  *&v9[v7[20]] = 0;
  v9[v7[21]] = 1;
  v9[v7[22]] = 0;
  v11 = &v9[v7[23]];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v9[v7[24]];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v9[v7[25]];
  type metadata accessor for DatabaseQueue();
  *v13 = 0;
  v13[1] = 0;
  swift_allocObject();
  DatabaseQueue.init(configuration:)(v9);
  v17 = v10;
  v18 = *(a3 + 1);
  v19 = a1;
  v20 = a2;
  v14 = sub_1B21FB5C4(sub_1B21D90D4, v16);

  return v14;
}

uint64_t sub_1B21D8738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v41 = a7;

  sub_1B214400C();
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12 >= *(v10 + 24) >> 1)
  {
    sub_1B214400C();
    v11 = v35;
  }

  *(v11 + 16) = v12 + 1;
  v13 = v11 + 16 * v12;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = (a4 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      *&v39[0] = 34;
      *(&v39[0] + 1) = 0xE100000000000000;

      MEMORY[0x1B2741EB0](v17, v16);

      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      v18 = v39[0];
      v19 = *(v11 + 16);
      if (v19 >= *(v11 + 24) >> 1)
      {
        sub_1B214400C();
        v11 = v20;
      }

      *(v11 + 16) = v19 + 1;
      *(v11 + 16 * v19 + 32) = v18;
      v15 += 2;
      --v14;
    }

    while (v14);
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v21 = sub_1B2252250();
  v23 = v22;

  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](v21, v23);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v24._countAndFlagsBits = 0xD00000000000002FLL;
  v39[0] = MEMORY[0x1E69E7CC0];
  v25.values._rawValue = v39;
  v24._object = 0x80000001B226EB20;
  Database.execute(sql:arguments:)(v24, v25);

  if (v26)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0E28, &unk_1B2254540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &protocol witness table for String;
    *(inited + 32) = a5;
    *(inited + 40) = a6;

    sub_1B2112554(inited, v39, v28, v29, v30, v31);
    v32 = v39[0];
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v33 = sub_1B21D8280(a1, 0xD00000000000003ALL, 0x80000001B226EB70, v32, *(&v32 + 1), v39);
    sub_1B212AC5C(v39, &qword_1EB7A1370, &unk_1B2257580);

    *v41 = v33;
  }

  return result;
}

uint64_t FTS3.moduleName.getter()
{
  v1 = *v0;

  return v1;
}

void *FTS3.makeTableDefinition(configuration:)()
{
  type metadata accessor for FTS3TableDefinition();
  result = swift_allocObject();
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

uint64_t FTS3.moduleArguments(for:in:)(void *a1)
{
  swift_beginAccess();
  v2 = a1[2];
  swift_beginAccess();
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[3];
    v5 = a1[5];
    if (*(v5 + 16))
    {

      v6 = sub_1B21175F8();
      sub_1B21D911C(v6, v7);

      MEMORY[0x1B2741EB0](v4, v3);

      MEMORY[0x1B2741EB0](32, 0xE100000000000000);
      v12 = *(v5 + 16);
      if (v12)
      {
        v37 = v2;
        v38 = MEMORY[0x1E69E7CC0];
        sub_1B2116B10(0, v12, 0, v8, v9, v10, v11);
        v13 = (v5 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;

          MEMORY[0x1B2741EB0](v14, v15);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);

          v21 = *(v38 + 16);
          v20 = *(v38 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1B2116B10(v20 > 1, v21 + 1, 1, v16, v17, v18, v19);
          }

          *(v38 + 16) = v21 + 1;
          v22 = v38 + 16 * v21;
          *(v22 + 32) = 34;
          *(v22 + 40) = 0xE100000000000000;
          v13 += 2;
          --v12;
        }

        while (v12);
        sub_1B21C2654(v4, v3);
        v2 = v37;
      }

      else
      {
        v27 = sub_1B21175F8();
        sub_1B21C2654(v27, v28);
      }

      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v29 = sub_1B2252250();
      v31 = v30;

      MEMORY[0x1B2741EB0](v29, v31);
    }

    else
    {

      v23 = sub_1B21175F8();
      sub_1B21D911C(v23, v24);

      MEMORY[0x1B2741EB0](v4, v3);
      v25 = sub_1B21175F8();
      sub_1B21C2654(v25, v26);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B214400C();
      v2 = v35;
    }

    v32 = *(v2 + 16);
    if (v32 >= *(v2 + 24) >> 1)
    {
      sub_1B214400C();
      v2 = v36;
    }

    *(v2 + 16) = v32 + 1;
    v33 = v2 + 16 * v32;
    *(v33 + 32) = 0x657A696E656B6F74;
    *(v33 + 40) = 0xE90000000000003DLL;
  }

  else
  {
  }

  return v2;
}

void *sub_1B21D8E8C@<X0>(void *a1@<X8>)
{
  result = FTS3.makeTableDefinition(configuration:)();
  *a1 = result;
  return result;
}

uint64_t FTS3TableDefinition.tokenizer.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_1B21D911C(v3, v4);
}

uint64_t FTS3TableDefinition.tokenizer.setter(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  *(v1 + 3) = v6;
  v1[5] = v2;
  return sub_1B21C2654(v3, v4);
}

Swift::Void __swiftcall FTS3TableDefinition.column(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  sub_1B21449A8();
  v4 = *(*(v1 + 16) + 16);
  sub_1B2144A08();
  v5 = *(v1 + 16);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = countAndFlagsBits;
  *(v6 + 40) = object;
  *(v1 + 16) = v5;
  swift_endAccess();
}

uint64_t FTS3TableDefinition.deinit()
{

  sub_1B21C2654(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t FTS3TableDefinition.__deallocating_deinit()
{
  FTS3TableDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B21D911C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B21D9164()
{
  result = qword_1EB7A2348;
  if (!qword_1EB7A2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2348);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FTS3.Diacritics(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B21D92BC@<X0>(uint64_t *__src@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 32);
  v7 = *__src;
  v6 = __src[1];
  memcpy(&v11[7], __src, 0xA2uLL);
  sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B22546B0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = 0;
  v9 = *a2;
  *(v8 + 72) = a2[1];
  *(v8 + 56) = v9;
  *(v8 + 88) = v5;
  memcpy((v8 + 89), v11, 0xA9uLL);
  *(v8 + 258) = 0;
  *a3 = v8;
}

uint64_t JoinAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B21D93E0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21D941C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B21D9460(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = JoinAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B21D94BC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B21D94F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21D9534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21D9588(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v36 = MEMORY[0x1E69E7CC0];
  result = sub_1B216ECE4(0, v6, 0);
  v28 = v5;
  v29 = v4;
  v26 = a1;
  v27 = a2;
  v30 = v6;
  if (v6)
  {
    v8 = (a2 + 40);
    v9 = (a1 + 40);
    v10 = v5;
    while (v4)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = *v9;
      v12 = *v8;
      v32 = *(v9 - 1);
      v33 = *(v8 - 1);
      v14 = *(v36 + 16);
      v13 = *(v36 + 24);
      v34 = v14 + 1;

      if (v14 >= v13 >> 1)
      {
        result = sub_1B216ECE4(v13 > 1, v34, 1);
      }

      *(v36 + 16) = v34;
      v15 = (v36 + 32 * v14);
      v15[4] = v32;
      v15[5] = v11;
      --v10;
      v15[6] = v33;
      v15[7] = v12;
      --v4;
      v8 += 2;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v30;
    v35 = 16 * v30;
    v17 = v26;
    for (i = v27; v29 != v16; i += 16)
    {
      if (v16 >= v29)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (v28 == v16)
      {
        break;
      }

      if (v16 >= v28)
      {
        goto LABEL_25;
      }

      v31 = v16;
      v19 = *(v17 + v35 + 32);
      v20 = *(v17 + v35 + 40);
      v21 = *(i + v35 + 32);
      v22 = *(i + v35 + 40);
      v24 = *(v36 + 16);
      v23 = *(v36 + 24);

      if (v24 >= v23 >> 1)
      {
        result = sub_1B216ECE4(v23 > 1, v24 + 1, 1);
      }

      *(v36 + 16) = v24 + 1;
      v25 = (v36 + 32 * v24);
      v25[4] = v19;
      v25[5] = v20;
      v25[6] = v21;
      v25[7] = v22;
      v16 = v31 + 1;
      v17 += 16;
    }

    return v36;
  }

  return result;
}

uint64_t sub_1B21D9790(uint64_t a1)
{
  v3 = v1;
  v5 = v3[4];
  if (v5)
  {
    v6 = v3[5];
    if (v6)
    {
      if (*(v5 + 16) != *(v6 + 16))
      {
        goto LABEL_47;
      }

      return sub_1B21D9588(v3[4], v6);
    }
  }

  v8 = *v3;
  v7 = v3[1];
  v9 = Database.foreignKeys(on:)(*v3, v7);
  if (v2)
  {
    return a1;
  }

  v10 = v9;
  v78 = v3;
  v66 = v7;
  v67 = a1;
  v69 = 0;
  v65 = v8;
  v11 = 0;
  v72 = *(v9 + 16);
  v73 = v5;
  v12 = v9 + 56;
  v70 = MEMORY[0x1E69E7CC0];
  v68 = v9 + 56;
LABEL_7:
  for (i = (v12 + 32 * v11); ; i += 4)
  {
    if (v72 == v11)
    {

      v59 = *(v70 + 16);
      if (v59)
      {
        a1 = *(v70 + 56);
        if (v59 != 1)
        {

          sub_1B2252CD0();

          sub_1B211583C();
          MEMORY[0x1B2741EB0](v65, v66);
          sub_1B21161F8();
          MEMORY[0x1B2741EB0](v78[2], v78[3]);
          goto LABEL_47;
        }

LABEL_30:

        return a1;
      }

      if (v73)
      {
        a1 = v67;
        Database.primaryKey(_:)();
        if (v69)
        {

          return a1;
        }

        if (v76)
        {
          if (v76 == 1)
          {
            v61 = v74;
          }

          else
          {
            v61 = &unk_1F2968E80;
          }
        }

        else
        {
          sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
          v61 = swift_allocObject();
          v61[1] = xmmword_1B22546B0;
          *(v61 + 4) = v74;
          *(v61 + 5) = v75;
        }

        if (*(v73 + 16) == *(v61 + 2))
        {

          a1 = sub_1B21D9588(v62, v61);

          goto LABEL_30;
        }
      }

      sub_1B2252CD0();

      sub_1B211583C();
      MEMORY[0x1B2741EB0](v65, v66);
      sub_1B21161F8();
      MEMORY[0x1B2741EB0](v78[2], v78[3]);
      goto LABEL_47;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v14 = v10;
    v15 = *(i - 2);
    v71 = *(i - 3);
    v16 = *(i - 1);
    v17 = *i;
    v18 = sub_1B2252220();
    v20 = v19;
    if (v18 == sub_1B2252220() && v20 == v21)
    {
    }

    else
    {
      v23 = sub_1B22531F0();

      if ((v23 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (!v73 || (, sub_1B21166B0(), v27 = sub_1B2169104(v24, v25, v26), , sub_1B21166B0(), v31 = sub_1B216911C(v28, v29, v30), sub_1B2140704(v27, v31, v32, v33, v34, v35, v36, v37, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84), v39 = v38, , , (v39 & 1) != 0))
    {
      if (!v78[5] || (, sub_1B21166B0(), v43 = sub_1B2169104(v40, v41, v42), , sub_1B21166B0(), v47 = sub_1B216911C(v44, v45, v46), sub_1B2140704(v43, v47, v48, v49, v50, v51, v52, v53, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84), v55 = v54, , , (v55 & 1) != 0))
      {
        v56 = v70;
        v74 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B216EC98();
          v56 = v70;
        }

        v10 = v14;
        v57 = *(v56 + 16);
        if (v57 >= *(v56 + 24) >> 1)
        {
          sub_1B216EC98();
          v56 = v70;
        }

        ++v11;
        *(v56 + 16) = v57 + 1;
        v70 = v56;
        v58 = (v56 + 32 * v57);
        v58[4] = v71;
        v58[5] = v15;
        v58[6] = v16;
        v58[7] = v17;
        v12 = v68;
        goto LABEL_7;
      }
    }

LABEL_21:

    ++v11;
    v10 = v14;
  }

  __break(1u);
LABEL_47:
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B21D9D18(char a1, uint64_t a2)
{
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    if (v9)
    {
      sub_1B21151D4();
      v10 = v16;
      v11 = a2 + 56;
      do
      {
        sub_1B2117608();

        if (v6 >= v7 >> 1)
        {
          sub_1B2112B10();
          v10 = v16;
        }

        *(v10 + 16) = v3;
        v12 = (v10 + 32 * v6);
        v12[4] = v4;
        v12[5] = a2;
        v12[6] = v5;
        v12[7] = v2;
        v11 += 32;
        --v9;
      }

      while (v9);
    }
  }

  else if (v9)
  {
    sub_1B21151D4();
    v10 = v16;
    v13 = a2 + 56;
    do
    {
      sub_1B2117608();

      if (v6 >= v7 >> 1)
      {
        sub_1B2112B10();
        v10 = v16;
      }

      *(v10 + 16) = v3;
      v14 = (v10 + 32 * v6);
      v14[4] = v5;
      v14[5] = v2;
      v14[6] = v4;
      v14[7] = a2;
      v13 += 32;
      --v9;
    }

    while (v9);
  }

  return v10;
}