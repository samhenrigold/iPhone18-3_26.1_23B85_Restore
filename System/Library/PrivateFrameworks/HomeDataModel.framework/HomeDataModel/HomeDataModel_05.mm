uint64_t sub_1D1754740(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D171D2F0(a2, a3);
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
      sub_1D17392C8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D1728BF8(v16, a4 & 1);
    v11 = sub_1D171D2F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1D19DB0A0(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1D1754888(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D4E0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D17392DC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1728C0C(v14, a3 & 1);
    v9 = sub_1D171D4E0(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for MTRAttributeIDType(0);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return sub_1D1757A04(a1, v20);
  }

  else
  {

    return sub_1D19DB94C(v9, a2, a1, v19);
  }
}

_OWORD *sub_1D17549AC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D4E0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173946C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D1728EBC(v14, a3 & 1);
    v9 = sub_1D171D4E0(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for MTRAttributeIDType(0);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1D16EEE38(a1, v20);
  }

  else
  {

    return sub_1D19DB9A4(v9, a2, a1, v19);
  }
}

uint64_t sub_1D1754AD8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D171D278(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StaticCluster(0);
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StaticCluster);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D1739780();
    goto LABEL_7;
  }

  sub_1D1729800(v13, a3 & 1);
  v20 = sub_1D171D278(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DBA58(v10, a2, a1, v16);
}

uint64_t sub_1D1754C2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D171D15C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StaticEndpoint(0);
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StaticEndpoint);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D17399B4();
    goto LABEL_7;
  }

  sub_1D1729B68(v13, a3 & 1);
  v20 = sub_1D171D15C(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DBA84(v10, a2, a1, v16);
}

void sub_1D1754D80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BatchRequestError.ID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D171D54C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1D1739BE8();
      goto LABEL_7;
    }

    sub_1D1729EB4(v16, a3 & 1);
    v22 = sub_1D171D54C(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D1757B28(a2, v10, type metadata accessor for BatchRequestError.ID);
      sub_1D19DBAB0(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_1D1E690FC();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = *(v20 + 8 * v13);
  *(v20 + 8 * v13) = a1;
}

uint64_t sub_1D1754F24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1D1742188();
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_1D1739E50();
      goto LABEL_9;
    }

    sub_1D172A2E4(v18, a4 & 1);
    v21 = sub_1D1742188();
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;

    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1D19DBB64(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_1D1755100(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D17420B0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StaticMatterDevice(0);
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StaticMatterDevice);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D173A0D0();
    goto LABEL_7;
  }

  sub_1D172A6BC(v13, a3 & 1);
  v20 = sub_1D17420B0(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DBC24(v10, a2, a1, v16);
}

uint64_t sub_1D1755254(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for MatterStateSnapshot(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for MatterStateSnapshot);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D173A304();
    goto LABEL_7;
  }

  sub_1D172AA04(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DBCCC(v14, v11, a1, v20);
}

_OWORD *sub_1D1755428(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171DB60(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173A884();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D172B434(v14, a3 & 1);
    v9 = sub_1D171DB60(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1D16EEE38(a1, v20);
  }

  else
  {

    return sub_1D19DBD24(v9, a2, a1, v19);
  }
}

uint64_t sub_1D1755554(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D171D15C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for ActionEndpoint(0);
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ActionEndpoint);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D173AA00();
    goto LABEL_7;
  }

  sub_1D172B738(v13, a3 & 1);
  v20 = sub_1D171D15C(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DBD8C(v10, a2, a1, v16);
}

uint64_t sub_1D17556A8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D171D2F0(a2, a3);
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
      sub_1D173AD98();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D172BCF8(v16, a4 & 1);
    v11 = sub_1D171D2F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 32 * v11;

    return sub_1D1757A78(a1, v22);
  }

  else
  {
    sub_1D19DBE60(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1D17557EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D171D1A4(a2 & 0xFFFFFFFFFFLL);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173AF4C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D172BFC0(v14, a3 & 1);
    v9 = sub_1D171D1A4(a2 & 0xFFFFFFFFFFLL);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return sub_1D1757A04(a1, v20);
  }

  else
  {

    return sub_1D19DBEB0(v9, a2 & 0xFFFFFFFFFFLL, a1, v19);
  }
}

id sub_1D1755910(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D171DC34(a2);
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
      sub_1D173B6E8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D172CC34(v13, a3 & 1);
    v8 = sub_1D171DC34(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_1D19DBF58(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1D1755AAC(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, void *), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *v7;
  v15 = sub_1D171D140(a2);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      a4();
      v15 = v23;
      goto LABEL_8;
    }

    a5(v20, a3 & 1);
    v15 = sub_1D171D140(a2);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v10;
  if (v21)
  {
    v26 = (*(v25 + 56) + 32 * v15);
    __swift_destroy_boxed_opaque_existential_1(v26);

    return a6(a1, v26);
  }

  else
  {

    return a7(v15, a2, a1, v25);
  }
}

uint64_t sub_1D1755C14(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *v3;
  result = sub_1D171D3B8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_1D173BB28();
      result = v16;
      goto LABEL_8;
    }

    sub_1D172D590(v13, a3 & 1);
    result = sub_1D171D3B8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 2 * result) = v6;
  }

  else
  {
    sub_1D19DC008(result, a2, v6, v18);

    return a2;
  }

  return result;
}

uint64_t sub_1D1755D44(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for HomeState(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for HomeState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D173BC84();
    goto LABEL_7;
  }

  sub_1D172D7F4(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DC04C(v14, v11, a1, v20);
}

uint64_t sub_1D1755F18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for StaticMatterDevice(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for StaticMatterDevice);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D1736F7C();
    goto LABEL_7;
  }

  sub_1D1725208(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DC078(v14, v11, a1, v20);
}

uint64_t sub_1D17560EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = v7;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1D173BFC4();
    goto LABEL_7;
  }

  sub_1D172DCA8(result, a3 & 1);
  result = sub_1D1742188();
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DC0A4(v14, v11, v7, v20);
}

uint64_t sub_1D175635C(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v7 = v6;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1D1742188();
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v29();
      goto LABEL_9;
    }

    v30();
    v23 = sub_1D1742188();
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    return v31(v17, v14, v25, v26);
  }
}

uint64_t sub_1D175654C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D171DF0C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1D173CC68();
      goto LABEL_7;
    }

    sub_1D172F3C4(v16, a3 & 1);
    v21 = sub_1D171DF0C(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D1757B28(a2, v10, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
      return sub_1D19DC214(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1D17566F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for StaticTelevisionProfile(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for StaticTelevisionProfile);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D173D168();
    goto LABEL_7;
  }

  sub_1D17301D4(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DC330(v14, v11, a1, v20);
}

uint64_t sub_1D17568C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for StaticLightProfile(0);
      return sub_1D1757B90(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for StaticLightProfile);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1D173D494();
    goto LABEL_7;
  }

  sub_1D1730674(v17, a3 & 1);
  v24 = sub_1D1742188();
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D19DC35C(v14, v11, a1, v20);
}

uint64_t sub_1D1756A98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D171D140(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StaticCharacteristic(0);
      return sub_1D1757B90(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StaticCharacteristic);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D173DAEC();
    goto LABEL_7;
  }

  sub_1D1730FB4(v13, a3 & 1);
  v20 = sub_1D171D140(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D19DC388(v10, a2, a1, v16);
}

uint64_t sub_1D1756BEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1D171D2F0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for RoomType(0);
      return sub_1D1757B90(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for RoomType);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1D173E2D0();
    goto LABEL_7;
  }

  sub_1D1731F64(v15, a4 & 1);
  v22 = sub_1D171D2F0(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D19DC45C(v12, a2, a3, a1, v18);
}

uint64_t sub_1D1756D98(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v7 = v6;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1D1742188();
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  result = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 >= result && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v22 >= result && (a3 & 1) == 0)
  {
    result = v27();
    goto LABEL_9;
  }

  v28();
  result = sub_1D1742188();
  if ((v21 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

  v17 = result;
LABEL_9:
  v24 = a1;
  v25 = *v7;
  if (v21)
  {
    *(*(v25 + 56) + 8 * v17) = v24;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    return v29(v17, v14, v24, v25);
  }

  return result;
}

unint64_t sub_1D1756F58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D17420B0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173E7AC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D17326B0(v14, a3 & 1);
    v9 = sub_1D17420B0(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1D19DBF58(v9, a2, a1, v19);
  }
}

uint64_t sub_1D17570D0(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, char *, uint64_t, uint64_t))
{
  v34 = a6;
  v35 = a7;
  v32 = a4;
  v33 = a5;
  v8 = v7;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_1D1742188();
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v32();
      goto LABEL_9;
    }

    v33();
    v24 = sub_1D1742188();
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = a1;
  v27 = *v8;
  if (v22)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v18);
    *(v28 + 8 * v18) = v26;
    v30 = v34;

    return v30(v29);
  }

  else
  {
    (*(v13 + 16))(v15, a2, v12);
    return v35(v18, v15, v26, v27);
  }
}

unint64_t sub_1D17572C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D17420B0(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D173EE04();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D17330D0(v14, a3 & 1);
    v9 = sub_1D17420B0(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D1E690FC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;
    v21 = *(a1 + 16);
    *v20 = *a1;
    *(v20 + 16) = v21;
    *(v20 + 32) = *(a1 + 32);

    swift_unknownObjectRelease();
  }

  else
  {

    return sub_1D19DC508(v9, a2, a1, v19);
  }
}

void sub_1D1757410(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D1742188();
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D173EFA0();
      goto LABEL_7;
    }

    sub_1D173338C(v17, a3 & 1);
    v23 = sub_1D1742188();
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1D19DD7D8();
      return;
    }

LABEL_15:
    sub_1D1E690FC();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = *(v20 + 56);
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

id sub_1D17575DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1D1757628(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_1D171D2F0(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_1D1734030();
      }
    }

    else
    {
      sub_1D1720CD0(v30, v43 & 1);
      v32 = sub_1D171D2F0(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_1D1716918(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D17579AC()
{
  result = qword_1EE07DD78[0];
  if (!qword_1EE07DD78[0])
  {
    sub_1D1E66A7C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07DD78);
  }

  return result;
}

uint64_t sub_1D1757A60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

uint64_t sub_1D1757A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1757AE8(uint64_t result, unsigned __int8 a2)
{
  if (a2 - 3 <= 1)
  {
  }

  return v2;
}

double sub_1D1757B00(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1D1757B18(id a1)
{
  if (a1 >= 6)
  {
  }
}

uint64_t sub_1D1757B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1757B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1757BF8(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1757C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

unint64_t sub_1D1757D20()
{
  result = qword_1EE07A030;
  if (!qword_1EE07A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A030);
  }

  return result;
}

unint64_t sub_1D1757D74()
{
  result = qword_1EE07A008;
  if (!qword_1EE07A008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC642E68, &unk_1D1E717F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A008);
  }

  return result;
}

uint64_t static FacesCache.cacheConfiguration<A>(configEvent:fileManager:)(uint64_t a1, void *a2, uint64_t a3, uint8_t *a4)
{
  v100 = a1;
  v101 = a4;
  v91 = a2;
  v5 = sub_1D1E6702C();
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v85 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a3;
  v84 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v83 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E669FC();
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v99 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v82 - v12;
  v14 = sub_1D1E6680C();
  v104 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v98 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v88 = v82 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v97 = v82 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v95 = v82 - v21;
  v102 = sub_1D1E66FDC();
  v22 = *(v102 - 8);
  v23 = MEMORY[0x1EEE9AC00](v102);
  v92 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v82 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = v82 - v28;
  if (qword_1EC642120 != -1)
  {
    swift_once();
  }

  v103 = v14;
  v30 = sub_1D1E6701C();
  v31 = __swift_project_value_buffer(v30, qword_1EC642E90);
  sub_1D1E66FCC();
  v89 = v31;
  v32 = sub_1D1E66FFC();
  v33 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v32, v33, v35, "cacheConfigStartToEnd", "", v34, 2u);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v36 = v102;
  (*(v22 + 16))(v27, v29, v102);
  sub_1D1E6705C();
  swift_allocObject();
  v37 = sub_1D1E6704C();
  v39 = *(v22 + 8);
  v38 = (v22 + 8);
  v90 = v39;
  v39(v29, v36);
  v40 = v101;
  v41 = v96;
  v42 = AnalyticsEvent.effectiveEventName.getter(v96, *(v101 + 1));
  v44 = v43;
  v45 = objc_opt_self();
  v46 = [v45 defaultManager];
  sub_1D1758884(v42, v44, v46, v13);

  v47 = v103;
  v48 = v104;
  if ((*(v104 + 48))(v13, 1, v103) == 1)
  {

    return sub_1D1759EB0(v13);
  }

  else
  {
    v82[0] = v45;
    v82[1] = v37;
    v82[2] = v38;
    v50 = v40;
    v51 = v95;
    (*(v48 + 32))(v95, v13, v47);
    v52 = v88;
    v53 = v48;
    sub_1D1E667AC();
    v54 = v41;
    v55 = v97;
    sub_1D1E667BC();
    v56 = *(v53 + 8);
    v56(v52, v47);
    (*(v50 + 3))(v54, v50);
    sub_1D1E667AC();

    sub_1D1E667BC();
    v104 = v53 + 8;
    v88 = v56;
    v56(v52, v47);
    v57 = v99;
    _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
    sub_1D1E667EC();
    v58 = sub_1D1E677EC();

    v59 = v91;
    v60 = [v91 fileExistsAtPath_];

    if (v60)
    {
      DynamicType = swift_getDynamicType();
      v62 = [v82[0] defaultManager];
      sub_1D175B048(v51, v55, v57, DynamicType, v54, v101);
    }

    else
    {
      v63 = [v82[0] defaultManager];
      sub_1D175A654(v51, v63);

      sub_1D175A98C(v55, v57);
    }

    v64 = v98;
    sub_1D1E667EC();
    v65 = sub_1D1E677EC();

    v66 = [v59 fileExistsAtPath_];

    if ((v66 & 1) == 0)
    {
      v67 = v84;
      v68 = v83;
      (*(v84 + 16))(v83, v100, v54);
      sub_1D1759F18(v64, v68, v54, v101);
      (*(v67 + 8))(v68, v54);
    }

    v69 = sub_1D1E66FFC();
    v70 = v92;
    sub_1D1E6703C();
    v71 = sub_1D1E683DC();
    if (sub_1D1E6855C())
    {

      v72 = v85;
      sub_1D1E6706C();

      v74 = v86;
      v73 = v87;
      if ((*(v86 + 88))(v72, v87) == *MEMORY[0x1E69E93E8])
      {
        v75 = "[Error] Interval already ended";
      }

      else
      {
        (*(v74 + 8))(v72, v73);
        v75 = "";
      }

      v78 = swift_slowAlloc();
      *v78 = 0;
      v79 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v69, v71, v79, "cacheConfigStartToEnd", v75, v78, 2u);
      MEMORY[0x1D3893640](v78, -1, -1);

      v90(v70, v102);
      (*(v93 + 8))(v99, v94);
      v80 = v103;
      v81 = v88;
      (v88)(v64, v103);
      v81(v97, v80);
      return (v81)(v95, v80);
    }

    else
    {

      v90(v70, v102);
      (*(v93 + 8))(v99, v94);
      v76 = v103;
      v77 = v88;
      (v88)(v64, v103);
      v77(v97, v76);
      return (v77)(v51, v76);
    }
  }
}

const char *FacesCache.SignpostType.name.getter()
{
  v1 = "sendingEvents";
  v2 = "writingToCache";
  if (*v0 != 2)
  {
    v2 = "cacheConfigStartToEnd";
  }

  if (*v0)
  {
    v1 = "readingFromCache";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D1758884@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_1D1E6680C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = [objc_opt_self() defaultManager];
  sub_1D17598E0(v18, v10);

  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v41 = *(v12 + 32);
    v41(v17, v10, v11);
    v40 = a1;
    sub_1D1E6679C();
    sub_1D1E667DC();
    v20 = sub_1D1E677EC();

    v21 = [a3 fileExistsAtPath_];

    if ((v21 & 1) == 0)
    {
      v22 = sub_1D1E6677C();
      v42[0] = 0;
      v23 = [a3 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v42];

      if (v23)
      {
        v24 = *(v12 + 8);
        v25 = v42[0];
        v24(v17, v11);
        goto LABEL_7;
      }

      v27 = v42[0];
      v28 = sub_1D1E6656C();

      swift_willThrow();
      if (qword_1EC642118 != -1)
      {
        swift_once();
      }

      v29 = sub_1D1E6709C();
      __swift_project_value_buffer(v29, qword_1EC642E78);

      v30 = sub_1D1E6707C();
      v31 = sub_1D1E6833C();

      v39 = v30;
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v38 = v28;
        v34 = v33;
        v42[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_1D1B1312C(v40, a2, v42);
        v35 = v31;
        v36 = v39;
        _os_log_impl(&dword_1D16EC000, v39, v35, "FacesCache - facesCacheDirectory(): Failed to create directory in cachesDirectory for %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1D3893640](v34, -1, -1);
        MEMORY[0x1D3893640](v32, -1, -1);
      }

      else
      {
      }
    }

    (*(v12 + 8))(v17, v11);
LABEL_7:
    v41(a4, v15, v11);
    v19 = 0;
    return (*(v12 + 56))(a4, v19, 1, v11);
  }

  sub_1D1759EB0(v10);
  v19 = 1;
  return (*(v12 + 56))(a4, v19, 1, v11);
}

uint64_t sub_1D1758CE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint8_t *a5)
{
  v97 = a2;
  v108 = a1;
  v115[1] = *MEMORY[0x1E69E9840];
  v98 = a4;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v96 = (&v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_1D1E6702C();
  v9 = *(v91 - 8);
  v10 = MEMORY[0x1EEE9AC00](v91);
  v89 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v81 - v12;
  v105 = sub_1D1E6680C();
  v114 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v111 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66FDC();
  v15 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v90 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v104 = &v81 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v103 = &v81 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v81 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v81 - v24;
  if (qword_1EC642120 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v26 = sub_1D1E6701C();
    v27 = __swift_project_value_buffer(v26, qword_1EC642E90);
    sub_1D1E66FCC();
    v112 = v27;
    v28 = sub_1D1E66FFC();
    v29 = sub_1D1E683EC();
    v30 = sub_1D1E6855C();
    v99 = a5;
    if (v30)
    {
      a5 = swift_slowAlloc();
      *a5 = 0;
      v31 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v28, v29, v31, "sendingEvents", "", a5, 2u);
      MEMORY[0x1D3893640](a5, -1, -1);
    }

    v101 = *(v15 + 16);
    v102 = v15 + 16;
    v101(v107, v25, v14);
    v100 = sub_1D1E6705C();
    swift_allocObject();
    v88 = sub_1D1E6704C();
    v32 = *(v15 + 8);
    v15 += 8;
    v113 = v32;
    v32(v25, v14);
    sub_1D1E667EC();
    v33 = sub_1D1E677EC();

    v115[0] = 0;
    v25 = [a3 contentsOfDirectoryAtPath:v33 error:v115];

    v34 = v115[0];
    if (!v25)
    {
      break;
    }

    v35 = v7;
    v87 = v9;
    v36 = sub_1D1E67C1C();
    v37 = v34;

    v106 = v36;
    v95 = *(v36 + 16);
    if (!v95)
    {
LABEL_23:

      v9 = v87;
      goto LABEL_30;
    }

    v38 = 0;
    v7 = 0;
    v84 = (v87 + 11);
    v83 = *MEMORY[0x1E69E93E8];
    v82 = v87 + 1;
    v92 = (v35 + 8);
    v94 = (v114 + 8);
    v39 = (v106 + 40);
    v86 = v14;
    v85 = v15;
    while (v38 < *(v106 + 16))
    {
      v40 = *(v39 - 1) == 0x7478742E65746164 && *v39 == 0xE800000000000000;
      if (v40 || (sub_1D1E6904C() & 1) != 0)
      {
        goto LABEL_23;
      }

      v109 = v39;
      v110 = v38;

      v41 = v103;
      sub_1D1E66FCC();
      v42 = sub_1D1E66FFC();
      v43 = sub_1D1E683EC();
      if (sub_1D1E6855C())
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        v45 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v42, v43, v45, "readingFromCache", "", v44, 2u);
        MEMORY[0x1D3893640](v44, -1, -1);
      }

      v101(v107, v41, v14);
      swift_allocObject();
      sub_1D1E6704C();
      v113(v41, v14);
      sub_1D1E667AC();

      v46 = sub_1D1E6682C();
      v48 = v104;
      v114 = v7;
      if (v7)
      {
        (*v94)(v111, v105);

        v9 = v87;
        goto LABEL_25;
      }

      v25 = v46;
      v49 = v47;
      v50 = sub_1D1E66FFC();
      sub_1D1E6703C();
      v51 = sub_1D1E683DC();
      if (sub_1D1E6855C())
      {

        v52 = v93;
        sub_1D1E6706C();

        v53 = v52;
        v54 = v91;
        v55 = (*v84)(v53, v91);
        v56 = "[Error] Interval already ended";
        if (v55 != v83)
        {
          (*v82)(v93, v54);
          v56 = "";
        }

        v57 = swift_slowAlloc();
        *v57 = 0;
        v58 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v50, v51, v58, "readingFromCache", v56, v57, 2u);
        MEMORY[0x1D3893640](v57, -1, -1);
        v14 = v86;
        v15 = v85;
      }

      v59 = v48;
      a3 = v14;
      v60 = v14;
      v61 = v15;
      v113(v59, v60);
      sub_1D1E65F1C();
      swift_allocObject();
      sub_1D1E65F0C();
      v62 = v98;
      a5 = v99;
      v9 = v96;
      v63 = v114;
      sub_1D1E65EFC();
      v114 = v63;
      if (v63)
      {
        (*v94)(v111, v105);

        sub_1D174E7C4(v25, v49);

        v9 = v87;
        v14 = a3;
        goto LABEL_25;
      }

      v64 = v110 + 1;

      AnalyticsEvent.sendLazy()();
      v38 = v64;
      sub_1D174E7C4(v25, v49);

      (*v92)(v9, v62);
      (*v94)(v111, v105);
      v39 = v109 + 2;
      v40 = v95 == v64;
      v15 = v61;
      v14 = a3;
      v7 = v114;
      if (v40)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
  }

  v65 = v115[0];
  v66 = sub_1D1E6656C();

  v114 = v66;
  swift_willThrow();
LABEL_25:
  if (qword_1EC642118 != -1)
  {
    swift_once();
  }

  v67 = sub_1D1E6709C();
  __swift_project_value_buffer(v67, qword_1EC642E78);
  v68 = sub_1D1E6707C();
  v69 = sub_1D1E6833C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1D16EC000, v68, v69, "FacesCache - sendEvents(): Failed to read files in directory and send events", v70, 2u);
    MEMORY[0x1D3893640](v70, -1, -1);
  }

LABEL_30:
  v71 = sub_1D1E66FFC();
  v72 = v90;
  sub_1D1E6703C();
  v73 = sub_1D1E683DC();
  v74 = sub_1D1E6855C();
  v75 = v89;
  if (v74)
  {

    sub_1D1E6706C();

    v76 = v91;
    if ((v9[11])(v75, v91) == *MEMORY[0x1E69E93E8])
    {
      v77 = "[Error] Interval already ended";
    }

    else
    {
      v9[1](v75, v76);
      v77 = "";
    }

    v78 = swift_slowAlloc();
    *v78 = 0;
    v79 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v71, v73, v79, "sendingEvents", v77, v78, 2u);
    MEMORY[0x1D3893640](v78, -1, -1);
  }

  return (v113)(v72, v14);
}

uint64_t sub_1D17598E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E6680C();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 URLsForDirectory:13 inDomains:1];
  v8 = sub_1D1E67C1C();

  if (*(v8 + 16))
  {
    (*(v16 + 16))(v6, v8 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v4);

    (*(v16 + 32))(a2, v6, v4);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }

  else
  {

    if (qword_1EC642118 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC642E78);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6833C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D16EC000, v11, v12, "FacesCache - cacheDirectory(): Failed to find cachesDirectory in FileManager.default", v13, 2u);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    v14 = *(v16 + 56);

    return v14(a2, 1, 1, v4);
  }
}

uint64_t sub_1D1759B50()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC642E78);
  __swift_project_value_buffer(v0, qword_1EC642E78);
  return sub_1D1E6708C();
}

uint64_t sub_1D1759C10()
{
  v0 = sub_1D1E6709C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v4, qword_1EC642E90);
  __swift_project_value_buffer(v4, qword_1EC642E90);
  if (qword_1EC642118 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EC642E78);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D1E66FEC();
}

uint64_t sub_1D1759D84@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t FacesCache.SignpostType.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1759EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1759F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = sub_1D1E6680C();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D1E6702C();
  v8 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v52 = a3;
  v53 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  if (qword_1EC642120 != -1)
  {
    swift_once();
  }

  v20 = sub_1D1E6701C();
  v21 = __swift_project_value_buffer(v20, qword_1EC642E90);
  sub_1D1E66FCC();
  v46 = v21;
  v22 = sub_1D1E66FFC();
  v23 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v24 = v8;
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v22, v23, v26, "writingToCache", "", v25, 2u);
    v27 = v25;
    v8 = v24;
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  (*(v11 + 16))(v16, v18, v10);
  sub_1D1E6705C();
  swift_allocObject();
  sub_1D1E6704C();
  v28 = *(v11 + 8);
  v50 = v10;
  v28(v18, v10);
  __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_1D1E65F8C();
  swift_allocObject();
  sub_1D1E65F7C();
  v29 = sub_1D1E65F6C();
  v31 = v30;

  sub_1D1E668DC();
  sub_1D174E7C4(v29, v31);
  v40 = v50;
  v41 = v48;
  v32 = sub_1D1E66FFC();
  v33 = v49;
  sub_1D1E6703C();
  v34 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {

    sub_1D1E6706C();

    v35 = v43;
    if ((*(v8 + 88))(v41, v43) == *MEMORY[0x1E69E93E8])
    {
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v8 + 8))(v41, v35);
      v36 = "";
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v32, v34, v38, "writingToCache", v36, v37, 2u);
    MEMORY[0x1D3893640](v37, -1, -1);
  }

  v28(v33, v40);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

void sub_1D175A654(void *a1, void *a2)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26 = sub_1D1E6680C();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E667EC();
  v7 = sub_1D1E677EC();

  v27[0] = 0;
  v8 = [a2 contentsOfDirectoryAtPath:v7 error:v27];

  v9 = v27[0];
  if (v8)
  {
    v10 = sub_1D1E67C1C();
    v11 = v9;

    v12 = *(v10 + 16);
    if (!v12)
    {
LABEL_7:

      return;
    }

    v13 = 0;
    v14 = (v4 + 8);
    v15 = v10 + 40;
    while (v13 < *(v10 + 16))
    {

      sub_1D1E667AC();

      v16 = sub_1D1E6677C();
      v27[0] = 0;
      v17 = [a2 removeItemAtURL:v16 error:v27];

      if (!v17)
      {
        v21 = v27[0];

        a1 = sub_1D1E6656C();

        swift_willThrow();
        (*v14)(v6, v26);
        goto LABEL_10;
      }

      ++v13;
      v18 = *v14;
      v19 = v27[0];
      v18(v6, v26);
      v15 += 16;
      if (v12 == v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = v27[0];
    a1 = sub_1D1E6656C();

    swift_willThrow();
LABEL_10:
    if (qword_1EC642118 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EC642E78);
  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D16EC000, v23, v24, "FacesCache - clearCache(): Failed to clear cache", v25, 2u);
    MEMORY[0x1D3893640](v25, -1, -1);
  }
}

uint64_t sub_1D175A98C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v38 = a1;
  v39 = sub_1D1E6680C();
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v2 = sub_1D1E6702C();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E66FDC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  if (qword_1EC642120 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6701C();
  v14 = __swift_project_value_buffer(v13, qword_1EC642E90);
  sub_1D1E66FCC();
  v34 = v14;
  v15 = sub_1D1E66FFC();
  v16 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v15, v16, v18, "writingToCache", "", v17, 2u);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  (*(v5 + 16))(v10, v12, v4);
  sub_1D1E6705C();
  swift_allocObject();
  v35 = sub_1D1E6704C();
  v19 = *(v5 + 8);
  v19(v12, v4);
  sub_1D1E65F8C();
  swift_allocObject();
  sub_1D1E65F7C();
  sub_1D1E669FC();
  sub_1D175BA58(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v20 = sub_1D1E65F6C();
  v22 = v21;

  sub_1D1E668DC();
  sub_1D174E7C4(v20, v22);
  v30 = v37;
  v23 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v24 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {

    sub_1D1E6706C();

    v25 = v32;
    if ((*(v32 + 88))(v30, v2) == *MEMORY[0x1E69E93E8])
    {
      v26 = "[Error] Interval already ended";
    }

    else
    {
      (*(v25 + 8))(v30, v2);
      v26 = "";
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v23, v24, v28, "writingToCache", v26, v27, 2u);
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  return (v19)(v40, v4);
}

uint64_t sub_1D175B048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint8_t *a6)
{
  v68 = a5;
  v69 = a6;
  v67 = a4;
  v74 = a3;
  v70 = a1;
  v7 = sub_1D1E6680C();
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D1E6702C();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D1E669FC();
  v73 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D1E66FDC();
  v77 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v72 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v59[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v59[-v19];
  if (qword_1EC642120 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6701C();
  v22 = __swift_project_value_buffer(v21, qword_1EC642E90);
  sub_1D1E66FCC();
  v71 = v22;
  v23 = sub_1D1E66FFC();
  v24 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v25 = swift_slowAlloc();
    v63 = v13;
    v26 = v12;
    v27 = v10;
    v28 = a2;
    v29 = v25;
    *v25 = 0;
    v30 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v23, v24, v30, "readingFromCache", "", v29, 2u);
    v31 = v29;
    a2 = v28;
    v10 = v27;
    v12 = v26;
    v13 = v63;
    MEMORY[0x1D3893640](v31, -1, -1);
  }

  v32 = v77;
  (*(v77 + 16))(v18, v20, v13);
  sub_1D1E6705C();
  swift_allocObject();
  v33 = sub_1D1E6704C();
  v34 = *(v32 + 8);
  v34(v20, v13);
  v35 = sub_1D1E6682C();
  v63 = v33;
  v77 = v32 + 8;
  v36 = v35;
  v38 = v37;
  sub_1D1E65F1C();
  swift_allocObject();
  sub_1D1E65F0C();
  sub_1D175BA58(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E65EFC();
  v62 = v36;
  v75 = v38;
  v76 = v12;

  v39 = sub_1D1E66FFC();
  v40 = v72;
  sub_1D1E6703C();
  v41 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v60 = v41;
    v71 = v10;

    v42 = v64;
    sub_1D1E6706C();

    v44 = v65;
    v43 = v66;
    v45 = (*(v65 + 88))(v42, v66);
    v46 = *MEMORY[0x1E69E93E8];
    v61 = a2;
    if (v45 == v46)
    {
      v47 = "[Error] Interval already ended";
    }

    else
    {
      (*(v44 + 8))(v42, v43);
      v47 = "";
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v39, v60, v49, "readingFromCache", v47, v48, 2u);
    MEMORY[0x1D3893640](v48, -1, -1);
    a2 = v61;
    v10 = v71;
  }

  v34(v40, v13);
  v50 = v76;
  v51 = v74;
  sub_1D1E6692C();
  if (v52 >= 86400.0)
  {
    v54 = objc_opt_self();
    v55 = [v54 defaultManager];
    v56 = v10;
    v57 = v70;
    sub_1D1758CE8(v70, v67, v55, v68, v69);

    v58 = [v54 defaultManager];
    sub_1D175A654(v57, v58);

    sub_1D175A98C(a2, v51);
    sub_1D174E7C4(v62, v75);

    return (*(v73 + 8))(v50, v56);
  }

  else
  {
    (*(v73 + 8))(v50, v10);
    sub_1D174E7C4(v62, v75);
  }
}

unint64_t sub_1D175B8B0()
{
  result = qword_1EC642EB0;
  if (!qword_1EC642EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeAnalyticsUtilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HomeAnalyticsUtilities(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
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

uint64_t sub_1D175BA58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

HomeDataModel::HomeAnalyticsUtilities::TileInteractionArea_optional __swiftcall HomeAnalyticsUtilities.TileInteractionArea.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D175BB70()
{
  result = qword_1EC642ED0;
  if (!qword_1EC642ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642ED0);
  }

  return result;
}

unint64_t sub_1D175BBC8()
{
  result = qword_1EC642ED8;
  if (!qword_1EC642ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642ED8);
  }

  return result;
}

unint64_t sub_1D175BCFC()
{
  result = qword_1EC642EE0;
  if (!qword_1EC642EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EE0);
  }

  return result;
}

unint64_t sub_1D175BD50()
{
  result = qword_1EC642EE8;
  if (!qword_1EC642EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EE8);
  }

  return result;
}

unint64_t HomeAnalyticsUtilities.DisplayedTileContext.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  if (result < 0xC)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D175BDD4()
{
  result = qword_1EC642EF0;
  if (!qword_1EC642EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EF0);
  }

  return result;
}

uint64_t _s20DisplayedTileContextOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s20DisplayedTileContextOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D175C030()
{
  result = qword_1EC642EF8;
  if (!qword_1EC642EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642EF8);
  }

  return result;
}

uint64_t HomeAnalyticsUtilities.HomeElementType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 68;
  switch(result)
  {
    case 0:
      goto LABEL_85;
    case 1:
      v2 = 1;
      goto LABEL_85;
    case 2:
      v2 = 2;
      goto LABEL_85;
    case 3:
      v2 = 3;
      goto LABEL_85;
    case 4:
      v2 = 4;
      goto LABEL_85;
    case 5:
      v2 = 5;
      goto LABEL_85;
    case 6:
      v2 = 6;
      goto LABEL_85;
    case 7:
      v2 = 7;
      goto LABEL_85;
    case 8:
      v2 = 8;
      goto LABEL_85;
    case 9:
      v2 = 9;
      goto LABEL_85;
    case 10:
      v2 = 10;
      goto LABEL_85;
    case 11:
      v2 = 11;
      goto LABEL_85;
    case 12:
      v2 = 12;
      goto LABEL_85;
    case 13:
      v2 = 13;
      goto LABEL_85;
    case 14:
      v2 = 14;
      goto LABEL_85;
    case 15:
      v2 = 15;
      goto LABEL_85;
    case 16:
      v2 = 16;
      goto LABEL_85;
    case 17:
      v2 = 17;
      goto LABEL_85;
    case 18:
      v2 = 18;
      goto LABEL_85;
    case 19:
      v2 = 19;
      goto LABEL_85;
    case 20:
      v2 = 20;
      goto LABEL_85;
    case 21:
      v2 = 21;
      goto LABEL_85;
    case 22:
      v2 = 22;
      goto LABEL_85;
    case 23:
      v2 = 23;
      goto LABEL_85;
    case 24:
      v2 = 24;
      goto LABEL_85;
    case 25:
      v2 = 25;
      goto LABEL_85;
    case 26:
      v2 = 26;
      goto LABEL_85;
    case 27:
      v2 = 27;
      goto LABEL_85;
    case 28:
      v2 = 28;
      goto LABEL_85;
    case 29:
      v2 = 29;
      goto LABEL_85;
    case 30:
      v2 = 30;
      goto LABEL_85;
    case 31:
      v2 = 31;
      goto LABEL_85;
    case 32:
      v2 = 32;
      goto LABEL_85;
    case 33:
      v2 = 33;
      goto LABEL_85;
    case 34:
      v2 = 34;
      goto LABEL_85;
    case 35:
      v2 = 35;
      goto LABEL_85;
    case 36:
      v2 = 36;
      goto LABEL_85;
    case 37:
      v2 = 37;
      goto LABEL_85;
    case 38:
      v2 = 38;
      goto LABEL_85;
    case 39:
      v2 = 39;
      goto LABEL_85;
    case 40:
      v2 = 40;
      goto LABEL_85;
    case 41:
      v2 = 41;
      goto LABEL_85;
    case 42:
      v2 = 42;
      goto LABEL_85;
    case 43:
      v2 = 43;
      goto LABEL_85;
    case 44:
      v2 = 44;
      goto LABEL_85;
    case 45:
      v2 = 45;
      goto LABEL_85;
    case 46:
      v2 = 46;
      goto LABEL_85;
    case 47:
      v2 = 47;
      goto LABEL_85;
    case 48:
      v2 = 48;
      goto LABEL_85;
    case 49:
      v2 = 49;
      goto LABEL_85;
    case 50:
      v2 = 50;
      goto LABEL_85;
    case 51:
      v2 = 51;
      goto LABEL_85;
    case 52:
      v2 = 52;
      goto LABEL_85;
    case 53:
      v2 = 53;
      goto LABEL_85;
    case 54:
      v2 = 54;
      goto LABEL_85;
    case 55:
      v2 = 55;
      goto LABEL_85;
    case 56:
      v2 = 56;
      goto LABEL_85;
    case 66:
      v2 = 57;
      goto LABEL_85;
    case 67:
      v2 = 58;
      goto LABEL_85;
    case 68:
      v2 = 59;
      goto LABEL_85;
    case 69:
      v2 = 60;
      goto LABEL_85;
    case 71:
      v2 = 61;
      goto LABEL_85;
    case 72:
      v2 = 62;
      goto LABEL_85;
    case 73:
      v2 = 63;
      goto LABEL_85;
    case 74:
      v2 = 64;
      goto LABEL_85;
    case 75:
      v2 = 65;
      goto LABEL_85;
    case 76:
      v2 = 66;
      goto LABEL_85;
    case 250:
      v2 = 67;
LABEL_85:
      v3 = v2;
      goto LABEL_86;
    case 251:
LABEL_86:
      *a2 = v3;
      break;
    case 252:
      *a2 = 69;
      break;
    case 253:
      *a2 = 70;
      break;
    case 254:
      *a2 = 71;
      break;
    case 255:
      *a2 = 72;
      break;
    case 256:
      *a2 = 73;
      break;
    case 257:
      *a2 = 74;
      break;
    case 258:
      *a2 = 75;
      break;
    case 259:
      *a2 = 76;
      break;
    case 300:
      *a2 = 77;
      break;
    case 301:
      *a2 = 78;
      break;
    case 302:
      *a2 = 79;
      break;
    case 303:
      *a2 = 80;
      break;
    case 304:
      *a2 = 81;
      break;
    case 305:
      *a2 = 82;
      break;
    case 307:
      *a2 = 83;
      break;
    case 308:
      *a2 = 84;
      break;
    case 309:
      *a2 = 85;
      break;
    default:
      *a2 = 86;
      break;
  }

  return result;
}

uint64_t sub_1D175C3E8()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](qword_1D1E70068[v1]);
  return sub_1D1E6926C();
}

uint64_t sub_1D175C470(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](qword_1D1E70068[v2]);
  return sub_1D1E6926C();
}

uint64_t HomeAnalyticsUtilities.HomeElementType.init(accessoryCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (sub_1D1E6781C() == a1 && v6 == a2)
  {
    v9 = 17;
    goto LABEL_8;
  }

  v8 = sub_1D1E6904C();

  if ((v8 & 1) == 0)
  {
    if (sub_1D1E6781C() == a1 && v11 == a2)
    {
      v9 = 36;
    }

    else
    {
      v13 = sub_1D1E6904C();

      if (v13)
      {
        v9 = 36;
        goto LABEL_9;
      }

      if (sub_1D1E6781C() != a1 || v14 != a2)
      {
        v16 = sub_1D1E6904C();

        if (v16)
        {
          v9 = 35;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v17 == a2)
        {
          v9 = 42;
          goto LABEL_8;
        }

        v18 = sub_1D1E6904C();

        if (v18)
        {
          v9 = 42;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v19 == a2)
        {
          v9 = 29;
          goto LABEL_8;
        }

        v20 = sub_1D1E6904C();

        if (v20)
        {
          v9 = 29;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v21 == a2)
        {
          v9 = 31;
          goto LABEL_8;
        }

        v22 = sub_1D1E6904C();

        if (v22)
        {
          v9 = 31;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v23 == a2)
        {
          v9 = 47;
          goto LABEL_8;
        }

        v24 = sub_1D1E6904C();

        if (v24)
        {
          v9 = 47;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v25 == a2)
        {
          v9 = 20;
          goto LABEL_8;
        }

        v26 = sub_1D1E6904C();

        if (v26)
        {
          v9 = 20;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v27 == a2)
        {
          v9 = 15;
          goto LABEL_8;
        }

        v28 = sub_1D1E6904C();

        if (v28)
        {
          v9 = 15;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v29 == a2)
        {
          v9 = 52;
          goto LABEL_8;
        }

        v30 = sub_1D1E6904C();

        if (v30)
        {
          v9 = 52;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v31 == a2)
        {
          v9 = 53;
          goto LABEL_8;
        }

        v32 = sub_1D1E6904C();

        if (v32)
        {
          v9 = 53;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v33 == a2)
        {
          v9 = 41;
          goto LABEL_8;
        }

        v34 = sub_1D1E6904C();

        if (v34)
        {
          v9 = 41;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v35 == a2)
        {
          v9 = 60;
          goto LABEL_8;
        }

        v36 = sub_1D1E6904C();

        if (v36)
        {
          v9 = 60;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v37 == a2)
        {
          v9 = 56;
          goto LABEL_8;
        }

        v38 = sub_1D1E6904C();

        if (v38)
        {
          v9 = 56;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v39 == a2)
        {
          v9 = 4;
          goto LABEL_8;
        }

        v40 = sub_1D1E6904C();

        if (v40)
        {
          v9 = 4;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v41 == a2)
        {
LABEL_86:
          v9 = 21;
          goto LABEL_8;
        }

        v42 = sub_1D1E6904C();

        if (v42)
        {
          goto LABEL_91;
        }

        if (sub_1D1E6781C() == a1 && v43 == a2)
        {
          goto LABEL_86;
        }

        v44 = sub_1D1E6904C();

        if (v44)
        {
LABEL_91:
          v9 = 21;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v45 == a2)
        {
LABEL_94:
          v9 = 22;
          goto LABEL_8;
        }

        v46 = sub_1D1E6904C();

        if (v46)
        {
          goto LABEL_99;
        }

        if (sub_1D1E6781C() == a1 && v47 == a2)
        {
          goto LABEL_94;
        }

        v48 = sub_1D1E6904C();

        if (v48)
        {
LABEL_99:
          v9 = 22;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v49 == a2)
        {
          v9 = 25;
          goto LABEL_8;
        }

        v50 = sub_1D1E6904C();

        if (v50)
        {
          v9 = 25;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v51 == a2)
        {
LABEL_107:
          v9 = 18;
          goto LABEL_8;
        }

        v52 = sub_1D1E6904C();

        if (v52)
        {
          goto LABEL_112;
        }

        if (sub_1D1E6781C() == a1 && v53 == a2)
        {
          goto LABEL_107;
        }

        v54 = sub_1D1E6904C();

        if (v54)
        {
LABEL_112:
          v9 = 18;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v55 == a2)
        {
LABEL_115:
          v9 = 45;
          goto LABEL_8;
        }

        v56 = sub_1D1E6904C();

        if (v56)
        {
          goto LABEL_123;
        }

        if (sub_1D1E6781C() == a1 && v57 == a2)
        {
          goto LABEL_115;
        }

        v58 = sub_1D1E6904C();

        if (v58)
        {
          goto LABEL_123;
        }

        if (sub_1D1E6781C() == a1 && v59 == a2)
        {
          goto LABEL_115;
        }

        v60 = sub_1D1E6904C();

        if (v60)
        {
          goto LABEL_123;
        }

        if (sub_1D1E6781C() == a1 && v61 == a2)
        {
          v9 = 58;
          goto LABEL_8;
        }

        v62 = sub_1D1E6904C();

        if (v62)
        {
          v9 = 58;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v63 == a2)
        {
          v9 = 59;
          goto LABEL_8;
        }

        v64 = sub_1D1E6904C();

        if (v64)
        {
          v9 = 59;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v65 == a2)
        {
          goto LABEL_115;
        }

        v66 = sub_1D1E6904C();

        if (v66)
        {
LABEL_123:
          v9 = 45;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() == a1 && v67 == a2)
        {
LABEL_142:
          v9 = 39;
          goto LABEL_8;
        }

        v68 = sub_1D1E6904C();

        if (v68)
        {
          goto LABEL_144;
        }

        if (sub_1D1E6781C() == a1 && v69 == a2)
        {
          goto LABEL_142;
        }

        v70 = sub_1D1E6904C();

        if (v70)
        {
LABEL_144:
          v9 = 39;
          goto LABEL_9;
        }

        if (sub_1D1E6781C() != a1 || v71 != a2)
        {
          v72 = sub_1D1E6904C();

          if ((v72 & 1) == 0)
          {
            if (sub_1D1E6781C() == a1 && v73 == a2)
            {
              goto LABEL_153;
            }

            v74 = sub_1D1E6904C();

            if ((v74 & 1) == 0)
            {
              if (sub_1D1E6781C() == a1 && v75 == a2)
              {
                goto LABEL_153;
              }

              v76 = sub_1D1E6904C();

              if ((v76 & 1) == 0)
              {
                if (sub_1D1E6781C() == a1 && v77 == a2)
                {
                  v9 = 61;
                }

                else
                {
                  v78 = sub_1D1E6904C();

                  if (v78)
                  {
                    v9 = 61;
                    goto LABEL_9;
                  }

                  if (sub_1D1E6781C() == a1 && v79 == a2)
                  {
                    v9 = 62;
                  }

                  else
                  {
                    v80 = sub_1D1E6904C();

                    if (v80)
                    {
                      v9 = 62;
                      goto LABEL_9;
                    }

                    if (sub_1D1E6781C() != a1 || v81 != a2)
                    {
                      sub_1D1E6904C();
                    }

                    v9 = 0;
                  }
                }

                goto LABEL_8;
              }
            }
          }

          v9 = 50;
          goto LABEL_9;
        }

LABEL_153:
        v9 = 50;
        goto LABEL_8;
      }

      v9 = 35;
    }

LABEL_8:

    goto LABEL_9;
  }

  v9 = 17;
LABEL_9:

  *a3 = v9;
  return result;
}

unint64_t sub_1D175D1D0()
{
  result = qword_1EC642F00;
  if (!qword_1EC642F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F00);
  }

  return result;
}

uint64_t _s15HomeElementTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAB)
  {
    goto LABEL_17;
  }

  if (a2 + 85 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 85) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 85;
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

      return (*a1 | (v4 << 8)) - 85;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 85;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x56;
  v8 = v6 - 86;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15HomeElementTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 85 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 85) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAB)
  {
    v4 = 0;
  }

  if (a2 > 0xAA)
  {
    v5 = ((a2 - 171) >> 8) + 1;
    *result = a2 + 85;
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
    *result = a2 + 85;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D175D374()
{
  result = qword_1EC642F08;
  if (!qword_1EC642F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F08);
  }

  return result;
}

HomeDataModel::LaunchSheet_optional __swiftcall LaunchSheet.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::CameraAvailability_optional __swiftcall CameraAvailability.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t Double.metricsDuration.getter(double a1)
{
  if (a1 < 0.0)
  {
    return 0;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 1.84467441e19)
  {
    return a1;
  }

LABEL_9:
  __break(1u);
  return result;
}

float Double.metricsTimeToStartStream.getter(double a1)
{
  if (a1 <= 0.0)
  {
    return 0.0;
  }

  return a1;
}

unint64_t sub_1D175D5E0()
{
  result = qword_1EC642F10;
  if (!qword_1EC642F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F10);
  }

  return result;
}

unint64_t sub_1D175D638()
{
  result = qword_1EC642F18;
  if (!qword_1EC642F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchSheet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LaunchSheet(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CameraAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D175D92C()
{
  result = qword_1EC642F20;
  if (!qword_1EC642F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F20);
  }

  return result;
}

unint64_t sub_1D175D980()
{
  result = qword_1EC642F28;
  if (!qword_1EC642F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F28);
  }

  return result;
}

HomeDataModel::InteractionType_optional __swiftcall InteractionType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::TileGenericItemType_optional __swiftcall TileGenericItemType.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::TileItemName_optional __swiftcall TileItemName.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 0;
  v3 = 54;
  switch(rawValue)
  {
    case 0uLL:
      goto LABEL_72;
    case 1uLL:
      v2 = 1;
      goto LABEL_72;
    case 2uLL:
      v2 = 2;
      goto LABEL_72;
    case 3uLL:
      v2 = 3;
      goto LABEL_72;
    case 4uLL:
      v2 = 4;
      goto LABEL_72;
    case 5uLL:
      v2 = 5;
      goto LABEL_72;
    case 6uLL:
      v2 = 6;
      goto LABEL_72;
    case 7uLL:
      v2 = 7;
      goto LABEL_72;
    case 8uLL:
      v2 = 8;
      goto LABEL_72;
    case 9uLL:
      v2 = 9;
      goto LABEL_72;
    case 0xAuLL:
      v2 = 10;
      goto LABEL_72;
    case 0xBuLL:
      v2 = 11;
      goto LABEL_72;
    case 0xCuLL:
      v2 = 12;
      goto LABEL_72;
    case 0xDuLL:
      v2 = 13;
      goto LABEL_72;
    case 0xEuLL:
      v2 = 14;
      goto LABEL_72;
    case 0xFuLL:
      v2 = 15;
      goto LABEL_72;
    case 0x10uLL:
      v2 = 16;
      goto LABEL_72;
    case 0x11uLL:
      v2 = 17;
      goto LABEL_72;
    case 0x12uLL:
      v2 = 18;
      goto LABEL_72;
    case 0x13uLL:
      v2 = 19;
      goto LABEL_72;
    case 0x14uLL:
      v2 = 20;
      goto LABEL_72;
    case 0x15uLL:
      v2 = 21;
      goto LABEL_72;
    case 0x16uLL:
      v2 = 22;
      goto LABEL_72;
    case 0x17uLL:
      v2 = 23;
      goto LABEL_72;
    case 0x18uLL:
      v2 = 24;
      goto LABEL_72;
    case 0x19uLL:
      v2 = 25;
      goto LABEL_72;
    case 0x1AuLL:
      v2 = 26;
      goto LABEL_72;
    case 0x1BuLL:
      v2 = 27;
      goto LABEL_72;
    case 0x1CuLL:
      v2 = 28;
      goto LABEL_72;
    case 0x1DuLL:
      v2 = 29;
      goto LABEL_72;
    case 0x1EuLL:
      v2 = 30;
      goto LABEL_72;
    case 0x1FuLL:
      v2 = 31;
      goto LABEL_72;
    case 0x20uLL:
      v2 = 32;
      goto LABEL_72;
    case 0x21uLL:
      v2 = 33;
      goto LABEL_72;
    case 0x22uLL:
      v2 = 34;
      goto LABEL_72;
    case 0x23uLL:
      v2 = 35;
      goto LABEL_72;
    case 0x24uLL:
      v2 = 36;
      goto LABEL_72;
    case 0x25uLL:
      v2 = 37;
      goto LABEL_72;
    case 0x26uLL:
      v2 = 38;
      goto LABEL_72;
    case 0x27uLL:
      v2 = 39;
      goto LABEL_72;
    case 0x28uLL:
      v2 = 40;
      goto LABEL_72;
    case 0x29uLL:
      v2 = 41;
      goto LABEL_72;
    case 0x2AuLL:
      v2 = 42;
      goto LABEL_72;
    case 0x2BuLL:
      v2 = 43;
      goto LABEL_72;
    case 0x2CuLL:
      v2 = 44;
      goto LABEL_72;
    case 0x2DuLL:
      v2 = 45;
      goto LABEL_72;
    case 0x2EuLL:
      v2 = 46;
      goto LABEL_72;
    case 0x2FuLL:
      v2 = 47;
      goto LABEL_72;
    case 0x30uLL:
      v2 = 48;
      goto LABEL_72;
    case 0x31uLL:
      v2 = 49;
      goto LABEL_72;
    case 0x32uLL:
      v2 = 50;
      goto LABEL_72;
    case 0x33uLL:
      v2 = 51;
      goto LABEL_72;
    case 0x34uLL:
      v2 = 52;
      goto LABEL_72;
    case 0x35uLL:
      v2 = 53;
LABEL_72:
      v3 = v2;
      goto LABEL_73;
    case 0x36uLL:
LABEL_73:
      *v1 = v3;
      break;
    case 0x37uLL:
      *v1 = 55;
      break;
    case 0x38uLL:
      *v1 = 56;
      break;
    case 0x39uLL:
      *v1 = 57;
      break;
    case 0x3AuLL:
      *v1 = 58;
      break;
    case 0x3BuLL:
      *v1 = 59;
      break;
    case 0x3CuLL:
      *v1 = 60;
      break;
    case 0x3DuLL:
      *v1 = 61;
      break;
    case 0x3EuLL:
      *v1 = 62;
      break;
    case 0x3FuLL:
      *v1 = 63;
      break;
    case 0x40uLL:
      *v1 = 64;
      break;
    case 0x41uLL:
      *v1 = 65;
      break;
    case 0x42uLL:
      *v1 = 66;
      break;
    case 0x43uLL:
      *v1 = 67;
      break;
    case 0x44uLL:
      *v1 = 68;
      break;
    case 0x45uLL:
      *v1 = 69;
      break;
    case 0x46uLL:
      *v1 = 70;
      break;
    case 0x47uLL:
      *v1 = 71;
      break;
    default:
      *v1 = 72;
      break;
  }

  return rawValue;
}

HomeDataModel::TileInteractionRoomContext_optional __swiftcall TileInteractionRoomContext.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TileInteractionContext.genericContext.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TileInteractionContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D175E270(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      result = sub_1D175EE34(v6, type metadata accessor for TileInteractionContext);
      v8 = 1;
    }
  }

  else if (result > 4)
  {
    if (result == 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }
  }

  else if (result == 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  *a1 = v8;
  return result;
}

uint64_t type metadata accessor for TileInteractionContext(uint64_t a1)
{
  result = qword_1EC642F68;
  if (!qword_1EC642F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D175E270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileInteractionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TileInteractionContext.categoryContext.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TileInteractionContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D175E270(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v8 = 0x907060504030201uLL >> (8 * *v6);
  }

  else
  {
    result = sub_1D175EE34(v6, type metadata accessor for TileInteractionContext);
    LOBYTE(v8) = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t TileInteractionContext.roomContext.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoomType(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TileInteractionContext(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D175E270(v2, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1D175EE34(v9, type metadata accessor for TileInteractionContext);
    v11 = 0;
  }

  else
  {
    sub_1D175E564(v9, v6);
    v12 = sub_1D1E66A7C();
    result = (*(*(v12 - 8) + 48))(v6, 4, v12);
    if (result <= 1)
    {
      if (result)
      {
        v11 = 1;
      }

      else
      {
        result = sub_1D175EE34(v6, type metadata accessor for RoomType);
        v11 = 5;
      }
    }

    else if (result == 2)
    {
      v11 = 2;
    }

    else if (result == 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = 4;
    }
  }

  *a1 = v11;
  return result;
}

uint64_t sub_1D175E564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoomType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TileInfoBearer.metricsGenericItemName.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StaticCameraProfile(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticActionSet(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v3, a1);
  if (swift_dynamicCast())
  {
    sub_1D175EE34(v12, type metadata accessor for StaticActionSet);
    v16 = 1;
  }

  else if (swift_dynamicCast())
  {
    sub_1D175EE34(v8, type metadata accessor for StaticCameraProfile);
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  result = (*(v13 + 8))(v15, a1);
  *a2 = v16;
  return result;
}

uint64_t TileInfoBearer.metricsItemName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v42 = a2;
  v43 = a3;
  v30 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StaticMatterDevice(0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for StaticMediaSystem(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for StaticMediaProfile(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for StaticCameraProfile(0);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StaticAccessory(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v23, v3, a1);
  if (swift_dynamicCast())
  {
    (*(v42 + 104))(&v44, a1);
    ServiceKind.metricsItemName.getter(&v44 + 2);
    v24 = type metadata accessor for StaticAccessory;
    v25 = v20;
  }

  else
  {
    v26 = v42;
    if (swift_dynamicCast())
    {
      (*(v26 + 104))(&v44 + 1, a1, v26);
      ServiceKind.metricsItemName.getter(&v44 + 2);
      v24 = type metadata accessor for StaticService;
      v25 = v16;
    }

    else
    {
      if (swift_dynamicCast())
      {
        BYTE2(v44) = 1;
        v27 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v13 = v41;
        if (swift_dynamicCast())
        {
          BYTE2(v44) = 2;
          v27 = type metadata accessor for StaticActionSet;
        }

        else
        {
          v13 = v39;
          if (swift_dynamicCast())
          {
            BYTE2(v44) = 3;
            v27 = type metadata accessor for StaticCameraProfile;
          }

          else
          {
            v13 = v37;
            if (swift_dynamicCast())
            {
              BYTE2(v44) = 4;
              v27 = type metadata accessor for StaticMediaProfile;
            }

            else
            {
              v13 = v35;
              if (swift_dynamicCast())
              {
                BYTE2(v44) = 5;
                v27 = type metadata accessor for StaticMediaSystem;
              }

              else
              {
                v13 = v33;
                if (swift_dynamicCast())
                {
                  BYTE2(v44) = 6;
                  v27 = type metadata accessor for StaticMatterDevice;
                }

                else
                {
                  v13 = v31;
                  if (!swift_dynamicCast())
                  {
                    BYTE2(v44) = 8;
                    goto LABEL_21;
                  }

                  BYTE2(v44) = 7;
                  v27 = type metadata accessor for StaticEndpoint;
                }
              }
            }
          }
        }
      }

      v24 = v27;
      v25 = v13;
    }
  }

  sub_1D175EE34(v25, v24);
LABEL_21:
  result = (*(v21 + 8))(v23, a1);
  *v43 = BYTE2(v44);
  return result;
}

uint64_t sub_1D175EE34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

HomeDataModel::CameraFaceLayout __swiftcall CameraFaceLayout.init(count:)(Swift::UInt count)
{
  if (count - 1 < 9)
  {
    v2 = count;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  return count;
}

HomeDataModel::CameraFaceLayout_optional __swiftcall CameraFaceLayout.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D175EEC0()
{
  result = qword_1EC642F30;
  if (!qword_1EC642F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F30);
  }

  return result;
}

unint64_t sub_1D175EF18()
{
  result = qword_1EC642F38;
  if (!qword_1EC642F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F38);
  }

  return result;
}

unint64_t sub_1D175EF70()
{
  result = qword_1EC642F40;
  if (!qword_1EC642F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F40);
  }

  return result;
}

unint64_t sub_1D175EFC8()
{
  result = qword_1EC642F48;
  if (!qword_1EC642F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F48);
  }

  return result;
}

unint64_t sub_1D175F020()
{
  result = qword_1EC642F50;
  if (!qword_1EC642F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F50);
  }

  return result;
}

unint64_t sub_1D175F078()
{
  result = qword_1EC642F58;
  if (!qword_1EC642F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F58);
  }

  return result;
}

unint64_t sub_1D175F0D0()
{
  result = qword_1EC642F60;
  if (!qword_1EC642F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TileItemName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB9)
  {
    goto LABEL_17;
  }

  if (a2 + 71 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 71) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 71;
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

      return (*a1 | (v4 << 8)) - 71;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 71;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v8 = v6 - 72;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TileItemName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB9)
  {
    v4 = 0;
  }

  if (a2 > 0xB8)
  {
    v5 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
    *result = a2 + 71;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D175F3C4(uint64_t a1)
{
  result = type metadata accessor for RoomType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModeClusterSemanticTag.Common(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModeClusterSemanticTag.Common(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D175F57C()
{
  result = qword_1EC642F78;
  if (!qword_1EC642F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F78);
  }

  return result;
}

unint64_t sub_1D175F5D0()
{
  result = qword_1EC642F80;
  if (!qword_1EC642F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F80);
  }

  return result;
}

unint64_t sub_1D175F624()
{
  result = qword_1EC642F88;
  if (!qword_1EC642F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F88);
  }

  return result;
}

unint64_t sub_1D175F678()
{
  result = qword_1EC642F90;
  if (!qword_1EC642F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F90);
  }

  return result;
}

unint64_t sub_1D175F6CC()
{
  result = qword_1EC642F98;
  if (!qword_1EC642F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642F98);
  }

  return result;
}

unint64_t sub_1D175F720()
{
  result = qword_1EC642FA0;
  if (!qword_1EC642FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642FA0);
  }

  return result;
}

unint64_t sub_1D175F774()
{
  result = qword_1EC642FA8;
  if (!qword_1EC642FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642FA8);
  }

  return result;
}

uint64_t OSSignposter.withInterval<A>(_:id:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 128) = a4;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = sub_1D1E66FDC();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D175F8C8, 0, 0);
}

uint64_t sub_1D175F8C8(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if (result)
  {
    v5 = *(v1 + 32);
    if ((*(v1 + 128) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v7, v5, "", v6, 2u);
        MEMORY[0x1D3893640](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v8 = *(v1 + 56);
  (*(*(v1 + 88) + 16))(*(v1 + 96), *(v1 + 48), *(v1 + 80));
  sub_1D1E6705C();
  swift_allocObject();
  *(v1 + 104) = sub_1D1E6704C();
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  *v9 = v1;
  v9[1] = sub_1D175FAD8;
  v10 = *(v1 + 24);

  return v11(v10);
}

uint64_t sub_1D175FAD8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D175FC70;
  }

  else
  {
    v2 = sub_1D175FBEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D175FBEC()
{
  sub_1D175FF20(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D175FC70()
{
  sub_1D175FF20(*(v0 + 72), *(v0 + 32), *(v0 + 40), *(v0 + 128), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t OSSignposter.withInterval<A>(_:id:_:)@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a5;
  v8 = v7;
  v23 = a7;
  v24 = a6;
  LODWORD(v10) = a3;
  v26 = a2;
  v27 = a1;
  v11 = sub_1D1E66FDC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D1E66FFC();
  v16 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {

LABEL_11:
    (*(v12 + 16))(v14, a4, v11);
    sub_1D1E6705C();
    swift_allocObject();
    v20 = sub_1D1E6704C();
    v25();
    sub_1D175FF20(v8, v27, v26, v10, v20);
  }

  v22 = v10;
  v21 = v7;
  if ((v10 & 1) == 0)
  {
    if (v27)
    {
      v18 = v27;
LABEL_10:
      v10 = swift_slowAlloc();
      *v10 = 0;
      v19 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v15, v16, v19, v18, "", v10, 2u);
      MEMORY[0x1D3893640](v10, -1, -1);

      LOBYTE(v10) = v22;
      v8 = v21;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v27 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v18 = &v28;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D175FF20(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_1D1E6702C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v21 = sub_1D1E683DC();
  result = sub_1D1E6855C();
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

      sub_1D1E6706C();

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
      v19 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x1D3893640](v18, -1, -1);
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

uint64_t sub_1D17601BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 120) = a3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  v8 = sub_1D1E66FDC();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1760288, 0, 0);
}

uint64_t sub_1D1760288(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *(v1 + 24);
  if (*(v1 + 120))
  {
LABEL_5:
    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  v6 = swift_slowAlloc();
  *v6 = 0;
  v7 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v7, v5, "", v6, 2u);
  MEMORY[0x1D3893640](v6, -1, -1);
LABEL_10:

  (*(*(v1 + 80) + 16))(*(v1 + 88), *(v1 + 40), *(v1 + 72));
  sub_1D1E6705C();
  swift_allocObject();
  *(v1 + 96) = sub_1D1E6704C();
  if (qword_1EE07B1C0 != -1)
  {
    swift_once();
  }

  v8 = swift_task_alloc();
  *(v1 + 104) = v8;
  *v8 = v1;
  v8[1] = sub_1D1760474;
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);

  return sub_1D1DD18C0(v10, v9);
}

uint64_t sub_1D1760474(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1760574, 0, 0);
}

uint64_t sub_1D1760574()
{
  sub_1D175FF20(*(v0 + 48), *(v0 + 24), *(v0 + 32), *(v0 + 120), *(v0 + 96));

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_1D17605FC(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = a6;
  v24 = a2;
  LODWORD(v9) = a3;
  v26 = a1;
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a5;
  v14 = sub_1D1E66FFC();
  v15 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {

LABEL_11:
    (*(v11 + 16))(v13, a4, v10);
    sub_1D1E6705C();
    swift_allocObject();
    v19 = sub_1D1E6704C();
    v20 = [v23 userActionPredictionController];
    sub_1D175FF20(v25, v26, v24, v9, v19);

    return v20;
  }

  v22 = v6;
  HIDWORD(v21) = v9;
  if ((v9 & 1) == 0)
  {
    if (v26)
    {
      v9 = v26;
LABEL_10:
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v14, v15, v18, v9, "", v17, 2u);
      MEMORY[0x1D3893640](v17, -1, -1);

      LOBYTE(v9) = BYTE4(v21);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v26 >> 32)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v26 & 0xFFFFF800) != 0xD800)
  {
    if (v26 >> 16 <= 0x10)
    {
      v9 = &v27;
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t Action.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for Action.NaturalLightAction(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E66A7C();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Action.CharacteristicAction(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Action(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1771BF4(v1, v16, type metadata accessor for Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D1771B6C(v16, v5, type metadata accessor for Action.NaturalLightAction);
      MEMORY[0x1D3892850](2);
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      sub_1D176D4E8(a1, *&v5[*(v3 + 24)]);
      sub_1D1E6922C();
      if (*&v5[*(v3 + 32) + 8])
      {
        sub_1D1E6922C();
        sub_1D1E678EC();
      }

      else
      {
        sub_1D1E6922C();
      }

      v29 = type metadata accessor for Action.NaturalLightAction;
      v30 = v5;
      return sub_1D1771C5C(v30, v29);
    }

    v26 = *(v16 + 1);
    MEMORY[0x1D3892850](3);
    sub_1D1E6922C();
    sub_1D176F5DC(a1, v26);
  }

  if (EnumCaseMultiPayload)
  {
    v21 = *v16;
    v22 = v16[8];
    v23 = *(v16 + 2);
    v24 = v16[24];
    v25 = *(v16 + 4);
    MEMORY[0x1D3892850](1);
    *&v33 = v21;
    BYTE8(v33) = v22;
    v34 = v23;
    v35 = v24;
    v36 = v25;
    Action.MediaPlaybackAction.hash(into:)(a1);
  }

  sub_1D1771B6C(v16, v13, type metadata accessor for Action.CharacteristicAction);
  MEMORY[0x1D3892850](0);
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  LOBYTE(v33) = v13[v11[5]];
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v18 = &v13[v11[6]];
  v19 = v18[16];
  v33 = *v18;
  LOBYTE(v34) = v19;
  CharacteristicKind.Value.hash(into:)(a1);
  sub_1D1741C08(&v13[v11[7]], v10, &qword_1EC642590, qword_1D1E71260);
  v20 = v32;
  if ((*(v32 + 48))(v10, 1, v6) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v28 = v31;
    (*(v20 + 32))(v31, v10, v6);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v20 + 8))(v28, v6);
  }

  if (*&v13[v11[8] + 8])
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v29 = type metadata accessor for Action.CharacteristicAction;
  v30 = v13;
  return sub_1D1771C5C(v30, v29);
}

uint64_t Action.hashValue.getter()
{
  sub_1D1E6920C();
  Action.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1760E24()
{
  sub_1D1E6920C();
  Action.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1760E68(uint64_t a1)
{
  sub_1D1E6920C();
  Action.hash(into:)(v2);
  return sub_1D1E6926C();
}

void Action.init(action:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Action(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    Action.CharacteristicAction.init(action:)(v17, v16);
    if (v2)
    {
      return;
    }

    swift_storeEnumTagMultiPayload();
    v18 = v16;
    goto LABEL_13;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    Action.MediaPlaybackAction.init(action:)(v19, &v28);
    if (v2)
    {
      return;
    }

    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    *v14 = v28;
    v14[8] = v20;
    *(v14 + 2) = v21;
    v14[24] = v22;
    *(v14 + 4) = v23;
    swift_storeEnumTagMultiPayload();
    v18 = v14;
    goto LABEL_13;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    Action.NaturalLightAction.init(action:)(v24, v11);
    if (v2)
    {
      return;
    }

    swift_storeEnumTagMultiPayload();
    v18 = v11;
    goto LABEL_13;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    sub_1D17718F0();
    swift_allocError();
    swift_willThrow();

    return;
  }

  Action.MatterCommandAction.init(action:)(v25, &v28);
  if (!v2)
  {
    v26 = v29;
    *v8 = v28;
    *(v8 + 1) = v26;
    swift_storeEnumTagMultiPayload();
    v18 = v8;
LABEL_13:
    sub_1D1771B6C(v18, a2, type metadata accessor for Action);
  }
}

HMAction __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Action.createAction(in:)(HMHome in)
{
  v2 = v1;
  v4 = type metadata accessor for Action.NaturalLightAction(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v51 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v59 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = v48 - v10;
  v11 = type metadata accessor for Action.CharacteristicAction(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Action(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1771BF4(v2, v16, type metadata accessor for Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v44 = *(v16 + 1);
      LOBYTE(v63) = *v16;
      v64 = v44;
      v18 = sub_1D1778E28(in.super.isa);

      return v18;
    }

    sub_1D1771B6C(v16, v6, type metadata accessor for Action.NaturalLightAction);
    v18 = sub_1D1786138(in.super.isa);
    v19 = type metadata accessor for Action.NaturalLightAction;
    v20 = v6;
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D1771B6C(v16, v13, type metadata accessor for Action.CharacteristicAction);
    v18 = Action.CharacteristicAction.createAction(in:)(in.super.isa);
    v19 = type metadata accessor for Action.CharacteristicAction;
    v20 = v13;
LABEL_6:
    sub_1D1771C5C(v20, v19);
    return v18;
  }

  v21 = *v16;
  v22 = *(v16 + 4);
  v23 = [(objc_class *)in.super.isa accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v24 = sub_1D1E67C1C();

  v25 = sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
  v26 = sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
  v61 = v21;

  v50 = v26;
  v63 = MEMORY[0x1D38917C0](0, v25, v26);
  if (v24 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v48[1] = v25;
    v48[2] = v22;
    v28 = 0;
    v54 = v24 & 0xFFFFFFFFFFFFFF8;
    v55 = v24 & 0xC000000000000001;
    v49 = v24;
    v52 = i;
    v53 = v24 + 32;
    v60 = v61 + 56;
    v58 = v51 + 16;
    v25 = (v51 + 8);
    v29 = v59;
    while (1)
    {
      if (v55)
      {
        v31 = MEMORY[0x1D3891EF0](v28, v49);
      }

      else
      {
        if (v28 >= *(v54 + 16))
        {
          goto LABEL_30;
        }

        v31 = *(v53 + 8 * v28);
      }

      v32 = v31;
      if (__OFADD__(v28++, 1))
      {
        break;
      }

      v34 = [v31 mediaProfile];

      if (v34)
      {
        v57 = v28;
        v56 = v34;
        v35 = [v56 uniqueIdentifier];
        sub_1D1E66A5C();

        if (*(v61 + 16) && (v36 = v61, sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v37 = sub_1D1E676DC(), v38 = -1 << *(v36 + 32), v24 = v37 & ~v38, ((*(v60 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
        {
          v39 = ~v38;
          v40 = *(v51 + 72);
          v41 = *(v51 + 16);
          while (1)
          {
            v41(v29, *(v61 + 48) + v40 * v24, v7);
            sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v42 = sub_1D1E6775C();
            v22 = *v25;
            (*v25)(v29, v7);
            if (v42)
            {
              break;
            }

            v24 = (v24 + 1) & v39;
            if (((*(v60 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v22(v62, v7);
          v43 = v56;

          sub_1D1763114(&v65, v43);
        }

        else
        {
LABEL_10:
          (*v25)(v62, v7);
          v30 = v56;
        }

        i = v52;
        v28 = v57;
      }

      if (v28 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

LABEL_27:

  v45 = objc_allocWithZone(MEMORY[0x1E696CBE8]);
  v46 = sub_1D1E6815C();

  v18 = [v45 initWithMediaProfiles:v46 playbackState:4 volume:0];

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v18;
}

uint64_t Action.Error.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

uint64_t sub_1D17618F8()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

uint64_t sub_1D176193C(uint64_t a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

unint64_t Action.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Action.NaturalLightAction(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Action.CharacteristicAction(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Action(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1771BF4(v1, v10, type metadata accessor for Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D1771B6C(v10, v4, type metadata accessor for Action.NaturalLightAction);
      v12 = Action.NaturalLightAction.debugDescription.getter();
      sub_1D1771C5C(v4, type metadata accessor for Action.NaturalLightAction);
      return v12;
    }

    v17 = *(v10 + 1);
    LOBYTE(v20) = *v10;
    v21 = v17;
    v12 = Action.MatterCommandAction.debugDescription.getter();
LABEL_8:

    return v12;
  }

  if (EnumCaseMultiPayload)
  {
    v13 = v10[8];
    v14 = *(v10 + 2);
    v15 = v10[24];
    v16 = *(v10 + 4);
    v20 = *v10;
    LOBYTE(v21) = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v12 = Action.MediaPlaybackAction.debugDescription.getter();

    goto LABEL_8;
  }

  sub_1D1771B6C(v10, v7, type metadata accessor for Action.CharacteristicAction);
  v12 = Action.CharacteristicAction.debugDescription.getter();
  sub_1D1771C5C(v7, type metadata accessor for Action.CharacteristicAction);
  return v12;
}

uint64_t sub_1D1761BE0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D1E6920C();
  v6 = dword_1D1E711E0[a2];
  sub_1D1E6924C();
  v7 = sub_1D1E6926C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (dword_1D1E711E0[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1D193DDDC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D1761CF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for StaticCameraProfile(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  StaticCameraProfile.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for StaticCameraProfile);
      v15 = _s13HomeDataModel19StaticCameraProfileV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for StaticCameraProfile);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticCameraProfile);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for StaticCameraProfile);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for StaticCameraProfile);
    *&v20[0] = *v3;
    sub_1D193DF58(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for StaticCameraProfile);
    return 1;
  }
}

uint64_t sub_1D1761F38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for StaticMediaProfile(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  StaticMediaProfile.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for StaticMediaProfile);
      v15 = _s13HomeDataModel18StaticMediaProfileV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for StaticMediaProfile);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticMediaProfile);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for StaticMediaProfile);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for StaticMediaProfile);
    *&v20[0] = *v3;
    sub_1D193E19C(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for StaticMediaProfile);
    return 1;
  }
}

uint64_t sub_1D1762178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for StaticMediaSystem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  StaticMediaSystem.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for StaticMediaSystem);
      v15 = _s13HomeDataModel17StaticMediaSystemV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for StaticMediaSystem);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticMediaSystem);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for StaticMediaSystem);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for StaticMediaSystem);
    *&v20[0] = *v3;
    sub_1D193E3E0(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for StaticMediaSystem);
    return 1;
  }
}

uint64_t sub_1D17623B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for StaticAccessory(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  StaticAccessory.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for StaticAccessory);
      v15 = _s13HomeDataModel15StaticAccessoryV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for StaticAccessory);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticAccessory);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for StaticAccessory);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for StaticAccessory);
    *&v20[0] = *v3;
    sub_1D193E624(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for StaticAccessory);
    return 1;
  }
}

uint64_t sub_1D17625F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  StaticService.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for StaticService);
      v15 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for StaticService);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticService);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for StaticService);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for StaticService);
    *&v20[0] = *v3;
    sub_1D1951BAC(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for StaticService);
    return 1;
  }
}

uint64_t sub_1D1762838(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for StaticServiceGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for StaticServiceGroup);
      v15 = _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for StaticServiceGroup);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticServiceGroup);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for StaticServiceGroup);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for StaticServiceGroup);
    *&v20[0] = *v3;
    sub_1D193E868(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for StaticServiceGroup);
    return 1;
  }
}

uint64_t sub_1D1762A78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for StaticServiceGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  StaticServiceGroup.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for StaticServiceGroup);
      v15 = _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for StaticServiceGroup);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticServiceGroup);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for StaticServiceGroup);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for StaticServiceGroup);
    *&v20[0] = *v3;
    sub_1D193EAAC(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for StaticServiceGroup);
    return 1;
  }
}

uint64_t sub_1D1762CB8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1D1E676DC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1D1E6775C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D193ECF0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D1762FC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D1E6920C();
  sub_1D1E678EC();
  v8 = sub_1D1E6926C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D1E6904C() & 1) != 0)
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

    sub_1D193F1AC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D1763114(uint64_t *a1, void *a2)
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

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176B448(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D1937C54(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D193F32C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

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

uint64_t sub_1D176334C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for Action(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  Action.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for Action);
      v15 = _s13HomeDataModel6ActionO2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for Action);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for Action);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for Action);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for Action);
    *&v20[0] = *v3;
    sub_1D193F350(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for Action);
    return 1;
  }
}

uint64_t sub_1D176358C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for Event(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  Event.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for Event);
      v15 = _s13HomeDataModel5EventO2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for Event);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for Event);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for Event);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for Event);
    *&v20[0] = *v3;
    sub_1D193F594(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for Event);
    return 1;
  }
}

uint64_t sub_1D17637CC(uint64_t *a1, void *a2)
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

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176B638(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D193862C(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D193F7D8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

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

uint64_t sub_1D1763A04(uint64_t *a1, void *a2)
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

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC643058, 0x1E696CB30);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176B828(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D1938640(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC643058, 0x1E696CB30);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D193F98C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

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

uint64_t sub_1D1763C54(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v4 = type metadata accessor for StaticZone(0);
  v65 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v64 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v50 - v7;
  v8 = sub_1D1E66A7C();
  v67 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  v52 = v2;
  v62 = *v2;
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v15 = (a2 + *(v4 + 20));
  v16 = v15[1];
  v55 = *v15;
  v54 = v16;
  sub_1D1E678EC();
  v57 = v4;
  v17 = *(v4 + 24);
  v61 = a2;
  v18 = *(a2 + v17);
  MEMORY[0x1D3892850](*(v18 + 16));
  v68 = v18;
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v67 + 16);
    v21 = v68 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v22 = *(v67 + 72);
    v23 = (v67 + 8);
    do
    {
      v20(v14, v21, v8);
      sub_1D1E676EC();
      (*v23)(v14, v8);
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  v24 = sub_1D1E6926C();
  v25 = -1 << *(v62 + 32);
  v26 = v24 & ~v25;
  v59 = v62 + 56;
  if ((*(v62 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v56 = ~v25;
    v27 = v64;
    v60 = *(v65 + 72);
    v65 = v67 + 16;
    v28 = (v67 + 8);
    v29 = v69;
    while (1)
    {
      v30 = *(v62 + 48);
      v63 = v26;
      v58 = v60 * v26;
      sub_1D1771BF4(v30 + v60 * v26, v27, type metadata accessor for StaticZone);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v31 = (v64 + *(v57 + 20));
        result = *v31;
        v33 = *v31 == v55 && v31[1] == v54;
        if (v33 || (result = sub_1D1E6904C(), (result & 1) != 0))
        {
          v34 = *(v64 + *(v57 + 24));
          v35 = *(v34 + 16);
          if (v35 == *(v68 + 16))
          {
            break;
          }
        }
      }

LABEL_6:
      v27 = v64;
      sub_1D1771C5C(v64, type metadata accessor for StaticZone);
      v26 = (v63 + 1) & v56;
      if (((*(v59 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (!v35 || v34 == v68)
    {
LABEL_21:
      sub_1D1771C5C(v64, type metadata accessor for StaticZone);
      sub_1D1771C5C(v61, type metadata accessor for StaticZone);
      sub_1D1771BF4(*(v62 + 48) + v58, v53, type metadata accessor for StaticZone);
      return 0;
    }

    else
    {
      v36 = 0;
      v37 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v38 = v34 + v37;
      v39 = v68 + v37;
      while (v36 < *(v34 + 16))
      {
        v40 = *(v67 + 72) * v36;
        v41 = *(v67 + 16);
        result = v41(v29, v38 + v40, v8);
        if (v36 >= *(v68 + 16))
        {
          goto LABEL_24;
        }

        v42 = v66;
        v41(v66, v39 + v40, v8);
        sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v43 = sub_1D1E6775C();
        v44 = *v28;
        v45 = v42;
        v29 = v69;
        (*v28)(v45, v8);
        result = (v44)(v29, v8);
        if ((v43 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (v35 == ++v36)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }
  }

  else
  {
LABEL_22:
    v46 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v61;
    v49 = v51;
    sub_1D1771BF4(v61, v51, type metadata accessor for StaticZone);
    v70 = *v46;
    sub_1D193F9CC(v49, v26, isUniquelyReferenced_nonNull_native);
    *v46 = v70;
    sub_1D1771B6C(v48, v53, type metadata accessor for StaticZone);
    return 1;
  }

  return result;
}

uint64_t sub_1D17642C8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1D1E6920C();
  if (a2 == 2)
  {
    v7 = 2;
  }

  else
  {
    if (a2 != 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6922C();
      if (a2)
      {
        sub_1D176D4E8(v24, a2);
      }

      goto LABEL_8;
    }

    v7 = 0;
  }

  MEMORY[0x1D3892850](v7);
LABEL_8:
  v8 = sub_1D1E6926C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v24[0] = *v3;
    sub_1D1771B24(a2);
    sub_1D193FFC4(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = *&v24[0];
    *a1 = a2;
    return 1;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v6 + 48) + 8 * v10);
    if (v12 == 2)
    {
      break;
    }

    if (v12 == 1)
    {
      if (a2 == 1)
      {
        goto LABEL_30;
      }

      v13 = a2;
      v14 = 1;
      v15 = a2;
      goto LABEL_18;
    }

    v15 = a2;
    if ((a2 - 1) < 2)
    {
      goto LABEL_17;
    }

    if (!v12)
    {
      sub_1D1771B24(a2);
      sub_1D1771B24(a2);
      sub_1D1771B24(0);
      sub_1D1771B10(0);
      sub_1D1771B10(a2);
      v15 = a2;
      if (!a2)
      {
        v23 = 0;
        goto LABEL_31;
      }

      goto LABEL_19;
    }

    v16 = *(*(v6 + 48) + 8 * v10);
    if (!a2)
    {
      sub_1D1771B24(0);
      v15 = 0;
      v12 = v16;
LABEL_17:
      v14 = v12;
      sub_1D1771B24(v15);
      v13 = v14;
      goto LABEL_18;
    }

    sub_1D1771B24(a2);
    v17 = v16;
    sub_1D1771B24(v16);
    sub_1D1771B24(a2);
    sub_1D1771B24(v16);
    v18 = sub_1D17A6E98(v16, a2);
    sub_1D1771B10(a2);
    sub_1D1771B10(v17);
    sub_1D1771B10(a2);
    sub_1D1771B10(v17);
    if (v18)
    {
      v23 = a2;
      goto LABEL_31;
    }

LABEL_20:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (a2 != 2)
  {
    v13 = a2;
    v14 = 2;
    v15 = a2;
LABEL_18:
    sub_1D1771B24(v13);
    sub_1D1771B10(v14);
LABEL_19:
    sub_1D1771B10(v15);
    goto LABEL_20;
  }

LABEL_30:
  v21 = *(*(v6 + 48) + 8 * v10);
  sub_1D1771B10(v21);
  v23 = v21;
LABEL_31:
  sub_1D1771B10(v23);
  v22 = *(*(v6 + 48) + 8 * v10);
  *a1 = v22;
  sub_1D1771B24(v22);
  return 0;
}

uint64_t sub_1D17645AC(_BYTE *a1, char a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = v3;
  v8 = *v5;
  sub_1D1E6920C();
  v9 = a2 & 1;
  MEMORY[0x1D3892850](v9);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v8 + 48);
      if (*(v14 + v12) == v9)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v9) = *(v14 + v12);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;
    a3(v9, v12, isUniquelyReferenced_nonNull_native);
    *v5 = v17;
    result = 1;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1D17646BC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FE8, &qword_1D1EB2A90);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v27 - v4;
  v6 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v29 = v2;
  v13 = *v2;
  sub_1D1E6920C();
  v35 = a2;
  sub_1D1771BF4(a2, v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
  MEMORY[0x1D3892850](0);
  v14 = sub_1D1E66A7C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v15 = *(*(v14 - 8) + 8);
  v28 = v12;
  v15(v12, v14);
  v16 = sub_1D1E6926C();
  v34 = v13;
  v17 = -1 << *(v13 + 32);
  v18 = v16 & ~v17;
  v32 = v13 + 56;
  if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v31 = ~v17;
    v19 = *(v7 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v34 + 48) + v19 * v18, v10, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v20 = *(v33 + 48);
      sub_1D1771BF4(v10, v5, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1771BF4(v35, &v5[v20], type metadata accessor for WriteInProgressStatusViewModel.ID);
      v21 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D1771C5C(v10, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v15(&v5[v20], v14);
      v15(v5, v14);
      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v31;
      if (((*(v32 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(v35, type metadata accessor for WriteInProgressStatusViewModel.ID);
    sub_1D1771BF4(*(v34 + 48) + v19 * v18, v30, type metadata accessor for WriteInProgressStatusViewModel.ID);
    return 0;
  }

  else
  {
LABEL_5:
    v22 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v35;
    v25 = v28;
    sub_1D1771BF4(v35, v28, type metadata accessor for WriteInProgressStatusViewModel.ID);
    v36 = *v22;
    sub_1D1940454(v25, v18, isUniquelyReferenced_nonNull_native);
    *v22 = v36;
    sub_1D1771B6C(v24, v30, type metadata accessor for WriteInProgressStatusViewModel.ID);
    return 1;
  }
}

uint64_t sub_1D1764A98(uint64_t *a1, void *a2)
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

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176BA18(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D1939118(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D19407F8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

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

uint64_t sub_1D1764CD0(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v4 = type metadata accessor for StaticResident(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v50[-v9];
  v57 = v2;
  v10 = *v2;
  sub_1D1E6920C();
  StaticResident.hash(into:)(v59);
  v11 = sub_1D1E6926C();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    v53 = v15;
    v54 = ~v12;
    while (1)
    {
      v16 = v15 * v13;
      sub_1D1771BF4(*(v10 + 48) + v15 * v13, v8, type metadata accessor for StaticResident);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        goto LABEL_4;
      }

      v17 = v4[5];
      v18 = *&v8[v17];
      v19 = *&v8[v17 + 8];
      v20 = (a2 + v17);
      v21 = v18 == *v20 && v19 == v20[1];
      if (!v21 && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_4;
      }

      v22 = v4[6];
      v23 = &v8[v22];
      v24 = *&v8[v22 + 8];
      v25 = (a2 + v22);
      v26 = v25[1];
      if (v24)
      {
        if (!v26)
        {
          goto LABEL_4;
        }

        v27 = *v23 == *v25 && v24 == v26;
        if (!v27 && (sub_1D1E6904C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v26)
      {
        goto LABEL_4;
      }

      if ((sub_1D17B30EC() & 1) == 0 || (sub_1D17B30EC() & 1) == 0)
      {
        goto LABEL_4;
      }

      v28 = v4[9];
      v29 = *&v8[v28];
      v30 = v8[v28 + 8];
      v31 = a2 + v28;
      v32 = *v31;
      v33 = *(v31 + 8);
      v55 = v29;
      if (v30 > 1)
      {
        if (v30 == 2)
        {
          if (v33 != 2)
          {
            goto LABEL_55;
          }

          v35 = v32;
          sub_1D1771B4C(v32, 2);
          v36 = v55;
          sub_1D1771B5C(v55, 2);
          sub_1D1771B5C(v35, 2);
          v37 = v36;
          v38 = v35 ^ v36;
          v15 = v53;
          v14 = v54;
          if ((v38 & 1) != 0 || ((v37 >> 8) & 1) != ((v35 >> 8) & 1))
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v29 > 1)
          {
            if (v29 == 2)
            {
              if (v33 != 3 || v32 != 2)
              {
                goto LABEL_55;
              }

              sub_1D1771B4C(2, 3);
              sub_1D1771B5C(2, 3);
              sub_1D1771B5C(2, 3);
              v42 = 2;
            }

            else
            {
              if (v33 != 3 || v32 != 3)
              {
                goto LABEL_55;
              }

              sub_1D1771B4C(3, 3);
              sub_1D1771B5C(3, 3);
              v42 = 3;
            }
          }

          else if (v29)
          {
            if (v33 != 3 || v32 != 1)
            {
              goto LABEL_55;
            }

            sub_1D1771B4C(1, 3);
            sub_1D1771B5C(1, 3);
            sub_1D1771B5C(1, 3);
            v42 = 1;
          }

          else
          {
            if (v33 != 3 || v32)
            {
              goto LABEL_55;
            }

            sub_1D1771B4C(0, 3);
            sub_1D1771B5C(0, 3);
            sub_1D1771B5C(0, 3);
            v42 = 0;
          }

          sub_1D1771B5C(v42, 3);
          v15 = v53;
          v14 = v54;
        }

        goto LABEL_53;
      }

      if (v30)
      {
        break;
      }

      if (v33)
      {
        v34 = v32;
        sub_1D1771B4C(v29, 0);

        v32 = v34;
LABEL_55:
        v43 = v32;
        sub_1D1771B4C(v32, v33);
        v44 = v55;
        sub_1D1771B5C(v55, v30);
        sub_1D1771B5C(v43, v33);
        sub_1D1771B5C(v44, v30);
        v15 = v53;
        v14 = v54;
        goto LABEL_4;
      }

      if (!v29)
      {
        v29 = v32;
        sub_1D1771B4C(v32, 0);
        sub_1D1771B4C(v29, 0);
        sub_1D1771B4C(0, 0);
        sub_1D1771B4C(v29, 0);
        sub_1D1771B4C(0, 0);
        sub_1D1771B5C(0, 0);
        sub_1D1771B5C(v29, 0);
        v15 = v53;
        v14 = v54;
        if (v29)
        {
          sub_1D1771B5C(v29, 0);
LABEL_59:
          sub_1D1771B5C(v29, 0);
          sub_1D1771B5C(0, 0);
          goto LABEL_4;
        }

        sub_1D1771B5C(0, 0);
        sub_1D1771B5C(0, 0);
LABEL_53:
        if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
        {
          sub_1D1771C5C(v8, type metadata accessor for StaticResident);
          sub_1D1771C5C(a2, type metadata accessor for StaticResident);
          sub_1D1771BF4(*(v10 + 48) + v16, v58, type metadata accessor for StaticResident);
          return 0;
        }

        goto LABEL_4;
      }

      v15 = v53;
      v14 = v54;
      if (!v32)
      {
        sub_1D1771B4C(0, 0);
        sub_1D1771B4C(v29, 0);
        sub_1D1771B4C(0, 0);
        goto LABEL_59;
      }

      v52 = v32;
      sub_1D1771B4C(v29, 0);
      sub_1D1771B4C(v52, 0);
      sub_1D1771B4C(v29, 0);
      sub_1D1771B4C(v52, 0);
      sub_1D1771B4C(v29, 0);
      v51 = sub_1D17A6E98(v29, v52);
      sub_1D1771B5C(v29, 0);
      sub_1D1771B5C(v52, 0);
      sub_1D1771B5C(v29, 0);
      sub_1D1771B5C(v52, 0);
      sub_1D1771B5C(v29, 0);
      if (v51)
      {
        goto LABEL_53;
      }

LABEL_4:
      sub_1D1771C5C(v8, type metadata accessor for StaticResident);
      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    if (v33 != 1)
    {
      goto LABEL_55;
    }

    v39 = v32;
    sub_1D1771B4C(v32, 1);
    v40 = v55;
    sub_1D1771B5C(v55, 1);
    sub_1D1771B5C(v39, 1);
    v41 = v40;
    v21 = (v39 ^ v40) == 0;
    v15 = v53;
    v14 = v54;
    if (!v21)
    {
      goto LABEL_4;
    }

    sub_1D1771B5C(v41, 1);
    goto LABEL_53;
  }

LABEL_61:
  v45 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = v56;
  sub_1D1771BF4(a2, v56, type metadata accessor for StaticResident);
  *&v59[0] = *v45;
  sub_1D194081C(v47, v13, isUniquelyReferenced_nonNull_native);
  v48 = v58;
  *v45 = *&v59[0];
  sub_1D1771B6C(a2, v48, type metadata accessor for StaticResident);
  return 1;
}

uint64_t sub_1D17653AC(_WORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1D3892820](*(*v2 + 40), a2, 2);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D1940EF8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D1765494(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1D3892820](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D194101C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D176557C(uint64_t *a1, void *a2)
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

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176BC08(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D1939A58(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D1941140(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

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

uint64_t sub_1D17657B4(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D1E6920C();
  sub_1D1E6924C();
  v6 = sub_1D1E6926C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D1941164(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D17658AC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D1E6920C();
  v6 = dword_1D1E71164[a2];
  sub_1D1E6924C();
  v7 = sub_1D1E6926C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (dword_1D1E71164[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1D19412C0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D17659C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a2);
  sub_1D1E678EC();
  v26 = a5;
  sub_1D176D34C(v27, a5);
  v11 = sub_1D1E6926C();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v17 = (*(v10 + 48) + 32 * v13);
      if (*v17 == a2)
      {
        v18 = v17[1] == a3 && v17[2] == a4;
        if (v18 || (sub_1D1E6904C() & 1) != 0)
        {

          v16 = sub_1D17A7B94(v15, v26);

          if (v16)
          {
            break;
          }
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v21 = *(v10 + 48) + 32 * v13;
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    *a1 = *v21;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;

    return 0;
  }

  else
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v27[0] = *v24;

    sub_1D194143C(a2, a3, a4, v26, v13, isUniquelyReferenced_nonNull_native);
    *v24 = *&v27[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = v26;
    return 1;
  }
}

uint64_t sub_1D1765BC4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D1E6920C();
  v6 = a2 >> 6;
  sub_1D1E6923C();
  sub_1D1E678EC();
  v7 = sub_1D1E6926C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(v5 + 48);
      v12 = *(v11 + v9);
      if (v12 >> 6)
      {
        if (v12 >> 6 == 1)
        {
          if (v6 != 1)
          {
            goto LABEL_4;
          }
        }

        else if (v6 != 2)
        {
          goto LABEL_4;
        }

        if (((v12 ^ a2) & 0x3F) == 0)
        {
          result = 0;
          LOBYTE(a2) = *(v11 + v9);
          goto LABEL_15;
        }
      }

      else if (a2 <= 0x3Fu && v12 == a2)
      {
        result = 0;
        goto LABEL_15;
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  sub_1D194162C(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v15;
  result = 1;
LABEL_15:
  *a1 = a2;
  return result;
}

uint64_t sub_1D1765D80(_BYTE *a1, uint64_t a2)
{
  v5 = BYTE1(a2);
  v6 = *v2;
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E678EC();
  v7 = sub_1D1E6926C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = (*(v6 + 48) + 2 * v9);
      v12 = *v11;
      v13 = v11[1];
      if (v13)
      {
        if (v13 == 1)
        {
          if (v5 != 1)
          {
            goto LABEL_5;
          }
        }

        else if (v5 != 2)
        {
          goto LABEL_5;
        }
      }

      else if (v5)
      {
        goto LABEL_5;
      }

      if (v12 == a2)
      {
        result = 0;
        LOBYTE(v5) = v13;
        goto LABEL_14;
      }

LABEL_5:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  sub_1D194182C(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v16;
  result = 1;
LABEL_14:
  *a1 = a2;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D1765F64(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v4;
  v8 = sub_1D1E6920C();
  a3(v8);
  sub_1D1E678EC();

  v9 = sub_1D1E6926C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (a3)();
      v15 = v14;
      if (v13 == (a3)() && v15 == v16)
      {
        break;
      }

      v18 = sub_1D1E6904C();

      if (v18)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v7 + 48) + v11);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    a4(a2, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v23;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D1766130(void *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v3;
  v8 = sub_1D1E691FC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    a3(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D1766218(uint64_t a1, void *a2)
{
  v53 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v51 = (&v50 - v9);
  v52 = v2;
  v10 = *v2;
  sub_1D1E6920C();
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 8))(v11, v12);
  sub_1D1E678EC();

  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 16))(v13, v14);
  sub_1D1E678EC();

  v15 = *(v4 + 36);
  sub_1D1E66A7C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v55 = v15;
  sub_1D1E676EC();
  v56 = v4;
  v54 = *(a2 + *(v4 + 40));
  MEMORY[0x1D3892890]();
  v16 = sub_1D1E6926C();
  v17 = v10 + 56;
  v60 = v10 + 56;
  v61 = v10;
  v18 = -1 << *(v10 + 32);
  v19 = v16 & ~v18;
  if ((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v58 = ~v18;
    v59 = *(v5 + 72);
    v20 = &qword_1EC643018;
    v21 = &qword_1D1E9AC00;
    do
    {
      v22 = *(v61 + 48);
      v57 = v59 * v19;
      v23 = v20;
      v24 = v21;
      sub_1D1741C08(v22 + v59 * v19, v8, v20, v21);
      v25 = v8[3];
      v26 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v25);
      v27 = (*(v26 + 8))(v25, v26);
      v29 = v28;
      v31 = a2[3];
      v30 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v31);
      if (v27 == (*(v30 + 8))(v31, v30) && v29 == v32)
      {
      }

      else
      {
        v34 = sub_1D1E6904C();

        if ((v34 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v35 = v8[3];
      v36 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v35);
      v37 = (*(v36 + 16))(v35, v36);
      v39 = v38;
      v40 = a2[3];
      v41 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v40);
      if (v37 == (*(v41 + 16))(v40, v41) && v39 == v42)
      {
      }

      else
      {
        v44 = sub_1D1E6904C();

        if ((v44 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
LABEL_3:
        v20 = v23;
        v21 = v24;
        sub_1D1741A30(v8, v23, v24);
        goto LABEL_4;
      }

      v45 = *(v8 + *(v56 + 40));
      v20 = v23;
      v21 = v24;
      sub_1D1741A30(v8, v23, v24);
      if (v45 == v54)
      {
        sub_1D1741A30(a2, &qword_1EC643018, &qword_1D1E9AC00);
        sub_1D1741C08(*(v61 + 48) + v57, v53, &qword_1EC643018, &qword_1D1E9AC00);
        return 0;
      }

LABEL_4:
      v19 = (v19 + 1) & v58;
    }

    while (((*(v60 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  v47 = v52;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v51;
  sub_1D1741C08(a2, v51, &qword_1EC643018, &qword_1D1E9AC00);
  v62 = *v47;
  sub_1D1941DD8(v49, v19, isUniquelyReferenced_nonNull_native);
  *v47 = v62;
  sub_1D1741A90(a2, v53, &qword_1EC643018, &qword_1D1E9AC00);
  return 1;
}

uint64_t sub_1D1766770(uint64_t a1, void *a2)
{
  v52 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v50 = (&v50 - v9);
  v51 = v2;
  v10 = *v2;
  sub_1D1E6920C();
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 8))(v11, v12);
  sub_1D1E678EC();

  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 16))(v13, v14);
  sub_1D1E678EC();

  v15 = *(v4 + 36);
  v16 = sub_1D1E66A7C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v55 = v15;
  sub_1D1E676EC();
  v56 = v4;
  v53 = *(v4 + 40);
  v54 = v16;
  sub_1D1E676EC();
  v17 = sub_1D1E6926C();
  v60 = v10 + 56;
  v61 = v10;
  v18 = -1 << *(v10 + 32);
  v19 = v17 & ~v18;
  if ((*(v10 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v58 = ~v18;
    v59 = *(v5 + 72);
    v20 = &qword_1EC643010;
    v21 = &qword_1D1E90E20;
    do
    {
      v22 = *(v61 + 48);
      v57 = v59 * v19;
      v23 = v20;
      v24 = v21;
      sub_1D1741C08(v22 + v59 * v19, v8, v20, v21);
      v25 = v8[3];
      v26 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v25);
      v27 = (*(v26 + 8))(v25, v26);
      v29 = v28;
      v31 = a2[3];
      v30 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v31);
      if (v27 == (*(v30 + 8))(v31, v30) && v29 == v32)
      {
      }

      else
      {
        v34 = sub_1D1E6904C();

        if ((v34 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v35 = v8[3];
      v36 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v35);
      v37 = (*(v36 + 16))(v35, v36);
      v39 = v38;
      v40 = a2[3];
      v41 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v40);
      if (v37 == (*(v41 + 16))(v40, v41) && v39 == v42)
      {
      }

      else
      {
        v44 = sub_1D1E6904C();

        if ((v44 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
LABEL_3:
        v20 = v23;
        v21 = v24;
        sub_1D1741A30(v8, v23, v24);
        goto LABEL_4;
      }

      sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v45 = sub_1D1E6775C();
      v20 = v23;
      v21 = v24;
      sub_1D1741A30(v8, v23, v24);
      if (v45)
      {
        sub_1D1741A30(a2, &qword_1EC643010, &qword_1D1E90E20);
        sub_1D1741C08(*(v61 + 48) + v57, v52, &qword_1EC643010, &qword_1D1E90E20);
        return 0;
      }

LABEL_4:
      v19 = (v19 + 1) & v58;
    }

    while (((*(v60 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  v47 = v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v50;
  sub_1D1741C08(a2, v50, &qword_1EC643010, &qword_1D1E90E20);
  v62 = *v47;
  sub_1D19422F0(v49, v19, isUniquelyReferenced_nonNull_native);
  *v47 = v62;
  sub_1D1741A90(a2, v52, &qword_1EC643010, &qword_1D1E90E20);
  return 1;
}

uint64_t sub_1D1766D1C(uint64_t *a1, void *a2)
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

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176BDF8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D193B3B4(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D1942848(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

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

uint64_t sub_1D1766F54(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v40 - v4;
  v46 = _s7MergeIdVMa(0);
  v56 = *(v46 - 8);
  v6 = MEMORY[0x1EEE9AC00](v46);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v40 - v9;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v50 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v41 = v2;
  v58 = *v2;
  sub_1D1E6920C();
  v59 = a2;
  sub_1D1741C08(a2, v18, &qword_1EC642590, qword_1D1E71260);
  v19 = v11 + 48;
  v51 = *(v11 + 48);
  if (v51(v18, 1, v10) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v11 + 32))(v13, v18, v10);
    sub_1D1E6922C();
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v11 + 8))(v13, v10);
  }

  v20 = (v59 + *(v46 + 20));
  v21 = *v20;
  v52 = v20[1];
  v53 = v21;
  sub_1D1E678EC();
  v22 = sub_1D1E6926C();
  v23 = -1 << *(v58 + 32);
  v24 = v22 & ~v23;
  v57 = v58 + 56;
  v25 = v51;
  if ((*(v58 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v44 = v13;
    v55 = ~v23;
    v43 = (v11 + 32);
    v56 = *(v56 + 72);
    v48 = (v11 + 8);
    v26 = v45;
    v49 = v8;
    v47 = v19;
    do
    {
      v27 = *(v58 + 48);
      v54 = v56 * v24;
      sub_1D1771BF4(v27 + v56 * v24, v8, _s7MergeIdVMa);
      v28 = *(v26 + 48);
      sub_1D1741C08(v8, v5, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v59, &v5[v28], &qword_1EC642590, qword_1D1E71260);
      if (v25(v5, 1, v10) == 1)
      {
        if (v25(&v5[v28], 1, v10) != 1)
        {
          goto LABEL_7;
        }

        sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        v29 = v50;
        sub_1D1741C08(v5, v50, &qword_1EC642590, qword_1D1E71260);
        if (v25(&v5[v28], 1, v10) == 1)
        {
          (*v48)(v29, v10);
          v8 = v49;
          v25 = v51;
LABEL_7:
          sub_1D1741A30(v5, &qword_1EC642980, &unk_1D1E6E6E0);
          goto LABEL_8;
        }

        v30 = v44;
        (*v43)(v44, &v5[v28], v10);
        sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v31 = sub_1D1E6775C();
        v32 = *v48;
        (*v48)(v30, v10);
        v32(v29, v10);
        v26 = v45;
        sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
        v8 = v49;
        v25 = v51;
        if ((v31 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v33 = &v8[*(v46 + 20)];
      v34 = *v33 == v53 && *(v33 + 1) == v52;
      if (v34 || (sub_1D1E6904C() & 1) != 0)
      {
        sub_1D1771C5C(v8, _s7MergeIdVMa);
        sub_1D1771C5C(v59, _s7MergeIdVMa);
        sub_1D1771BF4(*(v58 + 48) + v54, v42, _s7MergeIdVMa);
        return 0;
      }

LABEL_8:
      sub_1D1771C5C(v8, _s7MergeIdVMa);
      v24 = (v24 + 1) & v55;
    }

    while (((*(v57 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
  }

  v36 = v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v59;
  v39 = v40;
  sub_1D1771BF4(v59, v40, _s7MergeIdVMa);
  v60 = *v36;
  sub_1D194286C(v39, v24, isUniquelyReferenced_nonNull_native);
  *v36 = v60;
  sub_1D1771B6C(v38, v42, _s7MergeIdVMa);
  return 1;
}

uint64_t sub_1D17676D4(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v40 - v4;
  v5 = type metadata accessor for StaticMediaSystemComponent(0);
  v55 = *(v5 - 1);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v40 - v9;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v47 = v2;
  v19 = *v2;
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v56 = v5[5];
  StaticMediaProfile.hash(into:)(v60);
  v59 = *(a2 + v5[6]);
  MEMORY[0x1D3892850]();
  v57 = *(a2 + v5[7]);
  sub_1D176D4E8(v60, v57);
  v51 = v5[8];
  sub_1D1741C08(a2 + v51, v18, &qword_1EC642590, qword_1D1E71260);
  v49 = *(v11 + 48);
  v50 = v11 + 48;
  v20 = v49(v18, 1, v10);
  v42 = v11;
  if (v20 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v11 + 32))(v13, v18, v10);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v11 + 8))(v13, v10);
  }

  v21 = sub_1D1E6926C();
  v22 = v19 + 56;
  v23 = -1 << *(v19 + 32);
  v24 = v21 & ~v23;
  if (((*(v19 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
LABEL_18:
    v36 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v46;
    sub_1D1771BF4(a2, v46, type metadata accessor for StaticMediaSystemComponent);
    *&v60[0] = *v36;
    sub_1D1942F80(v38, v24, isUniquelyReferenced_nonNull_native);
    *v36 = *&v60[0];
    sub_1D1771B6C(a2, v48, type metadata accessor for StaticMediaSystemComponent);
    return 1;
  }

  v41 = v13;
  v58 = v10;
  v25 = ~v23;
  v40 = (v42 + 4);
  v26 = *(v55 + 72);
  ++v42;
  v27 = v56;
  v43 = v5;
  v45 = v19;
  v44 = a2;
  while (1)
  {
    sub_1D1771BF4(*(v19 + 48) + v26 * v24, v8, type metadata accessor for StaticMediaSystemComponent);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || !_s13HomeDataModel18StaticMediaProfileV2eeoiySbAC_ACtFZ_0(&v8[v5[5]], a2 + v27) || *&v8[v5[6]] != v59 || (sub_1D17A6E98(*&v8[v5[7]], v57) & 1) == 0)
    {
      goto LABEL_8;
    }

    v30 = v5[8];
    v31 = v52;
    v32 = *(v53 + 48);
    sub_1D1741C08(&v8[v30], v52, &qword_1EC642590, qword_1D1E71260);
    v55 = v32;
    sub_1D1741C08(a2 + v51, v31 + v32, &qword_1EC642590, qword_1D1E71260);
    v33 = v49;
    if (v49(v31, 1, v58) == 1)
    {
      break;
    }

    sub_1D1741C08(v31, v54, &qword_1EC642590, qword_1D1E71260);
    if (v33(v31 + v55, 1, v58) == 1)
    {
      (*v42)(v54, v58);
      v29 = v31;
      v19 = v45;
      a2 = v44;
      goto LABEL_7;
    }

    v34 = v58;
    (*v40)(v41, v31 + v55, v58);
    sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    LODWORD(v55) = sub_1D1E6775C();
    v35 = *v42;
    (*v42)(v41, v34);
    v35(v54, v34);
    sub_1D1741A30(v31, &qword_1EC642590, qword_1D1E71260);
    v5 = v43;
    v27 = v56;
    v19 = v45;
    a2 = v44;
    if (v55)
    {
      goto LABEL_21;
    }

LABEL_8:
    sub_1D1771C5C(v8, type metadata accessor for StaticMediaSystemComponent);
    v24 = (v24 + 1) & v25;
    if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v28 = v33(v31 + v55, 1, v58) == 1;
  v29 = v31;
  v19 = v45;
  a2 = v44;
  if (!v28)
  {
LABEL_7:
    sub_1D1741A30(v29, &qword_1EC642980, &unk_1D1E6E6E0);
    v5 = v43;
    v27 = v56;
    goto LABEL_8;
  }

  sub_1D1741A30(v31, &qword_1EC642590, qword_1D1E71260);
LABEL_21:
  sub_1D1771C5C(v8, type metadata accessor for StaticMediaSystemComponent);
  sub_1D1771C5C(a2, type metadata accessor for StaticMediaSystemComponent);
  sub_1D1771BF4(*(v19 + 48) + v26 * v24, v48, type metadata accessor for StaticMediaSystemComponent);
  return 0;
}