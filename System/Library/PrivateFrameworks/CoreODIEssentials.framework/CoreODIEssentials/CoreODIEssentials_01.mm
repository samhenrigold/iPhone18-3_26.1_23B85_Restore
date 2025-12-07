unint64_t sub_1DAF3E128(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E388, &unk_1DB0A0310);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, &v13, &qword_1ECC0E390, &unk_1DB0A51A0);
      v5 = v13;
      v6 = v14;
      result = sub_1DAF3550C(v13, v14, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DAF183D0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAF3E280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E378, &qword_1DB0A0300);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, v10, &qword_1ECC0E380, &qword_1DB0A0308);
      result = sub_1DAF35340(v10[0], ODIErrorPropertyKey.rawValue.getter, sub_1DAF357D8);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1DAF183D0(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

unint64_t sub_1DAF3E3C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E360, &qword_1DB0A02E8);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, v10, &qword_1ECC0E368, &unk_1DB0A02F0);
      result = sub_1DAF35340(v10[0], DIPErrorPropertyKey.rawValue.getter, sub_1DAF35CCC);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1DAF183D0(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

unint64_t sub_1DAF3E510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E350, &qword_1DB0A02D8);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, v10, &qword_1ECC0E358, &qword_1DB0A02E0);
      result = sub_1DAF35340(v10[0], ODIErrorPropertyKey.rawValue.getter, sub_1DAF357D8);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1DAF183D0(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

unint64_t sub_1DAF3E658(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E348, &qword_1DB0A02D0);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAF3E794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E280, &qword_1DB0A0210);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, &v11, &unk_1ECC0E288, &qword_1DB0A0218);
      v5 = v11;
      result = sub_1DAF35424(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DAF183D0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1DAF3E8BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E330, &qword_1DB0A02B8);
  v3 = sub_1DB09DFF4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1DAF35474(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_1DAF40674(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_1DAF35474(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAF3E9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E338, &qword_1DB0A02C0);
    v3 = sub_1DB09DFF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DAF40A84(v4, v13, &qword_1ECC0E340, &qword_1DB0A02C8);
      result = sub_1DAF353E0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1DAF183D0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void *sub_1DAF3EB04(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E260, &qword_1DB0A01F0);
  v3 = sub_1DB09DFF4();

  memcpy(__dst, a1 + 4, 0x180uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_1DAF40A84(__dst, v15, &qword_1ECC0E308, &qword_1DB0A0290);
  v6 = sub_1DAF3550C(v4, v5, MEMORY[0x1E69E60C8], sub_1DAF35720);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = a1 + 52;
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 368 * v6), &__dst[2], 0x170uLL);
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

    memcpy(__dst, v8, 0x180uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_1DAF40A84(__dst, v15, &qword_1ECC0E308, &qword_1DB0A0290);
    v6 = sub_1DAF3550C(v4, v5, MEMORY[0x1E69E60C8], sub_1DAF35720);
    v8 += 48;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAF3ECE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E268, &qword_1DB0A01F8);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAF3EE1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2E0, &qword_1DB0A0268);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAF3EF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2D8, &qword_1DB0A0260);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1DAF40674(v5, v6);
      v8 = v7;
      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E6969048], sub_1DAF365B8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1DAF3F070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E310, &qword_1DB0A0298);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-v4];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E300, &qword_1DB0A0288);
  v7 = sub_1DB09DFF4();
  v8 = *(v2 + 48);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);

  sub_1DAF40A84(a1 + v9, v5, &qword_1ECC0E310, &qword_1DB0A0298);
  memcpy(v22, v5, 0x414uLL);
  v11 = sub_1DAF355A0(v22);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  v14 = a1 + v10 + v9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    memmove((v7[6] + 1048 * v13), v5, 0x414uLL);
    v15 = v7[7];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
    result = sub_1DAF40828(&v5[v8], v15 + *(*(v16 - 8) + 72) * v13);
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v7[2] = v20;
    if (!--v6)
    {
      goto LABEL_8;
    }

    sub_1DAF40A84(v14, v5, &qword_1ECC0E310, &qword_1DB0A0298);
    memcpy(v22, v5, 0x414uLL);
    v13 = sub_1DAF355A0(v22);
    v14 += v10;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAF3F2B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E298, &qword_1DB0A0220);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1DAF40674(v5, v6);
      sub_1DAF40674(v7, v8);
      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E6969048], sub_1DAF365B8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAF3F3F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2A0, &qword_1DB0A0228);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAF3F518(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2E8, &qword_1DB0A0270);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAF3F644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E220, &qword_1DB0A01B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E228, &qword_1DB0A01C0);
    v7 = sub_1DB09DFF4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DAF40A84(v9, v5, &qword_1ECC0E220, &qword_1DB0A01B8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1DAF3550C(*v5, v12, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for AnyODIKnownBinding(0);
      result = sub_1DAF40398(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DAF3F840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E270, &qword_1DB0A0200);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E278, &qword_1DB0A0208);
    v7 = sub_1DB09DFF4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1DAF40A84(v9, v5, &qword_1ECC0E270, &qword_1DB0A0200);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1DAF3550C(*v5, v12, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1DB09D154();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1DAF3FA54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E250, &unk_1DB0A01E0);
    v3 = sub_1DB09DFF4();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;
      result = sub_1DAF35670(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1DAF3FB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2C8, &qword_1DB0A0250);
    v3 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DAF3550C(v5, v6, MEMORY[0x1E69E60C8], sub_1DAF35720);
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

unint64_t sub_1DAF3FC90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DB09DFF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1DAF3550C(v7, v8, MEMORY[0x1E69E60C8], sub_1DAF35720);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DAF3FDB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2A8, &qword_1DB0A0230);
  v3 = sub_1DB09DFF4();
  v4 = *(a1 + 48);
  *v29 = *(a1 + 32);
  v5 = *(a1 + 96);
  v6 = *(a1 + 128);
  *&v29[80] = *(a1 + 112);
  *&v29[96] = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  *&v29[16] = v4;
  *&v29[32] = v7;
  *&v29[112] = *(a1 + 144);
  *&v29[48] = v8;
  *&v29[64] = v5;
  v9 = v29[0];
  result = sub_1DAF35670(v29[0]);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1DAF40A84(v29, v28, &qword_1ECC0E2B0, &qword_1DB0A0238);
    return v3;
  }

  v12 = a1 + 152;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v9;
    v13 = (v3[7] + 112 * result);
    v14 = *&v29[8];
    v15 = *&v29[40];
    v13[1] = *&v29[24];
    v13[2] = v15;
    *v13 = v14;
    v16 = *&v29[56];
    v17 = *&v29[72];
    v18 = *&v29[104];
    v13[5] = *&v29[88];
    v13[6] = v18;
    v13[3] = v16;
    v13[4] = v17;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v3[2] = v21;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1DAF40A84(v29, v28, &qword_1ECC0E2B0, &qword_1DB0A0238);
    v22 = *(v12 + 16);
    *v29 = *v12;
    v23 = *(v12 + 64);
    v24 = *(v12 + 96);
    *&v29[80] = *(v12 + 80);
    *&v29[96] = v24;
    v25 = *(v12 + 32);
    v26 = *(v12 + 48);
    *&v29[16] = v22;
    *&v29[32] = v25;
    *&v29[112] = *(v12 + 112);
    *&v29[48] = v26;
    *&v29[64] = v23;
    v9 = v29[0];
    result = sub_1DAF35670(v29[0]);
    v12 += 120;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAF3FF70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v37 = a1;
  v38 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v39 = v8;
  v40 = 0;
  v41 = v11 & v9;
  v42 = a2;
  v43 = a3;

  sub_1DAF3DE18(&v34);
  v12 = v35;
  if (!v35)
  {
LABEL_18:
    sub_1DAF333A4(v37);
  }

  while (1)
  {
    v16 = v34;
    sub_1DAF332B8(&v36, v33);
    v17 = *a5;
    v18 = sub_1DAF3550C(v16, v12, MEMORY[0x1E69E60C8], sub_1DAF35720);
    v20 = *(v17 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (*(v17 + 24) < v23)
    {
      sub_1DAF3761C(v23, a4 & 1);
      v18 = sub_1DAF3550C(v16, v12, MEMORY[0x1E69E60C8], sub_1DAF35720);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v24)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v30 = v18;
    sub_1DAF3C3E8();
    v18 = v30;
    if (v24)
    {
LABEL_6:
      v13 = *a5;
      v14 = 40 * v18;
      sub_1DAF3523C(*(*a5 + 56) + 40 * v18, v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);

      v15 = *(v13 + 56);
      __swift_destroy_boxed_opaque_existential_1Tm((v15 + v14));
      sub_1DAF332B8(v32, v15 + v14);
      goto LABEL_7;
    }

LABEL_14:
    v26 = *a5;
    *(*a5 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v27 = (v26[6] + 16 * v18);
    *v27 = v16;
    v27[1] = v12;
    sub_1DAF332B8(v33, v26[7] + 40 * v18);
    v28 = v26[2];
    v22 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v26[2] = v29;
LABEL_7:
    sub_1DAF3DE18(&v34);
    v12 = v35;
    a4 = 1;
    if (!v35)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

unint64_t sub_1DAF401FC()
{
  result = qword_1ECC0E1F0;
  if (!qword_1ECC0E1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E1F8, &qword_1DB09FFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E1F0);
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

uint64_t getEnumTagSinglePayload for DistributedNotificationsAsyncSequence.Iterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for DistributedNotificationsAsyncSequence.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAF40398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF40458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF404BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyODIKnownBinding(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF4062C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1DAF40674(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DAF40780(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DAF40828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF408F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF40964(unint64_t *a1)
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

uint64_t sub_1DAF409DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1DAF40A84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAF40AEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DAF40BC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF40BE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1DAF40C1C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1DAF40CD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAF40D24()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF40D6C()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF40DB0()
{
  v1 = 0x6E6F6973726576;
  v2 = 1684955506;
  if (*v0 == 2)
  {
    v2 = 0x656D697464;
  }

  if (*v0)
  {
    v1 = 0x656D697473;
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

uint64_t sub_1DAF40E14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAF49C44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAF40E48(uint64_t a1)
{
  v2 = sub_1DAF410F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF40E84(uint64_t a1)
{
  v2 = sub_1DAF410F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ODIClientGUIDSeeds.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E420, &qword_1DB0A0530);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF410F8();
  sub_1DB09E434();
  v16 = 0;
  v10 = v12[7];
  sub_1DB09E154();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_1DB09E154();
  v14 = 2;
  sub_1DB09E154();
  v13 = 3;
  sub_1DB09E154();
  return (*(v4 + 8))(v6, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DAF410F8()
{
  result = qword_1EE3028F0;
  if (!qword_1EE3028F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3028F0);
  }

  return result;
}

uint64_t ODIClientGUIDSeeds.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E428, &qword_1DB0A0538);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF410F8();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1DB09E084();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1DB09E084();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1DB09E084();
  v25 = v13;
  v33 = 3;
  v14 = sub_1DB09E084();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_1DAF41440(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_1DAF41478(v32);
}

uint64_t sub_1DAF414D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DB09E254();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DAF41538()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF4158C(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DAF415C4()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAF41614@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAF49DA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t ODIClientGUID.asString.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t ODIClientGUID.seeds.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  *a1 = v2 + 49;
  a1[1] = 0xE100000000000000;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
}

uint64_t ODIClientGUID.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v9 = v0[6];
  v10 = v0[8];
  v11 = v0[7];
  v12 = v0[10];
  v13 = v0[9];
  v14 = v0[12];
  v17 = v0[13];
  v15 = v0[11];
  v16 = v0[14];
  v6 = v0[15];
  v7 = v0[16];
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0x5547746E65696C43, 0xEB00000000204449);
  MEMORY[0x1E127FE90](v6, v7);
  MEMORY[0x1E127FE90](0x6F6973726576202ELL, 0xEC000000203D206ELL);
  sub_1DB09DF94();
  MEMORY[0x1E127FE90](0x3D2064697364202CLL, 0xE900000000000020);
  MEMORY[0x1E127FE90](v1, v2);
  MEMORY[0x1E127FE90](0x203D2064696D202CLL, 0xE800000000000000);
  MEMORY[0x1E127FE90](v3, v4);
  MEMORY[0x1E127FE90](0x444970696863202CLL, 0xEB00000000203D20);
  MEMORY[0x1E127FE90](v5, v9);
  MEMORY[0x1E127FE90](0x3D2064696365202CLL, 0xE900000000000020);
  MEMORY[0x1E127FE90](v11, v10);
  MEMORY[0x1E127FE90](0x726576726573202CLL, 0xEF203D20656D6954);
  MEMORY[0x1E127FE90](v13, v12);
  MEMORY[0x1E127FE90](0x656369766564202CLL, 0xEF203D20656D6954);
  MEMORY[0x1E127FE90](v15, v14);
  MEMORY[0x1E127FE90](0x3D20646E6172202CLL, 0xE900000000000020);
  MEMORY[0x1E127FE90](v17, v16);
  return 0;
}

uint64_t DIPClientGUIDFactory.init(primaryDSIDBehavior:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 288) = a1;
  *(v2 + 235) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAF41980, 0, 0);
}

uint64_t sub_1DAF41980()
{
  v12 = v0;
  v1 = *(v0 + 235);
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000036, 0x80000001DB0C21D0);
  v2 = 0x64756F6C4369;
  v3 = 1684628325;
  if (v1 != 2)
  {
    v3 = 1869903201;
  }

  if (v1)
  {
    v2 = 0x73656E755469;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  if (v1 <= 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = *(v0 + 235);
  MEMORY[0x1E127FE90](v4, v5);

  v7 = v10;
  LOBYTE(v10) = 10;
  CoreODILogger.info(_:category:)(v7, v11, &v10);

  *(v0 + 234) = v6;
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_1DAF41B14;

  return sub_1DAF42E8C(v0 + 233, (v0 + 234));
}

uint64_t sub_1DAF41B14(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[38] = a1;
  v4[39] = a2;
  v4[40] = v2;

  if (v2)
  {
    v5 = sub_1DAF42E10;
  }

  else
  {
    v5 = sub_1DAF41C2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAF41C2C()
{
  v16 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 233);
  *(v0 + 236) = v3;
  v13 = 13;

  sub_1DB09DE44();

  v14 = 0xD000000000000023;
  v15 = 0x80000001DB0C2210;
  MEMORY[0x1E127FE90](v2, v1);

  MEMORY[0x1E127FE90](0x6570797420666F20, 0xE800000000000000);
  v4 = 0xD000000000000023;
  v5 = 0x64756F6C4369;
  v6 = 1684628325;
  if (v3 != 2)
  {
    v6 = 1869903201;
  }

  if (v3)
  {
    v5 = 0x73656E755469;
  }

  if (v3 <= 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v3 <= 1)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = v15;
  v10 = v8;
  CoreODILogger.milestone(tag:description:value:isSensitive:)(&v13, *&v4, *&v7, 0);

  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE3039B0;
  *(v0 + 328) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF41DF8, v11, 0);
}

uint64_t sub_1DAF41DF8()
{
  if (*(*(v0 + 328) + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF41FC8, 0, 0);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 336) = v1;
    *v1 = v0;
    v1[1] = sub_1DAF41ECC;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAF41ECC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF41FC8, 0, 0);
}

uint64_t sub_1DAF41FC8()
{
  v5 = v0;
  if (*(v0 + 236) == 2)
  {
    v4 = 10;
    CoreODILogger.info(_:category:)(0xD00000000000002DLL, 0x80000001DB0C22C0, &v4);

    *(v0 + 360) = 0;
    *(v0 + 368) = 0xE000000000000000;
    v1 = *(v0 + 328);

    return MEMORY[0x1EEE6DFA0](sub_1DAF42224, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 344) = v2;
    *v2 = v0;
    v2[1] = sub_1DAF420E4;

    return sub_1DAFC91BC();
  }
}

uint64_t sub_1DAF420E4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v7 = sub_1DAF42E28;
    v8 = 0;
  }

  else
  {
    v6[45] = a1;
    v6[46] = a2;
    v8 = v6[41];
    v7 = sub_1DAF42224;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1DAF42224()
{
  v1 = v0[41];
  v2 = sub_1DAF4AA44(&qword_1EE303990, type metadata accessor for ODIDeviceInfo, &protocol conformance descriptor for ODIDeviceInfo);
  v0[47] = v2;
  v3 = swift_task_alloc();
  v0[48] = v3;
  v3[2] = v1;
  v3[3] = 0x444970696843;
  v3[4] = 0xE600000000000000;
  v4 = swift_task_alloc();
  v0[49] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
  v0[50] = v5;
  *v4 = v0;
  v4[1] = sub_1DAF42388;

  return MEMORY[0x1EEE6DDE0](v0 + 28, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAF49C08, v3, v5);
}

uint64_t sub_1DAF42388()
{
  v1 = *v0;

  *(v1 + 408) = *(v1 + 224);
  *(v1 + 237) = *(v1 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1DAF424C8, 0, 0);
}

uint64_t sub_1DAF424C8()
{
  if (*(v0 + 237) == 1)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v1 = MEMORY[0x1E69E7CC0];
    v2 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v2 + 16))
    {
      v3 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v4)
      {
        sub_1DAF409DC(*(v2 + 56) + 32 * v3, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v1 = *(v0 + 256);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1DAF72EC0(0, *(v1 + 2) + 1, 1, v1);
    }

    v6 = *(v1 + 2);
    v5 = *(v1 + 3);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_1DAF72EC0((v5 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 2) = v6 + 1;
    v7 = &v1[56 * v6];
    *(v7 + 4) = 0xD000000000000015;
    *(v7 + 5) = 0x80000001DB0C2240;
    *(v7 + 6) = 0xD00000000000001FLL;
    *(v7 + 7) = 0x80000001DB0C2260;
    *(v7 + 8) = 0xD00000000000001ALL;
    *(v7 + 9) = 0x80000001DB0C2280;
    *(v7 + 10) = 163;
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 48) = v1;
    sub_1DAF40D20((v0 + 48), (v0 + 80));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 80), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v9 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v10 = sub_1DB09D6B4();
    v11 = sub_1DB09D604();
    [v9 initWithDomain:v10 code:-1111 userInfo:v11];

    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 328);
    *(v0 + 264) = *(v0 + 408);
    *(v0 + 208) = sub_1DB09E1D4();
    *(v0 + 216) = v15;
    *(v0 + 416) = v15;

    return MEMORY[0x1EEE6DFA0](sub_1DAF42838, v14, 0);
  }
}

uint64_t sub_1DAF42838()
{
  v1 = v0[47];
  v2 = v0[41];
  v3 = swift_task_alloc();
  v0[53] = v3;
  *(v3 + 16) = v2;
  strcpy((v3 + 24), "UniqueChipID");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = swift_task_alloc();
  v0[54] = v4;
  *v4 = v0;
  v4[1] = sub_1DAF42958;
  v5 = v0[50];

  return MEMORY[0x1EEE6DDE0](v0 + 30, v2, v1, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAF4AC38, v3, v5);
}

uint64_t sub_1DAF42958()
{
  v1 = *v0;

  *(v1 + 440) = *(v1 + 240);
  *(v1 + 238) = *(v1 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1DAF42A98, 0, 0);
}

uint64_t sub_1DAF42A98()
{
  if (*(v0 + 238) == 1)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v1 = MEMORY[0x1E69E7CC0];
    v2 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v2 + 16))
    {
      v3 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v4)
      {
        sub_1DAF409DC(*(v2 + 56) + 32 * v3, v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v1 = *(v0 + 272);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1DAF72EC0(0, *(v1 + 2) + 1, 1, v1);
    }

    v6 = *(v1 + 2);
    v5 = *(v1 + 3);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_1DAF72EC0((v5 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 2) = v6 + 1;
    v7 = &v1[56 * v6];
    *(v7 + 4) = 0xD000000000000012;
    *(v7 + 5) = 0x80000001DB0C22A0;
    *(v7 + 6) = 0xD00000000000001FLL;
    *(v7 + 7) = 0x80000001DB0C2260;
    *(v7 + 8) = 0xD00000000000001ALL;
    *(v7 + 9) = 0x80000001DB0C2280;
    *(v7 + 10) = 168;
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 144) = v1;
    sub_1DAF40D20((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 176), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v9 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v10 = sub_1DB09D6B4();
    v11 = sub_1DB09D604();
    [v9 initWithDomain:v10 code:-1112 userInfo:v11];

    swift_willThrow();

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 416);
    v14 = *(v0 + 208);
    v15 = *(v0 + 236);
    v20 = *(v0 + 304);
    v21 = *(v0 + 360);
    v16 = *(v0 + 288);
    *(v0 + 280) = *(v0 + 440);
    v17 = sub_1DB09E1D4();
    *v16 = v20;
    *(v16 + 16) = v21;
    *(v16 + 32) = v14;
    *(v16 + 40) = v13;
    *(v16 + 48) = v17;
    *(v16 + 56) = v18;
    *(v16 + 64) = v15;
    *(v16 + 72) = 0;
    *(v16 + 80) = 0xE000000000000000;
    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_1DAF42E28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF42E8C(uint64_t a1, _BYTE *a2)
{
  *(v2 + 448) = a1;
  *(v2 + 570) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAF42EB4, 0, 0);
}

uint64_t sub_1DAF42EB4()
{
  v8 = v0;
  if (*(v0 + 570) > 1u)
  {
    if (*(v0 + 570) == 2)
    {
      v3 = swift_task_alloc();
      *(v0 + 520) = v3;
      *v3 = v0;
      v3[1] = sub_1DAF43F10;

      return sub_1DAF47880();
    }

    else
    {
      v7 = 10;
      CoreODILogger.info(_:category:)(0xD000000000000015, 0x80000001DB0C2470, &v7);

      *(v0 + 568) = 0;
      v5 = swift_task_alloc();
      *(v0 + 536) = v5;
      *v5 = v0;
      v5[1] = sub_1DAF443CC;
      v6 = *(v0 + 448);

      return sub_1DAF42E8C(v6, (v0 + 568));
    }
  }

  else if (*(v0 + 570))
  {
    v4 = swift_task_alloc();
    *(v0 + 488) = v4;
    *v4 = v0;
    v4[1] = sub_1DAF437D8;

    return sub_1DAF48250();
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 456) = v1;
    *v1 = v0;
    v1[1] = sub_1DAF430D4;

    return sub_1DAF47E88();
  }
}

uint64_t sub_1DAF430D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[38] = v2;
  v3[39] = a1;
  v3[40] = a2;
  v3[58] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF431DC, 0, 0);
}

uint64_t sub_1DAF431DC()
{
  v8 = v0;
  v1 = v0[58];
  if (v1)
  {
    v2 = v0[39];
    v3 = v0[56];
    v7 = 10;
    CoreODILogger.info(_:category:)(0xD000000000000011, 0x80000001DB0C25E0, &v7);

    *v3 = 0;
    v4 = v0[1];

    return v4(v2, v1);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[59] = v6;
    *v6 = v0;
    v6[1] = sub_1DAF43310;

    return sub_1DAF48250();
  }
}

uint64_t sub_1DAF43310(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[41] = v2;
  v3[42] = a1;
  v3[43] = a2;
  v3[60] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF43418, 0, 0);
}

uint64_t sub_1DAF43418()
{
  v19 = v0;
  v1 = *(v0 + 480);
  if (v1)
  {
    v2 = *(v0 + 336);
    v3 = *(v0 + 448);
    v18[0] = 10;
    CoreODILogger.info(_:category:)(0xD00000000000001DLL, 0x80000001DB0C25C0, v18);

    *v3 = 1;
    v4 = *(v0 + 8);

    return v4(v2, v1);
  }

  else
  {
    v18[0] = 10;
    CoreODILogger.warning(_:category:)(0xD00000000000002CLL, 0x80000001DB0C2520, v18);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, v0 + 208);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = *(v0 + 440);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[56 * v11];
    *(v12 + 4) = 0xD000000000000028;
    *(v12 + 5) = 0x80000001DB0C2590;
    *(v12 + 6) = 0xD00000000000001FLL;
    *(v12 + 7) = 0x80000001DB0C2260;
    *(v12 + 8) = 0x2844495344746567;
    *(v12 + 9) = 0xEB00000000293A5FLL;
    *(v12 + 10) = 283;
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 240) = v6;
    sub_1DAF40D20((v0 + 240), (v0 + 272));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 272), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1DB09D6B4();
    v16 = sub_1DB09D604();
    [v14 initWithDomain:v15 code:-5 userInfo:{v16, v7, 0xE100000000000000}];

    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DAF437D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[44] = v2;
  v3[45] = a1;
  v3[46] = a2;
  v3[62] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF438E0, 0, 0);
}

uint64_t sub_1DAF438E0()
{
  v8 = v0;
  v1 = v0[62];
  if (v1)
  {
    v2 = v0[45];
    v3 = v0[56];
    v7 = 10;
    CoreODILogger.info(_:category:)(0xD000000000000011, 0x80000001DB0C2570, &v7);

    *v3 = 1;
    v4 = v0[1];

    return v4(v2, v1);
  }

  else
  {
    v7 = 10;
    CoreODILogger.info(_:category:)(0xD00000000000001CLL, 0x80000001DB0C2500, &v7);

    v6 = swift_task_alloc();
    v0[63] = v6;
    *v6 = v0;
    v6[1] = sub_1DAF43A5C;

    return sub_1DAF47E88();
  }
}

uint64_t sub_1DAF43A5C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[47] = v2;
  v3[48] = a1;
  v3[49] = a2;
  v3[64] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF43B64, 0, 0);
}

uint64_t sub_1DAF43B64()
{
  v19 = v0;
  v1 = *(v0 + 512);
  if (v1)
  {
    v2 = *(v0 + 384);
    v3 = *(v0 + 448);
    v18[0] = 10;
    CoreODILogger.info(_:category:)(0xD00000000000001DLL, 0x80000001DB0C2550, v18);

    *v3 = 0;
    v4 = *(v0 + 8);

    return v4(v2, v1);
  }

  else
  {
    v18[0] = 10;
    CoreODILogger.warning(_:category:)(0xD00000000000002CLL, 0x80000001DB0C2520, v18);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = *(v0 + 432);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[56 * v11];
    *(v12 + 4) = 0xD00000000000002CLL;
    *(v12 + 5) = 0x80000001DB0C2520;
    *(v12 + 6) = 0xD00000000000001FLL;
    *(v12 + 7) = 0x80000001DB0C2260;
    *(v12 + 8) = 0x2844495344746567;
    *(v12 + 9) = 0xEB00000000293A5FLL;
    *(v12 + 10) = 297;
    *(v0 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 144) = v6;
    sub_1DAF40D20((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 176), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1DB09D6B4();
    v16 = sub_1DB09D604();
    [v14 initWithDomain:v15 code:-5 userInfo:v16];

    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DAF43F10(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[50] = v2;
  v3[51] = a1;
  v3[52] = a2;
  v3[66] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF44018, 0, 0);
}

uint64_t sub_1DAF44018()
{
  v19 = v0;
  v1 = *(v0 + 528);
  if (v1)
  {
    v2 = *(v0 + 408);
    v3 = *(v0 + 448);
    v18[0] = 10;
    CoreODILogger.info(_:category:)(0x434520676E697355, 0xEA00000000004449, v18);

    *v3 = 2;
    v4 = *(v0 + 8);

    return v4(v2, v1);
  }

  else
  {
    v18[0] = 10;
    CoreODILogger.warning(_:category:)(0xD000000000000011, 0x80000001DB0C24E0, v18);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = *(v0 + 424);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[56 * v11];
    *(v12 + 4) = 0xD000000000000011;
    *(v12 + 5) = 0x80000001DB0C24E0;
    *(v12 + 6) = 0xD00000000000001FLL;
    *(v12 + 7) = 0x80000001DB0C2260;
    *(v12 + 8) = 0x2844495344746567;
    *(v12 + 9) = 0xEB00000000293A5FLL;
    *(v12 + 10) = 306;
    *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 48) = v6;
    sub_1DAF40D20((v0 + 48), (v0 + 80));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 80), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1DB09D6B4();
    v16 = sub_1DB09D604();
    [v14 initWithDomain:v15 code:-28 userInfo:v16];

    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DAF443CC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 544) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF4451C, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1DAF4451C()
{
  v6 = v0;
  v1 = *(v0 + 544);
  v5 = 10;
  CoreODILogger.warning(_:category:)(0xD000000000000044, 0x80000001DB0C2490, &v5);

  *(v0 + 569) = 2;
  v2 = swift_task_alloc();
  *(v0 + 552) = v2;
  *v2 = v0;
  v2[1] = sub_1DAF44610;
  v3 = *(v0 + 448);

  return sub_1DAF42E8C(v3, (v0 + 569));
}

uint64_t sub_1DAF44610(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 560) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF44760, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t DIPClientGUIDFactory.init(primaryDSIDBehavior:stsFetcher:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = a3;
  *(v4 + 280) = a4;
  *(v4 + 264) = a1;
  *(v4 + 352) = *a2;
  v5 = swift_task_alloc();
  *(v4 + 288) = v5;
  *v5 = v4;
  v5[1] = sub_1DAF44820;

  return DIPClientGUIDFactory.init(primaryDSIDBehavior:)(v4 + 16, (v4 + 352));
}

uint64_t sub_1DAF44820()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1DAF44C18;
  }

  else
  {
    v2 = sub_1DAF44934;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF44934()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 64);
  *(v0 + 224) = *(v0 + 48);
  *(v0 + 240) = v2;
  v3 = *(v0 + 88);
  *(v0 + 256) = *(v0 + 80);
  v4 = *(v0 + 32);
  *(v0 + 192) = *(v0 + 16);
  *(v0 + 208) = v4;
  v5 = *(v0 + 96);
  *(v0 + 304) = v3;
  *(v0 + 312) = v5;
  v8 = (v1 + *v1);
  v6 = swift_task_alloc();
  *(v0 + 320) = v6;
  *v6 = v0;
  v6[1] = sub_1DAF44A40;

  return v8();
}

uint64_t sub_1DAF44A40(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 328) = v2;

  if (v2)
  {
    v7 = sub_1DAF44C7C;
  }

  else
  {
    *(v6 + 336) = a2;
    *(v6 + 344) = a1;
    v7 = sub_1DAF44B74;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DAF44B74()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 264);

  *v3 = *(v0 + 192);
  v4 = *(v0 + 208);
  v5 = *(v0 + 240);
  v6 = *(v0 + 256);
  *(v3 + 32) = *(v0 + 224);
  *(v3 + 48) = v5;
  *(v3 + 16) = v4;
  *(v3 + 64) = v6;
  *(v3 + 72) = v1;
  *(v3 + 80) = v2;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DAF44C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF44C7C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  v3 = *(v0 + 192);
  *(v0 + 120) = *(v0 + 208);
  v4 = *(v0 + 240);
  *(v0 + 136) = *(v0 + 224);
  *(v0 + 152) = v4;
  v5 = *(v0 + 256);
  *(v0 + 104) = v3;
  *(v0 + 168) = v5;
  *(v0 + 176) = v1;
  *(v0 + 184) = v2;
  sub_1DAF49C14(v0 + 104);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t DIPClientGUIDFactory.createNewAssessmentGUID()(uint64_t a1)
{
  v3 = *(v1 + 72);
  *(v2 + 80) = *(v1 + 64);
  v4 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v4;
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  *(v2 + 104) = a1;
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v1 + 80);
  return MEMORY[0x1EEE6DFA0](sub_1DAF44D50, 0, 0);
}

uint64_t sub_1DAF44D50()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  *(v0 + 88) = v1;
  DIPClientGUIDFactory.createNewAssessmentGUID(serverTime:)(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPClientGUIDFactory.createNewAssessmentGUID(serverTime:)(CoreODIEssentials::ODIClientGUID *__return_ptr retstr, Swift::String serverTime)
{
  v4 = v3;
  object = serverTime._object;
  countAndFlagsBits = serverTime._countAndFlagsBits;
  v6 = sub_1DB09D734();
  v89 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB09D154();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v14 = v2[1];
  v15 = v2[3];
  v92 = v2[2];
  v93 = v13;
  v96 = v15;
  v97 = v14;
  v16 = v2[4];
  v95 = v2[5];
  v17 = v2[7];
  v90 = v2[6];
  v91 = v16;
  v98 = v17;
  v100 = *(v2 + 64);
  sub_1DB09D144();
  sub_1DB09D104();
  v19 = *&v18;
  v20 = v18;
  (*(v10 + 8))(v12, v9);
  if ((v20 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v88 = v6;
  *&v111 = v19;
  v21 = sub_1DB09E1D4();
  v23 = v22;
  v24 = sub_1DB09D964();
  *(v24 + 16) = 6;
  *(v24 + 36) = 0;
  *(v24 + 32) = 0;
  v25 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 6uLL, (v24 + 32));
  if (!v25)
  {
    v87 = retstr;
    v30 = sub_1DAF49DF0(v24);
    v32 = v31;

    v33 = sub_1DB09D014();
    v35 = v34;
    sub_1DAF40780(v30, v32);
    v36 = v100;
    if (v100 < 3)
    {
      v84[1] = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E440, &unk_1DB0A0580);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1DB0A04F0;
      *(v37 + 32) = v36 + 49;
      *(v37 + 40) = 0xE100000000000000;
      v38 = v92;
      *(v37 + 48) = v93;
      v39 = v96;
      *(v37 + 56) = v97;
      *(v37 + 64) = v38;
      v40 = v90;
      v41 = v91;
      *(v37 + 72) = v39;
      *(v37 + 80) = v41;
      *(v37 + 88) = v95;
      *(v37 + 96) = v40;
      v42 = object;
      v43 = countAndFlagsBits;
      *(v37 + 104) = v98;
      *(v37 + 112) = v43;
      *(v37 + 120) = v42;
      *(v37 + 128) = v21;
      v85 = v33;
      v86 = v21;
      *(v37 + 136) = v23;
      *(v37 + 144) = v33;
      *(v37 + 152) = v35;
      *&v111 = v37;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v44 = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
      sub_1DAF4AA8C(&qword_1EE301930, &qword_1ECC0E448, &qword_1DB0A3110, MEMORY[0x1E69E6310]);
      sub_1DB09D694();

      sub_1DB09D714();
      v45 = sub_1DB09D6D4();
      v47 = v46;

      (*(v89 + 8))(v8, v88);
      if (v47 >> 60 != 15)
      {
        v88 = v23;
        v89 = v44;
        v48 = sub_1DB09D004();
        v49 = DigestSha256(v48);

        if (v49)
        {
          v50 = sub_1DB09D034();
          v52 = v51;

          v53 = sub_1DB09CFE4();
          v55 = v54;
          v56 = sub_1DB09D014();
          v84[0] = v57;
          sub_1DAF18404(v45, v47);
          sub_1DAF40780(v53, v55);
          sub_1DAF40780(v50, v52);
          LOBYTE(v102) = v100;
          *(&v102 + 1) = *v127;
          DWORD1(v102) = *&v127[3];
          *(&v102 + 1) = v93;
          *&v103 = v97;
          *(&v103 + 1) = v92;
          *&v104 = v96;
          *(&v104 + 1) = v91;
          *&v105 = v95;
          *(&v105 + 1) = v90;
          *&v106 = v98;
          *(&v106 + 1) = countAndFlagsBits;
          *&v107 = object;
          *(&v107 + 1) = v86;
          *&v108 = v88;
          *(&v108 + 1) = v85;
          *&v109 = v89;
          *(&v109 + 1) = v56;
          v110 = v84[0];
          LOBYTE(v111) = v100;
          DWORD1(v111) = *&v127[3];
          *(&v111 + 1) = *v127;
          *(&v111 + 1) = v93;
          v112 = v97;
          v113 = v92;
          v114 = v96;
          v115 = v91;
          v116 = v95;
          v117 = v90;
          v118 = v98;
          v119 = countAndFlagsBits;
          v120 = object;
          v121 = v86;
          v122 = v88;
          v123 = v85;
          v124 = v89;
          v125 = v56;
          v126 = v84[0];
          sub_1DAF49ECC(&v102, v101);
          sub_1DAF49F04(&v111);
          v58 = v109;
          v59 = v87;
          *&v87->deviceTime._object = v108;
          *&v59->rand._object = v58;
          v59->hash._object = v110;
          v60 = v105;
          *&v59->mid._object = v104;
          *&v59->chipID._object = v60;
          v61 = v107;
          *&v59->ecid._object = v106;
          *&v59->serverTime._object = v61;
          v62 = v103;
          *&v59->version = v102;
          *&v59->dsid._object = v62;
          return;
        }

        sub_1DAF18404(v45, v47);
      }

      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v75 = MEMORY[0x1E69E7CC0];
      v76 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v76 + 16))
      {
        v77 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v78)
        {
          sub_1DAF409DC(*(v76 + 56) + 32 * v77, &v111);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v75 = v102;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_1DAF72EC0(0, *(v75 + 2) + 1, 1, v75);
      }

      v80 = *(v75 + 2);
      v79 = *(v75 + 3);
      if (v80 >= v79 >> 1)
      {
        v75 = sub_1DAF72EC0((v79 > 1), v80 + 1, 1, v75);
      }

      *(v75 + 2) = v80 + 1;
      v81 = &v75[56 * v80];
      *(v81 + 4) = 0xD00000000000001CLL;
      *(v81 + 5) = 0x80000001DB0C2370;
      *(v81 + 6) = 0xD00000000000001FLL;
      *(v81 + 7) = 0x80000001DB0C2260;
      *(v81 + 8) = 0xD000000000000024;
      *(v81 + 9) = 0x80000001DB0C2390;
      *(v81 + 10) = 210;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v111 = v75;
      sub_1DAF40D20(&v111, &v102);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101[0] = v76;
      sub_1DAF3B11C(&v102, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v83 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v73 = sub_1DB09D6B4();
      v74 = sub_1DB09D604();
      [v83 initWithDomain:v73 code:-1117 userInfo:v74];
      goto LABEL_32;
    }

    v20 = "Unexpected DSID Type";
    v4 = "CoreODIEssentials/ODIGUID.swift";
    v9 = "fromDsidType(_:)";
    if (qword_1EE301E08 == -1)
    {
LABEL_11:
      v63 = v20 - 32;
      v64 = MEMORY[0x1E69E7CC0];
      v65 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v65 + 16))
      {
        v66 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v67)
        {
          sub_1DAF409DC(*(v65 + 56) + 32 * v66, &v111);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v64 = v102;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1DAF72EC0(0, *(v64 + 2) + 1, 1, v64);
      }

      v69 = *(v64 + 2);
      v68 = *(v64 + 3);
      if (v69 >= v68 >> 1)
      {
        v64 = sub_1DAF72EC0((v68 > 1), v69 + 1, 1, v64);
      }

      *(v64 + 2) = v69 + 1;
      v70 = &v64[56 * v69];
      *(v70 + 4) = 0xD000000000000014;
      *(v70 + 5) = v63 | 0x8000000000000000;
      *(v70 + 6) = 0xD00000000000001FLL;
      *(v70 + 7) = (v4 - 32) | 0x8000000000000000;
      *(v70 + 8) = 0xD000000000000010;
      *(v70 + 9) = (v9 - 32) | 0x8000000000000000;
      *(v70 + 10) = 54;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *&v111 = v64;
      sub_1DAF40D20(&v111, &v102);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v101[0] = v65;
      sub_1DAF3B11C(&v102, 0x636F766E4949444FLL, 0xEE00736E6F697461, v71);
      v72 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v73 = sub_1DB09D6B4();
      v74 = sub_1DB09D604();
      [v72 initWithDomain:v73 code:-1116 userInfo:v74];
LABEL_32:

      goto LABEL_33;
    }

LABEL_37:
    swift_once();
    goto LABEL_11;
  }

  v26 = v25;

  LOBYTE(v111) = 113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A04E0;
  *(inited + 32) = 13;
  v28 = inited + 32;
  *(inited + 64) = MEMORY[0x1E69E72F0];
  *(inited + 40) = v26;
  v29 = sub_1DAF3E280(inited);
  swift_setDeallocating();
  sub_1DAF40AEC(v28, &qword_1ECC0E380, &qword_1DB0A0308);
  ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001FLL, 0x80000001DB0C22F0, 0, &v111, 0, v29, 0xD00000000000001FLL, 0x80000001DB0C2260, 0xD00000000000001ALL, 0x80000001DB0C2310, 335);

LABEL_33:
  swift_willThrow();
}

uint64_t DIPClientGUIDFactory.createNewTrainingGUID()(uint64_t a1)
{
  v3 = *(v1 + 72);
  *(v2 + 80) = *(v1 + 64);
  v4 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v4;
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  *(v2 + 104) = a1;
  *(v2 + 112) = v3;
  *(v2 + 120) = *(v1 + 80);
  return MEMORY[0x1EEE6DFA0](sub_1DAF45A00, 0, 0);
}

uint64_t sub_1DAF45A00()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  *(v0 + 88) = v1;
  DIPClientGUIDFactory.createNewTrainingGUID(serverTime:)(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIPClientGUIDFactory.createNewTrainingGUID(serverTime:)(CoreODIEssentials::ODIClientGUID *__return_ptr retstr, Swift::String serverTime)
{
  v143 = retstr;
  object = serverTime._object;
  countAndFlagsBits = serverTime._countAndFlagsBits;
  v3 = sub_1DB09D734();
  v145 = *(v3 - 8);
  v146 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v144 = &v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAD0, &qword_1DB0AD520);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v161 = &v143 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E450, &qword_1DB0A05A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v163 = &v143 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E458, &qword_1DB0A05A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v168 = &v143 - v10;
  v169 = sub_1DB09D2F4();
  v162 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v12 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB09CDC4();
  v159 = *(v13 - 8);
  v160 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v166 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v197 = &v143 - v16;
  v17 = sub_1DB09D154();
  v164 = *(v17 - 8);
  v165 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v158 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v143 - v20;
  v22 = *v2;
  v23 = v2[1];
  v149 = v2[2];
  v150 = v22;
  v24 = v2[4];
  v152 = v2[3];
  v153 = v23;
  v148 = v24;
  v25 = v2[5];
  v147 = v2[6];
  v154 = v2[7];
  v155 = v25;
  v157 = *(v2 + 64);
  sub_1DB09D144();
  sub_1DB09D2D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E460, &qword_1DB0A05B0);
  v26 = sub_1DB09D2E4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DB0A0500;
  v31 = v30 + v29;
  v32 = *(v27 + 104);
  v32(v31, *MEMORY[0x1E6969A88], v26);
  v33 = v31 + v28;
  v34 = v197;
  v32(v33, *MEMORY[0x1E6969A98], v26);
  sub_1DAF49F34(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v167 = v21;
  sub_1DB09D2B4();

  v35 = v162;
  v36 = *(v162 + 8);
  v37 = v169;
  v36(v12, v169);
  (*(v35 + 56))(v168, 1, 1, v37);
  v38 = sub_1DB09D344();
  v39 = v163;
  (*(*(v38 - 8) + 56))();
  v40 = v34;
  v41 = sub_1DB09CD94();
  if (v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  if (v43 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    v40 = v34;
    v44 = sub_1DB09CDA4();
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      v46 = v44;
    }

    if (v46 != 0x8000000000000000)
    {
      sub_1DB09CDB4();
      sub_1DB09D2D4();
      v47 = v161;
      sub_1DB09D2C4();
      v36(v12, v169);
      v48 = v164;
      v49 = v165;
      if ((*(v164 + 48))(v47, 1, v165) == 1)
      {
        sub_1DAF40AEC(v47, &unk_1ECC0EAD0, &qword_1DB0AD520);
        v40 = "unable to calculate rounded date for guid";
        v39 = "CoreODIEssentials/ODIGUID.swift";
        v43 = "createNewTrainingGUID(serverTime:)";
        if (qword_1EE301E08 == -1)
        {
          goto LABEL_11;
        }

        goto LABEL_54;
      }

      v64 = v158;
      (*(v48 + 32))(v158, v47, v49);
      sub_1DB09D104();
      v66 = v197;
      if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v65 > -9.22337204e18)
      {
        if (v65 < 9.22337204e18)
        {
          *&v180 = v65;
          v67 = sub_1DB09E1D4();
          v69 = v68;
          v70 = sub_1DB09D964();
          *(v70 + 16) = 6;
          *(v70 + 36) = 0;
          *(v70 + 32) = 0;
          v71 = SecRandomCopyBytes(*MEMORY[0x1E697B308], 6uLL, (v70 + 32));
          if (v71)
          {
            v72 = v71;

            LOBYTE(v180) = 113;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1DB0A04E0;
            *(inited + 32) = 13;
            v74 = inited + 32;
            *(inited + 64) = MEMORY[0x1E69E72F0];
            *(inited + 40) = v72;
            v75 = sub_1DAF3E280(inited);
            swift_setDeallocating();
            sub_1DAF40AEC(v74, &qword_1ECC0E380, &qword_1DB0A0308);
            ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001FLL, 0x80000001DB0C22F0, 0, &v180, 0, v75, 0xD00000000000001FLL, 0x80000001DB0C2260, 0xD00000000000001ALL, 0x80000001DB0C2310, 335);

            swift_willThrow();
            v76 = *(v48 + 8);
            v76(v158, v49);
            v77 = v160;
            v78 = *(v159 + 8);
            v78(v166, v160);
            v78(v66, v77);
            v76(v167, v49);
            return;
          }

          v79 = sub_1DAF49DF0(v70);
          v81 = v80;

          v82 = sub_1DB09D014();
          v84 = v83;
          sub_1DAF40780(v79, v81);
          v85 = v157;
          if (v157 < 3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E440, &unk_1DB0A0580);
            v86 = swift_allocObject();
            *(v86 + 16) = xmmword_1DB0A04F0;
            *(v86 + 32) = v85 + 49;
            *(v86 + 40) = 0xE100000000000000;
            v87 = v149;
            *(v86 + 48) = v150;
            v88 = v67;
            v89 = v154;
            *(v86 + 56) = v153;
            *(v86 + 64) = v87;
            v90 = v147;
            v91 = v148;
            *(v86 + 72) = v152;
            *(v86 + 80) = v91;
            v92 = object;
            *(v86 + 88) = v155;
            *(v86 + 96) = v90;
            v93 = countAndFlagsBits;
            *(v86 + 104) = v89;
            *(v86 + 112) = v93;
            *(v86 + 120) = v92;
            *(v86 + 128) = v88;
            v168 = v82;
            v169 = v88;
            *(v86 + 136) = v69;
            *(v86 + 144) = v82;
            *(v86 + 152) = v84;
            *&v180 = v86;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
            v94 = v84;
            sub_1DAF4AA8C(&qword_1EE301930, &qword_1ECC0E448, &qword_1DB0A3110, MEMORY[0x1E69E6310]);
            sub_1DB09D694();

            v95 = v144;
            sub_1DB09D714();
            v96 = sub_1DB09D6D4();
            v98 = v97;

            (*(v145 + 8))(v95, v146);
            if (v98 >> 60 != 15)
            {
              v163 = v94;
              v99 = sub_1DB09D004();
              v100 = DigestSha256(v99);

              if (v100)
              {
                v101 = sub_1DB09D034();
                v103 = v102;

                v104 = sub_1DB09CFE4();
                v106 = v105;
                v162 = sub_1DB09D014();
                v108 = v107;
                sub_1DAF18404(v96, v98);
                sub_1DAF40780(v104, v106);
                sub_1DAF40780(v101, v103);
                LOBYTE(v171) = v157;
                *(&v171 + 1) = *v196;
                DWORD1(v171) = *&v196[3];
                *(&v171 + 1) = v150;
                *&v172 = v153;
                *(&v172 + 1) = v149;
                *&v173 = v152;
                *(&v173 + 1) = v148;
                *&v174 = v155;
                *(&v174 + 1) = v147;
                *&v175 = v154;
                *(&v175 + 1) = countAndFlagsBits;
                *&v176 = object;
                *(&v176 + 1) = v169;
                *&v177 = v69;
                *(&v177 + 1) = v168;
                *&v178 = v163;
                *(&v178 + 1) = v162;
                v179 = v108;
                LOBYTE(v180) = v157;
                DWORD1(v180) = *&v196[3];
                *(&v180 + 1) = *v196;
                *(&v180 + 1) = v150;
                v181 = v153;
                v182 = v149;
                v183 = v152;
                v184 = v148;
                v185 = v155;
                v186 = v147;
                v187 = v154;
                v188 = countAndFlagsBits;
                v189 = object;
                v190 = v169;
                v191 = v69;
                v192 = v168;
                v193 = v163;
                v194 = v162;
                v195 = v108;
                sub_1DAF49ECC(&v171, v170);
                sub_1DAF49F04(&v180);
                v109 = v165;
                v110 = *(v164 + 8);
                v110(v158, v165);
                v111 = v160;
                v112 = *(v159 + 8);
                v112(v166, v160);
                v112(v197, v111);
                v110(v167, v109);
                v113 = v178;
                v114 = v143;
                *&v143->deviceTime._object = v177;
                *&v114->rand._object = v113;
                v114->hash._object = v179;
                v115 = v174;
                *&v114->mid._object = v173;
                *&v114->chipID._object = v115;
                v116 = v176;
                *&v114->ecid._object = v175;
                *&v114->serverTime._object = v116;
                v117 = v172;
                *&v114->version = v171;
                *&v114->dsid._object = v117;
                return;
              }

              sub_1DAF18404(v96, v98);
            }

            if (qword_1EE301E08 != -1)
            {
              swift_once();
            }

            v130 = MEMORY[0x1E69E7CC0];
            v131 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
            if (*(v131 + 16))
            {
              v132 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
              if (v133)
              {
                sub_1DAF409DC(*(v131 + 56) + 32 * v132, &v180);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
                if (swift_dynamicCast())
                {
                  v130 = v171;
                }
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v130 = sub_1DAF72EC0(0, *(v130 + 2) + 1, 1, v130);
            }

            v135 = *(v130 + 2);
            v134 = *(v130 + 3);
            if (v135 >= v134 >> 1)
            {
              v130 = sub_1DAF72EC0((v134 > 1), v135 + 1, 1, v130);
            }

            *(v130 + 2) = v135 + 1;
            v136 = &v130[56 * v135];
            *(v136 + 4) = 0xD00000000000001CLL;
            *(v136 + 5) = 0x80000001DB0C2370;
            *(v136 + 6) = 0xD00000000000001FLL;
            *(v136 + 7) = 0x80000001DB0C2260;
            *(v136 + 8) = 0xD000000000000022;
            *(v136 + 9) = 0x80000001DB0C23F0;
            *(v136 + 10) = 229;
            v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
            *&v180 = v130;
            sub_1DAF40D20(&v180, &v171);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v170[0] = v131;
            sub_1DAF3B11C(&v171, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
            v138 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v128 = sub_1DB09D6B4();
            v129 = sub_1DB09D604();
            [v138 initWithDomain:v128 code:-1117 userInfo:{v129, v143}];
            goto LABEL_51;
          }

          v64 = "Unexpected DSID Type";
          v39 = "CoreODIEssentials/ODIGUID.swift";
          v47 = "fromDsidType(_:)";
          if (qword_1EE301E08 == -1)
          {
LABEL_30:
            v118 = v64 - 32;
            v119 = MEMORY[0x1E69E7CC0];
            v120 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
            if (*(v120 + 16))
            {
              v121 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
              if (v122)
              {
                sub_1DAF409DC(*(v120 + 56) + 32 * v121, &v180);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
                if (swift_dynamicCast())
                {
                  v119 = v171;
                }
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v119 = sub_1DAF72EC0(0, *(v119 + 2) + 1, 1, v119);
            }

            v124 = *(v119 + 2);
            v123 = *(v119 + 3);
            if (v124 >= v123 >> 1)
            {
              v119 = sub_1DAF72EC0((v123 > 1), v124 + 1, 1, v119);
            }

            *(v119 + 2) = v124 + 1;
            v125 = &v119[56 * v124];
            *(v125 + 4) = 0xD000000000000014;
            *(v125 + 5) = v118 | 0x8000000000000000;
            *(v125 + 6) = 0xD00000000000001FLL;
            *(v125 + 7) = (v39 - 32) | 0x8000000000000000;
            *(v125 + 8) = 0xD000000000000010;
            *(v125 + 9) = (v47 - 32) | 0x8000000000000000;
            *(v125 + 10) = 54;
            v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
            *&v180 = v119;
            sub_1DAF40D20(&v180, &v171);
            v126 = swift_isUniquelyReferenced_nonNull_native();
            v170[0] = v120;
            sub_1DAF3B11C(&v171, 0x636F766E4949444FLL, 0xEE00736E6F697461, v126);
            v127 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v128 = sub_1DB09D6B4();
            v129 = sub_1DB09D604();
            [v127 initWithDomain:v128 code:-1116 userInfo:{v129, v143}];
LABEL_51:

            swift_willThrow();
            v139 = v165;
            v140 = *(v164 + 8);
            v140(v158, v165);
            v141 = v160;
            v142 = *(v159 + 8);
            v142(v166, v160);
            v142(v197, v141);
            v140(v167, v139);
            return;
          }

LABEL_58:
          swift_once();
          goto LABEL_30;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_11:
  v50 = v40 - 32;
  v51 = MEMORY[0x1E69E7CC0];
  v52 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v52 + 16))
  {
    v53 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v54)
    {
      sub_1DAF409DC(*(v52 + 56) + 32 * v53, &v180);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v51 = v171;
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v51 = sub_1DAF72EC0(0, *(v51 + 2) + 1, 1, v51);
  }

  v56 = *(v51 + 2);
  v55 = *(v51 + 3);
  if (v56 >= v55 >> 1)
  {
    v51 = sub_1DAF72EC0((v55 > 1), v56 + 1, 1, v51);
  }

  *(v51 + 2) = v56 + 1;
  v57 = &v51[56 * v56];
  *(v57 + 4) = 0xD000000000000029;
  *(v57 + 5) = v50 | 0x8000000000000000;
  *(v57 + 6) = 0xD00000000000001FLL;
  *(v57 + 7) = (v39 - 32) | 0x8000000000000000;
  *(v57 + 8) = 0xD000000000000022;
  *(v57 + 9) = (v43 - 32) | 0x8000000000000000;
  *(v57 + 10) = 223;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v180 = v51;
  sub_1DAF40D20(&v180, &v171);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v170[0] = v52;
  sub_1DAF3B11C(&v171, 0x636F766E4949444FLL, 0xEE00736E6F697461, v58);
  v59 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v60 = sub_1DB09D6B4();
  v61 = sub_1DB09D604();
  [v59 initWithDomain:v60 code:-1113 userInfo:v61];

  swift_willThrow();
  v62 = v160;
  v63 = *(v159 + 8);
  v63(v166, v160);
  v63(v197, v62);
  (*(v164 + 8))(v167, v165);
}

uint64_t sub_1DAF46F8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1DB09D734();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 64);
  if (v11 >= 3)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v50 = MEMORY[0x1E69E7CC0];
    v51 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v51 + 16))
    {
      v52 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v53)
      {
        sub_1DAF409DC(*(v51 + 56) + 32 * v52, &v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v50 = v90;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_1DAF72EC0(0, *(v50 + 2) + 1, 1, v50);
    }

    v55 = *(v50 + 2);
    v54 = *(v50 + 3);
    if (v55 >= v54 >> 1)
    {
      v50 = sub_1DAF72EC0((v54 > 1), v55 + 1, 1, v50);
    }

    *(v50 + 2) = v55 + 1;
    v56 = &v50[56 * v55];
    *(v56 + 4) = 0xD000000000000014;
    *(v56 + 5) = 0x80000001DB0C2330;
    *(v56 + 6) = 0xD00000000000001FLL;
    *(v56 + 7) = 0x80000001DB0C2260;
    *(v56 + 8) = 0xD000000000000010;
    *(v56 + 9) = 0x80000001DB0C2350;
    *(v56 + 10) = 54;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v99 = v50;
    sub_1DAF40D20(&v99, &v90);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89[0] = v51;
    sub_1DAF3B11C(&v90, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v58 = -1116;
  }

  else
  {
    v76 = a2;
    v77 = v3;
    v12 = a1[2];
    v87 = a1[3];
    v84 = a1[4];
    v85 = v12;
    v13 = a1[6];
    v116 = a1[5];
    v83 = v13;
    v14 = a1[7];
    v15 = *v2;
    v78 = v2[1];
    v79 = v10;
    v16 = v2[2];
    v17 = v2[3];
    v18 = v2[4];
    v88 = v2[5];
    v19 = v2[6];
    v86 = v2[7];
    v80 = v8;
    v81 = v7;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E440, &unk_1DB0A0580);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1DB0A04F0;
    v74 = v15;
    v75 = v20;
    *(v21 + 32) = v20 + 49;
    *(v21 + 40) = 0xE100000000000000;
    *(v21 + 48) = v15;
    v22 = v78;
    *(v21 + 56) = v78;
    *(v21 + 64) = v16;
    v72 = v18;
    v73 = v16;
    v23 = v87;
    v24 = v88;
    *(v21 + 72) = v17;
    *(v21 + 80) = v18;
    *(v21 + 88) = v24;
    *(v21 + 96) = v19;
    v71 = v19;
    v25 = v85;
    *(v21 + 104) = v86;
    *(v21 + 112) = v25;
    v26 = v83;
    v27 = v84;
    *(v21 + 120) = v23;
    *(v21 + 128) = v27;
    v28 = v22;
    *(v21 + 136) = v116;
    *(v21 + 144) = v26;
    *(v21 + 152) = v14;
    *&v99 = v21;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v82 = v14;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
    sub_1DAF4AA8C(&qword_1EE301930, &qword_1ECC0E448, &qword_1DB0A3110, MEMORY[0x1E69E6310]);
    sub_1DB09D694();

    v29 = v79;
    sub_1DB09D714();
    v30 = sub_1DB09D6D4();
    v32 = v31;

    (*(v80 + 8))(v29, v81);
    if (v32 >> 60 != 15)
    {
      v81 = v17;
      v33 = sub_1DB09D004();
      v34 = DigestSha256(v33);

      if (v34)
      {
        v35 = sub_1DB09D034();
        v37 = v36;

        v38 = sub_1DB09CFE4();
        v39 = v30;
        v41 = v40;
        v42 = sub_1DB09D014();
        v79 = v43;
        v80 = v42;
        sub_1DAF18404(v39, v32);
        sub_1DAF40780(v38, v41);
        sub_1DAF40780(v35, v37);
        LOBYTE(v90) = v75;
        *(&v90 + 1) = v115[0];
        DWORD1(v90) = *(v115 + 3);
        *(&v90 + 1) = v74;
        *&v91 = v28;
        *(&v91 + 1) = v73;
        *&v92 = v81;
        *(&v92 + 1) = v72;
        *&v93 = v88;
        *(&v93 + 1) = v71;
        *&v94 = v86;
        *(&v94 + 1) = v85;
        *&v95 = v87;
        *(&v95 + 1) = v84;
        *&v96 = v116;
        *(&v96 + 1) = v83;
        *&v97 = v82;
        *(&v97 + 1) = v80;
        v98 = v79;
        LOBYTE(v99) = v75;
        DWORD1(v99) = *(v115 + 3);
        *(&v99 + 1) = v115[0];
        *(&v99 + 1) = v74;
        v100 = v28;
        v101 = v73;
        v102 = v81;
        v103 = v72;
        v104 = v88;
        v105 = v71;
        v106 = v86;
        v107 = v85;
        v108 = v87;
        v109 = v84;
        v110 = v116;
        v111 = v83;
        v112 = v82;
        v113 = v80;
        v114 = v79;
        sub_1DAF49ECC(&v90, v89);
        result = sub_1DAF49F04(&v99);
        v45 = v97;
        v46 = v76;
        *(v76 + 96) = v96;
        *(v46 + 112) = v45;
        *(v46 + 128) = v98;
        v47 = v93;
        *(v46 + 32) = v92;
        *(v46 + 48) = v47;
        v48 = v95;
        *(v46 + 64) = v94;
        *(v46 + 80) = v48;
        v49 = v91;
        *v46 = v90;
        *(v46 + 16) = v49;
        return result;
      }

      sub_1DAF18404(v30, v32);
    }

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v59 = MEMORY[0x1E69E7CC0];
    v60 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v60 + 16))
    {
      v61 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v62)
      {
        sub_1DAF409DC(*(v60 + 56) + 32 * v61, &v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v59 = v90;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1DAF72FF4(0, *(v59 + 2) + 1, 1, v59);
    }

    v64 = *(v59 + 2);
    v63 = *(v59 + 3);
    if (v64 >= v63 >> 1)
    {
      v59 = sub_1DAF72FF4((v63 > 1), v64 + 1, 1, v59);
    }

    *(v59 + 2) = v64 + 1;
    v65 = &v59[56 * v64];
    *(v65 + 4) = 0xD00000000000001CLL;
    *(v65 + 5) = 0x80000001DB0C2370;
    *(v65 + 6) = 0xD00000000000001FLL;
    *(v65 + 7) = 0x80000001DB0C2260;
    *(v65 + 8) = 0xD000000000000012;
    *(v65 + 9) = 0x80000001DB0C2420;
    *(v65 + 10) = 200;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v99 = v59;
    sub_1DAF40D20(&v99, &v90);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v89[0] = v60;
    sub_1DAF3B11C(&v90, 0x636F766E49504944, 0xEE00736E6F697461, v66);
    v58 = -1;
  }

  v67 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v68 = sub_1DB09D6B4();
  v69 = sub_1DB09D604();
  [v67 initWithDomain:v68 code:v58 userInfo:v69];

  return swift_willThrow();
}

uint64_t sub_1DAF4789C()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 40) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAF47934, v1, 0);
}

uint64_t sub_1DAF47934()
{
  v1 = *(v0 + 40);
  if (*(v1 + 168))
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAF47B14, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1DAF47A04;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAF47A04()
{
  v1 = *v0;

  v2 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DAF47B14, v2, 0);
}

uint64_t sub_1DAF47B14()
{
  v1 = v0[5];
  v2 = sub_1DAF4AA44(&qword_1EE303990, type metadata accessor for ODIDeviceInfo, &protocol conformance descriptor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  strcpy((v3 + 24), "UniqueChipID");
  *(v3 + 37) = 0;
  *(v3 + 38) = -5120;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E430, &unk_1DB0A0550);
  *v4 = v0;
  v4[1] = sub_1DAF47C7C;

  return MEMORY[0x1EEE6DDE0](v0 + 2, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAF4AC38, v3, v5);
}

uint64_t sub_1DAF47C7C()
{
  v1 = *v0;

  *(v1 + 72) = *(v1 + 16);
  *(v1 + 25) = *(v1 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1DAF47DBC, 0, 0);
}

uint64_t sub_1DAF47DBC()
{
  v6 = v0;
  if (*(v0 + 25))
  {
    v5 = 10;
    CoreODILogger.warning(_:category:)(0xD000000000000014, 0x80000001DB0C2640, &v5);

    v1 = 0;
    v2 = 0;
  }

  else
  {
    *(v0 + 32) = *(v0 + 72);
    v1 = sub_1DB09E1D4();
  }

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1DAF47EA4()
{
  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE302B58;
  v2 = type metadata accessor for ODIAccountManager();
  v0[5] = v2;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1DAF47FA4;

  return sub_1DB04DA34();
}

uint64_t sub_1DAF47FA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_1DAF48144;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_1DAF480D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DAF480D8()
{
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[14];
  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1DAF48144()
{
  v5 = v0;
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4[0] = 10;
  v4[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001DLL, 0x80000001DB0C2600);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.warning(_:category:)(0, 0xE000000000000000, v4);

  v2 = v0[1];

  return v2(0, 0);
}

uint64_t sub_1DAF4826C()
{
  if (qword_1EE302B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE302B58;
  v2 = type metadata accessor for ODIAccountManager();
  v0[5] = v2;
  v0[6] = &off_1F56CFCD8;
  v0[2] = v1;
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[11] = v3;
  v4 = *v3;

  return MEMORY[0x1EEE6DFA0](sub_1DAF48344, v4, 0);
}

uint64_t sub_1DAF48344()
{
  v1 = sub_1DB04E1DC();
  v0[12] = 0;
  v0[13] = v2;
  v0[14] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DAF4AC34, 0, 0);
}

uint64_t sub_1DAF483D8()
{
  v5 = v0;
  v1 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4[0] = 10;
  v4[1] = 0xE000000000000000;
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001DLL, 0x80000001DB0C2620);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.warning(_:category:)(0, 0xE000000000000000, v4);

  v2 = v0[1];

  return v2(0, 0);
}

uint64_t sub_1DAF484E4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E488, &qword_1DB0A0950);
  if (swift_dynamicCast())
  {
    sub_1DAF332B8(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1DB09CDD4();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1DAF40AEC(__src, &qword_1ECC0E490, &qword_1DB0A0958);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1DB09DEC4();
  }

  sub_1DAF493C4(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1DAF4A91C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1DAF4948C(sub_1DAF4A9BC, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1DB09CFC4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1DAFED704(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1DB09D7E4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1DB09D814();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1DB09DEC4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1DAFED704(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1DB09D7F4();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1DB09CFD4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1DB09CFD4();
    sub_1DAF18404(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1DAF18404(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1DAF40674(*&__src[0], *(&__src[0] + 1));

  sub_1DAF40780(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1DAF48A04(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1DAFB75C0(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1DB0415A8(v3, v4);
    }

    else
    {
      v6 = sub_1DB041624(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_1DAF48AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v6 = sub_1DB09D4C4();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB09D4F4();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A8, &qword_1DB0A0970);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  *(v17 + 24) = a4;
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = sub_1DAF4AB94;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor_38;
  v18 = _Block_copy(aBlock);

  sub_1DB09D4E4();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAF4AA44(&unk_1EE301990, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF4AA8C(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948, MEMORY[0x1E69E6328]);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v11, v8, v18);
  _Block_release(v18);
  (*(v24 + 8))(v8, v6);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_1DAF48E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v6 = sub_1DB09D4C4();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB09D4F4();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E480, &qword_1DB0A0940);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  *(v17 + 24) = a4;
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = sub_1DAF4A8DC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAF75DB0;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);

  sub_1DB09D4E4();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAF4AA44(&unk_1EE301990, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F010, &qword_1DB0A0948);
  sub_1DAF4AA8C(&qword_1EE301940, &qword_1ECC0F010, &qword_1DB0A0948, MEMORY[0x1E69E6328]);
  sub_1DB09DCF4();
  MEMORY[0x1E12802A0](0, v11, v8, v18);
  _Block_release(v18);
  (*(v24 + 8))(v8, v6);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_1DAF49278(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09D6B4();
  v3 = MGCopyAnswer();

  if (v3)
  {
    swift_dynamicCast();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A8, &qword_1DB0A0970);
  return sub_1DB09D9B4();
}

uint64_t sub_1DAF49328(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09D6B4();
  v3 = MGCopyAnswer();

  if (v3)
  {
    swift_dynamicCast();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E480, &qword_1DB0A0940);
  return sub_1DB09D9B4();
}

uint64_t *sub_1DAF493C4@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1DAFB75C0(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1DB09CD84();
      swift_allocObject();
      v8 = sub_1DB09CD34();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1DB09CFB4();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_1DAF4948C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1DAF40780(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1DAF40780(v7, v6);
    *v4 = xmmword_1DB0A0510;
    sub_1DAF40780(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1DB09CD44() && __OFSUB__(v7, sub_1DB09CD74()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1DB09CD84();
      swift_allocObject();
      v14 = sub_1DB09CD24();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1DAF4989C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1DAF40780(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1DB0A0510;
    sub_1DAF40780(0, 0xC000000000000000);
    sub_1DB09CF74();
    result = sub_1DAF4989C(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

void *sub_1DAF49830(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DAF4989C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DB09CD44();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DB09CD74();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DB09CD64();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DAF49950@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1DB09DE54();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s17CoreODIEssentials13ODIClientGUIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v34 = a1[6];
  v35 = a1[5];
  v31 = a1[8];
  v32 = a1[7];
  v27 = a1[10];
  v28 = a1[9];
  v23 = a1[12];
  v24 = a1[11];
  v19 = a1[14];
  v20 = a1[13];
  v15 = a1[16];
  v16 = a1[15];
  v7 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v33 = a2[6];
  v29 = a2[8];
  v30 = a2[7];
  v25 = a2[10];
  v26 = a2[9];
  v21 = a2[12];
  v22 = a2[11];
  v17 = a2[14];
  v18 = a2[13];
  v13 = a2[16];
  v14 = a2[15];
  if (*a1 == *a2)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = sub_1DB09E254();
    swift_bridgeObjectRelease_n();
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v2 != v7 || v3 != v6) && (sub_1DB09E254() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_1DB09E254() & 1) == 0 || (v35 != v10 || v34 != v33) && (sub_1DB09E254() & 1) == 0 || (v32 != v30 || v31 != v29) && (sub_1DB09E254() & 1) == 0 || (v28 != v26 || v27 != v25) && (sub_1DB09E254() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_1DB09E254() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1DB09E254() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_1DB09E254();
}

uint64_t sub_1DAF49C44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D697473 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D697464 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684955506 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

unint64_t sub_1DAF49DA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAF49DF0(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
  v10 = sub_1DAF4AA8C(&qword_1EE301910, &qword_1ECC0E4A0, &qword_1DB0A0968, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1DB040508(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

uint64_t sub_1DAF49F34(uint64_t a1)
{
  v2 = sub_1DB09D2E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E498, &qword_1DB0A0960);
    v9 = sub_1DB09DDF4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1DAF4AA44(&qword_1EE3044C8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1DB09D674();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1DAF4AA44(&qword_1EE3044C0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1DB09D6A4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAF4A268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DAF4A2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DAF4A344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF4A38C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DAF4A420(uint64_t a1, int a2)
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

uint64_t sub_1DAF4A468(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ODIClientGUID.GUIDSeedVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIClientGUID.GUIDSeedVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIClientGUIDSeeds.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIClientGUIDSeeds.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAF4A780()
{
  result = qword_1ECC0E468;
  if (!qword_1ECC0E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E468);
  }

  return result;
}

unint64_t sub_1DAF4A7D8()
{
  result = qword_1ECC0E470;
  if (!qword_1ECC0E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E470);
  }

  return result;
}

unint64_t sub_1DAF4A830()
{
  result = qword_1EE3028E0;
  if (!qword_1EE3028E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3028E0);
  }

  return result;
}

unint64_t sub_1DAF4A888()
{
  result = qword_1EE3028E8;
  if (!qword_1EE3028E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3028E8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DAF4A91C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1DAFB75A0(result);
    }

    else
    {
      sub_1DB09CD84();
      swift_allocObject();
      sub_1DB09CD54();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DB09CFB4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1DAF4A9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1DAF49830(sub_1DAF4AA24, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1DAF4AA44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAF4AA8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1DAF4ABBC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

id DIPError(_:fromError:code:forceCode:properties:file:function:line:)(uint64_t a1, uint64_t a2, void *a3, unsigned __int16 *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  LOBYTE(v12) = a5;
  v14 = *a4;
  if (qword_1EE300B90 != -1)
  {
LABEL_67:
    swift_once();
  }

  v15 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v16 = v15;
  v84 = a6;
  if (!a3)
  {
    goto LABEL_17;
  }

  v17 = v15;
  v18 = a3;
  v19 = sub_1DB09CE64();
  v20 = [v19 domain];
  v21 = sub_1DB09D6C4();
  v23 = v22;

  if (v21 == 0x726F727245504944 && v23 == 0xE800000000000000)
  {
    goto LABEL_10;
  }

  v25 = sub_1DB09E254();

  if (v25)
  {
LABEL_11:
    if ((v12 & 1) == 0)
    {
      DIPErrorCode.init(rawValue:)([v19 code]);
      if (v91 == 462)
      {
        v14 = v14;
      }

      else
      {
        v14 = v91;
      }
    }

    v30 = [v19 userInfo];
    v16 = sub_1DB09D624();

    goto LABEL_16;
  }

  v26 = [v19 domain];
  v27 = sub_1DB09D6C4();
  v29 = v28;

  if (v27 == 0x726F72724549444FLL && v29 == 0xE800000000000000)
  {
LABEL_10:

    goto LABEL_11;
  }

  v75 = sub_1DB09E254();

  if (v75)
  {
    goto LABEL_11;
  }

  v76 = sub_1DB09D6C4();
  v78 = v77;
  *(&v92 + 1) = sub_1DAF4D7A4();
  *&v91 = v19;
  sub_1DAF40D20(&v91, &v88);
  v12 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v87[0] = v17;
  sub_1DAF3B11C(&v88, v76, v78, isUniquelyReferenced_nonNull_native);

  v16 = *&v87[0];
LABEL_16:
  a6 = v84;
LABEL_17:
  if (!a6)
  {
LABEL_53:
    v61 = *(v16 + 16);

    if (v61 && (v62 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v63 & 1) != 0) && (sub_1DAF409DC(*(v16 + 56) + 32 * v62, &v91), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), (swift_dynamicCast() & 1) != 0))
    {
      v64 = v88;
    }

    else
    {
      v64 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1DAF72FF4(0, *(v64 + 2) + 1, 1, v64);
    }

    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    if (v66 >= v65 >> 1)
    {
      v64 = sub_1DAF72FF4((v65 > 1), v66 + 1, 1, v64);
    }

    *(v64 + 2) = v66 + 1;
    v67 = &v64[56 * v66];
    *(v67 + 4) = a1;
    *(v67 + 5) = a2;
    *(v67 + 6) = a7;
    *(v67 + 7) = a8;
    *(v67 + 8) = a9;
    *(v67 + 9) = a10;
    *(v67 + 10) = a11;
    *(&v92 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v91 = v64;
    sub_1DAF40D20(&v91, &v88);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *&v87[0] = v16;
    sub_1DAF3B11C(&v88, 0x636F766E49504944, 0xEE00736E6F697461, v68);
    v69 = qword_1DB0A1320[v14];
    v70 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v71 = sub_1DB09D6B4();
    v72 = sub_1DB09D604();
    v73 = [v70 initWithDomain:v71 code:v69 userInfo:v72];

    return v73;
  }

  v31 = *(v16 + 16);

  v80 = v14;
  if (v31 && (v32 = sub_1DAF35210(0x65706F7250504944, 0xED00007365697472), (v33 & 1) != 0) && (sub_1DAF409DC(*(v16 + 56) + 32 * v32, &v91), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4B0, &qword_1DB0A09A8), (swift_dynamicCast() & 1) != 0))
  {
    a3 = v88;
  }

  else
  {
    a3 = sub_1DAF3E3C8(MEMORY[0x1E69E7CC0]);
  }

  v34 = 0;
  v35 = a6 + 64;
  v36 = 1 << *(a6 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v14 = v37 & *(a6 + 64);
  v38 = (v36 + 63) >> 6;
  v81 = v16;
  while (1)
  {
    while (1)
    {
      v39 = v34;
      if (!v14)
      {
        if (v38 <= v34 + 1)
        {
          v41 = v34 + 1;
        }

        else
        {
          v41 = v38;
        }

        v34 = v41 - 1;
        while (1)
        {
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v40 >= v38)
          {
            v14 = 0;
            v90 = 0;
            v88 = 0u;
            v89 = 0u;
            goto LABEL_36;
          }

          v14 = *(v35 + 8 * v40);
          ++v39;
          if (v14)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v40 = v34;
LABEL_35:
      v42 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v43 = v42 | (v40 << 6);
      v44 = *(*(a6 + 48) + v43);
      sub_1DAF409DC(*(a6 + 56) + 32 * v43, v87);
      LOBYTE(v88) = v44;
      sub_1DAF40D20(v87, (&v88 + 8));
      v34 = v40;
LABEL_36:
      v91 = v88;
      v92 = v89;
      v93 = v90;
      if (!v90)
      {

        *(&v92 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4B0, &qword_1DB0A09A8);
        *&v91 = a3;
        sub_1DAF40D20(&v91, &v88);

        v60 = swift_isUniquelyReferenced_nonNull_native();
        *&v87[0] = v16;
        sub_1DAF3B11C(&v88, 0x65706F7250504944, 0xED00007365697472, v60);

        v16 = *&v87[0];
        LOWORD(v14) = v80;
        goto LABEL_53;
      }

      v12 = v91;
      sub_1DAF40D20((&v91 + 8), &v88);
      if (!a3[2])
      {
        break;
      }

      v45 = sub_1DAF35314(v12);
      if ((v46 & 1) == 0)
      {
        break;
      }

      sub_1DAF409DC(a3[7] + 32 * v45, v87);
      __swift_destroy_boxed_opaque_existential_1Tm(&v88);
      sub_1DAF4D73C(v87);
    }

    memset(v87, 0, sizeof(v87));
    sub_1DAF4D73C(v87);
    sub_1DAF409DC(&v88, v87);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v49 = sub_1DAF35314(v12);
    v50 = a3[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_66;
    }

    v53 = v48;
    if (a3[3] >= v52)
    {
      if ((v47 & 1) == 0)
      {
        sub_1DAF3C910();
      }
    }

    else
    {
      sub_1DAF3831C(v52, v47);
      v54 = sub_1DAF35314(v12);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_69;
      }

      v49 = v54;
    }

    if (v53)
    {
      v56 = (a3[7] + 32 * v49);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      sub_1DAF40D20(v87, v56);
      __swift_destroy_boxed_opaque_existential_1Tm(&v88);
      goto LABEL_51;
    }

    a3[(v49 >> 6) + 8] |= 1 << v49;
    *(a3[6] + v49) = v12;
    sub_1DAF40D20(v87, (a3[7] + 32 * v49));
    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
    v57 = a3[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      break;
    }

    a3[2] = v59;
LABEL_51:
    v16 = v81;
    a6 = v84;
  }

  __break(1u);
LABEL_69:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

uint64_t sub_1DAF4B4C0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 || (v7 = 0xE000000000000000, a3 != 0xE000000000000000))
  {
    v9 = 0xE000000000000000;
    if (sub_1DB09E254())
    {
      v8 = 0;
    }

    else
    {

      MEMORY[0x1E127FE90](8250, 0xE200000000000000);
      v8 = a2;
      v9 = a3;
    }

    v7 = 0xE000000000000000;
    if (sub_1DB09E254())
    {
      v21 = 0;
    }

    else
    {

      MEMORY[0x1E127FE90](10, 0xE100000000000000);
      v7 = a3;
      v21 = a2;
    }
  }

  else
  {
    v21 = 0;
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = sub_1DB09DB64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB0A0500;
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1DAF4DC24();
  *(v11 + 64) = v13;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  v14 = sub_1DAF4DC78(a1);
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 72) = v14;
  *(v11 + 80) = v15;
  sub_1DB09D444("%{public}@%{public}@", 20, 2, &dword_1DAF16000, a4, v10, v11);

  v16 = sub_1DB09DB44();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB0A0500;
  *(v17 + 56) = v12;
  *(v17 + 64) = v13;
  *(v17 + 32) = v21;
  *(v17 + 40) = v7;
  v18 = sub_1DAF4E33C(a1);
  *(v17 + 96) = v12;
  *(v17 + 104) = v13;
  *(v17 + 72) = v18;
  *(v17 + 80) = v19;
  sub_1DB09D444("%{public}@%{public}@", 20, 2, &dword_1DAF16000, a4, v16, v17);
}

CoreODIEssentials::DIPErrorCode_optional __swiftcall DIPErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > -30)
  {
    if (rawValue <= 39999)
    {
      if (rawValue <= 19999)
      {
        v2 = 0;
        switch(rawValue)
        {
          case -29:
            v2 = 23;
            goto LABEL_166;
          case -28:
            v2 = 22;
            goto LABEL_166;
          case -22:
            v2 = 21;
            goto LABEL_166;
          case -21:
            v2 = 20;
            goto LABEL_166;
          case -20:
            v2 = 19;
            goto LABEL_166;
          case -19:
            v2 = 18;
            goto LABEL_166;
          case -18:
            v2 = 17;
            goto LABEL_166;
          case -17:
            v2 = 16;
            goto LABEL_166;
          case -16:
            v2 = 15;
            goto LABEL_166;
          case -15:
            v2 = 14;
            goto LABEL_166;
          case -14:
            v2 = 13;
            goto LABEL_166;
          case -13:
            v2 = 12;
            goto LABEL_166;
          case -12:
            v2 = 11;
            goto LABEL_166;
          case -11:
            v2 = 10;
            goto LABEL_166;
          case -10:
            v2 = 9;
            goto LABEL_166;
          case -9:
            v2 = 8;
            goto LABEL_166;
          case -8:
            v2 = 7;
            goto LABEL_166;
          case -7:
            v2 = 6;
            goto LABEL_166;
          case -6:
            v2 = 5;
            goto LABEL_166;
          case -5:
            v2 = 4;
            goto LABEL_166;
          case -4:
            v2 = 3;
            goto LABEL_166;
          case -3:
            v2 = 2;
            goto LABEL_166;
          case -2:
            v2 = 1;
            goto LABEL_166;
          case -1:
            goto LABEL_166;
          case 200:
            v2 = 24;
            goto LABEL_166;
          default:
            goto LABEL_168;
        }
      }

      switch(rawValue)
      {
        case 20000:
          v2 = 25;
          goto LABEL_166;
        case 20001:
          v2 = 26;
          goto LABEL_166;
        case 20100:
          v2 = 27;
          goto LABEL_166;
      }
    }

    else
    {
      if (rawValue <= 40400)
      {
        switch(rawValue)
        {
          case 40000:
            v2 = 28;
            goto LABEL_166;
          case 40010:
            v2 = 29;
            goto LABEL_166;
          case 40011:
            v2 = 30;
            goto LABEL_166;
          case 40012:
            v2 = 31;
            goto LABEL_166;
          case 40013:
            v2 = 32;
            goto LABEL_166;
          case 40014:
            v2 = 33;
            goto LABEL_166;
          case 40015:
            v2 = 34;
            goto LABEL_166;
          case 40020:
            v2 = 35;
            goto LABEL_166;
          case 40021:
            v2 = 36;
            goto LABEL_166;
          case 40022:
            v2 = 37;
            goto LABEL_166;
          case 40023:
            v2 = 38;
            goto LABEL_166;
          case 40024:
            v2 = 39;
            goto LABEL_166;
          case 40025:
            v2 = 40;
            goto LABEL_166;
          case 40026:
            v2 = 41;
            goto LABEL_166;
          case 40027:
            v2 = 42;
            goto LABEL_166;
          case 40028:
            v2 = 43;
            goto LABEL_166;
          case 40029:
            v2 = 44;
            goto LABEL_166;
          case 40030:
            v2 = 45;
            goto LABEL_166;
          case 40101:
            v2 = 46;
            goto LABEL_166;
          case 40102:
            v2 = 47;
            goto LABEL_166;
          case 40200:
            v2 = 48;
            goto LABEL_166;
          case 40201:
            v2 = 49;
            goto LABEL_166;
          case 40205:
            v2 = 50;
            goto LABEL_166;
          default:
            goto LABEL_168;
        }
      }

      if (rawValue <= 40600)
      {
        if (rawValue <= 40403)
        {
          if (rawValue == 40401)
          {
            v2 = 51;
          }

          else if (rawValue == 40402)
          {
            v2 = 52;
          }

          else
          {
            v2 = 53;
          }

          goto LABEL_166;
        }

        switch(rawValue)
        {
          case 40404:
            v2 = 54;
            goto LABEL_166;
          case 40500:
            v2 = 55;
            goto LABEL_166;
          case 40600:
            v2 = 56;
            goto LABEL_166;
        }
      }

      else if (rawValue <= 50001)
      {
        switch(rawValue)
        {
          case 40601:
            v2 = 57;
            goto LABEL_166;
          case 50000:
            v2 = 58;
            goto LABEL_166;
          case 50001:
            v2 = 59;
            goto LABEL_166;
        }
      }

      else if (rawValue > 99991)
      {
        if (rawValue == 99992)
        {
          v2 = 62;
          goto LABEL_166;
        }

        if (rawValue == 99993)
        {
          v2 = 63;
          goto LABEL_166;
        }
      }

      else
      {
        if (rawValue == 50002)
        {
          v2 = 60;
          goto LABEL_166;
        }

        if (rawValue == 99991)
        {
          v2 = 61;
          goto LABEL_166;
        }
      }
    }
  }

  else
  {
    if (rawValue > -1408)
    {
      switch(rawValue)
      {
        case -1407:
          v2 = 83;
          goto LABEL_166;
        case -1406:
          v2 = 82;
          goto LABEL_166;
        case -1405:
          v2 = 81;
          goto LABEL_166;
        case -1404:
          v2 = 80;
          goto LABEL_166;
        case -1403:
          v2 = 79;
          goto LABEL_166;
        case -1402:
          v2 = 78;
          goto LABEL_166;
        case -1401:
          v2 = 77;
          goto LABEL_166;
        case -1317:
          v2 = 98;
          goto LABEL_166;
        case -1316:
          v2 = 97;
          goto LABEL_166;
        case -1315:
          v2 = 96;
          goto LABEL_166;
        case -1314:
          v2 = 95;
          goto LABEL_166;
        case -1311:
          v2 = 94;
          goto LABEL_166;
        case -1310:
          v2 = 93;
          goto LABEL_166;
        case -1309:
          v2 = 92;
          goto LABEL_166;
        case -1308:
          v2 = 91;
          goto LABEL_166;
        case -1307:
          v2 = 90;
          goto LABEL_166;
        case -1306:
          v2 = 89;
          goto LABEL_166;
        case -1305:
          v2 = 88;
          goto LABEL_166;
        case -1304:
          v2 = 87;
          goto LABEL_166;
        case -1303:
          v2 = 86;
          goto LABEL_166;
        case -1302:
          v2 = 85;
          goto LABEL_166;
        case -1301:
          v2 = 84;
          goto LABEL_166;
        case -1204:
          v2 = 76;
          goto LABEL_166;
        case -1203:
          v2 = 75;
          goto LABEL_166;
        case -1202:
          v2 = 74;
          goto LABEL_166;
        case -1201:
          v2 = 73;
          goto LABEL_166;
        case -1109:
          v2 = 72;
          goto LABEL_166;
        case -1108:
          v2 = 71;
          goto LABEL_166;
        case -1107:
          v2 = 70;
          goto LABEL_166;
        case -1106:
          v2 = 69;
          goto LABEL_166;
        case -1105:
          v2 = 68;
          goto LABEL_166;
        case -1104:
          v2 = 67;
          goto LABEL_166;
        case -1103:
          v2 = 66;
          goto LABEL_166;
        case -1102:
          v2 = 65;
          goto LABEL_166;
        case -1101:
          v2 = 64;
          goto LABEL_166;
        default:
          goto LABEL_168;
      }
    }

    if (rawValue <= -3103)
    {
      if (rawValue > -3107)
      {
        if (rawValue > -3105)
        {
          if (rawValue == -3104)
          {
            v2 = 123;
          }

          else
          {
            v2 = 122;
          }
        }

        else if (rawValue == -3106)
        {
          v2 = 125;
        }

        else
        {
          v2 = 124;
        }

        goto LABEL_166;
      }

      switch(rawValue)
      {
        case -131600:
          v2 = 99;
          goto LABEL_166;
        case -3108:
          v2 = 127;
          goto LABEL_166;
        case -3107:
          v2 = 126;
          goto LABEL_166;
      }
    }

    else
    {
      switch(rawValue)
      {
        case -2120:
          v2 = 119;
          goto LABEL_166;
        case -2119:
          v2 = 118;
          goto LABEL_166;
        case -2118:
          v2 = 117;
          goto LABEL_166;
        case -2117:
          v2 = 116;
          goto LABEL_166;
        case -2116:
          v2 = 115;
          goto LABEL_166;
        case -2115:
          v2 = 114;
          goto LABEL_166;
        case -2114:
          v2 = 113;
          goto LABEL_166;
        case -2113:
          v2 = 112;
          goto LABEL_166;
        case -2112:
          v2 = 111;
          goto LABEL_166;
        case -2111:
          v2 = 110;
          goto LABEL_166;
        case -2110:
          v2 = 109;
          goto LABEL_166;
        case -2109:
          v2 = 108;
          goto LABEL_166;
        case -2108:
          v2 = 107;
          goto LABEL_166;
        case -2107:
          v2 = 106;
          goto LABEL_166;
        case -2106:
          v2 = 105;
          goto LABEL_166;
        case -2105:
          v2 = 104;
          goto LABEL_166;
        case -2104:
          v2 = 103;
          goto LABEL_166;
        case -2103:
          v2 = 102;
          goto LABEL_166;
        case -2102:
          v2 = 101;
          goto LABEL_166;
        case -2101:
          v2 = 100;
          goto LABEL_166;
        default:
          if (rawValue == -3102)
          {
            v2 = 121;
            goto LABEL_166;
          }

          if (rawValue == -3101)
          {
            v2 = 120;
            goto LABEL_166;
          }

          break;
      }
    }
  }

LABEL_168:
  if (rawValue > -3301)
  {
    v2 = 128;
    switch(rawValue)
    {
      case -3300:
        v2 = 161;
        goto LABEL_166;
      case -3203:
        v2 = 152;
        goto LABEL_166;
      case -3202:
        v2 = 151;
        goto LABEL_166;
      case -3201:
        v2 = 150;
        goto LABEL_166;
      case -3200:
        v2 = 149;
        goto LABEL_166;
      case -3178:
        v2 = 160;
        goto LABEL_166;
      case -3177:
        v2 = 159;
        goto LABEL_166;
      case -3176:
        v2 = 158;
        goto LABEL_166;
      case -3175:
        v2 = 157;
        goto LABEL_166;
      case -3174:
        v2 = 156;
        goto LABEL_166;
      case -3173:
        v2 = 155;
        goto LABEL_166;
      case -3172:
        v2 = 154;
        goto LABEL_166;
      case -3171:
        v2 = 153;
        goto LABEL_166;
      case -3167:
        v2 = 148;
        goto LABEL_166;
      case -3166:
        v2 = 147;
        goto LABEL_166;
      case -3165:
        v2 = 146;
        goto LABEL_166;
      case -3164:
        v2 = 145;
        goto LABEL_166;
      case -3163:
        v2 = 144;
        goto LABEL_166;
      case -3162:
        v2 = 143;
        goto LABEL_166;
      case -3161:
        v2 = 142;
        goto LABEL_166;
      case -3159:
        v2 = 141;
        goto LABEL_166;
      case -3158:
        v2 = 140;
        goto LABEL_166;
      case -3157:
        v2 = 139;
        goto LABEL_166;
      case -3156:
        v2 = 138;
        goto LABEL_166;
      case -3155:
        v2 = 137;
        goto LABEL_166;
      case -3154:
        v2 = 136;
        goto LABEL_166;
      case -3153:
        v2 = 135;
        goto LABEL_166;
      case -3152:
        v2 = 134;
        goto LABEL_166;
      case -3151:
        v2 = 133;
        goto LABEL_166;
      case -3113:
        v2 = 132;
        goto LABEL_166;
      case -3112:
        v2 = 131;
        goto LABEL_166;
      case -3111:
        v2 = 130;
        goto LABEL_166;
      case -3110:
        v2 = 129;
        goto LABEL_166;
      case -3109:
        goto LABEL_166;
      default:
        goto LABEL_226;
    }
  }

  if (rawValue <= -5103)
  {
    if (rawValue > -5107)
    {
      if (rawValue > -5105)
      {
        if (rawValue == -5104)
        {
          v2 = 185;
        }

        else
        {
          v2 = 184;
        }
      }

      else if (rawValue == -5106)
      {
        v2 = 187;
      }

      else
      {
        v2 = 186;
      }

      goto LABEL_166;
    }

    if (rawValue > -5202)
    {
      if (rawValue == -5201)
      {
        v2 = 189;
        goto LABEL_166;
      }

      if (rawValue == -5107)
      {
        v2 = 188;
        goto LABEL_166;
      }
    }

    else
    {
      if (rawValue == -5203)
      {
        v2 = 191;
        goto LABEL_166;
      }

      if (rawValue == -5202)
      {
        v2 = 190;
        goto LABEL_166;
      }
    }
  }

  else
  {
    switch(rawValue)
    {
      case -4120:
        v2 = 181;
        goto LABEL_166;
      case -4119:
        v2 = 180;
        goto LABEL_166;
      case -4118:
        v2 = 179;
        goto LABEL_166;
      case -4117:
        v2 = 178;
        goto LABEL_166;
      case -4116:
        v2 = 177;
        goto LABEL_166;
      case -4115:
        v2 = 176;
        goto LABEL_166;
      case -4114:
        v2 = 175;
        goto LABEL_166;
      case -4113:
        v2 = 174;
        goto LABEL_166;
      case -4112:
        v2 = 173;
        goto LABEL_166;
      case -4111:
        v2 = 172;
        goto LABEL_166;
      case -4110:
        v2 = 171;
        goto LABEL_166;
      case -4109:
        v2 = 170;
        goto LABEL_166;
      case -4108:
        v2 = 169;
        goto LABEL_166;
      case -4107:
        v2 = 168;
        goto LABEL_166;
      case -4106:
        v2 = 167;
        goto LABEL_166;
      case -4105:
        v2 = 166;
        goto LABEL_166;
      case -4104:
        v2 = 165;
        goto LABEL_166;
      case -4103:
        v2 = 164;
        goto LABEL_166;
      case -4102:
        v2 = 163;
        goto LABEL_166;
      case -4101:
        v2 = 162;
        goto LABEL_166;
      default:
        if (rawValue == -5102)
        {
          v2 = 183;
          goto LABEL_166;
        }

        if (rawValue == -5101)
        {
          v2 = 182;
          goto LABEL_166;
        }

        break;
    }
  }

LABEL_226:
  if (rawValue <= -5703)
  {
    switch(rawValue)
    {
      case -6105:
        v2 = 241;
        goto LABEL_166;
      case -6104:
        v2 = 240;
        goto LABEL_166;
      case -6103:
        v2 = 239;
        goto LABEL_166;
      case -6102:
        v2 = 238;
        goto LABEL_166;
      case -6101:
        v2 = 237;
        goto LABEL_166;
      case -6100:
      case -6099:
      case -6098:
      case -6097:
      case -6096:
      case -6095:
      case -6094:
      case -6093:
      case -6092:
      case -6091:
      case -6090:
      case -6089:
      case -6088:
      case -6087:
      case -6086:
      case -6085:
      case -6084:
      case -6083:
      case -6082:
      case -6081:
      case -6080:
      case -6079:
      case -6078:
      case -6077:
      case -6076:
      case -6075:
      case -6074:
      case -6073:
      case -6072:
      case -6071:
      case -6070:
      case -6069:
      case -6068:
      case -6067:
      case -6066:
      case -6065:
      case -6064:
      case -6063:
      case -6062:
      case -6061:
      case -6060:
      case -6059:
      case -6058:
      case -6057:
      case -6056:
      case -6055:
      case -6054:
      case -6053:
      case -6052:
      case -6051:
      case -6050:
      case -6049:
      case -6048:
      case -6047:
      case -6046:
      case -6045:
      case -6044:
      case -6043:
      case -6042:
      case -6041:
      case -6040:
      case -6039:
      case -6038:
      case -6037:
      case -6036:
      case -6035:
      case -6034:
      case -6033:
      case -6032:
      case -6031:
      case -6030:
      case -6029:
      case -6028:
      case -6027:
      case -6026:
      case -6025:
      case -6024:
      case -6023:
      case -6022:
      case -6021:
      case -6020:
      case -6019:
      case -6018:
      case -6017:
      case -6016:
      case -6015:
      case -6014:
      case -6013:
      case -6012:
      case -6011:
      case -6000:
      case -5999:
      case -5998:
      case -5997:
      case -5996:
      case -5995:
      case -5994:
      case -5993:
      case -5992:
      case -5991:
      case -5990:
      case -5989:
      case -5988:
      case -5987:
      case -5986:
      case -5985:
      case -5984:
      case -5983:
      case -5982:
      case -5981:
      case -5980:
      case -5979:
      case -5978:
      case -5977:
      case -5976:
      case -5975:
      case -5974:
      case -5973:
      case -5972:
      case -5971:
      case -5970:
      case -5969:
      case -5968:
      case -5967:
      case -5966:
      case -5965:
      case -5964:
      case -5963:
      case -5962:
      case -5961:
      case -5960:
      case -5959:
      case -5958:
      case -5957:
      case -5956:
      case -5955:
      case -5954:
      case -5953:
      case -5952:
      case -5951:
      case -5950:
      case -5949:
      case -5948:
      case -5947:
      case -5946:
      case -5945:
      case -5944:
      case -5943:
      case -5942:
      case -5941:
      case -5940:
      case -5939:
      case -5938:
      case -5937:
      case -5936:
      case -5935:
      case -5934:
      case -5933:
      case -5932:
      case -5931:
      case -5930:
      case -5929:
      case -5928:
      case -5927:
      case -5926:
      case -5925:
      case -5924:
      case -5923:
      case -5922:
      case -5921:
      case -5920:
      case -5919:
      case -5918:
      case -5917:
      case -5916:
      case -5915:
      case -5914:
      case -5913:
        goto LABEL_266;
      case -6010:
        v2 = 236;
        goto LABEL_166;
      case -6009:
        v2 = 235;
        goto LABEL_166;
      case -6008:
        v2 = 234;
        goto LABEL_166;
      case -6007:
        v2 = 233;
        goto LABEL_166;
      case -6006:
        v2 = 232;
        goto LABEL_166;
      case -6005:
        v2 = 231;
        goto LABEL_166;
      case -6004:
        v2 = 230;
        goto LABEL_166;
      case -6003:
        v2 = 229;
        goto LABEL_166;
      case -6002:
        v2 = 228;
        goto LABEL_166;
      case -6001:
        v2 = 227;
        goto LABEL_166;
      case -5912:
        v2 = 226;
        goto LABEL_166;
      case -5911:
        v2 = 225;
        goto LABEL_166;
      case -5910:
        v2 = 224;
        goto LABEL_166;
      case -5909:
        v2 = 223;
        goto LABEL_166;
      case -5908:
        v2 = 222;
        goto LABEL_166;
      case -5907:
        v2 = 221;
        goto LABEL_166;
      case -5906:
        v2 = 220;
        goto LABEL_166;
      case -5905:
        v2 = 219;
        goto LABEL_166;
      case -5904:
        v2 = 218;
        goto LABEL_166;
      case -5903:
        v2 = 217;
        goto LABEL_166;
      case -5902:
        v2 = 216;
        goto LABEL_166;
      case -5901:
        v2 = 215;
        goto LABEL_166;
      default:
        switch(rawValue)
        {
          case -7013:
            v2 = 255;
            goto LABEL_166;
          case -7012:
            v2 = 254;
            goto LABEL_166;
          case -7011:
            v2 = 253;
            goto LABEL_166;
          case -7010:
            v2 = 252;
            goto LABEL_166;
          case -7009:
            v2 = 251;
            goto LABEL_166;
          case -7008:
            v2 = 250;
            goto LABEL_166;
          case -7007:
            v2 = 249;
            goto LABEL_166;
          case -7006:
            v2 = 248;
            goto LABEL_166;
          case -7005:
            v2 = 247;
            goto LABEL_166;
          case -7004:
            v2 = 246;
            goto LABEL_166;
          case -7003:
            v2 = 245;
            goto LABEL_166;
          case -7002:
            v2 = 244;
            goto LABEL_166;
          case -7001:
            v2 = 243;
            goto LABEL_166;
          case -7000:
            v2 = 242;
            goto LABEL_166;
          default:
            goto LABEL_266;
        }
    }
  }

  if (rawValue <= -5502)
  {
    if (rawValue > -5603)
    {
      if (rawValue == -5602)
      {
        v2 = 212;
        goto LABEL_166;
      }

      if (rawValue == -5601)
      {
        v2 = 211;
        goto LABEL_166;
      }
    }

    else
    {
      if (rawValue == -5702)
      {
        v2 = 214;
        goto LABEL_166;
      }

      if (rawValue == -5701)
      {
        v2 = 213;
        goto LABEL_166;
      }
    }
  }

  else
  {
    v2 = 192;
    switch(rawValue)
    {
      case -5301:
        v2 = 208;
        goto LABEL_166;
      case -5300:
      case -5299:
      case -5298:
      case -5297:
      case -5296:
      case -5295:
      case -5294:
      case -5293:
      case -5292:
      case -5291:
      case -5290:
      case -5289:
      case -5288:
      case -5287:
      case -5286:
      case -5285:
      case -5284:
      case -5283:
      case -5282:
      case -5281:
      case -5280:
      case -5279:
      case -5278:
      case -5277:
      case -5276:
      case -5275:
      case -5274:
      case -5273:
      case -5272:
      case -5271:
      case -5270:
      case -5269:
      case -5268:
      case -5267:
      case -5266:
      case -5265:
      case -5264:
      case -5263:
      case -5262:
      case -5261:
      case -5260:
      case -5259:
      case -5258:
      case -5257:
      case -5256:
      case -5255:
      case -5254:
      case -5253:
      case -5252:
      case -5251:
      case -5250:
      case -5249:
      case -5248:
      case -5247:
      case -5246:
      case -5245:
      case -5244:
      case -5243:
      case -5242:
      case -5241:
      case -5240:
      case -5239:
      case -5238:
      case -5237:
      case -5236:
      case -5235:
      case -5234:
      case -5233:
      case -5232:
      case -5231:
      case -5230:
      case -5229:
      case -5228:
      case -5227:
      case -5226:
      case -5225:
      case -5224:
      case -5223:
      case -5222:
      case -5221:
      case -5220:
        break;
      case -5219:
        v2 = 207;
        goto LABEL_166;
      case -5218:
        v2 = 206;
        goto LABEL_166;
      case -5217:
        v2 = 205;
        goto LABEL_166;
      case -5216:
        v2 = 204;
        goto LABEL_166;
      case -5215:
        v2 = 203;
        goto LABEL_166;
      case -5214:
        v2 = 202;
        goto LABEL_166;
      case -5213:
        v2 = 201;
        goto LABEL_166;
      case -5212:
        v2 = 200;
        goto LABEL_166;
      case -5211:
        v2 = 199;
        goto LABEL_166;
      case -5210:
        v2 = 198;
        goto LABEL_166;
      case -5209:
        v2 = 197;
        goto LABEL_166;
      case -5208:
        v2 = 196;
        goto LABEL_166;
      case -5207:
        v2 = 195;
        goto LABEL_166;
      case -5206:
        v2 = 194;
        goto LABEL_166;
      case -5205:
        v2 = 193;
        goto LABEL_166;
      case -5204:
        goto LABEL_166;
      default:
        if (rawValue == -5501)
        {
          v2 = 210;
          goto LABEL_166;
        }

        if (rawValue == -5401)
        {
          v2 = 209;
          goto LABEL_166;
        }

        break;
    }
  }

LABEL_266:
  if (rawValue <= -10002)
  {
    switch(rawValue)
    {
      case -11107:
        v2 = 319;
        goto LABEL_166;
      case -11106:
        v2 = 318;
        goto LABEL_166;
      case -11105:
        v2 = 317;
        goto LABEL_166;
      case -11104:
        v2 = 316;
        goto LABEL_166;
      case -11103:
        v2 = 315;
        goto LABEL_166;
      case -11102:
        v2 = 314;
        goto LABEL_166;
      case -11101:
        v2 = 313;
        goto LABEL_166;
      case -11100:
      case -11099:
      case -11098:
      case -11097:
      case -11096:
      case -11095:
      case -11094:
      case -11093:
      case -11092:
      case -11091:
      case -11090:
      case -11089:
      case -11088:
      case -11087:
      case -11086:
      case -11085:
      case -11084:
      case -11083:
      case -11082:
      case -11081:
      case -11080:
      case -11079:
      case -11078:
      case -11077:
      case -11076:
      case -11075:
      case -11074:
      case -11073:
      case -11072:
      case -11071:
      case -11070:
      case -11069:
      case -11068:
      case -11067:
      case -11066:
      case -11065:
      case -11064:
      case -11063:
      case -11062:
      case -11061:
      case -11060:
      case -11059:
      case -11058:
      case -11057:
      case -11056:
      case -11055:
      case -11054:
      case -11053:
      case -11052:
      case -11051:
      case -11050:
      case -11049:
      case -11048:
      case -11047:
      case -11046:
      case -11045:
      case -11044:
      case -11043:
      case -11042:
      case -11041:
      case -11040:
      case -11039:
      case -11038:
      case -11037:
      case -11036:
        goto LABEL_341;
      case -11035:
        v2 = 312;
        goto LABEL_166;
      case -11034:
        v2 = 311;
        goto LABEL_166;
      case -11033:
        v2 = 310;
        goto LABEL_166;
      case -11032:
        v2 = 309;
        goto LABEL_166;
      case -11031:
        v2 = 308;
        goto LABEL_166;
      case -11030:
        v2 = 307;
        goto LABEL_166;
      case -11029:
        v2 = 306;
        goto LABEL_166;
      case -11028:
        v2 = 305;
        goto LABEL_166;
      case -11027:
        v2 = 304;
        goto LABEL_166;
      case -11026:
        v2 = 303;
        goto LABEL_166;
      case -11025:
        v2 = 302;
        goto LABEL_166;
      case -11024:
        v2 = 301;
        goto LABEL_166;
      case -11023:
        v2 = 300;
        goto LABEL_166;
      case -11022:
        v2 = 299;
        goto LABEL_166;
      case -11021:
        v2 = 298;
        goto LABEL_166;
      case -11020:
        v2 = 297;
        goto LABEL_166;
      case -11019:
        v2 = 296;
        goto LABEL_166;
      case -11018:
        v2 = 295;
        goto LABEL_166;
      case -11017:
        v2 = 294;
        goto LABEL_166;
      case -11016:
        v2 = 293;
        goto LABEL_166;
      case -11015:
        v2 = 292;
        goto LABEL_166;
      case -11014:
        v2 = 291;
        goto LABEL_166;
      case -11013:
        v2 = 290;
        goto LABEL_166;
      case -11012:
        v2 = 289;
        goto LABEL_166;
      case -11011:
        v2 = 288;
        goto LABEL_166;
      case -11010:
        v2 = 287;
        goto LABEL_166;
      case -11009:
        v2 = 286;
        goto LABEL_166;
      case -11008:
        v2 = 285;
        goto LABEL_166;
      case -11007:
        v2 = 284;
        goto LABEL_166;
      case -11006:
        v2 = 283;
        goto LABEL_166;
      case -11005:
        v2 = 282;
        goto LABEL_166;
      case -11004:
        v2 = 281;
        goto LABEL_166;
      case -11003:
        v2 = 280;
        goto LABEL_166;
      case -11002:
        v2 = 279;
        goto LABEL_166;
      case -11001:
        v2 = 278;
        goto LABEL_166;
      default:
        if (rawValue != -10002)
        {
          goto LABEL_341;
        }

        v2 = 277;
        break;
    }

    goto LABEL_166;
  }

  if (rawValue > -8305)
  {
    if (rawValue > -7017)
    {
      switch(rawValue)
      {
        case -7016:
          v2 = 258;
          break;
        case -7014:
          v2 = 256;
          break;
        case -7015:
          v2 = 257;
          break;
        default:
          goto LABEL_341;
      }
    }

    else
    {
      switch(rawValue)
      {
        case -8304:
          v2 = 261;
          break;
        case -8301:
          v2 = 260;
          break;
        case -8001:
          v2 = 259;
          break;
        default:
          goto LABEL_341;
      }
    }
  }

  else
  {
    switch(rawValue)
    {
      case -8504:
        v2 = 274;
        break;
      case -8503:
        v2 = 273;
        break;
      case -8502:
        v2 = 272;
        break;
      case -8501:
        v2 = 271;
        break;
      case -8500:
        v2 = 270;
        break;
      case -8499:
      case -8498:
      case -8497:
      case -8496:
      case -8495:
      case -8494:
      case -8493:
      case -8492:
      case -8491:
      case -8490:
      case -8489:
      case -8488:
      case -8487:
      case -8486:
      case -8485:
      case -8484:
      case -8483:
      case -8482:
      case -8481:
      case -8480:
      case -8479:
      case -8478:
      case -8477:
      case -8476:
      case -8475:
      case -8474:
      case -8473:
      case -8472:
      case -8471:
      case -8470:
      case -8469:
      case -8468:
      case -8467:
      case -8466:
      case -8465:
      case -8464:
      case -8463:
      case -8462:
      case -8461:
      case -8460:
      case -8459:
      case -8458:
      case -8457:
      case -8456:
      case -8455:
      case -8454:
      case -8453:
      case -8452:
      case -8451:
      case -8450:
      case -8449:
      case -8448:
      case -8447:
      case -8446:
      case -8445:
      case -8444:
      case -8443:
      case -8442:
      case -8441:
      case -8440:
      case -8439:
      case -8438:
      case -8437:
      case -8436:
      case -8435:
      case -8432:
      case -8431:
      case -8430:
      case -8427:
      case -8426:
      case -8425:
      case -8424:
      case -8423:
      case -8422:
      case -8421:
      case -8420:
      case -8419:
      case -8418:
      case -8417:
      case -8416:
      case -8415:
      case -8414:
      case -8413:
      case -8412:
      case -8411:
      case -8410:
      case -8409:
      case -8408:
      case -8407:
      case -8406:
      case -8405:
      case -8402:
        goto LABEL_341;
      case -8434:
        v2 = 269;
        break;
      case -8433:
        v2 = 268;
        break;
      case -8429:
        v2 = 267;
        break;
      case -8428:
        v2 = 266;
        break;
      case -8404:
        v2 = 265;
        break;
      case -8403:
        v2 = 264;
        break;
      case -8401:
        v2 = 263;
        break;
      case -8400:
        v2 = 262;
        break;
      default:
        if (rawValue != -10001)
        {
          if (rawValue == -10000)
          {
            v2 = 275;
            break;
          }

LABEL_341:
          switch(rawValue)
          {
            case -12052:
              v2 = 383;
              goto LABEL_166;
            case -12051:
            case -12006:
            case -12004:
              break;
            case -12050:
              v2 = 382;
              goto LABEL_166;
            case -12049:
              v2 = 381;
              goto LABEL_166;
            case -12048:
              v2 = 380;
              goto LABEL_166;
            case -12047:
              v2 = 379;
              goto LABEL_166;
            case -12046:
              v2 = 378;
              goto LABEL_166;
            case -12045:
              v2 = 377;
              goto LABEL_166;
            case -12044:
              v2 = 376;
              goto LABEL_166;
            case -12043:
              v2 = 375;
              goto LABEL_166;
            case -12042:
              v2 = 374;
              goto LABEL_166;
            case -12041:
              v2 = 373;
              goto LABEL_166;
            case -12040:
              v2 = 372;
              goto LABEL_166;
            case -12039:
              v2 = 371;
              goto LABEL_166;
            case -12038:
              v2 = 370;
              goto LABEL_166;
            case -12037:
              v2 = 369;
              goto LABEL_166;
            case -12036:
              v2 = 368;
              goto LABEL_166;
            case -12035:
              v2 = 367;
              goto LABEL_166;
            case -12034:
              v2 = 366;
              goto LABEL_166;
            case -12033:
              v2 = 365;
              goto LABEL_166;
            case -12032:
              v2 = 364;
              goto LABEL_166;
            case -12031:
              v2 = 363;
              goto LABEL_166;
            case -12030:
              v2 = 362;
              goto LABEL_166;
            case -12029:
              v2 = 361;
              goto LABEL_166;
            case -12028:
              v2 = 360;
              goto LABEL_166;
            case -12027:
              v2 = 359;
              goto LABEL_166;
            case -12026:
              v2 = 358;
              goto LABEL_166;
            case -12025:
              v2 = 357;
              goto LABEL_166;
            case -12024:
              v2 = 356;
              goto LABEL_166;
            case -12023:
              v2 = 355;
              goto LABEL_166;
            case -12022:
              v2 = 354;
              goto LABEL_166;
            case -12021:
              v2 = 353;
              goto LABEL_166;
            case -12020:
              v2 = 352;
              goto LABEL_166;
            case -12019:
              v2 = 351;
              goto LABEL_166;
            case -12018:
              v2 = 350;
              goto LABEL_166;
            case -12017:
              v2 = 349;
              goto LABEL_166;
            case -12016:
              v2 = 348;
              goto LABEL_166;
            case -12015:
              v2 = 347;
              goto LABEL_166;
            case -12014:
              v2 = 346;
              goto LABEL_166;
            case -12013:
              v2 = 345;
              goto LABEL_166;
            case -12012:
              v2 = 344;
              goto LABEL_166;
            case -12011:
              v2 = 343;
              goto LABEL_166;
            case -12010:
              v2 = 342;
              goto LABEL_166;
            case -12009:
              v2 = 341;
              goto LABEL_166;
            case -12008:
              v2 = 340;
              goto LABEL_166;
            case -12007:
              v2 = 339;
              goto LABEL_166;
            case -12005:
              v2 = 338;
              goto LABEL_166;
            case -12003:
              v2 = 337;
              goto LABEL_166;
            case -12002:
              v2 = 336;
              goto LABEL_166;
            case -12001:
              v2 = 335;
              goto LABEL_166;
            case -12000:
              v2 = 334;
              goto LABEL_166;
            default:
              v2 = 320;
              switch(rawValue)
              {
                case -11207:
                  v2 = 333;
                  goto LABEL_166;
                case -11202:
                  v2 = 332;
                  goto LABEL_166;
                case -11201:
                  v2 = 331;
                  goto LABEL_166;
                case -11158:
                  v2 = 330;
                  goto LABEL_166;
                case -11157:
                  v2 = 329;
                  goto LABEL_166;
                case -11156:
                  v2 = 328;
                  goto LABEL_166;
                case -11155:
                  v2 = 327;
                  goto LABEL_166;
                case -11154:
                  v2 = 326;
                  goto LABEL_166;
                case -11153:
                  v2 = 325;
                  goto LABEL_166;
                case -11152:
                  v2 = 324;
                  goto LABEL_166;
                case -11151:
                  v2 = 323;
                  goto LABEL_166;
                case -11150:
                  v2 = 322;
                  goto LABEL_166;
                case -11109:
                  v2 = 321;
                  goto LABEL_166;
                case -11108:
                  goto LABEL_166;
                default:
                  goto LABEL_464;
              }
          }

LABEL_464:
          v3 = 444;
          v2 = 384;
          switch(rawValue)
          {
            case -12119:
              *v1 = 447;
              return rawValue;
            case -12118:
              *v1 = 446;
              return rawValue;
            case -12117:
              *v1 = 445;
              return rawValue;
            case -12116:
              goto LABEL_167;
            case -12113:
              v2 = 443;
              goto LABEL_166;
            case -12112:
              v2 = 442;
              goto LABEL_166;
            case -12111:
              v2 = 441;
              goto LABEL_166;
            case -12110:
              v2 = 440;
              goto LABEL_166;
            case -12109:
              v2 = 439;
              goto LABEL_166;
            case -12108:
              v2 = 438;
              goto LABEL_166;
            case -12107:
              v2 = 437;
              goto LABEL_166;
            case -12106:
              v2 = 436;
              goto LABEL_166;
            case -12105:
              v2 = 435;
              goto LABEL_166;
            case -12104:
              v2 = 434;
              goto LABEL_166;
            case -12103:
              v2 = 433;
              goto LABEL_166;
            case -12102:
              v2 = 432;
              goto LABEL_166;
            case -12101:
              v2 = 431;
              goto LABEL_166;
            case -12100:
              v2 = 430;
              goto LABEL_166;
            case -12099:
              v2 = 429;
              goto LABEL_166;
            case -12098:
              v2 = 428;
              goto LABEL_166;
            case -12097:
              v2 = 427;
              goto LABEL_166;
            case -12096:
              v2 = 426;
              goto LABEL_166;
            case -12095:
              v2 = 425;
              goto LABEL_166;
            case -12094:
              v2 = 424;
              goto LABEL_166;
            case -12093:
              v2 = 423;
              goto LABEL_166;
            case -12092:
              v2 = 422;
              goto LABEL_166;
            case -12091:
              v2 = 421;
              goto LABEL_166;
            case -12090:
              v2 = 420;
              goto LABEL_166;
            case -12089:
              v2 = 419;
              goto LABEL_166;
            case -12088:
              v2 = 418;
              goto LABEL_166;
            case -12087:
              v2 = 417;
              goto LABEL_166;
            case -12086:
              v2 = 416;
              goto LABEL_166;
            case -12085:
              v2 = 415;
              goto LABEL_166;
            case -12084:
              v2 = 414;
              goto LABEL_166;
            case -12083:
              v2 = 413;
              goto LABEL_166;
            case -12082:
              v2 = 412;
              goto LABEL_166;
            case -12081:
              v2 = 411;
              goto LABEL_166;
            case -12080:
              v2 = 410;
              goto LABEL_166;
            case -12079:
              v2 = 409;
              goto LABEL_166;
            case -12078:
              v2 = 408;
              goto LABEL_166;
            case -12077:
              v2 = 407;
              goto LABEL_166;
            case -12076:
              v2 = 406;
              goto LABEL_166;
            case -12075:
              v2 = 405;
              goto LABEL_166;
            case -12074:
              v2 = 404;
              goto LABEL_166;
            case -12073:
              v2 = 403;
              goto LABEL_166;
            case -12072:
              v2 = 402;
              goto LABEL_166;
            case -12071:
              v2 = 401;
              goto LABEL_166;
            case -12070:
              v2 = 400;
              goto LABEL_166;
            case -12069:
              v2 = 399;
              goto LABEL_166;
            case -12068:
              v2 = 398;
              goto LABEL_166;
            case -12067:
              v2 = 397;
              goto LABEL_166;
            case -12066:
              v2 = 396;
              goto LABEL_166;
            case -12065:
              v2 = 395;
              goto LABEL_166;
            case -12064:
              v2 = 394;
              goto LABEL_166;
            case -12062:
              v2 = 393;
              goto LABEL_166;
            case -12061:
              v2 = 392;
              goto LABEL_166;
            case -12060:
              v2 = 391;
              goto LABEL_166;
            case -12059:
              v2 = 390;
              goto LABEL_166;
            case -12058:
              v2 = 389;
              goto LABEL_166;
            case -12057:
              v2 = 388;
              goto LABEL_166;
            case -12056:
              v2 = 387;
              goto LABEL_166;
            case -12055:
              v2 = 386;
              goto LABEL_166;
            case -12054:
              v2 = 385;
              goto LABEL_166;
            case -12053:
              goto LABEL_166;
            default:
              if (rawValue > -12125)
              {
                if (rawValue <= -12122)
                {
                  if (rawValue == -12124)
                  {
                    *v1 = 452;
                  }

                  else if (rawValue == -12123)
                  {
                    *v1 = 451;
                  }

                  else
                  {
                    *v1 = 450;
                  }

                  return rawValue;
                }

                if (rawValue > -12064)
                {
                  if (rawValue == -12063)
                  {
                    *v1 = 455;
                    return rawValue;
                  }

                  if (rawValue == -12051)
                  {
                    *v1 = 454;
                    return rawValue;
                  }
                }

                else
                {
                  if (rawValue == -12121)
                  {
                    *v1 = 449;
                    return rawValue;
                  }

                  if (rawValue == -12120)
                  {
                    *v1 = 448;
                    return rawValue;
                  }
                }
              }

              else if (rawValue <= -14001)
              {
                switch(rawValue)
                {
                  case -14003:
                    *v1 = 461;
                    return rawValue;
                  case -14002:
                    *v1 = 460;
                    return rawValue;
                  case -14001:
                    *v1 = 459;
                    return rawValue;
                }
              }

              else if (rawValue > -12201)
              {
                if (rawValue == -12200)
                {
                  *v1 = 456;
                  return rawValue;
                }

                if (rawValue == -12125)
                {
                  *v1 = 453;
                  return rawValue;
                }
              }

              else
              {
                if (rawValue == -14000)
                {
                  *v1 = 458;
                  return rawValue;
                }

                if (rawValue == -13000)
                {
                  *v1 = 457;
                  return rawValue;
                }
              }

              *v1 = 462;
              return rawValue;
          }
        }

        v2 = 276;
        break;
    }
  }

LABEL_166:
  v3 = v2;
LABEL_167:
  *v1 = v3;
  return rawValue;
}

uint64_t sub_1DAF4CC88()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](qword_1DB0A1320[v1]);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF4CD10()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](qword_1DB0A1320[v1]);
  return sub_1DB09E3E4();
}

CoreODIEssentials::DIPErrorPropertyKey_optional __swiftcall DIPErrorPropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB09E2B4();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t DIPErrorPropertyKey.rawValue.getter()
{
  result = 0x666B726F576F6E69;
  switch(*v0)
  {
    case 1:
      result = 0x69766F72506F6E69;
      break;
    case 2:
      result = 0x6C666B726F577073;
      break;
    case 3:
      result = 0x6469766F72507073;
      break;
    case 4:
      result = 0x7475626972747461;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x5255726576726573;
      break;
    case 7:
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 8:
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x4974736575716572;
      break;
    case 0xA:
      result = 0x61737265766E6F63;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 0xE:
      result = 0x63655264756F6C63;
      break;
    case 0xF:
      result = 0x6552656369766564;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 0x6761735574726563;
      break;
    case 0x12:
      result = 0x6573616261746164;
      break;
    case 0x13:
      result = 0x74737973656C6966;
      break;
    case 0x14:
      result = 0x69796C7265646E75;
      break;
    case 0x15:
      result = 0x636E456567616D69;
      break;
    case 0x16:
      result = 1701273968;
      break;
    case 0x17:
      result = 0x636E75614C6F6E69;
      break;
    case 0x18:
      result = 0x746E756F43797274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAF4D1D8()
{
  v0 = DIPErrorPropertyKey.rawValue.getter();
  v2 = v1;
  if (v0 == DIPErrorPropertyKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DB09E254();
  }

  return v5 & 1;
}

uint64_t sub_1DAF4D274()
{
  sub_1DB09E3A4();
  DIPErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF4D2DC(uint64_t a1)
{
  DIPErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();
}

uint64_t sub_1DAF4D340()
{
  sub_1DB09E3A4();
  DIPErrorPropertyKey.rawValue.getter();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAF4D3B0@<X0>(unint64_t *a1@<X8>)
{
  result = DIPErrorPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DAF4D3D8()
{
  v0 = objc_opt_self();
  v1 = sub_1DB09D6B4();
  v3[4] = sub_1DAF4D4B8;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1DAF4D5C4;
  v3[3] = &block_descriptor_0;
  v2 = _Block_copy(v3);
  [v0 setUserInfoValueProviderForDomain:v1 provider:v2];
  _Block_release(v2);
}

uint64_t sub_1DAF4D4B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (sub_1DB09D6C4() == a2 && v8 == a3)
  {

    goto LABEL_13;
  }

  v10 = sub_1DB09E254();

  if (v10)
  {
LABEL_13:
    result = sub_1DAF4DC78(a1);
    goto LABEL_14;
  }

  if (sub_1DB09D6C4() == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = sub_1DB09E254();

    if ((v13 & 1) == 0)
    {
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

  result = sub_1DAF4E33C(a1);
LABEL_14:
  *(a4 + 24) = MEMORY[0x1E69E6158];
  *a4 = result;
  *(a4 + 8) = v15;
  return result;
}

id sub_1DAF4D5C4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_1DB09D6C4();

  v5 = a2;
  v4(v13);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1DB09E244();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1DAF4D73C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E370, &qword_1DB0A09B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAF4D7A4()
{
  result = qword_1EE300980;
  if (!qword_1EE300980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE300980);
  }

  return result;
}

unint64_t sub_1DAF4D7F4()
{
  result = qword_1ECC0E4B8;
  if (!qword_1ECC0E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E4B8);
  }

  return result;
}

unint64_t sub_1DAF4D84C()
{
  result = qword_1EE3027A0;
  if (!qword_1EE3027A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3027A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPErrorCode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE33)
  {
    goto LABEL_17;
  }

  if (a2 + 461 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 461 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 461;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 461;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 461;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1CE;
  v8 = v6 - 462;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DIPErrorCode(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 461 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 461 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE33)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE32)
  {
    v6 = ((a2 - 65075) >> 16) + 1;
    *result = a2 + 461;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 461;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPErrorPropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPErrorPropertyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DAF4DB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DAF4DBC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAF4DC24()
{
  result = qword_1EE301980;
  if (!qword_1EE301980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301980);
  }

  return result;
}

uint64_t sub_1DAF4DC78(void *a1)
{
  if (!a1)
  {
    return 0x3E6C696E3CLL;
  }

  v2 = a1;
  v3 = sub_1DB09CE64();
  v4 = [v3 userInfo];
  v5 = sub_1DB09D624();

  v46 = a1;
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1DAF409DC(*(v5 + 56) + 32 * v6, v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v14 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_13;
  }

  v8 = *(v48 + 16);
  if (!v8)
  {
LABEL_11:

    goto LABEL_12;
  }

  v9 = v8 + 1;
  v10 = v48 + 56 * v8;
  while (1)
  {
    v12 = *(v10 - 24);
    v11 = *(v10 - 16);
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      break;
    }

    --v9;
    v10 -= 56;
    if (v9 <= 1)
    {
      goto LABEL_11;
    }
  }

  *&v51[0] = 40;
  *(&v51[0] + 1) = 0xE100000000000000;

  MEMORY[0x1E127FE90](v12, v11);

  swift_bridgeObjectRelease_n();
  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v15 = *(&v51[0] + 1);
  v14 = *&v51[0];
LABEL_13:
  DIPErrorCode.init(rawValue:)([v3 code]);
  if (LOWORD(v51[0]) == 462)
  {
    v16 = 0xE90000000000003ELL;
    v17 = 0x6E776F6E6B6E753CLL;
  }

  else
  {
    v17 = sub_1DB09D744();
    v16 = v19;
  }

  *&v51[0] = 0;
  *(&v51[0] + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v51[0] = 0x20726F727245;
  *(&v51[0] + 1) = 0xE600000000000000;
  MEMORY[0x1E127FE90](v14, v15);

  MEMORY[0x1E127FE90](0x206E69616D6F4420, 0xEA0000000000203DLL);
  v20 = [v3 domain];
  v21 = sub_1DB09D6C4();
  v23 = v22;

  MEMORY[0x1E127FE90](v21, v23);

  MEMORY[0x1E127FE90](0x203D2065646F4320, 0xE800000000000000);
  *&v48 = [v3 code];
  v24 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v24);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v17, v16);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v18 = *&v51[0];
  v53 = v51[0];
  v25 = [v3 userInfo];
  v26 = sub_1DB09D624();

  if (!*(v26 + 16) || (v27 = sub_1DAF35210(0x65706F7250504944, 0xED00007365697472), (v28 & 1) == 0))
  {

    return v18;
  }

  sub_1DAF409DC(*(v26 + 56) + 32 * v27, v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4B0, &qword_1DB0A09A8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return v18;
  }

  v29 = v48;
  if (!*(v48 + 16))
  {

    return v18;
  }

  v45 = v3;
  result = MEMORY[0x1E127FE90](0x747265706F725020, 0xEF5B203D20736569);
  v31 = 0;
  v32 = 0;
  v33 = 1 << *(v48 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v48 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = 0xE000000000000000;
  if (v35)
  {
    while (1)
    {
      v38 = v32;
LABEL_32:
      v41 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v42 = v41 | (v38 << 6);
      v43 = *(*(v29 + 48) + v42);
      sub_1DAF409DC(*(v29 + 56) + 32 * v42, v47);
      LOBYTE(v48) = v43;
      sub_1DAF40D20(v47, (&v48 + 8));
      v40 = v38;
LABEL_33:
      v51[0] = v48;
      v51[1] = v49;
      v52 = v50;
      if (!v50)
      {
        break;
      }

      sub_1DAF40D20((v51 + 8), &v48);
      *&v47[0] = 0;
      *(&v47[0] + 1) = 0xE000000000000000;
      sub_1DB09DF94();
      MEMORY[0x1E127FE90](8250, 0xE200000000000000);
      __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
      sub_1DB09E234();
      v44 = v47[0];
      *&v47[0] = v31;
      *(&v47[0] + 1) = v37;

      MEMORY[0x1E127FE90](v44, *(&v44 + 1));

      MEMORY[0x1E127FE90](*&v47[0], *(&v47[0] + 1));

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v48);
      v31 = 8236;
      v37 = 0xE200000000000000;
      v32 = v40;
      if (!v35)
      {
        goto LABEL_25;
      }
    }

    MEMORY[0x1E127FE90](93, 0xE100000000000000);

    return v53;
  }

LABEL_25:
  if (v36 <= v32 + 1)
  {
    v39 = v32 + 1;
  }

  else
  {
    v39 = v36;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v36)
    {
      v35 = 0;
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      goto LABEL_33;
    }

    v35 = *(v29 + 64 + 8 * v38);
    ++v32;
    if (v35)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAF4E33C(void *a1)
{
  v66 = sub_1DB09CF64();
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0x3E6C696E3CLL;
  }

  v67 = v2;
  v4 = a1;
  v63 = sub_1DB09CE64();
  DIPErrorCode.init(rawValue:)([v63 code]);
  if (LOWORD(v73[0]) == 462)
  {
    v5 = 0xE90000000000003ELL;
    v6 = 0x6E776F6E6B6E753CLL;
  }

  else
  {
    v6 = sub_1DB09D744();
    v5 = v8;
  }

  v9 = v63;
  v10 = [v63 userInfo];
  v11 = sub_1DB09D624();

  *&v73[0] = 0;
  *(&v73[0] + 1) = 0xE000000000000000;
  sub_1DB09DE44();

  *&v73[0] = 0x6F4420726F727245;
  *(&v73[0] + 1) = 0xEF203D206E69616DLL;
  v12 = [v9 domain];
  v13 = sub_1DB09D6C4();
  v15 = v14;

  MEMORY[0x1E127FE90](v13, v15);

  MEMORY[0x1E127FE90](0x203D2065646F4320, 0xE800000000000000);
  *&v70 = [v9 code];
  v16 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v16);

  MEMORY[0x1E127FE90](10272, 0xE200000000000000);
  MEMORY[0x1E127FE90](v6, v5);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v75 = v73[0];
  v17 = *(v11 + 16);
  v64 = v11;
  if (!v17 || (v18 = sub_1DAF35210(0x65706F7250504944, 0xED00007365697472), (v19 & 1) == 0) || (sub_1DAF409DC(*(v11 + 56) + 32 * v18, v73), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4B0, &qword_1DB0A09A8), (swift_dynamicCast() & 1) == 0))
  {
LABEL_26:
    if (*(v11 + 16))
    {
      v35 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v36)
      {
        sub_1DAF409DC(*(v11 + 56) + 32 * v35, v73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v37 = v70;
          if (*(v70 + 16))
          {
            result = MEMORY[0x1E127FE90](0x61636F766E49090ALL, 0xEE003A736E6F6974);
            v38 = *(v37 + 16);
            if (v38)
            {
              v60 = a1;
              v61 = (v67 + 8);
              v39 = v38 + 1;
              v40 = (v37 + 56 * v38);
              v62 = v37;
              while (v39 - 2 < *(v37 + 16))
              {
                v41 = *(v40 - 2);
                v67 = *(v40 - 3);
                v42 = v40[1];
                v43 = v40[2];
                v44 = v40[3];

                MEMORY[0x1E127FE90](10, 0xE100000000000000);
                v45 = v65;
                sub_1DB09CEC4();
                v46 = sub_1DB09CED4();
                v48 = v47;
                (*v61)(v45, v66);
                *&v73[0] = v46;
                *(&v73[0] + 1) = v48;
                MEMORY[0x1E127FE90](58, 0xE100000000000000);

                MEMORY[0x1E127FE90](v42, v43);

                MEMORY[0x1E127FE90](58, 0xE100000000000000);
                *&v70 = v44;
                v49 = sub_1DB09E1D4();
                MEMORY[0x1E127FE90](v49);

                v50 = v73[0];
                *&v73[0] = 539822345;
                *(&v73[0] + 1) = 0xE400000000000000;
                MEMORY[0x1E127FE90](v50, *(&v50 + 1));

                MEMORY[0x1E127FE90](*&v73[0], *(&v73[0] + 1));
                v51 = v67;

                if (!v51 && v41 == 0xE000000000000000 || (sub_1DB09E254() & 1) != 0)
                {
                }

                else
                {
                  *&v73[0] = 9;
                  *(&v73[0] + 1) = 0xE100000000000000;

                  MEMORY[0x1E127FE90](v51, v41);

                  swift_bridgeObjectRelease_n();
                  MEMORY[0x1E127FE90](*&v73[0], *(&v73[0] + 1));
                }

                v37 = v62;
                --v39;
                v40 -= 7;
                v11 = v64;
                if (v39 <= 1)
                {

                  a1 = v60;
                  goto LABEL_41;
                }
              }

              goto LABEL_52;
            }
          }
        }
      }
    }

LABEL_41:
    v52 = sub_1DB09D6C4();
    if (*(v11 + 16))
    {
      v54 = sub_1DAF35210(v52, v53);
      v56 = v55;

      if (v56)
      {
        sub_1DAF409DC(*(v11 + 56) + 32 * v54, v73);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
        if (swift_dynamicCast())
        {
          v57 = v70;
          MEMORY[0x1E127FE90](0xD000000000000013, 0x80000001DB0C2680);
          *&v73[0] = 0;
          *(&v73[0] + 1) = 0xE000000000000000;
          swift_getErrorValue();
          sub_1DB09E234();
          v58 = v73[0];
          *&v73[0] = 0x202D09090ALL;
          *(&v73[0] + 1) = 0xE500000000000000;
          MEMORY[0x1E127FE90](v58, *(&v58 + 1));

          MEMORY[0x1E127FE90](*&v73[0], *(&v73[0] + 1));

          return v75;
        }

LABEL_48:
        return v75;
      }
    }

    else
    {
    }

    goto LABEL_48;
  }

  v60 = a1;
  v20 = v70;
  result = MEMORY[0x1E127FE90](0x7265706F7250090ALL, 0xED00003A73656974);
  v21 = 0;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  if (v24)
  {
    while (1)
    {
      v26 = v21;
LABEL_20:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = v29 | (v26 << 6);
      v31 = *(*(v20 + 48) + v30);
      sub_1DAF409DC(*(v20 + 56) + 32 * v30, v69);
      LOBYTE(v70) = v31;
      sub_1DAF40D20(v69, (&v70 + 8));
      v28 = v26;
LABEL_21:
      v73[0] = v70;
      v73[1] = v71;
      v74 = v72;
      if (!v72)
      {
        break;
      }

      v32 = v73[0];
      sub_1DAF40D20((v73 + 8), &v70);
      MEMORY[0x1E127FE90](10, 0xE100000000000000);
      *&v69[0] = 0;
      *(&v69[0] + 1) = 0xE000000000000000;
      v68 = v32;
      sub_1DB09DF94();
      MEMORY[0x1E127FE90](8250, 0xE200000000000000);
      __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
      sub_1DB09E234();
      v34 = *(&v69[0] + 1);
      v33 = *&v69[0];
      *&v69[0] = 539822345;
      *(&v69[0] + 1) = 0xE400000000000000;
      MEMORY[0x1E127FE90](v33, v34);

      MEMORY[0x1E127FE90](*&v69[0], *(&v69[0] + 1));

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v70);
      v21 = v28;
      if (!v24)
      {
        goto LABEL_13;
      }
    }

    a1 = v60;
    v11 = v64;
    goto LABEL_26;
  }

LABEL_13:
  if (v25 <= v21 + 1)
  {
    v27 = v21 + 1;
  }

  else
  {
    v27 = v25;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      v24 = 0;
      v72 = 0;
      v70 = 0u;
      v71 = 0u;
      goto LABEL_21;
    }

    v24 = *(v20 + 64 + 8 * v26);
    ++v21;
    if (v24)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}