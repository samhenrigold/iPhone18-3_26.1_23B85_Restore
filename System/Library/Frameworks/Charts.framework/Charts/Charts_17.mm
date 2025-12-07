void sub_1AADE5BF8(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AAD411E8(0, v4, 0);
    v7 = v16;
    for (i = (a3 + 32); ; ++i)
    {
      v14 = *i;
      a1(v15, &v14);
      if (v3)
      {
        break;
      }

      v9 = v15[0];
      v10 = v15[1];
      v16 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1AAD411E8((v11 > 1), v12 + 1, 1);
        v7 = v16;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1AADE5D0C(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t *a3)
{
  v4 = a3[2];
  if (v4)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1AAD41448(0, v4, 0);
    v7 = v20;
    v18 = a3[4];
    a1(v19, &v18);
    if (v3)
    {

      __break(1u);
    }

    else
    {
      v8 = a3 + 5;
      for (i = v4 - 1; ; --i)
      {
        v16 = v19[2];
        v17 = v19[3];
        v14 = v19[0];
        v15 = v19[1];
        v20 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AAD41448((v10 > 1), v11 + 1, 1);
          v7 = v20;
        }

        *(v7 + 16) = v11 + 1;
        v12 = (v7 + (v11 << 6));
        v12[4] = v16;
        v12[5] = v17;
        v12[2] = v14;
        v12[3] = v15;
        if (!i)
        {
          break;
        }

        v13 = *v8++;
        v18 = v13;
        a1(v19, &v18);
      }
    }
  }
}

void sub_1AADE5E58(void (*a1)(void *__return_ptr, __int128 *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1AAD411E8(0, v5, 0);
    v7 = v17;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      (a1)(v16, &v15);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v16[0];
      v9 = v16[1];
      v17 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1AAD411E8((v11 > 1), v12 + 1, 1);
        v7 = v17;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1AADE5FA4(void (*a1)(void *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1AAD411E8(0, v5, 0);
    v7 = v54;
    v8 = a3 + 32;
    for (i = v5 - 1; ; --i)
    {
      v10 = *(v8 + 112);
      v11 = *(v8 + 80);
      v50 = *(v8 + 96);
      v51 = v10;
      v12 = *(v8 + 112);
      v52 = *(v8 + 128);
      v13 = *(v8 + 48);
      v14 = *(v8 + 16);
      v46 = *(v8 + 32);
      v47 = v13;
      v15 = *(v8 + 48);
      v16 = *(v8 + 80);
      v48 = *(v8 + 64);
      v49 = v16;
      v17 = *(v8 + 16);
      v45[0] = *v8;
      v45[1] = v17;
      v40 = v50;
      v41 = v12;
      v42 = *(v8 + 128);
      v36 = v46;
      v37 = v15;
      v38 = v48;
      v39 = v11;
      v53 = *(v8 + 144);
      v43 = *(v8 + 144);
      v34 = v45[0];
      v35 = v14;
      sub_1AAD81BF4(v45, &v24);
      a1(v44, &v34);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v30 = v40;
      v31 = v41;
      v32 = v42;
      v33 = v43;
      v26 = v36;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v24 = v34;
      v25 = v35;
      sub_1AAD81C50(&v24);
      v19 = v44[0];
      v18 = v44[1];
      v54 = v7;
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AAD411E8((v20 > 1), v21 + 1, 1);
        v7 = v54;
      }

      *(v7 + 16) = v21 + 1;
      v22 = v7 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      if (!i)
      {
        return;
      }

      v8 += 152;
    }

    v30 = v40;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v24 = v34;
    v25 = v35;
    sub_1AAD81C50(&v24);

    __break(1u);
  }
}

void sub_1AADE6188(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1AAD414C0(0, v5, 0);
    v8 = v38;
    v9 = (a3 + 32);
    for (i = v5 - 1; ; --i)
    {
      v11 = v9[1];
      v12 = v9[3];
      v35 = v9[2];
      v36 = v12;
      v13 = v9[3];
      v37 = v9[4];
      v14 = v9[1];
      v34[0] = *v9;
      v34[1] = v14;
      v29 = v35;
      v30 = v13;
      v31 = v9[4];
      v27 = v34[0];
      v28 = v11;
      sub_1AAD81924(v34, &v22);
      a1(&v32, &v27);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v24 = v29;
      v25 = v30;
      v26 = v31;
      v22 = v27;
      v23 = v28;
      sub_1AAD81980(&v22);
      v15 = v32;
      v16 = v33;
      v38 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = v33;
        v21 = v32;
        sub_1AAD414C0((v17 > 1), v18 + 1, 1);
        v16 = v20;
        v15 = v21;
        v8 = v38;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 32 * v18;
      *(v19 + 32) = v15;
      *(v19 + 48) = v16;
      if (!i)
      {
        return;
      }

      v9 += 5;
    }

    v24 = v29;
    v25 = v30;
    v26 = v31;
    v22 = v27;
    v23 = v28;
    sub_1AAD81980(&v22);

    __break(1u);
  }
}

void sub_1AADE631C(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1AAD415C4(0, v5, 0);
    v8 = v37;
    v9 = a3 + 32;
    for (i = v5 - 1; ; --i)
    {
      v11 = *(v9 + 16);
      v12 = *(v9 + 48);
      v34 = *(v9 + 32);
      v35 = v12;
      v13 = *(v9 + 16);
      v33[0] = *v9;
      v33[1] = v13;
      v14 = *(v9 + 48);
      v28 = v34;
      v29 = v14;
      v36 = *(v9 + 64);
      v30 = *(v9 + 64);
      v26 = v33[0];
      v27 = v11;
      sub_1AADEA050(v33, &v21);
      a1(&v31, &v26);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v23 = v28;
      v24 = v29;
      v25 = v30;
      v21 = v26;
      v22 = v27;
      sub_1AADEA0AC(&v21);
      v15 = v31;
      v16 = v32;
      v37 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        v20 = v31;
        sub_1AAD415C4((v17 > 1), v18 + 1, 1);
        v15 = v20;
        v8 = v37;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 24 * v18;
      *(v19 + 32) = v15;
      *(v19 + 48) = v16;
      if (!i)
      {
        return;
      }

      v9 += 72;
    }

    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    sub_1AADEA0AC(&v21);

    __break(1u);
  }
}

void sub_1AADE64C0(void (*a1)(__int128 *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1AAD415F4(0, v4, 0);
    v7 = v22;
    for (i = (a3 + 48); ; i += 2)
    {
      v9 = *i;
      v18[0] = *(i - 1);
      v18[1] = v9;
      a1(&v19, v18);
      if (v3)
      {
        break;
      }

      v10 = v19;
      v11 = v20;
      v12 = v21;
      v22 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v20;
        v17 = v19;
        sub_1AAD415F4((v13 > 1), v14 + 1, 1);
        v11 = v16;
        v10 = v17;
        v7 = v22;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 40 * v14;
      *(v15 + 32) = v10;
      *(v15 + 48) = v11;
      *(v15 + 64) = v12;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1AADE65E8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACEF164(v4, v10, type metadata accessor for DateBins.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AACE99D0(0);
      v13 = *(v10 + *(v12 + 64));
      sub_1AACE9B88(v10, type metadata accessor for CalendarBinningUnit);
    }

    else
    {
      v14 = *(*v10 + 16);

      v13 = v14 - 1;
    }
  }

  else
  {
    v13 = v10[2];
  }

  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v13 >= a2)
  {
    sub_1AADE9E0C(0);
    sub_1AACEF164(v4, a3 + *(v15 + 40), type metadata accessor for DateBins);
    *a3 = a1;
    a3[1] = a2;
    return;
  }

LABEL_12:
  __break(1u);
}

BOOL sub_1AADE6740()
{
  v1 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACEF164(v0, v3, type metadata accessor for DateBins.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AACE99D0(0);
      v6 = *(v3 + *(v5 + 64));
      sub_1AACE9B88(v3, type metadata accessor for CalendarBinningUnit);
    }

    else
    {
      v7 = *(*v3 + 16);

      v6 = v7 - 1;
    }
  }

  else
  {
    v6 = v3[2];
  }

  return v6 == 0;
}

uint64_t sub_1AADE683C()
{
  if (*(v0 + 56))
  {
    if (*(v0 + 56) != 1)
    {
      return 0;
    }

    result = *(*v0 + 16) - 1;
  }

  else
  {
    v2 = *(v0 + 16);
    sub_1AACEF164(v0, &v3, sub_1AAD172C4);

    result = v2;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t sub_1AADE68D4()
{
  v1 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACEF164(v0, v3, type metadata accessor for DateBins.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AACE99D0(0);
      v6 = *(v3 + *(v5 + 64));
      sub_1AACE9B88(v3, type metadata accessor for CalendarBinningUnit);
      result = v6;
    }

    else
    {
      v8 = *(*v3 + 16);

      result = v8 - 1;
    }
  }

  else
  {
    result = v3[2];
  }

  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADE69D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

int64_t sub_1AADE6A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v6[-1], v5);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), *v6, v8);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v8, v5), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v10, v9.i64[0]), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 < v2)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t DateBins.init(unit:by:range:calendar:)@<X0>(char *a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a4;
  v86 = a1;
  v91 = a2;
  v92 = a3;
  v67 = a5;
  sub_1AACEC8E4(0);
  v79 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v67 - v10;
  v84 = sub_1AAF8CBA4();
  v93 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v67 - v13;
  v14 = sub_1AAF8CA64();
  v69 = v14;
  v72 = *(v14 - 8);
  v15 = v72;
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v67 - v18;
  v19 = sub_1AAF8CB94();
  v73 = *(v19 - 8);
  v20 = v73;
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v67 - v23;
  v90 = &v67 - v23;
  v25 = type metadata accessor for CalendarBinningUnit(0);
  v26 = (v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v67 - v30;
  v88 = *(v20 + 16);
  v88(v24, v86, v19, v29);
  v87 = *(v15 + 16);
  v32 = v89;
  v87(v89, v92, v14);
  v68 = *(v93 + 16);
  v33 = v74;
  v34 = v84;
  v68(v74, v85, v84);
  v35 = v90;
  v83 = v19;
  (v88)(v31, v90, v19);
  *&v31[v26[7]] = v91;
  v36 = v26[8];
  v70 = v26;
  v81 = v31;
  v37 = v32;
  v38 = v69;
  v87(&v31[v36], v37, v69);
  v39 = &v31[v26[9]];
  v40 = v33;
  v41 = v68;
  v68(v39, v33, v34);
  v42 = v71;
  (v88)(v71, v35, v19);
  v43 = v75;
  v44 = v89;
  v87(v75, v89, v38);
  v45 = v76;
  v41(v76, v40, v34);
  type metadata accessor for CalendarBinningImpl(0);
  swift_allocObject();
  v46 = sub_1AACE7AF4(v42, v91, v43, v45);
  v47 = *(v93 + 8);
  v93 += 8;
  v91 = v47;
  v47(v40, v34);
  (*(v72 + 8))(v44, v38);
  v48 = *(v73 + 8);
  v48(v90, v83);
  v49 = v81;
  *&v81[v70[10]] = v46;
  sub_1AACEF164(v49, v82, type metadata accessor for CalendarBinningUnit);
  v50 = v77;
  sub_1AACEF164(v92, v77, sub_1AACEC8E4);
  sub_1AACEE9E4(v50);
  v90 = v51;
  sub_1AACEE9E4(v50);
  v53 = v52;
  sub_1AACEE9E4(v50 + *(v79 + 36));
  v55 = v54;
  v56 = v78;
  sub_1AACE8E98(v53, v78);
  v57 = v80;
  result = sub_1AACE8E98(v55, v80);
  v59 = v55 - v53;
  if (__OFSUB__(v55, v53))
  {
    __break(1u);
    goto LABEL_9;
  }

  v60 = v59 + 1;
  if (__OFADD__(v59, 1))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1AAF8CA14();
  if (result)
  {
    v61 = __OFSUB__(v60--, 1);
    if (v61)
    {
      goto LABEL_10;
    }
  }

  v62 = sub_1AAF8CA14();
  sub_1AACE9B88(v57, sub_1AACEC8E4);
  result = sub_1AACE9B88(v56, sub_1AACEC8E4);
  if ((v62 & 1) == 0 || (v61 = __OFSUB__(v60, 1), --v60, !v61))
  {
    v91(v85, v84);
    sub_1AACE9B88(v92, sub_1AACEC8E4);
    v48(v86, v83);
    sub_1AACE9B88(v50, sub_1AACEC8E4);
    sub_1AACE9B88(v81, type metadata accessor for CalendarBinningUnit);
    sub_1AACE99D0(0);
    v64 = *(v63 + 48);
    v65 = *(v63 + 64);
    v66 = v67;
    sub_1AACEF260(v82, v67, type metadata accessor for CalendarBinningUnit);
    *(v66 + v64) = v90;
    *(v66 + v65) = v60;
    type metadata accessor for DateBins.Storage(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1AADE7218(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 16 * result + 32) > a3)
  {
    return qword_1EB424C68;
  }

  if (*(a4 + 16) <= result)
  {
    goto LABEL_12;
  }

  type metadata accessor for CalendarBinningUnit(0);
  v12 = sub_1AADDEC74(a5, a6 & 1, a7 & 1);
  result = v12 - a8;
  if (__OFSUB__(v12, a8))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    v13 = __OFSUB__(0, result);
    result = a8 - v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  return result;
}

void (*sub_1AADE7340(void (*result)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *__return_ptr, uint64_t *)
{
  if (a3 == a4)
  {
    return 0;
  }

  if (a4 < a3)
  {
    __break(1u);
  }

  else if (a3 < a4)
  {
    v7 = result;
    v8 = a3 + 1;
    v15 = a3;
    result(&v13, &v15);
    v6 = a3;
    if (v8 != a4)
    {
      v9 = v13;
      v10 = v14;
      v6 = a3;
      do
      {
        v11 = v8 + 1;
        v15 = v8;
        v7(&v13, &v15);
        v12 = v10 < v14;
        if (v13 != v9)
        {
          v12 = v13 < v9;
        }

        if (v12)
        {
          v9 = v13;
          v10 = v14;
          v6 = v8;
        }

        ++v8;
      }

      while (a4 != v11);
    }

    return v6;
  }

  __break(1u);
  return result;
}

void sub_1AADE7444(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACEF164(v1, a1, type metadata accessor for DateBins);
  sub_1AACE9AF4(0);
  v8 = v7;
  *(a1 + *(v7 + 36)) = 0;
  sub_1AACEF164(v2, v6, type metadata accessor for DateBins.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AACE99D0(0);
      v11 = *(v6 + *(v10 + 64));
      sub_1AACE9B88(v6, type metadata accessor for CalendarBinningUnit);
    }

    else
    {
      v12 = *(*v6 + 16);

      v11 = v12 - 1;
    }
  }

  else
  {
    v11 = v6[2];
  }

  *(a1 + *(v8 + 40)) = v11;
}

uint64_t DateBins.init(thresholds:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for DateBins.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DateBins.init(timeInterval:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1AAF8C854();
  v7 = v6;
  sub_1AACEC8E4(0);
  sub_1AAF8C854();
  v9 = ceil((v8 - v7) / a3);
  result = sub_1AACE9B88(a1, sub_1AACEC8E4);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = a3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  type metadata accessor for DateBins.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

void DateBins.init(range:desiredCount:calendar:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AACEC8E4(0);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  v16 = type metadata accessor for CalendarBinningUnit(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v72 - v21;
  v79 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  v77 = v20;
  v23 = sub_1AADDFFE8(a1, a3);
  v24 = v23;
  v25 = *(v23 + 16);
  v76 = a3;
  v80 = v18;
  v81 = v12;
  v78 = v16;
  if (v25 == 1)
  {
    v26 = v23 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    goto LABEL_27;
  }

  if (!v25)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v73 = a4;
  MEMORY[0x1EEE9AC00](v23);
  *(&v72 - 4) = a1;
  *(&v72 - 12) = 257;
  *(&v72 - 2) = v79;
  sub_1AADE595C(sub_1AADD996C, (&v72 - 6), v24);
  v28 = *(v27 + 16);
  v74 = v27;
  v75 = v22;
  if (v28)
  {
    v29 = v27;
    v72 = a1;
    v84 = MEMORY[0x1E69E7CC0];
    sub_1AAD214F4(0, v28, 0);
    v30 = v84;
    v31 = v84[2];
    v32 = (v29 + 40);
    do
    {
      v34 = *v32;
      v32 += 2;
      v33 = v34;
      v84 = v30;
      v35 = v30[3];
      v36 = v31 + 1;
      if (v31 >= v35 >> 1)
      {
        sub_1AAD214F4((v35 > 1), v31 + 1, 1);
        v30 = v84;
      }

      v30[2] = v36;
      v30[v31++ + 4] = v33;
      --v28;
    }

    while (v28);
    a1 = v72;
    v18 = v80;
LABEL_12:
    v37 = v30[4];
    v38 = v36 - 1;
    if (v36 == 1)
    {
      v22 = v75;
LABEL_23:

      MEMORY[0x1EEE9AC00](v50);
      *(&v72 - 6) = v74;
      *(&v72 - 5) = v37;
      *(&v72 - 4) = v24;
      *(&v72 - 3) = a1;
      *(&v72 - 8) = 257;
      *(&v72 - 1) = v79;
      v51 = sub_1AADE7340(sub_1AADE9B80, (&v72 - 8), 0, v25);
      if (v52)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v53 = v51;

      a4 = v73;
      if ((v53 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v53 >= *(v24 + 16))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v26 = v24 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v53;
LABEL_27:
      sub_1AACEF164(v26, v22, type metadata accessor for CalendarBinningUnit);

      v54 = v22;
      sub_1AACEF164(v22, v18, type metadata accessor for CalendarBinningUnit);
      sub_1AACEF164(a1, v15, sub_1AACEC8E4);
      sub_1AACEE9E4(v15);
      v56 = v55;
      sub_1AACEE9E4(v15);
      v58 = v57;
      sub_1AACEE9E4(&v15[*(v83 + 36)]);
      v60 = v59;
      sub_1AACE8E98(v58, v81);
      sub_1AACE8E98(v60, v82);
      v61 = v60 - v58;
      if (!__OFSUB__(v60, v58))
      {
        v62 = v61 + 1;
        if (!__OFADD__(v61, 1))
        {
          v63 = a1;
          v64 = v81;
          if ((sub_1AAF8CA14() & 1) == 0 || (v65 = __OFSUB__(v62, 1), --v62, !v65))
          {
            v66 = v82;
            v67 = sub_1AAF8CA14();
            sub_1AACE9B88(v66, sub_1AACEC8E4);
            sub_1AACE9B88(v64, sub_1AACEC8E4);
            if ((v67 & 1) == 0 || (v65 = __OFSUB__(v62, 1), --v62, !v65))
            {
              v68 = sub_1AAF8CBA4();
              (*(*(v68 - 8) + 8))(v76, v68);
              sub_1AACE9B88(v15, sub_1AACEC8E4);
              sub_1AACE9B88(v54, type metadata accessor for CalendarBinningUnit);
              sub_1AACE99D0(0);
              v70 = *(v69 + 48);
              v71 = *(v69 + 64);
              sub_1AACEF260(v80, a4, type metadata accessor for CalendarBinningUnit);
              *(a4 + v70) = v56;
              *(a4 + v71) = v62;
              type metadata accessor for DateBins.Storage(0);
              swift_storeEnumTagMultiPayload();
              sub_1AACE9B88(v63, sub_1AACEC8E4);
              return;
            }

            goto LABEL_41;
          }

LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        goto LABEL_36;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v22 = v75;
    if (v36 >= 5)
    {
      v39 = v38 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v40 = vdupq_n_s64(v37);
      v41 = (v30 + 7);
      v42 = v38 & 0xFFFFFFFFFFFFFFFCLL;
      v43 = v40;
      do
      {
        v40 = vbslq_s8(vcgtq_s64(v40, v41[-1]), v41[-1], v40);
        v43 = vbslq_s8(vcgtq_s64(v43, *v41), *v41, v43);
        v41 += 2;
        v42 -= 4;
      }

      while (v42);
      v44 = vbslq_s8(vcgtq_s64(v43, v40), v40, v43);
      v45 = vextq_s8(v44, v44, 8uLL).u64[0];
      v37 = vbsl_s8(vcgtd_s64(v45, v44.i64[0]), *v44.i8, v45);
      if (v38 == (v38 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v39 = 1;
    }

    v46 = v36 - v39;
    v47 = &v30[v39 + 4];
    do
    {
      v49 = *v47++;
      v48 = v49;
      if (v49 < v37)
      {
        v37 = v48;
      }

      --v46;
    }

    while (v46);
    goto LABEL_23;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v36 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v36)
  {
    goto LABEL_12;
  }

LABEL_43:

  __break(1u);
}

void DateBins.init(data:desiredCount:calendar:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a5;
  v74 = a4;
  LODWORD(v69) = a3;
  v65 = a2;
  sub_1AACD575C(0, &qword_1ED9B4460, "lower upper ");
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v64 - v9;
  v10 = sub_1AAF8CBA4();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8CA64();
  v75 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  sub_1AADE9BC0(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACEC8E4(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v64 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v64 - v30;
  sub_1AADE8418(a1, v21);
  v32 = *(v24 + 48);
  v70 = v23;
  if (v32(v21, 1, v23) == 1)
  {

    sub_1AACE9B88(v21, sub_1AADE9BC0);
    sub_1AAF8C844();
    v33 = v15;
    sub_1AAF8C844();
    sub_1AACECB14(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    if (sub_1AAF8F584())
    {
      v34 = v13;
      v35 = v75;
      v36 = *(v75 + 32);
      v37 = v67;
      v36(v67, v18, v13);
      v38 = v76;
      v36((v37 + *(v76 + 48)), v33, v13);
      v39 = v68;
      sub_1AACD56E8(v37, v68);
      v40 = *(v38 + 48);
      v41 = v66;
      v36(v66, v39, v34);
      v42 = *(v35 + 8);
      v42(v39 + v40, v34);
      sub_1AADE9BF4(v37, v39);
      v36((v41 + *(v70 + 36)), (v39 + *(v38 + 48)), v34);
      v42(v39, v34);
      DateBins.init(timeInterval:range:)(v41, v73, 1.0);
      (*(v71 + 8))(v74, v72);
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  v76 = v13;
  sub_1AACEF260(v21, v31, sub_1AACEC8E4);
  sub_1AACEF164(v31, v28, sub_1AACEC8E4);
  if ((v69 & 1) == 0)
  {

    v45 = v74;
    v57 = v65;
LABEL_18:
    v63 = v71;
    v62 = v72;
    (*(v71 + 16))(v12, v45, v72);
    DateBins.init(range:desiredCount:calendar:)(v28, v57, v12, v73);
    (*(v63 + 8))(v45, v62);
    sub_1AACE9B88(v31, sub_1AACEC8E4);
    return;
  }

  v69 = v12;
  v43 = a1;
  v44 = *(a1 + 16);
  v45 = v74;
  if (v44)
  {
    v66 = v28;
    v67 = v31;
    v77 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, v44, 0);
    v46 = v77;
    v47 = v75 + 16;
    v75 = *(v75 + 16);
    v48 = *(v47 + 64);
    v68 = v43;
    v49 = v43 + ((v48 + 32) & ~v48);
    v50 = *(v47 + 56);
    v51 = (v47 - 8);
    do
    {
      v52 = v76;
      (v75)(v18, v49, v76);
      sub_1AAF8C854();
      v54 = v53;
      (*v51)(v18, v52);
      v77 = v46;
      v56 = *(v46 + 16);
      v55 = *(v46 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1AACEF664((v55 > 1), v56 + 1, 1);
        v46 = v77;
      }

      *(v46 + 16) = v56 + 1;
      *(v46 + 8 * v56 + 32) = v54;
      v49 += v50;
      --v44;
    }

    while (v44);

    v45 = v74;
    v28 = v66;
    v31 = v67;
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAF8C854();
  v59 = v58;
  sub_1AAF8C854();
  if (*&v59 <= *&v60)
  {
    v61 = sub_1AADE88F8(v59, v60, 0, v46);

    if (v61 >= 200)
    {
      v57 = 200;
    }

    else
    {
      v57 = v61;
    }

    v12 = v69;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1AADE8418@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1AACD575C(0, &qword_1ED9B4460, "lower upper ");
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  sub_1AADE9F88(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AADE9FF0(0, &qword_1ED9B09C8, MEMORY[0x1E6969530]);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - v15;
  v17 = sub_1AAF8CA64();
  v44 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_1AAF88F80(a1, v12);
  sub_1AACD575C(0, &qword_1EB424CD0, "min max ");
  v24 = v23;
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    sub_1AACE9B88(v12, sub_1AADE9F88);
    sub_1AACEC8E4(0);
    return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  }

  else
  {
    v40 = v5;
    v41 = v7;
    v42 = a2;
    v27 = *(v24 + 48);
    v28 = *(v14 + 48);
    v29 = *(v44 + 32);
    v29(v16, v12, v17);
    v29(&v16[v28], &v12[v27], v17);
    v30 = *(v14 + 48);
    v29(v22, v16, v17);
    v29(v19, &v16[v30], v17);
    sub_1AACECB14(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    result = sub_1AAF8F584();
    if (result)
    {
      v31 = v43;
      v29(v43, v22, v17);
      v32 = v40;
      v29((v31 + *(v40 + 48)), v19, v17);
      v33 = v41;
      sub_1AACD56E8(v31, v41);
      v34 = *(v32 + 48);
      v35 = v42;
      v29(v42, v33, v17);
      v36 = *(v44 + 8);
      v36(v33 + v34, v17);
      sub_1AADE9BF4(v31, v33);
      v37 = *(v32 + 48);
      sub_1AACEC8E4(0);
      v39 = v38;
      v29(&v35[*(v38 + 36)], (v33 + v37), v17);
      v36(v33, v17);
      return (*(*(v39 - 8) + 56))(v35, 0, 1, v39);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AADE88B8(uint64_t a1)
{
  *&result = COERCE_DOUBLE(sub_1AADC5DE0(a1));
  if (v3)
  {
    *&result = 0.0;
  }

  else if (*&result > v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADE88F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    a1 = sub_1AACEC978(a4);
    if (v5)
    {
      return 1;
    }
  }

  v6 = *(a4 + 16);
  if (v6 < 2)
  {
    return 1;
  }

  v8 = *&a1;
  v9 = *&a2;
  __SumOfSquares = NAN;
  __Sum = NAN;
  v7 = 1;
  vDSP_sve_svesqD((a4 + 32), 1, &__Sum, &__SumOfSquares, v6);
  v10 = sqrt((__SumOfSquares - __Sum * (__Sum / v6)) / (v6 - 1));
  if (v10 <= 0.0)
  {
    return v7;
  }

  v11.n128_f64[0] = ceil((v9 - v8) * cbrt(v6) / (v10 * 3.49));
  sub_1AAEC8604(&__Sum, v11);
  if ((v15 & 1) == 0)
  {
    return *&__Sum;
  }

  __Sum = 0.0;
  v15 = 0xE000000000000000;
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
  MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

void DateBins.index(for:)(uint64_t a1)
{
  v3 = type metadata accessor for CalendarBinningUnit(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACEF164(v1, v8, type metadata accessor for DateBins.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1AADE8CF4(a1, *(*v8 + 16), *v8);
      if ((v18 & 1) == 0)
      {

        return;
      }

      goto LABEL_15;
    }

    sub_1AACE99D0(0);
    v11 = *(v8 + *(v10 + 48));
    sub_1AACEF260(v8, v5, type metadata accessor for CalendarBinningUnit);
    sub_1AACEE9E4(a1);
    v13 = v12;
    sub_1AACE9B88(v5, type metadata accessor for CalendarBinningUnit);
    if (!__OFSUB__(v13, v11))
    {
      return;
    }

    __break(1u);
  }

  v14 = *v8;
  v15 = v8[1];
  sub_1AAF8C854();
  v17 = floor((v16 - v15) / v14);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1AADE8CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v5 = sub_1AAF8CA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v10;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = *(v6 + 16);
  v15 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v14(&v23 - v10, v15, v5, v11);
  (v14)(v8, v15 + *(v6 + 72) * (v13 - 1), v5);
  v16 = a2 - 1;
  if (a2 <= 1)
  {
    v17 = *(v6 + 8);
    v17(v8, v5);
    v17(v12, v5);
    return 0;
  }

  sub_1AACECB14(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v24 = v8;
  v25 = v12;
  result = sub_1AAF8F564();
  if ((result & 1) == 0)
  {
    v18 = 0;
    if (a2 != 2)
    {
      while (!__OFADD__(v18, v16))
      {
        if (v18 + v16 < -1)
        {
          goto LABEL_28;
        }

        v21 = v18 + v16;
        if ((v18 + v16) / 2 >= v13)
        {
          goto LABEL_28;
        }

        result = sub_1AAF8F554();
        if (result)
        {
          v16 = v21 / 2;
        }

        else
        {
          v18 = v21 / 2;
        }

        if (v18 + 1 >= v16)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_26;
    }

LABEL_23:
    v22 = *(v6 + 8);
    v22(v24, v5);
    v22(v25, v5);
    return v18;
  }

  v18 = 0;
  if (a2 == 2)
  {
    goto LABEL_23;
  }

  while (!__OFADD__(v18, v16))
  {
    if (v18 + v16 < -1)
    {
      goto LABEL_27;
    }

    v20 = v18 + v16;
    if ((v18 + v16) / 2 >= v13)
    {
      goto LABEL_27;
    }

    result = sub_1AAF8F564();
    if (result)
    {
      v16 = v20 / 2;
    }

    else
    {
      v18 = v20 / 2;
    }

    if (v18 + 1 >= v16)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1AADE8FD0(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 16);
  if (!v3 || a1 < 2)
  {
    return 0;
  }

  v5 = a2 + 32;
  v6 = a1 - 1;
  if (*(a2 + 32) >= *(a2 + 32 + 8 * v3 - 8))
  {
    if (a1 != 2)
    {
      result = 0;
      while (1)
      {
        v9 = result + v6;
        if (__OFADD__(result, v6))
        {
          goto LABEL_27;
        }

        if (v9 < -1)
        {
          goto LABEL_29;
        }

        v10 = v9 / 2;
        if (v10 >= v3)
        {
          goto LABEL_29;
        }

        if (*(v5 + 8 * v10) < a3)
        {
          v6 = v10;
        }

        else
        {
          result = v10;
        }

        if (result + 1 >= v6)
        {
          return result;
        }
      }
    }

    return 0;
  }

  if (a1 == 2)
  {
    return 0;
  }

  result = 0;
  while (1)
  {
    v7 = result + v6;
    if (__OFADD__(result, v6))
    {
      break;
    }

    if (v7 < -1)
    {
      goto LABEL_28;
    }

    v8 = v7 / 2;
    if (v8 >= v3)
    {
      goto LABEL_28;
    }

    if (*(v5 + 8 * v8) > a3)
    {
      v6 = v8;
    }

    else
    {
      result = v8;
    }

    if (result + 1 >= v6)
    {
      return result;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

Swift::Int __swiftcall DateBins.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t DateBins.endIndex.getter()
{
  v1 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACEF164(v0, v3, type metadata accessor for DateBins.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return v3[2];
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1AACE99D0(0);
    v6 = *(v3 + *(v5 + 64));
    sub_1AACE9B88(v3, type metadata accessor for CalendarBinningUnit);
    return v6;
  }

  else
  {
    v8 = *(*v3 + 16);

    return v8 - 1;
  }
}

void sub_1AADE91DC(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACEF164(v2, v6, type metadata accessor for DateBins.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1AACE99D0(0);
      v9 = *(v6 + *(v8 + 64));
      sub_1AACE9B88(v6, type metadata accessor for CalendarBinningUnit);
    }

    else
    {
      v10 = *(*v6 + 16);

      v9 = v10 - 1;
    }
  }

  else
  {
    v9 = v6[2];
  }

  *a1 = v9;
}

void (*sub_1AADE92DC(uint64_t *a1, unint64_t *a2))(uint64_t *a1)
{
  sub_1AACE9A60(0);
  v5 = *(*(v4 - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  *a1 = v6;
  DateBins.subscript.getter(*a2, v6);
  return sub_1AADE9370;
}

void sub_1AADE9370(uint64_t *a1)
{
  v1 = *a1;
  sub_1AACE9B88(*a1, sub_1AACE9A60);

  free(v1);
}

uint64_t *sub_1AADE93D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AADE9404@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AADE943C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1AADE943C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1AADE950C(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1AADE954C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1AADE9568(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1AADE9584(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void sub_1AADE95A0(uint64_t a1@<X8>)
{
  sub_1AACEF260(v1, a1, type metadata accessor for DateBins);
  sub_1AADABD50(0);
  *(a1 + *(v3 + 36)) = 0;
}

uint64_t sub_1AADE95F0()
{
  sub_1AAF4BD90(v0);
  v2 = v1;
  sub_1AACE9B88(v0, type metadata accessor for DateBins);
  return v2;
}

void sub_1AADE963C(char a1@<W2>, char a2@<W3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  type metadata accessor for CalendarBinningUnit(0);
  sub_1AADDF164();
  v10 = v9;
  if ((a1 & 1) == 0 && (a2 & 1) == 0)
  {
    v11 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v12 >= v11)
    {
LABEL_10:
      *a4 = sub_1AADDE2BC(a3, v11, v12);
      a4[1] = v13;
      return;
    }

    __break(1u);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v12 >= v11)
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_1AADE9708@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, unint64_t *a9@<X8>)
{
  result = sub_1AADE7218(*a1, a2, a3, a4, a5, a6, a7, a8);
  *a9 = result;
  a9[1] = v11;
  return result;
}

uint64_t _s6Charts8DateBinsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for CalendarBinningUnit(0);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v36 - v13);
  sub_1AADE9FF0(0, &qword_1EB424CC0, type metadata accessor for DateBins.Storage);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - v16;
  v19 = &v36 + *(v18 + 56) - v16;
  sub_1AACEF164(a1, &v36 - v16, type metadata accessor for DateBins.Storage);
  sub_1AACEF164(a2, v19, type metadata accessor for DateBins.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1AACEF164(v17, v14, type metadata accessor for DateBins.Storage);
    v30 = v14[1];
    v31 = *(v14 + 2);
    if (!swift_getEnumCaseMultiPayload())
    {
      if (*v14 == *v19 && v30 == *(v19 + 1))
      {
        v29 = v31 == *(v19 + 2);
LABEL_14:
        v33 = v29;
        goto LABEL_19;
      }

      goto LABEL_24;
    }

LABEL_22:
    sub_1AADE9F10(v17, v32);
LABEL_25:
    v33 = 0;
    return v33 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1AACEF164(v17, v11, type metadata accessor for DateBins.Storage);
    sub_1AACE99D0(0);
    v22 = *(v21 + 48);
    v23 = *&v11[v22];
    v24 = *(v21 + 64);
    v25 = *&v11[v24];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *&v19[v22];
      v27 = *&v19[v24];
      sub_1AACEF260(v19, v5, type metadata accessor for CalendarBinningUnit);
      if (sub_1AAF8CB84() & 1) != 0 && *&v11[*(v37 + 20)] == *&v5[*(v37 + 20)] && (sub_1AAF8CA14())
      {
        v28 = MEMORY[0x1AC595760](&v11[*(v37 + 28)], &v5[*(v37 + 28)]);
        sub_1AACE9B88(v5, type metadata accessor for CalendarBinningUnit);
        sub_1AACE9B88(v11, type metadata accessor for CalendarBinningUnit);
        if ((v28 & 1) != 0 && v23 == v26)
        {
          v29 = v25 == v27;
          goto LABEL_14;
        }
      }

      else
      {
        sub_1AACE9B88(v5, type metadata accessor for CalendarBinningUnit);
        sub_1AACE9B88(v11, type metadata accessor for CalendarBinningUnit);
      }

LABEL_24:
      sub_1AACE9B88(v17, type metadata accessor for DateBins.Storage);
      goto LABEL_25;
    }

    sub_1AACE9B88(v11, type metadata accessor for CalendarBinningUnit);
    goto LABEL_22;
  }

  sub_1AACEF164(v17, v8, type metadata accessor for DateBins.Storage);
  v34 = *v8;
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_22;
  }

  v33 = sub_1AAD796D0(v34, *v19);

LABEL_19:
  sub_1AACE9B88(v17, type metadata accessor for DateBins.Storage);
  return v33 & 1;
}

unint64_t sub_1AADE9B80@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1AADE7218(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 49), *(v2 + 56));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AADE9BF4(uint64_t a1, uint64_t a2)
{
  sub_1AACD575C(0, &qword_1ED9B4460, "lower upper ");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AADE9CB0(uint64_t a1)
{
  *(a1 + 8) = sub_1AACECB14(&qword_1ED9B12A0, type metadata accessor for DateBins, &protocol conformance descriptor for DateBins);
  result = sub_1AACECB14(&qword_1EB424CA0, type metadata accessor for DateBins, &protocol conformance descriptor for DateBins);
  *(a1 + 16) = result;
  return result;
}

void sub_1AADE9E0C(uint64_t a1)
{
  if (!qword_1EB424CB0)
  {
    type metadata accessor for DateBins(255);
    sub_1AACECB14(&qword_1ED9B12A0, type metadata accessor for DateBins, &protocol conformance descriptor for DateBins);
    v1 = sub_1AAF90664();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424CB0);
    }
  }
}

uint64_t sub_1AADE9F10(uint64_t a1, double a2)
{
  sub_1AADE9FF0(0, &qword_1EB424CC0, type metadata accessor for DateBins.Storage);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AADE9F88(uint64_t a1)
{
  if (!qword_1EB424CC8)
  {
    sub_1AACD575C(255, &qword_1EB424CD0, "min max ");
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424CC8);
    }
  }
}

void sub_1AADE9FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void NumberBins.init<>(range:desiredCount:minimumStride:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v30 = a3;
  v10 = sub_1AAF8F5D4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FloatingPointBinningUnit(0, a4, a5, v18);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v27 - v21;
  v24 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = a6;
    v28 = v20;
    v25 = v29;
    v26 = v22;
    sub_1AADEB558(v29, v24, v30, 1, 1, a4, a5, &v27 - v21);
    (*(v14 + 16))(v17, v23, a4);
    (*(v11 + 16))(v13, v25, v10);
    NumberBins.init<>(size:range:)(v17, v13, a4, a5, v27);
    (*(v14 + 8))(v30, a4);
    (*(v11 + 8))(v25, v10);
    (*(v26 + 8))(v23, v28);
  }
}

uint64_t NumberBins.thresholds.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v8 = type metadata accessor for ChartBinRange(0, v3, v6, v7);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1AAF8F4D4();
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v31 - v12;
  swift_getWitnessTable();
  v37 = sub_1AAF90294();
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v31 - v13;
  v15 = *(a1 + 32);
  v46 = v3;
  v16 = type metadata accessor for NumberBins.Storage(0, v3, v6, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  (*(v17 + 16))(&v31 - v19, v1, v16, v18);
  v36 = v20;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v36;
    }

    else
    {
      return sub_1AAF8F894();
    }
  }

  else
  {
    v31 = v17;
    v32 = v16;
    v23 = v44;
    v48 = sub_1AAF8F894();
    v24 = v35;
    v41 = a1;
    v42 = v1;
    sub_1AAF8FC54();
    v25 = v38;
    (*(v38 + 16))(v14, v24, v11);
    v26 = *(v37 + 36);
    sub_1AAF8F4A4();
    (*(v25 + 8))(v24, v11);
    v27 = v14;
    sub_1AAF8F4B4();
    v28 = *&v14[v26];
    if (v28 == v47)
    {
LABEL_5:
      (*(v34 + 8))(v27, v37);
      v29 = v48;
      (*(v31 + 8))(v36, v32);
      return v29;
    }

    else
    {
      v44 = v23 + 2;
      v38 = v33 + 8;
      v39 = v26;
      v40 = v14;
      while (1)
      {
        sub_1AAF8F4C4();
        NumberBins.subscript.getter(v28, v41, v10);
        v30 = *v44;
        (*v44)(v45, v10, v46);
        sub_1AAF8F914();
        sub_1AAF8F8E4();
        result = sub_1AAF8FBE4();
        if (__OFSUB__(result, 1))
        {
          break;
        }

        if (v28 == result - 1)
        {
          v30(v45, &v10[*(v8 + 36)], v46);
          sub_1AAF8F8E4();
        }

        (*v38)(v10, v8);
        v27 = v40;
        sub_1AAF8F4B4();
        v28 = *&v27[v39];
        if (v28 == v47)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t NumberBins.init<>(size:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a2;
  v48 = a5;
  v8 = sub_1AAF904A4();
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = v39 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v53 = v39 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v39 - v18;
  v47 = a4;
  v20 = *(a4 + 16);
  v52 = *(*(v20 + 16) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1AAF90554();
  sub_1AAF904C4();
  v22 = *(*(v20 + 24) + 8);
  v54 = a1;
  v50 = v22;
  LOBYTE(a4) = sub_1AAF8F554();
  v49 = *(v10 + 8);
  v49(v19, a3);
  if (a4)
  {
    v43 = v10;
    v23 = v51;
    v55 = v10 + 8;
    v39[1] = v20;
    sub_1AAF8F434();
    v24 = *MEMORY[0x1E69E7048];
    v25 = v44;
    v26 = v45;
    v27 = *(v45 + 104);
    v41 = v45 + 104;
    v42 = v27;
    v27(v44, v24, v8);
    sub_1AAF8F444();
    v40 = *(v26 + 8);
    v40(v25, v8);
    v28 = v49;
    v49(v23, a3);
    v39[0] = v8;
    sub_1AAF8FAD4();
    v28(v19, a3);
    v45 = sub_1AAF8F5D4();
    sub_1AAF902F4();
    sub_1AAF8F434();
    v28(v23, a3);
    v29 = v39[0];
    v42(v25, *MEMORY[0x1E69E7040], v39[0]);
    v30 = v46;
    sub_1AAF8F444();
    v40(v25, v29);
    v28(v19, a3);
    sub_1AADF2498();
    v31 = v47;
    sub_1AAF902B4();
    if ((v58 & 1) == 0)
    {
      v44 = v57;
      v32 = v49;
      v49(v30, a3);
      v33 = *(v43 + 16);
      v34 = v54;
      v33(v19, v54, a3);
      v35 = v51;
      v36 = v53;
      v33(v51, v53, a3);
      sub_1AADECA24(v19, v35, v44, a3, v31, v48);
      (*(*(v45 - 8) + 8))(v56);
      v32(v34, a3);
      v32(v36, a3);
      type metadata accessor for NumberBins.Storage(0, a3, v50, v52);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    __break(1u);
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1AAF900D4();
  v38 = sub_1AAF907B4();
  MEMORY[0x1AC5982F0](v38);

  MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
  MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

{
  v55 = a5;
  v8 = *(a4 + 24);
  v60 = a2;
  v61 = v8;
  v9 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v50 - v10;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v59 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v58 = &v50 - v25;
  v26 = sub_1AAF8FF04();
  v27 = sub_1AAF8FEF4();
  v57 = a1;
  v52 = v9;
  if (v26)
  {
    if (v27 > 64)
    {
      goto LABEL_3;
    }
  }

  else if (v27 > 63)
  {
LABEL_3:
    v63 = 0;
    sub_1AADF24EC();
    sub_1AAF8FEA4();
    v28 = sub_1AAF8F564();
    v29 = *(v11 + 8);
    v29(v19, a3);
    if (v28)
    {
      goto LABEL_4;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  (*(v11 + 16))(v19, a1, a3);
  v31 = sub_1AAF8FEE4();
  v29 = *(v11 + 8);
  v29(v19, a3);
  if (v31 <= 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  sub_1AADEC5A4(v57, a3, a4, v58);
  v56 = *(*(a4 + 32) + 8);
  v53 = sub_1AAF8F5D4();
  sub_1AAF902F4();
  v30 = v59;
  sub_1AAF8FED4();
  v29(v19, a3);
  v9 = *(v11 + 16);
  v9(v16, v30, a3);
  if ((sub_1AAF8FF04() & 1) == 0 || sub_1AAF8FEF4() <= 64)
  {
    goto LABEL_20;
  }

  v63 = 0x8000000000000000;
  if (sub_1AAF8FF04())
  {
    if (sub_1AAF8FEF4() < 64)
    {
      goto LABEL_19;
    }

LABEL_14:
    sub_1AADF24EC();
    sub_1AAF8FEA4();
    v34 = sub_1AAF8F564();
    result = (v29)(v19, a3);
    if (v34)
    {
      goto LABEL_38;
    }

    goto LABEL_20;
  }

LABEL_12:
  v32 = sub_1AAF8FF04();
  v33 = sub_1AAF8FEF4();
  if (v32)
  {
    if (v33 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1AAF90554();
      sub_1AAF904C4();
      v36 = sub_1AAF8F564();
      result = (v29)(v19, a3);
      if (v36)
      {
        goto LABEL_38;
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v33 < 64)
  {
LABEL_19:
    sub_1AAF8FEE4();
  }

LABEL_20:
  if (sub_1AAF8FEF4() <= 64)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v63 = 0x7FFFFFFFFFFFFFFFLL;
    v37 = sub_1AAF8FF04();
    v38 = sub_1AAF8FEF4();
    if ((v37 & 1) == 0)
    {
      break;
    }

    if (v38 < 65)
    {
      goto LABEL_29;
    }

LABEL_23:
    sub_1AADF24EC();
    sub_1AAF8FEA4();
    v39 = sub_1AAF8F564();
    v29(v19, a3);
    if (v39)
    {
      __break(1u);
LABEL_25:
      if (sub_1AAF8FEF4() == 64 && (sub_1AAF8FF04() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_30;
  }

  if (v38 >= 64)
  {
    goto LABEL_23;
  }

LABEL_29:
  sub_1AAF8FEE4();
LABEL_30:
  v40 = sub_1AAF8FEE4();
  v29(v16, a3);
  v41 = sub_1AAF8FF04();
  v42 = sub_1AAF8FEF4();
  if (v41)
  {
    if (v42 >= 65)
    {
      goto LABEL_32;
    }

LABEL_34:
    result = sub_1AAF8FEE4();
    v43 = result > 0;
  }

  else
  {
    if (v42 <= 63)
    {
      goto LABEL_34;
    }

LABEL_32:
    v63 = 0;
    sub_1AADF24EC();
    sub_1AAF8FEA4();
    v43 = sub_1AAF8F564();
    result = (v29)(v19, a3);
  }

  v44 = __OFADD__(v40, v43 & 1);
  v45 = v40 + (v43 & 1);
  if (!v44)
  {
    v46 = v9;
    v47 = v57;
    v46(v19, v57, a3);
    v48 = v54;
    v49 = v58;
    v46(v54, v58, a3);
    sub_1AADED184(v19, v48, v45, a3, a4, v55);
    (*(*(v53 - 8) + 8))(v60);
    v29(v47, a3);
    v29(v62, a3);
    v29(v59, a3);
    v29(v49, a3);
    type metadata accessor for NumberBins.Storage(0, a3, v56, v61);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

double sub_1AADEAF9C(uint64_t a1, char a2, char a3, double a4, double a5, double a6)
{
  if (a1 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1;
  }

  v9 = (a5 - a4) / v8;
  v10 = 1.0;
  if (v9 > 0.0 && *&v9 >> 52 <= 0x7FEuLL)
  {
    if (v9 < a6)
    {
      v9 = a6;
    }

    v13 = log10(v9);
    v14 = __exp10(floor(v13));
    v15 = MEMORY[0x1E69E7CC0];
    v61 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, 6, 0);
    v16 = v61;
    v18 = *(v61 + 2);
    v17 = *(v61 + 3);
    v19 = v17 >> 1;
    v20 = v18 + 1;
    if (v17 >> 1 <= v18)
    {
LABEL_54:
      sub_1AACEF664((v17 > 1), v20, 1);
      v16 = v61;
      v17 = *(v61 + 3);
      v19 = v17 >> 1;
    }

    *(v16 + 2) = v20;
    *&v16[8 * v18 + 32] = v14;
    v21 = v18 + 2;
    if (v19 < v21)
    {
      sub_1AACEF664((v17 > 1), v21, 1);
      v16 = v61;
    }

    *(v16 + 2) = v21;
    *&v16[8 * v20 + 32] = v14 + v14;
    v23 = *(v16 + 2);
    v22 = *(v16 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      sub_1AACEF664((v22 > 1), v23 + 1, 1);
    }

    v25 = v61;
    *(v61 + 2) = v24;
    *&v25[8 * v23 + 32] = v14 * 5.0;
    v26 = *(v25 + 3);
    v27 = v23 + 2;
    if (v27 > (v26 >> 1))
    {
      sub_1AACEF664((v26 > 1), v27, 1);
      v25 = v61;
    }

    *(v25 + 2) = v27;
    *&v25[8 * v24 + 32] = v14 * 10.0;
    v29 = *(v25 + 2);
    v28 = *(v25 + 3);
    v30 = v28 >> 1;
    v31 = v29 + 1;
    if (v28 >> 1 <= v29)
    {
      sub_1AACEF664((v28 > 1), v29 + 1, 1);
      v25 = v61;
      v28 = *(v61 + 3);
      v30 = v28 >> 1;
    }

    *(v25 + 2) = v31;
    *&v25[8 * v29 + 32] = v14 * 20.0;
    v32 = v29 + 2;
    if (v30 < v32)
    {
      sub_1AACEF664((v28 > 1), v32, 1);
    }

    v33 = v61;
    *(v61 + 2) = v32;
    *&v33[8 * v31 + 32] = v14 * 50.0;
    v61 = v15;
    sub_1AACEF664(0, 2, 0);
    v34 = v15;
    v36 = *(v15 + 16);
    v35 = *(v34 + 3);
    v37 = v35 >> 1;
    v38 = v36 + 1;
    if (v35 >> 1 <= v36)
    {
      sub_1AACEF664((v35 > 1), v36 + 1, 1);
      v34 = v61;
      v35 = *(v61 + 3);
      v37 = v35 >> 1;
    }

    *(v34 + 2) = v38;
    *&v34[8 * v36 + 32] = v14 * 2.5;
    v15 = v36 + 2;
    if (v37 < v15)
    {
      sub_1AACEF664((v35 > 1), v15, 1);
      v34 = v61;
    }

    *(v34 + 2) = v15;
    v39 = (v34 + 32);
    *&v34[8 * v38 + 32] = v14 * 25.0;
    v40 = *(v34 + 2);
    if (v40)
    {
      v41 = MEMORY[0x1E69E7CC0];
      v14 = 10.0;
      do
      {
        v44 = *v39;
        if (*v39 > 10.0)
        {
          v61 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1AACEF664(0, *(v41 + 2) + 1, 1);
            v41 = v61;
          }

          v43 = *(v41 + 2);
          v42 = *(v41 + 3);
          v15 = v43 + 1;
          if (v43 >= v42 >> 1)
          {
            sub_1AACEF664((v42 > 1), v43 + 1, 1);
            v41 = v61;
          }

          *(v41 + 2) = v15;
          *&v41[8 * v43 + 32] = v44;
        }

        ++v39;
        --v40;
      }

      while (v40);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v61 = v33;
    sub_1AADC8AB4(v41);
    v45 = 0;
    v20 = 0;
    v18 = v33;
    v46 = *(v33 + 2);
    v47 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    while (v46 != v45)
    {
      if (v45 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      v14 = *(v18 + 8 * v45++ + 32);
      if (v14 >= a6)
      {
        v61 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AACEF664(0, *(v48 + 2) + 1, 1);
          v48 = v61;
        }

        v50 = *(v48 + 2);
        v49 = *(v48 + 3);
        v15 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          sub_1AACEF664((v49 > 1), v50 + 1, 1);
          v48 = v61;
        }

        *(v48 + 2) = v15;
        *&v48[8 * v50 + 32] = v14;
      }
    }

    v61 = v48;

    sub_1AADA000C(&v61);

    v51 = v61;
    v52 = *(v61 + 2);
    if (v52)
    {
      v61 = v47;
      sub_1AAD41168(0, v52, 0);
      v53 = v61;
      v54 = *(v61 + 2);
      v55 = 32;
      do
      {
        v56 = *&v51[v55];
        v61 = v53;
        v57 = *(v53 + 3);
        if (v54 >= v57 >> 1)
        {
          sub_1AAD41168((v57 > 1), v54 + 1, 1);
          v53 = v61;
        }

        *(v53 + 2) = v54 + 1;
        *&v53[8 * v54 + 32] = v56;
        v55 += 8;
        ++v54;
        --v52;
      }

      while (v52);

      if (*(v53 + 2))
      {
        goto LABEL_48;
      }
    }

    else
    {

      v53 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_48:
        sub_1AADEC1CC(v53, v8, a2 & 1, a3 & 1, a4, a5);
        v10 = v58;
LABEL_51:

        return v10;
      }
    }

    v10 = 1.0;
    goto LABEL_51;
  }

  return v10;
}

uint64_t sub_1AADEB558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v81 = a5;
  v79 = a4;
  v91 = a3;
  v96 = a8;
  v89 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v87 = &v71 - v12;
  v92 = a7;
  v13 = *(a7 + 16);
  v14 = *(*(*(v13 + 2) + 8) + 16);
  v97 = *(*(v13 + 2) + 8);
  v98 = v14;
  v99 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v99);
  v86 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v71 - v17;
  MEMORY[0x1EEE9AC00](v18);
  WitnessTable = &v71 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v83 = &v71 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v71 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v71 - v25;
  v27 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v93 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v71 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v71 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v71 - v37;
  if (a2 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = a2;
  }

  v40 = *(*(v13 + 3) + 8);
  sub_1AAF8F5D4();
  v80 = a1;
  sub_1AAF902F4();
  v78 = v39;
  sub_1AAF8F464();
  v90 = v13;
  v41 = a6;
  sub_1AAF8F434();
  v97 = v27;
  v42 = *(v27 + 8);
  v94 = v27 + 8;
  v42(v32, a6);
  v42(v35, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AAF90554();
  sub_1AAF904C4();
  v44 = sub_1AAF8F554();
  v95 = v42;
  v42(v35, v41);
  if (v44 & 1) != 0 && (sub_1AAF8F454())
  {
    v90 = v38;
    v75 = v40;
    sub_1AAF90564();
    sub_1AAD46810();
    v71 = v35;
    sub_1AAF8F354();
    v45 = log10(v100[0]);
    __exp10(floor(v45));
    sub_1AAF8F374();
    sub_1AACAF444(v41, v41);
    v46 = *(v97 + 72);
    v74 = *(v97 + 80);
    swift_allocObject();
    v72 = sub_1AAF8F854();
    v76 = v26;
    sub_1AAF90554();
    sub_1AAF904C4();
    sub_1AAF90554();
    sub_1AAF904C4();
    sub_1AAF90554();
    sub_1AAF904C4();
    v77 = AssociatedConformanceWitness;
    sub_1AAF90554();
    sub_1AAF904C4();
    v73 = v46;
    sub_1AAF90554();
    sub_1AAF904C4();
    sub_1AAF90554();
    sub_1AAF904C4();
    *&v100[0] = sub_1AAE935DC(v72, v41);
    MEMORY[0x1EEE9AC00](*&v100[0]);
    v48 = v92;
    v47 = v93;
    *(&v71 - 4) = v41;
    *(&v71 - 3) = v48;
    *(&v71 - 2) = v47;
    v49 = sub_1AAF8F914();
    v86 = MEMORY[0x1E69E6340];
    v83 = v49;
    WitnessTable = swift_getWitnessTable();
    v85 = sub_1AACB00E0(sub_1AADF2EE0, (&v71 - 6), v49, v41, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v50);

    sub_1AACAF444(v41, v41);
    swift_allocObject();
    v51 = sub_1AAF8F854();
    swift_getAssociatedConformanceWitness();
    sub_1AAF90544();
    sub_1AAF90494();
    v52 = v93;
    sub_1AAF90554();
    sub_1AAF904C4();
    *&v100[0] = sub_1AAE935DC(v51, v41);
    MEMORY[0x1EEE9AC00](*&v100[0]);
    v53 = v92;
    *(&v71 - 4) = v41;
    *(&v71 - 3) = v53;
    *(&v71 - 2) = v52;
    v54 = v83;
    v55 = WitnessTable;
    v57 = sub_1AACB00E0(sub_1AADF2E04, (&v71 - 6), v83, v41, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v56);

    *&v100[0] = v57;
    MEMORY[0x1EEE9AC00](v58);
    *(&v71 - 2) = v41;
    *(&v71 - 1) = v53;
    swift_getWitnessTable();
    sub_1AAF90184();
    v59 = sub_1AAF8F884();

    *&v100[0] = v59;
    MEMORY[0x1EEE9AC00](v60);
    *(&v71 - 4) = v41;
    *(&v71 - 3) = v53;
    *(&v71 - 2) = v91;
    *&v100[0] = sub_1AAF90184();
    swift_getWitnessTable();
    v61 = sub_1AAF8F7D4();

    v91 = &v71;
    *&v100[0] = v61;
    MEMORY[0x1EEE9AC00](v62);
    *(&v71 - 2) = v41;
    *(&v71 - 1) = v53;
    v64 = type metadata accessor for FloatingPointBinningUnit(0, v41, v53, v63);
    v66 = sub_1AACB00E0(sub_1AADF2EC0, (&v71 - 4), v54, v64, MEMORY[0x1E69E73E0], v55, MEMORY[0x1E69E7410], v65);

    *&v100[0] = v66;
    sub_1AAF8F914();
    swift_getWitnessTable();
    if (sub_1AAF8FC24())
    {

      sub_1AAF90554();
      v67 = v71;
      sub_1AAF904C4();
      v68 = v95;
      v95(v90, v41);
      (*(v97 + 32))(v96, v67, v41);
      return v68(v52, v41);
    }

    else
    {
      swift_getWitnessTable();
      sub_1AADDDF14(v80, v66, v78, v79 & 1, v81 & 1, v64, v96);

      v70 = v95;
      v95(v90, v41);
      return v70(v52, v41);
    }
  }

  else
  {
    sub_1AAF90554();
    sub_1AAF904C4();
    v95(v38, v41);
    return (*(v97 + 32))(v96, v35, v41);
  }
}

void sub_1AADEC1CC(uint64_t a1, uint64_t a2, char a3, char a4, double a5, double a6)
{
  v7 = *(a1 + 16);
  if (v7 != 1)
  {
    if (v7)
    {
      v12 = MEMORY[0x1E69E7CC0];
      v49 = MEMORY[0x1E69E7CC0];
      sub_1AAD41148(0, v7, 0);
      v13 = a2;
      v14 = 0;
      v43 = a1;
      v48 = a1 + 32;
      do
      {
        if (v7 == v14)
        {
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
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v15 = sub_1AADF1738(a3 & 1, a4 & 1, a5, a6, *(v48 + 8 * v14));
        v16 = v15 - v13;
        if (v15 >= v13)
        {
          if (__OFSUB__(v15, v13))
          {
            goto LABEL_58;
          }
        }

        else
        {
          v16 = v13 - v15;
          if (__OFSUB__(v13, v15))
          {
            goto LABEL_57;
          }
        }

        v18 = *(v49 + 16);
        v17 = *(v49 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          sub_1AAD41148((v17 > 1), v19, 1);
          v13 = a2;
          v19 = v18 + 1;
        }

        ++v14;
        *(v49 + 16) = v19;
        *(v49 + 32 + 16 * v18) = vdupq_n_s64(v16);
      }

      while (v7 != v14);
      v45 = a3;
      v46 = a4;
      sub_1AAD214F4(0, v19, 0);
      v20 = v12;
      v21 = *(v12 + 16);
      v22 = v18 + 1;
      v23 = 40;
      do
      {
        v24 = *(v49 + v23);
        v25 = *(v20 + 24);
        if (v21 >= v25 >> 1)
        {
          sub_1AAD214F4((v25 > 1), v21 + 1, 1);
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 8 * v21 + 32) = v24;
        v23 += 16;
        ++v21;
        --v22;
      }

      while (v22);
      v26 = sub_1AADE6A18(v20);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v44 = v43 + 40;
        v33 = 1;
        while (1)
        {
          if (v29 < 0)
          {
            goto LABEL_61;
          }

          if (v29 >= *(v49 + 16))
          {
            goto LABEL_56;
          }

          if (v26 >= *(v49 + 32 + 16 * v29))
          {
            if (v29 >= v7)
            {
              goto LABEL_59;
            }

            v37 = sub_1AADF1738(v45 & 1, v46 & 1, a5, a6, *(v48 + 8 * v29));
            v35 = v37 - a2;
            if (__OFSUB__(v37, a2))
            {
              goto LABEL_60;
            }

            if (v35 < 0)
            {
              v38 = __OFSUB__(0, v35);
              v35 = a2 - v37;
              if (v38)
              {
                goto LABEL_62;
              }
            }

            if (v37 >= a2)
            {
              v36 = 0;
            }

            else
            {
              v36 = -1;
            }

            v34 = v29 + 1;
            if (v33)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v35 = qword_1EB424C68;
            v36 = unk_1EB424C70;
            v34 = v29 + 1;
            if (v33)
            {
              goto LABEL_20;
            }
          }

          v39 = v31 < v36;
          if (v35 != v30)
          {
            v39 = v35 < v30;
          }

          if (!v39)
          {
            if (v34 != v7)
            {
              v40 = (v49 + 48 + 16 * v29);
              while ((v29 + 1) < *(v49 + 16))
              {
                if (v26 >= *v40)
                {
                  if (v29 + 1 >= v7)
                  {
                    goto LABEL_59;
                  }

                  v41 = sub_1AADF1738(v45 & 1, v46 & 1, a5, a6, *(v44 + 8 * v29));
                  v35 = v41 - a2;
                  if (__OFSUB__(v41, a2))
                  {
                    goto LABEL_60;
                  }

                  if (v35 < 0)
                  {
                    v38 = __OFSUB__(0, v35);
                    v35 = a2 - v41;
                    if (v38)
                    {
                      goto LABEL_62;
                    }
                  }

                  if (v41 >= a2)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = -1;
                  }
                }

                else
                {
                  v35 = qword_1EB424C68;
                  v36 = unk_1EB424C70;
                }

                v42 = v31 < v36;
                if (v35 != v30)
                {
                  v42 = v35 < v30;
                }

                if (v42)
                {
                  v34 = v29 + 2;
                  ++v29;
                  goto LABEL_20;
                }

                ++v29;
                v40 += 2;
                if (v7 - 1 == v29)
                {
                  goto LABEL_53;
                }
              }

              goto LABEL_56;
            }

LABEL_53:

            if (v32 >= v7)
            {
              goto LABEL_64;
            }

            return;
          }

LABEL_20:
          v33 = 0;
          v32 = v29;
          v29 = v34;
          v30 = v35;
          v31 = v36;
          if (v34 == v7)
          {
            goto LABEL_53;
          }
        }
      }
    }

    else
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1AADEC5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = *(a3 + 24);
  v30 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = v27 - v9;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - v18;
  v32 = v4;
  v28 = a1;
  sub_1AAF8FEC4();
  if ((sub_1AAF8FF04() & 1) == 0)
  {
    v27[1] = v7;
    v21 = sub_1AAF8FF04();
    v22 = sub_1AAF8FEF4();
    if (v21)
    {
      if (v22 > 64)
      {
        v33 = 0;
        sub_1AADF24EC();
        sub_1AAF8FEA4();
        v23 = sub_1AAF8F564();
        (*(v10 + 8))(v13, a2);
        if (v23)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      swift_getAssociatedConformanceWitness();
      sub_1AAF90554();
      sub_1AAF904C4();
      v24 = sub_1AAF8F564();
      (*(v10 + 8))(v13, a2);
      if (v24)
      {
LABEL_14:
        (*(v10 + 16))(v16, v28, a2);
        goto LABEL_15;
      }
    }

    else if (v22 >= 64)
    {
      goto LABEL_13;
    }

LABEL_12:
    if ((sub_1AAF8FEE4() & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (sub_1AAF8FEF4() < 64)
  {
    goto LABEL_12;
  }

  v33 = 0;
  sub_1AADF24EC();
  sub_1AAF8FEA4();
  v20 = sub_1AAF8F564();
  (*(v10 + 8))(v13, a2);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_13:
  swift_getAssociatedConformanceWitness();
  sub_1AAF90554();
  sub_1AAF904C4();
LABEL_15:
  sub_1AAF902E4();
  sub_1AAF902F4();
  v25 = *(v10 + 8);
  v25(v13, a2);
  v25(v16, a2);
  return (v25)(v19, a2);
}

uint64_t sub_1AADECA24@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v40 = a5;
  v36 = a3;
  v37 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = *(v10 + 16);
  v35 = a1;
  v16(a6, a1, v17, v13);
  v18 = type metadata accessor for NumberBins.UniformStorage(0, a4, *(*(*(a5 + 16) + 24) + 8), *(*(*(a5 + 16) + 16) + 8));
  v19 = *(v18 + 44);
  v38 = v18;
  v20 = v37;
  (v16)(a6 + v19, v37, a4);
  *(a6 + *(v18 + 48)) = v36;
  (v16)(v15, a1, a4);
  v21 = v34;
  (v16)(v34, v20, a4);
  v22 = *(v10 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = (v11 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 16) = a4;
  *(v25 + 24) = v26;
  v27 = *(v10 + 32);
  v27(v25 + v23, v15, a4);
  v27(v25 + v24, v21, a4);
  v28 = (v39 + *(v38 + 52));
  *v28 = sub_1AADF2CF4;
  v28[1] = v25;
  v27(v15, v37, a4);
  v27(v21, v35, a4);
  v29 = swift_allocObject();
  v30 = v40;
  *(v29 + 16) = a4;
  *(v29 + 24) = v30;
  v27(v29 + v23, v15, a4);
  result = (v27)(v29 + v24, v21, a4);
  v32 = (v39 + *(v38 + 56));
  *v32 = sub_1AADF2D7C;
  v32[1] = v29;
  return result;
}

uint64_t sub_1AADECCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1AAF8F464();
  sub_1AAF8FAD4();
  v11 = *(v5 + 8);
  v11(v7, a4);
  sub_1AAF902E4();
  return (v11)(v10, a4);
}

uint64_t sub_1AADECE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[1] = a5;
  v24[2] = a3;
  v25 = sub_1AAF904A4();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  sub_1AAF902F4();
  sub_1AAF8F434();
  v19 = *(v9 + 8);
  v19(v12, a4);
  v20 = v25;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E7048], v25);
  sub_1AAF8F444();
  (*(v6 + 8))(v8, v20);
  v19(v15, a4);
  sub_1AADF2498();
  sub_1AAF902B4();
  if (v27)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1AAF900D4();
    v23 = sub_1AAF907B4();
    MEMORY[0x1AC5982F0](v23);

    MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
    MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
    MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    v21 = v26;
    v19(v18, a4);
    return v21;
  }

  return result;
}

uint64_t sub_1AADED184@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v37 = a2;
  v39 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = *(v10 + 16);
  v35 = a1;
  v16(a6, a1, v17, v13);
  v40 = a5;
  v18 = type metadata accessor for NumberBins.UniformStorage(0, a4, *(*(a5 + 32) + 8), *(a5 + 24));
  v19 = *(v18 + 44);
  v38 = v18;
  v20 = v37;
  (v16)(a6 + v19, v37, a4);
  *(a6 + *(v18 + 48)) = v36;
  (v16)(v15, a1, a4);
  v21 = v34;
  (v16)(v34, v20, a4);
  v22 = *(v10 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = (v11 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 16) = a4;
  *(v25 + 24) = v26;
  v27 = *(v10 + 32);
  v27(v25 + v23, v15, a4);
  v27(v25 + v24, v21, a4);
  v28 = (v39 + *(v38 + 52));
  *v28 = sub_1AADF2CC4;
  v28[1] = v25;
  v27(v15, v37, a4);
  v27(v21, v35, a4);
  v29 = swift_allocObject();
  v30 = v40;
  *(v29 + 16) = a4;
  *(v29 + 24) = v30;
  v27(v29 + v23, v15, a4);
  result = (v27)(v29 + v24, v21, a4);
  v32 = (v39 + *(v38 + 56));
  *v32 = sub_1AADF2CDC;
  v32[1] = v29;
  return result;
}

uint64_t sub_1AADED440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v15[1] = v12;
  sub_1AADF24EC();
  sub_1AAF8FF24();
  sub_1AAF8FAD4();
  v13 = *(v6 + 8);
  v13(v8, a4);
  sub_1AAF902E4();
  return (v13)(v11, a4);
}

uint64_t sub_1AADED5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *(*(a5 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v29 - v8;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  sub_1AAF902F4();
  sub_1AADEC5A4(a3, a4, a5, v15);
  v19 = *(v9 + 8);
  v19(v12, a4);
  sub_1AAF8FEB4();
  v19(v15, a4);
  if ((sub_1AAF8FF04() & 1) != 0 && sub_1AAF8FEF4() > 64)
  {
    v32 = 0x8000000000000000;
    if (sub_1AAF8FF04())
    {
      if (sub_1AAF8FEF4() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v20 = sub_1AAF8FF04();
    v21 = sub_1AAF8FEF4();
    if (v20)
    {
      if (v21 > 64)
      {
LABEL_8:
        sub_1AADF24EC();
        sub_1AAF8FEA4();
        v22 = sub_1AAF8F564();
        result = (v19)(v15, a4);
        if ((v22 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      sub_1AAF90554();
      sub_1AAF904C4();
      v24 = sub_1AAF8F564();
      result = (v19)(v15, a4);
      if (v24)
      {
        goto LABEL_25;
      }

LABEL_13:
      sub_1AAF8FEE4();
      goto LABEL_14;
    }

    if (v21 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (sub_1AAF8FEF4() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = sub_1AAF8FF04();
    v26 = sub_1AAF8FEF4();
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (v26 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_1AADF24EC();
    sub_1AAF8FEA4();
    v27 = sub_1AAF8F564();
    v19(v15, a4);
    if (v27)
    {
      __break(1u);
LABEL_19:
      if (sub_1AAF8FEF4() == 64 && (sub_1AAF8FF04() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v26 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_1AAF8FEE4();
LABEL_24:
  v28 = sub_1AAF8FEE4();
  v19(v18, a4);
  return v28;
}

BOOL sub_1AADEDA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1AAF8F5F4() & 1) != 0 && (v10 = type metadata accessor for NumberBins.UniformStorage(0, a3, a4, a5), (sub_1AAF8F5F4()))
  {
    return *(a1 + *(v10 + 48)) == *(a2 + *(v10 + 48));
  }

  else
  {
    return 0;
  }
}

uint64_t _s6Charts10NumberBinsV2eeoiySbACyxG_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a1;
  v39 = a2;
  v8 = type metadata accessor for NumberBins.UniformStorage(0, a3, a4, a5);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v32 - v9;
  v33 = a4;
  v34 = a3;
  v10 = type metadata accessor for NumberBins.Storage(0, a3, a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v32 - v20;
  v23 = *(v22 + 48);
  v37 = v11;
  v24 = *(v11 + 16);
  v24(&v32 - v20, v38, v10, v19);
  (v24)(&v21[v23], v39, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = a5;
    v28 = v35;
    v27 = v36;
    (v24)(v16, v21, v10);
    if (!swift_getEnumCaseMultiPayload())
    {
      v30 = v32;
      (*(v28 + 32))(v32, &v21[v23], v27);
      v26 = sub_1AADEDA50(v16, v30, v34, v33, v39);
      v31 = *(v28 + 8);
      v31(v30, v27);
      v31(v16, v27);
      v18 = v37;
      goto LABEL_11;
    }

    (*(v28 + 8))(v16, v27);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v26 = 1;
      v18 = v37;
      goto LABEL_11;
    }

LABEL_10:
    v26 = 0;
    v10 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  (v24)(v13, v21, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_10;
  }

  v26 = sub_1AAF8F924();

  v18 = v37;
LABEL_11:
  (*(v18 + 8))(v21, v10);
  return v26 & 1;
}

uint64_t NumberBins.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a1;
  v50 = a3;
  v5 = *(a2 + 16);
  v51 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  v17 = type metadata accessor for NumberBins.UniformStorage(0, v5, v15, v16);
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for NumberBins.Storage(0, v5, v15, v16);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  (*(v24 + 16))(&v45 - v22, v4, v20, v21);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v26 = v13;
    v27 = v56;
    if (result != 1)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    if ((v56 & 0x8000000000000000) == 0)
    {
      v28 = v15;
      result = sub_1AAF8F8D4();
      if (!__OFSUB__(result, 1))
      {
        if (result - 1 > v27)
        {
          v29 = result;
          sub_1AAF8F944();
          v30 = v52;
          sub_1AAF8F944();

          v31 = v51;
          v32 = v53;
          (*(v51 + 16))(v53, v26, v5);
          v33 = v54;
          (*(v31 + 32))(v54, v30, v5);
          result = (*(v31 + 8))(v26, v5);
          if (!__OFSUB__(v29, 2))
          {
            return sub_1AADE49F0(v32, v33, v29 - 2 == v27, v5, v28, v50);
          }

          goto LABEL_17;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v49 = v4;
  (*(v55 + 32))(v19, v23, v17);
  v34 = *(v17 + 52);
  v48 = v19;
  v35 = *&v19[v34];
  v36 = v56;
  v35(v56);
  result = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v37 = v36;
  v46 = v17;
  v47 = v15;
  v38 = v52;
  v35(result);
  v39 = v51;
  v40 = *(v51 + 16);
  v41 = v53;
  v40(v53, v13, v5);
  v42 = v54;
  v40(v54, v38, v5);
  swift_getWitnessTable();
  v43 = sub_1AAF8FBE4();
  v44 = *(v39 + 8);
  v44(v38, v5);
  result = (v44)(v13, v5);
  if (__OFSUB__(v43, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1AADE49F0(v41, v42, v43 - 1 == v37, v5, v47, v50);
  return (*(v55 + 8))(v48, v46);
}

uint64_t NumberBins.init(thresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  type metadata accessor for NumberBins.Storage(0, a2, a3, a4);

  return swift_storeEnumTagMultiPayload();
}

void NumberBins.init<>(range:count:)(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29 = a4;
  v30 = a3;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = v16;
    v20 = *(v30 + 16);
    v28 = *(*(v20 + 24) + 8);
    v21 = sub_1AAF8F5D4();
    if (v19)
    {
      v22 = *(*(v20 + 16) + 8);
      v26 = v21;
      v27 = v22;
      sub_1AAF902F4();
      v25 = v19;
      sub_1AAF8F464();
      sub_1AAF8F434();
      v23 = *(v6 + 8);
      v23(v11, a2);
      v23(v14, a2);
      v24 = *(v6 + 16);
      v24(v14, a1, a2);
      v24(v11, v18, a2);
      v24(v8, v14, a2);
      sub_1AADECA24(v11, v8, v25, a2, v30, v29);
      (*(*(v26 - 8) + 8))(a1);
      v23(v14, a2);
      v23(v18, a2);
      type metadata accessor for NumberBins.Storage(0, a2, v28, v27);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(*(v21 - 8) + 8))(a1);
      type metadata accessor for NumberBins.Storage(0, a2, v28, *(*(v20 + 16) + 8));

      swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t NumberBins.init<>(range:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a5;
  v59 = *(a4 + 24);
  v60 = a4;
  v8 = *(v59 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v48 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v48 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v57 = v48 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v58 = v48 - v24;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v48[2] = v23;
  v53 = v19;
  v54 = v16;
  v25 = *(*(v60 + 32) + 8);
  v26 = sub_1AAF8F5D4();
  if (a2)
  {
    v48[0] = AssociatedTypeWitness;
    v48[1] = v8;
    v49 = v26;
    v27 = v58;
    v28 = *(v59 + 8);
    v48[3] = *(v26 + 36);
    v48[4] = v28;
    v51 = a1;
    sub_1AAF902F4();
    v55 = a2;
    v61 = a2;
    sub_1AADF24EC();
    v29 = v57;
    sub_1AAF8FF24();
    sub_1AAF8FEC4();
    v50 = v10;
    v30 = *(v10 + 8);
    v30(v29, a3);
    v31 = v27;
    AssociatedTypeWitness = v30;
    v30(v31, a3);
    v32 = sub_1AAF8FF04();
    v52 = v25;
    if (v32)
    {
      if (sub_1AAF8FEF4() < 64)
      {
        v33 = sub_1AAF8FEE4();
        result = (AssociatedTypeWitness)(v13, a3);
        v35 = v58;
        goto LABEL_20;
      }

      v61 = 0;
      v35 = v58;
      sub_1AAF8FEA4();
LABEL_16:
      v38 = sub_1AAF8F5F4();
      (AssociatedTypeWitness)(v35, a3);
      result = (AssociatedTypeWitness)(v13, a3);
      if (v38)
      {
LABEL_21:
        v40 = v51;
        v41 = v53;
        sub_1AAF902F4();
        v42 = v60;
        v43 = v57;
        sub_1AAF8FF24();
        v61 = v55;
        sub_1AAF8FF24();
        sub_1AAF8FEB4();
        (AssociatedTypeWitness)(v41, a3);
        (AssociatedTypeWitness)(v43, a3);
        v58 = AssociatedTypeWitness;
        v44 = v35;
        v45 = *(v50 + 16);
        v45(v43, v40, a3);
        v45(v41, v35, a3);
        v46 = v54;
        v45(v54, v43, a3);
        sub_1AADED184(v41, v46, v55, a3, v42, v56);
        (*(*(v49 - 8) + 8))(v40);
        v47 = v58;
        (v58)(v43, a3);
        v47(v44, a3);
        type metadata accessor for NumberBins.Storage(0, a3, v52, v59);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_24;
    }

    v36 = sub_1AAF8FF04();
    v37 = sub_1AAF8FEF4();
    if ((v36 & 1) == 0)
    {
      v35 = v58;
      if (v37 >= 64)
      {
        v61 = 0;
        goto LABEL_15;
      }

LABEL_19:
      v33 = sub_1AAF8FEE4();
      result = (AssociatedTypeWitness)(v13, a3);
LABEL_20:
      if (!v33)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    v35 = v58;
    if (v37 > 64)
    {
      v61 = 0;
LABEL_15:
      sub_1AAF8FEA4();
      goto LABEL_16;
    }

    swift_getAssociatedConformanceWitness();
    sub_1AAF90554();
    sub_1AAF904C4();
    v39 = sub_1AAF8F574();
    (AssociatedTypeWitness)(v35, a3);
    if (v39)
    {
      goto LABEL_19;
    }

LABEL_23:
    result = (AssociatedTypeWitness)(v13, a3);
LABEL_24:
    __break(1u);
    return result;
  }

  (*(*(v26 - 8) + 8))(a1);
  type metadata accessor for NumberBins.Storage(0, a3, v25, v59);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NumberBins.init<>(range:desiredCount:minimumStride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a3;
  v49 = a2;
  v45 = a6;
  v9 = sub_1AAF8F5D4();
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v45 - v10;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v45 - v22;
  v53 = *(v11 + 16);
  v53(&v45 - v22, a1, a4, v21);
  v24 = sub_1AAF8FEF4();
  v50 = v9;
  if (v24 < 65)
  {
    v26 = v16;
    v27 = a1;
    v28 = sub_1AAF8FF04();
    v29 = sub_1AAF8FEE4();
    v52 = *(v11 + 8);
    v52(v23, a4);
    v30 = (v28 & 1) == 0;
    a1 = v27;
    v16 = v26;
    v9 = v50;
    if (v30)
    {
      v25 = v29;
    }

    else
    {
      v25 = v29;
    }
  }

  else
  {
    sub_1AAD46810();
    sub_1AADF2540();
    sub_1AAF8F364();
    v52 = *(v11 + 8);
    v52(v23, a4);
    v25 = v54;
  }

  (v53)(v19, a1 + *(v9 + 36), a4);
  if (sub_1AAF8FEF4() <= 64)
  {
    v33 = sub_1AAF8FF04();
    v34 = sub_1AAF8FEE4();
    result = (v52)(v19, a4);
    if (v33)
    {
      v32 = v34;
    }

    else
    {
      v32 = v34;
    }
  }

  else
  {
    sub_1AAD46810();
    sub_1AADF2540();
    sub_1AAF8F364();
    result = (v52)(v19, a4);
    v32 = v54;
  }

  if (v25 > v32)
  {
    __break(1u);
    goto LABEL_20;
  }

  v35 = v49 + 1;
  if (__OFADD__(v49, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  (v53)(v16, v51, a4);
  if (sub_1AAF8FEF4() <= 64)
  {
    v38 = sub_1AAF8FF04();
    v39 = sub_1AAF8FEE4();
    v36 = v52;
    v52(v16, a4);
    if (v38)
    {
      v37 = v39;
    }

    else
    {
      v37 = v39;
    }
  }

  else
  {
    sub_1AAD46810();
    sub_1AADF2540();
    sub_1AAF8F364();
    v36 = v52;
    v52(v16, a4);
    v37 = v54;
  }

  v40 = v45;
  v54 = sub_1AADEAF9C(v35, 1, 1, v25, v32, fmax(v37, 1.0));
  sub_1AAD46810();
  v41 = v46;
  sub_1AAF8FF14();
  v43 = v47;
  v42 = v48;
  v44 = v50;
  (*(v48 + 16))(v47, a1, v50);
  NumberBins.init<>(size:range:)(v41, v43, a4, a5, v40);
  v36(v51, a4);
  return (*(v42 + 8))(a1, v44);
}

uint64_t NumberBins.init<>(data:desiredCount:minimumStride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v86 = a6;
  v83 = a4;
  v77 = a3;
  v66 = a2;
  v82 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v69 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v65 - v12;
  v81 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v65 - v18;
  v19 = *(a6 + 16);
  v76 = *(*(*(v19 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v65 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v72 = &v65 - v25;
  v74 = *(*(v19 + 24) + 8);
  v26 = sub_1AAF8F5D4();
  v80 = sub_1AAF8FE74();
  v84 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v65 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65 - v29;
  v31 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v67 = &v65 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v65 - v38;
  v40 = a1;
  v87 = a1;
  v41 = sub_1AAF8F914();
  WitnessTable = swift_getWitnessTable();
  v43 = v41;
  v44 = v26;
  sub_1AAF77FE4(v43, WitnessTable, v86, v30);
  if ((*(v31 + 48))(v30, 1, v26) == 1)
  {

    (*(v84 + 8))(v30, v80);
    swift_getAssociatedConformanceWitness();
    sub_1AAF90554();
    sub_1AAF904C4();
    sub_1AAF90554();
    v45 = v78;
    sub_1AAF904C4();
    sub_1AAF90554();
    v46 = v79;
    sub_1AAF904C4();
    result = sub_1AAF8F584();
    if (result)
    {
      v48 = v81;
      v49 = *(v81 + 32);
      v50 = v68;
      v49(v68, v45, a5);
      v51 = TupleTypeMetadata2;
      v49(&v50[*(TupleTypeMetadata2 + 48)], v46, a5);
      v84 = v44;
      v52 = v69;
      v53 = v70;
      (*(v69 + 16))(v70, v50, v51);
      v80 = *(v51 + 48);
      v54 = v67;
      v49(v67, v53, a5);
      v55 = *(v48 + 8);
      v55(&v53[v80], a5);
      (*(v52 + 32))(v53, v50, v51);
      v49((v54 + *(v84 + 36)), &v53[*(v51 + 48)], a5);
      v55(v53, a5);
      NumberBins.init<>(size:range:)(v85, v54, a5, v86, v82);
      return (v55)(v83, a5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v56 = v84;
    v57 = v40;
    (*(v31 + 32))(v39, v30, v44);
    v58 = *(v31 + 16);
    v58(v34, v39, v44);
    if (v77)
    {
      v59 = v65;
      v58(v65, v39, v44);
      (*(v31 + 56))(v59, 0, 1, v44);
      v60 = sub_1AAF79400(v59, v57, a5, v86);

      (*(v56 + 8))(v59, v80);
      if (v60 >= 200)
      {
        v61 = 200;
      }

      else
      {
        v61 = v60;
      }
    }

    else
    {

      v61 = v66;
    }

    v62 = v81;
    v63 = v85;
    v64 = v83;
    (*(v81 + 16))(v85, v83, a5);
    NumberBins.init<>(range:desiredCount:minimumStride:)(v34, v61, v63, a5, v86, v82);
    (*(v62 + 8))(v64, a5);
    return (*(v31 + 8))(v39, v44);
  }

  return result;
}

uint64_t NumberBins.init<>(data:desiredCount:minimumStride:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v101 = a4;
  LODWORD(v98) = a3;
  v82 = a2;
  v100 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v87 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v81 - v12;
  v102 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v81 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v81 - v22;
  v95 = *(*(a6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v94 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v92 = &v81 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v91 = &v81 - v28;
  v104 = a6;
  v29 = *(*(a6 + 32) + 8);
  v30 = sub_1AAF8F5D4();
  v31 = sub_1AAF8FE74();
  v89 = *(v31 - 8);
  v90 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v81 - v32;
  v34 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v99 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v84 = &v81 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v81 - v40;
  v42 = a1;
  v106 = a1;
  v105 = a5;
  v43 = sub_1AAF8F914();
  WitnessTable = swift_getWitnessTable();
  v93 = v29;
  sub_1AAF78EEC(v43, WitnessTable, v29, v33);
  if (v34[6](v33, 1, v30) == 1)
  {
    v99 = v30;

    (*(v89 + 8))(v33, v90);
    swift_getAssociatedConformanceWitness();
    sub_1AAF90554();
    sub_1AAF904C4();
    sub_1AAF90554();
    v45 = v96;
    sub_1AAF904C4();
    sub_1AAF90554();
    v46 = v97;
    sub_1AAF904C4();
    result = sub_1AAF8F584();
    if (result)
    {
      v48 = v102;
      v49 = *(v102 + 32);
      v50 = v85;
      v51 = v105;
      v49(v85, v45, v105);
      v52 = TupleTypeMetadata2;
      v49(&v50[*(TupleTypeMetadata2 + 48)], v46, v51);
      v53 = v86;
      v54 = v87;
      (*(v86 + 16))(v87, v50, v52);
      v98 = *(v52 + 48);
      v55 = v84;
      v49(v84, v54, v51);
      v56 = *(v48 + 8);
      v56(&v98[v54], v51);
      (*(v53 + 32))(v54, v50, v52);
      v49((v55 + *(v99 + 9)), &v54[*(v52 + 48)], v51);
      v56(v54, v51);
      NumberBins.init<>(size:range:)(v103, v55, v51, v104, v100);
      return (v56)(v101, v51);
    }

    __break(1u);
    goto LABEL_23;
  }

  v57 = (v34[4])(v41, v33, v30);
  v106 = v42;
  MEMORY[0x1EEE9AC00](v57);
  v59 = v104;
  v58 = v105;
  *(&v81 - 2) = v105;
  *(&v81 - 1) = v59;
  v60 = swift_getWitnessTable();
  v62 = sub_1AACB00E0(sub_1AADF2594, (&v81 - 4), v43, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], v60, MEMORY[0x1E69E7410], v61);

  v63 = v99;
  v34[2](v99, v41, v30);
  v64 = v34;
  if ((v98 & 1) == 0)
  {

    v65 = v102;
    v69 = *(v102 + 16);
    v70 = v82;
LABEL_21:
    v79 = v103;
    v80 = v101;
    v69(v103, v101, v58);
    NumberBins.init<>(range:desiredCount:minimumStride:)(v63, v70, v79, v58, v104, v100);
    (*(v65 + 8))(v80, v58);
    return v64[1](v41, v30);
  }

  v95 = v62;
  v96 = v34;
  v65 = v102;
  v66 = v81;
  v97 = *(v102 + 16);
  v98 = v41;
  (v97)(v81, v41, v58);
  if (sub_1AAF8FEF4() < 65)
  {
    v71 = sub_1AAF8FF04();
    v72 = sub_1AAF8FEE4();
    v67 = *(v65 + 8);
    v67(v66, v58);
    if (v71)
    {
      v68 = v72;
    }

    else
    {
      v68 = v72;
    }
  }

  else
  {
    sub_1AAD46810();
    sub_1AADF2540();
    sub_1AAF8F364();
    v67 = *(v65 + 8);
    v67(v66, v58);
    v68 = *&v106;
  }

  v73 = v83;
  (v97)(v83, &v98[*(v30 + 36)], v58);
  if (sub_1AAF8FEF4() <= 64)
  {
    v75 = v73;
    v76 = sub_1AAF8FF04();
    v77 = sub_1AAF8FEE4();
    result = (v67)(v75, v58);
    if (v76)
    {
      v74 = v77;
    }

    else
    {
      v74 = v77;
    }
  }

  else
  {
    sub_1AAD46810();
    sub_1AADF2540();
    sub_1AAF8F364();
    result = (v67)(v73, v58);
    v74 = *&v106;
  }

  v64 = v96;
  v41 = v98;
  v63 = v99;
  if (v68 <= v74)
  {
    v78 = sub_1AADE88F8(*&v68, *&v74, 0, v95);

    if (v78 >= 200)
    {
      v70 = 200;
    }

    else
    {
      v70 = v78;
    }

    v69 = v97;
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1AADF0E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a4@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  if (sub_1AAF8FEF4() < 65)
  {
    v12 = sub_1AAF8FF04();
    v13 = sub_1AAF8FEE4();
    result = (*(v6 + 8))(v9, a2);
    if (v12)
    {
      v11 = v13;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    sub_1AAD46810();
    sub_1AADF2540();
    sub_1AAF8F364();
    result = (*(v6 + 8))(v9, a2);
    v11 = *&v14[1];
  }

  *a4 = v11;
  return result;
}

uint64_t NumberBins.index(for:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = type metadata accessor for NumberBins.UniformStorage(0, v5, v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for NumberBins.Storage(0, v5, v6, v7);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v22 - v14);
  (*(v16 + 16))(&v22 - v14, v3, v12, v13);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    (*(v9 + 32))(v11, v15, v8);
    v21 = (*&v11[*(v8 + 56)])(a1);
    (*(v9 + 8))(v11, v8);
    return v21;
  }

  if (result == 1)
  {
    v18 = *v15;
    v19 = sub_1AAF8F8D4();
    result = sub_1AAF79F04(a1, v19, v18, v5, v6);
    if ((v20 & 1) == 0)
    {
      v21 = result;

      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall NumberBins.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t NumberBins.endIndex.getter(void *a1)
{
  v2 = v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = type metadata accessor for NumberBins.UniformStorage(0, v3, v4, v5);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for NumberBins.Storage(0, v3, v4, v5);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v20 - v12);
  (*(v14 + 16))(&v20 - v12, v2, v10, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  v16 = EnumCaseMultiPayload;
  result = 0;
  if (v16 == 1)
  {
    v6 = *v13;
    v18 = sub_1AAF8F8D4();

    result = v18 - 1;
    if (__OFSUB__(v18, 1))
    {
      __break(1u);
LABEL_6:
      (*(v7 + 32))(v9, v13, v6);
      v19 = *&v9[*(v6 + 48)];
      (*(v7 + 8))(v9, v6);
      return v19;
    }
  }

  return result;
}

uint64_t sub_1AADF142C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = NumberBins.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1AADF1454(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AADF14DC(v6, *a2, a3, v7);
  return sub_1AAD9E48C;
}

void (*sub_1AADF14DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v7 = type metadata accessor for ChartBinRange(0, *(a3 + 16), *(a3 + 24), a4);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  NumberBins.subscript.getter(a2, a3, v9);
  return sub_1AAD9E5BC;
}

uint64_t sub_1AADF15CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_1AAF90294();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1AADF1658(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AADF16AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1AAD9EC60(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_1AADF1738(char a1, int a2, double a3, double a4, double a5)
{
  v49 = a2;
  v9 = sub_1AAF904A4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - v19;
  v22 = v10[13];
  v23 = MEMORY[0x1E69E7048];
  v24 = (a1 & 1) == 0;
  v25 = MEMORY[0x1E69E7048];
  if (v24)
  {
    v23 = MEMORY[0x1E69E7040];
  }

  v26 = *v23;
  v48 = v10[13];
  v22(&v45 - v19, v26, v9, v20);
  v27 = a3 / a5;
  v51 = v27;
  v47 = v10[2];
  v47(v17, v21, v9);
  v46 = v10[11];
  v28 = v46(v17, v9);
  v29 = *MEMORY[0x1E69E7038];
  if (v28 == *MEMORY[0x1E69E7038])
  {
    v30 = round(v27);
  }

  else if (v28 == *MEMORY[0x1E69E7030])
  {
    v30 = rint(v27);
  }

  else if (v28 == *MEMORY[0x1E69E7040])
  {
    v30 = ceil(v27);
  }

  else if (v28 == *v25)
  {
    v30 = floor(v27);
  }

  else
  {
    if (v28 != *MEMORY[0x1E69E7020])
    {
      if (v28 == *MEMORY[0x1E69E7028])
      {
        v31 = v10[1];
        v31(v21, v9);
        v39 = ceil(v27);
        v40 = floor(v27);
        if (v27 < 0.0)
        {
          v30 = v40;
        }

        else
        {
          v30 = v39;
        }
      }

      else
      {
        sub_1AAF8FA04();
        v42 = v21;
        v43 = v10[1];
        v43(v42, v9);
        v44 = v17;
        v31 = v43;
        v43(v44, v9);
        v30 = v51;
      }

      v25 = MEMORY[0x1E69E7048];
      goto LABEL_15;
    }

    v30 = trunc(v27);
  }

  v31 = v10[1];
  v31(v21, v9);
LABEL_15:
  v32 = MEMORY[0x1E69E7040];
  if ((v49 & 1) == 0)
  {
    v32 = v25;
  }

  v48(v14, *v32, v9);
  v33 = a4 / a5;
  v51 = v33;
  v34 = v50;
  v47(v50, v14, v9);
  v35 = v46(v34, v9);
  if (v35 == v29)
  {
    v36 = round(v33);
LABEL_27:
    v37 = v31(v14, v9);
    goto LABEL_28;
  }

  if (v35 == *MEMORY[0x1E69E7030])
  {
    v36 = rint(v33);
    goto LABEL_27;
  }

  if (v35 == *MEMORY[0x1E69E7040])
  {
    v36 = ceil(v33);
    goto LABEL_27;
  }

  if (v35 == *v25)
  {
    v36 = floor(v33);
    goto LABEL_27;
  }

  if (v35 == *MEMORY[0x1E69E7020])
  {
    v36 = trunc(v33);
    goto LABEL_27;
  }

  if (v35 == *MEMORY[0x1E69E7028])
  {
    v31(v14, v9);
    v37.n128_f64[0] = ceil(v33);
    v41 = floor(v33);
    if (v33 < 0.0)
    {
      v36 = v41;
    }

    else
    {
      v36 = v37.n128_f64[0];
    }
  }

  else
  {
    sub_1AAF8FA04();
    v31(v14, v9);
    v31(v34, v9);
    v36 = v51;
  }

LABEL_28:
  v37.n128_f64[0] = v36 - v30;
  sub_1AAEC8604(&v51, v37);
  if (v52)
  {
LABEL_43:
    v51 = 0.0;
    v52 = 0xE000000000000000;
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0x656C62756F44, 0xE600000000000000);
    MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
    MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
    MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
    result = sub_1AAF902C4();
    __break(1u);
    return result;
  }

  result = *&v51 + 1;
  if (__OFADD__(*&v51, 1))
  {
    __break(1u);
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_1AADF1CA0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v42 = a1;
  v50 = a3;
  LODWORD(v47) = a2;
  v5 = sub_1AAF904A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - v9;
  v11 = *(a4 + 16);
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v43 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v45 = v39 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v46 = v39 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v39 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v39 - v22;
  v48 = *(a4 + 24);
  sub_1AAF8F434();
  v24 = *(v6 + 104);
  v41 = v24;
  v25 = *MEMORY[0x1E69E7048];
  v40 = *MEMORY[0x1E69E7048];
  v26 = *MEMORY[0x1E69E7040];
  if (v47)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v24(v10, v27, v5);
  sub_1AAF8F444();
  v28 = *(v6 + 8);
  v39[1] = v6 + 8;
  v47 = v28;
  v29 = v5;
  v28(v10, v5);
  v30 = *(v44 + 8);
  v30(v20, v11);
  sub_1AAF8F5D4();
  v31 = v45;
  sub_1AAF8F434();
  if (v50)
  {
    v32 = v26;
  }

  else
  {
    v32 = v40;
  }

  v33 = v46;
  v34 = v49;
  v41(v49, v32, v29);
  sub_1AAF8F444();
  v47(v34, v29);
  v30(v31, v11);
  v35 = v43;
  sub_1AAF902F4();
  sub_1AADF2498();
  sub_1AAF902B4();
  if (v52)
  {
    goto LABEL_11;
  }

  v36 = v51;
  v30(v35, v11);
  v30(v33, v11);
  v30(v23, v11);
  result = v36 + 1;
  if (__OFADD__(v36, 1))
  {
    __break(1u);
LABEL_11:
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_1AAF900D4();
    v38 = sub_1AAF907B4();
    MEMORY[0x1AC5982F0](v38);

    MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
    MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
    MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
    result = sub_1AAF902C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AADF21AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1AAF90554();
  sub_1AAF904C4();
  v7 = sub_1AAF8F554();
  (*(v3 + 8))(v5, a2);
  return v7 & 1;
}

uint64_t sub_1AADF2368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  return (*(v5 + 32))(a3, v8, a2);
}

unint64_t sub_1AADF2498()
{
  result = qword_1EB424CD8;
  if (!qword_1EB424CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424CD8);
  }

  return result;
}

unint64_t sub_1AADF24EC()
{
  result = qword_1EB424CE0;
  if (!qword_1EB424CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424CE0);
  }

  return result;
}

unint64_t sub_1AADF2540()
{
  result = qword_1EB424CE8;
  if (!qword_1EB424CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB424CE8);
  }

  return result;
}

uint64_t sub_1AADF25B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AADF264C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = ((((((*(v3 + 64) + ((*(v3 + 64) + *(v3 + 80)) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((((((*(v3 + 64) + ((*(v3 + 64) + *(v3 + 80)) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v5 = v4 | 1;
  if ((v4 | 1) <= 3)
  {
    v6 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v6 = 2;
  }

  if (v6 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v6 < 0x100)
  {
    v7 = 1;
  }

  if (v6 >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = *&a1[v5];
      if (*&a1[v5])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = *&a1[v5];
      if (v9)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v13 = a1[v4];
    if (v13 >= 3)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = a1[v5];
  if (!a1[v5])
  {
    goto LABEL_27;
  }

LABEL_23:
  v11 = (v9 - 1) << (8 * v5);
  if (v5 <= 3)
  {
    v12 = *a1;
  }

  else
  {
    v11 = 0;
    v12 = *a1;
  }

  return (v12 | v11) + 254;
}

void sub_1AADF2780(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = ((((((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((((((*(v5 + 64) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v6 = 8;
  }

  v7 = v6 | 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v7] = 0;
    }

    else if (v10)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v6] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v7 <= 3)
  {
    v8 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = a2 - 254;
  v12 = (a2 - 254) >> 8;
  bzero(a1, v6 | 1);
  if (v7 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v7 <= 3)
  {
    *a1 = v11;
    if (v10 > 1)
    {
LABEL_21:
      if (v10 == 2)
      {
        *&a1[v7] = v13;
      }

      else
      {
        *&a1[v7] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v11;
    if (v10 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v10)
  {
    a1[v7] = v13;
  }
}

uint64_t sub_1AADF2914(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v20 = *((((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *sub_1AADF2A80(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((((((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((((((v12 + v11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v23 = ((((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          *v23 = a2 - 1;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

uint64_t sub_1AADF2C88(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AADF2D0C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(*(v2 + 16) - 8);
  v4 = *(v3 + 80);
  return a2(a1, v2 + ((v4 + 32) & ~v4), v2 + ((*(v3 + 64) + v4 + ((v4 + 32) & ~v4)) & ~v4));
}

uint64_t sub_1AADF2D94(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(*(v2 + 16) - 8);
  v4 = *(v3 + 80);
  return a2(a1, v2 + ((v4 + 32) & ~v4), v2 + ((*(v3 + 64) + v4 + ((v4 + 32) & ~v4)) & ~v4));
}

uint64_t Chart.init<A, B>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1AAF8EFE4();
  swift_getWitnessTable();
  sub_1AADF3064(a1, a2, a3, a4, a5, a6, a7, a8);

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t sub_1AADF3064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return ForEach<>.init(_:content:)(v17, a2, a3, a4, AssociatedTypeWitness, a5, a6, a7, a8);
}

uint64_t Chart.init<A, B, C>(_:id:content:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1AAF8EFE4();
  swift_getWitnessTable();
  sub_1AADF3318(a1, a2, a3, a4, a5);

  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t sub_1AADF3318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);

  return ForEach<>.init(_:id:content:)(v11, a2, a3, a4, a5);
}

uint64_t sub_1AADF3444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for Chart(0, a2, a3, a4);
  v9[3] = a2;
  v6 = sub_1AAF8D1C4();
  sub_1AACBE580(a1, sub_1AAD62594, v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t sub_1AADF34D8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AACBC63C();
  sub_1AACCFD50(0, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
  sub_1AADFAC20();
  v5 = sub_1AAF8D194();
  return sub_1AADF35CC(v5, a2);
}

uint64_t sub_1AADF35CC(int a1, uint64_t a2)
{
  v102 = a2;
  LODWORD(v101) = a1;
  v124 = *MEMORY[0x1E69E9840];
  sub_1AADFAC74(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v106 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v115 = &v94 - v7;
  v113 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v94 - v10;
  sub_1AADFACDC(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v94 - v18;
  State = type metadata accessor for MakeState(0);
  MEMORY[0x1EEE9AC00](State);
  v99 = (&v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AADFAD10(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v105 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v94 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v94 - v25;
  sub_1AADFAD44(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v104 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v98 = &v94 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v94 - v32;
  v34 = type metadata accessor for CombinedMountableOutput(0);
  v35 = v34 - 8;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v94 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v13[7];
  v111 = v13 + 7;
  v112 = v39;
  (v39)(v38, 1, 1, v12, v36);
  v40 = *(v35 + 28);
  v121 = v4;
  v122 = v38;
  v42 = *(v4 + 56);
  v41 = v4 + 56;
  v120 = v40;
  v109 = v42;
  v110 = v3;
  (v42)(&v38[v40], 1, 1, v3);
  v43 = *MEMORY[0x1E698D3F8];
  v123 = *MEMORY[0x1E698D3F8];
  sub_1AACBC63C();
  sub_1AADF9AA8(0);
  v45 = v44;
  v46 = sub_1AADFAD78();
  v123 = sub_1AAF8D194();
  if (v14 != 4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v96 = v41;
  v97 = v26;
  v119 = v13;
  v48 = (v13 + 2);
  v47 = v13[2];
  v95 = v47;
  v47(v33, &v123, v12);
  v107 = v45;
  v108 = v46;
  v49 = v112;
  v112(v33, 0, 1, v12);
  v50 = v122;
  sub_1AADFAE20(v33, v122, sub_1AADFAD44);
  v123 = v43;
  v123 = sub_1AAF8D194();
  v108 = v48;
  v47(v33, &v123, v12);
  v51 = v12;
  v49(v33, 0, 1, v12);
  sub_1AADFAE20(v33, v50, sub_1AADFAD44);
  v123 = v43;
  sub_1AACBC63C();
  sub_1AADFACA8(0);
  sub_1AADFADCC();
  v123 = sub_1AAF8D194();
  if (v113 != 4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v52 = v121;
  v53 = v97;
  v54 = v110;
  v112 = *(v121 + 16);
  v113 = v121 + 16;
  (v112)(v97, &v123, v110);
  (v109)(v53, 0, 1, v54);
  sub_1AADFAE20(v53, &v122[v120], sub_1AADFAD10);
  v55 = AGSubgraphGetCurrent();
  if (!v55)
  {
    goto LABEL_11;
  }

  v56 = v55;
  v57 = MEMORY[0x1E69E7CC0];
  v58 = sub_1AADF8034(MEMORY[0x1E69E7CC0]);
  v59 = v99;
  *v99 = v101;
  *(v59 + 8) = v56;
  v60 = State;
  v61 = *(State + 24);
  v62 = sub_1AAF8D974();
  (*(*(v62 - 8) + 16))(v59 + v61, v102, v62);
  v63 = v59 + *(v60 + 28);
  *v63 = v57;
  *(v63 + 8) = v58;
  *(v63 + 16) = 0;
  sub_1AACBC63C();
  sub_1AACCC5FC(&qword_1ED9AF648, type metadata accessor for MakeState, &unk_1AAFB63E0);
  v64 = sub_1AAF8D194();
  sub_1AADFAF78(v59, type metadata accessor for MakeState);
  v65 = v98;
  sub_1AADFAEBC(v122, v98, sub_1AADFAD44);
  v66 = v119;
  v107 = v119[6];
  if (v107(v65, 1, v51) == 1)
  {
    sub_1AADFAF78(v65, sub_1AADFAD44);
  }

  else
  {
    v67 = v66[4];
    v68 = v114;
    v111 = v66 + 4;
    v109 = v67;
    v67(v114, v65, v51);
    v69 = v116;
    v95(v116, v68, v51);
    v70 = v66[1];
    v119 = v66 + 1;
    v108 = v70;
    v71 = (v70)(v69, v51);
    MEMORY[0x1EEE9AC00](v71);
    LODWORD(v102) = v64;
    MEMORY[0x1EEE9AC00](v72);
    AGGraphMutateAttribute();
    v73 = v103;
    sub_1AADFAEBC(&v122[v120], v103, sub_1AADFAD10);
    v101 = *(v52 + 48);
    if (v101(v73, 1, v54) == 1)
    {
      sub_1AADFAF78(v73, sub_1AADFAD10);
    }

    else
    {
      v74 = v52;
      v75 = *(v52 + 32);
      v76 = v118;
      v75(v118, v73, v54);
      v77 = v115;
      (v112)(v115, v76, v54);
      v78 = *(v74 + 8);
      v121 = v74 + 8;
      v79 = v78(v77, v54);
      MEMORY[0x1EEE9AC00](v79);
      MEMORY[0x1EEE9AC00](v80);
      AGGraphMutateAttribute();
      v81 = v104;
      sub_1AADFAEBC(v122, v104, sub_1AADFAD44);
      v82 = v107(v81, 1, v51);
      v83 = sub_1AADFAD44;
      if (v82 != 1)
      {
        v84 = v109;
        v109(v117, v81, v51);
        v85 = v105;
        sub_1AADFAEBC(&v122[v120], v105, sub_1AADFAD10);
        if (v101(v85, 1, v54) != 1)
        {
          v86 = v106;
          v75(v106, v85, v54);
          v87 = v115;
          (v112)(v115, v86, v54);
          v88 = *v87;
          v78(v87, v54);
          v123 = v88;
          sub_1AACBC63C();
          sub_1AADFAF24();
          v89 = sub_1AAF8D194();
          v78(v86, v54);
          v78(v118, v54);
          v90 = v108;
          v108(v114, v51);
          v91 = v116;
          v84(v116, v117, v51);
          v92 = *v91;
          v90(v91, v51);
          sub_1AADFAF78(v122, type metadata accessor for CombinedMountableOutput);
          return v92 | (v89 << 32);
        }

        v108(v117, v51);
        v83 = sub_1AADFAD10;
        v104 = v85;
      }

      sub_1AADFAF78(v104, v83);
    }
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

void sub_1AADF43AC(void *a1@<X8>)
{
  if (*v1 == *MEMORY[0x1E698D3F8])
  {

    bzero(a1, 0x323uLL);
  }

  else
  {
    Value = AGGraphGetValue();

    sub_1AADF9ADC(Value, a1);
  }
}

uint64_t sub_1AADF442C(uint64_t a1)
{
  v2 = v1;
  v68 = *MEMORY[0x1E69E9840];
  v39 = *(v1 + 48);
  sub_1AADF43AC(__src);
  Value = AGGraphGetValue();
  v5 = *(Value + 27);
  v6 = Value[1];
  v40 = *Value;
  v41[0] = v6;
  *(v41 + 11) = v5;
  sub_1AADF9958(&v40, &v48);
  v7 = AGGraphGetValue();
  v8 = *(v7 + 27);
  v9 = v7[1];
  v42 = *v7;
  v43[0] = v9;
  *(v43 + 11) = v8;
  sub_1AADF9958(&v42, &v48);
  v10 = MEMORY[0x1E69E6720];
  sub_1AACCFD50(0, &qword_1ED9AE370, &type metadata for ForegroundStyleScale, MEMORY[0x1E69E6720]);
  v11 = AGGraphGetValue();
  v37 = *(v11 + 8);
  v38 = *v11;
  v36 = *(v11 + 16);
  sub_1AADF99B4(*v11, v37, v36);
  sub_1AACCFD50(0, qword_1ED9AED88, &type metadata for SymbolScale, v10);
  v35 = *AGGraphGetValue();
  sub_1AACBB2CC(v35, *(&v35 + 1));
  sub_1AACCFD50(0, &qword_1ED9AEB50, &type metadata for SymbolSizeScale, v10);
  v12 = AGGraphGetValue();
  v33 = *v12;
  v34 = *(v12 + 16);
  sub_1AADF9A48(*v12, *(v12 + 8), v34);
  v13 = sub_1AADF99E0();
  v30 = v14;
  v31 = v13;
  v28 = v16;
  v29 = v15;
  sub_1AADF9A60(v13, v14, v15, v16);
  sub_1AADF9AA8(0);
  v17 = *AGGraphGetValue();

  v18 = *AGGraphGetValue();

  v19 = *AGGraphGetValue();

  v20 = *AGGraphGetValue();
  v32 = *(v1 + 48);
  sub_1AADF7BD0(0);

  v21 = *AGGraphGetValue();
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v48 = v39;
  memcpy(v49, __src, sizeof(v49));
  *(v51 + 11) = *(v41 + 11);
  v50 = v40;
  v51[0] = v41[0];
  *(v52 + 11) = *(v43 + 11);
  v51[2] = v42;
  v52[0] = v43[0];
  v53 = v38;
  v54 = v37;
  v55 = v36;
  v56 = v35;
  v57 = v33;
  v58 = v34;
  v59 = v31;
  v60 = v30;
  v61 = v29;
  v62 = v28;
  v63 = v17;
  v64 = v18;
  v65 = v19;
  v66 = v20;
  v67 = v21;
  v45 = a1;
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for Chart.AttributeGraphChartView(0, v22, v23, v24);

  sub_1AACBC418(&v48, sub_1AAD4B490, v44, v25, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v26);
  result = (*(*(v25 - 8) + 8))(&v48, v25);
  if (__OFADD__(v32, 1))
  {
    __break(1u);
  }

  *(v2 + 48) = v32 + 1;
  return result;
}

double sub_1AADF48A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(__src, v2, a1);
  v5 = swift_allocObject();
  *(v5 + 16) = *(a1 + 16);
  memcpy((v5 + 32), __src, 0x418uLL);
  if (qword_1ED9B6620 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED9C3950;
  *a2 = sub_1AADF9B50;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;

  return result;
}

uint64_t sub_1AADF4994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v184 = a3;
  v185 = a4;
  v192 = a1;
  v187 = a5;
  sub_1AADF9B5C(0);
  v186 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v195 = (&v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for CollectedChartContent(0);
  MEMORY[0x1EEE9AC00](v147);
  v148 = (&v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v172 = (&v145 - v10);
  v173 = type metadata accessor for AGChartRendererContent(0);
  v182 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v177 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v193 = &v145 - v13;
  v183 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v194 = &v145 - v16;
  v17 = sub_1AAF8DA74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v178 = v19;
  v179 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v145 - v21;
  v23 = *(a2 + 832);
  v228 = *(a2 + 816);
  *v229 = v23;
  *&v229[11] = *(a2 + 843);
  v24 = *(a2 + 1008);
  v25 = *(a2 + 1024);
  swift_bridgeObjectRetain_n();
  sub_1AADF9958(&v228, v196);

  sub_1AAEDF9C8(&v228, v24, v25, &v211);
  v166 = v211;
  v169 = v212;
  v170 = *(&v211 + 1);
  v168 = *(&v212 + 1);
  v167 = v213;

  v171 = v25;

  sub_1AADF9BF4(&v228);
  v26 = *(a2 + 880);
  v226 = *(a2 + 864);
  *v227 = v26;
  *&v227[11] = *(a2 + 891);
  v27 = *(a2 + 1016);
  v28 = *(a2 + 1032);
  swift_bridgeObjectRetain_n();
  sub_1AADF9958(&v226, v196);

  sub_1AAEDF9C8(&v226, v27, v28, &v214);
  v163 = v214;
  v29 = *(&v214 + 1);
  v30 = v215;
  v164 = v216;

  v165 = v28;

  sub_1AADF9BF4(&v226);
  v174 = *(v18 + 16);
  v175 = v18 + 16;
  v174(v22, v192, v17);
  sub_1AAF8DA64();
  v176 = *(&v215 + 1);
  v32 = fmax(v31 - *(&v215 + 1), 1.0);
  sub_1AAF8DA64();
  v34 = v33;
  v180 = v18;
  v181 = v17;
  (*(v18 + 8))(v22, v17);
  v35 = *(&v212 + 1);
  v36 = fmax(v34 - *(&v212 + 1), 1.0);
  sub_1AAF8DA64();
  v38 = v37;
  v40 = v39;
  v41 = *(a2 + 832);
  v224 = *(a2 + 816);
  v225[0] = v41;
  v158 = (a2 + 816);
  *(v225 + 11) = *(a2 + 843);
  sub_1AAEF3BE4(&v224, v207, v32, v36);
  v42 = *(a2 + 880);
  v222 = *(a2 + 864);
  v223[0] = v42;
  v162 = (a2 + 864);
  *(v223 + 11) = *(a2 + 891);
  sub_1AAEF3BE4(&v222, v209, v32, v36);
  v43 = *(a2 + 912);
  v44 = *(a2 + 920);
  v45 = *(a2 + 928);
  v46 = *(a2 + 936);
  v47 = *(a2 + 944);
  v48 = *(a2 + 952);
  v49 = *(a2 + 960);
  v50 = *(a2 + 968);
  v188 = *(a2 + 976);
  v189 = v46;
  v51 = *(a2 + 984);
  v190 = *(a2 + 992);
  v191 = v51;
  v52 = *(a2 + 1000);
  sub_1AADF9C48(a2 + 8, &v205, &qword_1ED9ADF48, &type metadata for _ChartContentCollectOutputs, MEMORY[0x1E69E6720], sub_1AACCFD50);
  v156 = v43;
  if (v205)
  {
    sub_1AADFA56C(&v206, v196);
    v53 = v43;
    v161 = a2;
    v54 = v52;
    v55 = v49;
    v56 = v48;
    v57 = v44;
    v58 = v45;
    sub_1AADF99B4(v53, v44, v45);
    v59 = v47;
    sub_1AACBB2CC(v189, v47);
    v60 = v50;
    sub_1AADF9A48(v56, v55, v50);
    sub_1AADF9A60(v188, v191, v190, v54);
    sub_1AAD58308(&v205);
    v153 = v196[60];

    sub_1AAD58120(v196);
    v62 = v55;
    v52 = v54;
    a2 = v161;
  }

  else
  {
    v63 = v43;
    v146 = v44;
    v58 = v45;
    sub_1AADF99B4(v63, v44, v45);
    v59 = v47;
    sub_1AACBB2CC(v189, v47);
    v60 = v50;
    sub_1AADF9A48(v48, v49, v50);
    sub_1AADF9A60(v188, v191, v190, v52);
    sub_1AADF9E0C(&v205, &qword_1ED9ADF48, &type metadata for _ChartContentCollectOutputs, MEMORY[0x1E69E6720], sub_1AACCFD50);
    v153 = 0;
    v62 = v49;
    v56 = v48;
    v57 = v146;
  }

  v155 = v62;
  v157 = v60;
  v159 = v56;
  v160 = v59;
  v161 = v52;
  *&v61 = *&v229[8];
  v152 = v61;
  *&v61 = *&v229[16];
  v149 = v61;
  *&v61 = *&v227[8];
  v151 = v61;
  *&v61 = *&v227[16];
  v150 = v61;
  v220 = *(&v216 + 1);
  v221 = v216;
  v218 = *(&v213 + 1);
  v219 = v213;
  sub_1AADF9C48(a2 + 8, v196, &qword_1ED9ADF48, &type metadata for _ChartContentCollectOutputs, MEMORY[0x1E69E6720], sub_1AACCFD50);
  v154 = v58;
  if (v196[0])
  {
    v64 = v148;
    sub_1AAF027E4(v148);
    v65 = MEMORY[0x1E69E62F8];
    sub_1AADF9C48(&v221, v217, &unk_1ED9AD938, &type metadata for RenderableAxisTick, MEMORY[0x1E69E62F8], sub_1AACCFD50);
    sub_1AADFAEBC(&v220, v217, sub_1AADF9CBC);
    sub_1AADF9C48(&v219, v217, &unk_1ED9AD938, &type metadata for RenderableAxisTick, v65, sub_1AACCFD50);
    sub_1AADFAEBC(&v218, v217, sub_1AADF9CBC);
    sub_1AAD58308(v196);
    v66 = v172;
    sub_1AADFA250(v64, v172, type metadata accessor for CollectedChartContent);
  }

  else
  {
    v67 = MEMORY[0x1E69E62F8];
    sub_1AADF9C48(&v221, v217, &unk_1ED9AD938, &type metadata for RenderableAxisTick, MEMORY[0x1E69E62F8], sub_1AACCFD50);
    sub_1AADFAEBC(&v220, v217, sub_1AADF9CBC);
    sub_1AADF9C48(&v219, v217, &unk_1ED9AD938, &type metadata for RenderableAxisTick, v67, sub_1AACCFD50);
    sub_1AADFAEBC(&v218, v217, sub_1AADF9CBC);
    sub_1AADF9E0C(v196, &qword_1ED9ADF48, &type metadata for _ChartContentCollectOutputs, MEMORY[0x1E69E6720], sub_1AACCFD50);
    v68 = swift_allocObject();
    *(v68 + 16) = MEMORY[0x1E69E7CC0];
    v66 = v172;
    *v172 = v68;
    swift_storeEnumTagMultiPayload();
  }

  v69 = v158[1];
  v197 = *v158;
  v198[0] = v69;
  *(v198 + 11) = *(v158 + 27);
  v70 = v162[1];
  v199 = *v162;
  *v200 = v70;
  *&v200[11] = *(v162 + 27);
  v71 = v66;
  v72 = v194;
  sub_1AADFA250(v71, v194, type metadata accessor for CollectedChartContent);
  v73 = v173;
  v74 = (v72 + *(v173 + 20));
  v75 = v198[0];
  *v74 = v197;
  v74[1] = v75;
  *(v74 + 27) = *(v198 + 11);
  v76 = (v72 + *(v73 + 24));
  v77 = *v200;
  *v76 = v199;
  v76[1] = v77;
  *(v76 + 27) = *&v200[11];
  v78 = v72 + *(v73 + 28);
  *&v79 = v152;
  *(&v79 + 1) = v149;
  *&v77 = v151;
  *(&v77 + 1) = v150;
  *v78 = v38;
  *(v78 + 8) = v40;
  *(v78 + 16) = v79;
  *(v78 + 32) = v77;
  *(v78 + 48) = v32;
  *(v78 + 56) = v36;
  v80 = v165;
  *(v78 + 64) = v171;
  *(v78 + 72) = v80;
  *(v78 + 80) = v166;
  *(v78 + 84) = *&v204[3];
  *(v78 + 81) = *v204;
  *&v79 = v169;
  *(v78 + 88) = v170;
  *(v78 + 96) = v79;
  *(v78 + 104) = v168;
  *(v78 + 112) = v167;
  *(v78 + 128) = v163;
  *(v78 + 129) = *v203;
  *(v78 + 132) = *&v203[3];
  *(v78 + 136) = v29;
  *(v78 + 144) = v30;
  v81 = v207[0];
  v82 = v207[2];
  v83 = v207[3];
  *(v78 + 192) = v207[1];
  *(v78 + 208) = v82;
  *(v78 + 160) = v164;
  *(v78 + 176) = v81;
  v84 = v207[4];
  v85 = v207[5];
  *(v78 + 272) = v208;
  *(v78 + 240) = v84;
  *(v78 + 256) = v85;
  *(v78 + 224) = v83;
  v86 = v209[1];
  *(v78 + 280) = v209[0];
  *(v78 + 296) = v86;
  v87 = v209[2];
  v88 = v209[3];
  v89 = v209[5];
  v90 = v210;
  *(v78 + 344) = v209[4];
  *(v78 + 360) = v89;
  *(v78 + 312) = v87;
  *(v78 + 328) = v88;
  v91 = v156;
  *(v78 + 376) = v90;
  *(v78 + 384) = v91;
  *(v78 + 392) = v57;
  *(v78 + 400) = v154;
  LODWORD(v90) = *v202;
  *(v78 + 404) = *&v202[3];
  *(v78 + 401) = v90;
  v92 = v159;
  v93 = v160;
  *(v78 + 408) = v189;
  *(v78 + 416) = v93;
  *(v78 + 424) = v92;
  *(v78 + 432) = v155;
  *(v78 + 440) = v157;
  LODWORD(v90) = *v201;
  *(v78 + 444) = *&v201[3];
  *(v78 + 441) = v90;
  v94 = v190;
  v95 = v191;
  *(v78 + 448) = v188;
  *(v78 + 456) = v95;
  *(v78 + 464) = v94;
  v96 = v153;
  *(v78 + 472) = v161;
  *(v78 + 480) = v96;
  v191 = *a2;
  v97 = v193;
  sub_1AADFAEBC(v72, v193, type metadata accessor for AGChartRendererContent);
  type metadata accessor for AGChartDisplay(0);
  sub_1AADF9958(&v197, v196);
  sub_1AADF9958(&v199, v196);
  type metadata accessor for ChartDisplayListBuilder();
  sub_1AAF8F1C4();
  v98 = v177;
  v190 = type metadata accessor for AGChartRendererContent;
  sub_1AADFAEBC(v97, v177, type metadata accessor for AGChartRendererContent);
  sub_1AADF9CF0(0);
  sub_1AADF9D6C(0, &qword_1ED9AD660, sub_1AADF9DD8, MEMORY[0x1E69E7360]);
  v100 = v99 - 8;
  v101 = (*(*(v99 - 8) + 80) + 32) & ~*(*(v99 - 8) + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1AAF92AB0;
  v103 = (v102 + v101);
  v104 = (v103 + *(v100 + 56));
  *v103 = v191;
  sub_1AADF9DD8(0);
  sub_1AADFAEBC(v98, v104 + *(v105 + 28), type metadata accessor for AGChartRendererContent);
  *v104 = 0x3FF0000000000000;
  v106 = sub_1AADF8228(v102);
  swift_setDeallocating();
  sub_1AADF9E0C(v103, &qword_1ED9AD660, sub_1AADF9DD8, MEMORY[0x1E69E7360], sub_1AADF9D6C);
  swift_deallocClassInstance();
  v191 = type metadata accessor for AGChartRendererContent;
  sub_1AADFAF78(v98, type metadata accessor for AGChartRendererContent);
  sub_1AADFAF78(v97, type metadata accessor for AGChartRendererContent);
  v107 = v195;
  *v195 = v106;
  v108 = v192;
  sub_1AAF8DA64();
  sub_1AAF8DA64();
  sub_1AAF8F124();
  sub_1AAF8DA24();
  sub_1AADF9BCC(0);
  v110 = (v107 + *(v109 + 36));
  v111 = v217[1];
  *v110 = v217[0];
  v110[1] = v111;
  v110[2] = v217[2];
  LOBYTE(v97) = sub_1AAF8E7B4();
  sub_1AAF8D834();
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v119 = v118;
  sub_1AADF9BA4(0);
  v121 = v107 + *(v120 + 36);
  *v121 = v97;
  *(v121 + 1) = v113;
  *(v121 + 2) = v115;
  *(v121 + 3) = v117;
  *(v121 + 4) = v119;
  v121[40] = 0;
  v189 = sub_1AAF8EE54();
  v122 = v179;
  v123 = v108;
  v124 = v181;
  v174(v179, v123, v181);
  v125 = v180;
  v126 = (*(v180 + 80) + 48) & ~*(v180 + 80);
  v127 = (v178 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
  v128 = swift_allocObject();
  *(v128 + 16) = v32;
  *(v128 + 24) = v36;
  *(v128 + 32) = v176;
  *(v128 + 40) = v35;
  (*(v125 + 32))(v128 + v126, v122, v124);
  v129 = (v128 + v127);
  v130 = v212;
  *v129 = v211;
  v129[1] = v130;
  v129[2] = v213;
  v131 = (v128 + ((v127 + 55) & 0xFFFFFFFFFFFFFFF8));
  v132 = v215;
  *v131 = v214;
  v131[1] = v132;
  v131[2] = v216;
  v133 = v195;
  v134 = (v195 + *(v186 + 36));
  *v134 = v189;
  v134[1] = sub_1AADF9E6C;
  v134[2] = v128;
  v136 = v184;
  v135 = v185;
  v138 = type metadata accessor for Chart.AttributeGraphChartView(0, v184, v185, v137);
  (*(*(v138 - 8) + 16))(v196, a2, v138);
  v140 = v193;
  v139 = v194;
  sub_1AADFAEBC(v194, v193, v190);
  v141 = (*(v182 + 80) + 1080) & ~*(v182 + 80);
  v142 = swift_allocObject();
  v142[2] = v136;
  v142[3] = v135;
  memcpy(v142 + 4, v196, 0x418uLL);
  v143 = sub_1AADFA250(v140, v142 + v141, type metadata accessor for AGChartRendererContent);
  MEMORY[0x1EEE9AC00](v143);
  *(&v145 - 2) = sub_1AADFA2B8;
  *(&v145 - 1) = v142;
  sub_1AADFA340(0);
  sub_1AADFA3D4();
  sub_1AACCC5FC(&qword_1ED9AF7A0, sub_1AADFA340, &unk_1AAFC3758);
  sub_1AAF8EBC4();

  sub_1AADFAF78(v133, sub_1AADF9B5C);
  return sub_1AADFAF78(v139, v191);
}

uint64_t sub_1AADF59DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v40 = a3;
  v11 = sub_1AAF8CA64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChartModel.Scenegraph(0);
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8CA54();
  sub_1AAF8C854();
  v20 = v19;
  (*(v12 + 8))(v14, v11);
  v21 = v20 * 1000.0;
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (qword_1ED9B5A00 != -1)
  {
LABEL_9:
    swift_once();
  }

  v22 = v21;
  sub_1AAD0F924(&qword_1ED9C36D0, (v18 + 32));
  *(v18 + 54) = 0u;
  *(v18 + 55) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 57) = 0u;
  *(v18 + 58) = 0u;
  *(v18 + 59) = 0u;
  *(v18 + 60) = 0u;
  *(v18 + 61) = 0u;
  v18[992] = -1;
  sub_1AACDB97C(v41);
  *(v18 + 79) = 0;
  *(v18 + 600) = 0u;
  *(v18 + 616) = 0u;
  *(v18 + 568) = 0u;
  *(v18 + 584) = 0u;
  *(v18 + 536) = 0u;
  *(v18 + 552) = 0u;
  v18[640] = -1;
  *(v18 + 648) = 0u;
  *(v18 + 664) = 0u;
  *(v18 + 680) = 0u;
  *(v18 + 696) = 0u;
  *(v18 + 712) = 0u;
  *(v18 + 728) = 0u;
  *(v18 + 93) = 0;
  v18[752] = -1;
  *(v18 + 760) = 0u;
  *(v18 + 776) = 0u;
  *(v18 + 792) = 0u;
  *(v18 + 808) = 0u;
  *(v18 + 824) = 0u;
  *(v18 + 840) = 0u;
  v18[856] = -1;
  *(v18 + 1000) = 0u;
  *(v18 + 1016) = 0u;
  *(v18 + 1032) = 0u;
  *(v18 + 1048) = 0u;
  *(v18 + 1064) = 0u;
  *(v18 + 1080) = 0u;
  *(v18 + 137) = 0;
  v18[1104] = -1;
  v23 = v41[7];
  *(v18 + 1208) = v41[6];
  *(v18 + 1224) = v23;
  v18[1240] = v42;
  v24 = v41[3];
  *(v18 + 1144) = v41[2];
  *(v18 + 1160) = v24;
  v25 = v41[5];
  *(v18 + 1176) = v41[4];
  *(v18 + 1192) = v25;
  v26 = v41[1];
  *(v18 + 1112) = v41[0];
  *(v18 + 1128) = v26;
  sub_1AAF8DA64();
  v28 = v27;
  v30 = v29;
  v31 = *(a2 + 24);
  v32 = *(v40 + 24);
  v33 = v15[14];
  v34 = *MEMORY[0x1E697E7D0];
  v35 = sub_1AAF8DF14();
  (*(*(v35 - 8) + 104))(&v18[v33], v34, v35);
  v36 = &v18[v15[17]];
  *(v36 + 4) = 0;
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[40] = -1;
  *(v36 + 3) = 0u;
  *(v36 + 4) = 0u;
  *(v36 + 10) = 0;
  v36[88] = -1;
  *(v36 + 6) = 0u;
  *(v36 + 7) = 0u;
  *(v36 + 16) = 0;
  v36[136] = -1;
  *(v36 + 9) = 0u;
  *(v36 + 10) = 0u;
  *(v36 + 22) = 0;
  v36[184] = -1;
  *(v36 + 12) = 0u;
  *(v36 + 13) = 0u;
  *(v36 + 28) = 0;
  v36[232] = -1;
  *(v36 + 15) = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 34) = 0;
  v36[280] = -1;
  *(v36 + 18) = 0u;
  *(v36 + 19) = 0u;
  *(v36 + 40) = 0;
  v36[328] = -1;
  *(v36 + 21) = 0u;
  *(v36 + 22) = 0u;
  *(v36 + 46) = 0;
  v36[376] = -1;
  *(v36 + 24) = 0u;
  *(v36 + 25) = 0u;
  *(v36 + 415) = 0;
  *v18 = v22;
  *(v18 + 8) = vdupq_n_s64(0xE000000000000000);
  *(v18 + 3) = 0xE000000000000000;
  *(v18 + 156) = a5;
  *(v18 + 157) = a6;
  *(v18 + 158) = v28;
  *(v18 + 159) = v30;
  v18[1280] = 0;
  *(v18 + 1288) = 0u;
  *(v18 + 163) = v31;
  *(v18 + 164) = v32;
  v37 = v15[16];
  *&v18[v15[15]] = a1;
  *&v18[v37] = a1;
  sub_1AADFAEBC(v18, a4, type metadata accessor for ChartModel.Scenegraph);
  (*(v16 + 56))(a4, 0, 1, v15);
  swift_retain_n();
  return sub_1AADFAF78(v18, type metadata accessor for ChartModel.Scenegraph);
}

double sub_1AADF5E54@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for AGAccessibilityRenderer(0);
  sub_1AADFAEBC(a2, a3 + *(v7 + 20), type metadata accessor for AGChartRendererContent);
  v8 = a1[130];
  *a3 = v6;
  *(a3 + *(v7 + 24)) = v8;

  return result;
}

uint64_t sub_1AADF5EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for RenderBasedChartView(0, *(a1 + 16), *(a1 + 24), a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t Chart.actualBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1AACB65DC(0, &qword_1ED9B4550, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v13 = type metadata accessor for RenderBasedChartView(0, v6, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  (*(v7 + 16))(v10, KeyPath, v6, v15);
  sub_1AACB72C4(v5);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v28[0] = swift_getKeyPath();
  memset(&v28[1], 0, 24);
  v29 = 0;
  v18 = swift_getKeyPath();
  v32 = 0;
  *&v30[0] = v18;
  v31 = 0;
  sub_1AACBE1C8(v27);
  v19 = swift_getKeyPath();
  sub_1AACBE204(v26);
  sub_1AACBE240(v10, v5, KeyPath, 0, 0, v23, 0, 0, v17, v22, 0, v28, v30, v27, v19, 0, v26, sub_1AACCD958, 0, v6, v11);
  sub_1AACB0C3C(v13, v25);
  return (*(v14 + 8))(v17, v13);
}

void *Chart.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  sub_1AACB65DC(0, &qword_1ED9B4550, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);
  v13 = type metadata accessor for RenderBasedChartView(0, v6, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - v16;
  (*(v7 + 16))(v10, KeyPath, v6, v15);
  sub_1AACB72C4(v5);
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v27[0] = swift_getKeyPath();
  memset(&v27[1], 0, 24);
  v28 = 0;
  v18 = swift_getKeyPath();
  v31 = 0;
  *&v29[0] = v18;
  v30 = 0;
  sub_1AACBE1C8(v26);
  v19 = swift_getKeyPath();
  sub_1AACBE204(v25);
  sub_1AACBE240(v10, v5, KeyPath, 0, 0, v22, 0, 0, v17, v21, 0, v27, v29, v26, v19, 0, v25, sub_1AACCD958, 0, v6, v11);
  sub_1AACBF6E0(v13, v25);
  (*(v14 + 8))(v17, v13);
  memcpy(v26, v25, 0x12AuLL);
  return memcpy(v24, v26, 0x12AuLL);
}

uint64_t sub_1AADF6580()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1AAF8E134();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  Value = AGGraphGetValue();
  (*(v2 + 16))(v4, Value, v1);
  v8[0] = v5;
  sub_1AAD58818();

  sub_1AAF8E154();
  AGGraphSetOutputValue();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1AADF6734(uint64_t *a1)
{
  sub_1AACB2628(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
  sub_1AACBFE08();
  return sub_1AAF8E154();
}

uint64_t sub_1AADF67F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = a5(*a1);
  a6(v8);
  return sub_1AAF8E154();
}

void *sub_1AADF6860@<X0>(void *a1@<X8>)
{
  type metadata accessor for ChartDisplayListBuilder();
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  result[2] = MEMORY[0x1E69E7CC8];
  result[3] = v3;
  result[4] = v3;
  *a1 = result;
  return result;
}

unint64_t sub_1AADF68C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9C048(0);
    v3 = sub_1AAF903A4();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1AADB0938(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_1AADF69C8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AADFA5C8(0, &qword_1EB4241B8, sub_1AAD9AEAC, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v3 = sub_1AAF903A4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1AACC9B78(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1AACC9B78(v4);
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

unint64_t sub_1AADF6AF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9AD84();
    v3 = sub_1AAF903A4();
    for (i = a1 + 32; ; i += 56)
    {
      sub_1AADF9C48(i, &v14, &unk_1EB424CF8, MEMORY[0x1E69E76D8], &type metadata for SgSymbol, sub_1AACC9AC0);
      v5 = v14;
      result = sub_1AACC9B78(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v16[0];
      *(v8 + 25) = *(v16 + 9);
      *v8 = v9;
      v8[1] = v10;
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

void *sub_1AADF6C44(void *a1, void (*a2)(void))
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AAF903A4();
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = sub_1AACC9B78(v5);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 9;
  while (1)
  {
    *(v4 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v4[6] + 8 * v10) = v5;
    v13 = (v4[7] + 16 * v10);
    *v13 = v6;
    v13[1] = result;
    v14 = v4[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v4[2] = v16;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v17 = v12 + 3;
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_1AACC9B78(v5);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AADF6D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADF7FD0(0);
    v3 = sub_1AAF903A4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_1AADB0594(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1AADF6E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9BD98();
    v3 = sub_1AAF903A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AADF9C48(v4, &v15, &unk_1EB424D58, MEMORY[0x1E69E6158], &type metadata for _Chart3DResolvedSurfaceStyle, sub_1AACC9AC0);
      v5 = v15;
      v6 = v16;
      result = sub_1AADB05C0(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1AADF6F70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E69E69B8];
    sub_1AADFA5C8(0, &qword_1EB424178, sub_1AAD9AABC, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
    v4 = sub_1AAF903A4();
    v5 = a1 + 32;

    while (1)
    {
      sub_1AADFB524(v5, v15, &qword_1EB424CF0, sub_1AAD9AABC, v3);
      result = sub_1AADB09E4(v15, v6);
      if (v8)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v4[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      *(v4[7] + 8 * result) = v17;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      v5 += 48;
      if (!--v1)
      {

        return v4;
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

unint64_t sub_1AADF70C8(uint64_t a1)
{
  sub_1AADFB0A8(0, &qword_1ED9B1648, MEMORY[0x1E6969AE8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1AAD9BC9C(0);
    v8 = sub_1AAF903A4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1AADFB03C(v10, v6, &qword_1ED9B1648, MEMORY[0x1E6969AE8]);
      result = sub_1AACED27C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1AAF8CBA4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1AADF72C0(uint64_t a1)
{
  sub_1AADFB0A8(0, &qword_1ED9B1580, type metadata accessor for CalendarCache.Key);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1AAD9BAD4(0);
    v8 = sub_1AAF903A4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1AADFB03C(v10, v6, &qword_1ED9B1580, type metadata accessor for CalendarCache.Key);
      result = sub_1AACE8B84(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CalendarCache.Key(0);
      result = sub_1AADFA250(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for CalendarCache.Key);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1AADF74B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFAFD8(0);
    v3 = sub_1AAF903A4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 1);
      v9 = *i;
      sub_1AACD7304(v5, v6, v7);

      result = sub_1AADB0A28(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      *(v3[7] + 8 * result) = v9;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1AADF75E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AAD9B310();
  v3 = sub_1AAF903A4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  result = sub_1AADB0548(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v12 = v3[7] + 32 * result;
    *v12 = v5;
    *(v12 + 8) = v6;
    *(v12 + 16) = v7 & 1;
    *(v12 + 24) = v8;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    sub_1AACD7304(v5, v6, v7 & 1);
    if (!--v1)
    {
      goto LABEL_8;
    }

    v4 = *(v11 - 4);
    v5 = *(v11 - 3);
    v6 = *(v11 - 2);
    v7 = *(v11 - 8);
    v16 = *v11;

    result = sub_1AADB0548(v4);
    v11 += 5;
    v8 = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AADF7720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9B6DC();
    v3 = sub_1AAF903A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AADB05C0(v5, v6);
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

void *sub_1AADF7818(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AAD9B90C();
  v3 = sub_1AAF903A4();
  v4 = a1[4];
  v6 = *(a1 + 5);
  v5 = *(a1 + 6);
  v7 = sub_1AADB0548(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1AADB0548(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AADF7928()
{
  result = qword_1ED9AF720;
  if (!qword_1ED9AF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF720);
  }

  return result;
}

unint64_t sub_1AADF797C()
{
  result = qword_1ED9AF728[0];
  if (!qword_1ED9AF728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AF728);
  }

  return result;
}

unint64_t sub_1AADF79D8()
{
  result = qword_1ED9AFBD8[0];
  if (!qword_1ED9AFBD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AFBD8);
  }

  return result;
}

unint64_t sub_1AADF7A2C()
{
  result = qword_1ED9AF718;
  if (!qword_1ED9AF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF718);
  }

  return result;
}

unint64_t sub_1AADF7A80()
{
  result = qword_1ED9AF960;
  if (!qword_1ED9AF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF960);
  }

  return result;
}

unint64_t sub_1AADF7AD4()
{
  result = qword_1ED9AFDE0;
  if (!qword_1ED9AFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AFDE0);
  }

  return result;
}

unint64_t sub_1AADF7B28()
{
  result = qword_1ED9B0168;
  if (!qword_1ED9B0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0168);
  }

  return result;
}

unint64_t sub_1AADF7B7C()
{
  result = qword_1ED9AFEF0;
  if (!qword_1ED9AFEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AFEF0);
  }

  return result;
}

void sub_1AADF7BD0(uint64_t a1)
{
  if (!qword_1ED9B2AC8)
  {
    sub_1AACFDD38();
    v1 = sub_1AAF8F3F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2AC8);
    }
  }
}

unint64_t sub_1AADF7C34()
{
  result = qword_1ED9AF798;
  if (!qword_1ED9AF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF798);
  }

  return result;
}

uint64_t sub_1AADF7CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AADF7D20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADF7D40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_1AADF7D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADF7DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AADF7DD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1048))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 816);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AADF7E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1048) = 1;
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
      *(result + 816) = (a2 - 1);
      return result;
    }

    *(result + 1048) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AADF7FD0(uint64_t a1)
{
  if (!qword_1EB424138)
  {
    sub_1AAD68514();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB424138);
    }
  }
}

unint64_t sub_1AADF8034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AACF59C0(0, &qword_1ED9AD7A0, type metadata accessor for Item, sub_1AAD80D58, &type metadata for ChartContentID);
    v3 = sub_1AAF903A4();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1AADB0938(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1AADF8158(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9AC64();
    v3 = sub_1AAF903A4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1AADB0548(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1AADF8228(uint64_t a1)
{
  sub_1AADF9D6C(0, &qword_1ED9AD660, sub_1AADF9DD8, MEMORY[0x1E69E7360]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1AADFA5C8(0, &qword_1ED9AD770, sub_1AADF9DD8, MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
    v8 = sub_1AAF903A4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      sub_1AADFB524(v10, v6, &qword_1ED9AD660, sub_1AADF9DD8, MEMORY[0x1E69E7360]);
      v12 = *v6;
      result = sub_1AACC9B78(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      sub_1AADF9DD8(0);
      result = sub_1AADFA250(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, sub_1AADF9DD8);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_1AADF844C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9B67C();
    v3 = sub_1AAF903A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AADB05C0(v5, v6);
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

unint64_t sub_1AADF8544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9B79C();
    v3 = sub_1AAF903A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1AADF9C48(v4, &v16, &unk_1EB424D28, MEMORY[0x1E69E6158], &type metadata for AnyChartSymbolShape, sub_1AACC9AC0);
      v5 = v16;
      v6 = v17;
      result = sub_1AADB05C0(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_1AADF8690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9B7FC();
    v3 = sub_1AAF903A4();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_1AADB05C0(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_1AADF87C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9B73C();
    v3 = sub_1AAF903A4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AADB05C0(v5, v6);
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

void *sub_1AADF88B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AACB9D6C(0);
  v3 = sub_1AAF903A4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = sub_1AACB6398(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + v10) = v4;
    v13 = v3[7] + 24 * v10;
    *v13 = v5 & 1;
    *(v13 + 8) = result;
    *(v13 + 16) = v6;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 24);
    v5 = *(v12 - 16);
    v19 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_1AACB6398(v4);
    v12 = v17;
    v6 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AADF89F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFA9B0(0);
    v3 = sub_1AAF903A4();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 64);
      v19 = *(v4 + 48);
      *v20 = v7;
      *&v20[16] = *(v4 + 80);
      v8 = *(v4 + 16);
      v18[0] = *v4;
      v18[1] = v8;
      v18[2] = v6;
      v25 = *(v4 + 64);
      v23 = v6;
      v24 = v19;
      v21 = v18[0];
      v22 = v8;
      sub_1AADF9C48(v18, v17, &unk_1EB424D38, &type metadata for StackGroupV2, &type metadata for StackContext.Item, sub_1AACC9AC0);
      result = sub_1AADB0454(&v21);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 72 * result;
      v12 = v24;
      *(v11 + 32) = v23;
      *(v11 + 48) = v12;
      *(v11 + 64) = v25;
      v13 = v22;
      *v11 = v21;
      *(v11 + 16) = v13;
      *(v3[7] + 16 * result) = *&v20[8];
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_11;
      }

      v3[2] = v16;
      if (!i)
      {

        return v3;
      }

      v4 += 88;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1AADF8B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFA94C(0);
    v3 = sub_1AAF903A4();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1AADB0B80(v5, v6);
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

unint64_t sub_1AADF8C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFA758(0);
    v3 = sub_1AAF903A4();
    v4 = a1 + 32;

    v5 = v1 - 1;
    v6 = MEMORY[0x1E69E6530];
    while (1)
    {
      v7 = *(v4 + 48);
      v19 = *(v4 + 32);
      v20 = v7;
      v21 = *(v4 + 64);
      v8 = *(v4 + 16);
      v18[0] = *v4;
      v18[1] = v8;
      v22 = v18[0];
      v23 = v8;
      v24 = v19;
      v25 = v7;
      sub_1AADF9C48(v18, v17, &unk_1EB424D10, &type metadata for AccessibilityDataField.LabelKey, v6, sub_1AACC9AC0);
      result = sub_1AADB0C18(&v22);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + (result << 6));
      v12 = v23;
      *v11 = v22;
      v11[1] = v12;
      v13 = v25;
      v11[2] = v24;
      v11[3] = v13;
      *(v3[7] + 8 * result) = v21;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_11;
      }

      v3[2] = v16;
      if (!v5)
      {

        return v3;
      }

      --v5;
      v4 += 72;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1AADF8DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9B418(0);
    v3 = sub_1AAF903A4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      sub_1AADB0C78(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
      *(v3[6] + 8 * v8) = v5;
      *(v3[7] + 8 * v8) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_9;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

unint64_t sub_1AADF8EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AACF59C0(0, &qword_1ED9B0C48, sub_1AAD45FFC, sub_1AAD81BA0, &type metadata for AccessibilityDataField);
    v3 = sub_1AAF903A4();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v6 = v4[7];
      v28 = v4[6];
      v29 = v6;
      v30 = v4[8];
      v31 = *(v4 + 18);
      v7 = v4[3];
      v24 = v4[2];
      v25 = v7;
      v8 = v4[5];
      v26 = v4[4];
      v27 = v8;
      v9 = v4[1];
      v22 = *v4;
      v23 = v9;
      sub_1AADFB524(__dst, &v20, &qword_1EB424D18, sub_1AAD45FFC, &type metadata for AccessibilityDataField);
      result = sub_1AADB0D50(&v22);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 152 * result;
      v13 = v29;
      *(v12 + 96) = v28;
      *(v12 + 112) = v13;
      *(v12 + 128) = v30;
      *(v12 + 144) = v31;
      v14 = v25;
      *(v12 + 32) = v24;
      *(v12 + 48) = v14;
      v15 = v27;
      *(v12 + 64) = v26;
      *(v12 + 80) = v15;
      v16 = v23;
      *v12 = v22;
      *(v12 + 16) = v16;
      result = memcpy((v3[7] + 304 * result), &__dst[152], 0x130uLL);
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 = (v4 + 456);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1AADF9084(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFA698(0);
    v3 = sub_1AAF903A4();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 23);
      v6 = *(i - 2);
      v17 = *(i - 3);
      *v18 = v6;
      *&v18[9] = v5;
      v7 = *i;
      v21 = v17;
      v22 = *(i - 32);
      v19 = v5 >> 56;
      v20 = *&v18[8];
      sub_1AADFA6FC(&v21, v16);
      v8 = MEMORY[0x1E69E62F8];
      sub_1AADF9C48(&v20, v16, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8], sub_1AACCFD50);
      sub_1AADF9C48(&v19, v16, &unk_1EB424D08, &type metadata for AccessibilityChartDataField, v8, sub_1AACCFD50);
      result = sub_1AADB0DBC(&v17);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 48 * result);
      v12 = *v18;
      *v11 = v17;
      v11[1] = v12;
      *(v11 + 25) = *&v18[9];
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1AADF9228(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AAD9B2B0();
  v3 = sub_1AAF903A4();
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = sub_1AADB0548(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1AADB0548(v4);
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

void *sub_1AADF932C(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AAD9B1F0();
  v3 = sub_1AAF903A4();
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = sub_1AADB0548(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1AADB0548(v4);
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

unint64_t sub_1AADF9430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFB4C0(0);
    v3 = sub_1AAF903A4();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v6 = v4[7];
      v28 = v4[6];
      v29 = v6;
      v30 = v4[8];
      v31 = *(v4 + 18);
      v7 = v4[3];
      v24 = v4[2];
      v25 = v7;
      v8 = v4[5];
      v26 = v4[4];
      v27 = v8;
      v9 = v4[1];
      v22 = *v4;
      v23 = v9;
      sub_1AADF9C48(__dst, &v20, &unk_1EB424D60, &type metadata for AccessibilityDataField, &type metadata for ChartAccessibilityElements.GroupEntry, sub_1AACC9AC0);
      result = sub_1AADB0D50(&v22);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 152 * result;
      v13 = v29;
      *(v12 + 96) = v28;
      *(v12 + 112) = v13;
      *(v12 + 128) = v30;
      *(v12 + 144) = v31;
      v14 = v25;
      *(v12 + 32) = v24;
      *(v12 + 48) = v14;
      v15 = v27;
      *(v12 + 64) = v26;
      *(v12 + 80) = v15;
      v16 = v23;
      *v12 = v22;
      *(v12 + 16) = v16;
      result = memcpy((v3[7] + 312 * result), &__dst[152], 0x138uLL);
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 += 29;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1AADF95EC(uint64_t a1)
{
  sub_1AADF9D6C(0, &qword_1ED9AE8A0, type metadata accessor for ChartAccessibilityContent.Builder.Bins, &type metadata for EncodableProperty);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1AACF59C0(0, &qword_1EB424240, type metadata accessor for ChartAccessibilityContent.Builder.Bins, sub_1AACFDD38, &type metadata for EncodableProperty);
    v8 = sub_1AAF903A4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      sub_1AADFB524(v10, v6, &qword_1ED9AE8A0, type metadata accessor for ChartAccessibilityContent.Builder.Bins, &type metadata for EncodableProperty);
      v12 = *v6;
      result = sub_1AACE1760(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for ChartAccessibilityContent.Builder.Bins(0);
      result = sub_1AADFA250(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for ChartAccessibilityContent.Builder.Bins);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_1AADF981C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFA634(0);
    v3 = sub_1AAF903A4();
    for (i = a1 + 32; ; i += 56)
    {
      sub_1AADF9C48(i, v14, &unk_1EB424D00, &type metadata for EncodableProperty, &type metadata for AnyFormatStyle, sub_1AACC9AC0);
      v5 = v14[0];
      result = sub_1AACE1760(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v16[0];
      *(v8 + 25) = *(v16 + 9);
      *v8 = v9;
      v8[1] = v10;
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

double sub_1AADF99B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1AADF99C8(a1, a2, a3);
  }

  return result;
}

double sub_1AADF99C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

double sub_1AADF9A48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AAD2A1B0(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1AADF9A60(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1AAD2A1B0(a1, a2, a3 & 1);
  }

  return result;
}

double sub_1AADF9B38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_1AADF9C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AADF9CF0(uint64_t a1)
{
  if (!qword_1ED9AD678)
  {
    sub_1AADF9D6C(255, &qword_1ED9AD660, sub_1AADF9DD8, MEMORY[0x1E69E7360]);
    v1 = sub_1AAF90484();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD678);
    }
  }
}

void sub_1AADF9D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AADF9E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AADF9E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1AAF8DA74() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 48) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return sub_1AADF59DC(a1, v2 + v6, v2 + ((v6 + 55) & 0xFFFFFFFFFFFFFFF8), a2, v7, v8);
}

double sub_1AADF9F2C(double result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v22 = a10 >> 61;
  if ((a10 >> 61) <= 2)
  {
    if (v22 && v22 != 2)
    {
      return result;
    }

    sub_1AAD04750(a3, a4, a5 & 1);

    v23 = a7;
    v24 = a8;
    v25 = a9;
    v26 = a10;
    goto LABEL_12;
  }

  if (v22 == 3)
  {
    sub_1AAD04750(a3, a4, a5 & 1);

    sub_1AADB3124(a7, a8, a9, a10);
    sub_1AAD04750(a12, a13, a14 & 1);

    v23 = a16;
    v24 = a17;
    v25 = a18;
    v26 = a19;
LABEL_12:

    return sub_1AADB3124(v23, v24, v25, v26);
  }

  if (v22 == 5)
  {
    sub_1AAD04750(a3, a4, a5 & 1);

    sub_1AADB3124(a7, a8, a9, a10);
    v27.n128_f64[0] = sub_1AADB3124(a12, a13, a14, a15);

    return sub_1AADB3110(a16, a17, a18, a19, v27);
  }

  return result;
}

double sub_1AADFA10C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a9 & 0x60) == 0x40)
  {
    sub_1AAD04750(a2, a3, a4 & 1);

    return sub_1AADB3124(a6, a7, a8, a9 & 0x9F);
  }

  return result;
}

double sub_1AADFA1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a9 & 0x40) != 0)
  {
    sub_1AAD04750(a2, a3, a4 & 1);

    return sub_1AADB3124(a6, a7, a8, a9 & 0xBF);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1AADFA250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1AADFA2B8@<D0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AGChartRendererContent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 1080) & ~*(v3 + 80));

  return sub_1AADF5E54((v1 + 32), v4, a1);
}

void sub_1AADFA340(uint64_t a1)
{
  if (!qword_1ED9ADF50)
  {
    v2 = type metadata accessor for AGAccessibilityRenderer(255);
    v3 = sub_1AACCC5FC(&qword_1ED9AE2B0, type metadata accessor for AGAccessibilityRenderer, &unk_1AAFB8960);
    v5 = type metadata accessor for _LazyAccessibilityChildren(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9ADF50);
    }
  }
}

unint64_t sub_1AADFA3D4()
{
  result = qword_1ED9AF500;
  if (!qword_1ED9AF500)
  {
    sub_1AADF9B5C(255);
    sub_1AACCC884(&qword_1ED9AF510, sub_1AADF9BA4, sub_1AADFA4BC);
    sub_1AACCC5FC(&qword_1ED9B2BD0, sub_1AACCC7BC, MEMORY[0x1E697FF70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF500);
  }

  return result;
}

unint64_t sub_1AADFA4BC()
{
  result = qword_1ED9AF520;
  if (!qword_1ED9AF520)
  {
    sub_1AADF9BCC(255);
    sub_1AACCC5FC(&qword_1ED9B0310, type metadata accessor for AGChartDisplay, &unk_1AAFC3508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF520);
  }

  return result;
}

void sub_1AADFA5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1AAF903B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AADFA634(uint64_t a1)
{
  if (!qword_1ED9B2970)
  {
    sub_1AACFDD38();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2970);
    }
  }
}

void sub_1AADFA698(uint64_t a1)
{
  if (!qword_1ED9B0C40)
  {
    sub_1AAD9B3C4();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0C40);
    }
  }
}

void sub_1AADFA758(uint64_t a1)
{
  if (!qword_1ED9B0C50)
  {
    sub_1AAD81A84();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B0C50);
    }
  }
}

void sub_1AADFA7BC(uint64_t a1)
{
  if (!qword_1ED9AEEE8)
  {
    sub_1AACD4088();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AEEE8);
    }
  }
}

void sub_1AADFA820(uint64_t a1)
{
  if (!qword_1ED9B16D8)
  {
    sub_1AAD9B578();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B16D8);
    }
  }
}

void sub_1AADFA884(uint64_t a1)
{
  if (!qword_1ED9B1E28)
  {
    sub_1AACB62F8();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B1E28);
    }
  }
}

void sub_1AADFA8E8(uint64_t a1)
{
  if (!qword_1ED9B2930)
  {
    sub_1AACB62F8();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2930);
    }
  }
}