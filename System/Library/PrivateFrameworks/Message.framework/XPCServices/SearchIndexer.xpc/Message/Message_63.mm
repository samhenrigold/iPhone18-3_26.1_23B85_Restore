uint64_t *sub_100412604(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = result[1];
      v19 = *(result + 10);
      v20 = *(result + 4);
      v18 = *(result + 22);

      sub_10046B71C(0x202AuLL, 0xE200000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {
        sub_100412790(v10, v8, a3, a4, a5, a6, a7);
        sub_100464188(v10, v8, a3);
      }

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v20;
      *(v10 + 20) = v19;
      *(v10 + 22) = v18;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_100412790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10041A10C;
  *(v17 + 24) = v16;
  v51 = sub_100411AC0;
  v52 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10041A12C;
  *(v19 + 24) = v18;
  v53 = sub_100411C00;
  v54 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041A14C;
  *(v21 + 24) = v20;
  v55 = sub_100411C00;
  v56 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10041A16C;
  *(v23 + 24) = v22;
  v57 = sub_100411C00;
  v58 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10041A18C;
  *(v25 + 24) = v24;
  v59 = sub_100411C00;
  v60 = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10041A1AC;
  *(v27 + 24) = v26;
  v61 = sub_100411C00;
  v62 = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10041A1CC;
  *(v29 + 24) = v28;
  v63 = sub_100411C00;
  v64 = v29;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10041A1EC;
  *(v31 + 24) = v30;
  v65 = sub_100411C00;
  v66 = v31;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10041A20C;
  *(v33 + 24) = v32;
  v67 = sub_100411C00;
  v68 = v33;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_10041A22C;
  *(v35 + 24) = v34;
  v69 = sub_100411C00;
  v70 = v35;
  v36 = __OFADD__(a2, 1);
  v37 = a2 + 1;
  v38 = v36;
  swift_retain_n();
  if ((v38 & 1) == 0)
  {
    swift_retain_n();
    v39 = 32;
    v40 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v50[v39];
      if (v37 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v46 = a3;
      }

      else
      {
        v49 = v39;
        v41 = *v40;
        v42 = *(v40 + 8);
        v43 = *(v40 + 16);
        v48 = *(v40 + 20);
        v44 = v37;
        v45 = *(v40 + 22);

        sub_100411BE4(v40, v44, a3);
        if (!v8)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
          return;
        }

        *v40 = v41;
        *(v40 + 8) = v42;
        *(v40 + 16) = v43;
        *(v40 + 20) = v48;
        *(v40 + 22) = v45;
        v37 = v44;
        v39 = v49;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();

          return;
        }
      }

      v8 = 0;
      v39 += 16;
      if (v39 == 192)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v47 = 0xD000000000000019;
        v47[1] = 0x80000001004B08C0;
        v47[2] = 0xD000000000000020;
        v47[3] = 0x80000001004B03C0;
        v47[4] = 180;
        swift_willThrow();
        return;
      }
    }
  }

  __break(1u);
}

uint64_t *sub_100412E98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v15 = *(result + 10);
      v16 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v21 = a3;
      }

      else
      {

        sub_100465CAC(v11, &v32);
        if (!v8)
        {
          sub_10046C184(v32, v33, v34 | (WORD2(v34) << 32) | (BYTE6(v34) << 48), 0xD000000000000020, 0x80000001004B03C0, 2610);
          v24 = v17;
          v19 = v18;

          sub_100469DF8(v11);

          sub_100413B1C(v11, v9 + 1, a3, a4, a5, a6, a7, sub_10049FA80, &v32, 130);

          v23 = v32;
          v22 = v33;
          v29 = v34;
          v31 = v35;
          sub_100464188(v11, v9, a3);

          *a8 = v24;
          *(a8 + 8) = v19;
          *(a8 + 16) = v23;
          *(a8 + 24) = v22;
          *(a8 + 32) = v29;
          *(a8 + 40) = v31;
          return result;
        }
      }

      swift_willThrow();

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v15;
      *(v11 + 22) = v16;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_100413188(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  v18 = __OFADD__(a2, 1);
  v19 = a2 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (v19 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
LABEL_9:
      swift_willThrow();
      return;
    }

    v32 = a6;
    v33 = a7;
    v20 = *a1;
    v21 = a1[1];
    v22 = *(a1 + 4);
    v35 = *(a1 + 10);
    v36 = v22;
    v34 = *(a1 + 22);
    v37 = v20;
    if (v19 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(a1);
    if (v7)
    {

LABEL_8:
      swift_willThrow();
      *a1 = v37;
      a1[1] = v21;
      v26 = v35;
      *(a1 + 4) = v36;
      *(a1 + 10) = v26;
      *(a1 + 22) = v34;
      goto LABEL_9;
    }

    v27 = sub_10041EC70(a1, v19, a3, v23);
    sub_100469DF8(a1);

    sub_10041E1A4(a1, v19 + 1, a3, a4, a5, v32, v33, v17);

    v28 = type metadata accessor for ResponseCodeAppend(0);
    swift_allocBox();
    v30 = v29;
    sub_100025FDC(v17, v29 + *(v28 + 20), &qword_1005CD1D0, &unk_1004CF2C0);
    *v30 = v27;
  }
}

uint64_t *sub_100413424(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v14 = *(result + 10);
    v15 = a2 + 2;
    v16 = *(result + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(v10);
    if (v7)
    {

LABEL_8:
      swift_willThrow();
      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    v23 = sub_10041EC70(v10, v8, a3, v17);
    sub_100469DF8(v10);

    sub_10041E8C4(v10, v15, a3, a4, a5, a6, a7, &v28);

    v22 = v28;
    sub_100469DF8(v10);

    sub_10041E8C4(v10, v15, a3, a4, a5, a6, a7, &v28);

    v20 = v28;
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = v22;
    *(v21 + 32) = v20;
    return (v21 | 0x4000000000000000);
  }

  return result;
}

uint64_t *sub_1004136B4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_100413B1C(v10, v8, a3, a4, a5, a6, a7, sub_1004A1DF8, &v21, 100);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t *sub_100413800(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
LABEL_16:
      swift_willThrow();
      return v8;
    }

    v12 = result;
    v13 = *result;
    v14 = result[1];
    v15 = *(result + 4);
    v30 = *(result + 22);
    v31 = *(result + 10);
    v8 = a7;

    v18 = sub_1004703AC(v12, v9, a3, a4, a5, a6, v8);
    if (v7)
    {

LABEL_15:
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v31;
      *(v12 + 22) = v30;
      goto LABEL_16;
    }

    v8 = v18;

    if (v9 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v23 = a3;
    }

    else
    {
      v29 = *v12;
      v20 = *(v12 + 8);
      v21 = *(v12 + 16);
      v28 = *(v12 + 20);
      v22 = *(v12 + 22);
      if (v9 + 2 < a3)
      {
        sub_100469DF8(v12);
        goto LABEL_13;
      }

      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
      swift_willThrow();
      *v12 = v29;
      *(v12 + 8) = v20;
      *(v12 + 16) = v21;
      *(v12 + 20) = v28;
      *(v12 + 22) = v22;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {

      sub_10001114C(v8);

      goto LABEL_15;
    }

LABEL_13:
    sub_10046D5B0(v12, v9, a3);
    sub_10046C184(v26, v27, v25 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 219);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100413B1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(uint64_t, void *, uint64_t *, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v13 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_100466470(result, &v44);
    if (v10)
    {
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 20) = v17;
      *(v13 + 22) = v18;
      return swift_willThrow();
    }

    sub_10046C184(v44, v45, v46 | (v47 << 32) | (v48 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
    v37._countAndFlagsBits = a4();
    v37._object = v20;

    sub_100469DF8(v13);
    v21 = sub_100413800(v13, a2, a3, a4, a5, a6, a7);
    v23 = v22;
    v25 = v24;
    sub_1000110B0(v21);

    v26 = a8(v37._countAndFlagsBits, v37._object, v21, v23, v25);
    if (v29 == -1)
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1004A6724(25);

      v44 = 0xD000000000000017;
      v45 = 0x80000001004B0A10;
      sub_1004A5994(v37);

      v34 = v44;
      v35 = v45;
      sub_1003A527C();
      swift_allocError();
      *v36 = v34;
      v36[1] = v35;
      v36[2] = 0xD000000000000020;
      v36[3] = 0x80000001004B03C0;
      v36[4] = a10;
      swift_willThrow();
      sub_10001114C(v21);
    }

    else
    {
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
      sub_10001114C(v21);

      *a9 = v30;
      *(a9 + 8) = v31;
      *(a9 + 16) = v32;
      *(a9 + 24) = v33;
    }
  }

  return result;
}

uint64_t *sub_100413ECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1004136B4(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
    *(a8 + 8) = v11;
    *(a8 + 16) = v12;
    *(a8 + 24) = v13;
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100413F20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_100406964(a1, a2, a3, a4, a5, a6, a7, v15);
  if (!v8)
  {
    v11 = v15[7];
    a8[6] = v15[6];
    a8[7] = v11;
    a8[8] = v15[8];
    v12 = v15[3];
    a8[2] = v15[2];
    a8[3] = v12;
    v13 = v15[5];
    a8[4] = v15[4];
    a8[5] = v13;
    v14 = v15[1];
    *a8 = v15[0];
    a8[1] = v14;
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_100413F9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10040D758(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t *sub_100413FE4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v12 = result;
      v16 = *result;
      v17 = result[1];
      v21 = *(result + 10);
      v22 = *(result + 4);
      v20 = *(result + 22);

      sub_10046B71C(0x494C494241504143uLL, 0xEA00000000005954, 0, 0, v12, v9, a3);
      if (!v8)
      {
        v23 = _swiftEmptyArrayStorage;

        sub_1004733D0(v12, &v23, v9, a3, a4, a5, a6, a7);

        *a8 = v23;
        type metadata accessor for ResponsePayload(0);
        return swift_storeEnumTagMultiPayload();
      }

      *v12 = v16;
      *(v12 + 8) = v17;
      *(v12 + 16) = v22;
      *(v12 + 20) = v21;
      *(v12 + 22) = v20;
    }

    return swift_willThrow();
  }

  return result;
}

void sub_1004141AC(uint64_t *a1@<X8>, uint64_t *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  sub_100421A38(a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
    *a1 = v10;
    a1[1] = v11;
    a1[2] = v12;
    type metadata accessor for ResponsePayload(0);
    swift_storeEnumTagMultiPayload();
  }
}

void *sub_1004141FC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t (*a5)(void)@<X3>)
{
  result = sub_100421F50(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t *sub_100414248@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  result = sub_100422470(a2, a3, a4, a5, a6, a7, a8, v12);
  if (!v8)
  {
    v11 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v11;
    *(a1 + 32) = v13;
    type metadata accessor for ResponsePayload(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t *sub_1004142B0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = result[1];
      v30 = *(result + 10);
      v31 = *(result + 4);
      v29 = *(result + 22);

      sub_10046B71C(0x2041544F5551uLL, 0xE600000000000000, 0, 0, v15, v9, a3);
      if (!v8)
      {
        v18 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
        v27 = v18;
        v22 = v9 + 1;
        if (v22 < a3)
        {
          v26 = v20;
          v25 = v19;
          sub_100469DF8(v15);

          sub_100417A3C(v15, v22, a3, a4, &v32);

          v24 = v32;
          *a8 = v27;
          *(a8 + 8) = v25;
          *(a8 + 16) = v26;
          *(a8 + 20) = WORD2(v26);
          *(a8 + 22) = BYTE6(v26);
          *(a8 + 24) = v24;
          type metadata accessor for ResponsePayload(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1003A5228();
        swift_allocError();
        *v23 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v31;
      *(v15 + 20) = v30;
      *(v15 + 22) = v29;
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_100414528@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = result[1];
      v43 = *(result + 10);
      v44 = *(result + 4);
      v42 = *(result + 22);

      sub_10046B71C(0x4F4F5241544F5551uLL, 0xEA00000000002054, 0, 0, v15, v9, a3);
      if (v8)
      {
      }

      else
      {
        v18 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
        v37 = HIDWORD(v20);
        v40 = v18;
        v32 = v21;
        v34 = v20;
        swift_beginAccess();
        v22 = v37 - v34;
        if (v37 == v34)
        {
          v23 = _swiftEmptyArrayStorage;
        }

        else
        {
          v38 = v40[3];
          v35 = ((v32 >> 24) & 0xFFFF00 | BYTE6(v32)) + v34;
          __n = v22;
          v33 = sub_10015BEAC(v22, 0);
          memcpy(v33 + 32, (v38 + v35), __n);
          v23 = v33;
        }

        v39 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v23);
        v36 = v24;

        if (v9 + 1 < a3)
        {

          sub_100469DF8(v15);

          v26 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
          v28 = v27;
          v30 = v29;

          *a8 = v39;
          *(a8 + 8) = v36;
          *(a8 + 16) = v26;
          *(a8 + 24) = v28;
          *(a8 + 32) = v30;
          *(a8 + 36) = WORD2(v30);
          *(a8 + 38) = BYTE6(v30);
          type metadata accessor for ResponsePayload(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_1003A5228();
        swift_allocError();
        *v25 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v44;
      *(v15 + 20) = v43;
      *(v15 + 22) = v42;
    }

    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_10041485C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC820, &qword_100504AA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100504A90;
  *(v11 + 32) = 0x5452454C41;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 48) = sub_1004170FC;
  *(v11 + 56) = 0;
  strcpy((v11 + 64), "ALREADYEXISTS");
  *(v11 + 78) = -4864;
  *(v11 + 80) = sub_10041710C;
  *(v11 + 88) = 0;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10041A32C;
  *(v13 + 24) = v12;
  *(v11 + 96) = 0x4955444E45505041;
  *(v11 + 104) = 0xE900000000000044;
  *(v11 + 112) = sub_10041A34C;
  *(v11 + 120) = v13;
  *(v11 + 128) = 0xD000000000000014;
  *(v11 + 136) = 0x80000001004B0A30;
  *(v11 + 144) = sub_10041711C;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0xD000000000000013;
  *(v11 + 168) = 0x80000001004B0A50;
  *(v11 + 176) = sub_10041712C;
  *(v11 + 184) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10041A364;
  *(v15 + 24) = v14;
  *(v11 + 192) = 0x5352414843444142;
  *(v11 + 200) = 0xEA00000000005445;
  *(v11 + 208) = sub_10041AF58;
  *(v11 + 216) = v15;
  *(v11 + 224) = 0x544F4E4E4143;
  *(v11 + 232) = 0xE600000000000000;
  *(v11 + 240) = sub_10041713C;
  *(v11 + 248) = 0;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10041A384;
  *(v17 + 24) = v16;
  *(v11 + 256) = 0x494C494241504143;
  *(v11 + 264) = 0xEA00000000005954;
  *(v11 + 272) = sub_10041AF58;
  *(v11 + 280) = v17;
  *(v11 + 288) = 0x5542544E45494C43;
  *(v11 + 296) = 0xE900000000000047;
  *(v11 + 304) = sub_10041714C;
  *(v11 + 312) = 0;
  *(v11 + 320) = 0x4445534F4C43;
  *(v11 + 328) = 0xE600000000000000;
  *(v11 + 336) = sub_10041715C;
  *(v11 + 344) = 0;
  *(v11 + 352) = 0xD000000000000011;
  *(v11 + 360) = 0x80000001004B0A70;
  *(v11 + 368) = sub_10041716C;
  *(v11 + 376) = 0;
  strcpy((v11 + 384), "CONTACTADMIN");
  *(v11 + 397) = 0;
  *(v11 + 398) = -5120;
  *(v11 + 400) = sub_10041717C;
  *(v11 + 408) = 0;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10041A3A4;
  *(v19 + 24) = v18;
  *(v11 + 416) = 0x44495559504F43;
  *(v11 + 424) = 0xE700000000000000;
  *(v11 + 432) = sub_10041AF58;
  *(v11 + 440) = v19;
  *(v11 + 448) = 0x4954505552524F43;
  *(v11 + 456) = 0xEA00000000004E4FLL;
  *(v11 + 464) = sub_10041718C;
  *(v11 + 472) = 0;
  *(v11 + 480) = 0x44455249505845;
  *(v11 + 488) = 0xE700000000000000;
  *(v11 + 496) = sub_10041719C;
  *(v11 + 504) = 0;
  strcpy((v11 + 512), "EXPUNGEISSUED");
  *(v11 + 526) = -4864;
  *(v11 + 528) = sub_1004171AC;
  *(v11 + 536) = 0;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041A3C4;
  *(v21 + 24) = v20;
  strcpy((v11 + 544), "HIGHESTMODSEQ");
  *(v11 + 558) = -4864;
  *(v11 + 560) = sub_10041AF58;
  *(v11 + 568) = v21;
  *(v11 + 576) = 0x4553554E49;
  *(v11 + 584) = 0xE500000000000000;
  *(v11 + 592) = sub_1004171BC;
  *(v11 + 600) = 0;
  *(v11 + 608) = 0x54494D494CLL;
  *(v11 + 616) = 0xE500000000000000;
  *(v11 + 624) = sub_1004171CC;
  *(v11 + 632) = 0;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10041A41C;
  *(v23 + 24) = v22;
  *(v11 + 640) = 0x49584F424C49414DLL;
  *(v11 + 648) = 0xE900000000000044;
  *(v11 + 656) = sub_10041AF58;
  *(v11 + 664) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10041A43C;
  *(v25 + 24) = v24;
  *(v11 + 672) = 0x415441444154454DLL;
  *(v11 + 680) = 0xE800000000000000;
  *(v11 + 688) = sub_10041AF58;
  *(v11 + 696) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10041A45C;
  *(v27 + 24) = v26;
  *(v11 + 704) = 0x4445494649444F4DLL;
  *(v11 + 712) = 0xE800000000000000;
  *(v11 + 720) = sub_10041AF58;
  *(v11 + 728) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10041A47C;
  *(v29 + 24) = v28;
  *(v11 + 736) = 0x43415053454D414ELL;
  *(v11 + 744) = 0xE900000000000045;
  *(v11 + 752) = sub_10041AF58;
  *(v11 + 760) = v29;
  *(v11 + 768) = 0x514553444F4D4F4ELL;
  *(v11 + 776) = 0xE800000000000000;
  *(v11 + 784) = sub_1004171DC;
  *(v11 + 792) = 0;
  *(v11 + 800) = 0x54534958454E4F4ELL;
  *(v11 + 808) = 0xEB00000000544E45;
  *(v11 + 816) = sub_1004171EC;
  *(v11 + 824) = 0;
  *(v11 + 832) = 0x4D5245504F4ELL;
  *(v11 + 840) = 0xE600000000000000;
  *(v11 + 848) = sub_1004171FC;
  *(v11 + 856) = 0;
  *(v11 + 864) = 0x4445564153544F4ELL;
  *(v11 + 872) = 0xE800000000000000;
  *(v11 + 880) = sub_10041720C;
  *(v11 + 888) = 0;
  *(v11 + 896) = 0x544F55515245564FLL;
  *(v11 + 904) = 0xE900000000000041;
  *(v11 + 912) = sub_10041721C;
  *(v11 + 920) = 0;
  *(v11 + 928) = 0x4553524150;
  *(v11 + 936) = 0xE500000000000000;
  *(v11 + 944) = sub_10041722C;
  *(v11 + 952) = 0;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10041A49C;
  *(v31 + 24) = v30;
  strcpy((v11 + 960), "PERMANENTFLAGS");
  *(v11 + 975) = -18;
  *(v11 + 976) = sub_10041AF58;
  *(v11 + 984) = v31;
  *(v11 + 992) = 0x5259434156495250;
  *(v11 + 1000) = 0xEF44455249555145;
  *(v11 + 1008) = sub_10041723C;
  *(v11 + 1016) = 0;
  *(v11 + 1024) = 0x4C4E4F2D44414552;
  *(v11 + 1032) = 0xE900000000000059;
  *(v11 + 1040) = sub_10041724C;
  *(v11 + 1048) = 0;
  *(v11 + 1056) = 0x4952572D44414552;
  *(v11 + 1064) = 0xEA00000000004554;
  *(v11 + 1072) = sub_10041725C;
  *(v11 + 1080) = 0;
  v32 = swift_allocObject();
  v32[2] = a4;
  v32[3] = a5;
  v32[4] = a6;
  v32[5] = a7;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10041A4BC;
  *(v33 + 24) = v32;
  *(v11 + 1088) = 0x4C41525245464552;
  *(v11 + 1096) = 0xE800000000000000;
  *(v11 + 1104) = sub_10041AF58;
  *(v11 + 1112) = v33;
  *(v11 + 1120) = 0x5542524556524553;
  *(v11 + 1128) = 0xE900000000000047;
  *(v11 + 1136) = sub_10041726C;
  *(v11 + 1144) = 0;
  *(v11 + 1152) = 0x5441455243595254;
  *(v11 + 1160) = 0xE900000000000045;
  *(v11 + 1168) = sub_10041727C;
  *(v11 + 1176) = 0;
  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = a6;
  v34[5] = a7;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_10041A4DC;
  *(v35 + 24) = v34;
  *(v11 + 1184) = 0x5458454E444955;
  *(v11 + 1192) = 0xE700000000000000;
  *(v11 + 1200) = sub_10041AF58;
  *(v11 + 1208) = v35;
  strcpy((v11 + 1216), "UIDNOTSTICKY");
  *(v11 + 1229) = 0;
  *(v11 + 1230) = -5120;
  *(v11 + 1232) = sub_10041728C;
  *(v11 + 1240) = 0;
  *(v11 + 1248) = 0x4955514552444955;
  *(v11 + 1256) = 0xEB00000000444552;
  *(v11 + 1264) = sub_10041729C;
  *(v11 + 1272) = 0;
  v36 = swift_allocObject();
  v36[2] = a4;
  v36[3] = a5;
  v36[4] = a6;
  v36[5] = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10041A4FC;
  *(v37 + 24) = v36;
  *(v11 + 1280) = 0x44494C4156444955;
  *(v11 + 1288) = 0xEB00000000595449;
  *(v11 + 1296) = sub_10041AF58;
  *(v11 + 1304) = v37;
  *(v11 + 1312) = 0x414C494156414E55;
  *(v11 + 1320) = 0xEB00000000454C42;
  *(v11 + 1328) = sub_1004172AC;
  *(v11 + 1336) = 0;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_10041A51C;
  *(v39 + 24) = v38;
  *(v11 + 1344) = 0x4E4545534E55;
  *(v11 + 1352) = 0xE600000000000000;
  *(v11 + 1360) = sub_10041AF58;
  *(v11 + 1368) = v39;
  v40 = swift_allocObject();
  v40[2] = a4;
  v40[3] = a5;
  v40[4] = a6;
  v40[5] = a7;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_10041A53C;
  *(v41 + 24) = v40;
  *(v11 + 1376) = 0x4843454D4C5255;
  *(v11 + 1384) = 0xE700000000000000;
  *(v11 + 1392) = sub_10041AF58;
  *(v11 + 1400) = v41;
  *(v11 + 1408) = 0x52545441455355;
  *(v11 + 1416) = 0xE700000000000000;
  *(v11 + 1424) = sub_1004172BC;
  *(v11 + 1432) = 0;
  swift_retain_n();
  v43 = sub_1004117E0(v11, v42);
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DC798, &qword_100504118);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10000C9C0(&qword_1005DC828, &qword_100504AA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  v45 = swift_allocObject();
  v45[2] = a4;
  v45[3] = a5;
  v45[4] = a6;
  v45[5] = a7;
  v45[6] = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_10041A59C;
  *(v46 + 24) = v45;
  *(inited + 32) = sub_10041AF58;
  *(inited + 40) = v46;
  v47 = swift_allocObject();
  v47[2] = a4;
  v47[3] = a5;
  v47[4] = a6;
  v47[5] = a7;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_10041A5B8;
  *(v48 + 24) = v47;
  *(inited + 48) = sub_10041AF58;
  *(inited + 56) = v48;
  swift_retain_n();
  sub_1003FA900(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 436);
  v50 = v49;
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  swift_arrayDestroy();
  return v50;
}

uint64_t sub_1004157C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_100469DF8(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
    v20 = swift_allocBox();
    sub_1004120FC(v12, a2, a3, a4, a5, a6, a7, sub_100418408, v21, &qword_1005DC5C8, &qword_10050B730);
    return v20 | 0x5000000000000000;
  }

  return result;
}

uint64_t sub_100415934(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_10041D9A8(v8, a2, a3);
    return v15 | 0x5000000000000004;
  }

  return result;
}

uint64_t sub_100415A58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_100469DF8(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    v20 = swift_allocObject();
    sub_100422734(v12, a2, a3, a4, a5, a6, a7, v32);
    v21 = v32[13];
    *(v20 + 208) = v32[12];
    *(v20 + 224) = v21;
    v22 = v32[15];
    *(v20 + 240) = v32[14];
    *(v20 + 256) = v22;
    v23 = v32[9];
    *(v20 + 144) = v32[8];
    *(v20 + 160) = v23;
    v24 = v32[11];
    *(v20 + 176) = v32[10];
    *(v20 + 192) = v24;
    v25 = v32[5];
    *(v20 + 80) = v32[4];
    *(v20 + 96) = v25;
    v26 = v32[7];
    *(v20 + 112) = v32[6];
    *(v20 + 128) = v26;
    v27 = v32[1];
    *(v20 + 16) = v32[0];
    *(v20 + 32) = v27;
    v28 = v32[3];
    result = v20 | 0x7000000000000004;
    *(v20 + 48) = v32[2];
    *(v20 + 64) = v28;
  }

  return result;
}

uint64_t sub_100415C08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v15 = sub_10046DE2C(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v16 = v15;

    goto LABEL_5;
  }

  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_5:
    result = swift_allocObject();
    *(result + 16) = v16;
    return result;
  }
}

uint64_t sub_100415D48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, char **a8@<X8>)
{
  v11 = a2;
  v12 = a1;
  result = sub_10046B71C(0x2820uLL, 0xE200000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v51 = a8;
    v15 = a4;
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1004CEAA0;
    result = sub_1004228C4(v12, v11, a3, v15);
    v49 = v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v17;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      v18 = v16;
      v19 = a3;
      if (v11 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v34 = a3;
      }

      else
      {
        v20 = v12[1];
        v39 = *(v12 + 10);
        v40 = *(v12 + 4);
        v38 = *(v12 + 22);
        v41 = *v12;

        v47 = v11 + 2;
        v48 = v12;
        if (v11 + 2 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v35 = a3;
          v36 = v41;
        }

        else
        {
          v21 = v11 + 3;
          v22 = *v12;
          v23 = v12[1];
          v45 = *(v12 + 10);
          v46 = *(v12 + 4);
          v44 = *(v12 + 22);
          if (v11 + 3 < v19)
          {
            v24 = v18;
            v42 = v18;
            v43 = v11;
            do
            {
              v50 = v24;
              swift_retain_n();
              sub_100469DF8(v12);

              v25 = v12;
              v26 = v19;
              v27 = sub_1004228C4(v25, v47, v19, v49);
              v29 = v28;

              v24 = v50;
              v31 = *(v50 + 2);
              v30 = *(v50 + 3);
              if (v31 >= v30 >> 1)
              {
                v24 = sub_100085070((v30 > 1), v31 + 1, 1, v50);
              }

              *(v24 + 2) = v31 + 1;
              v32 = &v24[16 * v31];
              *(v32 + 4) = v27;
              *(v32 + 5) = v29;
              v22 = *v48;
              v23 = v48[1];
              v45 = *(v48 + 10);
              v46 = *(v48 + 4);
              v44 = *(v48 + 22);
              v19 = v26;
              v33 = v21 < v26;
              v18 = v42;
              v11 = v43;
              v12 = v48;
            }

            while (v33);
          }

          sub_1003A5228();
          swift_allocError();
          *v37 = v19;

          swift_willThrow();
          v36 = v41;

          *v12 = v22;
          v12[1] = v23;
          *(v12 + 4) = v46;
          *(v12 + 10) = v45;
          *(v12 + 22) = v44;
        }

        swift_willThrow();
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (swift_dynamicCast())
        {

          result = sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v48, v11, v19);
          *v51 = v18;
          return result;
        }

        *v48 = v36;
        v48[1] = v20;
        *(v48 + 4) = v40;
        *(v48 + 10) = v39;
        *(v48 + 22) = v38;
      }

      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1004161EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_allocObject();
  v17 = _swiftEmptyArrayStorage;

  sub_1004733D0(a1, &v17, a2, a3, a4, a5, a6, a7);

  if (v7)
  {

    return swift_deallocUninitializedObject();
  }

  else
  {
    *(v15 + 16) = v17;
    return v15 | 4;
  }
}

uint64_t sub_1004162D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v14 = *result;
    v15 = *(result + 8);
    v16 = *(result + 16);
    v17 = *(result + 20);
    v18 = *(result + 22);
    sub_100469DF8(result);
    if (v7)
    {
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = v16;
      *(v12 + 20) = v17;
      *(v12 + 22) = v18;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v12, a2, a3);

    v20 = sub_100470458(v12, a2, a3, a4, a5, a6, a7);

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v12, a2, a3);
    v21 = swift_allocObject();
    v22 = _swiftEmptyArrayStorage;
    if (v20)
    {
      v22 = v20;
    }

    *(v21 + 16) = v22;
    return v21 | 0x1000000000000000;
  }

  return result;
}

uint64_t sub_10041648C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  sub_10000C9C0(&qword_1005D15B8, &unk_1005099A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004CEAA0;
  result = sub_100422C60(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(v16 + 16) = 0;
  }

  v53 = a1;
  v19 = a8;
  v51 = a4;
  *(v16 + 32) = result;
  *(v16 + 40) = v18;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v35 = a3;
    }

    else
    {
      v20 = v53[1];
      v42 = *(v53 + 10);
      v43 = *(v53 + 4);
      v41 = *(v53 + 22);
      v44 = *v53;

      v50 = a2 + 2;
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v36 = a3;
        v37 = v44;
        v38 = v43;
      }

      else
      {
        v46 = a5;
        v21 = a2 + 3;
        v22 = *v53;
        v23 = v53[1];
        v48 = *(v53 + 10);
        v49 = *(v53 + 4);
        v47 = *(v53 + 22);
        if (a2 + 3 < a3)
        {
          v24 = v53;
          v25 = v16;
          v45 = a7;
          do
          {
            v52 = v25;
            swift_retain_n();
            sub_100469DF8(v24);

            v26 = v16;
            v27 = a3;
            v28 = a6;
            v29 = sub_100422C60(v24, v50, a3, v51, v46, a6, a7);
            v31 = v30;

            v25 = v52;
            v33 = *(v52 + 2);
            v32 = *(v52 + 3);
            if (v33 >= v32 >> 1)
            {
              v25 = sub_1004617B4((v32 > 1), v33 + 1, 1, v52);
            }

            *(v25 + 2) = v33 + 1;
            v34 = &v25[16 * v33];
            *(v34 + 4) = v29;
            *(v34 + 5) = v31;
            v24 = v53;
            v22 = *v53;
            v23 = v53[1];
            v48 = *(v53 + 10);
            v49 = *(v53 + 4);
            v47 = *(v53 + 22);
            a3 = v27;
            a7 = v45;
            a6 = v28;
            v16 = v26;
          }

          while (v21 < v27);
        }

        v39 = v22;
        sub_1003A5228();
        swift_allocError();
        *v40 = a3;

        swift_willThrow();
        v37 = v44;

        *v53 = v39;
        v53[1] = v23;
        *(v53 + 4) = v49;
        *(v53 + 10) = v48;
        *(v53 + 22) = v47;
        v38 = v43;
        v19 = a8;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        *v19 = v16;
        return result;
      }

      *v53 = v37;
      v53[1] = v20;
      *(v53 + 4) = v38;
      *(v53 + 10) = v42;
      *(v53 + 22) = v41;
    }

    swift_willThrow();
  }

  return result;
}

uint64_t sub_1004168C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_100405E9C(v8, a2, a3, v16);
    return v15 | 0x1000000000000004;
  }

  return result;
}

uint64_t sub_1004169E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_10041EC70(v8, a2, a3, v16);
    return v15 | 0x2000000000000000;
  }

  return result;
}

uint64_t sub_100416B04(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    v15 = swift_allocObject();
    *(v15 + 16) = sub_10040691C(v8, a2, a3, v16);
    return v15 | 0x2000000000000004;
  }

  return result;
}

uint64_t sub_100416C28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __OFADD__(a2, 1);
  v10 = a2 + 1;
  if (!v9)
  {
    v11 = a3;
    if (v10 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = v11;
    }

    else
    {
      v12 = result;
      v29 = a2;
      v15 = *result;
      v16 = *(result + 8);
      v17 = *(result + 16);
      v18 = *(result + 20);
      v19 = *(result + 22);
      sub_100469DF8(result);
      if (!v7)
      {
        sub_10000C9C0(&qword_1005DC828, &qword_100504AA8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004D1B20;
        v22 = swift_allocObject();
        v23 = a4;
        v22[2] = a4;
        v22[3] = a5;
        v22[4] = a6;
        v22[5] = a7;
        v24 = swift_allocObject();
        *(v24 + 16) = sub_10041A9B4;
        *(v24 + 24) = v22;
        *(inited + 32) = sub_10041AF58;
        *(inited + 40) = v24;
        v25 = swift_allocObject();
        v25[2] = v23;
        v25[3] = a5;
        v25[4] = a6;
        v25[5] = a7;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_10041A9D4;
        *(v26 + 24) = v25;
        *(inited + 48) = sub_10041AF58;
        *(inited + 56) = v26;
        *(inited + 64) = sub_1004172CC;
        *(inited + 72) = 0;
        *(inited + 80) = sub_100417324;
        *(inited + 88) = 0;
        swift_retain_n();
        sub_1003FA900(inited, v12, v29, v11, 0xD000000000000020, 0x80000001004B03C0, 334);
        v11 = v27;
        swift_setDeallocating();
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        return v11;
      }

      *v12 = v15;
      *(v12 + 8) = v16;
      *(v12 + 16) = v17;
      *(v12 + 20) = v18;
      *(v12 + 22) = v19;
    }

    swift_willThrow();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100416EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x52544E45474E4F4CuLL, 0xEC00000020534549, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = sub_10046C278(a1, a2, a3, 1);
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001004B08A0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001004B03C0;
      v11[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      return v10 | 0x6000000000000000;
    }
  }

  return result;
}

uint64_t sub_100416FDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x20455A495358414DuLL, 0xE800000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v8 = sub_10046C278(a1, a2, a3, 1);
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001004B08A0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001004B03C0;
      v11[4] = 202;
      return swift_willThrow();
    }

    else
    {
      v9 = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      return v10 | 0x6000000000000004;
    }
  }

  return result;
}

uint64_t sub_1004172CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_10046B71C(0x594E414D4F4F54uLL, 0xE700000000000000, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0x800000000000005CLL;
  }

  return result;
}

uint64_t sub_100417324@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_10046B71C(0x5441564952504F4EuLL, 0xE900000000000045, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0x8000000000000064;
  }

  return result;
}

uint64_t sub_100417380(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    sub_10046B71C(0x4C414E5245544E49uLL, 0xE800000000000000, 0, 0, v8, a2, a3);
    v17 = _swiftEmptyArrayStorage;
    sub_100471E6C(v8, &v17, a2, a3);
    v15 = v17;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    return v16 | 0x7000000000000000;
  }

  return result;
}

uint64_t sub_1004174DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  v12 = sub_100420598(a1, a2, a3);
  if (v7)
  {
    return swift_deallocUninitializedObject();
  }

  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  result = v11 | 0x3000000000000000;
  *(v11 + 32) = v14;
  return result;
}

unint64_t sub_1004175A0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v8 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100469DF8(result);
    if (v3)
    {
      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v8, a2, a3);
    v15 = sub_10042E9D4(v8, a2, a3);
    v17 = v16;
    v18 = v15;
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v8, a2, a3);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    return v19 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_100417710(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      return swift_willThrow();
    }

    v9 = result;
    v24 = a2;
    v11 = *result;
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 20);
    v15 = *(result + 22);
    sub_100466470(result, v25);
    if (v4)
    {
      *v9 = v11;
      *(v9 + 8) = v12;
      *(v9 + 16) = v13;
      *(v9 + 20) = v14;
      *(v9 + 22) = v15;
      return swift_willThrow();
    }

    sub_10046C184(v25[0], v25[1], v26 | (v27 << 32) | (v28 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
    v17 = a4();
    v19 = v18;

    v20 = sub_10046455C(v9, v24, a3);
    v22 = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    *(v23 + 24) = v19;
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
    return v23 | 0x4000000000000004;
  }

  return result;
}

uint64_t sub_1004178CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v6 = result;
      v8 = *result;
      v9 = *(result + 8);
      v10 = *(result + 16);
      v11 = *(result + 20);
      v12 = *(result + 22);
      sub_100469DF8(result);
      if (!v4)
      {
        sub_100466BE8(v6, v18);
        sub_10046C184(v18[0], v18[1], v19 | (v20 << 32) | (v21 << 48), 0xD000000000000020, 0x80000001004B03C0, 379);
        v15 = v14;
        v17 = v16;

        *a4 = v15;
        a4[1] = v17;
        return result;
      }

      *v6 = v8;
      *(v6 + 8) = v9;
      *(v6 + 16) = v10;
      *(v6 + 20) = v11;
      *(v6 + 22) = v12;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100417A3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, char **a6@<X8>)
{
  v8 = a3;
  v10 = a1;
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v6)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v32 = a4;
      v31 = a6;
      v35 = a2 + 1;
      v13 = _swiftEmptyArrayStorage;
      v33 = v10;
      v34 = v8;
      while (1)
      {
        if (v35 >= v8)
        {
          sub_1003A5228();
          swift_allocError();
          *v29 = v8;
          v13 = _swiftEmptyArrayStorage;
          goto LABEL_13;
        }

        v14 = sub_10041AAD8(v10, v35, v8, v32);
        v16 = v15;
        v18 = v17;
        v20 = v19;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1004618DC(0, *(v13 + 2) + 1, 1, v13);
        }

        v22 = *(v13 + 2);
        v21 = *(v13 + 3);
        if (v22 >= v21 >> 1)
        {
          v13 = sub_1004618DC((v21 > 1), v22 + 1, 1, v13);
        }

        *(v13 + 2) = v22 + 1;
        v23 = &v13[32 * v22];
        *(v23 + 4) = v14;
        *(v23 + 5) = v20;
        *(v23 + 6) = v16;
        *(v23 + 7) = v18;
        v10 = v33;
        v8 = v34;
        v24 = *v33;
        v25 = v33[1];
        v26 = *(v33 + 4);
        v27 = *(v33 + 10);
        v28 = *(v33 + 22);
        if (a2 + 2 >= v34)
        {
          break;
        }

        sub_100469DF8(v33);
      }

      sub_1003A5228();
      swift_allocError();
      *v30 = v34;
      swift_willThrow();
      *v33 = v24;
      v33[1] = v25;
      *(v33 + 4) = v26;
      *(v33 + 10) = v27;
      *(v33 + 22) = v28;
LABEL_13:
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        result = sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v10, a2, v8);
        *v31 = v13;
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_100417D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a6;
  v64 = a7;
  v59 = a8;
  v58 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v48[-v13];
  v14 = sub_10000C9C0(&qword_1005CDA60, &qword_1004CF7C8);
  __chkstk_darwin(v14 - 8);
  v55 = &v48[-v15];
  v16 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
  __chkstk_darwin(v16 - 8);
  v53 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v48[-v19];
  sub_10000C9C0(&qword_1005DC840, &unk_100504AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v56 = a2;
  v22 = v62;
  v23 = sub_100419358(a1, a2, a3, a4, a5, v63, v64);
  if (v22)
  {
    *(inited + 16) = 0;
  }

  v60 = a4;
  v61 = a5;
  v62 = a3;
  v52 = v20;
  v25 = v58;
  v26 = v59;
  v27 = v57;
  *(inited + 32) = v23;
  if (__OFADD__(v56, 1))
  {
    __break(1u);
  }

  v28 = v62;
  if (v56 + 1 >= v62)
  {
    sub_1003A5228();
    swift_allocError();
    *v36 = v28;
LABEL_14:
    swift_willThrow();
  }

  v29 = *a1;
  v30 = a1[1];
  v51 = *(a1 + 4);
  v50 = *(a1 + 10);
  v31 = v56 + 2;
  v49 = *(a1 + 22);
  v56 = v29;

  if (v31 < v28)
  {
    while (1)
    {
      v32 = v64;

      v33 = sub_100419918(a1, v31, v28, v60, v61, v63, v32);

      v35 = *(inited + 16);
      v34 = *(inited + 24);
      if (v35 >= v34 >> 1)
      {
        inited = sub_100461270((v34 > 1), v35 + 1, 1, inited);
      }

      *(inited + 16) = v35 + 1;
      *(inited + 8 * v35 + 32) = v33;
      v28 = v62;
    }
  }

  sub_1003A5228();
  v37 = swift_allocError();
  *v38 = v28;
  v39 = v26;
  v40 = v52;
  v41 = v55;
  swift_willThrow();
  v65 = v37;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  v42 = swift_dynamicCast();
  v43 = v54;
  if (!v42)
  {

    *a1 = v56;
    a1[1] = v30;
    *(a1 + 4) = v51;
    *(a1 + 10) = v50;
    *(a1 + 22) = v49;
    goto LABEL_14;
  }

  sub_100419F2C(inited);
  v44 = v53;
  v45 = sub_10000E268(v40, v53, &qword_1005CDA58, &qword_1004CF7C0);
  if (sub_1003DAE18(v45) <= 0)
  {
    sub_100025F40(v44, &qword_1005CDA58, &qword_1004CF7C0);
    v46 = 1;
  }

  else
  {
    sub_100025FDC(v44, v43, &qword_1005CDA58, &qword_1004CF7C0);
    sub_100025FDC(v43, v41, &qword_1005CDA68, &qword_1004CF7D0);
    v46 = 0;
  }

  (*(v27 + 56))(v41, v46, 1, v25);
  if ((*(v27 + 48))(v41, 1, v25) == 1)
  {
    sub_100025F40(v41, &qword_1005CDA60, &qword_1004CF7C8);
    sub_1003A527C();
    swift_allocError();
    *v47 = 0xD000000000000016;
    v47[1] = 0x80000001004B0A90;
    v47[2] = 0xD000000000000020;
    v47[3] = 0x80000001004B03C0;
    v47[4] = 125;
    swift_willThrow();
    return sub_100025F40(v40, &qword_1005CDA58, &qword_1004CF7C0);
  }

  else
  {
    sub_100025F40(v40, &qword_1005CDA58, &qword_1004CF7C0);
    return sub_100025FDC(v41, v39, &qword_1005CDA68, &qword_1004CF7D0);
  }
}

uint64_t sub_100418408@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a6;
  v64 = a7;
  v59 = a8;
  v58 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v48[-v13];
  v14 = sub_10000C9C0(&qword_1005DC830, &qword_100504AB0);
  __chkstk_darwin(v14 - 8);
  v55 = &v48[-v15];
  v16 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  __chkstk_darwin(v16 - 8);
  v53 = &v48[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v48[-v19];
  sub_10000C9C0(&qword_1005DC838, &qword_100504AB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v56 = a2;
  v22 = v62;
  v23 = sub_100419638(a1, a2, a3, a4, a5, v63, v64);
  if (v22)
  {
    *(inited + 16) = 0;
  }

  v60 = a4;
  v61 = a5;
  v62 = a3;
  v52 = v20;
  v25 = v58;
  v26 = v59;
  v27 = v57;
  *(inited + 32) = v23;
  if (__OFADD__(v56, 1))
  {
    __break(1u);
  }

  v28 = v62;
  if (v56 + 1 >= v62)
  {
    sub_1003A5228();
    swift_allocError();
    *v36 = v28;
LABEL_14:
    swift_willThrow();
  }

  v29 = *a1;
  v30 = a1[1];
  v51 = *(a1 + 4);
  v50 = *(a1 + 10);
  v31 = v56 + 2;
  v49 = *(a1 + 22);
  v56 = v29;

  if (v31 < v28)
  {
    while (1)
    {
      v32 = v64;

      v33 = sub_100419C20(a1, v31, v28, v60, v61, v63, v32);

      v35 = *(inited + 16);
      v34 = *(inited + 24);
      if (v35 >= v34 >> 1)
      {
        inited = sub_1004617A0((v34 > 1), v35 + 1, 1, inited);
      }

      *(inited + 16) = v35 + 1;
      *(inited + 8 * v35 + 32) = v33;
      v28 = v62;
    }
  }

  sub_1003A5228();
  v37 = swift_allocError();
  *v38 = v28;
  v39 = v26;
  v40 = v52;
  v41 = v55;
  swift_willThrow();
  v65 = v37;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  v42 = swift_dynamicCast();
  v43 = v54;
  if (!v42)
  {

    *a1 = v56;
    a1[1] = v30;
    *(a1 + 4) = v51;
    *(a1 + 10) = v50;
    *(a1 + 22) = v49;
    goto LABEL_14;
  }

  sub_100419F2C(inited);
  v44 = v53;
  v45 = sub_10000E268(v40, v53, &qword_1005DC5D0, &qword_10050B9D0);
  if (sub_1003DAE18(v45) <= 0)
  {
    sub_100025F40(v44, &qword_1005DC5D0, &qword_10050B9D0);
    v46 = 1;
  }

  else
  {
    sub_100025FDC(v44, v43, &qword_1005DC5D0, &qword_10050B9D0);
    sub_100025FDC(v43, v41, &qword_1005DC5C8, &qword_10050B730);
    v46 = 0;
  }

  (*(v27 + 56))(v41, v46, 1, v25);
  if ((*(v27 + 48))(v41, 1, v25) == 1)
  {
    sub_100025F40(v41, &qword_1005DC830, &qword_100504AB0);
    sub_1003A527C();
    swift_allocError();
    *v47 = 0xD000000000000016;
    v47[1] = 0x80000001004B0A90;
    v47[2] = 0xD000000000000020;
    v47[3] = 0x80000001004B03C0;
    v47[4] = 125;
    swift_willThrow();
    return sub_100025F40(v40, &qword_1005DC5D0, &qword_10050B9D0);
  }

  else
  {
    sub_100025F40(v40, &qword_1005DC5D0, &qword_10050B9D0);
    return sub_100025FDC(v41, v39, &qword_1005DC5C8, &qword_10050B730);
  }
}

uint64_t sub_100418AAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v22 = a3;

LABEL_6:
      swift_willThrow();
      v27 = v8;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v27 = v8;
        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {

        sub_10041A94C(a1, v17, a3, &v26, v23);

        return v26;
      }

      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = *(a1 + 4);
    v21 = *(a1 + 10);
    v25 = *(a1 + 22);

    sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v25;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100418D90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v22 = a3;

LABEL_6:
      swift_willThrow();
      v27 = v8;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v27 = v8;
        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {

        sub_10041A94C(a1, v17, a3, &v26, v23);

        return v26;
      }

      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = *(a1 + 4);
    v21 = *(a1 + 10);
    v25 = *(a1 + 22);

    sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v25;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100419074(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(result + 32) = a6;
  *(result + 40) = a7;
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v22 = a3;

LABEL_6:
      swift_willThrow();
      v27 = v8;
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v27 = v8;
        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
        }
      }

      if (v17 < a3)
      {

        sub_10041AAB8(a1, v17, a3, &v26, v23);

        return v26;
      }

      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
      swift_willThrow();
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = *(a1 + 4);
    v21 = *(a1 + 10);
    v25 = *(a1 + 22);

    sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v17, a3);
    if (v7)
    {

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v25;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void *sub_100419358(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  v17 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v22 = a3;
    }

    else
    {
      v18 = *a1;
      v19 = a1[1];
      v20 = *(a1 + 4);
      v21 = *(a1 + 10);
      v27 = *(a1 + 22);

      sub_10041AF88(a1, v17, a3, &v28);
      if (!v7)
      {

        LODWORD(v25) = v28;
        v26 = HIDWORD(v28);
        return (v25 | (v26 << 32));
      }

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v27;
    }

    swift_willThrow();
    v29 = v8;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v29 = v8;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v17 < a3)
    {

      v25 = sub_10041A24C(a1, v17, a3, v23);

      v26 = HIDWORD(v25);
      return (v25 | (v26 << 32));
    }

    sub_1003A5228();
    swift_allocError();
    *v24 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void *sub_100419638(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  v17 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v17 >= a3)
    {
      sub_1003A5228();
      v8 = swift_allocError();
      *v22 = a3;
    }

    else
    {
      v18 = *a1;
      v19 = a1[1];
      v20 = *(a1 + 4);
      v21 = *(a1 + 10);
      v27 = *(a1 + 22);

      sub_10041AF70(a1, v17, a3, &v28);
      if (!v7)
      {

        LODWORD(v25) = v28;
        v26 = HIDWORD(v28);
        return (v25 | (v26 << 32));
      }

      *a1 = v18;
      a1[1] = v19;
      *(a1 + 4) = v20;
      *(a1 + 10) = v21;
      *(a1 + 22) = v27;
    }

    swift_willThrow();
    v29 = v8;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v29 = v8;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v17 < a3)
    {

      v25 = sub_10041A24C(a1, v17, a3, v23);

      v26 = HIDWORD(v25);
      return (v25 | (v26 << 32));
    }

    sub_1003A5228();
    swift_allocError();
    *v24 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void *sub_100419918(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  result = sub_10046B71C(0x2CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    result[2] = a4;
    result[3] = a5;
    result[4] = a6;
    result[5] = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < v12)
    {

      sub_10041AE10(a1, v16, v12, &v22);

      LODWORD(v12) = v22;
      v21 = HIDWORD(v22);
      return (v12 | (v21 << 32));
    }

    sub_1003A5228();
    v17 = swift_allocError();
    *v18 = v12;

    swift_willThrow();
    v23 = v17;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v23 = v17;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < v12)
    {

      v12 = sub_10041A24C(a1, v16, v12, v19);

      v21 = HIDWORD(v12);
      return (v12 | (v21 << 32));
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = v12;
    swift_willThrow();
  }

  return result;
}

void *sub_100419C20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  result = sub_10046B71C(0x2CuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    result = swift_allocObject();
    result[2] = a4;
    result[3] = a5;
    result[4] = a6;
    result[5] = a7;
    v16 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 < v12)
    {

      sub_10041A90C(a1, v16, v12, &v22);

      LODWORD(v12) = v22;
      v21 = HIDWORD(v22);
      return (v12 | (v21 << 32));
    }

    sub_1003A5228();
    v17 = swift_allocError();
    *v18 = v12;

    swift_willThrow();
    v23 = v17;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v23 = v17;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v16 < v12)
    {

      v12 = sub_10041A24C(a1, v16, v12, v19);

      v21 = HIDWORD(v12);
      return (v12 | (v21 << 32));
    }

    sub_1003A5228();
    swift_allocError();
    *v20 = v12;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_100419F2C(uint64_t a1)
{
  sub_100016D2C();
  result = sub_1004A7114();
  v3 = *(a1 + 16);
  if (!v3)
  {
  }

  v4 = 0;
  v5 = (a1 + 36);
  while (v4 < *(a1 + 16))
  {
    v6 = *(v5 - 1);
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (!v7)
    {
      goto LABEL_13;
    }

    if (!*v5)
    {
      goto LABEL_14;
    }

    v9 = *v5;
    if (v8 > *v5)
    {
      goto LABEL_15;
    }

    v12 = v8;
    v13 = v9;
    if (v9 != v8)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v10 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      result = v10(v11, 0);
    }

    ++v4;
    v5 += 2;
    if (v3 == v4)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10041A078(uint64_t a1)
{
  v2 = type metadata accessor for ResponsePayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10041A0D4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10041A24C(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = sub_10046C278(a1, a2, a3, 0);
  if (!v4)
  {
    if (result < 0)
    {
      v6 = " in body structure";
      v8 = 202;
      v7 = 0xD000000000000011;
    }

    else
    {
      if ((result - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        result *= 0x100000001;
        return result;
      }

      v6 = "No month match for ";
      v7 = 0xD00000000000001DLL;
      v8 = 87;
    }

    v9 = v6 | 0x8000000000000000;
    sub_1003A527C();
    swift_allocError();
    *v10 = v7;
    v10[1] = v9;
    v10[2] = 0xD000000000000020;
    v10[3] = 0x80000001004B03C0;
    v10[4] = v8;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10041A3E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10041A55C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10041A5D8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10041A618()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10041A660()
{
  if (v0[3] != 1)
  {

    if (v0[5] != 1)
    {
    }
  }

  v1 = v0[12];
  v2 = v0[18];
  if (v1 < 0xFFFFFFFE00000000 || (v2 & 0xFFFFFFFFFFFFFE00) != 0x200)
  {
    sub_10041A738(v0[10], v0[11], v1, v0[13], v0[14], v0[15], v0[16], v0[17], v2, v0[19], v0[20], v0[21], v0[22], v0[23], v0[24], v0[25], v0[26], v0[27], v0[28], v0[29], v0[30], v0[31], v0[32], v0[33]);
  }

  return _swift_deallocObject(v0, 272, 7);
}

void sub_10041A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{

  if (a9 < 0)
  {

    sub_10041A868(a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
  }
}

void sub_10041A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a13)
  {
    sub_100191658(a9, a10, a11);
  }
}

uint64_t sub_10041A8C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t *sub_10041A96C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t **a6@<X8>)
{
  result = sub_100412454(a1, a2, a3, v6[2], v6[3], v6[4], v6[5], a4, a5);
  if (!v7)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_10041A9F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10041AA40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10041AA78()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t *sub_10041AAD8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v12 = a3;
LABEL_10:
      swift_willThrow();
      return v5;
    }

    v8 = result;
    v9 = *result;
    v10 = result[1];
    v11 = *(result + 4);
    v16 = *(result + 22);
    v17 = *(result + 10);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {

      sub_100466470(v8, v18);
      if (!v4)
      {
        sub_10046C184(v18[0], v18[1], v19 | (v20 << 32) | (v21 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
        v5 = a4();

        sub_100469DF8(v8);

        if ((sub_10046C278(v8, v6, a3, 1) & 0x8000000000000000) == 0)
        {

          sub_100469DF8(v8);

          if ((sub_10046C278(v8, v6, a3, 1) & 0x8000000000000000) == 0)
          {

            return v5;
          }
        }

        sub_1003A527C();
        swift_allocError();
        *v14 = 0xD000000000000011;
        v14[1] = 0x80000001004B08A0;
        v14[2] = 0xD000000000000020;
        v14[3] = 0x80000001004B03C0;
        v14[4] = 202;
        swift_willThrow();
        goto LABEL_9;
      }
    }

    swift_willThrow();

LABEL_9:
    *v8 = v9;
    *(v8 + 8) = v10;
    *(v8 + 16) = v11;
    *(v8 + 20) = v17;
    *(v8 + 22) = v16;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041AFA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v8 = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  *(v13 + 24) = 0;
  v15 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = v13;
    if (v15 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
LABEL_10:
      swift_willThrow();
    }

    v36 = a5;
    v7 = a1[1];
    v38 = *(a1 + 10);
    v39 = *(a1 + 4);
    v37 = *(a1 + 22);
    v40 = *a1;
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(a1);
    if (v6)
    {

LABEL_8:
      v18 = v38;
      swift_willThrow();
      v19 = v39;
LABEL_9:
      *a1 = v40;
      a1[1] = v7;
      *(a1 + 4) = v19;
      *(a1 + 10) = v18;
      *(a1 + 22) = v37;
      goto LABEL_10;
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, v15, a3);
    v8 = 0;

    sub_10041D5C4(a1, a2 + 2, a3, v5);

    a5 = 0;
    v21 = a2 + 2;
    v22 = *a1;
    v23 = a1[1];
    v35 = *(a1 + 4);
    v34 = *(a1 + 10);
    v33 = *(a1 + 22);
    if (v15 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
      swift_willThrow();
      *a1 = v22;
      a1[1] = v23;
      *(a1 + 4) = v35;
      *(a1 + 10) = v34;
      *(a1 + 22) = v33;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_12;
      }

      swift_beginAccess();
      v25 = *(v5 + 24);
      if (v25)
      {
        v26 = 0;
        v32 = 0;
        v31 = 0;
        v8 = 0;
        v41 = *v14;
        v27 = 1;
        goto LABEL_18;
      }

      sub_1003A527C();
      swift_allocError();
      *v28 = 0xD000000000000020;
      v28[1] = 0x80000001004B0AB0;
      v28[2] = 0xD000000000000020;
      v28[3] = 0x80000001004B03C0;
      v29 = 105;
LABEL_22:
      v28[4] = v29;
      swift_willThrow();
      goto LABEL_12;
    }

    v30 = 1;
    v31 = 0;
    v32 = 0;
    sub_100469DF8(a1);

    sub_10041D5C4(a1, v21, a3, v5);

    sub_100469DF8(a1);

    sub_10041D5C4(a1, v15 + 1, a3, v5);
  }

  swift_beginAccess();
  v25 = *(v5 + 24);
  if (!v25 || !a5 || (v30 & 1) != 0)
  {

    sub_1003A527C();
    swift_allocError();
    *v28 = 0xD00000000000002FLL;
    v28[1] = 0x80000001004B0AE0;
    v28[2] = 0xD000000000000020;
    v28[3] = 0x80000001004B03C0;
    v29 = 100;
    goto LABEL_22;
  }

  v41 = *v14;

  v27 = 0;
  v26 = a5;
LABEL_18:

  sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, v15, a3);
  if (v8)
  {

LABEL_12:
    v18 = v38;
    v19 = v39;
    goto LABEL_9;
  }

  *v36 = v41;
  *(v36 + 8) = v25;
  *(v36 + 16) = v26;
  *(v36 + 24) = v32;
  *(v36 + 28) = v31;
  *(v36 + 32) = v27;
  return result;
}

void sub_10041C15C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v35 = a6;
  v36 = a7;
  v15 = type metadata accessor for ParameterValue(0);
  __chkstk_darwin(v15 - 8);
  v17 = (v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v18 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
LABEL_9:
      swift_willThrow();
      return;
    }

    v31 = a8;
    v19 = *a1;
    v20 = a1[1];
    v21 = *(a1 + 4);
    v33 = *(a1 + 10);
    v34 = v21;
    v32 = *(a1 + 22);
    if (v18 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v23 = a3;
      goto LABEL_8;
    }

    swift_retain_n();
    sub_10042CC90(a1, v18 + 1, a3, v37);
    if (v8)
    {

LABEL_8:
      swift_willThrow();
      *a1 = v19;
      a1[1] = v20;
      v24 = v33;
      *(a1 + 4) = v34;
      *(a1 + 10) = v24;
      *(a1 + 22) = v32;
      goto LABEL_9;
    }

    v30 = v37[1];
    v25 = *a1;
    v29[0] = v37[0];
    v29[1] = v25;
    sub_100469DF8(a1);
    v26 = v30;
    sub_100420E2C(a1, v18, a3, a4, a5, v35, v36, v17);

    v27 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
    v28 = v31;
    sub_1002FC114(v17, v31 + *(v27 + 52));
    *v28 = v29[0];
    v28[1] = v26;
  }
}

void sub_10041C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10041D76C;
  *(v17 + 24) = v16;
  v45 = sub_100411AC0;
  v46 = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10041D7A0;
  *(v19 + 24) = v18;
  v47 = sub_100411C00;
  v48 = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10041D7D8;
  *(v21 + 24) = v20;
  v49 = sub_100411C00;
  v50 = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_10041D7F8;
  *(v23 + 24) = v22;
  v51 = sub_100411C00;
  v52 = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10041D818;
  *(v25 + 24) = v24;
  v53 = sub_100411C00;
  v54 = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10041D838;
  *(v27 + 24) = v26;
  v55 = sub_100411C00;
  v56 = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10041D858;
  *(v29 + 24) = v28;
  v57 = sub_100411C00;
  v58 = v29;
  v30 = __OFADD__(a2, 1);
  v31 = a2 + 1;
  v32 = v30;
  swift_retain_n();
  if ((v32 & 1) == 0)
  {
    swift_retain_n();
    v33 = 32;
    v34 = a1;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v44[v33];
      if (v31 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v40 = a3;
      }

      else
      {
        v43 = v33;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        v42 = *(v34 + 20);
        v38 = v31;
        v39 = *(v34 + 22);

        sub_100411BE4(v34, v38, a3);
        if (!v8)
        {

          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();
          return;
        }

        *v34 = v35;
        *(v34 + 8) = v36;
        *(v34 + 16) = v37;
        *(v34 + 20) = v42;
        *(v34 + 22) = v39;
        v31 = v38;
        v33 = v43;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {
      }

      else
      {

        swift_errorRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
          swift_arrayDestroy();

          return;
        }
      }

      v8 = 0;
      v33 += 16;
      if (v33 == 144)
      {
        sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
        swift_arrayDestroy();
        sub_1003A527C();
        swift_allocError();
        *v41 = 0xD000000000000019;
        v41[1] = 0x80000001004B08C0;
        v41[2] = 0xD000000000000020;
        v41[3] = 0x80000001004B03C0;
        v41[4] = 527;
        swift_willThrow();
        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_10041C9CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X7>, _DWORD *a5@<X8>)
{
  result = sub_10046B71C(a4, 0xE400000000000000, 0, 0, a1, a2, a3);
  if (!v5)
  {
    *a5 = sub_10040691C(a1, a2, a3, v11);
    type metadata accessor for SearchReturnData(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10041CA60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_10046B71C(0x204C4C41uLL, 0xE400000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1004120B4(a1, a2, a3, a4, a5, a6, a7, a8);
    type metadata accessor for SearchReturnData(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10041CB24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  result = sub_10046B71C(0x20544E554F43uLL, 0xE600000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_10046C278(a1, a2, a3, 1);
    if ((v10 & 0x8000000000000000) != 0)
    {
      sub_1003A527C();
      swift_allocError();
      *v11 = 0xD000000000000011;
      v11[1] = 0x80000001004B08A0;
      v11[2] = 0xD000000000000020;
      v11[3] = 0x80000001004B03C0;
      v11[4] = 202;
      return swift_willThrow();
    }

    else
    {
      *a4 = v10;
      type metadata accessor for SearchReturnData(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_10041CC30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  result = sub_10046B71C(0x20514553444F4DuLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    *a4 = sub_10041D9A8(a1, a2, a3);
    type metadata accessor for SearchReturnData(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10041CCCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v38 = a7;
  v16 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  result = sub_10046B71C(0x204C414954524150uLL, 0xE900000000000028, 0, 0, a1, a2, a3);
  if (!v8)
  {
    result = sub_100411D18(a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
      return swift_willThrow();
    }

    else
    {
      v33 = a2;
      v37 = v18;
      v30 = a8;
      v32 = v20;
      v31 = result;
      v21 = a1;
      v36 = *a1;
      sub_100469DF8(a1);
      v34 = a2 + 1;
      v35 = a3;
      v36 = v39;
      v23 = swift_allocObject();
      v23[2] = a4;
      v23[3] = a5;
      v24 = v38;
      v23[4] = a6;
      v23[5] = v24;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_10041D878;
      *(v25 + 24) = v23;
      v39[0] = sub_100411C00;
      v39[1] = v25;
      v26 = swift_allocObject();
      v26[2] = a4;
      v26[3] = a5;
      v26[4] = a6;
      v26[5] = v24;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_10041D898;
      *(v27 + 24) = v26;
      v39[2] = sub_100411C00;
      v39[3] = v27;
      v38 = 0x80000001004B03C0;
      swift_retain_n();
      *(swift_allocObject() + 16) = *v36;

      sub_100411BE4(v21, v34, v35);

      sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
      swift_arrayDestroy();
      sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v21, v33, v35);
      v28 = *(sub_10000C9C0(&qword_1005DC5E0, &qword_100502CD0) + 48);
      v29 = v30;
      *v30 = v31;
      *(v29 + 8) = v32 & 1;
      sub_100025FDC(v37, v29 + v28, &qword_1005DC5D0, &qword_10050B9D0);
      type metadata accessor for SearchReturnData(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_10041D288@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a8;
  v16 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  __chkstk_darwin(v16 - 8);
  v18 = &v20 - v17;
  result = sub_100418408(a1, a2, a3, a4, a5, a6, a7, &v20 - v17);
  if (!v8)
  {
    return sub_100025FDC(v18, v21, &qword_1005DC5D0, &qword_10050B9D0);
  }

  return result;
}

uint64_t sub_10041D388(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_100419F28(_swiftEmptyArrayStorage);
  }

  return result;
}

void sub_10041D3E8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_10041C15C(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
    type metadata accessor for SearchReturnData(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_10041D430()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_10041D468(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v7 = result;
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);

      sub_10046B71C(0x20514553444F4D28uLL, 0xE800000000000000, 0, 0, v7, v5, a3);
      if (!v3)
      {
        v4 = sub_10041D9A8(v7, v5, a3);
        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v7, v5, a3);

        return v4;
      }

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041D5C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_10046B71C(0x2220474154uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v10 = a3;
      return swift_willThrow();
    }

    else
    {
      sub_100465CAC(a1, v15);
      sub_10046C184(v15[0], v15[1], v16 | (v17 << 32) | (v18 << 48), 0xD000000000000020, 0x80000001004B03C0, 2610);
      v12 = v11;
      v14 = v13;

      swift_beginAccess();
      *(a4 + 16) = v12;
      *(a4 + 24) = v14;

      return sub_10046B71C(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_10041D8B8(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10041D920()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *sub_10041D9A8(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = result[1];
    v9 = *(result + 4);
    v10 = *(result + 10);
    v11 = *(result + 22);

    v12 = sub_10046C278(v6, v4, a3, 1);
    if (v3)
    {

LABEL_5:
      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    if ((v12 & 0x8000000000000000) != 0)
    {

      sub_1003A527C();
      swift_allocError();
      *v15 = 0xD00000000000001BLL;
      v15[1] = 0x80000001004B0980;
      v15[2] = 0xD000000000000020;
      v15[3] = 0x80000001004B03C0;
      v15[4] = 173;
      swift_willThrow();
      goto LABEL_5;
    }

    v14 = v12;

    return v14;
  }

  return result;
}

char *sub_10041DB10(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = *(result + 1);
    v13 = *(result + 4);
    v19 = result[22];
    v20 = *(result + 10);

    sub_10041E8C4(v10, v8, a3, a4, a5, a6, a7, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t sub_10041DC38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a8;
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v15 - 8);
  v17 = v44 - v16;
  sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  v19 = v53;
  v20 = sub_10041E534(a1, a2, a3, a4, a5, a6, a7);
  if (v19)
  {
    *(inited + 16) = 0;
  }

  v52 = a4;
  v53 = a5;
  *(inited + 32) = v20;
  if (__OFADD__(a2, 1))
  {
LABEL_31:
    __break(1u);
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v30 = a3;
LABEL_23:
    swift_willThrow();
  }

  v50 = a6;
  v51 = a7;
  v22 = *a1;
  v23 = a1[1];
  v24 = *(a1 + 4);
  v25 = *(a1 + 10);
  v26 = a2 + 2;
  v47 = *(a1 + 22);
  v48 = v25;

  if (v26 < a3)
  {
    v44[1] = v24;
    v45 = v22;
    v46 = v17;
    while (1)
    {

      sub_10046B71C(0x2CuLL, 0xE100000000000000, 0, 0, a1, v26, a3);
      v27 = sub_10041E534(a1, v26, a3, v52, v53, v50, v51);

      v29 = *(inited + 16);
      v28 = *(inited + 24);
      if (v29 >= v28 >> 1)
      {
        inited = sub_100085898((v28 > 1), v29 + 1, 1, inited);
      }

      *(inited + 16) = v29 + 1;
      *(inited + 8 * v29 + 32) = v27;
    }
  }

  sub_1003A5228();
  v31 = swift_allocError();
  *v32 = a3;
  v33 = v17;
  swift_willThrow();
  v54 = v31;
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (!swift_dynamicCast())
  {

    *a1 = v22;
    a1[1] = v23;
    *(a1 + 4) = v24;
    v42 = v47;
    *(a1 + 10) = v48;
    *(a1 + 22) = v42;
    goto LABEL_23;
  }

  sub_100016D2C();
  sub_1004A7114();
  v34 = *(inited + 16);
  if (v34)
  {
    v35 = 0;
    v36 = (inited + 36);
    while (v35 < *(inited + 16))
    {
      v37 = *(v36 - 1);
      v38 = v37 != 0;
      v39 = v37 - 1;
      if (!v38)
      {
        goto LABEL_28;
      }

      if (!*v36)
      {
        goto LABEL_29;
      }

      v40 = *v36;
      if (v39 > *v36)
      {
        goto LABEL_30;
      }

      v54 = __PAIR64__(v40, v39);
      if (v40 != v39)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v41 = sub_1004A70B4();
        sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
        sub_1004A7064();
        v41(v55, 0);
      }

      ++v35;
      v36 += 2;
      if (v34 == v35)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:

  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if ((sub_1004A70C4() & 1) == 0)
  {
    return sub_100025FDC(v33, v49, &unk_1005D91B0, &unk_1004CF400);
  }

  sub_1003A527C();
  swift_allocError();
  *v43 = 0xD000000000000011;
  v43[1] = 0x80000001004B0B30;
  v43[2] = 0xD000000000000020;
  v43[3] = 0x80000001004B03C0;
  v43[4] = 56;
  swift_willThrow();
  return sub_100025F40(v33, &unk_1005D91B0, &unk_1004CF400);
}

void sub_10041E1A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a7;
  v41 = a5;
  v42 = a6;
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v40 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  v19 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  __chkstk_darwin(v19 - 8);
  v21 = &v37 - v20;
  v22 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v22 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v29 = a3;
      goto LABEL_6;
    }

    v37 = v13;
    v38 = a8;
    v23 = *a1;
    v24 = *(a1 + 8);
    v25 = *(a1 + 16);
    v26 = *(a1 + 20);
    v39 = *(a1 + 22);

    v27 = v22;
    v28 = v44;
    sub_10041DC38(a1, v27, a3, a4, v41, v42, v43, v18);
    if (v28)
    {

      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = v25;
      *(a1 + 20) = v26;
      *(a1 + 22) = v39;
LABEL_6:
      swift_willThrow();
      return;
    }

    v31 = sub_1003DAE18(v30);
    v32 = v37;
    if (v31 <= 0)
    {
      sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
      v33 = 1;
    }

    else
    {
      sub_100025FDC(v18, v15, &unk_1005D91B0, &unk_1004CF400);
      sub_100025FDC(v15, v21, &qword_1005CD1D0, &unk_1004CF2C0);
      v33 = 0;
    }

    v34 = v38;
    v35 = v40;
    (*(v40 + 56))(v21, v33, 1, v32);
    if ((*(v35 + 48))(v21, 1, v32) == 1)
    {
      sub_100025F40(v21, &qword_1005CD518, &qword_1004CF2F0);
      sub_1003A527C();
      swift_allocError();
      *v36 = 0xD000000000000015;
      v36[1] = 0x80000001004B0B50;
      v36[2] = 0xD000000000000020;
      v36[3] = 0x80000001004B03C0;
      v36[4] = 69;
      goto LABEL_6;
    }

    sub_100025FDC(v21, v34, &qword_1005CD1D0, &unk_1004CF2C0);
  }
}

uint64_t *sub_10041E534(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!__OFADD__(a2, 1))
  {
    v10 = result;
    v31 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v11 = *result;
      v12 = result[1];
      v29 = *(result + 10);
      v30 = *(result + 4);
      v13 = a2 + 2;
      v28 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v19 = a3;
      }

      else
      {
        swift_retain_n();

        v17 = sub_100419074(v10, v13, a3, a4, a5, a6, a7);
        if (!v7)
        {
          v27 = v17;

          v24 = sub_10046DE58(v10, v13, a3, a4, a5, a6, a7);

          if (v27 >= v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = v27;
          }

          if (v27 <= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v27;
          }

          if ((v24 & &_mh_execute_header) != 0)
          {
            LODWORD(v22) = v27;
          }

          else
          {
            LODWORD(v22) = v25;
          }

          if ((v24 & &_mh_execute_header) != 0)
          {
            v23 = v27;
          }

          else
          {
            v23 = v26;
          }

          return (v22 | (v23 << 32));
        }
      }

      swift_willThrow();

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v30;
      *(v10 + 20) = v29;
      *(v10 + 22) = v28;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v31 < a3)
    {

      v22 = sub_10041A24C(v10, v31, a3, v20);

      v23 = HIDWORD(v22);
      return (v22 | (v23 << 32));
    }

    sub_1003A5228();
    swift_allocError();
    *v21 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t sub_10041E8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char **a8@<X8>)
{
  sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004CEAA0;
  result = sub_10041E534(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(v16 + 16) = 0;
  }

  v34 = a4;
  *(v16 + 32) = result;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v26 = a3;
LABEL_14:
    swift_willThrow();
  }

  v31 = a5;
  v32 = a6;
  v33 = a7;
  v18 = *a1;
  v19 = *(a1 + 8);
  v20 = *(a1 + 16);
  v21 = *(a1 + 20);
  v22 = a2 + 2;
  v29 = *(a1 + 22);

  if (a2 + 2 < a3)
  {
    while (1)
    {

      sub_10046B71C(0x2CuLL, 0xE100000000000000, 0, 0, a1, v22, a3);
      v23 = sub_10041E534(a1, v22, a3, v34, v31, v32, v33);

      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        v16 = sub_100085898((v24 > 1), v25 + 1, 1, v16);
      }

      *(v16 + 16) = v25 + 1;
      *(v16 + 8 * v25 + 32) = v23;
    }
  }

  sub_1003A5228();
  swift_allocError();
  *v27 = a3;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (!swift_dynamicCast())
  {

    *a1 = v18;
    *(a1 + 8) = v19;
    *(a1 + 16) = v20;
    *(a1 + 20) = v21;
    *(a1 + 22) = v29;
    goto LABEL_14;
  }

  if (*(v16 + 16))
  {
    *a8 = v16;
  }

  else
  {

    sub_1003A527C();
    swift_allocError();
    *v28 = 0xD000000000000011;
    v28[1] = 0x80000001004B0B30;
    v28[2] = 0xD000000000000020;
    v28[3] = 0x80000001004B03C0;
    v28[4] = 97;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10041EC70(uint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = sub_10046C278(a1, a2, a3, 0);
  if (!v4)
  {
    if (result < 0)
    {
      v6 = " in body structure";
      v8 = 202;
      v7 = 0xD000000000000011;
    }

    else
    {
      if ((result - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        return result;
      }

      v6 = "ts present for SearchCorrelator";
      v7 = 0xD000000000000015;
      v8 = 28;
    }

    v9 = v6 | 0x8000000000000000;
    sub_1003A527C();
    swift_allocError();
    *v10 = v7;
    v10[1] = v9;
    v10[2] = 0xD000000000000020;
    v10[3] = 0x80000001004B03C0;
    v10[4] = v8;
    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_10041ED48(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v29 = *(result + 22);
      v30 = *(result + 10);

      v18 = sub_10041F4F0(v11, v8, a3, a4, a5, a6, a7, sub_10042B7FC);
      v19 = v7;
      if (!v7)
      {
        v21 = v18;

        return v21;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v30;
      *(v11 + 22) = v29;
    }

    swift_willThrow();
    v32 = v19;
    swift_errorRetain();
    v21 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v32 = v19;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_19;
      }

      v21 = v31[3];
    }

    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v27 = a3;
      swift_willThrow();
    }

    else
    {
      v21 = *v11;
      v22 = *(v11 + 8);
      v23 = *(v11 + 16);
      v24 = *(v11 + 20);
      v25 = v8 + 1;
      v26 = *(v11 + 22);
      if (v25 < a3)
      {

        sub_100465520(v11, v31);

        return v31[0];
      }

      sub_1003A5228();
      swift_allocError();
      *v28 = a3;

      swift_willThrow();

      *v11 = v21;
      *(v11 + 8) = v22;
      *(v11 + 16) = v23;
      *(v11 + 20) = v24;
      *(v11 + 22) = v26;
      swift_willThrow();
    }

LABEL_19:

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041F0A8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1004A5944();
  return sub_1004A5A94();
}

void sub_10041F128(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = *(a1 + 16);
  v4 = v2 + v3;
  if (__CFADD__(v2, v3))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = *(v1 + 16);
    v7 = v4 >= v6;
    v8 = v4 - v6;
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v9, v10 & 1);
  }

  if (HIDWORD(v3))
  {
    goto LABEL_11;
  }

  ByteBuffer._ensureAvailableCapacity(_:at:)(v3, v2);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((a1 + 32), a1 + 32 + v3, v2);
  v11 = *(v1 + 12);
  v7 = __CFADD__(v11, v3);
  v12 = v11 + v3;
  if (!v7)
  {
    *(v1 + 12) = v12;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t *sub_10041F1D8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
    }

    else
    {
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v15 = *(result + 10);
      v16 = *(result + 22);

      sub_10046B71C(0x4C494EuLL, 0xE300000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {

        return 0;
      }

      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    else
    {

      v19 = sub_10041F4F0(v10, v8, a3, a4, a5, a6, a7, sub_10042B7FC);

      return v19;
    }
  }

  return result;
}

uint64_t *sub_10041F4F0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v10 = a7;
    v13 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      swift_retain_n();
    }

    else
    {
      v15 = *result;
      v16 = result[1];
      v17 = *(result + 4);
      v18 = *(result + 10);
      v23 = *(result + 22);
      swift_retain_n();

      v19 = sub_10042DDB0(v13, v9, a3, a8);
      if (!v8)
      {
LABEL_13:
        v22 = v19;

        return v22;
      }

      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v18;
      *(v13 + 22) = v23;
      v10 = a7;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 < a3)
    {

      v19 = sub_1004218EC(v13, v9, a3, a4, a5, a6, v10);
      goto LABEL_13;
    }

    sub_1003A5228();
    swift_allocError();
    *v21 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_10041F7C0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_100429B44(v10, v8, a3, a4, a5, a6, a7, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

unint64_t sub_10041F8EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10041F7C0(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v13 = v10;
    v7 = v11;
    v14 = v12;
    if (qword_1005DBBA0 != -1)
    {
      v20 = v9;
      swift_once();
      v9 = v20;
    }

    v15 = v9 == static Media.TopLevelType.message && v13 == unk_1005DEA00;
    if (!v15 && (sub_1004A6D34() & 1) == 0)
    {

LABEL_20:

      v7 = 0x80000001004B0BE0;
      sub_1003A527C();
      swift_allocError();
      *v18 = 0xD00000000000002ALL;
      v18[1] = 0x80000001004B0BE0;
      v18[2] = 0xD000000000000020;
      v18[3] = 0x80000001004B03C0;
      v18[4] = 1584;
      swift_willThrow();
      return v7;
    }

    if (qword_1005DBBD0 != -1)
    {
      swift_once();
    }

    if (v7 == static Media.Subtype.rfc822 && v14 == unk_1005DEA60)
    {

      return v7;
    }

    v17 = sub_1004A6D34();

    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  return v7;
}

uint64_t *sub_10041FA98(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a3;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = v9;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = result[1];
      v16 = *(result + 4);
      v19 = *(result + 22);
      v20 = *(result + 10);

      sub_10046B71C(0x20225458455422uLL, 0xE700000000000000, 0, 0, v10, v8, v9);
      if (!v7)
      {
        v9 = sub_10041FC00(v10, v8, v9, a4, a5, a6, a7);

        return v9;
      }

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v16;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
    }

    swift_willThrow();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041FC00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10041F4F0(a1, a2, a3, a4, a5, a6, a7, sub_10042B7FC);
  if (!v7)
  {
    sub_10046C184(v9, v10, v11 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 1592);
    v13 = sub_1004A5814();
    v15 = v14;

    v16 = v13 == 0x74616E7265746C61 && v15 == 0xEB00000000657669;
    if (v16 || (sub_1004A6D34() & 1) != 0)
    {

      if (qword_1005DBBB8 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.alternative;
    }

    else if (v13 == 0x646578696DLL && v15 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      if (qword_1005DBBC8 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.mixed;
    }

    else
    {
      if ((v13 != 0x646574616C6572 || v15 != 0xE700000000000000) && (sub_1004A6D34() & 1) == 0)
      {
        v8 = sub_1004A5814();

        return v8;
      }

      if (qword_1005DBBC0 != -1)
      {
        swift_once();
      }

      v17 = &static Media.Subtype.related;
    }

    v8 = *v17;
  }

  return v8;
}

uint64_t *sub_10041FE74(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v12 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
    }

    else
    {
      v13 = *result;
      v14 = result[1];
      v8 = *(result + 4);
      v15 = *(result + 10);
      v16 = *(result + 22);

      sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v12, v9, a3);
      if (!v7)
      {
        sub_1002FBA8C(_swiftEmptyArrayStorage);
LABEL_20:
        v8 = v19;

        return v8;
      }

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v8;
      *(v12 + 20) = v15;
      *(v12 + 22) = v16;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      v8 = v25;
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }

      v8 = v25;
    }

    if (v9 < a3)
    {

      sub_100426EF0(v12, v9, a3);
      v8 = v21;

      return v8;
    }

    sub_1003A5228();
    swift_allocError();
    *v18 = a3;
    swift_willThrow();
    swift_errorRetain();
    if (swift_dynamicCast())
    {

      v8 = v25;
LABEL_16:

      if (v9 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v20 = a3;
        swift_willThrow();
        return v8;
      }

      sub_1004270D4(v12, v9, a3, a4, a5, a6, a7);
      goto LABEL_20;
    }

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      v8 = v25;

      goto LABEL_16;
    }

LABEL_18:

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100420280(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a7;
    v10 = a6;
    v12 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = *result;
      v14 = result[1];
      v15 = *(result + 4);
      v16 = *(result + 10);
      v17 = *(result + 22);

      v18 = sub_10042C284(v12, v8, a3);
      if (!v7)
      {
        v20 = v18;
LABEL_15:

        return v20;
      }

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
      v10 = a6;
      v9 = a7;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    sub_10046B71C(0x5BuLL, 0xE100000000000000, 0, 0, v12, v8, a3);
    v20 = sub_10042C3DC(v12, v8, a3, a4, a5, v10, v9);
    sub_10046B71C(0x5DuLL, 0xE100000000000000, 0, 0, v12, v8, a3);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_100420598(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    v29[0] = v10;

    sub_1004726D0(v4, v29, v8, v7, v25, v28, v26, v27);
    if (v6)
    {

      swift_willThrow();
      v9 = v23;
      v16 = v24;
      v18 = v22;
      goto LABEL_9;
    }

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v4, v8, v7);
    goto LABEL_16;
  }

  v29[7] = v14;
  v29[8] = v13;
  v29[12] = v9;
  v29[13] = v8;
  v29[15] = v7;
  v29[16] = v6;
  v29[17] = v4;
  v29[18] = v3;
  v29[19] = v11;
  v29[20] = v12;
  if (a2 + 1 < a3)
  {
    v4 = a1;
    v3 = *a1;
    v13 = a1[1];
    v16 = *(a1 + 4);
    v9 = *(a1 + 10);
    v17 = a2 + 2;
    v18 = *(a1 + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
      goto LABEL_8;
    }

    sub_100469DF8(v4);
    if (v5)
    {

LABEL_8:
      swift_willThrow();
LABEL_9:
      *v4 = v3;
      v4[1] = v13;
      *(v4 + 4) = v16;
      *(v4 + 10) = v9;
      *(v4 + 22) = v18;
      goto LABEL_10;
    }

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);

    v9 = _swiftEmptyArrayStorage;
    sub_100469DF8(v4);

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);

    sub_100469DF8(v4);

    sub_10046B71C(0x6C696EuLL, 0xE300000000000000, 0, 0, v4, v17, a3);
LABEL_16:

    return v9;
  }

  sub_1003A5228();
  swift_allocError();
  *v19 = a3;
LABEL_10:
  swift_willThrow();
  return v9;
}

uint64_t *sub_100420E2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v9 >= a3)
    {
      v19 = a8;
      sub_1003A5228();
      swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = *result;
      v14 = result[1];
      v15 = *(result + 4);
      v16 = *(result + 10);
      v17 = *(result + 22);

      sub_10041206C(v11, v9, a3, a4, a5, a6, a7, a8);
      v19 = a8;
      if (!v8)
      {
        type metadata accessor for ParameterValue(0);
LABEL_17:
        swift_storeEnumTagMultiPayload();
      }

      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
      return swift_willThrow();
    }

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

    v21 = sub_10046DEB0(v11, v9, a3, a4, a5, a6, a7);

    if (!v21)
    {
      v21 = _swiftEmptyArrayStorage;
    }

    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v11, v9, a3);
    *v19 = v21;
    type metadata accessor for ParameterValue(0);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t *sub_10042117C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v7 = result;
      v23 = a4;
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);

      sub_10046B71C(0x5CuLL, 0xE100000000000000, 0, 0, v7, v5, a3);
      if (!v4)
      {
        if (v5 + 1 < a3)
        {
          sub_100466470(v7, &v18);
          sub_10046C184(v18, v19, v20 | (v21 << 32) | (v22 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
          v15 = v23();
          v17 = v16;

          v18 = 92;
          v19 = 0xE100000000000000;
          v24._countAndFlagsBits = v15;
          v24._object = v17;
          sub_1004A5994(v24);

          return v18;
        }

        sub_1003A5228();
        swift_allocError();
        *v14 = a3;
        swift_willThrow();
      }

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_1004213C4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = result[1];
      v34 = *(result + 10);
      v35 = *(result + 4);
      v33 = *(result + 22);

      v18 = sub_10041ED48(v15, v9, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v31 = v18;
        if (v9 + 1 < a3)
        {
          v30 = v20;
          v29 = v19;
          sub_100469DF8(v15);
          v23 = sub_10041F1D8(v15, v9, a3, a4, a5, a6, a7);
          v25 = v24;
          v27 = v26;

          *&v37 = v31;
          *(&v37 + 1) = v29;
          *v38 = v30;
          *&v38[4] = WORD2(v30);
          v38[6] = BYTE6(v30);
          *&v38[8] = v23;
          *&v38[16] = v25;
          *&v38[24] = v27;
          v38[30] = BYTE6(v27);
          *&v38[28] = WORD2(v27);
          v39[0] = v31;
          v39[1] = v29;
          v40 = v30;
          v41 = WORD2(v30);
          v42 = BYTE6(v30);
          v43 = v23;
          v44 = v25;
          v45 = v27;
          v47 = BYTE6(v27);
          v46 = WORD2(v27);
          sub_1003A3100(&v37, v36);
          result = sub_1003A315C(v39);
          v28 = *v38;
          *a8 = v37;
          a8[1] = v28;
          *(a8 + 31) = *&v38[15];
          return result;
        }

        sub_1003A5228();
        swift_allocError();
        *v22 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v35;
      *(v15 + 20) = v34;
      *(v15 + 22) = v33;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_100421650(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = a7;
    v11 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v15 = *(result + 10);
      v16 = *(result + 22);

      v17 = sub_10042DBA0(v11, v8, a3, a4);
      if (!v7)
      {
LABEL_13:
        v20 = v17;

        return v20;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v15;
      *(v11 + 22) = v16;
      v9 = a7;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

LABEL_10:

      if (v8 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v19 = a3;
        return swift_willThrow();
      }

      v17 = sub_10041ED48(v11, v8, a3, a4, a5, a6, v9);
      goto LABEL_13;
    }

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      goto LABEL_10;
    }
  }

  return result;
}

uint64_t *sub_1004218EC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v16 = *(result + 22);
    v17 = *(result + 10);

    sub_10042966C(v10, v8, a3, a6, 0x7BuLL, &v18, 0xE100000000000000, 1470);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v17;
      *(v10 + 22) = v16;
      return swift_willThrow();
    }

    return v18;
  }

  return result;
}

void sub_100421A38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v10 = a3;
  if (v12 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v17 = v10;
    goto LABEL_8;
  }

  v7 = a1;
  v9 = *a1;
  v11 = a1[1];
  v35 = *(a1 + 10);
  v36 = *(a1 + 4);
  v34 = *(a1 + 22);

  sub_10046B71C(0x204449uLL, 0xE300000000000000, 0, 0, v7, v12, v10);
  if (v8)
  {

LABEL_6:
    *v7 = v9;
    *(v7 + 8) = v11;
    *(v7 + 16) = v36;
    *(v7 + 20) = v35;
    *(v7 + 22) = v34;
LABEL_8:
    swift_willThrow();
    return;
  }

  sub_10041FE74(v7, v12, v10, a4, a5, a6, a7);
  if (v12 + 1 >= v10)
  {
    sub_1003A5228();
    v22 = swift_allocError();
    *v23 = v10;
LABEL_30:
    swift_willThrow();
    v38 = v22;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {

      return;
    }

    goto LABEL_6;
  }

  v31 = *(v7 + 8);
  v33 = *(v7 + 12);
  v30 = *(v7 + 20);
  v29 = *(v7 + 22);
  v32 = *v7;
  if (sub_1004A6D34())
  {
LABEL_26:

    if (v12 + 2 < v10)
    {
      v20 = 10;
      goto LABEL_17;
    }

LABEL_28:
    v27 = v32;

    sub_1003A5228();
    v22 = swift_allocError();
    *v28 = v10;
    v21 = v31;
    goto LABEL_29;
  }

  if ((sub_1004A55A4() & 1) == 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = sub_1001E11BC(0x2BuLL, 0xE100000000000000);
  if ((v18 & 0x100000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v18 & 0xFFFFFF80) != 0)
  {
    goto LABEL_34;
  }

  v19 = sub_1001E11BC(0x2BuLL, 0xE100000000000000);
  if ((v19 & 0x100000000) == 0)
  {
    v20 = v19;
    if ((v19 & 0xFFFFFF00) == 0)
    {
      if (v12 + 2 < v10)
      {
LABEL_17:
        v21 = v31;
        if (v33 == v31)
        {
          sub_1003A5324();
          v22 = swift_allocError();
LABEL_24:
          swift_willThrow();
          v27 = v32;

LABEL_29:
          swift_willThrow();
          *v7 = v27;
          *(v7 + 8) = v21;
          *(v7 + 12) = v33;
          *(v7 + 20) = v30;
          *(v7 + 22) = v29;
          goto LABEL_30;
        }

        swift_beginAccess();
        if (v31 != -1)
        {
          v24 = *(*(v32 + 24) + (v29 | (v30 << 8)) + v31);
          *(v7 + 8) = v31 + 1;
          if (v24 == v20)
          {

            return;
          }

          sub_1004A6724(23);

          strcpy(v37, "looking for ");
          BYTE5(v37[1]) = 0;
          HIWORD(v37[1]) = -5120;
          v39._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v39);

          v40._countAndFlagsBits = 0x20646E756F6620;
          v40._object = 0xE700000000000000;
          sub_1004A5994(v40);
          LOBYTE(v38) = v24;
          v41._countAndFlagsBits = sub_1004A6CE4();
          sub_1004A5994(v41);

          v25 = v37[1];
          sub_1003A527C();
          v22 = swift_allocError();
          *v26 = v37[0];
          v26[1] = v25;
          v26[2] = 0xD000000000000020;
          v26[3] = 0x80000001004B03C0;
          v26[4] = 295;
          v21 = v31;
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_38:
  __break(1u);
}

void *sub_100421F50(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v8 = result;
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v5 = *(result + 22);

      sub_10046B71C(0x44454C42414E45uLL, 0xE700000000000000, 0, 0, v8, v6, a3);
      if (v4)
      {
      }

      else
      {
        v43 = v5;
        if (v6 + 1 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v31 = a3;
        }

        else
        {
          v14 = *v8;
          v15 = *(v8 + 8);
          v40 = *(v8 + 16);
          v41 = v12;
          v38 = *(v8 + 22);
          v39 = *(v8 + 20);

          if (v6 + 2 >= a3)
          {
            sub_1003A5228();
            v32 = swift_allocError();
            *v33 = a3;
            v5 = _swiftEmptyArrayStorage;
          }

          else
          {
            v35 = v14;
            v36 = v11;
            v37 = v9;
            v16 = v6 + 3;
            v17 = *v8;
            v18 = *(v8 + 8);
            v19 = *(v8 + 16);
            v20 = *(v8 + 20);
            v21 = *(v8 + 22);
            if (v16 < a3)
            {
              v22 = _swiftEmptyArrayStorage;
              v42 = v16;
              do
              {
                swift_retain_n();
                sub_100469DF8(v8);

                sub_100466470(v8, v47);

                v45 = v45 & 0xFF00000000000000 | v48 | (v49 << 32) | (v50 << 48);
                sub_10046C184(v47[0], v47[1], v45, 0xD000000000000020, 0x80000001004B03C0, 115);
                v23 = a4();
                v25 = v24;

                v26 = sub_1003BE578(61, 0xE100000000000000, v23, v25);
                v44 = v27;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v22 = sub_100461148(0, *(v22 + 2) + 1, 1, v22);
                }

                v29 = *(v22 + 2);
                v28 = *(v22 + 3);
                if (v29 >= v28 >> 1)
                {
                  v22 = sub_100461148((v28 > 1), v29 + 1, 1, v22);
                }

                *(v22 + 2) = v29 + 1;
                v30 = &v22[32 * v29];
                *(v30 + 4) = v23;
                *(v30 + 5) = v25;
                *(v30 + 6) = v26;
                v30[56] = v44 & 1;
                v17 = *v8;
                v18 = *(v8 + 8);
                v19 = *(v8 + 16);
                v20 = *(v8 + 20);
                v21 = *(v8 + 22);
              }

              while (v42 < a3);
            }

            sub_1003A5228();
            v32 = swift_allocError();
            *v34 = a3;

            v5 = _swiftEmptyArrayStorage;
            swift_willThrow();

            v14 = v35;
            *v8 = v17;
            *(v8 + 8) = v18;
            *(v8 + 16) = v19;
            *(v8 + 20) = v20;
            *(v8 + 22) = v21;
            v9 = v37;
            v11 = v36;
          }

          swift_willThrow();
          v51 = v32;
          swift_errorRetain();
          sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
          if (swift_dynamicCast())
          {

            return v5;
          }

          *v8 = v14;
          *(v8 + 8) = v15;
          *(v8 + 16) = v40;
          *(v8 + 20) = v39;
          *(v8 + 22) = v38;
          v12 = v41;
        }

        swift_willThrow();

        v5 = v43;
      }

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v5;
    }

    swift_willThrow();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100422470@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v9 >= a3)
    {
      v20 = a7;
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
    }

    else
    {
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v15 = *(result + 10);
      v16 = *(result + 22);

      v19 = a6;
      v20 = a7;
      sub_10042A340(v11, v9, a3, a4, a5, v19, a7, v30);
      if (!v8)
      {
        v27 = v30[0];
        v29 = v30[1];
        v23 = v31;
LABEL_15:

        *a8 = v27;
        *(a8 + 16) = v29;
        *(a8 + 32) = v23;
        return result;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v15;
      *(v11 + 22) = v16;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v22 = a3;
      return swift_willThrow();
    }

    sub_10042A5BC(v11, v9, a3, a4, a5, a6, v20, v32);
    v27 = v32[0];
    v29 = v32[1];
    v23 = v33;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100422734@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v29 = *(result + 22);
    v30 = *(result + 10);

    sub_100428524(v11, v9, a3, a4, a5, a6, a7, v31);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v30;
      *(v11 + 22) = v29;
      return swift_willThrow();
    }

    v20 = v31[13];
    a8[12] = v31[12];
    a8[13] = v20;
    v21 = v31[15];
    a8[14] = v31[14];
    a8[15] = v21;
    v22 = v31[9];
    a8[8] = v31[8];
    a8[9] = v22;
    v23 = v31[11];
    a8[10] = v31[10];
    a8[11] = v23;
    v24 = v31[5];
    a8[4] = v31[4];
    a8[5] = v24;
    v25 = v31[7];
    a8[6] = v31[6];
    a8[7] = v25;
    v26 = v31[1];
    *a8 = v31[0];
    a8[1] = v26;
    v27 = v31[3];
    a8[2] = v31[2];
    a8[3] = v27;
  }

  return result;
}

uint64_t *sub_1004228C4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    if (v5 >= a3)
    {
      sub_1003A5228();
      v13 = swift_allocError();
      *v14 = a3;
    }

    else
    {
      v8 = *result;
      v9 = result[1];
      v10 = *(result + 4);
      v11 = *(result + 10);
      v12 = *(result + 22);
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        v13 = swift_allocError();
        *v15 = a3;
      }

      else
      {

        sub_100466470(v7, v18);
        v13 = v4;
        if (!v4)
        {
          sub_10046C184(v18[0], v18[1], v19 | (v20 << 32) | (v21 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
          v7 = a4();

          return v7;
        }
      }

      swift_willThrow();

      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
    }

    swift_willThrow();
    v22 = v13;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v22 = v13;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v7;
      }
    }

    if (v5 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
      swift_willThrow();
    }

    else
    {

      sub_10042DDB0(v7, v5, a3, sub_10042B7FC);
      swift_beginAccess();
      v7 = sub_1004A58D4();
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100422C60(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = a3;
    }

    else
    {
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v15 = *(result + 10);
      v16 = *(result + 22);

      sub_10046B71C(0x2A5CuLL, 0xE200000000000000, 0, 0, v10, v8, a3);
      if (!v7)
      {

        return 0;
      }

      *v10 = v12;
      *(v10 + 8) = v13;
      *(v10 + 16) = v14;
      *(v10 + 20) = v15;
      *(v10 + 22) = v16;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    else
    {

      v19 = sub_100425774(v10, v8, a3, a4, a5, a6, a7);

      return v19;
    }
  }

  return result;
}

uint64_t *sub_100422F1C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
    }

    else
    {
      v13 = result;
      v14 = *result;
      v15 = result[1];
      v37 = *(result + 10);
      v35 = *(result + 4);
      v36 = *(result + 22);

      v38 = v14;

      v34 = sub_1004704A0(v13, v9, a3, a4, a5, a6, a7);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      if (!v8)
      {
        v25 = sub_100427FDC(v13, v9, a3, a4, a5);
        v27 = v26;
        v32 = v25;
        v28 = sub_10046FDFC(v13, v9, a3);
        v30 = v29;

        v39[64] = v30 & 1;
        *&v40 = v34;
        *(&v40 + 1) = v19;
        *&v41 = v21;
        *(&v41 + 1) = v23;
        *v42 = v32;
        *&v42[8] = v27;
        *&v42[16] = v28;
        v42[24] = v30 & 1;
        v43[0] = v34;
        v43[1] = v19;
        v43[2] = v21;
        v43[3] = v23;
        v43[4] = v32;
        v43[5] = v27;
        v43[6] = v28;
        v44 = v30 & 1;
        sub_100430970(&v40, v39);
        result = sub_10042EC54(v43);
        v31 = v41;
        *a8 = v40;
        a8[1] = v31;
        a8[2] = *v42;
        *(a8 + 41) = *&v42[9];
        return result;
      }

      *v13 = v38;
      *(v13 + 8) = v15;
      *(v13 + 16) = v35;
      *(v13 + 20) = v37;
      *(v13 + 22) = v36;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t *sub_100423180@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v23 = *(result + 22);
    v24 = *(result + 10);

    sub_100428A74(v11, v9, a3, a4, a5, a6, a7, v25);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v24;
      *(v11 + 22) = v23;
      return swift_willThrow();
    }

    v20 = v25[3];
    *(a8 + 32) = v25[2];
    *(a8 + 48) = v20;
    *(a8 + 64) = v26;
    v21 = v25[1];
    *a8 = v25[0];
    *(a8 + 16) = v21;
  }

  return result;
}

uint64_t sub_1004232CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (!__OFADD__(a2, 1))
  {
    v74 = v17;
    v75 = v14;
    v76 = v13;
    v77 = v12;
    v78 = v11;
    v79 = v9;
    v80 = v8;
    v81 = v15;
    v82 = v16;
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v23 = a3;
      return swift_willThrow();
    }

    v8 = a1;
    v9 = *a1;
    LODWORD(v13) = *(a1 + 3);
    LODWORD(v14) = *(a1 + 4);
    v55 = *(a1 + 10);
    v56 = *(a1 + 2);
    v19 = a2 + 2;
    LOBYTE(v12) = *(a1 + 22);
    if (a2 + 2 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v24 = a3;
LABEL_16:
      swift_willThrow();
      *v8 = v9;
      *(v8 + 2) = v56;
      *(v8 + 3) = v13;
      *(v8 + 4) = v14;
      *(v8 + 10) = v55;
      *(v8 + 22) = v12;
      return swift_willThrow();
    }

    v21 = a2 + 3;
    v46 = a8;
    v47 = a2 + 3;
    if (a2 + 3 >= a3)
    {
      sub_1003A5228();
      v22 = swift_allocError();
      *v25 = a3;
      swift_retain_n();
    }

    else
    {
      swift_retain_n();

      sub_100430070(v8, v21, a3, v69);
      v22 = v10;
      if (!v10)
      {
        v40 = v69[1];
        v41 = v69[0];
        v44 = v71;
        v45 = v70;
        v43 = v72;
        v42 = v73;

        v39 = 0;
        goto LABEL_14;
      }

      *v8 = v9;
      *(v8 + 2) = v56;
      *(v8 + 3) = v13;
      *(v8 + 4) = v14;
      *(v8 + 10) = v55;
      *(v8 + 22) = v12;
    }

    swift_willThrow();
    *&v63 = v22;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {

      goto LABEL_15;
    }

    LOBYTE(v62[0]) = 1;

    v44 = 0;
    v45 = 0;
    v43 = 0;
    v42 = 0;
    v39 = 1;
    v40 = 0u;
    v41 = 0u;
LABEL_14:
    sub_10046B71C(0x485455414C52553BuLL, 0xE90000000000003DLL, 0, 0, v8, v19, a3);
    v27 = sub_100424AE4(v8, v19, a3, a4, a5, a6, a7);
    v51 = v28;
    v54 = v29;

    v64 = v40;
    v63 = v41;
    *&v65 = v45;
    *(&v65 + 1) = v44;
    *&v66 = v43;
    BYTE8(v66) = v42;
    BYTE9(v66) = v39;
    *&v67 = v27;
    *(&v67 + 1) = v51;
    v68 = v54;

    sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v8, v19, a3);
    if (v47 < a3)
    {
      sub_1004660B8(v8, v57);
      sub_10046C184(v57[0], v57[1], v58 | (v59 << 32) | (v60 << 48), 0xD000000000000020, 0x80000001004B03C0, 2766);
      v11 = 0;
      v48 = v31;
      v52 = v32;

      sub_10046B71C(0x3AuLL, 0xE100000000000000, 0, 0, v8, v19, a3);
      goto LABEL_22;
    }

    sub_1003A5228();
    swift_allocError();
    *v30 = a3;
    swift_willThrow();

    sub_10042EDE8(&v63);
LABEL_15:

    goto LABEL_16;
  }

  __break(1u);
LABEL_22:

  sub_10042486C(v62);
  if (v11)
  {
    sub_10042EDE8(&v63);

    swift_willThrow();
    goto LABEL_15;
  }

  v33 = v62[0];
  v34 = v62[1];
  LOBYTE(v61) = v68;
  v35 = v64;
  v36 = v63;
  v37 = v67;
  v38 = v65;
  *(v46 + 48) = v66;
  *(v46 + 64) = v37;
  *(v46 + 16) = v35;
  *(v46 + 32) = v38;
  *v46 = v36;
  *(v46 + 80) = v61;
  *(v46 + 88) = v48;
  *(v46 + 96) = v52;
  *(v46 + 104) = v33;
  *(v46 + 112) = v34;
  return result;
}

unint64_t sub_1004238A8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (a2 + 1 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    sub_100469DF8(result);
    if (v5)
    {
      *v7 = v8;
      *(v7 + 8) = v9;
      *(v7 + 16) = v10;
      *(v7 + 20) = v11;
      *(v7 + 22) = v12;
      return swift_willThrow();
    }

    sub_100466470(v7, v20);
    sub_10046C184(v20[0], v20[1], v21 | (v22 << 32) | (v23 << 48), 0xD000000000000020, 0x80000001004B03C0, 115);
    v14 = a4();
    v16 = v15;

    result = sub_1003BE578(61, 0xE100000000000000, v14, v16);
    *a5 = v14;
    *(a5 + 8) = v16;
    *(a5 + 16) = result;
    *(a5 + 24) = v17 & 1;
  }

  return result;
}

uint64_t sub_100423A7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  sub_10046B71C(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    sub_10000C9C0(&qword_1005DC888, &unk_100504BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004CEA80;
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1004309CC;
    *(v17 + 24) = v16;
    *(inited + 32) = sub_1004309EC;
    *(inited + 40) = v17;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100430A04;
    *(v19 + 24) = v18;
    *(inited + 48) = sub_100430BA4;
    *(inited + 56) = v19;
    *(inited + 64) = sub_100423FD0;
    *(inited + 72) = 0;
    swift_retain_n();
    sub_1003FABD4(inited, a1, a2, v12, 0xD000000000000020, 0x80000001004B03C0, 323);
    v12 = v21;
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
  }

  return v12;
}

uint64_t sub_100423CD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = __OFADD__(a2, 1);
  v7 = a2 + 1;
  if (!v6)
  {
    if (v7 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v14 = a3;
    }

    else
    {
      v9 = result;
      v3 = *result;
      v10 = *(result + 8);
      v11 = *(result + 16);
      v12 = *(result + 20);
      v13 = *(result + 22);
      sub_100469DF8(result);
      if (!v4)
      {
        sub_10042D8C4(v9, a2, a3);
        v3 = v15;
        v17 = v16;
        sub_100464188(v9, a2, a3);
        if (HIDWORD(v17) == v17)
        {
          sub_1003A527C();
          swift_allocError();
          *v18 = 0x6E776F6E6B6E55;
          v18[1] = 0xE700000000000000;
          v18[2] = 0xD000000000000020;
          v18[3] = 0x80000001004B03C0;
          v18[4] = 297;
          swift_willThrow();
        }

        return v3;
      }

      *v9 = v3;
      *(v9 + 8) = v10;
      *(v9 + 16) = v11;
      *(v9 + 20) = v12;
      *(v9 + 22) = v13;
    }

    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100423E74(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __OFADD__(a2, 1);
  v11 = a2 + 1;
  if (!v10)
  {
    if (v11 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = result;
      v15 = *result;
      v16 = result[1];
      v17 = *(result + 4);
      v8 = *(result + 10);
      v18 = *(result + 22);
      sub_100469DF8(result);
      if (!v7)
      {
        v8 = sub_100413800(v13, a2, a3, a4, a5, a6, a7);
        sub_100464188(v13, a2, a3);
        return v8;
      }

      *v13 = v15;
      *(v13 + 8) = v16;
      *(v13 + 16) = v17;
      *(v13 + 20) = v8;
      *(v13 + 22) = v18;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

double sub_100423FD0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100464188(a1, *a2, a2[1]);
  if (!v3)
  {
    result = -3.10503618e231;
    *a3 = xmmword_100504AD0;
    *(a3 + 16) = 0xE000000000000000;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t *sub_100424018(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      v9 = *(result + 4);
      v10 = *(result + 10);
      v11 = *(result + 22);

      sub_10042F624(v6, v4, a3);
      if (!v3)
      {
        v16 = v12;

        goto LABEL_16;
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      sub_100430538(v6);
      v16 = v15;
LABEL_16:

      return v16;
    }

    sub_1003A5228();
    swift_allocError();
    *v14 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_100424288(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v13 = a3;
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      v9 = *(result + 4);
      v10 = *(result + 10);
      v11 = *(result + 22);

      v12 = sub_100424018(v6, v4, a3);
      if (!v3)
      {
        v16 = v12;

        goto LABEL_16;
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {
      sub_1004306E4(v6);
      v16 = v15;
LABEL_16:

      return v16;
    }

    sub_1003A5228();
    swift_allocError();
    *v14 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t *sub_100424528(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void **, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v21 = *(result + 10);
    v22 = *(result + 4);
    v20 = *(result + 22);

    sub_100424660(v11, v9, a3, a4, a5, a6, a7, a8, &v23);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v22;
      *(v11 + 20) = v21;
      *(v11 + 22) = v20;
      return swift_willThrow();
    }

    return v23;
  }

  return result;
}

char *sub_100424660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, void **, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t *a9@<X8>)
{
  v38 = _swiftEmptyArrayStorage;

  a8(a1, &v38, a2, a3, a4, a5, a6, a7);
  if (v9)
  {
  }

  else
  {

    v20 = v38;
    v21 = v38[2];
    if (v21)
    {
      v22 = 0;
      v37 = v38 + 4;
      v23 = _swiftEmptyArrayStorage;
      while (v22 < v20[2])
      {
        v24 = a9;
        v25 = v37[v22];
        v26 = *(v25 + 16);
        v27 = *(v23 + 2);
        v28 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          goto LABEL_22;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v28 > *(v23 + 3) >> 1)
        {
          if (v27 <= v28)
          {
            v29 = v27 + v26;
          }

          else
          {
            v29 = v27;
          }

          result = sub_10015BF20(result, v29, 1, v23);
          v23 = result;
        }

        a9 = v24;
        if (*(v25 + 16))
        {
          v30 = *(v23 + 2);
          if ((*(v23 + 3) >> 1) - v30 < v26)
          {
            goto LABEL_24;
          }

          memcpy(&v23[v30 + 32], (v25 + 32), v26);

          if (v26)
          {
            v31 = *(v23 + 2);
            v32 = __OFADD__(v31, v26);
            v33 = v31 + v26;
            if (v32)
            {
              goto LABEL_25;
            }

            *(v23 + 2) = v33;
          }
        }

        else
        {

          if (v26)
          {
            goto LABEL_23;
          }
        }

        if (v21 == ++v22)
        {
          goto LABEL_20;
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
LABEL_20:

      v34 = sub_1004A58D4();
      v36 = v35;

      *a9 = v34;
      a9[1] = v36;
    }
  }

  return result;
}

void sub_10042486C(uint64_t *a1@<X8>)
{
  v2 = ByteBuffer.readSlice(length:)(0x20uLL);
  if (!v2)
  {
    sub_1003A5324();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v5 = v3;
  v6 = HIDWORD(v3);
  v7 = v3;
  if (HIDWORD(v3) < v3)
  {
    goto LABEL_20;
  }

  v8 = (v4 >> 24) & 0xFFFF00 | BYTE6(v4);
  if (v6 <= (v4 - v8))
  {
    v9 = v2;
    swift_beginAccess();
    if (v7 == v6)
    {
LABEL_5:
      swift_beginAccess();
      v10 = sub_1004A58D4();
      v12 = v11;

      *a1 = v10;
      a1[1] = v12;
      return;
    }

    v13 = 0;
    while (v7 + v13 < v6)
    {
      if ((v6 - v5) <= v13)
      {
        goto LABEL_19;
      }

      if ((*(*(v9 + 24) + v8 + v7 + v13) - 58) < 0xF6u)
      {
        v14 = *(*(v9 + 24) + v8 + v7 + v13) - 65;
        v15 = v14 > 0x25;
        v16 = (1 << v14) & 0x3F0000003FLL;
        if (v15 || v16 == 0)
        {
          sub_1004A6724(29);

          swift_beginAccess();

          v18 = sub_1004A58D4();
          v20 = v19;

          v22._countAndFlagsBits = v18;
          v22._object = v20;
          sub_1004A5994(v22);

          sub_1003A527C();
          swift_allocError();
          *v21 = 0xD00000000000001BLL;
          v21[1] = 0x80000001004B0C60;
          v21[2] = 0xD000000000000020;
          v21[3] = 0x80000001004B03C0;
          v21[4] = 498;
          swift_willThrow();

          return;
        }
      }

      ++v13;
      if (!(v7 - v6 + v13))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100424AE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC868, &unk_100504BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D1B20;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1004304A0;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_1004304C0;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004304D8;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_100430B8C;
  *(inited + 56) = v17;
  *(inited + 64) = sub_100424E98;
  *(inited + 72) = 0;
  *(inited + 80) = sub_100424EF0;
  *(inited + 88) = 0;
  swift_retain_n();
  sub_1003FAEB0(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 567);
  if (v22)
  {
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    return swift_arrayDestroy();
  }

  else
  {
    v20 = v18;
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
    return v20;
  }
}

uint64_t *sub_100424D1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x2B74696D627573uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_100424528(a1, a2, a3, a4, a5, a6, a7, sub_100474EDC);
  }

  return result;
}

uint64_t *sub_100424DDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_10046B71C(0x2B72657375uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    return sub_100424528(a1, a2, a3, a4, a5, a6, a7, sub_100474EDC);
  }

  return result;
}

uint64_t sub_100424E98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10046B71C(0x7265737568747561uLL, 0xE800000000000000, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  return result;
}

double sub_100424EF0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10046B71C(0x756F6D796E6F6E61uLL, 0xE900000000000073, 0, 0, a1, *a2, a2[1]);
  if (!v3)
  {
    *&result = 1;
    *a3 = xmmword_1004DB2C0;
    *(a3 + 16) = 2;
  }

  return result;
}

uint64_t sub_100424F54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = __OFADD__(a2, 1);
  v6 = a2 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
      return swift_willThrow();
    }

    v7 = result;
    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 16);
    v12 = *(result + 20);
    v13 = *(result + 22);
    sub_100466FA0(result, v17);
    if (v4)
    {
      *v7 = v9;
      *(v7 + 8) = v10;
      *(v7 + 16) = v11;
      *(v7 + 20) = v12;
      *(v7 + 22) = v13;
      return swift_willThrow();
    }

    sub_10046C184(v17[0], v17[1], v18 | (v19 << 32) | (v20 << 48), 0xD000000000000020, 0x80000001004B03C0, 628);
    v16 = a4();

    return v16;
  }

  return result;
}

uint64_t sub_1004250AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_10042117C(a1, a2, a3, a4);
  if (v4)
  {
    return result;
  }

  v7 = result;
  result = sub_1003F1208(result, v6);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 92 && v8 == 0xE100000000000000)
  {

    return v7;
  }

  v9 = sub_1004A6D34();

  result = v7;
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100425158@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char **a7@<X8>, uint64_t a8)
{
  sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004CEAA0;
  sub_10000C9C0(&qword_1005DC858, &qword_100504BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10042EBF8;
  *(v16 + 24) = v15;
  *(inited + 32) = sub_10042EC18;
  *(inited + 40) = v16;
  v17 = swift_allocObject();
  v50 = a2;
  v51 = a4;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v49 = a5;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10042EC34;
  *(v18 + 24) = v17;
  *(inited + 48) = sub_100430B74;
  *(inited + 56) = v18;
  swift_retain_n();
  sub_1003FB188(inited, a1, a6, a8, 0xD000000000000020, 0x80000001004B03C0, 600);
  if (v54)
  {
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
    *(v13 + 16) = 0;
  }

  v22 = v19;
  v23 = v20;
  swift_setDeallocating();
  sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
  result = swift_arrayDestroy();
  *(v13 + 32) = v22;
  *(v13 + 40) = v23;
  if (__OFADD__(a6, 1))
  {
    __break(1u);
  }

  else
  {
    v24 = a8;
    if (a6 + 1 >= a8)
    {
      sub_1003A5228();
      swift_allocError();
      *v44 = a8;
    }

    else
    {
      v25 = *a1;
      v26 = a1[1];
      v27 = *(a1 + 4);
      v28 = *(a1 + 10);
      v29 = a6 + 2;
      v30 = *(a1 + 22);

      if (a6 + 2 < a8)
      {
        v47 = a1;
        v48 = a3;
        v31 = v51;
        while (1)
        {

          sub_10046B71C(0x20uLL, 0xE100000000000000, 0, 0, a1, v29, v24);
          v53 = v13;
          v32 = swift_initStackObject();
          *(v32 + 16) = xmmword_1004D01D0;
          v33 = swift_allocObject();
          v33[2] = v50;
          v33[3] = v48;
          v33[4] = v31;
          v33[5] = v49;
          v34 = swift_allocObject();
          *(v34 + 16) = sub_100430BBC;
          *(v34 + 24) = v33;
          *(v32 + 32) = sub_100430B74;
          *(v32 + 40) = v34;
          v35 = swift_allocObject();
          v35[2] = v50;
          v35[3] = v48;
          v35[4] = v31;
          v35[5] = v49;
          v36 = swift_allocObject();
          *(v36 + 16) = sub_100430BD4;
          *(v36 + 24) = v35;
          *(v32 + 48) = sub_100430B74;
          *(v32 + 56) = v36;
          a1 = v47;
          swift_retain_n();
          sub_1003FB188(v32, v47, v29, a8, 0xD000000000000020, 0x80000001004B03C0, 600);
          v38 = v37;
          v40 = v39;
          swift_setDeallocating();
          swift_arrayDestroy();

          v13 = v53;
          v42 = *(v53 + 16);
          v41 = *(v53 + 24);
          if (v42 >= v41 >> 1)
          {
            v13 = sub_10008517C((v41 > 1), v42 + 1, 1, v53);
          }

          v31 = v51;
          *(v13 + 16) = v42 + 1;
          v43 = v13 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          v24 = a8;
        }
      }

      sub_1003A5228();
      swift_allocError();
      *v45 = a8;
      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        *a7 = v13;
        return result;
      }

      *a1 = v25;
      a1[1] = v26;
      *(a1 + 4) = v27;
      *(a1 + 10) = v28;
      *(a1 + 22) = v30;
    }

    swift_willThrow();
  }

  return result;
}

uint64_t sub_100425774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10000C9C0(&qword_1005DC858, &qword_100504BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004D01D0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100430BBC;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_100430B74;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100430BD4;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_100430B74;
  *(inited + 56) = v17;
  swift_retain_n();
  sub_1003FB188(inited, a1, a2, a3, 0xD000000000000020, 0x80000001004B03C0, 600);
  if (v22)
  {
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    return swift_arrayDestroy();
  }

  else
  {
    v20 = v18;
    swift_setDeallocating();
    sub_10000C9C0(&qword_1005DA5D8, &qword_100504BA0);
    swift_arrayDestroy();
    return v20;
  }
}

uint64_t *sub_10042597C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_100425AA4(v10, v8, a3, a4, a5, a6, a7, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t sub_100425AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v51 = a8;
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1004CEAA0;
    sub_10041ED48(a1, a2, a3, a4, a5, a6, a7);
    v52 = a1;
    v53 = v18;
    v47 = a4;
    v48 = a5;
    v49 = a6;
    v50 = a7;
    v54 = a2;
    swift_beginAccess();
    v19 = sub_1004A58D4();
    v21 = v20;

    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v22 = v54;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
    }

    else
    {
      v23 = a3;
      if (v54 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v40 = a3;
      }

      else
      {
        v24 = a1;
        v25 = *(a1 + 8);
        v44 = *(a1 + 20);
        v45 = *(a1 + 16);
        v43 = *(a1 + 22);
        v46 = *a1;

        if (v54 + 2 >= v23)
        {
          sub_1003A5228();
          swift_allocError();
          *v41 = v23;
        }

        else
        {
          v26 = *a1;
          v27 = *(a1 + 8);
          v28 = *(a1 + 16);
          v29 = *(a1 + 20);
          v30 = *(a1 + 22);
          if (v54 + 3 < v23)
          {
            v31 = v18;
            do
            {
              v32 = v23;
              v33 = v31;
              swift_retain_n();
              sub_100469DF8(v24);

              sub_10041ED48(v24, v54 + 2, v32, v47, v48, v49, v50);
              swift_beginAccess();
              v34 = sub_1004A58D4();
              v36 = v35;

              v31 = v33;
              v38 = *(v33 + 2);
              v37 = *(v33 + 3);
              if (v38 >= v37 >> 1)
              {
                v31 = sub_100085070((v37 > 1), v38 + 1, 1, v33);
              }

              v23 = 0;
              *(v31 + 2) = v38 + 1;
              v39 = &v31[16 * v38];
              *(v39 + 4) = v34;
              *(v39 + 5) = v36;
              v24 = v52;
              v18 = v53;
              v26 = *v52;
              v27 = *(v52 + 8);
              v28 = *(v52 + 16);
              v29 = *(v52 + 20);
              v30 = *(v52 + 22);
              v22 = v54;
            }

            while (v54 + 3 < 0);
          }

          sub_1003A5228();
          swift_allocError();
          *v42 = v23;

          swift_willThrow();

          *v24 = v26;
          *(v24 + 8) = v27;
          *(v24 + 16) = v28;
          *(v24 + 20) = v29;
          *(v24 + 22) = v30;
        }

        swift_willThrow();
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (swift_dynamicCast())
        {

          result = sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v24, v22, v23);
          *v51 = v18;
          return result;
        }

        *v24 = v46;
        *(v24 + 8) = v25;
        *(v24 + 16) = v45;
        *(v24 + 20) = v44;
        *(v24 + 22) = v43;
      }

      swift_willThrow();
    }
  }

  return result;
}

uint64_t *sub_100425FC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = *result;
      v14 = result[1];
      v15 = *(result + 4);
      v16 = *(result + 10);
      v17 = *(result + 22);

      sub_100426588(v11, v9, a3, a4, a5, a6, a7, v51);
      v19 = v8;
      if (!v8)
      {
        v65 = v51[8];
        v66 = v51[9];
        v67 = v51[10];
        v68 = v51[11];
        v61 = v51[4];
        v62 = v51[5];
        v63 = v51[6];
        v64 = v51[7];
        v57 = v51[0];
        v58 = v51[1];
        v59 = v51[2];
        v60 = v51[3];

LABEL_15:
        v28 = v66;
        a8[8] = v65;
        a8[9] = v28;
        v29 = v68;
        a8[10] = v67;
        a8[11] = v29;
        v30 = v62;
        a8[4] = v61;
        a8[5] = v30;
        v31 = v64;
        a8[6] = v63;
        a8[7] = v31;
        v32 = v58;
        *a8 = v57;
        a8[1] = v32;
        v33 = v60;
        a8[2] = v59;
        a8[3] = v33;
        return result;
      }

      *v11 = v13;
      *(v11 + 8) = v14;
      *(v11 + 16) = v15;
      *(v11 + 20) = v16;
      *(v11 + 22) = v17;
    }

    swift_willThrow();
    v50 = v19;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v50 = v19;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    sub_100426314(v11, v9, a3, a4, a5, a6, a7, v52);
    v22 = v52[0];
    v23 = v52[1];
    v24 = v53;
    v25 = v54;
    v26 = v55;
    v27 = v56;

    *&v38 = v22;
    *(&v38 + 1) = v23;
    LODWORD(v39) = v24;
    BYTE4(v39) = v25;
    *(&v39 + 1) = v26;
    *&v40 = v27;
    result = sub_10042ED58(&v38);
    v65 = v46;
    v66 = v47;
    v67 = v48;
    v68 = v49;
    v61 = v42;
    v62 = v43;
    v63 = v44;
    v64 = v45;
    v57 = v38;
    v58 = v39;
    v59 = v40;
    v60 = v41;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100426314@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v11 = result;
      v12 = result[1];
      v29 = *(result + 10);
      v30 = *(result + 4);
      v28 = *(result + 22);
      v31 = *result;
      if (a2 + 2 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v20 = a3;
      }

      else
      {
        swift_retain_n();
        v17 = sub_100424528(v11, v9 + 1, a3, a4, a5, a6, a7, sub_1004738C0);
        if (!v8)
        {
          v25 = v17;
          v26 = v18;
          v24 = sub_100470918(v11, v9 + 1, a3);

          v21 = sub_100470748(v11, v9, a3, a4, a5, a6, a7);
          v23 = v22;

          *a8 = v25;
          *(a8 + 8) = v26;
          *(a8 + 16) = v24;
          *(a8 + 20) = BYTE4(v24) & 1;
          *(a8 + 24) = v21;
          *(a8 + 32) = v23;
          return result;
        }
      }

      swift_willThrow();
      *v11 = v31;
      *(v11 + 8) = v12;
      *(v11 + 16) = v30;
      *(v11 + 20) = v29;
      *(v11 + 22) = v28;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100426588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_100423180(a1, a2, a3, a4, a5, a6, a7, v54);
  if (!v8)
  {
    v51 = v54[2];
    v52 = v54[3];
    v53 = v55;
    v49 = v54[0];
    v50 = v54[1];
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= a3)
      {
        sub_1003A5228();
        v19 = swift_allocError();
        *v20 = a3;

        swift_willThrow();
        v48 = v19;
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (!swift_dynamicCast())
        {
          sub_10042ED74(v54);
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v28 = 0uLL;
        v29 = 0uLL;
        v27 = 0uLL;
        v26 = 0uLL;
        v25 = 0uLL;
        v24 = 0uLL;
      }

      else
      {

        sub_1004232CC(a1, v18, a3, a4, a5, a6, a7, v56);
        v40 = v56[0];
        v41 = v56[1];
        v38 = v56[2];
        v39 = v56[3];
        v36 = v56[4];
        v37 = v56[5];
        v21 = v57;
        v22 = v58;
        v23 = v59;

        v25 = v36;
        v24 = v37;
        v27 = v38;
        v26 = v39;
        v28 = v40;
        v29 = v41;
      }

      v44 = v51;
      v45 = v52;
      *v46 = v53;
      v42 = v49;
      v43 = v50;
      *&v46[8] = v28;
      *&v46[24] = v29;
      *&v46[40] = v27;
      *&v46[56] = v26;
      *&v46[72] = v25;
      *&v46[88] = v24;
      *&v46[104] = v21;
      *&v47 = v22;
      *(&v47 + 1) = v23;
      result = sub_10042EDC8(&v42);
      v30 = *&v46[80];
      a8[8] = *&v46[64];
      a8[9] = v30;
      v31 = v47;
      a8[10] = *&v46[96];
      a8[11] = v31;
      v32 = *&v46[16];
      a8[4] = *v46;
      a8[5] = v32;
      v33 = *&v46[48];
      a8[6] = *&v46[32];
      a8[7] = v33;
      v34 = v43;
      *a8 = v42;
      a8[1] = v34;
      v35 = v45;
      a8[2] = v44;
      a8[3] = v35;
    }
  }

  return result;
}

uint64_t *sub_100426860(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_100424660(v10, v8, a3, a4, a5, a6, a7, sub_100474120, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t sub_10042699C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_10046B71C(0x3D485455413BuLL, 0xE600000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v25 = a5;
    v24 = a8;
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v19 = a3;
        swift_willThrow();
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (swift_dynamicCast())
        {
        }

        else
        {

          swift_errorRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
          }
        }

        if (v18 >= a3)
        {
          sub_1003A5228();
          swift_allocError();
          *v20 = a3;
          return swift_willThrow();
        }

        v21 = sub_100426860(a1, v18, a3, a4, v25, a6, a7);
        v22 = v23;
      }

      else
      {

        sub_10046B71C(0x2AuLL, 0xE100000000000000, 0, 0, a1, v18, a3);

        v21 = 0;
        v22 = 0;
      }

      *v24 = v21;
      v24[1] = v22;
    }
  }

  return result;
}

void sub_100426C94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_10041F4F0(a1, a2, a3, a4, a5, a6, a7, sub_10042B7FC);
  if (!v7)
  {
    sub_10046C184(v15, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001004B03C0, 849);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 >= a3)
      {

        sub_1003A5228();
        swift_allocError();
        *v18 = a3;
        swift_willThrow();
      }

      else
      {

        sub_100469DF8(a1);

        v19 = sub_10041F1D8(a1, a2, a3, a4, a5, a6, a7);
        if (v19)
        {
          sub_10045C954(v19, v20, v21 & 0xFFFFFFFFFFFFFFLL);

          return;
        }
      }
    }
  }
}

void sub_100426EF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v12 = a3;
      }

      else
      {
        v7 = *a1;
        v8 = a1[1];
        v9 = *(a1 + 4);
        v10 = *(a1 + 10);
        v11 = *(a1 + 22);
        if (a2 + 2 < a3)
        {
          sub_100469DF8(a1);
LABEL_10:
          sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
          sub_1002FBA8C(_swiftEmptyArrayStorage);
          return;
        }

        sub_1003A5228();
        swift_allocError();
        *v13 = a3;
        swift_willThrow();
        *a1 = v7;
        a1[1] = v8;
        *(a1 + 4) = v9;
        *(a1 + 10) = v10;
        *(a1 + 22) = v11;
      }

      swift_willThrow();
      swift_errorRetain();
      sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
      if (swift_dynamicCast())
      {

        goto LABEL_10;
      }
    }
  }
}

void sub_1004270D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v7)
  {
    return;
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  v48 = a4;
  v49 = a6;
  v50 = a7;
  v51 = a5;
  v47 = a2 + 1;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    v20 = swift_allocError();
    *v21 = a3;
LABEL_8:
    swift_willThrow();
    v52[0] = v20;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {

      return;
    }

    goto LABEL_10;
  }

  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *(a1 + 20);
  v19 = *(a1 + 22);
  if (a2 + 2 >= a3)
  {
    sub_1003A5228();
    v22 = swift_allocError();
    *v23 = a3;
    v20 = v22;
    swift_willThrow();
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
    *(a1 + 20) = v18;
    *(a1 + 22) = v19;
    goto LABEL_8;
  }

  sub_100469DF8(a1);
LABEL_10:
  sub_100426C94(a1, a2, a3, v48, v51, v49, v50);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10000C9C0(&qword_1005DC878, &qword_100504BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004CEAA0;
  *(inited + 32) = v25;
  v33 = inited + 32;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  *(inited + 56) = v31;
  sub_1002FBA8C(inited);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  swift_setDeallocating();
  sub_100025F40(v33, &qword_1005DC880, &qword_100504BD8);
  v52[0] = v35;
  v52[1] = v37;
  v52[2] = v39;
  if (v47 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v40 = a3;

    swift_willThrow();

    return;
  }

  swift_retain_n();

  sub_1004677A0(a1, v47, a3, v52, v48, v51, v49, v50);

  v41 = *a1;
  v42 = *(a1 + 8);
  v43 = *(a1 + 16);
  v44 = *(a1 + 20);
  v45 = *(a1 + 22);
  if (a2 + 2 < a3)
  {
    sub_100469DF8(a1);
LABEL_18:
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    return;
  }

  sub_1003A5228();
  swift_allocError();
  *v46 = a3;
  swift_willThrow();
  *a1 = v41;
  *(a1 + 8) = v42;
  *(a1 + 16) = v43;
  *(a1 + 20) = v44;
  *(a1 + 22) = v45;
  swift_willThrow();
  swift_errorRetain();
  sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  if (swift_dynamicCast())
  {

    goto LABEL_18;
  }
}

uint64_t *sub_1004275A8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v11 = result;
      v26 = a6;
      v27 = a7;
      v12 = *result;
      v13 = result[1];
      v8 = *(result + 4);
      v14 = *(result + 10);
      v28 = *(result + 22);
      v29 = v14;

      sub_10046B71C(0x2FuLL, 0xE100000000000000, 0, 0, v11, v9, a3);
      if (v7)
      {
      }

      else
      {
        v16 = *v11;
        if (v9 + 1 >= a3)
        {

          sub_1003A5228();
          swift_allocError();
          *v17 = a3;
        }

        else
        {

          sub_10046B71C(0x4C4149545241503BuLL, 0xE90000000000003DLL, 0, 0, v11, v9 + 1, a3);
          v25 = v16;
          v18 = v9 + 2;
          if (v18 >= a3)
          {

            sub_1003A5228();
            swift_allocError();
            *v20 = a3;
            swift_willThrow();
          }

          else
          {
            v24 = v8;

            v19 = sub_10046C278(v11, v18, a3, 1);
            v8 = v19;
            if ((v19 & 0x8000000000000000) == 0)
            {
              v23 = &v23;
              __chkstk_darwin(v19);
              sub_10046FEF0(v11, v18, a3, sub_100430BEC);

              return v8;
            }

            sub_1003A527C();
            swift_allocError();
            *v22 = 0xD000000000000011;
            v22[1] = 0x80000001004B08A0;
            v22[2] = 0xD000000000000020;
            v22[3] = 0x80000001004B03C0;
            v22[4] = 202;
            swift_willThrow();

            swift_willThrow();

            v8 = v24;
          }
        }

        swift_willThrow();
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v8;
      v21 = v28;
      *(v11 + 20) = v29;
      *(v11 + 22) = v21;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100427940(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v15 = a3;
    }

    else
    {
      v11 = result;
      v23 = a6;
      v24 = a7;
      v12 = *result;
      v13 = result[1];
      v8 = *(result + 4);
      v14 = *(result + 10);
      v25 = *(result + 22);

      sub_10046B71C(0x4C4149545241503BuLL, 0xE90000000000003DLL, 0, 0, v11, v9, a3);
      if (v7)
      {
      }

      else
      {
        v22 = v14;
        v16 = v9 + 1;
        if (v9 + 1 >= a3)
        {

          sub_1003A5228();
          swift_allocError();
          *v18 = a3;
          swift_willThrow();
        }

        else
        {
          v21 = v8;

          v17 = sub_10046C278(v11, v16, a3, 1);
          v8 = v17;
          if ((v17 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            __chkstk_darwin(v17);
            sub_10046FEF0(v11, v16, a3, sub_100430900);

            return v8;
          }

          sub_1003A527C();
          swift_allocError();
          *v19 = 0xD000000000000011;
          v19[1] = 0x80000001004B08A0;
          v19[2] = 0xD000000000000020;
          v19[3] = 0x80000001004B03C0;
          v19[4] = 202;
          swift_willThrow();

          swift_willThrow();
          v8 = v21;
        }

        LOWORD(v14) = v22;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v8;
      *(v11 + 20) = v14;
      *(v11 + 22) = v25;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100427C30(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v9 = a3;
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v17 = v9;
    }

    else
    {
      v10 = result;
      v14 = *result;
      v15 = result[1];
      v16 = *(result + 4);
      v19 = *(result + 22);
      v20 = *(result + 10);

      sub_10046B71C(0x4F49544345533B2FuLL, 0xEA00000000003D4ELL, 0, 0, v10, v8, v9);
      if (!v7)
      {
        v9 = sub_100424528(v10, v8, v9, a4, a5, a6, a7, sub_100474808);

        return v9;
      }

      *v10 = v14;
      *(v10 + 8) = v15;
      *(v10 + 16) = v16;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
    }

    swift_willThrow();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100427DB0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v25 = a3;
      return swift_willThrow();
    }

    v12 = result;
    v13 = *result;
    v14 = result[1];
    v29 = *(result + 4);
    v30 = v7;
    v15 = *(result + 10);
    v16 = *(result + 22);

    v28 = a6;
    v19 = a6;
    v20 = v15;
    v21 = v30;
    v27 = sub_10046EA04(v12, v8, a3, a4, a5, v19, a7);
    v31 = v22;

    if (v21)
    {
LABEL_9:

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v29;
      *(v12 + 20) = v20;
      *(v12 + 22) = v16;
      return swift_willThrow();
    }

    sub_10046EA30(v12, v8, a3, a4, a5, v28, a7);
    v24 = v23;

    if (!v31 && v24 == 1)
    {
      sub_1003A527C();
      swift_allocError();
      *v26 = 0xD000000000000021;
      v26[1] = 0x80000001004B0D30;
      v26[2] = 0xD000000000000020;
      v26[3] = 0x80000001004B03C0;
      v26[4] = 1398;
      swift_willThrow();
      goto LABEL_9;
    }

    return v27;
  }

  return result;
}

uint64_t *sub_100427FDC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v8 = result;
    if (v6 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v9 = *result;
      v10 = result[1];
      v11 = *(result + 4);
      v12 = *(result + 10);
      v13 = *(result + 22);

      v15 = sub_10042EF94(v8, v6, a3, a4);
      if (!v5)
      {
LABEL_19:
        v20 = v15;
        goto LABEL_21;
      }

      *v8 = v9;
      *(v8 + 8) = v10;
      *(v8 + 16) = v11;
      *(v8 + 20) = v12;
      *(v8 + 22) = v13;
    }

    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v6 < a3)
    {

      v20 = sub_10042F97C(v8, v6, a3);
LABEL_21:

      return v20;
    }

    sub_1003A5228();
    swift_allocError();
    *v17 = a3;
    swift_willThrow();
    swift_errorRetain();
    if (swift_dynamicCast())
    {

LABEL_16:

      if (v6 >= a3)
      {
        sub_1003A5228();
        swift_allocError();
        *v19 = a3;
        return swift_willThrow();
      }

      v15 = sub_10042FC30(v8, v6, a3, v18);
      goto LABEL_19;
    }

    swift_errorRetain();
    if (swift_dynamicCast())
    {

      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1004283A0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v19 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = result[1];
      v14 = *(result + 4);
      v20 = *(result + 22);
      v21 = *(result + 10);
      v8 = a5;

      v18 = sub_100424528(v11, v9, a3, a4, v8, a6, a7, sub_1004738C0);
      if (!v7)
      {
        v8 = v18;
        sub_100470918(v11, v9, a3);

        return v8;
      }

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v21;
      *(v11 + 22) = v20;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100428524@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_10046B71C(0x2F2F3A70616D69uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_100422F1C(a1, a2, a3, a4, a5, a6, a7, v91);
    result = sub_10046B71C(0x2FuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v18 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v18 >= a3)
      {
        sub_1003A5228();
        v19 = swift_allocError();
        *v20 = a3;

        swift_willThrow();
        *&v30 = v19;
        swift_errorRetain();
        sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
        if (!swift_dynamicCast())
        {
          sub_10042EC54(v91);
        }

        sub_100395528(&v63);
      }

      else
      {

        sub_100425FC0(a1, v18, a3, a4, a5, a6, a7, v93);
        v71 = v93[8];
        v72 = v93[9];
        v73 = v93[10];
        v74 = v93[11];
        v67 = v93[4];
        v68 = v93[5];
        v69 = v93[6];
        v70 = v93[7];
        v63 = v93[0];
        v64 = v93[1];
        v65 = v93[2];
        v66 = v93[3];

        UInt32.init(_:)(&v63);
      }

      v87 = v71;
      v88 = v72;
      v89 = v73;
      v90 = v74;
      v83 = v67;
      v84 = v68;
      v85 = v69;
      v86 = v70;
      v79 = v63;
      v80 = v64;
      v81 = v65;
      v82 = v66;
      sub_100395528(v45);
      v30 = v91[0];
      v31 = v91[1];
      *v32 = v92[0];
      *&v32[9] = *(v92 + 9);
      v46[8] = v45[8];
      v46[9] = v45[9];
      v46[10] = v45[10];
      v46[11] = v45[11];
      v46[4] = v45[4];
      v46[5] = v45[5];
      v46[6] = v45[6];
      v46[7] = v45[7];
      v46[0] = v45[0];
      v46[1] = v45[1];
      v46[2] = v45[2];
      v46[3] = v45[3];
      sub_100025F40(v46, &qword_1005DC860, &qword_100504BB8);
      v41 = v87;
      v42 = v88;
      v43 = v89;
      v44 = v90;
      v37 = v83;
      v38 = v84;
      v39 = v85;
      v40 = v86;
      v33 = v79;
      v34 = v80;
      v35 = v81;
      v36 = v82;
      v59 = v87;
      v60 = v88;
      v61 = v89;
      v62 = v90;
      v55 = v83;
      v56 = v84;
      v57 = v85;
      v58 = v86;
      v51 = v79;
      v52 = v80;
      v53 = v81;
      v54 = v82;
      v47 = v30;
      v48 = v31;
      v49 = *v32;
      v50 = *&v32[16];
      v75 = v87;
      v76 = v88;
      v77 = v89;
      v78 = v90;
      v71 = v83;
      v72 = v84;
      v73 = v85;
      v74 = v86;
      v67 = v79;
      v68 = v80;
      v69 = v81;
      v70 = v82;
      v63 = v30;
      v64 = v31;
      v65 = *v32;
      v66 = *&v32[16];
      sub_10042ECA8(&v47, v29);
      result = sub_10042ED04(&v63);
      v21 = v60;
      a8[12] = v59;
      a8[13] = v21;
      v22 = v62;
      a8[14] = v61;
      a8[15] = v22;
      v23 = v56;
      a8[8] = v55;
      a8[9] = v23;
      v24 = v58;
      a8[10] = v57;
      a8[11] = v24;
      v25 = v52;
      a8[4] = v51;
      a8[5] = v25;
      v26 = v54;
      a8[6] = v53;
      a8[7] = v26;
      v27 = v48;
      *a8 = v47;
      a8[1] = v27;
      v28 = v50;
      a8[2] = v49;
      a8[3] = v28;
    }
  }

  return result;
}

uint64_t sub_100428A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1004283A0(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v75 = a7;
    v67 = v19;
    v68 = a8;
    if ((v19 & 0x100000000) != 0)
    {
      v69 = result;
      v72 = v18;
      v20 = sub_10041F0A8(result, v18);
      v22 = v21;
      v82[0] = 47;
      v23 = sub_1004A58E4();
      if (v22)
      {
        if (v20 == v23 && v22 == v24)
        {

          v18 = v72;
          goto LABEL_9;
        }

        v25 = sub_1004A6D34();

        result = v69;
        v18 = v72;
        if (v25)
        {
LABEL_9:
          if (__OFADD__(a2, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          v26 = v18;
          if (a2 + 1 >= a3)
          {
            sub_1003A5228();
            swift_allocError();
            *v31 = a3;
          }

          else
          {
            v27 = *(a1 + 8);
            v62 = *(a1 + 16);
            v60 = *(a1 + 20);
            v59 = *(a1 + 22);
            v73 = *a1;

            sub_1003B1714(1, v69, v26);

            v70 = sub_1004A5864();
            v65 = v28;

            v29 = v65;
            v30 = a2 + 2;
            if (a2 + 2 < a3)
            {

              sub_10046B71C(0x3D4449553BuLL, 0xE500000000000000, 0, 0, a1, v30, a3);
              v55 = sub_100405E9C(a1, v30, a3, v49);

              v56 = v70;
LABEL_14:

              v64 = sub_100470AE0(a1, a2, a3, a4, a5, a6, v75);
              v66 = v32;
              v63 = v55;
              v74 = v29;

              if (v66)
              {
                v71 = v56;
                v33 = sub_10041F0A8(v64, v66);
                v35 = v34;
                v82[0] = 47;
                v36 = sub_1004A58E4();
                v38 = v68;
                if (v35)
                {
                  if (v33 == v36 && v35 == v37)
                  {

                    goto LABEL_31;
                  }

                  v61 = sub_1004A6D34();

                  v56 = v71;
                  if (v61)
                  {
LABEL_31:
                    if (!__OFADD__(a2, 1))
                    {
                      if (a2 + 1 < a3)
                      {

                        sub_1003B1714(1, v64, v66);

                        v50 = sub_1004A5864();
                        v52 = v51;

                        v64 = v50;
                        v53 = sub_100470CE8(a1, a2 + 1, a3, a4, a5, a6, v75);
                        v42 = v57;
                        v44 = v58;
                        v45 = v53;

                        v46 = v52;
                        v38 = v68;
                        v56 = v71;
                        goto LABEL_29;
                      }

                      sub_1003A5228();
                      swift_allocError();
                      *v54 = a3;
                      swift_willThrow();
                    }

LABEL_36:
                    __break(1u);
                    return result;
                  }

LABEL_28:

                  v40 = sub_100470D14(a1, a2, a3, a4, a5, a6, v75);
                  v42 = v41;
                  v44 = v43;
                  v45 = v40;

                  v46 = v66;
LABEL_29:
                  v76[68] = BYTE4(v67) & 1;
                  v76[67] = HIBYTE(v42) & 1;
                  *&v77 = v56;
                  *(&v77 + 1) = v74;
                  LODWORD(v78) = v67;
                  BYTE4(v78) = BYTE4(v67) & 1;
                  DWORD2(v78) = v63;
                  *&v79 = v64;
                  *(&v79 + 1) = v46;
                  *&v80 = v45;
                  *(&v80 + 1) = v44;
                  v81 = v42 & 0x1FF;
                  v82[0] = v56;
                  v82[1] = v74;
                  v83 = v67;
                  v84 = BYTE4(v67) & 1;
                  v85 = v63;
                  v86 = v64;
                  v87 = v46;
                  v88 = v45;
                  v89 = v44;
                  v90 = v42 & 0x1FF;
                  sub_1004308A4(&v77, v76);
                  result = sub_10042ED74(v82);
                  v47 = v80;
                  *(v38 + 32) = v79;
                  *(v38 + 48) = v47;
                  *(v38 + 64) = v81;
                  v48 = v78;
                  *v38 = v77;
                  *(v38 + 16) = v48;
                  return result;
                }

                v56 = v71;
              }

              else
              {
                v82[0] = 47;
                sub_1004A58E4();
                v38 = v68;
              }

              goto LABEL_28;
            }

            sub_1003A5228();
            swift_allocError();
            *v39 = a3;
            swift_willThrow();
            *a1 = v73;
            *(a1 + 8) = v27;
            *(a1 + 16) = v62;
            *(a1 + 20) = v60;
            *(a1 + 22) = v59;
          }

          swift_willThrow();
        }
      }

      else
      {

        result = v69;
        v18 = v72;
      }
    }

    v56 = result;
    v29 = v18;
    v55 = sub_10042FEA4(a1, a2, a3);
    goto LABEL_14;
  }

  return result;
}

void sub_100429134(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_10046B71C(0x25uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v3)
  {
    return;
  }

  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  if (v6 == v5)
  {
LABEL_5:
    sub_1003A5324();
    swift_allocError();
LABEL_6:
    swift_willThrow();
    return;
  }

  v7 = *(a1 + 22);
  v8 = *(a1 + 10);
  v9 = *a1;
  swift_beginAccess();
  v10 = v5 + 1;
  if (v5 == -1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v11 = *(v9 + 24) + (v7 | (v8 << 8));
  v12 = *(v11 + v5);
  *(a1 + 2) = v10;
  if (v6 == v10)
  {
    goto LABEL_5;
  }

  if (v10 == -1)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v13 = *(v11 + v10);
  *(a1 + 2) = v10 + 1;
  if ((v12 - 58) <= 0xF5u && (v12 - 65 <= 0x25 ? (v14 = ((1 << (v12 - 65)) & 0x3F0000003FLL) == 0) : (v14 = 1), v14) || (v13 - 58) <= 0xF5u && (v13 - 65 <= 0x25 ? (v15 = ((1 << (v13 - 65)) & 0x3F0000003FLL) == 0) : (v15 = 1), v15))
  {
    sub_1004A6724(36);

    v20._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v20);

    v21._countAndFlagsBits = 0x20646E6120;
    v21._object = 0xE500000000000000;
    sub_1004A5994(v21);
    v22._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v22);

    sub_1003A527C();
    swift_allocError();
    *v19 = 0xD00000000000001BLL;
    v19[1] = 0x80000001004B0CD0;
    v19[2] = 0xD000000000000020;
    v19[3] = 0x80000001004B03C0;
    v19[4] = 1264;
    goto LABEL_6;
  }

  if (v12 <= 0x46u)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 - 32;
  }

  if (v13 <= 0x46u)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 - 32;
  }

  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004CEA80;
  *(v18 + 32) = 37;
  *(v18 + 33) = v16;
  *(v18 + 34) = v17;
}

uint64_t *sub_100429408(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_100424660(v10, v8, a3, a4, a5, a6, a7, sub_100474EDC, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t *sub_100429544(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_10042699C(v10, v8, a3, a4, a5, a6, a7, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

void sub_10042966C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, unint64_t a5@<X7>, uint64_t a6@<X8>, unint64_t a7, uint64_t a8)
{
  sub_10046B71C(a5, a7, 0, 0, a1, a2, a3);
  if (v8)
  {
    return;
  }

  v14 = sub_10046C278(a1, a2, a3, 1);
  if (v14 < 0)
  {
    sub_1003A527C();
    swift_allocError();
    *v17 = 0xD000000000000011;
    v17[1] = 0x80000001004B08A0;
    v17[2] = 0xD000000000000020;
    v17[3] = 0x80000001004B03C0;
    v17[4] = 202;
    goto LABEL_6;
  }

  if (v14 > a4)
  {
    v15 = v14;
    sub_1003FF690();
    swift_allocError();
    *v16 = v15;
    v16[1] = a4;
LABEL_6:
    swift_willThrow();
    return;
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v33 = v14;
  if (a2 + 1 >= a3)
  {
    sub_1003A5228();
    swift_allocError();
    *v18 = a3;
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (!swift_dynamicCast())
    {

      return;
    }
  }

  else
  {

    sub_10046B71C(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2 + 1, a3);
  }

  sub_10046B71C(0x7DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_100464188(a1, a2, a3);
  v19 = ByteBuffer.readSlice(length:)(v33);
  if (!v19)
  {
    sub_1003A5324();
    swift_allocError();
    goto LABEL_6;
  }

  v22 = v20;
  v23 = HIDWORD(v20);
  v24 = v20;
  if (HIDWORD(v20) < v20)
  {
    goto LABEL_25;
  }

  v25 = v21;
  v26 = (WORD2(v21) << 8) | BYTE6(v21);
  if ((v21 - v26) < v23)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v27 = v19;
  v34[0] = v19;
  v28 = HIWORD(v21);
  v29 = HIDWORD(v21);
  v34[1] = v20;
  v35 = v21;
  v36 = WORD2(v21);
  v37 = BYTE6(v21);
  v38 = v20;
  v39 = HIDWORD(v20);
  swift_beginAccess();
  v30 = v23 - v24;
  if (v23 == v24)
  {
LABEL_21:

    sub_1003A52D0(v34);
    *a6 = v27;
    *(a6 + 8) = v22;
    *(a6 + 12) = v23;
    *(a6 + 16) = v25;
    *(a6 + 20) = v29;
    *(a6 + 22) = v28;
  }

  else
  {
    v31 = (*(v27 + 24) + v26 + v24);
    while (*v31)
    {
      ++v31;
      if (!--v30)
      {
        goto LABEL_21;
      }
    }

    sub_1003A52D0(v34);
    sub_1003A527C();
    swift_allocError();
    *v32 = 0xD000000000000019;
    v32[1] = 0x80000001004B0BC0;
    v32[2] = 0xD000000000000020;
    v32[3] = 0x80000001004B03C0;
    v32[4] = a8;
    swift_willThrow();
  }
}