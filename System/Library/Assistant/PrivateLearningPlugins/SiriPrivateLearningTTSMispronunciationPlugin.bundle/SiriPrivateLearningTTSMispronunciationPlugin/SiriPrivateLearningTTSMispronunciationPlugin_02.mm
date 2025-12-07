Swift::Int sub_28648(uint64_t a1)
{
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

unint64_t sub_28728@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2F944(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_28758(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x525341764ELL;
  v5 = 0xE500000000000000;
  v6 = 0x41504D4153;
  v7 = 0xE400000000000000;
  v8 = 726148684;
  if (v2 != 3)
  {
    v8 = 0x746573656E6F6870;
    v7 = 0xED0000656D616E5FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4D4153585F535454;
    v3 = 0xEA00000000004150;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_28808@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_44:
    result = sub_138CC((a5 > 1), v6, 1, result);
LABEL_36:
    *(result + 16) = v6;
    v32 = (result + 32 * v5);
    v32[4] = v7;
    v32[5] = v8;
    v32[6] = v9;
    v32[7] = v10;
    return result;
  }

  v11 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!result || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_344C0();
    v8 = v29;
    v9 = v30;
    v10 = v31;

    result = sub_138CC(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(result + 16);
    a5 = *(result + 24);
    v6 = v5 + 1;
    if (v5 < a5 >> 1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v14 = 4 * v13;
  v43 = _swiftEmptyArrayStorage;
  v15 = 15;
  v16 = 4294959064;
  v42 = result;
  do
  {
    v17 = v15 >> 14;
    if (v15 >> 14 == v14)
    {
      break;
    }

    while (2)
    {
      v10 = v15;
      while (1)
      {
        v18 = sub_344B0();
        v9 = v19;
        result = sub_2DBA4(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_48;
        }

        v20 = result;

        if ((v20 - 14) > 0xFFFFFFFB || (v20 - 8232) < 2 || v20 == 133)
        {
          break;
        }

        v10 = sub_34450();
        v17 = v10 >> 14;
        if (v10 >> 14 == v14)
        {
          goto LABEL_32;
        }
      }

      if (v15 >> 14 == v17 && (a2 & 1) != 0)
      {
        v15 = sub_34450();
        v17 = v15 >> 14;
        if (v15 >> 14 != v14)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v17 < v15 >> 14)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return result;
    }

    v21 = sub_344C0();
    v39 = v23;
    v40 = v22;
    v24 = v43;
    v41 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_138CC(0, *(v43 + 2) + 1, 1, v43);
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v43 = v24;
    if (v27 >= v26 >> 1)
    {
      v43 = sub_138CC((v26 > 1), v27 + 1, 1, v24);
    }

    v9 = v43;
    *(v43 + 2) = v27 + 1;
    v28 = &v43[32 * v27];
    *(v28 + 4) = v21;
    *(v28 + 5) = v41;
    *(v28 + 6) = v40;
    *(v28 + 7) = v39;
    v15 = sub_34450();
  }

  while (*(v43 + 2) != v42);
LABEL_32:
  if (v15 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v43;
  }

  if (v14 < v15 >> 14)
  {
    __break(1u);
    goto LABEL_46;
  }

  v11 = sub_344C0();
  v16 = v33;
  v9 = v34;
  v10 = v35;

  v14 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_46:
    result = sub_138CC(0, *(v14 + 16) + 1, 1, v14);
    goto LABEL_40;
  }

  result = v43;
LABEL_40:
  v37 = *(result + 16);
  v36 = *(result + 24);
  if (v37 >= v36 >> 1)
  {
    result = sub_138CC((v36 > 1), v37 + 1, 1, result);
  }

  *(result + 16) = v37 + 1;
  v38 = (result + 32 * v37);
  v38[4] = v11;
  v38[5] = v16;
  v38[6] = v9;
  v38[7] = v10;
  return result;
}

char *sub_28BF0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = _swiftEmptyArrayStorage;
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_346C0();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_346B0() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_346B0();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_346D0();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_138CC(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_138CC((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_346B0();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_346D0();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_138CC((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_138CC(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_346D0();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_138CC(0, 1, 1, _swiftEmptyArrayStorage);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_28FF8(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v51 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v50[0] = (&stru_20 + 12);
  v50[1] = 0xE100000000000000;
  v49 = v50;

  v7 = sub_28BF0(0x7FFFFFFFFFFFFFFFLL, 0, sub_2F990, v48, v3, v4, v5, v6);
  v8 = *(v7 + 2);
  if (v8)
  {
    v50[0] = _swiftEmptyArrayStorage;
    v9 = v7;
    result = sub_2FACC(0, v8, 0);
    v11 = 0;
    v12 = v50[0];
    v13 = v9 + 56;
    while (v11 < *(v9 + 2))
    {

      v14 = sub_34420();
      v16 = v15;

      v50[0] = v12;
      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_2FACC((v17 > 1), v18 + 1, 1);
        v12 = v50[0];
      }

      ++v11;
      v12[2] = v18 + 1;
      v19 = &v12[2 * v18];
      v19[4] = v14;
      v19[5] = v16;
      v13 += 32;
      if (v8 == v11)
      {

        goto LABEL_9;
      }
    }
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
LABEL_9:
    v20 = *v51;
    v21 = *v51 + 64;
    v22 = 1 << *(*v51 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(*v51 + 64);
    v25 = (v22 + 63) >> 6;
    v46 = v12;
    v43 = v12 + 4;

    v26 = 0;
    v27 = a3;
    v44 = v20;
    while (v24)
    {
      v28 = v24;
LABEL_18:
      v24 = (v28 - 1) & v28;
      if (*(v27 + 16))
      {
        v30 = *(*(v20 + 48) + (__clz(__rbit64(v28)) | (v26 << 6)));
        result = sub_2A500(v30);
        if (v31)
        {
          v32 = *(*(v27 + 56) + 8 * result);
          result = sub_29358(v50, v30);
          v45 = result;
          v34 = *v33;
          if (*v33)
          {
            if ((v32 & 0x8000000000000000) != 0)
            {
              goto LABEL_32;
            }

            if (v32 >= v46[2])
            {
              goto LABEL_33;
            }

            v35 = v33;
            v36 = &v43[2 * v32];
            v42 = *v36;
            v37 = v36[1];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v35 = v34;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v34 = sub_13B0C(0, *(v34 + 2) + 1, 1, v34);
              *v35 = v34;
            }

            v40 = *(v34 + 2);
            v39 = *(v34 + 3);
            if (v40 >= v39 >> 1)
            {
              v34 = sub_13B0C((v39 > 1), v40 + 1, 1, v34);
              *v35 = v34;
            }

            *(v34 + 2) = v40 + 1;
            v41 = &v34[16 * v40];
            *(v41 + 4) = v42;
            *(v41 + 5) = v37;
          }

          result = v45(v50, 0);
          v27 = a3;
          v20 = v44;
        }
      }
    }

    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v29 >= v25)
      {
      }

      v28 = *(v21 + 8 * v29);
      ++v26;
      if (v28)
      {
        v26 = v29;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t (*sub_29358(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2DFA0(v4, a2);
  return sub_293D0;
}

void sub_293D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2941C(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v76 = a5;
  v7 = a3;
  if (!*(a6 + 16) || (v12 = sub_2A500(a3), (v13 & 1) == 0))
  {
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_34890(28);
    v84._countAndFlagsBits = 0x74276E646C756F43;
    v84._object = 0xEE0020646E696620;
    sub_34460(v84);
    LOBYTE(v81) = v7;
LABEL_30:
    sub_34980();
    v86._countAndFlagsBits = 0x6E6F6870206E6920;
    v86._object = 0xEC00000074657365;
    sub_34460(v86);
LABEL_31:
    v36 = v77;
    v37 = v78;
    sub_2A4AC();
    swift_allocError();
    *v38 = v36;
    *(v38 + 8) = v37;
    *(v38 + 16) = 1;
    swift_willThrow();
    return v37;
  }

  if (!*(a6 + 16))
  {
LABEL_29:
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_34890(28);
    v85._countAndFlagsBits = 0x74276E646C756F43;
    v85._object = 0xEE0020646E696620;
    sub_34460(v85);
    LOBYTE(v81) = a4;
    goto LABEL_30;
  }

  v14 = *(*(a6 + 56) + 8 * v12);

  v15 = sub_2A500(a4);
  if ((v16 & 1) == 0)
  {

    goto LABEL_29;
  }

  v17 = *(*(a6 + 56) + 8 * v15);
  v77 = a1;
  v78 = a2;
  __chkstk_darwin(v15);
  v68 = &v77;

  result = sub_2B090(sub_2E9C0, &v66, v14);
  v72 = v6;
  if ((result & 1) == 0)
  {

    v77 = 0;
    v78 = 0xE000000000000000;
    sub_34890(41);
    v87._countAndFlagsBits = 0x74276E646C756F43;
    v87._object = 0xEE0020646E696620;
    sub_34460(v87);
    v88._countAndFlagsBits = a1;
    v88._object = a2;
    sub_34460(v88);
    v89._object = 0x8000000000039C40;
    v89._countAndFlagsBits = 0xD000000000000017;
    sub_34460(v89);
    LOBYTE(v81) = v7;
    sub_34980();
    goto LABEL_31;
  }

  v74 = v17;
  v19 = *(v14 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (v19)
  {
    v21 = 0;
    v75 = *(v14 + 16);
    v70 = v19 - 1;
    v71 = v14 + 40;
    do
    {
      v73 = v20;
      v22 = (v71 + 16 * v21);
      v23 = v21;
      while (1)
      {
        if (v23 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        v25 = *(v22 - 1);
        v24 = *v22;
        if (v76)
        {
          swift_bridgeObjectRetain_n();
          v26 = v25;
          v27 = v24;
        }

        else
        {
          v77 = *(v22 - 1);
          v78 = v24;
          v81 = 42;
          v82 = 0xE100000000000000;
          v79 = 0;
          v80 = 0xE000000000000000;
          v28 = sub_324C();

          v68 = v28;
          v69 = v28;
          v67 = v28;
          v66 = &type metadata for String;
          v26 = sub_34710();
          v27 = v29;
        }

        if (v26 == a1 && v27 == a2)
        {
          break;
        }

        v31 = sub_34BC0();

        if (v31)
        {
          goto LABEL_21;
        }

        ++v23;

        v22 += 2;
        if (v75 == v23)
        {
          v20 = v73;
          goto LABEL_34;
        }
      }

LABEL_21:
      v20 = v73;
      result = swift_isUniquelyReferenced_nonNull_native();
      v83 = v20;
      if ((result & 1) == 0)
      {
        result = sub_2FB2C(0, v20[2] + 1, 1);
        v20 = v83;
      }

      v33 = v20[2];
      v32 = v20[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        result = sub_2FB2C((v32 > 1), v33 + 1, 1);
        v34 = v33 + 1;
        v20 = v83;
      }

      v21 = v23 + 1;
      v20[2] = v34;
      v35 = &v20[3 * v33];
      v35[4] = v23;
      v35[5] = v25;
      v35[6] = v24;
    }

    while (v70 != v23);
  }

LABEL_34:

  v39 = v20[2];
  if (v39)
  {
    v77 = _swiftEmptyArrayStorage;
    sub_2FAEC(0, v39, 0);
    v40 = v77;
    v41 = v77[2];
    v42 = 4;
    do
    {
      v43 = v20[v42];
      v77 = v40;
      v44 = v40[3];
      if (v41 >= v44 >> 1)
      {
        sub_2FAEC((v44 > 1), v41 + 1, 1);
        v40 = v77;
      }

      v40[2] = v41 + 1;
      v40[v41 + 4] = v43;
      v42 += 3;
      ++v41;
      --v39;
    }

    while (v39);
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
  }

  v45 = v40[2];
  v46 = v74;
  if (!v45)
  {

    v49 = _swiftEmptyArrayStorage;
LABEL_56:

    v63 = sub_2E438(v49);

    v64 = *(v63 + 16);
    if (!v64)
    {
      goto LABEL_59;
    }

    v37 = sub_13C18(*(v63 + 16), 0);
    v65 = sub_2E2E0(&v77, v37 + 4, v64, v63);
    sub_2E9DC(v77);
    if (v65 != v64)
    {
      __break(1u);
LABEL_59:

      return _swiftEmptyArrayStorage;
    }

    return v37;
  }

  v47 = v40 + 4;
  v48 = v74 + 32;
  v49 = _swiftEmptyArrayStorage;
  while (1)
  {
    v51 = *v47++;
    v50 = v51;
    if ((v51 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v50 >= *(v46 + 16))
    {
      goto LABEL_63;
    }

    v52 = (v48 + 16 * v50);
    v54 = *v52;
    v53 = v52[1];
    v77 = v54;
    v78 = v53;
    v81 = 42;
    v82 = 0xE100000000000000;
    v79 = 0;
    v80 = 0xE000000000000000;
    v68 = sub_324C();
    v69 = v68;
    v67 = v68;
    v66 = &type metadata for String;
    v55 = sub_34710();
    v57 = v56;
    v58 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v58 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v58)
    {
      v59 = v55;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_13B0C(0, *(v49 + 2) + 1, 1, v49);
        v49 = result;
      }

      v61 = *(v49 + 2);
      v60 = *(v49 + 3);
      if (v61 >= v60 >> 1)
      {
        result = sub_13B0C((v60 > 1), v61 + 1, 1, v49);
        v49 = result;
      }

      *(v49 + 2) = v61 + 1;
      v62 = &v49[16 * v61];
      *(v62 + 4) = v59;
      *(v62 + 5) = v57;
      v46 = v74;
      if (!--v45)
      {
LABEL_54:

        goto LABEL_56;
      }
    }

    else
    {

      if (!--v45)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_29B40()
{
  v0 = sub_33AB0();
  sub_2E9E4(v0, qword_4FA60);
  sub_3034(v0, qword_4FA60);
  return sub_33A90();
}

void *sub_29BA4(char *a1, int a2, char a3)
{
  LODWORD(v6) = a2;
  v7 = a1;
  v8 = a1[OBJC_IVAR___PhonemeString_encoding];
  if (sub_249A0(a1[OBJC_IVAR___PhonemeString_encoding], a2))
  {
    if (qword_4E5A8 == -1)
    {
LABEL_3:
      v9 = sub_342A0();
      sub_3034(v9, qword_53A18);
      v10 = sub_34280();
      v11 = sub_345D0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v92[0] = v13;
        v14 = 0xE500000000000000;
        *v12 = 136315138;
        v15 = 0x525341766ELL;
        v16 = 0xE500000000000000;
        v17 = 0x61706D6173;
        if (v6 != 2)
        {
          v17 = 6844012;
          v16 = 0xE300000000000000;
        }

        if (v6)
        {
          v15 = 0x61706D617378;
          v14 = 0xE600000000000000;
        }

        if (v6 <= 1u)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        if (v6 <= 1u)
        {
          v19 = v14;
        }

        else
        {
          v19 = v16;
        }

        v20 = sub_22960(v18, v19, v92);

        *(v12 + 4) = v20;
        _os_log_impl(&dword_0, v10, v11, "Source encoding is same as target phoneme format: %s", v12, 0xCu);
        sub_3364(v13);
      }

      sub_3204(&unk_4F4B0, &qword_36C70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_35930;
      *(inited + 32) = v7;
      v22 = v7;
      v3 = sub_2E860(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      return v3;
    }

LABEL_67:
    swift_once();
    goto LABEL_3;
  }

  v89 = *(v3 + 16);
  if (!v89)
  {
    sub_2A4AC();
    swift_allocError();
    *v39 = 0xD000000000000023;
    *(v39 + 8) = 0x8000000000039B70;
    *(v39 + 16) = 0;
LABEL_37:
    swift_willThrow();
    return v3;
  }

  v93 = v6;
  v23 = v4;
  v24 = sub_15020();
  v3 = v24;
  v6 = *(v24 + 2);
  v25 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v26 = 0;
    v27 = v24 + 40;
    v85 = v24 + 40;
    v87 = v7;
LABEL_19:
    v81 = v25;
    v28 = &v27[16 * v26];
    v29 = v26;
    while (v29 < *(v3 + 16))
    {
      v30 = *(v28 - 1);
      v7 = *v28;

      v31 = sub_2941C(v30, v7, v8, v93, a3 & 1, v89);
      if (v23)
      {

        return v3;
      }

      v32 = v31;

      if (*(v32 + 16))
      {
        v33 = v81;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_12D88(0, v81[2] + 1, 1, v81);
        }

        v34 = v33;
        v35 = v33[2];
        v36 = v34;
        v37 = v34[3];
        if (v35 >= v37 >> 1)
        {
          v36 = sub_12D88((v37 > 1), v35 + 1, 1, v36);
        }

        v26 = v29 + 1;
        v36[2] = v35 + 1;
        v38 = &v36[v35];
        v25 = v36;
        v38[4] = v32;
        v27 = v85;
        v7 = v87;
        if (v6 - 1 != v29)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }

      ++v29;

      v28 += 2;
      if (v6 == v29)
      {
        v7 = v87;
        v25 = v81;
        goto LABEL_33;
      }
    }

    goto LABEL_66;
  }

LABEL_33:

  if (!v25[2])
  {

    sub_34890(53);
    v95._countAndFlagsBits = 0xD000000000000025;
    v95._object = 0x8000000000039BA0;
    sub_34460(v95);
    sub_34980();
    v96._countAndFlagsBits = 32;
    v96._object = 0xE100000000000000;
    sub_34460(v96);
    v45 = [v7 description];
    v46 = sub_343B0();
    v48 = v47;

    v97._countAndFlagsBits = v46;
    v97._object = v48;
    sub_34460(v97);

    v98._countAndFlagsBits = 0x3A74656772617420;
    v98._object = 0xE900000000000020;
    sub_34460(v98);
    v94 = v93;
    sub_34980();
    v3 = 0xE000000000000000;
    sub_2A4AC();
    swift_allocError();
    *v49 = 0;
    *(v49 + 8) = 0xE000000000000000;
    *(v49 + 16) = 1;
    goto LABEL_37;
  }

  v40 = v25 + 4;
  v6 = v25[4];

  v42 = sub_2E4D0(v93, v89);
  result = v25;
  v44 = v23;
  if (v23)
  {

    return v3;
  }

  v50 = v41;
  v51 = result[2];
  v86 = v42;
  if (v51 == 1)
  {
LABEL_58:

    v66 = *(v6 + 2);
    if (v66)
    {
      v92[0] = _swiftEmptyArrayStorage;
      v67 = v50;
      sub_34930();
      v68 = type metadata accessor for PhonemeString();
      v69 = (v6 + 40);
      v70 = v93;
      do
      {
        v72 = *(v69 - 1);
        v71 = *v69;
        v73 = objc_allocWithZone(v68);
        v74 = &v73[OBJC_IVAR___PhonemeString_symbols];
        *v74 = v72;
        v74[1] = v71;
        v73[OBJC_IVAR___PhonemeString_encoding] = v70;
        v75 = &v73[OBJC_IVAR___PhonemeString_boundary];
        *v75 = v86;
        v75[1] = v67;
        v91.receiver = v73;
        v91.super_class = v68;

        objc_msgSendSuper2(&v91, "init");
        sub_34910();
        sub_34940();
        sub_34950();
        sub_34920();
        v69 += 2;
        --v66;
      }

      while (v66);

      v76 = v92[0];
    }

    else
    {

      v76 = _swiftEmptyArrayStorage;
    }

    v3 = sub_2E860(v76);

    return v3;
  }

  if (v51)
  {
    v52 = 1;
    v90 = v41;
    v77 = result[2];
    v78 = v40;
    while (1)
    {
      v53 = v40[v52];
      if (*(v53 + 16))
      {
        break;
      }

LABEL_43:
      if (++v52 == v51)
      {
        goto LABEL_58;
      }
    }

    v84 = *(v6 + 2);

    v54 = 0;
    v55 = v6 + 24;
    v7 = _swiftEmptyArrayStorage;
LABEL_46:
    v56 = &v55[16 * v54];
    while (1)
    {
      if (v84 == v54)
      {

        v6 = v7;
        goto LABEL_43;
      }

      if (v54 >= v84)
      {
        break;
      }

      v57 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_65;
      }

      v58 = *(v53 + 16);
      v56 += 2;
      ++v54;
      if (v58)
      {
        v79 = v55;
        v80 = v52;
        v82 = v6;
        v83 = v44;
        v54 = v57;
        v59 = *v56;
        v88 = *(v56 - 1);

        v60 = (v53 + 40);
        do
        {
          v62 = *(v60 - 1);
          v61 = *v60;
          v92[0] = v88;
          v92[1] = v59;

          v99._countAndFlagsBits = v86;
          v99._object = v90;
          sub_34460(v99);
          v100._countAndFlagsBits = v62;
          v100._object = v61;
          sub_34460(v100);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_13B0C(0, *(v7 + 2) + 1, 1, v7);
          }

          v64 = *(v7 + 2);
          v63 = *(v7 + 3);
          if (v64 >= v63 >> 1)
          {
            v7 = sub_13B0C((v63 > 1), v64 + 1, 1, v7);
          }

          *(v7 + 2) = v64 + 1;
          v65 = &v7[16 * v64];
          *(v65 + 4) = v88;
          *(v65 + 5) = v59;
          v60 += 2;
          --v58;
        }

        while (v58);

        v6 = v82;
        v44 = v83;
        v50 = v90;
        v51 = v77;
        v40 = v78;
        v52 = v80;
        v55 = v79;
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  __break(1u);
  return result;
}

uint64_t sub_2A440()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2A4AC()
{
  result = qword_4FB30;
  if (!qword_4FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB30);
  }

  return result;
}

unint64_t sub_2A500(uint64_t a1)
{
  v1 = a1;
  sub_34C40();
  sub_34430();

  v2 = sub_34C70();

  return sub_2A848(v1, v2);
}

unint64_t sub_2A60C(uint64_t a1, uint64_t a2)
{
  sub_34C40();
  sub_34430();
  v4 = sub_34C70();

  return sub_2AA34(a1, a2, v4);
}

unint64_t sub_2A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_34C40();
  sub_162F8(v10, a1, a2, a3, a4);
  v8 = sub_34C70();

  return sub_2AAEC(a1, a2, a3, a4, v8);
}

unint64_t sub_2A71C(uint64_t a1)
{
  sub_343B0();
  sub_34C40();
  sub_34430();
  v2 = sub_34C70();

  return sub_2ADCC(a1, v2);
}

unint64_t sub_2A7B0(uint64_t a1)
{
  sub_34070();
  sub_2F7A4(&qword_4FB58, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
  v2 = sub_34300();

  return sub_2AED0(a1, v2);
}

unint64_t sub_2A848(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA00000000004150;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v19 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v19 + 48) + v4))
        {
          v8 = 0x4D4153585F535454;
        }

        else
        {
          v8 = 0x525341764ELL;
        }

        if (*(*(v19 + 48) + v4))
        {
          v9 = 0xEA00000000004150;
        }

        else
        {
          v9 = 0xE500000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE500000000000000;
        v8 = 0x41504D4153;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 726148684;
        }

        else
        {
          v8 = 0x746573656E6F6870;
        }

        if (v7 == 3)
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xED0000656D616E5FLL;
        }
      }

      if (v6 == 3)
      {
        v10 = 726148684;
      }

      else
      {
        v10 = 0x746573656E6F6870;
      }

      if (v6 == 3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xED0000656D616E5FLL;
      }

      if (v6 == 2)
      {
        v10 = 0x41504D4153;
        v11 = 0xE500000000000000;
      }

      if (v6)
      {
        v12 = 0x4D4153585F535454;
      }

      else
      {
        v12 = 0x525341764ELL;
      }

      if (!v6)
      {
        v5 = 0xE500000000000000;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_34BC0();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA00000000004150;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2AA34(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_34BC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2AAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  v19 = v5 + 64;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v18 = ~v6;
    do
    {
      v8 = (*(v24 + 48) + 32 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      sub_34C40();
      sub_3204(&qword_4F100, &qword_36CA0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_361D0;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      *(v13 + 48) = v11;
      *(v13 + 56) = v12;
      v25 = v13;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      sub_2B13C(&v25);

      sub_3204(&qword_4F110, &qword_36CB0);
      sub_A830(&qword_4F300, &qword_4F110, &qword_36CB0, &protocol conformance descriptor for [A]);
      sub_34320();

      sub_34430();

      v14 = sub_34C70();
      sub_34C40();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_361D0;
      *(v15 + 32) = a1;
      *(v15 + 40) = a2;
      *(v15 + 48) = a3;
      *(v15 + 56) = a4;
      v25 = v15;

      sub_2B13C(&v25);

      sub_34320();

      sub_34430();

      v16 = sub_34C70();

      if (v14 == v16)
      {
        break;
      }

      v7 = (v7 + 1) & v18;
    }

    while (((*(v19 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_2ADCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_343B0();
      v8 = v7;
      if (v6 == sub_343B0() && v8 == v9)
      {
        break;
      }

      v11 = sub_34BC0();

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

unint64_t sub_2AED0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_34070();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_2F7A4(&qword_4FA28, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      v15 = sub_34360();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2B090(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_2B13C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2E2CC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2B1A8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_2B1A8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_34BA0(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_34520();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2B370(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_2B2A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2B2A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_34BC0(), (result & 1) == 0))
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

uint64_t sub_2B370(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
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
      result = sub_2BC00(v8);
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
        sub_2B94C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = _swiftEmptyArrayStorage;
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
        result = sub_34BC0();
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
            result = sub_34BC0();
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
      result = sub_12C84(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_12C84((v39 > 1), v40 + 1, 1, v8);
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
        sub_2B94C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2BC00(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2BB74(v44);
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
    if (v37 || (result = sub_34BC0(), (result & 1) == 0))
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

uint64_t sub_2B94C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_34BC0() & 1) != 0)
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
      if (!v21 && (sub_34BC0() & 1) != 0)
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

uint64_t sub_2BB74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2BC00(v3);
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

Swift::Int sub_2BC14(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_34760() + 1) & ~v5;
    do
    {
      sub_34C40();
      sub_34430();

      result = sub_34C70();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2BE50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2A500(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_17C20();
    result = v17;
    goto LABEL_8;
  }

  sub_1746C(v14, a3 & 1);
  result = sub_2A500(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_34BE0();
  __break(1u);
  return result;
}

uint64_t sub_2BF74(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_347E0();

    if (v9)
    {

      type metadata accessor for PhonemeString();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_347D0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2C3DC(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_2C5BC(v20 + 1);
    }

    v18 = v8;
    sub_2CC94(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PhonemeString();
  v11 = sub_34670(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2CD18(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_34680();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2C18C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_34C40();
  v7 = a2 & 1;
  sub_34C50(v7);
  v8 = sub_34C70();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2CE78(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_2C28C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_34C40();
  sub_34430();
  v8 = sub_34C70();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_34BC0() & 1) != 0)
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

    sub_2CFCC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_2C3DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_3204(&qword_4FB38, &qword_38350);
    v2 = sub_34850();
    v15 = v2;
    sub_34790();
    if (sub_34800())
    {
      type metadata accessor for PhonemeString();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2C5BC(v9 + 1);
        }

        v2 = v15;
        result = sub_34670(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_34800());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_2C5BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_3204(&qword_4FB38, &qword_38350);
  result = sub_34840();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_34670(*(v5 + 40));
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2C7E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_3204(&qword_4FB50, &unk_38360);
  result = sub_34840();
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
      sub_34C40();
      sub_34C50(v17);
      result = sub_34C70();
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

uint64_t sub_2CA34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_3204(&qword_4FB40, &qword_38358);
  result = sub_34840();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_34C40();
      sub_34430();
      result = sub_34C70();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2CC94(uint64_t a1, void *a2)
{
  sub_34670(a2[5]);
  result = sub_34770();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_2CD18(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2C5BC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2D14C();
      goto LABEL_12;
    }

    sub_2D538(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_34670(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for PhonemeString();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_34680();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_34BD0();
  __break(1u);
}

uint64_t sub_2CE78(uint64_t result, unint64_t a2, char a3)
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
    sub_2C7E4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2D29C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2D74C(v5 + 1);
  }

  v8 = *v3;
  sub_34C40();
  sub_34C50(v4 & 1);
  result = sub_34C70();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
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
  *(*(v11 + 48) + a2) = v4 & 1;
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
  result = sub_34BD0();
  __break(1u);
  return result;
}

uint64_t sub_2CFCC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2CA34(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2D3DC();
      goto LABEL_16;
    }

    sub_2D96C(v8 + 1);
  }

  v10 = *v4;
  sub_34C40();
  sub_34430();
  result = sub_34C70();
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

      result = sub_34BC0();
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
  result = sub_34BD0();
  __break(1u);
  return result;
}

id sub_2D14C()
{
  v1 = v0;
  sub_3204(&qword_4FB38, &qword_38350);
  v2 = *v0;
  v3 = sub_34830();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

void *sub_2D29C()
{
  v1 = v0;
  sub_3204(&qword_4FB50, &unk_38360);
  v2 = *v0;
  v3 = sub_34830();
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

void *sub_2D3DC()
{
  v1 = v0;
  sub_3204(&qword_4FB40, &qword_38358);
  v2 = *v0;
  v3 = sub_34830();
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

uint64_t sub_2D538(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_3204(&qword_4FB38, &qword_38350);
  result = sub_34840();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_34670(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

uint64_t sub_2D74C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_3204(&qword_4FB50, &unk_38360);
  result = sub_34840();
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
      sub_34C40();
      sub_34C50(v16);
      result = sub_34C70();
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

uint64_t sub_2D96C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_3204(&qword_4FB40, &qword_38358);
  result = sub_34840();
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
      sub_34C40();

      sub_34430();
      result = sub_34C70();
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

unint64_t sub_2DBA4(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_2DCF4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_34880();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_34900() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_2DCF4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2DD8C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2DE00(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2DD8C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2DF24(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2DE00(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_34900();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_2DF24(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_34490();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_34480();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void (*sub_2DFA0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_2E298(v5);
  v5[9] = sub_2E0A4((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_2E044;
}

void sub_2E044(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_2E0A4(uint64_t a1, uint64_t a2, char a3))(Swift::Int result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_2A500(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_17D6C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_17780(v14, a3 & 1);
    v9 = sub_2A500(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_34BE0();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_2E1C0;
}

Swift::Int sub_2E1C0(Swift::Int result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 25);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = *(result + 16);
    v5 = **(result + 8);
    if (*(result + 25))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_2BC14(*(result + 16), **(result + 8));
    }

    return result;
  }

  v4 = *(result + 16);
  v5 = **(result + 8);
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2E298(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2E2C0;
}

void *sub_2E2E0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v14 = (&dword_0 + 1);
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
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
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

uint64_t sub_2E438(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_345A0();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2C28C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_2E4D0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_2A500(4);
  if ((v5 & 1) == 0 || !*(a2 + 16))
  {
    goto LABEL_16;
  }

  v6 = *(*(a2 + 56) + 8 * v4);

  v7 = sub_2A500(a1);
  if ((v8 & 1) == 0)
  {

LABEL_16:
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_34890(28);
    v24._countAndFlagsBits = 0x74276E646C756F43;
    v24._object = 0xEE0020646E696620;
    sub_34460(v24);
    sub_34980();
    v17._countAndFlagsBits = 0x6E6F6870206E6920;
    v17._object = 0xEC00000074657365;
    goto LABEL_17;
  }

  v9 = *(v6 + 16);
  if (!v9)
  {
LABEL_13:
    sub_34890(21);
    v14 = sub_34510();
    v16 = v15;

    v21 = v14;
    v22 = v16;
    v23._object = 0x8000000000039C20;
    v23._countAndFlagsBits = 0xD000000000000011;
    sub_34460(v23);
    v17._countAndFlagsBits = 0x6F625F656E6F6870;
    v17._object = 0xEE00797261646E75;
LABEL_17:
    sub_34460(v17);
    goto LABEL_18;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(*(a2 + 56) + 8 * v7);
  while (1)
  {
    v13 = *(v6 + v10 + 32) == 0x6F625F656E6F6870 && *(v6 + v10 + 40) == 0xEE00797261646E75;
    if (v13 || (sub_34BC0() & 1) != 0)
    {
      break;
    }

    ++v11;
    v10 += 16;
    if (v9 == v11)
    {
      goto LABEL_13;
    }
  }

  if (v11 < *(v12 + 16))
  {
    v18 = *(v12 + v10 + 32);

    return v18;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_34890(66);
  v25._countAndFlagsBits = 0xD000000000000014;
  v25._object = 0x8000000000039BD0;
  sub_34460(v25);
  v26._countAndFlagsBits = sub_34BB0();
  sub_34460(v26);

  v27._countAndFlagsBits = 0xD00000000000002ALL;
  v27._object = 0x8000000000039BF0;
  sub_34460(v27);
  v28._countAndFlagsBits = sub_34BB0();
  sub_34460(v28);

LABEL_18:
  v18 = v22;
  sub_2A4AC();
  swift_allocError();
  *v19 = v21;
  *(v19 + 8) = v22;
  *(v19 + 16) = 1;
  swift_willThrow();
  return v18;
}

uint64_t sub_2E860(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for PhonemeString();
    sub_2F7A4(&qword_4F4D8, type metadata accessor for PhonemeString, &protocol conformance descriptor for NSObject);
    result = sub_345A0();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_348C0();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_2BF74(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_349A0();
  }

  v5 = result;
  v4 = sub_349A0();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t *sub_2E9E4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2EA48(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2EABC();
  result = sub_345A0();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2C18C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_2EABC()
{
  result = qword_4FB48;
  if (!qword_4FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB48);
  }

  return result;
}

void *sub_2EB10(uint64_t *a1, uint64_t a2)
{
  v4 = sub_34070();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E580 != -1)
  {
LABEL_81:
    swift_once();
  }

  v8 = qword_53A08;
  if (!*(qword_53A08 + 16) || (v9 = sub_2A7B0(a2), (v10 & 1) == 0))
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v38 = sub_342A0();
    sub_3034(v38, qword_53A18);
    (v5[2])(v7, a2, v4);
    v39 = sub_34280();
    v40 = sub_345E0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v103 = v42;
      *v41 = 136315138;
      sub_2F7A4(&qword_4FA08, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
      v43 = sub_34BB0();
      v99 = a1;
      v100 = a2;
      v45 = v44;
      v46 = v5[1];
      v46(v7, v4);
      v47 = sub_22960(v43, v45, &v103);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_0, v39, v40, "Phoneset couldn't load the file for locale %s", v41, 0xCu);
      sub_3364(v42);

      v46(v100, v4);
    }

    else
    {

      v48 = v5[1];
      v48(a2, v4);
      v48(v7, v4);
    }

    return 0;
  }

  v11 = (*(v8 + 56) + 16 * v9);
  v13 = *v11;
  v12 = v11[1];

  v14 = sub_34380();
  v15 = sub_34380();
  v16 = [a1 pathForResource:v14 ofType:v15];

  if (!v16)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v53 = sub_342A0();
    sub_3034(v53, qword_53A18);

    v54 = sub_34280();
    v55 = sub_345E0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v103 = v57;
      *v56 = 136315138;
      v58 = sub_22960(v13, v12, &v103);

      *(v56 + 4) = v58;
      _os_log_impl(&dword_0, v54, v55, "Phoneset couldn't load %s", v56, 0xCu);
      sub_3364(v57);
    }

    else
    {
    }

    (v5[1])(a2, v4);
    return 0;
  }

  v98 = sub_343B0();
  v18 = v17;

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v19 = sub_342A0();
  v20 = sub_3034(v19, qword_53A18);

  v21 = sub_34280();
  v22 = sub_345D0();

  v23 = os_log_type_enabled(v21, v22);
  v96 = v5;
  v97 = v4;
  v99 = a1;
  v100 = a2;
  v94[1] = v20;
  v95 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v103 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_22960(v98, v18, &v103);
    _os_log_impl(&dword_0, v21, v22, "Phoneset is using the map found at path=%s", v24, 0xCu);
    sub_3364(v25);
  }

  a1 = 0;
  v26 = _swiftEmptyDictionarySingleton;
  v5 = _swiftEmptyArrayStorage;
  v4 = 1;
  do
  {
    v7 = *(&off_46F38 + a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v103 = v26;
    v29 = sub_2A500(v7);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    a2 = v28;
    if (v26[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v103;
        if (v28)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_17D6C();
        v26 = v103;
        if (a2)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_17780(v32, isUniquelyReferenced_nonNull_native);
      v33 = sub_2A500(v7);
      if ((a2 & 1) != (v34 & 1))
      {
        goto LABEL_84;
      }

      v29 = v33;
      v26 = v103;
      if (a2)
      {
LABEL_10:
        *(v26[7] + 8 * v29) = _swiftEmptyArrayStorage;

        goto LABEL_11;
      }
    }

    v26[(v29 >> 6) + 8] |= 1 << v29;
    *(v26[6] + v29) = v7;
    *(v26[7] + 8 * v29) = _swiftEmptyArrayStorage;
    v35 = v26[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_80;
    }

    v26[2] = v37;
LABEL_11:
    a1 = (a1 + 1);
  }

  while (a1 != (&dword_4 + 1));
  v106 = v26;
  v50 = v98;
  v51 = v95;
  v7 = 0;
  v52 = sub_34370();
  v61 = sub_28808(0x7FFFFFFFFFFFFFFFLL, 1, v52, v59, v60);
  v62 = v61;
  v63 = v96;
  v64 = v97;
  v65 = v100;
  if (!*(v61 + 16))
  {

    v89 = sub_34280();
    v90 = sub_345E0();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&v103 = v92;
      *v91 = 136315138;
      v93 = sub_22960(v50, v51, &v103);

      *(v91 + 4) = v93;
      _os_log_impl(&dword_0, v89, v90, "Phoneset couldn't read rows from %s", v91, 0xCu);
      sub_3364(v92);
    }

    else
    {
    }

    (v63[1])(v65, v64);

    return 0;
  }

  v94[0] = *(v61 + 16);

  if (*(v62 + 16))
  {
    v66 = *(v62 + 48);
    v67 = *(v62 + 56);
    v95 = v62;
    v103 = *(v62 + 32);
    v104 = v66;
    v105 = v67;
    v101 = 44;
    v102 = 0xE100000000000000;
    sub_2F7EC();
    sub_324C();
    v68 = sub_346E0();
    v4 = 0;
    v98 = (v68 + 40);
    v69 = _swiftEmptyDictionarySingleton;
    v5 = *(v68 + 16);
    while (1)
    {
LABEL_38:
      v70 = *(&off_46F60 + v4++ + 32);
      v71 = 726148684;
      if (v70 != 3)
      {
        v71 = 0x746573656E6F6870;
      }

      v72 = 0xE400000000000000;
      if (v70 != 3)
      {
        v72 = 0xED0000656D616E5FLL;
      }

      if (v70 == 2)
      {
        v71 = 0x41504D4153;
      }

      v73 = 0xE500000000000000;
      if (v70 == 2)
      {
        v72 = 0xE500000000000000;
      }

      v74 = 0x525341764ELL;
      if (v70)
      {
        v74 = 0x4D4153585F535454;
        v73 = 0xEA00000000004150;
      }

      a2 = v70 <= 1 ? v74 : v71;
      v75 = v70 <= 1 ? v73 : v72;
      if (v5)
      {
        break;
      }

LABEL_37:

      if (v4 == 5)
      {
        goto LABEL_65;
      }
    }

    v76 = 0;
    a1 = v98;
    while (1)
    {
      if (v76 >= *(v68 + 16))
      {
        __break(1u);
        goto LABEL_79;
      }

      v77 = *(a1 - 1) == a2 && *a1 == v75;
      if (v77 || (sub_34BC0() & 1) != 0)
      {
        break;
      }

      ++v76;
      a1 += 2;
      if (v5 == v76)
      {
        goto LABEL_37;
      }
    }

    v78 = swift_isUniquelyReferenced_nonNull_native();
    *&v103 = v69;
    sub_2BE50(v76, v70, v78);
    v69 = v103;
    if (v4 != 5)
    {
      goto LABEL_38;
    }

LABEL_65:

    v79 = v94[0];
    v80 = v97;
    if (*(v95 + 16) >= v94[0])
    {

      v81 = v79 - 1;
      v82 = v100;
      if (v81)
      {
        v83 = (v95 + 88);
        do
        {
          v84 = *(v83 - 1);
          v85 = *v83;
          v103 = *(v83 - 3);
          v104 = v84;
          v105 = v85;

          sub_28FF8(&v103, &v106, v69);

          v83 += 4;
          --v81;
        }

        while (v81);
      }

      swift_bridgeObjectRelease_n();
      v86 = sub_34280();
      v87 = sub_345D0();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_0, v86, v87, "Completed initialization of Phoneset map", v88, 2u);
      }

      (v96[1])(v82, v80);
      return v106;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_84:
  result = sub_34BE0();
  __break(1u);
  return result;
}

uint64_t sub_2F7A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2F7EC()
{
  result = qword_4FB60;
  if (!qword_4FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB60);
  }

  return result;
}

uint64_t sub_2F840(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_34BC0() & 1;
  }
}

unint64_t sub_2F8F0()
{
  result = qword_4FB78;
  if (!qword_4FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FB78);
  }

  return result;
}

unint64_t sub_2F944(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_47020;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2F9AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for TMDCGroundTruth(0);
    return a2;
  }

  return result;
}

void *sub_2FA7C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2FA9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_2FACC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2FB4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2FAEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2FC58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2FB0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2FD5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2FB2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2FF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2FB4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F100, &qword_36CA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_2FC58(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4FC58, &qword_384E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_2FD5C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3204(&qword_4FC50, &qword_384E0);
  v10 = *(sub_33B90() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_33B90() - 8);
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

void *sub_2FF34(void *result, int64_t a2, char a3, void *a4)
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
    sub_3204(&qword_4FC60, &qword_384F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3204(&qword_4FC68, &qword_384F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_3007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TMDCGroundTruth(0);
  v56 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_33B90();
  v57 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (!a3)
  {
    if (qword_4E5A8 == -1)
    {
LABEL_16:
      v32 = sub_342A0();
      sub_3034(v32, qword_53A18);
      v33 = sub_34280();
      v34 = sub_345E0();
      if (!os_log_type_enabled(v33, v34))
      {
LABEL_19:

        return;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Skipping CoreData storage because overriddenContactIdentifier is nil";
      v37 = v34;
      v38 = v33;
      v39 = v35;
      v40 = 2;
LABEL_18:
      _os_log_impl(&dword_0, v38, v37, v36, v39, v40);

      goto LABEL_19;
    }

LABEL_29:
    swift_once();
    goto LABEL_16;
  }

  v51 = &v46 - v13;
  v14 = v11;
  v15 = sub_33DA0();
  __chkstk_darwin(v15);
  *(&v46 - 4) = a2;
  *(&v46 - 3) = a3;
  *(&v46 - 2) = a1;
  sub_3204(&qword_4FC48, &qword_384D8);
  sub_34640();

  if (!v3)
  {
    v50 = a1;
    v16 = v58[2];
    v17 = v16 - 2;
    if (v16 <= 2)
    {
    }

    else
    {
      v18 = sub_2F9AC(v16 - 2, v58);
      v54 = v20;
      v55 = v21 >> 1;
      v22 = (v21 >> 1) - v19;
      if (__OFSUB__(v21 >> 1, v19))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v47 = v17;
      v49 = 0;
      if (v22)
      {
        v23 = v19;
        v24 = v14;
        v48 = v18;
        v58 = _swiftEmptyArrayStorage;
        sub_2FB0C(0, v22 & ~(v22 >> 63), 0);
        if ((v22 & 0x8000000000000000) == 0)
        {
          v25 = v58;
          v26 = (v57 + 16);
          v27 = v55;
          if (v23 > v55)
          {
            v27 = v23;
          }

          v52 = v57 + 32;
          v53 = v27;
          v28 = v50;
          v29 = v51;
          while (v53 != v23)
          {
            sub_8000(v54 + *(v56 + 72) * v23, v9);
            (*v26)(v29, v9, v24);
            sub_8064(v9);
            v58 = v25;
            v31 = v25[2];
            v30 = v25[3];
            if (v31 >= v30 >> 1)
            {
              sub_2FB0C((v30 > 1), v31 + 1, 1);
              v28 = v50;
              v25 = v58;
            }

            v25[2] = v31 + 1;
            (*(v57 + 32))(v25 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v31, v29, v24);
            if (v55 == ++v23)
            {
              swift_unknownObjectRelease();
              goto LABEL_22;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      v25 = _swiftEmptyArrayStorage;
      v28 = v50;
LABEL_22:
      v41 = sub_33DA0();
      __chkstk_darwin(v41);
      *(&v46 - 2) = v28;
      *(&v46 - 1) = v25;
      v42 = v49;
      sub_34640();
      if (!v42)
      {

        if (qword_4E5A8 == -1)
        {
LABEL_26:
          v43 = sub_342A0();
          sub_3034(v43, qword_53A18);
          v33 = sub_34280();
          v44 = sub_345D0();
          if (!os_log_type_enabled(v33, v44))
          {
            goto LABEL_19;
          }

          v45 = swift_slowAlloc();
          *v45 = 134217984;
          *(v45 + 4) = v47;
          v36 = "Deleted %ld ground truths";
          v37 = v44;
          v38 = v33;
          v39 = v45;
          v40 = 12;
          goto LABEL_18;
        }

LABEL_32:
        swift_once();
        goto LABEL_26;
      }
    }
  }
}

uint64_t sub_305C4(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1;

    v6 = sub_33DA0();
    __chkstk_darwin(v6);
    sub_34640();

    if (!v2)
    {
      v9 = type metadata accessor for TMDCGroundTruth(0);
      if ((*(v4 + 24) & 1) == 0)
      {
        sub_3007C(v3, *(a1 + *(v9 + 52)), *(a1 + *(v9 + 52) + 8));
        v10 = sub_33DA0();
        sub_34640();
      }
    }
  }

  else
  {
    sub_75D8();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_307AC(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_341F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_4E5C0 != -1)
  {
    swift_once();
  }

  v11 = byte_53A60;
  v12 = sub_34210();
  v13 = sub_34600();
  result = sub_34690();
  if (v11 == 1)
  {
    if ((result & 1) == 0)
    {
LABEL_23:

      (*(v8 + 16))(v10, a4, v7);
      sub_34260();
      swift_allocObject();
      return sub_34250();
    }

    if (a3)
    {
LABEL_12:
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = v18;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (a1)
    {
LABEL_16:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_341E0();
      v17 = "";
LABEL_22:
      _os_signpost_emit_with_name_impl(&dword_0, v12, v13, v16, a1, v17, v15, 2u);

      goto LABEL_23;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_12;
    }

LABEL_21:
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_341E0();
    v17 = "enableTelemetry=YES";
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    a1 = &v19;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_30A24(const char *a1, uint64_t a2, char a3)
{
  if (qword_4E5C0 != -1)
  {
    swift_once();
  }

  v5 = byte_53A60;
  log = sub_34210();
  v6 = sub_34610();
  v7 = sub_34690();
  if (v5 == 1)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (a3)
    {
      if (a1 >> 32)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (a1 >> 16 > 0x10)
      {
        goto LABEL_28;
      }

      a1 = &v12;
    }

    else if (!a1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_341E0();
    v10 = "";
LABEL_25:
    _os_signpost_emit_with_name_impl(&dword_0, log, v6, v9, a1, v10, v8, 2u);

    return;
  }

LABEL_8:
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      if (!a1)
      {
        __break(1u);
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
LABEL_31:
        __break(1u);
        return;
      }

      if (a1 >> 16 <= 0x10)
      {
        a1 = &v13;
LABEL_24:
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_341E0();
        v10 = "enableTelemetry=YES";
        goto LABEL_25;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_12:
}

uint64_t sub_30C04()
{
  v0 = sub_342A0();
  sub_2E9E4(v0, qword_53A18);
  sub_3034(v0, qword_53A18);
  return sub_34290();
}

uint64_t sub_30C84()
{
  v0 = sub_342A0();
  sub_2E9E4(v0, qword_53A30);
  sub_3034(v0, qword_53A30);
  return sub_34290();
}

uint64_t sub_30D04()
{
  v0 = sub_342A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_34220();
  sub_2E9E4(v4, qword_53A48);
  sub_3034(v4, qword_53A48);
  if (qword_4E5B0 != -1)
  {
    swift_once();
  }

  v5 = sub_3034(v0, qword_53A30);
  (*(v1 + 16))(v3, v5, v0);
  return sub_34200();
}

void sub_30E40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_34380();
  v2 = [v0 BOOLForKey:v1];

  byte_53A60 = v2;
}

uint64_t sub_30EDC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TMDCGroundTruthCoreDataRecord();
  result = sub_348A0();
  *a2 = result;
  return result;
}

uint64_t sub_30F20()
{
  v47 = sub_3204(&qword_4FC70, &qword_38538);
  __chkstk_darwin(v47);
  v48 = &v41 - v0;
  v1 = sub_3204(&qword_4FC78, qword_38540);
  v2 = __chkstk_darwin(v1 - 8);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v46 = &v41 - v5;
  __chkstk_darwin(v4);
  v50 = &v41 - v6;
  v49 = sub_34070();
  v7 = *(v49 - 8);
  v8 = __chkstk_darwin(v49);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  v12 = sub_33E10();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v41 - v17;
  if (qword_4E578 != -1)
  {
    swift_once();
  }

  v19 = qword_53A00;
  sub_33ED0();
  sub_33DF0();
  v20 = *(v13 + 8);
  v20(v18, v12);
  v21 = *(v19 + 16);
  v45 = v12;
  if (v21 && (v22 = sub_2A7B0(v11), (v23 & 1) != 0))
  {
    (*(v7 + 16))(v50, *(v19 + 56) + *(v7 + 72) * v22, v49);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v49;
  v42 = *(v7 + 8);
  v43 = v7 + 8;
  v42(v11, v49);
  v26 = *(v7 + 56);
  v27 = v7;
  v28 = v50;
  v26(v50, v24, 1, v25);
  sub_33ED0();
  v29 = v46;
  sub_33E00();
  v20(v16, v45);
  v30 = v25;
  v26(v29, 0, 1, v25);
  v31 = v48;
  v32 = *(v47 + 48);
  sub_314E0(v28, v48);
  sub_314E0(v29, v31 + v32);
  v33 = *(v27 + 48);
  if (v33(v31, 1, v25) != 1)
  {
    v35 = v44;
    sub_314E0(v31, v44);
    if (v33(v31 + v32, 1, v25) != 1)
    {
      v36 = v31 + v32;
      v37 = v41;
      (*(v27 + 32))(v41, v36, v25);
      sub_31550();
      v34 = sub_34360();
      v38 = v25;
      v39 = v42;
      v42(v37, v38);
      sub_A948(v29, &qword_4FC78, qword_38540);
      sub_A948(v50, &qword_4FC78, qword_38540);
      v39(v35, v30);
      sub_A948(v31, &qword_4FC78, qword_38540);
      return v34 & 1;
    }

    sub_A948(v29, &qword_4FC78, qword_38540);
    sub_A948(v50, &qword_4FC78, qword_38540);
    v42(v35, v25);
    goto LABEL_12;
  }

  sub_A948(v29, &qword_4FC78, qword_38540);
  sub_A948(v28, &qword_4FC78, qword_38540);
  if (v33(v31 + v32, 1, v25) != 1)
  {
LABEL_12:
    sub_A948(v31, &qword_4FC70, &qword_38538);
    v34 = 0;
    return v34 & 1;
  }

  sub_A948(v31, &qword_4FC78, qword_38540);
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_314E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4FC78, qword_38540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_31550()
{
  result = qword_4FA28;
  if (!qword_4FA28)
  {
    sub_34070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4FA28);
  }

  return result;
}

uint64_t sub_315D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_23160(v4, &v7);
      sub_23160(&v7, v9);
      sub_3204(&qword_4F0F8, &qword_36C98);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_3364(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_225F4(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_1CA30(v9, &v7, &qword_4FD48, &unk_385F0);
  if (v8)
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_33EF0();

      sub_A948(v9, &qword_4FD48, &unk_385F0);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_A948(v9, &qword_4FD48, &unk_385F0);
    v6 = &v7;
  }

  sub_A948(v6, &qword_4FD48, &unk_385F0);
  return 0;
}

uint64_t sub_317BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_23160(v2, &v5);
      sub_23160(&v5, v7);
      sub_3204(&qword_4F0F8, &qword_36C98);
      sub_34090();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_3364(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_225F4(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_1CA30(v7, &v5, &qword_4FD48, &unk_385F0);
  if (v6)
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    sub_34090();
    if (swift_dynamicCast())
    {

      sub_33EF0();

      sub_A948(v7, &qword_4FD48, &unk_385F0);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_A948(v7, &qword_4FD48, &unk_385F0);
    v4 = &v5;
  }

  sub_A948(v4, &qword_4FD48, &unk_385F0);
  return 0;
}

uint64_t sub_31998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_23160(v2, &v5);
      sub_23160(&v5, v7);
      sub_3204(&qword_4F0F8, &qword_36C98);
      sub_340F0();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_3364(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_225F4(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_1CA30(v7, &v5, &qword_4FD48, &unk_385F0);
  if (v6)
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    sub_340F0();
    if (swift_dynamicCast())
    {

      sub_33EF0();

      sub_A948(v7, &qword_4FD48, &unk_385F0);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_A948(v7, &qword_4FD48, &unk_385F0);
    v4 = &v5;
  }

  sub_A948(v4, &qword_4FD48, &unk_385F0);
  return 0;
}

uint64_t sub_31B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_23160(v2, &v5);
      sub_23160(&v5, v7);
      sub_3204(&qword_4F0F8, &qword_36C98);
      sub_34080();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_3364(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_225F4(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_1CA30(v7, &v5, &qword_4FD48, &unk_385F0);
  if (v6)
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    sub_34080();
    if (swift_dynamicCast())
    {

      sub_33EF0();

      sub_A948(v7, &qword_4FD48, &unk_385F0);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_A948(v7, &qword_4FD48, &unk_385F0);
    v4 = &v5;
  }

  sub_A948(v4, &qword_4FD48, &unk_385F0);
  return 0;
}

char *sub_31D28(char *a1, unint64_t a2)
{
  v4 = sub_3204(&qword_4F5F0, &unk_37730);
  v5 = __chkstk_darwin(v4 - 8);
  v54 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = __chkstk_darwin(v7);
  v62 = &v39 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v39 - v16;
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  v20 = sub_340D0();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v43 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  __chkstk_darwin(v24);
  v42 = &v39 - v26;
  v49 = *(a1 + 2);
  if (!v49)
  {
    return _swiftEmptyArrayStorage;
  }

  v40 = v19;
  v58 = v25;
  if (a2 >> 62)
  {
    goto LABEL_39;
  }

  v59 = a2 & 0xFFFFFFFFFFFFFF8;
  v65 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
LABEL_4:
  v27 = 0;
  v28 = *(v21 + 16);
  v21 += 16;
  v50 = v28;
  v39 = (*(v21 + 64) + 32) & ~*(v21 + 64);
  v45 = &a1[v39];
  v46 = *(v21 + 56);
  v64 = (v21 + 40);
  v60 = a2;
  v61 = a2 & 0xC000000000000001;
  v29 = (v21 + 32);
  v57 = (v21 + 16);
  v53 = v49 - 1;
  v51 = v21;
  v55 = (v21 - 8);
  v44 = _swiftEmptyArrayStorage;
  a1 = v62;
  v41 = v17;
  do
  {
    v52 = v27 + 1;
    v30 = __OFADD__(v27, 1);
    v48 = v30;
    v56 = v27;
    v50(v17, &v45[v46 * v27], v20);
    v63 = *v64;
    v63(v17, 0, 1, v20);
    sub_1CA30(v17, v14, &qword_4F5F0, &unk_37730);
    if (v65)
    {
      v17 = 0;
      v47 = &v45[v52 * v46];
      do
      {
        if (v61)
        {
          a2 = sub_348C0();
          v21 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v17 >= *(v59 + 16))
          {
            goto LABEL_36;
          }

          a2 = *(v60 + 8 * v17 + 32);

          v21 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v59 = a2 & 0xFFFFFFFFFFFFFF8;
            v65 = sub_349A0();
            goto LABEL_4;
          }
        }

        sub_1CA30(v14, v9, &qword_4F5F0, &unk_37730);
        if ((*v29)(v9, 1, v20) == 1)
        {
          sub_A948(v9, &qword_4F5F0, &unk_37730);
          v63(a1, 1, 1, v20);
        }

        else
        {
          a1 = v58;
          (*v57)(v58, v9, v20);
          if (v56 == v53)
          {
            v31 = v54;
            v63(v54, 1, 1, v20);
          }

          else
          {
            if (v48)
            {
              goto LABEL_37;
            }

            if (v52 >= v49)
            {
              goto LABEL_38;
            }

            v31 = v54;
            v50(v54, v47, v20);
            v63(v31, 0, 1, v20);
            a1 = v58;
          }

          sub_34120();
          v32 = v62;
          sub_A948(v31, &qword_4F5F0, &unk_37730);
          v33 = a1;
          a1 = v32;
          (*v55)(v33, v20);
        }

        sub_A948(v14, &qword_4F5F0, &unk_37730);

        sub_33968(a1, v14);
        ++v17;
      }

      while (v21 != v65);
    }

    v17 = v41;
    sub_A948(v41, &qword_4F5F0, &unk_37730);
    a2 = v40;
    sub_33968(v14, v40);
    if ((*v29)(a2, 1, v20) == 1)
    {
      sub_A948(a2, &qword_4F5F0, &unk_37730);
    }

    else
    {
      v34 = *v57;
      v35 = v42;
      (*v57)(v42, a2, v20);
      v50(v43, v35, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_13218(0, *(v44 + 2) + 1, 1, v44);
      }

      v21 = *(v44 + 2);
      v36 = *(v44 + 3);
      a2 = v21 + 1;
      a1 = v62;
      if (v21 >= v36 >> 1)
      {
        v44 = sub_13218((v36 > 1), v21 + 1, 1, v44);
      }

      (*v55)(v42, v20);
      v37 = v44;
      *(v44 + 2) = a2;
      v34(&v37[v39 + v21 * v46], v43, v20);
    }

    v27 = v52;
  }

  while (v52 != v49);
  return v44;
}

void sub_32474(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3204(&qword_4F5F0, &unk_37730);
  __chkstk_darwin(v6 - 8);
  v8 = &v78 - v7;
  v91 = sub_33B90();
  __chkstk_darwin(v91);
  v90 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (!v12)
  {
    v96 = 0;
    v72 = 0;
    v73 = 0;
    goto LABEL_29;
  }

  v80 = v8;
  v81 = a1;
  v82 = a3;
  v92 = 0;
  v93 = 0;
  v96 = 0;
  v94 = 0;
  v13 = a2 + 32;
  v89 = (v9 + 8);
  *&v10 = 136315138;
  v88 = v10;
  v78 = a2 + 32;
  v79 = v12;
  do
  {
    sub_30C0((v97 + 16), *(v97 + 40));

    v15 = sub_A9A8(v14);
    v19 = v15;
    if (v15)
    {
      v20 = v17;
      v21 = v18;
      v22 = *(v15 + 2);
      if (v22 > 1)
      {
        v95 = v16;
        if (qword_4E5A8 != -1)
        {
          swift_once();
        }

        v23 = sub_342A0();
        sub_3034(v23, qword_53A18);

        v24 = sub_34280();
        v25 = sub_345D0();

        LODWORD(v87) = v25;
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v83 = v26;
          v27 = swift_slowAlloc();
          v84 = v24;
          v85 = v27;
          v98[0] = v27;
          *v26 = v88;
          v28 = v90;
          sub_34010();
          sub_A8F0();
          v86 = v20;
          v29 = v21;
          v30 = v91;
          v31 = sub_34BB0();
          v33 = v32;
          v34 = v30;
          v21 = v29;
          v20 = v86;
          (*v89)(v28, v34);
          v35 = sub_22960(v31, v33, v98);

          v36 = v83;
          v37 = v84;
          *(v83 + 1) = v35;
          _os_log_impl(&dword_0, v37, v87, "[%s]: More than 1 contact names found in the turn", v36, 0xCu);
          sub_3364(v85);
        }

        else
        {
        }

        v16 = v95;
        v22 = *(v19 + 16);
      }

      if (v22)
      {
        v47 = v16;
        sub_339D8(v92, v96, v94, v93);

        v92 = v19;
        v93 = v21;
        v96 = v47;
        v94 = v20;
        goto LABEL_3;
      }

      v95 = v16;
      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v48 = sub_342A0();
      sub_3034(v48, qword_53A18);

      v49 = sub_34280();
      v50 = sub_345D0();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v84 = v51;
        v52 = swift_slowAlloc();
        v85 = v49;
        v86 = v52;
        v98[0] = v52;
        LODWORD(v51->isa) = v88;
        v53 = v90;
        sub_34010();
        sub_A8F0();
        LODWORD(v83) = v50;
        v54 = v91;
        v55 = sub_34BB0();
        v87 = v21;
        v57 = v56;
        (*v89)(v53, v54);
        v58 = sub_22960(v55, v57, v98);

        v59 = v84;
        *(&v84->isa + 4) = v58;
        v60 = v85;
        _os_log_impl(&dword_0, v85, v83, "[%s]: No contacts found in the turn", v59, 0xCu);
        sub_3364(v86);

        goto LABEL_3;
      }
    }

    else
    {
      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v38 = sub_342A0();
      sub_3034(v38, qword_53A18);

      v21 = sub_34280();
      v39 = sub_345D0();

      if (os_log_type_enabled(v21, v39))
      {
        v40 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v98[0] = v95;
        *v40 = v88;
        v41 = v90;
        LODWORD(v87) = v39;
        sub_34010();
        sub_A8F0();
        v42 = v91;
        v43 = sub_34BB0();
        v45 = v44;
        (*v89)(v41, v42);
        v46 = sub_22960(v43, v45, v98);

        *(v40 + 4) = v46;
        _os_log_impl(&dword_0, v21, v87, "[%s]: No asrLoggedContactToken was fetched for this turn. Continuing.", v40, 0xCu);
        sub_3364(v95);

        goto LABEL_3;
      }
    }

LABEL_3:
    v13 += 16;
    --v12;
  }

  while (v12);
  v61 = *(v78 + 16 * v79 - 8);

  v62 = v90;
  sub_34010();
  v63 = v80;
  sub_32DFC(v62, v61, v80);
  v64 = sub_1D114(v62, v63, v81 & 1);
  v66 = v65;
  v68 = v67;

  sub_A948(v63, &qword_4F5F0, &unk_37730);
  (*v89)(v62, v91);
  v69 = v92;
  if (v92)
  {
    a3 = v82;
    v71 = v93;
    v70 = v94;
    goto LABEL_34;
  }

  a3 = v82;
  v73 = v93;
  v72 = v94;
LABEL_29:
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v74 = sub_342A0();
  sub_3034(v74, qword_53A18);
  v75 = sub_34280();
  v76 = sub_345D0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_0, v75, v76, "No ASR logged contact token exists", v77, 2u);

    sub_339D8(0, v96, v72, v73);
  }

  v69 = 0;
  v96 = 0;
  v70 = 0;
  v71 = 0;
  v64 = 0;
  v66 = 0;
  v68 = 0;
LABEL_34:
  *a3 = v69;
  *(a3 + 8) = v96;
  *(a3 + 16) = v70;
  *(a3 + 24) = v71;
  *(a3 + 32) = v64;
  *(a3 + 40) = v66;
  *(a3 + 48) = v68;
}

uint64_t sub_32DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v75 = a3;
  v5 = sub_3204(&qword_4F5F0, &unk_37730);
  __chkstk_darwin(v5 - 8);
  v93 = &v73 - v6;
  v7 = sub_340D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_33B90();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = __chkstk_darwin(v10);
  v74 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v73 - v13;
  v15 = sub_33DD0();
  __chkstk_darwin(v15);
  v18 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  v79 = v8;
  v80 = v7;
  if (v19)
  {
    v20 = *(v3 + 64);
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v86 = v22;
    v87 = v20;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v24 = *(v21 + 56);
    v84 = (v8 + 56);
    v85 = v24;
    v82 = (v8 + 48);
    v83 = (v21 - 8);
    v94 = _swiftEmptyArrayStorage;
    v95 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v81 = (v8 + 32);
    v90 = v3;
    v91 = v14;
    v88 = v21;
    v89 = v15;
    for (i = v22(v18, v23, v15); ; i = v86(v18, v23, v32))
    {
      __chkstk_darwin(i);
      *(&v73 - 2) = v18;
      v26 = sub_3370C(sub_33904, (&v73 - 4), v87);
      sub_317BC(v26);
      if (v27)
      {
        v28 = sub_33DC0();
        v29 = [v28 identifier];

        sub_343B0();
        v18 = v95;
        v30 = v93;
        v7 = v80;
        sub_340A0();
        v31 = 0;
      }

      else
      {

        v31 = 1;
        v30 = v93;
      }

      (*v84)(v30, v31, 1, v7);
      v32 = v89;
      (*v83)(v18, v89);
      v33 = (*v82)(v30, 1, v7);
      v14 = v91;
      if (v33 == 1)
      {
        sub_A948(v30, &qword_4F5F0, &unk_37730);
        v3 = v90;
      }

      else
      {
        v34 = *v81;
        (*v81)(v92, v30, v7);
        v35 = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_13218(0, *(v35 + 2) + 1, 1, v35);
        }

        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        if (v37 >= v36 >> 1)
        {
          v35 = sub_13218((v36 > 1), v37 + 1, 1, v35);
        }

        *(v35 + 2) = v37 + 1;
        v38 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v94 = v35;
        v34(&v35[v38 + *(v79 + 72) * v37], v92, v7);
        v3 = v90;
        v18 = v95;
      }

      v23 += v85;
      if (!--v19)
      {
        break;
      }
    }
  }

  else
  {
    v94 = _swiftEmptyArrayStorage;
  }

  v39 = sub_31D28(v94, *(v3 + 72));

  v40 = v78;
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v41 = sub_342A0();
  sub_3034(v41, qword_53A18);
  v42 = v77;
  v43 = *(v77 + 16);
  v43(v14, v76, v40);
  swift_bridgeObjectRetain_n();
  v44 = sub_34280();
  v45 = sub_345C0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v95 = v43;
    v47 = v46;
    v94 = swift_slowAlloc();
    v96[0] = v94;
    *v47 = 136315394;
    sub_A8F0();
    v48 = sub_34BB0();
    v49 = v40;
    v51 = v50;
    v52 = *(v42 + 8);
    v52(v14, v49);
    v53 = sub_22960(v48, v51, v96);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2048;
    v54 = *(v39 + 2);

    *(v47 + 14) = v54;

    _os_log_impl(&dword_0, v44, v45, "[%s]: Coalesced %ld Intent events for the current turn", v47, 0x16u);
    sub_3364(v94);

    v43 = v95;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v52 = *(v42 + 8);
    v52(v14, v40);
  }

  v55 = *(v39 + 2);
  v56 = v75;
  v57 = v74;
  if (v55 >= 2)
  {
    v58 = v78;
    v43(v74, v76, v78);
    swift_bridgeObjectRetain_n();
    v59 = sub_34280();
    v60 = sub_345E0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v57;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v96[0] = v63;
      *v62 = 136315394;
      sub_A8F0();
      v64 = sub_34BB0();
      v66 = v65;
      v52(v61, v58);
      v67 = sub_22960(v64, v66, v96);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2048;
      v68 = *(v39 + 2);

      *(v62 + 14) = v68;

      _os_log_impl(&dword_0, v59, v60, "[%s]: Coalesced %ld Intent events for the current turn. Using only the first one.", v62, 0x16u);
      sub_3364(v63);

      v56 = v75;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v52(v57, v58);
    }

    v55 = *(v39 + 2);
  }

  if (v55)
  {
    v70 = v79;
    v69 = v80;
    (*(v79 + 16))(v56, &v39[(*(v79 + 80) + 32) & ~*(v79 + 80)], v80);
    v71 = 0;
  }

  else
  {
    v71 = 1;
    v70 = v79;
    v69 = v80;
  }

  return (*(v70 + 56))(v56, v71, 1, v69);
}

void *sub_3370C(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    result = (a1)(&v17, i, a2);
    if (v3)
    {

      return v5;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v5[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_13240(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v9)
        {
          goto LABEL_24;
        }

        sub_3204(&qword_4F0F8, &qword_36C98);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_33890()
{
  sub_3364((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_33904@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_30C0(a1, a1[3]);
  result = sub_33FC0();
  *a2 = result;
  return result;
}

uint64_t sub_33968(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4F5F0, &unk_37730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_339D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}