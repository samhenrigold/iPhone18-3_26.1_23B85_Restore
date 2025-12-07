uint64_t sub_29E689F6C()
{
}

uint64_t sub_29E689FAC()
{
  sub_29E750D58();

  return swift_deallocClassInstance();
}

uint64_t sub_29E68A0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29E74ED88();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  if (sub_29E7541D8() == a1 && v11 == a2)
  {

    goto LABEL_13;
  }

  v13 = sub_29E755028();

  if (v13)
  {
LABEL_13:
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    sub_29E7521F8();
    v18 = sub_29E750458();
    swift_allocObject();
    v19 = sub_29E750438();
    a3[3] = v18;
    result = sub_29E68C450(&qword_2A1856FE0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
    a3[4] = result;
    *a3 = v19;
    return result;
  }

  if (sub_29E7541D8() == a1 && v14 == a2)
  {
  }

  else
  {
    v16 = sub_29E755028();

    if ((v16 & 1) == 0)
    {
      a3[3] = sub_29E750788();
      a3[4] = sub_29E68C450(&qword_2A1856D80, MEMORY[0x29EDC1EC0], MEMORY[0x29EDC1EB8]);
      sub_29E5FEBF4(a3);
      return sub_29E750778();
    }
  }

  sub_29E7527B8();

  v20 = v34;
  if (v34)
  {
    sub_29E68B83C(v34);
    v34 = 0x74497265746F6F46;
    v35 = 0xEB000000005F6D65;
    sub_29E74ED78();
    v21 = sub_29E74ED48();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    MEMORY[0x29ED96C20](v21, v23);

    v36 = sub_29E751628();
    v37 = sub_29E68C450(&qword_2A1858620, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A8]);
    sub_29E5FEBF4(&v34);
    sub_29E751608();
    v24 = v36;
    v25 = v37;
    v26 = sub_29E601938(&v34, v36);
    a3[3] = v24;
    a3[4] = *(v25 + 8);
    v27 = sub_29E5FEBF4(a3);
    (*(*(v24 - 8) + 16))(v27, v26, v24);

    return sub_29E5FECBC(&v34);
  }

  else
  {
    v28 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    v29 = sub_29E754198();
    [v28 initWithString_];

    v34 = 0x74497265746F6F46;
    v35 = 0xEB000000005F6D65;
    sub_29E74ED78();
    v30 = sub_29E74ED48();
    v32 = v31;
    (*(v7 + 8))(v9, v6);
    MEMORY[0x29ED96C20](v30, v32);

    a3[3] = sub_29E751628();
    a3[4] = sub_29E68C450(&qword_2A1856D88, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A0]);
    sub_29E5FEBF4(a3);
    return sub_29E751608();
  }
}

uint64_t sub_29E68A654()
{
  type metadata accessor for LinkCollectionViewCell(0);
  sub_29E7547D8();
  sub_29E7515F8();
  sub_29E7547E8();
  sub_29E7518A8();
  sub_29E7547F8();
  sub_29E751638();
  return sub_29E7547F8();
}

uint64_t sub_29E68A704()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_29E68A734(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

unint64_t sub_29E68A78C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_29E754D78();

  MEMORY[0x29ED96C20](v1, v2);
  return 0xD000000000000010;
}

uint64_t sub_29E68A808(uint64_t a1)
{
  v2 = sub_29E68D12C();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E68A8A0()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A18585D8 = result;
  unk_2A18585E0 = v1;
  return result;
}

uint64_t sub_29E68A938()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_29E74E9D8();
  qword_2A18585E8 = result;
  unk_2A18585F0 = v1;
  return result;
}

unint64_t sub_29E68A9D0(uint64_t a1, uint64_t a2)
{
  sub_29E7550C8();
  sub_29E7542D8();
  v4 = sub_29E755108();

  return sub_29E68ABFC(a1, a2, v4);
}

unint64_t sub_29E68AA48(uint64_t a1)
{
  v2 = sub_29E754B78();

  return sub_29E68ACB4(a1, v2);
}

unint64_t sub_29E68AA90(uint64_t a1)
{
  sub_29E7541D8();
  sub_29E7550C8();
  sub_29E7542D8();
  v2 = sub_29E755108();

  return sub_29E68B010(a1, v2);
}

unint64_t sub_29E68AB20(uint64_t a1)
{
  v2 = sub_29E754CE8();

  return sub_29E68AD88(a1, v2);
}

unint64_t sub_29E68AB64(uint64_t a1)
{
  sub_29E754048();
  sub_29E68C450(&qword_2A1857B78, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA300]);
  v2 = sub_29E7540A8();

  return sub_29E68AE50(a1, v2);
}

unint64_t sub_29E68ABFC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29E755028())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29E68ACB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_29E609B5C(0, &qword_2A1856EC8, 0x29EDBA070);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_29E754B88();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29E68AD88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29E68CE40(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED97610](v9, a1);
      sub_29E68CE9C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29E68AE50(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_29E754048();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
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
      sub_29E68C450(&qword_2A1857B80, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA310]);
      v15 = sub_29E754108();
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

unint64_t sub_29E68B010(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_29E7541D8();
      v8 = v7;
      if (v6 == sub_29E7541D8() && v8 == v9)
      {
        break;
      }

      v11 = sub_29E755028();

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

unint64_t sub_29E68B114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E68CF94(0);
    v3 = sub_29E754EB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_29E68AA48(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B200(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x29EDC99B0];
    sub_29E68CD80(0, &qword_2A1859CE0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
    v4 = sub_29E754EB8();
    v5 = a1 + 32;

    while (1)
    {
      sub_29E68CACC(v5, &v14, &qword_2A18586D0, v3, sub_29E68CDDC);
      v6 = v14;
      v7 = v15;
      result = sub_29E68A9D0(v14, v15);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_29E61FF28(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B34C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E68CB3C(0);
    v3 = sub_29E754EB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_29E68AA90(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B464(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x29EDC9D48];
    sub_29E68CD80(0, &qword_2A1858658, MEMORY[0x29EDC9D48], MEMORY[0x29EDC9D50]);
    v4 = sub_29E754EB8();
    v5 = a1 + 32;

    while (1)
    {
      sub_29E68CACC(v5, v14, &qword_2A1858660, v3, sub_29E68CDDC);
      result = sub_29E68AB20(v14);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_29E61FF28(&v16, (v4[7] + 32 * result));
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      v5 += 72;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E68D180(0);
    v3 = sub_29E754EB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_29E68AA90(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E68B710(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_29E754EB8();
    v9 = a1 + 32;

    while (1)
    {
      sub_29E68CACC(v9, &v16, a3, a4, sub_29E68CD18);
      v10 = v16;
      result = sub_29E68AA90(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_29E61FF28(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void *sub_29E68B83C(void *a1)
{
  v2 = sub_29E74F828();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = 0;
  [a1 weekdaysWithoutOccurrences];
  v6 = swift_allocObject();
  v6[2] = &v30;
  v7 = swift_allocObject();
  v7[2] = sub_29E68D250;
  v7[3] = v6;
  aBlock[4] = sub_29E68D244;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E68A6D4;
  aBlock[3] = &unk_2A25002F8;
  v8 = _Block_copy(aBlock);

  HKSPWeekdaysEnumerateDays();
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  v10 = v30;

  if (v10 < 1)
  {
    v26 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
    isEscapingClosureAtFileLocation = sub_29E754198();
    v6 = [v26 initWithString_];
    goto LABEL_6;
  }

  v6 = [objc_allocWithZone(MEMORY[0x29EDBA038]) init];
  sub_29E68C498(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  v12 = *MEMORY[0x29EDC7638];
  *(inited + 32) = *MEMORY[0x29EDC7638];
  v13 = sub_29E609B5C(0, &qword_2A185A560, 0x29EDC76B0);
  v14 = v12;
  v15 = sub_29E754AB8();
  *(inited + 64) = v13;
  *(inited + 40) = v15;
  sub_29E68B710(inited, sub_29E68C584, &qword_2A1858628, type metadata accessor for Key);
  swift_setDeallocating();
  sub_29E68C50C(inited + 32);
  v16 = a1;
  sub_29E74F818();
  sub_29E74F808();
  (v3[1])(v5, v2);
  v8 = 0x29EDB9000;
  v17 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v18 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E68C450(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
  v19 = sub_29E754068();

  isEscapingClosureAtFileLocation = [v17 initWithString:v18 attributes:v19];

  v7 = &off_29F370000;
  [v6 appendAttributedString_];
  v20 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v21 = sub_29E754198();
  v3 = &off_29F370000;
  v22 = [v20 initWithString_];

  [v6 appendAttributedString_];
  if (qword_2A1A7D6F0 != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_29E74E9D8();
  v23 = objc_allocWithZone(v8[486]);
  v24 = sub_29E754198();

  v25 = [v23 v3[350]];

  [v6 v7[427]];
LABEL_6:

  return v6;
}

void sub_29E68BD9C(uint64_t *a1@<X8>)
{
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LinkCollectionViewCell(0);
  v6 = sub_29E7506A8();
  v8 = v7;
  (*(v3 + 104))(v5, *MEMORY[0x29EDC6AC8], v2);
  v9 = sub_29E754258();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  sub_29E7527B8();
  v12 = v31;
  if (v31)
  {
    v30 = v11;
    v13 = [v31 occurrences];
    sub_29E609B5C(0, &qword_2A1856A10, 0x29EDC68C0);
    v14 = sub_29E7543F8();

    v31 = MEMORY[0x29EDCA190];
    if (v14 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
    {
      v25 = v12;
      v26 = v9;
      v27 = v8;
      v28 = v6;
      v29 = a1;
      v9 = 0;
      v6 = v14 & 0xC000000000000001;
      v8 = v14 & 0xFFFFFFFFFFFFFF8;
      v12 = &off_29F370000;
      while (1)
      {
        if (v6)
        {
          v16 = MEMORY[0x29ED976A0](v9, v14);
        }

        else
        {
          if (v9 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v16 = *(v14 + 8 * v9 + 32);
        }

        v17 = v16;
        v18 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ([v16 isRepeating])
        {
          sub_29E754DE8();
          a1 = v31[2];
          sub_29E754E18();
          sub_29E754E28();
          sub_29E754DF8();
        }

        else
        {
        }

        ++v9;
        if (v18 == i)
        {
          v19 = v31;
          v6 = v28;
          a1 = v29;
          v9 = v26;
          v8 = v27;
          v12 = v25;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v19 = MEMORY[0x29EDCA190];
LABEL_22:

    v11 = v30;
    if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
    {
      v22 = sub_29E754C98();
    }

    else
    {
      v22 = *(v19 + 16);
    }

    if (v22)
    {
      if (qword_2A1856218 != -1)
      {
        swift_once();
      }

      v23 = &qword_2A18585E8;
    }

    else
    {
      if (qword_2A1856210 != -1)
      {
        swift_once();
      }

      v23 = &qword_2A18585D8;
    }

    v20 = *v23;
    v21 = v23[1];
  }

  else
  {
    if (qword_2A1856218 != -1)
    {
      swift_once();
    }

    v20 = qword_2A18585E8;
    v21 = unk_2A18585F0;
  }

  *a1 = v20;
  a1[1] = v21;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v11;
}

uint64_t sub_29E68C144(uint64_t a1)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &aBlock[-1] - v7;

  sub_29E7527B8();

  v9 = aBlock[0];
  if (!aBlock[0])
  {
    goto LABEL_5;
  }

  v20 = 0;
  [aBlock[0] weekdaysWithoutOccurrences];
  v10 = swift_allocObject();
  *(v10 + 16) = &v20;
  v11 = swift_allocObject();
  v11[2] = sub_29E68C40C;
  v11[3] = v10;
  aBlock[4] = sub_29E68C410;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E68A6D4;
  aBlock[3] = &unk_2A2500280;
  v12 = _Block_copy(aBlock);

  HKSPWeekdaysEnumerateDays();

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v15 = v20;

    if (v15 == 7)
    {
      sub_29E750E28();
LABEL_6:
      sub_29E750E18();
      v16 = *(v3 + 8);
      v16(v6, v2);
      sub_29E750E58();
      v17 = sub_29E750E68();
      v16(v8, v2);
      return v17;
    }

LABEL_5:
    sub_29E750E38();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E68C438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E68C450(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E68C498(uint64_t a1)
{
  if (!qword_2A185A540)
  {
    sub_29E68CD18(255, &qword_2A1858628, type metadata accessor for Key);
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A540);
    }
  }
}

uint64_t sub_29E68C50C(uint64_t a1)
{
  sub_29E68CD18(0, &qword_2A1858628, type metadata accessor for Key);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E68C584(uint64_t a1)
{
  if (!qword_2A1858630)
  {
    type metadata accessor for Key(255);
    sub_29E68C450(&qword_2A1856640, type metadata accessor for Key, &unk_29E762E9C);
    v1 = sub_29E754EC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858630);
    }
  }
}

uint64_t sub_29E68C624(void *a1)
{
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v24 - v7;
  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_29E6B9C90(0xD000000000000010, 0x800000029E768430, v28);
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s] Add schedule button tapped", v11, 0xCu);
    sub_29E5FECBC(v12);
    MEMORY[0x29ED98410](v12, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);
  }

  v13 = *(v3 + 8);
  v13(v8, v2);
  v14 = [a1 viewController];
  if (v14 && (v24[1] = v14, sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8), sub_29E68CA68(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v26 + 1))
    {
      sub_29E60A040(&v25, v28);
      sub_29E601938(v28, v28[3]);
      sub_29E74F8C8();
      return sub_29E5FECBC(v28);
    }
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
  }

  sub_29E6093D0(&v25);
  sub_29E752048();
  v16 = a1;
  v17 = sub_29E752088();
  v18 = sub_29E7546C8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_29E6B9C90(0xD000000000000010, 0x800000029E768430, v28);
    *(v19 + 12) = 2082;
    *&v25 = [v16 viewController];
    sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
    v21 = sub_29E754248();
    v23 = sub_29E6B9C90(v21, v22, v28);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Unable to present schedule edit on unknown view controller: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v20, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);
  }

  return (v13)(v6, v2);
}

void sub_29E68CA04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E68CA68()
{
  result = qword_2A18569E0;
  if (!qword_2A18569E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A18569E0);
  }

  return result;
}

uint64_t sub_29E68CACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_29E68CB3C(uint64_t a1)
{
  if (!qword_2A1A7D408)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_29E68C450(&unk_2A1A7D460, type metadata accessor for HKFeatureIdentifier, &unk_29E762320);
    v1 = sub_29E754EC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D408);
    }
  }
}

void sub_29E68CBD8(uint64_t a1)
{
  if (!qword_2A1858638)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_29E68C450(&qword_2A1856630, type metadata accessor for OpenExternalURLOptionsKey, &unk_29E762E58);
    v1 = sub_29E754EC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858638);
    }
  }
}

void sub_29E68CC78(uint64_t a1)
{
  if (!qword_2A1858648)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_29E68C450(&qword_2A1856620, type metadata accessor for OpenURLOptionsKey, &unk_29E762E14);
    v1 = sub_29E754EC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858648);
    }
  }
}

void sub_29E68CD18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_29E68CD80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_29E754EC8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E68CDDC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E68CEF0()
{
  v1 = *(v0 + 16);
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v1;
  }
}

void sub_29E68CF14()
{
  if (!qword_2A1858668)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858668);
    }
  }
}

void sub_29E68CF94(uint64_t a1)
{
  if (!qword_2A1858670)
  {
    sub_29E609B5C(255, &qword_2A1856EC8, 0x29EDBA070);
    sub_29E609B5C(255, &qword_2A1856ED0, 0x29EDC46A0);
    sub_29E617428();
    v1 = sub_29E754EC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858670);
    }
  }
}

uint64_t sub_29E68D030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_29E68D078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E68D0D8()
{
  result = qword_2A1858678;
  if (!qword_2A1858678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858678);
  }

  return result;
}

unint64_t sub_29E68D12C()
{
  result = qword_2A1858680;
  if (!qword_2A1858680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858680);
  }

  return result;
}

void sub_29E68D180(uint64_t a1)
{
  if (!qword_2A1858688)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_29E609B5C(255, &qword_2A1858690, 0x29EDBABA8);
    sub_29E68C450(&unk_2A1A7D460, type metadata accessor for HKFeatureIdentifier, &unk_29E762320);
    v1 = sub_29E754EC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858688);
    }
  }
}

uint64_t type metadata accessor for SleepApneaEventEducationDataSource(uint64_t a1)
{
  result = qword_2A1858698;
  if (!qword_2A1858698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E68D2E0()
{
  v0 = sub_29E74ED88();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v9, "MutableArray<");
  HIWORD(v9[1]) = -4864;
  sub_29E74ED78();
  v4 = sub_29E74ED48();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x29ED96C20](v4, v6);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v7 = sub_29E750D08();

  sub_29E68D458();

  return v7;
}

uint64_t sub_29E68D458()
{
  v0 = sub_29E74ED88();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x29EDCA190];
  sub_29E68DAAC(v2, &v7);
  sub_29E68E4E8(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC108(v7);
  sub_29E74ED78();
  sub_29E74ED48();
  (*(v1 + 8))(v4, v0);
  sub_29E750C98();
  sub_29E750D18();
}

void sub_29E68D658(void *a1)
{
  v1 = [a1 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = objc_allocWithZone(type metadata accessor for SleepApneaOnboardingEducationViewController());
    v4 = sub_29E6C7308(0);
    [v2 pushViewController:v4 animated:1];
  }
}

uint64_t sub_29E68D6F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E750458();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v4 + 8))(v6, v3);
  sub_29E7521F8();
  v8 = sub_29E750448();
  a1[3] = v7;
  result = sub_29E68E54C(&qword_2A1856FE0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_29E68D930()
{
  sub_29E750D58();

  return swift_deallocClassInstance();
}

uint64_t sub_29E68D9B8()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  sub_29E751098();
  v4 = sub_29E750E68();
  sub_29E751758();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E68DAAC(uint64_t a1, uint64_t *a2)
{
  v58 = a2;
  v57 = sub_29E751908();
  v55 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57);
  v56 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E750DC8();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29E68E4E8(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v48 = &v43 - v7;
  sub_29E68E4E8(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v5);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v44 = &v43 - v9;
  v10 = sub_29E752108();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29E7520C8();
  v13 = *(v43 - 8);
  MEMORY[0x2A1C7C4A8](v43);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E750EE8();
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v51 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E74F8B8();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29E752258();
  v59 = *(v63 - 8);
  MEMORY[0x2A1C7C4A8](v63);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v47 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752218();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v19 + 8))(v21, v18);
  sub_29E752228();
  sub_29E68121C();
  sub_29E754AC8();
  v24 = sub_29E7521C8();
  sub_29E7521A8();
  v24(&v60, 0);
  v25 = [objc_opt_self() labelColor];
  v26 = sub_29E7521C8();
  sub_29E7521B8();
  v26(&v60, 0);
  v27 = v63;
  v61 = v63;
  v62 = MEMORY[0x29EDC7800];
  v28 = sub_29E5FEBF4(&v60);
  (*(v59 + 16))(v28, v23, v27);
  sub_29E68E4E8(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29E752128();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v29 = v43;
  (*(v13 + 104))(v15, *MEMORY[0x29EDC7768], v43);
  v30 = sub_29E7520D8();
  (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v45 + 8))(v12, v46);
  (*(v13 + 8))(v15, v29);
  v31 = sub_29E752178();
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  (*(v49 + 104))(v54, *MEMORY[0x29EDC22C8], v50);
  (*(v55 + 104))(v56, *MEMORY[0x29EDC2A38], v57);
  v32 = v51;
  sub_29E750ED8();
  v33 = v58;
  v34 = *v58;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_29E6DAD84(0, v34[2] + 1, 1, v34);
    *v33 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    *v33 = sub_29E6DAD84((v36 > 1), v37 + 1, 1, v34);
  }

  (*(v59 + 8))(v23, v63);
  v38 = v53;
  v61 = v53;
  v62 = sub_29E68E54C(&qword_2A1858328, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
  v39 = sub_29E5FEBF4(&v60);
  v40 = v52;
  (*(v52 + 16))(v39, v32, v38);
  v41 = *v33;
  *(v41 + 16) = v37 + 1;
  sub_29E5FAEE4(&v60, v41 + 40 * v37 + 32);
  (*(v40 + 8))(v32, v38);
}

void sub_29E68E4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E68E54C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29E68E5C0()
{
  result = [objc_opt_self() sleepDurationGoalType];
  if (result)
  {
    v1 = result;
    if (qword_2A18561B0 != -1)
    {
      swift_once();
    }

    v2 = qword_2A1857A88;
    v3 = unk_2A1857A90;
    v4 = qword_2A18561B8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_2A1857A98;
    v6 = unk_2A1857AA0;
    type metadata accessor for SupplementaryTypeSection(0);
    swift_allocObject();

    sub_29E6CE418(v1, v2, v3, v5, v6);

    sub_29E750828();

    v7 = sub_29E750818();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E68E734()
{
  v1[45] = v0;
  v1[46] = *v0;
  sub_29E68FA44(0);
  v1[47] = v2;
  v1[48] = *(v2 - 8);
  v1[49] = swift_task_alloc();
  v3 = sub_29E74ED28();
  v1[50] = v3;
  v1[51] = *(v3 - 8);
  v1[52] = swift_task_alloc();
  sub_29E68FAB0(0);
  v1[53] = v4;
  v1[54] = *(v4 - 8);
  v1[55] = swift_task_alloc();
  v5 = sub_29E752098();
  v1[56] = v5;
  v1[57] = *(v5 - 8);
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E68E93C, 0, 0);
}

uint64_t sub_29E68E93C(uint64_t a1)
{
  v56 = v1;
  v2 = *(v1[45] + 24);
  if (v2)
  {
    swift_unknownObjectRetain();
    sub_29E752048();
    v3 = sub_29E752088();
    v4 = sub_29E7546C8();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v1[59];
    v8 = v1[56];
    v7 = v1[57];
    if (v5)
    {
      v52 = v1[59];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v55 = v10;
      *v9 = 136315394;
      v11 = sub_29E755178();
      v13 = sub_29E6B9C90(v11, v12, &v55);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_29E6B9C90(0xD000000000000018, 0x800000029E75CC10, &v55);
      _os_log_impl(&dword_29E5ED000, v3, v4, "[%s.%s] Have existing country code", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v10, -1, -1);
      MEMORY[0x29ED98410](v9, -1, -1);

      (*(v7 + 8))(v52, v8);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v1[61] = v2;
    v30 = v1[45];
    sub_29E68FB9C(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E762F30;
    *(inited + 32) = sub_29E7541D8();
    *(inited + 40) = v32;
    v33 = objc_allocWithZone(MEMORY[0x29EDBA070]);
    swift_unknownObjectRetain();
    v34 = [v33 initWithBool_];
    *(inited + 72) = sub_29E648728();
    *(inited + 48) = v34;
    sub_29E68B200(inited);
    swift_setDeallocating();
    sub_29E68FC58(inited + 32);
    v35 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
    v36 = sub_29E754068();

    v51 = [v35 initWithDictionary_];
    v1[62] = v51;

    v54 = [*(v30 + 16) featureAvailabilityProviding];
    v1[63] = v54;
    v37 = [v2 ISOCode];
    if (!v37)
    {
      sub_29E7541D8();
      v37 = sub_29E754198();
    }

    v1[64] = v37;
    v39 = v1[51];
    v38 = v1[52];
    v40 = v1[50];
    v42 = v1[47];
    v41 = v1[48];
    v43 = v1[45];
    v50 = [v2 provenance];
    v44 = sub_29E751758();
    (*(v43 + 32))(v44);
    v49 = sub_29E74EC98();
    v1[65] = v49;
    (*(v39 + 8))(v38, v40);
    v1[10] = v1;
    v1[11] = sub_29E68F52C;
    swift_continuation_init();
    v1[43] = v42;
    v45 = sub_29E5FEBF4(v1 + 40);
    sub_29E66A61C();
    v46 = v51;
    sub_29E754478();
    (*(v41 + 32))(v45, v48, v42);
    v1[36] = MEMORY[0x29EDCA5F8];
    v1[37] = 1107296256;
    v1[38] = sub_29E68F940;
    v1[39] = &unk_2A2500500;
    [v54 setCurrentOnboardingVersionCompletedForCountryCode:v37 countryCodeProvenance:v50 date:v49 settings:v46 completion:?];
    (*(v41 + 8))(v45, v42);
    v29 = v1 + 10;
  }

  else
  {
    sub_29E752048();
    v14 = sub_29E752088();
    v15 = sub_29E7546C8();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v1[57];
    v17 = v1[58];
    v19 = v1[56];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v55 = v21;
      *v20 = 136315394;
      v22 = sub_29E755178();
      v24 = sub_29E6B9C90(v22, v23, &v55);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_29E6B9C90(0xD000000000000018, 0x800000029E75CC10, &v55);
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%s.%s] Fetching current country code", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);
    v26 = v1[54];
    v25 = v1[55];
    v27 = v1[53];
    v53 = *(v1[45] + 48);
    v1[2] = v1;
    v1[7] = v1 + 44;
    v1[3] = sub_29E68F0A0;
    swift_continuation_init();
    v1[35] = v27;
    v28 = sub_29E5FEBF4(v1 + 32);
    sub_29E68FB20();
    sub_29E66A61C();
    sub_29E754478();
    (*(v26 + 32))(v28, v25, v27);
    v1[28] = MEMORY[0x29EDCA5F8];
    v1[29] = 1107296256;
    v1[30] = sub_29E68F89C;
    v1[31] = &unk_2A25004D8;
    [v53 fetchMobileCountryCodeFromCellularWithCompletion_];
    (*(v26 + 8))(v28, v27);
    v29 = v1 + 2;
  }

  return MEMORY[0x2A1C73CC0](v29);
}

uint64_t sub_29E68F0A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 480) = v1;
  if (v1)
  {
    v2 = sub_29E68F718;
  }

  else
  {
    v2 = sub_29E68F1B0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E68F1B0()
{
  v1 = v0[44];
  v2 = v0[45];
  v0[61] = v1;
  sub_29E68FB9C(0);
  swift_unknownObjectRetain();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E762F30;
  *(inited + 32) = sub_29E7541D8();
  *(inited + 40) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithBool_];
  *(inited + 72) = sub_29E648728();
  *(inited + 48) = v5;
  sub_29E68B200(inited);
  swift_setDeallocating();
  sub_29E68FC58(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x29EDBABA0]);
  v7 = sub_29E754068();

  v22 = [v6 initWithDictionary_];
  v0[62] = v22;

  v23 = [*(v2 + 16) featureAvailabilityProviding];
  v0[63] = v23;
  v8 = [v1 ISOCode];
  if (!v8)
  {
    sub_29E7541D8();
    v8 = sub_29E754198();
  }

  v0[64] = v8;
  v9 = v0[51];
  v10 = v0[52];
  v11 = v0[50];
  v19 = v0[49];
  v13 = v0[47];
  v12 = v0[48];
  v14 = v0[45];
  v21 = [v1 provenance];
  v15 = sub_29E751758();
  (*(v14 + 32))(v15);
  v20 = sub_29E74EC98();
  v0[65] = v20;
  (*(v9 + 8))(v10, v11);
  v0[10] = v0;
  v0[11] = sub_29E68F52C;
  swift_continuation_init();
  v0[43] = v13;
  v16 = sub_29E5FEBF4(v0 + 40);
  sub_29E66A61C();
  v17 = v22;
  sub_29E754478();
  (*(v12 + 32))(v16, v19, v13);
  v0[36] = MEMORY[0x29EDCA5F8];
  v0[37] = 1107296256;
  v0[38] = sub_29E68F940;
  v0[39] = &unk_2A2500500;
  [v23 setCurrentOnboardingVersionCompletedForCountryCode:v8 countryCodeProvenance:v21 date:v20 settings:v17 completion:?];
  (*(v12 + 8))(v16, v13);

  return MEMORY[0x2A1C73CC0](v0 + 10);
}

uint64_t sub_29E68F52C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 528) = v1;
  if (v1)
  {
    v2 = sub_29E68F7C0;
  }

  else
  {
    v2 = sub_29E68F63C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E68F63C()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[62];
  sub_29E751758();

  sub_29E751758();

  v4 = v0[1];

  return v4();
}

uint64_t sub_29E68F718(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_29E68F7C0(uint64_t a1)
{
  v2 = v1[65];
  v3 = v1[64];
  v4 = v1[62];
  swift_willThrow();
  sub_29E751758();

  sub_29E751758();

  v5 = v1[1];

  return v5();
}

void sub_29E68F89C(uint64_t a1, void *a2, void *a3)
{
  sub_29E601938((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29E68FAB0(0);
    v5 = a3;
    sub_29E754488();
  }

  else if (a2)
  {
    sub_29E68FAB0(0);
    swift_unknownObjectRetain();
    sub_29E754498();
  }

  else
  {
    __break(1u);
  }
}

void sub_29E68F940(uint64_t a1, int a2, void *a3)
{
  sub_29E601938((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_29E68FA44(0);
    sub_29E754498();
  }

  else if (a3)
  {
    sub_29E68FA44(0);
    v5 = a3;
    sub_29E754488();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E68F9D0()
{
  sub_29E751758();

  sub_29E751758();

  return swift_deallocClassInstance();
}

void sub_29E68FA44(uint64_t a1)
{
  if (!qword_2A18586A8)
  {
    sub_29E66A61C();
    v1 = sub_29E7544A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18586A8);
    }
  }
}

void sub_29E68FAB0(uint64_t a1)
{
  if (!qword_2A18586B8)
  {
    sub_29E68FB20();
    sub_29E66A61C();
    v1 = sub_29E7544A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18586B8);
    }
  }
}

unint64_t sub_29E68FB20()
{
  result = qword_2A18586C0;
  if (!qword_2A18586C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A18586C0);
  }

  return result;
}

void sub_29E68FB9C(uint64_t a1)
{
  if (!qword_2A18586C8)
  {
    sub_29E68FBF4();
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18586C8);
    }
  }
}

void sub_29E68FBF4()
{
  if (!qword_2A18586D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18586D0);
    }
  }
}

uint64_t sub_29E68FC58(uint64_t a1)
{
  sub_29E68FBF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E68FCD0()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC6B30], v0);
  v4 = sub_29E74F7E8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E68FE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v8 = sub_29E74F7C8();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_29E68FF54()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v4 = sub_29E74F7C8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_29E6900A8()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

void sub_29E69016C()
{
  v51 = sub_29E74F8B8();
  v53 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v1 = v42 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62F414(0);
  v2 = sub_29E750108();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v52 = *(v3 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E768780;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A7FA18;
  v7 = sub_29E754198();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    v42[1] = v5;
    v9 = v5 + v4;
    v49 = v5 + v4;
    *v9 = v8;
    *(v9 + 8) = 0;
    v10 = *MEMORY[0x29EDC1608];
    v43 = *(v3 + 104);
    v43(v5 + v4, v10, v2);
    v11 = (v5 + v4 + v52);
    v46 = "ARTICLE_HEADLINE";
    v50 = v6;
    sub_29E74F8A8();
    v12 = v2;
    v13 = sub_29E74F7C8();
    v47 = v3 + 104;
    v15 = v14;
    v48 = *(v53 + 8);
    v53 += 8;
    v16 = v51;
    v48(v1, v51);
    *v11 = v13;
    v11[1] = v15;
    v17 = *MEMORY[0x29EDC1610];
    v45 = v12;
    v18 = v43;
    v43(v11, v17, v12);
    v19 = v52;
    v20 = v49 + 2 * v52;
    sub_29E74F8A8();
    v42[2] = 0xD000000000000013;
    v21 = sub_29E74F7C8();
    v23 = v22;
    v24 = v48;
    v48(v1, v16);
    *v20 = v21;
    *(v20 + 8) = v23;
    *(v20 + 16) = 0;
    v44 = *MEMORY[0x29EDC1630];
    v18(v20);
    v25 = v49 + 3 * v19;
    sub_29E74F8A8();
    v26 = sub_29E74F7C8();
    v28 = v27;
    v29 = v51;
    v24(v1, v51);
    *v25 = v26;
    *(v25 + 8) = v28;
    *(v25 + 16) = 0;
    (v18)(v25, v44, v45);
    v42[0] = 4 * v52;
    v30 = v49;
    v31 = v49 + 4 * v52;
    sub_29E74F8A8();
    v32 = sub_29E74F7C8();
    v34 = v33;
    v48(v1, v29);
    *v31 = v32;
    *(v31 + 8) = v34;
    *(v31 + 16) = 0;
    v35 = v44;
    v36 = v45;
    v37 = v43;
    v43(v31, v44, v45);
    v38 = v30 + v42[0] + v52;
    sub_29E74F8A8();
    v39 = sub_29E74F7C8();
    v41 = v40;
    v48(v1, v51);
    *v38 = v39;
    *(v38 + 8) = v41;
    *(v38 + 16) = 0;
    v37(v38, v35, v36);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for SleepApneaFeatureRegulatoryInfoTransformProvider(uint64_t a1)
{
  result = qword_2A18586D8;
  if (!qword_2A18586D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E690798()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v4 = sub_29E74F7C8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E69090C()
{
  sub_29E753F78();

  return swift_deallocClassInstance();
}

void (*sub_29E690944(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_29E690B8C();
  v4 = sub_29E751B98();

  *a1 = v4;
  return sub_29E6909A4;
}

void sub_29E6909A4(uint64_t a1, char a2)
{
  v5 = *(*(a1 + 8) + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView);
  if (a2)
  {
    v2 = *a1;
    v3 = v5;
    sub_29E751BA8();
  }

  else
  {
    v4 = v5;
    sub_29E751BA8();
  }
}

void sub_29E690A34()
{
  v1 = v0;
  v2 = sub_29E690B8C();
  v5 = sub_29E751BB8();

  if (v5)
  {
  }

  else
  {
    v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell_item;
    swift_beginAccess();
    sub_29E60BC20(v1 + v3, v6);
    if (v7)
    {
      sub_29E602F60();
      if (swift_dynamicCast())
      {
        if (*(&v8 + 1))
        {
          v13[2] = v10;
          v13[3] = v11;
          v14 = v12;
          v13[0] = v8;
          v13[1] = v9;
          v4 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView);
          sub_29E61BB78();
          sub_29E751BC8();

          sub_29E691794(v13);
          return;
        }
      }

      else
      {
        v12 = 0;
        v10 = 0u;
        v11 = 0u;
        v8 = 0u;
        v9 = 0u;
      }
    }

    else
    {
      sub_29E6916B8(v6);
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0;
    }

    sub_29E691714(&v8);
  }
}

id sub_29E690B8C()
{
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView;
  v2 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_29E751BD8()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29E690C10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_29E752098();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v5[OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell_item];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *&v5[OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView] = 0;
  v15 = type metadata accessor for SleepOnboardingItemCell();
  v27.receiver = v5;
  v27.super_class = v15;
  v16 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E752048();
  v17 = sub_29E752088();
  v18 = sub_29E7546C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136446210;
    v21 = sub_29E755178();
    v23 = sub_29E6B9C90(v21, v22, &v26);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Initializing", v19, 0xCu);
    sub_29E5FECBC(v20);
    MEMORY[0x29ED98410](v20, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_29E690FFC();

  return v16;
}

void sub_29E690FFC()
{
  v1 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v0 setBackgroundColor_];

  sub_29E74F198();
  sub_29E754B08();
  v2 = [v0 contentView];
  v3 = sub_29E690B8C();
  [v2 addSubview_];

  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView;
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell____lazy_storage___hostView] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = objc_opt_self();
  sub_29E6917E8(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E7678B0;
  v7 = [*&v0[v4] leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v10;
  v11 = [*&v0[v4] topAnchor];
  v12 = [v0 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v6 + 40) = v14;
  v15 = [v0 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [*&v0[v4] trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 48) = v18;
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [*&v0[v4] bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v6 + 56) = v22;
  sub_29E66B09C();
  v23 = sub_29E7543D8();

  [v5 activateConstraints_];
}

id sub_29E691368(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SleepOnboardingItemCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29E69140C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell_item;
  swift_beginAccess();
  return sub_29E60BC20(v1 + v3, a1);
}

uint64_t sub_29E691464(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin23SleepOnboardingItemCell_item;
  swift_beginAccess();
  sub_29E61973C(a1, v1 + v3);
  swift_endAccess();
  sub_29E690A34();
  return sub_29E6916B8(a1);
}

void (*sub_29E6914D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E691534;
}

void sub_29E691534(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_29E690A34();
  }
}

uint64_t sub_29E691568()
{
  v0 = sub_29E690B8C();
  v1 = sub_29E751B98();

  return v1;
}

void sub_29E69159C(uint64_t a1)
{
  v1 = sub_29E690B8C();
  sub_29E751BA8();
}

void (*sub_29E6915F0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_29E690944(v2);
  return sub_29E688830;
}

void sub_29E691660(uint64_t a1)
{
  if (!qword_2A1856AD0)
  {
    sub_29E602F60();
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856AD0);
    }
  }
}

uint64_t sub_29E6916B8(uint64_t a1)
{
  sub_29E691660(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E691714(uint64_t a1)
{
  sub_29E6917E8(0, &qword_2A18586F8, &type metadata for SleepOnboardingItem, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E6917E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E691838(void *a1)
{
  *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections] = &unk_2A24FCE60;
  sub_29E602E20(a1, &v1[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_onboardingManager]);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SleepInternalSettingsViewController();
  v3 = objc_msgSendSuper2(&v7, sel_initWithStyle_, 1);
  v4 = [v3 tableView];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ActionTableViewCell();
    sub_29E693524();
    sub_29E7545D8();

    v6 = [v3 tableView];
    if (v6)
    {
      sub_29E69357C();
      sub_29E7545D8();

      sub_29E5FECBC(a1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_29E691AC4(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_29E693C6C(0, &qword_2A18587B0, &qword_2A1858798, &protocol descriptor for Row, MEMORY[0x29EDC9E90]);
      v2 = swift_allocObject();
      *&result = 2;
      *(v2 + 16) = xmmword_29E762F40;
      *(v2 + 56) = &type metadata for SleepInternalSettingsViewController.LockScreenDebugMode;
      *(v2 + 64) = &off_2A2500990;
      *(v2 + 32) = 0xD000000000000017;
      *(v2 + 40) = 0x800000029E75CF50;
      *(v2 + 96) = &type metadata for SleepInternalSettingsViewController.LockScreenDemoMode;
      *(v2 + 104) = &off_2A2500978;
      *(v2 + 72) = 0xD000000000000016;
      *(v2 + 80) = 0x800000029E75CF70;
    }

    else
    {
      sub_29E693C6C(0, &qword_2A18587B0, &qword_2A1858798, &protocol descriptor for Row, MEMORY[0x29EDC9E90]);
      v4 = swift_allocObject();
      *&result = 1;
      *(v4 + 16) = xmmword_29E762F30;
      *(v4 + 56) = &type metadata for SleepInternalSettingsViewController.UseDemoData;
      *(v4 + 64) = &off_2A25009A8;
      *(v4 + 32) = 0xD000000000000016;
      *(v4 + 40) = 0x800000029E75CF30;
    }
  }

  else
  {

    sub_29E6CC80C(&unk_2A24FCEB0);
  }

  return result;
}

unint64_t sub_29E691CEC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections);
  result = sub_29E74EED8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(v4 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_29E691AC4(*(v4 + result + 32));
  v7 = v6;
  result = sub_29E74EEB8();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v7 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_29E602E20(v7 + 40 * result + 32, v19);

  v8 = v20;
  v9 = v21;
  sub_29E601938(v19, v20);
  (*(v9 + 8))(v8, v9);
  v10 = sub_29E754198();

  v11 = sub_29E74EE98();
  v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:v11];

  v13 = [v12 textLabel];
  if (v13)
  {
    v14 = v13;
    v15 = v20;
    v16 = v21;
    sub_29E601938(v19, v20);
    (*(v16 + 16))(v15, v16);
    v17 = sub_29E754198();

    [v14 setText_];
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    [v18 setDelegate_];
  }

  sub_29E5FECBC(v19);
  return v12;
}

unint64_t sub_29E6921E0(void *a1)
{
  v2 = v1;
  v4 = sub_29E74EE98();
  [a1 deselectRowAtIndexPath:v4 animated:1];

  v5 = *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections];
  result = sub_29E74EED8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= *(v5 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_29E691AC4(*(v5 + result + 32));
  v8 = v7;
  result = sub_29E74EEB8();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result < *(v8 + 16))
  {
    sub_29E602E20(v8 + 40 * result + 32, v33);

    sub_29E609CF8(0, &qword_2A1858798, &protocol descriptor for Row);
    sub_29E609CF8(0, &qword_2A18587B8, &protocol descriptor for ActionableRow);
    if (swift_dynamicCast())
    {
      sub_29E5FAEE4(v32, v29);
      v9 = sub_29E601938(v29, v30);
      v27 = type metadata accessor for SleepInternalSettingsViewController();
      v28 = &off_2A25005D8;
      v26[0] = v2;
      LOBYTE(v9) = *v9;
      v10 = *sub_29E601938(v26, v27);
      v11 = v2;
      sub_29E6935C8(v10, v9);
      sub_29E5FECBC(v26);
    }

    else
    {
      sub_29E609CF8(0, &qword_2A18587A0, &protocol descriptor for SwitchableRow);
      if (!swift_dynamicCast())
      {
        return sub_29E5FECBC(v33);
      }

      sub_29E5FAEE4(v32, v29);
      v12 = sub_29E74EE98();
      v13 = [a1 cellForRowAtIndexPath_];

      if (v13)
      {
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          [v14 setOn_];
          v16 = v30;
          v17 = v31;
          sub_29E601938(v29, v30);
          v18 = [v15 isOn];
          v19 = type metadata accessor for SleepInternalSettingsViewController();
          v27 = v19;
          v28 = &off_2A25005D8;
          v26[0] = v2;
          v20 = *(v17 + 24);
          v21 = v2;
          v20(v18, v26, v16, v17);
          sub_29E5FECBC(v26);
          v22 = v30;
          v23 = v31;
          sub_29E601938(v29, v30);
          v27 = v19;
          v28 = &off_2A25005D8;
          v26[0] = v21;
          v24 = *(v23 + 16);
          v25 = v21;
          LOBYTE(v21) = v24(v26, v22, v23);
          sub_29E5FECBC(v26);
          [v15 setOn_];
        }
      }
    }

    sub_29E5FECBC(v29);
    return sub_29E5FECBC(v33);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_29E692820(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_29E74EEE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v33 - v11;
  v13 = [v3 tableView];
  if (!v13)
  {
    goto LABEL_17;
  }

  if (!a1)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 indexPathForCell_];

  if (!v15)
  {
    return;
  }

  sub_29E74EEA8();

  (*(v7 + 32))(v12, v10, v6);
  v16 = *&v3[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections];
  v17 = sub_29E74EED8();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v17 >= *(v16 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29E691AC4(*(v16 + v17 + 32));
  v19 = v18;
  v20 = sub_29E74EEB8();
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v20 >= *(v19 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29E602E20(v19 + 40 * v20 + 32, v37);

  sub_29E609CF8(0, &qword_2A1858798, &protocol descriptor for Row);
  sub_29E609CF8(0, &qword_2A18587A0, &protocol descriptor for SwitchableRow);
  if (swift_dynamicCast())
  {
    v33 = a1;
    v34 = v6;
    sub_29E5FAEE4(v35, v40);
    v21 = a2;
    v23 = v41;
    v22 = v42;
    sub_29E601938(v40, v41);
    v24 = type metadata accessor for SleepInternalSettingsViewController();
    v38 = v24;
    v39 = &off_2A25005D8;
    v37[0] = v3;
    v25 = *(v22 + 24);
    v26 = v3;
    v25(v21 & 1, v37, v23, v22);
    sub_29E5FECBC(v37);
    v27 = [v26 tableView];
    if (v27)
    {

      v28 = v41;
      v29 = v42;
      sub_29E601938(v40, v41);
      v38 = v24;
      v39 = &off_2A25005D8;
      v37[0] = v26;
      v30 = *(v29 + 16);
      v31 = v26;
      v32 = v30(v37, v28, v29);
      sub_29E5FECBC(v37);
      [v33 setOn_];
      (*(v7 + 8))(v12, v34);
      sub_29E5FECBC(v40);
      return;
    }

    goto LABEL_19;
  }

  (*(v7 + 8))(v12, v6);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_29E693BE4(v35);
}

uint64_t sub_29E692CA8(char a1, void *a2, const char *a3, ...)
{
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  result = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    sub_29E752048();
    v11 = a2;
    v12 = sub_29E752088();
    v13 = sub_29E7546A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_29E6B9C90(0xD00000000000002FLL, 0x800000029E75D000, &v21);
      *(v14 + 12) = 2082;
      v20 = a2;
      v16 = a2;
      sub_29E609CF8(0, &qword_2A1A7BCD0, MEMORY[0x29EDC9F18]);
      v17 = sub_29E754248();
      v19 = sub_29E6B9C90(v17, v18, &v21);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_29E5ED000, v12, v13, a3, v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v15, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

unint64_t sub_29E692F18()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  v3 = 0xD000000000000012;
  if (v2 != 4)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2 == 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

id sub_29E692FFC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [objc_opt_self() hksp_internalUserDefaults];
  v6 = [v5 *a4];

  return v6;
}

void sub_29E693060(char a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = [objc_opt_self() hksp_internalUserDefaults];
  [v7 *a5];
}

id sub_29E693190(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ActionTableViewCell();
  v3 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 textLabel];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 tintColor];
      [v7 setTextColor_];
    }
  }

  return v4;
}

id sub_29E69342C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_29E6934D0()
{
  result = qword_2A1858780;
  if (!qword_2A1858780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858780);
  }

  return result;
}

unint64_t sub_29E693524()
{
  result = qword_2A1858788;
  if (!qword_2A1858788)
  {
    type metadata accessor for ActionTableViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858788);
  }

  return result;
}

unint64_t sub_29E69357C()
{
  result = qword_2A1858790;
  if (!qword_2A1858790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1858790);
  }

  return result;
}

uint64_t sub_29E6935C8(void *a1, unsigned __int8 a2)
{
  v23 = type metadata accessor for SleepInternalSettingsViewController();
  v24 = &off_2A25005D8;
  v22[0] = a1;
  v4 = (*sub_29E601938(v22, v23) + OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_onboardingManager);
  sub_29E601938(v4, v4[3]);
  v5 = a1;
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v8 = sub_29E74F5A8();
      v20 = sub_29E692ED4;
      v21 = 0;
      aBlock = MEMORY[0x29EDCA5F8];
      v17 = 1107296256;
      v18 = sub_29E5FE860;
      v19 = &unk_2A2500638;
      v9 = _Block_copy(&aBlock);
      [v8 saveCurrentSleepSettings:0 completion:v9];
    }

    else
    {
      if (a2 != 4)
      {
        v11 = sub_29E74F5A8();
        v12 = [objc_opt_self() hksp_internalUserDefaults];
        v13 = objc_allocWithZone(type metadata accessor for SleepFocusPromotionStore(0));
        v14 = sub_29E70A79C(v11, v12);
        sub_29E70B294();

        return sub_29E5FECBC(v22);
      }

      v8 = sub_29E74F5A8();
      v20 = sub_29E692EE0;
      v21 = 0;
      aBlock = MEMORY[0x29EDCA5F8];
      v17 = 1107296256;
      v18 = sub_29E5FE860;
      v19 = &unk_2A2500610;
      v9 = _Block_copy(&aBlock);
      [v8 saveCurrentSleepEventRecord:0 completion:v9];
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    v6 = sub_29E74F5C8();
    v20 = sub_29E692C90;
    v21 = 0;
    aBlock = MEMORY[0x29EDCA5F8];
    v17 = 1107296256;
    v7 = &unk_2A25006B0;
    goto LABEL_9;
  }

  if (a2 != 1)
  {
    v8 = sub_29E74F5A8();
    v20 = sub_29E692EC8;
    v21 = 0;
    aBlock = MEMORY[0x29EDCA5F8];
    v17 = 1107296256;
    v18 = sub_29E5FE860;
    v19 = &unk_2A2500660;
    v9 = _Block_copy(&aBlock);
    [v8 saveCurrentSleepSchedule:0 completion:v9];
LABEL_12:
    _Block_release(v9);

    return sub_29E5FECBC(v22);
  }

  v6 = sub_29E74F5D8();
  v20 = sub_29E692C9C;
  v21 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v17 = 1107296256;
  v7 = &unk_2A2500688;
LABEL_9:
  v18 = sub_29E5FE860;
  v19 = v7;
  v10 = _Block_copy(&aBlock);
  [v6 resetOnboardingWithCompletion_];
  _Block_release(v10);
  sub_29E751758();
  return sub_29E5FECBC(v22);
}

unint64_t sub_29E693950(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepInternalSettingsViewController_sections];
  result = sub_29E74EED8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v2 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_29E691AC4(*(v2 + result + 32));
  v5 = v4;
  result = sub_29E74EEB8();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(v5 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_29E602E20(v5 + 40 * result + 32, v17);

  sub_29E609CF8(0, &qword_2A1858798, &protocol descriptor for Row);
  sub_29E609CF8(0, &qword_2A18587A0, &protocol descriptor for SwitchableRow);
  if (swift_dynamicCast())
  {
    sub_29E5FAEE4(&v16, v13);
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
    v7 = v14;
    v8 = v15;
    sub_29E601938(v13, v14);
    v12[3] = type metadata accessor for SleepInternalSettingsViewController();
    v12[4] = &off_2A25005D8;
    v12[0] = v1;
    v9 = *(v8 + 16);
    v10 = v1;
    v11 = v9(v12, v7, v8);
    sub_29E5FECBC(v12);
    [v6 setOn_];
    sub_29E5FECBC(v13);
  }

  return sub_29E5FECBC(v17);
}

id sub_29E693B08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_29E754198();
  }

  else
  {
    v3 = 0;
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for ActionTableViewCell();
  v4 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, 0, v3);

  v5 = v4;
  v6 = [v5 textLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 tintColor];
    [v7 setTextColor_];
  }

  return v5;
}

uint64_t sub_29E693BE4(uint64_t a1)
{
  sub_29E693C6C(0, &qword_2A18587A8, &qword_2A18587A0, &protocol descriptor for SwitchableRow, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E693C6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E609CF8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29E693CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for SleepInternalSettingsViewController.ResetRow(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepInternalSettingsViewController.ResetRow(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_29E693E9C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E693EEC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E693EEC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29E754448();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E693F3C()
{
  result = qword_2A18587D0;
  if (!qword_2A18587D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18587D0);
  }

  return result;
}

uint64_t sub_29E693FB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E750508();
  v3 = sub_29E74FEF8();
  if (!*(v2 + 16))
  {

    goto LABEL_7;
  }

  v5 = sub_29E68A9D0(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_7:

    sub_29E754D78();

    v11 = sub_29E74FEF8();
    MEMORY[0x29ED96C20](v11);

    result = sub_29E754E48();
    __break(1u);
    return result;
  }

  v8 = *(v2 + 56);
  v9 = sub_29E750528();
  (*(*(v9 - 8) + 16))(a1, v8 + *(*(v9 - 8) + 72) * v5, v9);
}

uint64_t sub_29E69411C(uint64_t a1)
{
  sub_29E695850(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = (&v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_29E695984();
  sub_29E751368();
  sub_29E601938(v17, v17[3]);
  v7 = sub_29E74FB58();
  v8 = [objc_allocWithZone(MEMORY[0x29EDB8C58]) initWithFetchRequest:v6 managedObjectContext:v7 sectionNameKeyPath:0 cacheName:0];

  sub_29E5FECBC(v17);
  sub_29E6958F0(0);
  v10 = objc_allocWithZone(v9);
  v11 = v8;
  v12 = sub_29E7517E8();
  *v5 = sub_29E695D80;
  v5[1] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x29EDC2718], v2);
  sub_29E695D84(0);
  swift_allocObject();
  v13 = v12;
  sub_29E750798();
  sub_29E695E18(0);
  swift_allocObject();

  sub_29E750B08();
  sub_29E695F4C(&qword_2A1858818, sub_29E695E18, MEMORY[0x29EDC2110]);
  v14 = sub_29E750958();

  return v14;
}

uint64_t sub_29E694398@<X0>(uint64_t x8_0@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E694444(x8_0);
}

void sub_29E694444(uint64_t a1@<X8>)
{
  v2 = sub_29E74ED88();
  v110 = *(v2 - 8);
  v111 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v109 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E752098();
  v107 = *(v4 - 8);
  v108 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v102 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v102 - v11;
  v13 = sub_29E750C88();
  v14 = sub_29E6EF1A0(v13);

  if (!v14)
  {
    sub_29E752048();
    v34 = sub_29E752088();
    v35 = sub_29E7546A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_29E5ED000, v34, v35, "Feed items not found from mapped data source; returning a blank section!", v36, 2u);
      MEMORY[0x29ED98410](v36, -1, -1);
    }

    (*(v107 + 8))(v7, v108);
    v37 = v109;
    sub_29E74ED78();
    sub_29E74ED48();
    v110[1](v37, v111);
    goto LABEL_75;
  }

  v102 = v12;
  v103 = v10;
  v15 = v14 & 0xFFFFFFFFFFFFFF8;
  v104 = a1;
  if (v14 >> 62)
  {
    goto LABEL_71;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_72:

    v97 = v103;
    sub_29E752048();
    v98 = sub_29E752088();
    v99 = sub_29E7546A8();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_29E5ED000, v98, v99, "Breathing disturbances feed item not found in feed items; returning a blank section!", v100, 2u);
      MEMORY[0x29ED98410](v100, -1, -1);
    }

    (*(v107 + 8))(v97, v108);
    v101 = v109;
    sub_29E74ED78();
    sub_29E74ED48();
    v110[1](v101, v111);
LABEL_75:
    sub_29E750C98();
    return;
  }

LABEL_4:
  v17 = 0;
  v115 = v14 & 0xC000000000000001;
  v18 = v14 + 32;
  v19 = *MEMORY[0x29EDBA850];
  v113 = v16;
  v114 = v19;
  v112 = v14;
  v105 = v14 + 32;
  v106 = v15;
  while (1)
  {
    if (v115)
    {
      v22 = MEMORY[0x29ED976A0](v17, v14);
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_69;
      }

      v22 = *(v18 + 8 * v17);
    }

    v23 = v22;
    v24 = __OFADD__(v17++, 1);
    if (v24)
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      v16 = sub_29E754C98();
      if (!v16)
      {
        goto LABEL_72;
      }

      goto LABEL_4;
    }

    v25 = sub_29E750078();
    sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
    v26 = MEMORY[0x29ED97000](v114);
    sub_29E609B5C(0, &qword_2A1A7D490, 0x29EDBACB8);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v20 = v26;
      v21 = sub_29E754CD8();

      if (v21)
      {
        goto LABEL_23;
      }

      goto LABEL_6;
    }

    v27 = v23;
    if (*(v25 + 16))
    {
      v28 = sub_29E754B78();
      v29 = -1 << *(v25 + 32);
      v30 = v28 & ~v29;
      if ((*(v25 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        break;
      }
    }

LABEL_17:

    v23 = v27;
    v14 = v112;
    v16 = v113;
    v18 = v105;
    v15 = v106;
LABEL_6:

    if (v17 == v16)
    {
      goto LABEL_72;
    }
  }

  v31 = ~v29;
  while (1)
  {
    v32 = *(*(v25 + 48) + 8 * v30);
    v33 = sub_29E754B88();

    if (v33)
    {
      break;
    }

    v30 = (v30 + 1) & v31;
    if (((*(v25 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v23 = v27;
  v14 = v112;
  v16 = v113;
  v15 = v106;
LABEL_23:
  v114 = v23;
  v38 = [v23 userData];
  if (v38)
  {
    v39 = v38;
    v40 = sub_29E74EB18();
    v42 = v41;

    v43 = sub_29E74EB08();
    v44 = v42;
    v16 = v113;
    sub_29E643D20(v40, v44);
  }

  else
  {
    v43 = 0;
  }

  v45 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

  if (!v45 || (v46 = [v45 chartModel], v45, !v46))
  {

    v62 = v102;
    sub_29E752048();
    v63 = sub_29E752088();
    v64 = sub_29E7546A8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_29E5ED000, v63, v64, "Breathing disturbances chart model not found in feed item data; returning a blank section!", v65, 2u);
      MEMORY[0x29ED98410](v65, -1, -1);
    }

    (*(v107 + 8))(v62, v108);
    v66 = v109;
    sub_29E74ED78();
    sub_29E74ED48();
    v110[1](v66, v111);
    sub_29E750C98();

    return;
  }

  v110 = v46;
  v47 = 0;
  v48 = *MEMORY[0x29EDBA4D8];
  v111 = *MEMORY[0x29EDBA4D8];
  while (2)
  {
    if (v115)
    {
      v51 = MEMORY[0x29ED976A0](v47, v14);
      goto LABEL_35;
    }

    if (v47 >= *(v15 + 16))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v51 = *(v105 + 8 * v47);
LABEL_35:
    v52 = v51;
    v24 = __OFADD__(v47++, 1);
    if (v24)
    {
      goto LABEL_70;
    }

    v53 = sub_29E750078();
    sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
    v54 = MEMORY[0x29ED96FF0](v48);
    v55 = v54;
    if ((v53 & 0xC000000000000001) != 0)
    {
      v49 = v54;
      v50 = sub_29E754CD8();

      if (v50)
      {
        goto LABEL_47;
      }

LABEL_30:

      if (v47 == v16)
      {
        v73 = 0;
        v52 = 0;
        v68 = &off_29F370000;
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  if (!*(v53 + 16) || (v56 = sub_29E754B78(), v57 = -1 << *(v53 + 32), v58 = v56 & ~v57, ((*(v53 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0))
  {
LABEL_42:

    v14 = v112;
    v16 = v113;
    v15 = v106;
    v48 = v111;
    goto LABEL_30;
  }

  v59 = ~v57;
  while (1)
  {
    v60 = *(*(v53 + 48) + 8 * v58);
    v61 = sub_29E754B88();

    if (v61)
    {
      break;
    }

    v58 = (v58 + 1) & v59;
    if (((*(v53 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

LABEL_47:
  v67 = [v52 userData];
  v68 = &off_29F370000;
  if (v67)
  {
    v69 = v67;
    v70 = sub_29E74EB18();
    v72 = v71;

    v73 = sub_29E74EB08();
    sub_29E643D20(v70, v72);
  }

  else
  {
    v73 = 0;
  }

LABEL_51:
  v74 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

  if (!v74)
  {
    goto LABEL_62;
  }

  v75 = [v74 v68[279]];
  if (!v75)
  {
    goto LABEL_61;
  }

  v76 = v75;
  v77 = [v74 v68[279]];
  if (!v77)
  {
    goto LABEL_80;
  }

  v78 = v77;
  v79 = [v77 sixMonthData];

  if (!v79)
  {
LABEL_81:
    __break(1u);
    return;
  }

  v80 = [v79 queryDataObject];

  if (v80)
  {
    v81 = sub_29E74EB18();
    v83 = v82;

    v84 = sub_29E74EB08();
    sub_29E643D20(v81, v83);
  }

  else
  {
    v84 = 0;
  }

  v85 = [objc_allocWithZone(MEMORY[0x29EDC4500]) initWithData_];

  if (v85)
  {
    v86 = v76;
    v87 = v85;
    v115 = v87;
    v88 = v86;
    goto LABEL_65;
  }

  v74 = v76;
LABEL_61:

LABEL_62:
  v89 = [objc_allocWithZone(MEMORY[0x29EDC4498]) init];
  if (!v89)
  {
    goto LABEL_78;
  }

  v86 = v89;
  v90 = [objc_allocWithZone(MEMORY[0x29EDC4500]) init];
  if (!v90)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v87 = v90;
  v115 = 0;
  v88 = 0;
LABEL_65:

  sub_29E695E78(0, &qword_2A185A510, sub_29E61BFEC, MEMORY[0x29EDC9E90]);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_29E762F30;
  *(v91 + 56) = &type metadata for BreathingDisturbancesSharingChartItem;
  *(v91 + 64) = sub_29E69576C();
  v92 = v110;
  *(v91 + 32) = v110;
  *(v91 + 40) = v86;
  *(v91 + 48) = v87;
  v93 = v92;
  v94 = v86;
  v95 = v87;
  sub_29E750C98();

  v96 = v115;
}

uint64_t sub_29E694FC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E7509D8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7509C8();
  v6 = sub_29E750988();
  (*(v3 + 8))(v5, v2);

  return v6;
}

uint64_t sub_29E695114()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E750DD8();
  sub_29E7547D8();
}

id sub_29E6951E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v36 = a3;
  v8 = MEMORY[0x29EDC9C68];
  sub_29E695E78(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v33 - v10;
  sub_29E695E78(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v8);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = &v33 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v33 - v19;
  if (!a2)
  {
    v21 = sub_29E74ED28();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
    goto LABEL_6;
  }

  v34 = a4;
  sub_29E750628();
  v21 = sub_29E74ED28();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v18, 1, v21) != 1)
  {
    (*(v22 + 32))(v20, v18, v21);
    (*(v22 + 56))(v20, 0, 1, v21);
    a4 = v34;
    goto LABEL_11;
  }

  v33 = a5;
  sub_29E750608();
  v23 = sub_29E74E838();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v11, 1, v23) == 1)
  {
    sub_29E695EDC(v11, &unk_2A18594A0, MEMORY[0x29EDB98E8]);
    a5 = v33;
    a4 = v34;
LABEL_6:
    sub_29E74ED28();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    goto LABEL_9;
  }

  sub_29E74E7F8();
  (*(v24 + 8))(v11, v23);
  (*(v22 + 56))(v20, 0, 1, v21);
  a5 = v33;
  a4 = v34;
LABEL_9:
  sub_29E74ED28();
  if ((*(*(v21 - 8) + 48))(v18, 1, v21) != 1)
  {
    sub_29E695EDC(v18, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  }

LABEL_11:
  sub_29E6172A0(v20, v15, v25, v26, v27, v28);
  sub_29E74ED28();
  v29 = *(v21 - 8);
  v30 = 0;
  if ((*(v29 + 48))(v15, 1, v21) != 1)
  {
    v30 = sub_29E74EC98();
    (*(v29 + 8))(v15, v21);
  }

  v31 = [v35 breathingDisturbancesRemoteInteractiveChartWithBreathingDisturbancesModel:v36 sleepApneaEventModel:a4 sleepApneaEventChartData:a5 displayDate:v30];

  sub_29E695EDC(v20, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
  return v31;
}

uint64_t sub_29E69571C(uint64_t a1)
{
  v2 = sub_29E6957C0();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29E69576C()
{
  result = qword_2A18587D8;
  if (!qword_2A18587D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18587D8);
  }

  return result;
}

unint64_t sub_29E6957C0()
{
  result = qword_2A18587E0;
  if (!qword_2A18587E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18587E0);
  }

  return result;
}

void sub_29E695850(uint64_t a1)
{
  if (!qword_2A18587E8)
  {
    sub_29E6958F0(255);
    sub_29E695F4C(&qword_2A1858800, sub_29E6958F0, MEMORY[0x29EDC2988]);
    v1 = sub_29E7513E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18587E8);
    }
  }
}

void sub_29E6958F0(uint64_t a1)
{
  if (!qword_2A18587F0)
  {
    sub_29E750088();
    sub_29E695F4C(&qword_2A18587F8, MEMORY[0x29EDC3C88], MEMORY[0x29EDC1B30]);
    v1 = sub_29E7517D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18587F0);
    }
  }
}

void *sub_29E695984()
{
  v0 = MEMORY[0x29EDB98E8];
  sub_29E695E78(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v22 - v2;
  sub_29E750088();
  sub_29E695E78(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v4 = sub_29E74FB98();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v22 = xmmword_29E762F30;
  *(v7 + 16) = xmmword_29E762F30;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x29EDC3710], v4);
  sub_29E67905C(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E7655E0;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(v8 + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  *(v8 + 40) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v9 = sub_29E74E838();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_29E67905C(0, &qword_2A1858820, MEMORY[0x29EDC37E0]);
  v10 = swift_allocObject();
  *(v10 + 16) = v22;
  v11 = sub_29E751388();
  v12 = sub_29E754638();

  *(v10 + 32) = v12;
  v13 = MEMORY[0x29ED92970](v7, v8, v3, v10);

  sub_29E695EDC(v3, &unk_2A18594A0, v0);
  v14 = v13;
  v15 = sub_29E750068();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29E764160;
  v17 = objc_allocWithZone(MEMORY[0x29EDBA0F0]);
  v18 = sub_29E754198();
  v19 = [v17 initWithKey:v18 ascending:0];

  *(v16 + 32) = v19;
  sub_29E609B5C(0, &qword_2A1858470, 0x29EDBA0F0);
  v20 = sub_29E7543D8();

  [v15 setSortDescriptors_];

  return v15;
}

void sub_29E695D84(uint64_t a1)
{
  if (!qword_2A1858808)
  {
    sub_29E6958F0(255);
    sub_29E695F4C(&qword_2A1858800, sub_29E6958F0, MEMORY[0x29EDC2988]);
    v1 = sub_29E7507A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858808);
    }
  }
}

void sub_29E695E18(uint64_t a1)
{
  if (!qword_2A1858810)
  {
    sub_29E695D84(255);
    v1 = sub_29E750AF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858810);
    }
  }
}

void sub_29E695E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E695EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E695E78(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E695F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E695F94(uint64_t a1)
{
  if (!qword_2A1858830)
  {
    sub_29E695E18(255);
    sub_29E695F4C(&qword_2A1858818, sub_29E695E18, MEMORY[0x29EDC2110]);
    v1 = sub_29E750768();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858830);
    }
  }
}

id sub_29E696028()
{
  v1 = sub_29E74F8B8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaOnboardingSetupCompleteViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaOnboardingSetupCompleteViewController_animatedSymbolView;
  type metadata accessor for SleepApneaOnboardingSetupCompleteAnimatedSymbolView();
  *&v0[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v6 = *(v2 + 8);
  v6(v4, v1);
  v7 = sub_29E754198();

  sub_29E74F8A8();
  sub_29E74F7C8();
  v6(v4, v1);
  v8 = sub_29E754198();

  v9 = type metadata accessor for SleepApneaOnboardingSetupCompleteViewController();
  v13.receiver = v0;
  v13.super_class = v9;
  v10 = objc_msgSendSuper2(&v13, sel_initWithTitle_detailText_icon_contentLayout_, v7, v8, 0, 2);

  v11 = v10;
  sub_29E696B18();

  return v11;
}

void sub_29E696298()
{
  v1 = v0;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_29E74F8B8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SleepApneaOnboardingSetupCompleteViewController();
  v27.receiver = v1;
  v27.super_class = v10;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v7 + 8))(v9, v6);
  v11 = sub_29E754198();

  v12 = *MEMORY[0x29EDC6AC0];
  v26 = *(v3 + 104);
  v24 = v12;
  v26(v5, v12, v2);
  sub_29E754238();
  v25 = *(v3 + 8);
  v25(v5, v2);
  v13 = sub_29E754198();

  v14 = [v1 navigationItem];
  [v14 setHidesBackButton_];

  v15 = [v1 headerView];
  [v15 setAllowFullWidthIcon_];

  v16 = [v1 &selRef_occurrence];
  v17 = v12;
  v18 = v26;
  v26(v5, v17, v2);
  sub_29E754238();
  v19 = v25;
  v25(v5, v2);
  v20 = sub_29E754198();

  [v16 setTitleAccessibilityIdentifier_];

  v21 = [v1 headerView];
  v18(v5, v24, v2);
  sub_29E754238();
  v19(v5, v2);
  v22 = sub_29E754198();

  [v21 setDetailTextAccessibilityIdentifier_];
}

uint64_t sub_29E6967D4()
{
  sub_29E6979D8(0);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_29E7544D8();
    v6 = sub_29E7544F8();
    (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
    sub_29E7544C8();
    swift_unknownObjectRetain();
    v7 = v0;
    v8 = sub_29E7544B8();
    v9 = swift_allocObject();
    v10 = MEMORY[0x29EDCA390];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v5;
    v9[5] = v7;
    v9[6] = &off_2A2500A68;
    sub_29E6E4804(0, 0, v3, &unk_29E767EC0, v9);

    return sub_29E751758();
  }

  return result;
}

void sub_29E696950(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E696B18()
{
  v1 = [v0 headerView];
  v2 = [v1 customIconContainerView];

  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaOnboardingSetupCompleteViewController_animatedSymbolView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 setClipsToBounds_];
    [v2 addSubview_];
    v4 = objc_opt_self();
    sub_29E6163F8();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29E7655E0;
    v6 = [v3 centerXAnchor];
    v7 = [v2 centerXAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    *(v5 + 32) = v8;
    v9 = [v3 centerYAnchor];
    v10 = [v2 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v5 + 40) = v11;
    sub_29E66B09C();
    v12 = sub_29E7543D8();

    [v4 activateConstraints_];
  }
}

uint64_t sub_29E696D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_29E696E74(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin47SleepApneaOnboardingSetupCompleteViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29E751758();
}

id sub_29E696EC0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_imageView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v10 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolColor;
  *&v4[v10] = [objc_opt_self() hk_respiratoryKeyColor];
  v11 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolConfiguration;
  v12 = objc_opt_self();
  v13 = [v12 configurationWithPointSize_];
  v14 = [v12 configurationPreferringMulticolor];
  v15 = [v13 configurationByApplyingConfiguration_];

  *&v4[v11] = v15;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for SleepApneaOnboardingSetupCompleteAnimatedSymbolView();
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E6972F0();

  return v16;
}

id sub_29E6970F8(void *a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_imageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x29EDC7AD8]) init];
  v4 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolColor;
  *&v1[v4] = [objc_opt_self() hk_respiratoryKeyColor];
  v5 = OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolConfiguration;
  v6 = objc_opt_self();
  v7 = [v6 configurationWithPointSize_];
  v8 = [v6 configurationPreferringMulticolor];
  v9 = [v7 configurationByApplyingConfiguration_];

  *&v1[v5] = v9;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SleepApneaOnboardingSetupCompleteAnimatedSymbolView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_29E6972F0();
  }

  return v11;
}

void sub_29E6972F0()
{
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_imageView];
  v2 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolConfiguration];
  v3 = sub_29E754198();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v1 setImage_];
  [v1 setTintColor_];
  [v1 setContentMode_];
  [v0 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = objc_opt_self();
  sub_29E6163F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E7678B0;
  v7 = [v1 leadingAnchor];
  v8 = [v0 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v1 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v1 topAnchor];
  v14 = [v0 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v1 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  sub_29E66B09C();
  v19 = sub_29E7543D8();

  [v5 activateConstraints_];
}

void sub_29E697600()
{
  v1 = sub_29E753CD8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E753CB8();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC20SleepHealthAppPluginP33_31BB715BF67FD8DC8AF8C4FEE67A753351SleepApneaOnboardingSetupCompleteAnimatedSymbolView_symbolConfiguration);
  v10 = sub_29E754198();
  v11 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v11)
  {
    sub_29E753CA8();
    sub_29E753CC8();
    sub_29E697980();
    sub_29E7545C8();

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }
}

id sub_29E6978C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_29E697980()
{
  result = qword_2A1858860;
  if (!qword_2A1858860)
  {
    sub_29E753CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858860);
  }

  return result;
}

void sub_29E6979D8(uint64_t a1)
{
  if (!qword_2A1859CD0)
  {
    sub_29E7544F8();
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859CD0);
    }
  }
}

uint64_t type metadata accessor for SleepRoomViewController(uint64_t a1)
{
  result = qword_2A18588C0;
  if (!qword_2A18588C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E697A7C(uint64_t a1)
{
  result = sub_29E7513C8();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_29E697B70(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a2;
  v62 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_29E752098();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E74EE78();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74ED28();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 occurrence];
  v57 = [v17 isSingleDayOverride];

  sub_29E74ED18();
  v18 = sub_29E74EC98();
  (*(v14 + 8))(v16, v13);
  v19 = *&v4[qword_2A18588B0];
  v20 = [v19 currentCalendar];
  sub_29E74EE28();

  v21 = sub_29E74EE08();
  (*(v10 + 8))(v12, v9);
  v22 = [a1 generateOverrideOccurrenceForCurrentDate:v18 gregorianCalendar:v21];

  sub_29E752048();
  v23 = a1;
  v24 = v22;
  v58 = v8;
  v25 = sub_29E752088();
  v26 = sub_29E7546C8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v27 = 136446723;
    v28 = sub_29E755178();
    ObjectType = v19;
    v30 = sub_29E6B9C90(v28, v29, aBlock);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2081;
    v31 = v23;
    v32 = [v31 description];
    v33 = sub_29E7541D8();
    v35 = v34;

    v36 = sub_29E6B9C90(v33, v35, aBlock);

    *(v27 + 14) = v36;
    *(v27 + 22) = 2081;
    v37 = v24;
    v38 = [v37 description];
    v39 = sub_29E7541D8();
    v41 = v40;

    v42 = v39;
    v19 = ObjectType;
    v43 = sub_29E6B9C90(v42, v41, aBlock);

    *(v27 + 24) = v43;
    _os_log_impl(&dword_29E5ED000, v25, v26, "[%{public}s] Presenting view to edit %{private}s as an override %{private}s", v27, 0x20u);
    v44 = v55;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v44, -1, -1);
    MEMORY[0x29ED98410](v27, -1, -1);
  }

  (*(v59 + 8))(v58, v60);
  sub_29E74FA38();
  v45 = v24;
  v46 = sub_29E698610();
  v64 = sub_29E74F478();
  v65 = MEMORY[0x29EDC6A58];
  aBlock[0] = v46;
  sub_29E69D748();
  v47 = [v19 currentCalendar];
  sub_29E74EE28();

  v48 = sub_29E74F9F8();
  sub_29E69F928(&qword_2A1858A80, type metadata accessor for SleepRoomViewController, &unk_29E768F68);
  swift_unknownObjectRetain();
  sub_29E74FA28();
  v49 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v50 = swift_allocObject();
  v51 = v61;
  v52 = v62;
  v50[2] = v61;
  v50[3] = v52;
  v50[4] = v48;
  v65 = sub_29E69F970;
  v66 = v50;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  v64 = &unk_2A2500C10;
  v53 = _Block_copy(aBlock);
  sub_29E5F51BC(v51, v52);
  v54 = v48;

  [v4 presentViewController:v49 animated:1 completion:v53];
  _Block_release(v53);
}

uint64_t sub_29E6981B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a1;
  v37 = a2;
  v32 = sub_29E74EE78();
  v4 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74ED28();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E698610();
  aBlock[0] = v10;
  v11 = sub_29E74F478();
  v12 = sub_29E74F548();
  v33 = v12;

  v13 = qword_2A1858878;
  aBlock[0] = *&v2[qword_2A1858878];
  v14 = sub_29E74F538();
  v34 = v14;
  v35 = v9;
  sub_29E74ED18();
  v15 = sub_29E74EC98();
  v16 = *&v2[qword_2A18588B0];
  v17 = [v16 currentCalendar];
  sub_29E74EE28();

  v18 = sub_29E74EE08();
  (*(v4 + 8))(v6, v32);
  v19 = [v14 generateOverrideOccurrenceFromTemplateForCurrentDate:v15 gregorianCalendar:v18 schedule:v12];

  sub_29E74FA38();
  v20 = *&v3[v13];
  v41 = v11;
  v42 = MEMORY[0x29EDC6A58];
  aBlock[0] = v20;
  v21 = v19;
  v22 = v20;
  sub_29E69D748();
  v23 = [v16 currentCalendar];
  sub_29E74EE28();

  v24 = sub_29E74F9F8();
  sub_29E69F928(&qword_2A1858A80, type metadata accessor for SleepRoomViewController, &unk_29E768F68);
  swift_unknownObjectRetain();
  sub_29E74FA28();
  v25 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
  v26 = swift_allocObject();
  v28 = v36;
  v27 = v37;
  v26[2] = v36;
  v26[3] = v27;
  v26[4] = v24;
  v42 = sub_29E69F9E0;
  v43 = v26;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  v41 = &unk_2A2500C60;
  v29 = _Block_copy(aBlock);
  sub_29E5F51BC(v28, v27);
  v30 = v24;

  [v3 presentViewController:v25 animated:1 completion:v29];
  _Block_release(v29);

  return (*(v38 + 8))(v35, v39);
}

uint64_t sub_29E6985CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_29E698610()
{
  v1 = qword_2A1858878;
  v2 = *(v0 + qword_2A1858878);
  if (v2)
  {
    v3 = *(v0 + qword_2A1858878);
  }

  else
  {
    v4 = sub_29E69883C();
    v5 = sub_29E639044(v4);

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_29E698688()
{
  v1 = qword_2A1858880;
  v2 = *(v0 + qword_2A1858880);
  if (v2)
  {
    v3 = *(v0 + qword_2A1858880);
  }

  else
  {
    sub_29E74F418();
    v4 = v0;
    sub_29E69883C();
    v5 = sub_29E74F398();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_29E698700@<X0>(uint64_t *a1@<X8>)
{
  v3 = qword_2A1858890;
  swift_beginAccess();
  result = sub_29E6A127C(v1 + v3, &v11);
  if (*(&v12 + 1) == 1)
  {
    sub_29E6A1060(&v11, sub_29E6A10C0);
    v5 = *(v1 + qword_2A1869340);
    if (sub_29E754618())
    {
      v6 = sub_29E74F4C8();
      sub_29E69883C();
      v7 = v5;
      v8 = sub_29E74F4B8();
      v9 = MEMORY[0x29EDC6A70];
    }

    else
    {
      v6 = 0;
      v9 = 0;
      v8 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    a1[3] = v6;
    a1[4] = v9;
    *a1 = v8;
    sub_29E69FA08(a1, &v11);
    swift_beginAccess();
    sub_29E6A12E0(&v11, v1 + v3);
    return swift_endAccess();
  }

  else
  {
    v10 = v12;
    *a1 = v11;
    *(a1 + 1) = v10;
    a1[4] = v13;
  }

  return result;
}

id sub_29E69883C()
{
  v1 = qword_2A1858898;
  v2 = *(v0 + qword_2A1858898);
  if (v2)
  {
    v3 = *(v0 + qword_2A1858898);
  }

  else
  {
    v4 = *(v0 + qword_2A1869340);
    v5 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v6 = v4;
    v7 = sub_29E754198();
    v8 = [v5 initWithIdentifier:v7 healthStore:v6 options:10];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_29E69890C()
{
  v1 = v0;
  v2 = qword_2A18588A0;
  v3 = *(v0 + qword_2A18588A0);
  v4 = v3;
  if (v3 == 1)
  {
    sub_29E698700(v13);
    v5 = v14;
    if (v14)
    {
      v6 = sub_29E601938(v13, v14);
      v7 = *(v5 - 8);
      MEMORY[0x2A1C7C4A8](v6);
      v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      sub_29E6A0D88(v13, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
      v4 = sub_29E74F5C8();
      (*(v7 + 8))(v9, v5);
    }

    else
    {
      sub_29E6A0D88(v13, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
      v4 = 0;
    }

    v10 = *(v1 + v2);
    *(v1 + v2) = v4;
    swift_unknownObjectRetain();
    sub_29E6A1144(v10);
  }

  sub_29E6A126C(v3);
  return v4;
}

id sub_29E698AE4()
{
  v1 = sub_29E74EE78();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_2A18588A8;
  v6 = *(v0 + qword_2A18588A8);
  if (v6)
  {
    v7 = *(v0 + qword_2A18588A8);
  }

  else
  {
    v8 = [*(v0 + qword_2A18588B0) currentCalendar];
    sub_29E74EE28();

    v9 = objc_allocWithZone(MEMORY[0x29EDC4658]);
    v10 = v0;
    v11 = sub_29E74EE08();
    v12 = [v9 initWithCalendar_];

    (*(v2 + 8))(v4, v1);
    v13 = *(v10 + v5);
    *(v10 + v5) = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

id sub_29E698C50()
{
  sub_29E754A68();
  v0 = sub_29E754198();

  return v0;
}

void sub_29E698C9C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_29E69FA98();
}

uint64_t sub_29E698D48()
{
  ObjectType = swift_getObjectType();
  v1 = sub_29E752098();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v27 = &ObjectType - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_29E751FA8();
  v3 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E751FE8();
  v6 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E751FB8();
  sub_29E751F98();
  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = sub_29E751FD8();
  v11 = sub_29E754958();
  v12 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v10, v11, v12, "SleepRoomViewDidLoad", "", v9, 2u);
  sub_29E6990F0(v0);
  v13 = sub_29E754948();
  v14 = sub_29E751F88();
  _os_signpost_emit_with_name_impl(&dword_29E5ED000, v10, v13, v14, "SleepRoomViewDidLoad", "", v9, 2u);

  MEMORY[0x29ED98410](v9, -1, -1);
  (*(v3 + 8))(v5, v26);
  (*(v6 + 8))(v8, v25);
  v15 = v27;
  sub_29E752048();
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136446210;
    v20 = sub_29E755178();
    v22 = sub_29E6B9C90(v20, v21, &v30);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%{public}s] View did load", v18, 0xCu);
    sub_29E5FECBC(v19);
    MEMORY[0x29ED98410](v19, -1, -1);
    MEMORY[0x29ED98410](v18, -1, -1);
  }

  return (*(v28 + 8))(v15, v29);
}

void sub_29E6990F0(char *a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6A1154(0, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v88 = &v86 - v4;
  sub_29E6A0DE4(0);
  v89 = v5;
  v87 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v86 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6A0E58(0);
  v92 = v7;
  v91 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v90 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29E7513C8();
  v104 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v103 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_29E750528();
  v10 = *(v118 - 1);
  MEMORY[0x2A1C7C4A8](v118);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6A1154(0, &qword_2A1858AE0, MEMORY[0x29EDC1D90], v2);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v86 - v14;
  sub_29E7544C8();
  v94 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *&a1[qword_2A1869340];
  v17 = [v16 profileIdentifier];
  v18 = sub_29E750698();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  MEMORY[0x29ED931F0](v17, v15);

  sub_29E6A0FEC(v15, &qword_2A1858AE0, MEMORY[0x29EDC1D90], MEMORY[0x29EDC9C68], sub_29E6A1154);
  sub_29E754838();
  sub_29E601938(&v115, v116);
  v19 = sub_29E74FB58();
  v20 = [v16 profileIdentifier];
  sub_29E693FB8(v12);
  sub_29E7504E8();
  (*(v10 + 8))(v12, v118);
  v21 = type metadata accessor for SleepRoomViewController(0);
  sub_29E69F928(&qword_2A1858AE8, type metadata accessor for SleepRoomViewController, &unk_29E769024);
  v93 = v21;
  v22 = sub_29E751978();

  sub_29E5FECBC(&v115);
  if (v22)
  {
    swift_beginAccess();
    sub_29E752708();
    swift_endAccess();
  }

  v118 = *&a1[qword_2A1858870];
  v23 = sub_29E698610();
  sub_29E698700(&v115);
  v24 = *&a1[qword_2A18588B0];
  v101 = sub_29E698AE4();
  v25 = *&a1[qword_2A1869360];
  v95 = *(v104 + 16);
  v96 = a1;
  v26 = v103;
  v27 = v105;
  v95(v103, &a1[qword_2A1858888], v105);
  v28 = objc_opt_self();
  v99 = v25;
  v98 = [v28 hksp_internalUserDefaults];
  v113 = sub_29E74F478();
  v114 = MEMORY[0x29EDC6A58];
  v97 = v113;
  v100 = v23;
  v112 = v23;
  v102 = type metadata accessor for SleepRoomDataProvider(0);
  v29 = objc_allocWithZone(v102);
  *&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_cancellables] = MEMORY[0x29EDCA1A0];
  *&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher] = 0;
  v30 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_restorationUserActivity;
  *&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_restorationUserActivity] = 0;
  v31 = &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepChartComponent];
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  *v31 = 0;
  v32 = &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepOnboardingComponent];
  *(v32 + 12) = 0;
  *(v32 + 4) = 0u;
  *(v32 + 5) = 0u;
  *(v32 + 2) = 0u;
  *(v32 + 3) = 0u;
  *v32 = xmmword_29E768E60;
  *(v32 + 1) = 0u;
  v33 = &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepFocusPromotionComponent];
  *v33 = xmmword_29E768E60;
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v34 = &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleOffComponent];
  *v34 = xmmword_29E768E60;
  *(v34 + 2) = 0;
  v35 = &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___nextOccurrenceComponent];
  *(v35 + 6) = 0;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *v35 = xmmword_29E768E60;
  v36 = &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___sleepScheduleComponent];
  *(v36 + 2) = 0u;
  *(v36 + 3) = 0u;
  *v36 = xmmword_29E768E60;
  *(v36 + 1) = 0u;
  v37 = &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleDataComponent];
  *v37 = 0xD000000000000011;
  *(v37 + 1) = 0x800000029E75D880;
  v38 = &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepDurationGoalComponent];
  *v38 = 0xD000000000000011;
  *(v38 + 1) = 0x800000029E75D8A0;
  v39 = OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider____lazy_storage___favoritesComponent;
  v40 = sub_29E751348();
  v41 = &v29[v39];
  v42 = v101;
  (*(*(v40 - 8) + 56))(v41, 1, 1, v40);
  *&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dataType] = v118;
  sub_29E602E20(&v112, &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepScheduleProvider]);
  v43 = v24;
  *&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_gregorianCalendarCache] = v24;
  *&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_dateCache] = v42;
  sub_29E69FA08(&v115, &v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_onboardingManager]);
  *&v29[v30] = v25;
  v44 = v98;
  v95(&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_context], v26, v27);
  *&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_userDefaults] = v44;
  sub_29E69FA08(&v115, v110);
  if (v111)
  {
    sub_29E601938(v110, v111);
    v45 = v99;
    v46 = v99;
    v47 = v100;
    v48 = v100;
    v49 = v118;
    v50 = v24;
    v51 = v42;
    v52 = v44;
    v53 = sub_29E74F5A8();
    sub_29E5FECBC(v110);
    v54 = v47;
  }

  else
  {
    v45 = v99;
    v55 = v99;
    v56 = v100;
    v57 = v100;
    v58 = v118;
    v59 = v43;
    v60 = v42;
    v61 = v44;
    sub_29E6A0D88(v110, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    v53 = 0;
    v54 = v56;
  }

  *&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepStore] = v53;
  sub_29E69FA08(&v115, v110);
  v62 = v96;
  if (v111)
  {
    sub_29E601938(v110, v111);
    v63 = sub_29E74F5C8();
    sub_29E5FECBC(v110);
  }

  else
  {
    sub_29E6A0D88(v110, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    v63 = 0;
  }

  *&v29[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_featureAvailability] = v63;
  v109.receiver = v29;
  v109.super_class = v102;
  v64 = objc_msgSendSuper2(&v109, sel_init);
  sub_29E69FA08(&v115, &v107);
  if (v108)
  {
    sub_29E5FAEE4(&v107, v110);
    sub_29E601938(v110, v111);
    v118 = sub_29E74F5A8();
    v65 = sub_29E6C8728();
    sub_29E74F4D8();
    sub_29E7527B8();

    v66 = v107;
    v67 = [objc_opt_self() sharedBehavior];
    if (!v67)
    {
      __break(1u);
      return;
    }

    v68 = v67;
    v69 = [v67 hksp_supportsSleep];

    LOBYTE(v107) = v69;
    BYTE1(v107) = v66;
    BYTE2(v107) = v65 & 1;
    sub_29E6A0F8C(0, &qword_2A18572A0, &type metadata for SleepRoomState);
    swift_allocObject();
    *&v64[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepRoomStatePublisher] = sub_29E7527E8();

    v70 = *&v64[OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_featureAvailability];
    if (v70)
    {
      sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
      swift_unknownObjectRetain();
      v71 = sub_29E754908();
      [v70 registerObserver:v64 queue:v71];

      sub_29E751758();
    }

    *&v107 = sub_29E74F4D8();
    sub_29E6A0F8C(0, &qword_2A1A7BF60, MEMORY[0x29EDC9A98]);
    sub_29E63FCDC();
    v72 = v86;
    sub_29E752988();

    v73 = [objc_opt_self() mainRunLoop];
    *&v107 = v73;
    v74 = sub_29E754BB8();
    v75 = v88;
    (*(*(v74 - 8) + 56))(v88, 1, 1, v74);
    sub_29E609B5C(0, &unk_2A1A7D420, 0x29EDB8E48);
    sub_29E69F928(&unk_2A1858AD0, sub_29E6A0DE4, MEMORY[0x29EDB8918]);
    sub_29E6A0F24();
    v76 = v90;
    v77 = v89;
    sub_29E752968();
    sub_29E6A0FEC(v75, &unk_2A1A7D440, MEMORY[0x29EDB9E10], MEMORY[0x29EDC9C68], sub_29E6A1154);
    (*(v87 + 8))(v72, v77);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_29E69F928(&qword_2A1858B00, sub_29E6A0E58, MEMORY[0x29EDB89E8]);
    v78 = v64;
    v79 = v92;
    sub_29E7529A8();

    (*(v91 + 8))(v76, v79);
    swift_beginAccess();
    sub_29E752708();
    swift_endAccess();

    v80 = v118;
    [v118 addObserver_];

    sub_29E6C8238();
    (*(v104 + 8))(v103, v105);
    sub_29E6A0D88(&v115, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    sub_29E5FECBC(v110);
  }

  else
  {

    (*(v104 + 8))(v103, v105);
    v81 = MEMORY[0x29EDC6A80];
    sub_29E6A0D88(&v115, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    sub_29E6A0D88(&v107, &qword_2A1A7CF90, &unk_2A1A7CFA0, v81, sub_29E609CF8);
  }

  sub_29E5FECBC(&v112);
  v116 = v102;
  v117 = sub_29E69F928(&unk_2A1858AF0, type metadata accessor for SleepRoomDataProvider, &unk_29E76A068);
  v115 = v64;
  sub_29E751A28();
  v106.receiver = v62;
  v106.super_class = v93;
  objc_msgSendSuper2(&v106, sel_viewDidLoad);
  v82 = [v62 navigationItem];
  [v82 setLargeTitleDisplayMode_];

  sub_29E69A23C();
  v83 = sub_29E69883C();
  [v83 addObserver_];

  [*&v62[qword_2A18588A8] registerObserver_];
  sub_29E69AA6C();
  v84 = [*&v62[qword_2A1858898] widgetManager];
  if (v84)
  {
    v85 = v84;
    [v84 reloadWidgetsWithReason_];
  }

  else
  {
  }
}

void sub_29E69A23C()
{
  v1 = v0;
  v50 = sub_29E74F698();
  v2 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50);
  v49 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E751438();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E754628();
  v9 = MEMORY[0x29EDCA190];
  v10 = MEMORY[0x29EDCA190];
  if (v8)
  {
    v10 = sub_29E6DB0F0(0, 1, 1, MEMORY[0x29EDCA190]);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_29E6DB0F0((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v10[v12 + 32] = 0;
  }

  sub_29E751428();
  v13 = sub_29E751418();
  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_29E6DB0F0(0, *(v10 + 2) + 1, 1, v10);
    }

    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v10 = sub_29E6DB0F0((v14 > 1), v15 + 1, 1, v10);
    }

    *(v10 + 2) = v16;
    v10[v15 + 32] = 1;
    if (v15 != -1)
    {
      goto LABEL_11;
    }

LABEL_15:

    return;
  }

  v16 = *(v10 + 2);
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v16 == 1)
  {
    v17 = [v1 navigationItem];
    if (*(v10 + 2))
    {
      v18 = v10[32];

      v19 = sub_29E69EFA4(v1, v18);
    }

    else
    {

      v19 = 0;
    }

    [v17 setRightBarButtonItem_];
  }

  else
  {
    v48 = v1;
    v52 = v9;
    sub_29E754E08();
    v46 = sub_29E7544C8();
    v45 = sub_29E609B5C(0, &unk_2A1858B20, 0x29EDC7908);
    v40[1] = "TapToRadarButton";
    v44 = *MEMORY[0x29EDC6AD0];
    v40[0] = 0x800000029E75D8C0;
    v42 = (v2 + 8);
    v43 = (v2 + 104);
    v20 = 32;
    v41 = xmmword_29E762F30;
    v47 = v10;
    v21 = v49;
    do
    {
      v32 = v10[v20];
      v51 = sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v32)
      {
        v22 = sub_29E754198();
        v23 = v40[0];
        v24 = 0xD000000000000010;
      }

      else
      {
        if (qword_2A1A7D6F0 != -1)
        {
          swift_once();
        }

        sub_29E74E9D8();
        v22 = sub_29E754198();
        v23 = 0xED00006E6F747475;
        v24 = 0x4261746144646441;
      }

      v25 = [objc_opt_self() systemImageNamed_];

      v26 = swift_allocObject();
      *(v26 + 16) = v48;
      *(v26 + 24) = v32;
      swift_unknownObjectRetain();
      v27 = sub_29E754BA8();
      v28 = v50;
      (*v43)(v21, v44, v50);
      sub_29E6A121C(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
      v29 = swift_allocObject();
      *(v29 + 16) = v41;
      *(v29 + 32) = v24;
      *(v29 + 40) = v23;
      v30 = v27;
      sub_29E754258();

      (*v42)(v21, v28);
      v31 = sub_29E754198();

      [v30 setAccessibilityIdentifier_];

      sub_29E754DE8();
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      ++v20;
      --v16;
      v10 = v47;
    }

    while (v16);

    if (v52 >> 62)
    {
      sub_29E609B5C(0, &qword_2A1858B30, 0x29EDC7B68);

      sub_29E754E68();
    }

    else
    {

      sub_29E755038();
      sub_29E609B5C(0, &qword_2A1858B30, 0x29EDC7B68);
    }

    v33 = v48;

    sub_29E609B5C(0, &qword_2A1858B38, 0x29EDC7B60);
    v34 = sub_29E754AD8();
    v35 = [v33 navigationItem];
    sub_29E609B5C(0, &unk_2A1858B40, 0x29EDC7940);
    v36 = sub_29E754198();
    v37 = [objc_opt_self() systemImageNamed_];

    v38 = v34;
    v39 = sub_29E754778();
    [v35 setRightBarButtonItem_];
  }
}

uint64_t sub_29E69AA6C()
{
  v1 = v0;
  v63[1] = *MEMORY[0x29EDCA608];
  ObjectType = swift_getObjectType();
  v2 = sub_29E752098();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750698();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v56 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v56 - v12;
  sub_29E609B5C(0, &qword_2A1858B08, 0x29EDC68A0);
  v62 = qword_2A1869358;
  v14 = *&v0[qword_2A1869358];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 unknownProvenance];
  LOBYTE(v15) = sub_29E754B88();

  if (v15)
  {
    v18 = [v1 parentViewController];
    if (v18)
    {
      v19 = v18;
      sub_29E754848();

      (*(v5 + 32))(v13, v11, v4);
      v20 = v61;
      sub_29E752048();
      (*(v5 + 16))(v8, v13, v4);
      v21 = sub_29E752088();
      v22 = sub_29E7546C8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v63[0] = v57;
        *v23 = 136446466;
        v24 = sub_29E755178();
        LODWORD(ObjectType) = v22;
        v26 = sub_29E6B9C90(v24, v25, v63);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2082;
        sub_29E69F928(&qword_2A1858B18, MEMORY[0x29EDC1D90], MEMORY[0x29EDC1DA0]);
        v27 = sub_29E754FD8();
        v29 = v28;
        v30 = v4;
        v31 = *(v5 + 8);
        v32 = v8;
        v33 = v30;
        v31(v32, v30);
        v34 = sub_29E6B9C90(v27, v29, v63);

        *(v23 + 14) = v34;
        _os_log_impl(&dword_29E5ED000, v21, ObjectType, "[%{public}s] Coming from presentation %{public}s", v23, 0x16u);
        v35 = v57;
        swift_arrayDestroy();
        MEMORY[0x29ED98410](v35, -1, -1);
        MEMORY[0x29ED98410](v23, -1, -1);

        (*(v59 + 8))(v61, v60);
      }

      else
      {

        v36 = v4;
        v31 = *(v5 + 8);
        v37 = v8;
        v33 = v36;
        v31(v37, v36);
        (*(v59 + 8))(v20, v60);
      }

      v38 = *MEMORY[0x29EDC67E8];
      v39 = sub_29E71237C();
      v40 = [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:v38 presentation:v39];

      v31(v13, v33);
      v41 = *&v1[v62];
      *&v1[v62] = v40;
    }
  }

  v42 = sub_29E69890C();
  if (v42)
  {
    v63[0] = 0;
    v43 = [v42 isCurrentOnboardingVersionCompletedWithError_];
    sub_29E751758();
    if (v43)
    {
      v44 = v63[0];
      v45 = [v43 BOOLValue];

      goto LABEL_12;
    }

    v46 = v63[0];
    v47 = sub_29E74EA48();

    swift_willThrow();
  }

  v45 = 0;
LABEL_12:
  v48 = sub_29E69883C();
  v49 = COERCE_DOUBLE(sub_29E7546F8());
  v51 = v50;

  v52 = [*&v1[qword_2A1858898] analyticsManager];
  if (v51)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = v49;
  }

  v54 = [objc_allocWithZone(MEMORY[0x29EDC6888]) initWithProvenanceInfo:*&v1[v62] isOnboarded:v45 secondsSinceAlarmDismissed:v53];
  [v52 trackEvent_];

  v63[0] = v1;
  type metadata accessor for SleepRoomViewController(0);
  sub_29E69F928(&qword_2A1858B10, type metadata accessor for SleepRoomViewController, &unk_29E768FF8);
  return sub_29E751AC8();
}

uint64_t sub_29E69B134(char a1, SEL *a2, const char *a3)
{
  v6 = v3;
  swift_getObjectType();
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SleepRoomViewController(0);
  v23.receiver = v6;
  v23.super_class = v12;
  objc_msgSendSuper2(&v23, *a2, a1 & 1);
  sub_29E752048();
  v13 = sub_29E752088();
  v14 = sub_29E7546C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136446210;
    v17 = sub_29E755178();
    v19 = sub_29E6B9C90(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_29E5ED000, v13, v14, a3, v15, 0xCu);
    sub_29E5FECBC(v16);
    MEMORY[0x29ED98410](v16, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_29E69B324(void *a1, uint64_t a2, char a3, uint64_t a4, SEL *a5, const char *a6, ...)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a1;
  sub_29E69B134(a3, a5, a6);
}

void sub_29E69B40C()
{
  v1 = v0;
  v2 = sub_29E750528();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v27 - v7;
  v9 = [v0 userActivity];
  [v9 invalidate];

  sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
  v10 = sub_29E754768();
  sub_29E693FB8(v8);
  sub_29E7504E8();
  v11 = *(v3 + 8);
  v11(v8, v2);
  v12 = sub_29E754198();

  [v10 setTitle_];

  [v10 setEligibleForSearch_];
  [v10 setEligibleForPrediction_];
  [v10 setEligibleForHandoff_];
  v13 = sub_29E754828();
  if (v13)
  {
    v14 = v13;
    v33 = [objc_opt_self() sharedInstanceForHealthStore_];
    if (v33)
    {
      v28 = v14;
      v29 = v10;
      v30 = v1;
      v27 = [objc_allocWithZone(MEMORY[0x29EDB94F0]) init];
      sub_29E693FB8(v6);
      v15 = sub_29E750518();
      v11(v6, v2);
      v34 = MEMORY[0x29EDCA190];
      if (v15 >> 62)
      {
        goto LABEL_20;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
      {
        v17 = 0;
        v31 = v15 & 0xFFFFFFFFFFFFFF8;
        v32 = v15 & 0xC000000000000001;
        while (1)
        {
          if (v32)
          {
            v18 = MEMORY[0x29ED976A0](v17, v15);
          }

          else
          {
            if (v17 >= *(v31 + 16))
            {
              goto LABEL_19;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          sub_29E7544C8();
          sub_29E7544B8();
          sub_29E754468();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v21 = [v33 displayTypeForObjectType_];
          if (v21)
          {
            v22 = v21;
            v23 = [v21 localization];
            v24 = [v23 keywords];

            v25 = sub_29E754568();
            sub_29E6DA86C(v25);
          }

          else
          {
          }

          ++v17;
          if (v20 == i)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        ;
      }

LABEL_21:

      v26 = sub_29E7543D8();

      v14 = v27;
      [v27 setKeywords_];

      v10 = v29;
      [v29 setContentAttributeSet_];

      v1 = v30;
    }
  }

  [v1 setUserActivity_];
}

void sub_29E69B894(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  sub_29E69B970(v5, 0);
}

void sub_29E69B970(void *a1, int a2)
{
  v3 = v2;
  v65 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_29E7503E8();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_29E752098();
  v7 = *(v66 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v66);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v58 - v11;
  sub_29E752048();
  v13 = sub_29E752088();
  v14 = sub_29E7546C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v59 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v69[0] = v17;
    *v16 = 136446210;
    v18 = sub_29E755178();
    v58 = v10;
    v20 = sub_29E6B9C90(v18, v19, v69);
    v21 = v66;
    v10 = v58;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_29E5ED000, v13, v14, "[%{public}s] Restoring sleep room view controller", v16, 0xCu);
    sub_29E5FECBC(v17);
    MEMORY[0x29ED98410](v17, -1, -1);
    v22 = v16;
    v23 = v59;
    MEMORY[0x29ED98410](v22, -1, -1);

    v24 = *(v23 + 8);
    v25 = v12;
    v26 = v21;
  }

  else
  {

    v24 = *(v7 + 8);
    v25 = v12;
    v26 = v66;
  }

  v60 = v24;
  v24(v25, v26);
  v27 = *&v3[qword_2A1869360];
  *&v3[qword_2A1869360] = a1;
  v28 = a1;

  v69[0] = v28;
  sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
  v29 = sub_29E74F918();
  v30 = *&v3[qword_2A1869358];
  *&v3[qword_2A1869358] = v29;

  v31 = type metadata accessor for SleepRoomViewController(0);
  v72.receiver = v3;
  v72.super_class = v31;
  objc_msgSendSuper2(&v72, sel_restoreUserActivityState_, v28);
  v32 = [v28 userInfo];
  v33 = MEMORY[0x29EDCA178];
  if (!v32)
  {
    goto LABEL_11;
  }

  v34 = v32;
  v35 = sub_29E754078();

  v36 = v61;
  v37 = v62;
  v38 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x29EDC1540], v63);
  v39 = sub_29E7503D8();
  v41 = v40;
  (*(v37 + 8))(v36, v38);
  v67 = v39;
  v68 = v41;
  sub_29E754D08();
  if (!*(v35 + 16) || (v42 = sub_29E68AB20(v69), (v43 & 1) == 0))
  {

    sub_29E68CE9C(v69);
LABEL_11:
    v70 = 0u;
    v71 = 0u;
    goto LABEL_12;
  }

  sub_29E606008(*(v35 + 56) + 32 * v42, &v70);
  sub_29E68CE9C(v69);

  if (!*(&v71 + 1))
  {
LABEL_12:
    sub_29E6A0FEC(&v70, &qword_2A1856C10, v33 + 8, MEMORY[0x29EDC9C68], sub_29E6A121C);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v44 = v69[0];
    v45 = v69[1];
    sub_29E750648();
    v46 = MEMORY[0x29ED92F10](v44, v45);
    v47 = qword_2A1869348;
    swift_beginAccess();
    v48 = *&v3[v47];
    *&v3[v47] = v46;
  }

LABEL_13:
  if (v65)
  {
    sub_29E752048();
    v49 = sub_29E752088();
    v50 = sub_29E7546C8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v70 = v52;
      *v51 = 136446210;
      v53 = sub_29E755178();
      v55 = sub_29E6B9C90(v53, v54, &v70);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_29E5ED000, v49, v50, "[%{public}s] Tracking room entry", v51, 0xCu);
      sub_29E5FECBC(v52);
      MEMORY[0x29ED98410](v52, -1, -1);
      MEMORY[0x29ED98410](v51, -1, -1);
    }

    v60(v10, v66);
    sub_29E69AA6C();
  }

  v56 = sub_29E69883C();
  v57 = [v56 widgetManager];

  if (v57)
  {
    [v57 reloadWidgetsWithReason_];
  }
}

void sub_29E69BFA0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E7503E8();
  v37 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v35 = v2;
    v14 = v13;
    v38[0] = v13;
    *v12 = 136446210;
    v15 = sub_29E755178();
    v17 = sub_29E6B9C90(v15, v16, v38);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s] Saving sleep restoration state", v12, 0xCu);
    sub_29E5FECBC(v14);
    v18 = v14;
    v2 = v35;
    MEMORY[0x29ED98410](v18, -1, -1);
    v19 = v12;
    v1 = v36;
    MEMORY[0x29ED98410](v19, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v20 = [v1 userActivity];
  if (v20)
  {
    v21 = v20;
    sub_29E6A1154(0, &unk_2A1858B50, sub_29E6A11B8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E762F30;
    v23 = v37;
    (*(v37 + 104))(v4, *MEMORY[0x29EDC1540], v2);
    v24 = sub_29E7503D8();
    v26 = v25;
    (*(v23 + 8))(v4, v2);
    v38[0] = v24;
    v38[1] = v26;
    sub_29E754D08();
    sub_29E6A121C(0, &qword_2A1858B60, MEMORY[0x29EDB9B70], MEMORY[0x29EDC9C68]);
    *(inited + 96) = v27;
    v28 = qword_2A1869348;
    swift_beginAccess();
    v29 = *&v1[v28];
    if (v29)
    {
      v30 = v29;
      v31 = sub_29E7505D8();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xF000000000000000;
    }

    *(inited + 72) = v31;
    *(inited + 80) = v33;
    sub_29E68B464(inited);
    swift_setDeallocating();
    sub_29E6A1060(inited + 32, sub_29E6A11B8);
    v34 = sub_29E754068();

    [v21 addUserInfoEntriesFromDictionary_];

    [v1 submitUserActivityForRestoration_];
  }
}

id sub_29E69C3D0()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6A121C(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E764160;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() keyCommandWithInput:v1 modifierFlags:0x100000 action:sel_addData_];

  *(v0 + 32) = v2;
  sub_29E609B5C(0, &unk_2A1858AA8, 0x29EDC7AF0);
  v3 = sub_29E7543D8();

  return v3;
}

uint64_t sub_29E69C56C()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

void sub_29E69C5F8()
{
  v1 = qword_2A1858888;
  v2 = sub_29E7513C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_29E6A1060(v0 + qword_2A1858890, sub_29E6A10C0);
  sub_29E6A1144(*(v0 + qword_2A18588A0));

  sub_29E751758();

  v3 = *(v0 + qword_2A18588B8);
}

id sub_29E69C774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepRoomViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E69C7AC(uint64_t a1)
{
  v2 = qword_2A1858888;
  v3 = sub_29E7513C8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  sub_29E6A1060(a1 + qword_2A1858890, sub_29E6A10C0);
  sub_29E6A1144(*(a1 + qword_2A18588A0));

  sub_29E751758();

  v4 = *(a1 + qword_2A18588B8);
}

void *sub_29E69C934()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = *v0;
  v2 = qword_2A1869348;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;

  return v3;
}

void sub_29E69C9F0(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *v1;
  v4 = qword_2A1869348;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*sub_29E69CAB8(uint64_t a1))(uint64_t a1)
{
  sub_29E7544C8();
  *(a1 + 24) = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  return sub_29E69CB7C;
}

uint64_t sub_29E69CB7C(uint64_t a1)
{
  swift_endAccess();
}

uint64_t sub_29E69CC08(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + qword_2A1869350);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return sub_29E751758();
}

uint64_t sub_29E69CD2C()
{
  v1 = v0;
  sub_29E698700(&v6);
  if (!v7)
  {
    return sub_29E6A0D88(&v6, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
  }

  sub_29E5FAEE4(&v6, v8);
  sub_29E602E20(v8, &v6);
  v2 = objc_allocWithZone(type metadata accessor for SleepInternalSettingsViewController());
  sub_29E691838(&v6);
  v4 = v3;
  [v1 showViewController:v3 sender:v1];

  return sub_29E5FECBC(v8);
}

void sub_29E69CE10(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_29E69CEDC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v4 = a1;
  sub_29E69FC08();

  sub_29E751758();
}

uint64_t sub_29E69CFB0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v28 = a4;
  v6 = sub_29E752098();
  v29 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v9 = v8;
  v10 = a1;
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v9;
    v25 = v11;
    v14 = v13;
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v14 = 136446466;
    v15 = sub_29E755178();
    v28 = v6;
    v17 = sub_29E6B9C90(v15, v16, &v30);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2114;
    *(v14 + 14) = v10;
    v18 = v24;
    *v24 = v10;
    v19 = v10;
    v20 = v25;
    _os_log_impl(&dword_29E5ED000, v25, v12, "[%{public}s] Responding to sleep event %{public}@", v14, 0x16u);
    sub_29E6A0D88(v18, &qword_2A1A7D0A8, &qword_2A1A7D0B0, 0x29EDC9738, sub_29E609B5C);
    MEMORY[0x29ED98410](v18, -1, -1);
    v21 = v26;
    sub_29E5FECBC(v26);
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);

    (*(v29 + 8))(v27, v28);
  }

  else
  {

    (*(v29 + 8))(v9, v6);
  }

  v22 = sub_29E751A08();
  MEMORY[0x2A1C7C4A8](v22);
  *(&v24 - 2) = a3;
  *(&v24 - 1) = v10;
  sub_29E609CF8(0, &qword_2A1858A90, &protocol descriptor for HKSPSleepStoreEventObserver);
  sub_29E7510B8();
}

uint64_t sub_29E69D310(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1[3];
  v7 = a1[4];
  sub_29E601938(a1, v6);
  (*(v7 + 8))(a2, a3, v6, v7);
}

void sub_29E69D3F8(void *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  v11[2] = a4;
  v11[3] = a1;
  v11[4] = a3;
  v11[5] = ObjectType;
  v8 = a3;
  v9 = a4;
  v10 = a1;
  sub_29E607C50(sub_29E6A0D60, v11, "SleepHealthAppPlugin/SleepRoomViewController.swift", 50, 2u, 296);
}

uint64_t sub_29E69D4B0(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E601938(a1, a1[3]);
  sub_29E65E508();
}

uint64_t sub_29E69D56C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_29E74E858();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74E848();
  v10 = a3;
  v11 = a1;
  v12 = sub_29E751A08();
  MEMORY[0x2A1C7C4A8](v12);
  *(&v14 - 2) = v10;
  *(&v14 - 1) = v9;
  sub_29E609CF8(0, &qword_2A1858A88, &protocol descriptor for HKDateCacheSwiftObserver);
  sub_29E7510B8();

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_29E69D748()
{
  swift_getObjectType();
  v0 = sub_29E752098();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E698700(&v13);
  if (v14)
  {
    sub_29E5FAEE4(&v13, v15);
    sub_29E601938(v15, v15[3]);
    v4 = sub_29E74F598();
    sub_29E5FECBC(v15);
  }

  else
  {
    sub_29E6A0D88(&v13, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    sub_29E752048();
    v5 = sub_29E752088();
    v6 = sub_29E7546A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136446210;
      v9 = sub_29E755178();
      v11 = sub_29E6B9C90(v9, v10, v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_29E5ED000, v5, v6, "[%{public}s] Asked for paired watch support without an onboarding manager", v7, 0xCu);
      sub_29E5FECBC(v8);
      MEMORY[0x29ED98410](v8, -1, -1);
      MEMORY[0x29ED98410](v7, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    v4 = 0;
  }

  return v4 & 1;
}

void sub_29E69D984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v35 = sub_29E74F488();
  v32 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29E74F4A8();
  v34 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_29E752098();
  v8 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E74ED28();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E698700(v38);
  if (v38[3])
  {
    v28 = a1;
    v29 = a2;
    sub_29E602E20(v38, v37);
    sub_29E6A0D88(v38, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    sub_29E601938(v37, v37[3]);
    v3 = v2;
    v15 = sub_29E74F5E8();
    sub_29E5FECBC(v37);
    if (v15)
    {
      v16 = sub_29E698610();
      v38[0] = v16;
      sub_29E74ED18();
      sub_29E74F478();
      v17 = sub_29E74F578();
      (*(v12 + 8))(v14, v11);

      if (v17)
      {
        sub_29E697B70(v17, v28, v29);
      }

      else
      {
        sub_29E6981B4(v28, v29);
      }

      return;
    }
  }

  else
  {
    sub_29E6A0D88(v38, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
  }

  sub_29E752048();
  v18 = sub_29E752088();
  v19 = sub_29E7546C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38[0] = v21;
    *v20 = 136446210;
    v22 = sub_29E755178();
    v24 = sub_29E6B9C90(v22, v23, v38);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_29E5ED000, v18, v19, "[%{public}s] Ignoring request to set override occurrence as the user hasn't onboarded", v20, 0xCu);
    sub_29E5FECBC(v21);
    MEMORY[0x29ED98410](v21, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);
  }

  (*(v8 + 8))(v10, v31);
  v25 = *(v3 + qword_2A1869358);
  (*(v32 + 104))(v33, *MEMORY[0x29EDC6A60], v35);
  v26 = v25;
  v27 = v30;
  sub_29E74F498();
  sub_29E6EE80C(v27, 0, 0);
  (*(v34 + 8))(v27, v36);
}

id sub_29E69DE90()
{
  sub_29E698700(v17);
  v1 = sub_29E698610();
  v2 = sub_29E698688();
  v3 = *&v0[qword_2A18588B0];
  v16[3] = sub_29E74F478();
  v16[4] = MEMORY[0x29EDC6A58];
  v16[0] = v1;
  v4 = type metadata accessor for ManageScheduleViewController(0);
  v5 = objc_allocWithZone(v4);
  sub_29E602E20(v16, &v5[qword_2A18691A0]);
  v6 = &v5[qword_2A18691A8];
  *v6 = v0;
  *(v6 + 1) = &off_2A2500AB8;
  *&v5[qword_2A18691B0] = v2;
  *&v5[qword_2A18691B8] = v3;
  sub_29E69FA08(v17, &v5[qword_2A18691C0]);
  v7 = objc_allocWithZone(MEMORY[0x29EDC79E0]);
  v8 = v1;
  v9 = v0;
  v10 = v2;
  v11 = v3;
  v12 = [v7 init];
  v15.receiver = v5;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, sel_initWithCollectionViewLayout_, v12);

  sub_29E6A0D88(v17, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
  sub_29E5FECBC(v16);
  return v13;
}

void sub_29E69E02C(uint64_t a1)
{
  v2 = *v1;
  if (sub_29E754618())
  {
    v3 = sub_29E69DE90();
    [v2 showViewController:v3 sender:v2];
  }
}

uint64_t sub_29E69E0B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E751FF8();
  v20 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_29E751FA8();
  v5 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_29E751FE8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E751FB8();
  v12 = sub_29E751FD8();
  sub_29E752008();
  v19 = sub_29E754948();
  if (sub_29E754BC8())
  {

    sub_29E752038();

    v13 = v20;
    if ((*(v20 + 88))(v4, v2) == *MEMORY[0x29EDCA4A8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v13 + 8))(v4, v2);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v12, v19, v16, "SleepRoomDidModifySleepSchedule", v14, v15, 2u);
    MEMORY[0x29ED98410](v15, -1, -1);
  }

  (*(v5 + 8))(v7, v21);
  return (*(v9 + 8))(v11, v8);
}

void sub_29E69E39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = HKSPAnalyticsScheduleChangeContext();
  sub_29E754078();

  v9 = sub_29E69883C();
  v10 = sub_29E754068();

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = ObjectType;
  v14[4] = sub_29E69F5FC;
  v14[5] = v11;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1107296256;
  v14[2] = sub_29E5FE860;
  v14[3] = &unk_2A2500B20;
  v12 = _Block_copy(v14);
  v13 = v3;
  sub_29E5F51BC(a2, a3);

  [v9 saveCurrentSleepSchedule:a1 options:0 context:v10 completion:v12];

  _Block_release(v12);
}

uint64_t sub_29E69E554(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a6;
  v11 = sub_29E753CF8();
  v76 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v77 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_29E753D18();
  v13 = *(v78 - 8);
  MEMORY[0x2A1C7C4A8](v78);
  v75 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E752098();
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v68 - v19;
  v21 = MEMORY[0x29EDCA190];
  if (a1)
  {
    sub_29E752048();
    v22 = sub_29E752088();
    v23 = sub_29E7546C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v71 = v13;
      v26 = v25;
      aBlock = v25;
      *v24 = 136446210;
      v27 = sub_29E755178();
      v72 = v11;
      v29 = a2;
      v30 = a4;
      v31 = a5;
      v32 = sub_29E6B9C90(v27, v28, &aBlock);
      v11 = v72;

      *(v24 + 4) = v32;
      a5 = v31;
      a4 = v30;
      a2 = v29;
      v21 = MEMORY[0x29EDCA190];
      _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s] Successfully saved sleep schedule", v24, 0xCu);
      sub_29E5FECBC(v26);
      v33 = v26;
      v13 = v71;
      MEMORY[0x29ED98410](v33, -1, -1);
      MEMORY[0x29ED98410](v24, -1, -1);
    }

    (*(v73 + 8))(v20, v74);
    v34 = v75;
  }

  else
  {
    v70 = a3;
    sub_29E752048();
    v35 = a2;
    v36 = sub_29E752088();
    v37 = sub_29E7546A8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v71 = v13;
      v40 = v39;
      aBlock = v39;
      *v38 = 136446466;
      v41 = sub_29E755178();
      v69 = a4;
      v43 = sub_29E6B9C90(v41, v42, &aBlock);
      v72 = v11;
      v44 = v43;

      *(v38 + 4) = v44;
      *(v38 + 12) = 2082;
      v79 = a2;
      v45 = a2;
      sub_29E69F650(0, &qword_2A1858A60, &qword_2A1A7BCD0, MEMORY[0x29EDC9F18], sub_29E609CF8);
      v46 = sub_29E7541F8();
      v48 = sub_29E6B9C90(v46, v47, &aBlock);
      a4 = v69;

      *(v38 + 14) = v48;
      v11 = v72;
      _os_log_impl(&dword_29E5ED000, v36, v37, "[%{public}s] Failed to save sleep schedule with error: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      v49 = v40;
      v13 = v71;
      MEMORY[0x29ED98410](v49, -1, -1);
      MEMORY[0x29ED98410](v38, -1, -1);
    }

    (*(v73 + 8))(v18, v74);
    v50 = [objc_opt_self() sharedBehavior];
    v34 = v75;
    if (v50)
    {
      v51 = a5;
      v52 = v50;
      v53 = [v50 isAppleInternalInstall];

      a5 = v51;
      if (v53)
      {
        sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
        v74 = sub_29E754908();
        v54 = swift_allocObject();
        v55 = v70;
        *(v54 + 16) = v70;
        *(v54 + 24) = a2;
        v84 = sub_29E69F648;
        v85 = v54;
        aBlock = MEMORY[0x29EDCA5F8];
        v81 = 1107296256;
        v82 = sub_29E6A1514;
        v83 = &unk_2A2500BC0;
        v56 = _Block_copy(&aBlock);
        v57 = a2;
        v58 = v55;
        sub_29E753D08();
        v79 = v21;
        sub_29E69F928(&qword_2A18569F8, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
        sub_29E6A1154(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
        sub_29E609A80();
        v59 = v77;
        a5 = v51;
        sub_29E754C58();
        v60 = v74;
        MEMORY[0x29ED97230](0, v34, v59, v56);
        _Block_release(v56);

        v61 = v59;
        v21 = MEMORY[0x29EDCA190];
        (*(v76 + 8))(v61, v11);
        (*(v13 + 8))(v34, v78);
      }
    }
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v62 = sub_29E754908();
  v63 = swift_allocObject();
  v63[2] = a4;
  v63[3] = a5;
  v63[4] = a2;
  v84 = sub_29E69F620;
  v85 = v63;
  aBlock = MEMORY[0x29EDCA5F8];
  v81 = 1107296256;
  v82 = sub_29E6A1514;
  v83 = &unk_2A2500B70;
  v64 = _Block_copy(&aBlock);
  v65 = a2;
  sub_29E5F51BC(a4, a5);
  sub_29E753D08();
  v79 = v21;
  sub_29E69F928(&qword_2A18569F8, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29E6A1154(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E609A80();
  v66 = v77;
  sub_29E754C58();
  MEMORY[0x29ED97230](0, v34, v66, v64);
  _Block_release(v64);

  (*(v76 + 8))(v66, v11);
  (*(v13 + 8))(v34, v78);
}

void sub_29E69EDDC(void *a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E609B5C(0, &unk_2A1858A70, 0x29EDC7928);
  v3 = sub_29E754928();
  [a1 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_29E69EEDC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    a1(a3);
  }
}

id sub_29E69EFA4(uint64_t a1, char a2)
{
  v4 = sub_29E74F698();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E754198();
  v9 = [objc_opt_self() systemImageNamed_];

  ObjectType = swift_getObjectType();
  v11 = &selRef_tapToRadar_;
  v35[3] = ObjectType;
  v35[0] = a1;
  if ((a2 & 1) == 0)
  {
    v11 = &selRef_addData_;
  }

  v12 = *v11;
  if (ObjectType)
  {
    v13 = ObjectType;
    v14 = sub_29E601938(v35, ObjectType);
    v33 = &v33;
    v34 = v4;
    v15 = v12;
    v16 = a2;
    v17 = *(v13 - 8);
    MEMORY[0x2A1C7C4A8](v14);
    v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    swift_unknownObjectRetain();
    v20 = sub_29E755018();
    (*(v17 + 8))(v19, v13);
    a2 = v16;
    v12 = v15;
    v4 = v34;
    sub_29E5FECBC(v35);
  }

  else
  {
    swift_unknownObjectRetain();
    v20 = 0;
  }

  v21 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithImage:v9 style:0 target:v20 action:v12];

  sub_29E751758();
  (*(v5 + 104))(v7, *MEMORY[0x29EDC6AD0], v4);
  sub_29E6A121C(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E762F30;
  v23 = 0x800000029E75D8C0;
  v24 = a2 & 1;
  v25 = 0x4261746144646441;
  if (a2)
  {
    v25 = 0xD000000000000010;
  }

  else
  {
    v23 = 0xED00006E6F747475;
  }

  *(v22 + 32) = v25;
  *(v22 + 40) = v23;
  v26 = v21;
  sub_29E754258();

  (*(v5 + 8))(v7, v4);
  v27 = sub_29E754198();

  [v26 setAccessibilityIdentifier_];

  if (v24)
  {
    v28 = v26;
  }

  else
  {
    v29 = qword_2A1A7D6F0;
    v30 = v26;
    if (v29 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
  }

  v31 = sub_29E754198();

  [v26 setAccessibilityValue_];

  return v26;
}

uint64_t sub_29E69F424(void *a1, void *a2, char a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = &selRef_tapToRadar_;
  if ((a3 & 1) == 0)
  {
    v6 = &selRef_addData_;
  }

  v7 = *v6;
  swift_unknownObjectRetain();
  [a2 performSelector:v7 withObject:{objc_msgSend(a1, sel_sender)}];
  sub_29E751758();
  v8 = a2;
}

void sub_29E69F548(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_29E65FD28(a1);
}

uint64_t sub_29E69F608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E69F650(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29E754BD8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id sub_29E69F6AC(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = qword_2A1858870;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *&v3[v8] = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
  *&v3[qword_2A1858878] = 0;
  *&v3[qword_2A1858880] = 0;
  v9 = &v3[qword_2A1858890];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_29E768E70;
  *&v3[qword_2A1858898] = 0;
  *&v3[qword_2A18588A0] = 1;
  *&v3[qword_2A18588A8] = 0;
  v10 = qword_2A18588B0;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  v11 = qword_2A1869348;
  *&v4[qword_2A1869348] = 0;
  v12 = &v4[qword_2A1869350];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[qword_2A1869360] = 0;
  *&v4[qword_2A1869368] = MEMORY[0x29EDCA1A0];
  *&v4[qword_2A18588B8] = 0;
  *&v4[qword_2A1869340] = sub_29E751388();
  *&v4[qword_2A1869338] = a1;
  v13 = qword_2A1858888;
  v14 = sub_29E7513C8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v4[v13], a2, v14);
  v16 = a1;
  v17 = sub_29E751358();
  swift_beginAccess();
  v18 = *&v4[v11];
  *&v4[v11] = v17;

  *&v4[qword_2A1869358] = a3;
  v19 = objc_allocWithZone(MEMORY[0x29EDC79E0]);
  v20 = a3;
  v21 = [v19 init];
  v24.receiver = v4;
  v24.super_class = type metadata accessor for SleepRoomViewController(0);
  v22 = objc_msgSendSuper2(&v24, sel_initWithCollectionViewLayout_, v21);

  (*(v15 + 8))(a2, v14);
  return v22;
}

uint64_t sub_29E69F928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E69F998()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E69FA08(uint64_t a1, uint64_t a2)
{
  sub_29E69F650(0, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E69FA98()
{
  v1 = v0;
  v2 = qword_2A1858870;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(v0 + v2) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D0]);
  *(v0 + qword_2A1858878) = 0;
  *(v0 + qword_2A1858880) = 0;
  v3 = v0 + qword_2A1858890;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 24) = xmmword_29E768E70;
  *(v0 + qword_2A1858898) = 0;
  *(v0 + qword_2A18588A0) = 1;
  *(v0 + qword_2A18588A8) = 0;
  v4 = qword_2A18588B0;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x29EDBAA50]) init];
  *(v1 + qword_2A1869348) = 0;
  v5 = (v1 + qword_2A1869350);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + qword_2A1869360) = 0;
  *(v1 + qword_2A1869368) = MEMORY[0x29EDCA1A0];
  *(v1 + qword_2A18588B8) = 0;
  sub_29E754E48();
  __break(1u);
}

void sub_29E69FC08()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74ED28();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_29E754628())
  {
    v11 = sub_29E754828();
    if (v11)
    {
      v12 = v11;
      v32 = ObjectType;
      v13 = v4;
      v14 = [objc_opt_self() sharedInstanceForHealthStore_];
      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = v14;
      v16 = [v14 displayTypeForObjectType_];

      if (v16)
      {
        v17 = [v1 resolvedHealthToolbox];
        sub_29E74ED18();
        v18 = sub_29E74EC98();
        (*(v8 + 8))(v10, v7);
        v19 = [v16 wd:v12 addDataViewControllerWithHealthStore:v17 healthToolBox:v18 initialStartDate:?];

        type metadata accessor for SleepRoomViewController(0);
        sub_29E69F928(&unk_2A1858A98, type metadata accessor for SleepRoomViewController, &unk_29E768F20);
        sub_29E750978();

        return;
      }

      v4 = v13;
    }

    sub_29E752048();
    v20 = v1;
    v21 = sub_29E752088();
    v22 = sub_29E7546B8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v4;
      v25 = v24;
      v26 = swift_slowAlloc();
      v33 = v26;
      *v23 = 136446466;
      v27 = sub_29E755178();
      v29 = sub_29E6B9C90(v27, v28, &v33);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2114;
      v30 = *&v20[qword_2A1858870];
      *(v23 + 14) = v30;
      *v25 = v30;
      v31 = v30;
      _os_log_impl(&dword_29E5ED000, v21, v22, "[%{public}s] Unable to load AddDataViewController for %{public}@", v23, 0x16u);
      sub_29E6A0D88(v25, &qword_2A1A7D0A8, &qword_2A1A7D0B0, 0x29EDC9738, sub_29E609B5C);
      MEMORY[0x29ED98410](v25, -1, -1);
      sub_29E5FECBC(v26);
      MEMORY[0x29ED98410](v26, -1, -1);
      MEMORY[0x29ED98410](v23, -1, -1);

      (*(v32 + 8))(v6, v3);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_29E6A0054(uint64_t a1, int a2)
{
  LODWORD(v60) = a2;
  v61 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_29E751FA8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v52 - v7;
  v59 = sub_29E751FE8();
  v57 = *(v59 - 8);
  MEMORY[0x2A1C7C4A8](v59);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E752098();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v52 - v14;
  sub_29E752048();
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  v18 = os_log_type_enabled(v16, v17);
  v54 = v11;
  v55 = v10;
  v62 = ObjectType;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136446210;
    v21 = sub_29E755178();
    v23 = sub_29E6B9C90(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%{public}s] Schedule occurrence was modified", v19, 0xCu);
    sub_29E5FECBC(v20);
    MEMORY[0x29ED98410](v20, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);

    v24 = *(v54 + 8);
    v24(v15, v55);
  }

  else
  {

    v24 = *(v11 + 8);
    v24(v15, v10);
  }

  v25 = v56;
  sub_29E751FB8();
  sub_29E751F98();
  v26 = sub_29E751FD8();
  v27 = sub_29E754958();
  if (sub_29E754BC8())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_29E751F88();
    _os_signpost_emit_with_name_impl(&dword_29E5ED000, v26, v27, v29, "SleepRoomDidModifySleepSchedule", "", v28, 2u);
    MEMORY[0x29ED98410](v28, -1, -1);
  }

  (*(v4 + 16))(v58, v8, v3);
  sub_29E752028();
  swift_allocObject();
  v30 = sub_29E752018();
  (*(v4 + 8))(v8, v3);
  (*(v57 + 8))(v25, v59);
  [v63 dismissViewControllerAnimated:1 completion:0];
  v31 = sub_29E698610();
  aBlock[0] = v31;
  sub_29E74F478();
  v32 = sub_29E74F548();

  if (v60)
  {
    v33 = [v32 overrideOccurrence];
    if (v33)
    {
      v34 = v33;
      v35 = v53;
      sub_29E752048();
      v36 = sub_29E752088();
      v37 = sub_29E7546C8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock[0] = v39;
        *v38 = 136446210;
        v40 = sub_29E755178();
        v42 = sub_29E6B9C90(v40, v41, aBlock);
        v60 = v24;
        v43 = v42;

        *(v38 + 4) = v43;
        _os_log_impl(&dword_29E5ED000, v36, v37, "[%{public}s] Removing override", v38, 0xCu);
        sub_29E5FECBC(v39);
        MEMORY[0x29ED98410](v39, -1, -1);
        MEMORY[0x29ED98410](v38, -1, -1);

        v60(v53, v55);
      }

      else
      {

        v24(v35, v55);
      }

      [v32 removeOccurrence_];
    }
  }

  [v32 saveOccurrence_];
  v44 = v63;

  v45 = HKSPAnalyticsScheduleChangeContext();
  sub_29E754078();

  v46 = sub_29E69883C();
  v47 = sub_29E754068();

  v48 = swift_allocObject();
  v48[2] = v44;
  v48[3] = sub_29E6A0D08;
  v49 = v62;
  v48[4] = v30;
  v48[5] = v49;
  aBlock[4] = sub_29E6A1510;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A2500D00;
  v50 = _Block_copy(aBlock);
  v51 = v44;

  [v46 saveCurrentSleepSchedule:v32 options:0 context:v47 completion:v50];

  _Block_release(v50);
}

void sub_29E6A07C0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v9 = sub_29E752088();
  v10 = sub_29E7546C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136446210;
    v14 = sub_29E755178();
    v16 = sub_29E6B9C90(v14, v15, aBlock);
    v27 = v5;
    v17 = v16;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_29E5ED000, v9, v10, "[%{public}s] Schedule occurrence was deleted", v12, 0xCu);
    sub_29E5FECBC(v13);
    MEMORY[0x29ED98410](v13, -1, -1);
    v18 = v12;
    a1 = v28;
    MEMORY[0x29ED98410](v18, -1, -1);

    (*(v6 + 8))(v8, v27);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  [v2 dismissViewControllerAnimated:1 completion:0];
  v19 = sub_29E698610();
  aBlock[0] = v19;
  sub_29E74F478();
  v20 = sub_29E74F548();

  [v20 removeOccurrence_];
  v21 = HKSPAnalyticsScheduleChangeContext();
  sub_29E754078();

  v22 = sub_29E69883C();
  v23 = sub_29E754068();

  v24 = swift_allocObject();
  v24[2] = v2;
  v24[3] = 0;
  v24[4] = 0;
  v24[5] = ObjectType;
  aBlock[4] = sub_29E6A1510;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A2500CB0;
  v25 = _Block_copy(aBlock);
  v26 = v2;

  [v22 saveCurrentSleepSchedule:v20 options:0 context:v23 completion:v25];

  _Block_release(v25);
}

id sub_29E6A0B3C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v6 = sub_29E752088();
  v7 = sub_29E7546C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_29E755178();
    v12 = sub_29E6B9C90(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s] Schedule occurrence edits were cancelled", v8, 0xCu);
    sub_29E5FECBC(v9);
    MEMORY[0x29ED98410](v9, -1, -1);
    MEMORY[0x29ED98410](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_29E6A0D10()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E6A0D88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_29E69F650(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29E6A0DE4(uint64_t a1)
{
  if (!qword_2A1858AB8)
  {
    sub_29E6A0F8C(255, &qword_2A1A7BF60, MEMORY[0x29EDC9A98]);
    sub_29E63FCDC();
    v1 = sub_29E752648();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858AB8);
    }
  }
}

void sub_29E6A0E58(uint64_t a1)
{
  if (!qword_2A1858AC0)
  {
    sub_29E6A0DE4(255);
    sub_29E609B5C(255, &unk_2A1A7D420, 0x29EDB8E48);
    sub_29E69F928(&unk_2A1858AD0, sub_29E6A0DE4, MEMORY[0x29EDB8918]);
    sub_29E6A0F24();
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858AC0);
    }
  }
}

unint64_t sub_29E6A0F24()
{
  result = qword_2A1A7D430;
  if (!qword_2A1A7D430)
  {
    sub_29E609B5C(255, &unk_2A1A7D420, 0x29EDB8E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7D430);
  }

  return result;
}

void sub_29E6A0F8C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29E7527D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6A0FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29E6A1060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E6A10C0(uint64_t a1)
{
  if (!qword_2A1A7CF88)
  {
    sub_29E69F650(255, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7CF88);
    }
  }
}

uint64_t sub_29E6A1144(uint64_t result)
{
  if (result != 1)
  {
    return sub_29E751758();
  }

  return result;
}

void sub_29E6A1154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6A11B8()
{
  if (!qword_2A1858660)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858660);
    }
  }
}

void sub_29E6A121C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E6A126C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_29E6A127C(uint64_t a1, uint64_t a2)
{
  sub_29E6A10C0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6A12E0(uint64_t a1, uint64_t a2)
{
  sub_29E6A10C0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SleepRoomViewController.RightBarButtonItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepRoomViewController.RightBarButtonItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29E6A14A4()
{
  result = qword_2A1858B68;
  if (!qword_2A1858B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858B68);
  }

  return result;
}

id sub_29E6A1530(void *a1, uint64_t a2)
{
  v34 = a2;
  v33 = sub_29E752098();
  v32 = *(v33 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v33);
  MEMORY[0x2A1C7C4A8](v3);
  v31 = &v28 - v4;
  v5 = sub_29E7513C8();
  v29 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E7513D8();
  v30 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  v12 = sub_29E7541D8();
  v14 = v13;

  if (v12 == 0xD000000000000025 && 0x800000029E75D900 == v14 || (sub_29E755028() & 1) != 0)
  {

    return sub_29E6E4B28(a1, v34);
  }

  if (v12 == 0xD000000000000027 && 0x800000029E75D930 == v14 || (sub_29E755028() & 1) != 0)
  {

    return sub_29E6E5098(a1, v34);
  }

  if (v12 == 0xD000000000000019 && 0x800000029E75D960 == v14 || (sub_29E755028() & 1) != 0)
  {

    return sub_29E6E75A8(v34);
  }

  if (v12 == 0xD00000000000003ALL && 0x800000029E75D980 == v14)
  {

    return sub_29E6E5878(a1, v34);
  }

  v16 = sub_29E755028();

  if (v16)
  {
    return sub_29E6E5878(a1, v34);
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_29E6A1D38(v38, &v35);
  if (v36)
  {
    sub_29E5FAEE4(&v35, v37);
    sub_29E601938(v37, v37[3]);
    sub_29E751888();
    v24 = v34;
    sub_29E751148();
    (*(v29 + 16))(v7, v24, v5);
    v25 = objc_allocWithZone(sub_29E751498());
    v26 = a1;
    v27 = sub_29E751478();
    (*(v30 + 8))(v10, v8);
    sub_29E6A1E1C(v38, &qword_2A1858B70, sub_29E6A1DB8);
    sub_29E5FECBC(v37);
    return v27;
  }

  else
  {
    sub_29E6A1E1C(&v35, &qword_2A1858B70, sub_29E6A1DB8);
    v17 = v31;
    sub_29E752078();
    v18 = a1;
    v19 = sub_29E752088();
    v20 = sub_29E7546A8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_29E5ED000, v19, v20, "[SleepAppDelegate] No custom detail view controller or configuration provided for %@", v21, 0xCu);
      sub_29E6A1E1C(v22, &qword_2A1A7D0A8, sub_29E66ED88);
      MEMORY[0x29ED98410](v22, -1, -1);
      MEMORY[0x29ED98410](v21, -1, -1);
    }

    (*(v32 + 8))(v17, v33);
    sub_29E6A1E1C(v38, &qword_2A1858B70, sub_29E6A1DB8);
    return 0;
  }
}

uint64_t sub_29E6A1D38(uint64_t a1, uint64_t a2)
{
  sub_29E6A1E78(0, &qword_2A1858B70, sub_29E6A1DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E6A1DB8()
{
  result = qword_2A1858B78;
  if (!qword_2A1858B78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858B78);
  }

  return result;
}

uint64_t sub_29E6A1E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6A1E78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E6A1E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_29E6A1ECC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  swift_beginAccess();
  sub_29E60BC20(&v0[v2], v15);
  if (!v16)
  {
    sub_29E6A2ED0(v15, &qword_2A1856AD0, sub_29E602F60);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_9;
  }

  sub_29E602F60();
  sub_29E6A2F40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
LABEL_9:
    sub_29E6A2ED0(&v17, &qword_2A1858B98, sub_29E6A2F40);
    sub_29E60BC20(&v0[v2], v21);
    v11 = v22;
    result = sub_29E6A2ED0(v21, &qword_2A1856AD0, sub_29E602F60);
    if (!v11)
    {
      v12 = &v1[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle];
      *v12 = 0;
      *(v12 + 1) = 0;

      v13 = &v1[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier];
      *v13 = 0;
      *(v13 + 1) = 0;

      return [v1 setNeedsUpdateConfiguration];
    }

    return result;
  }

  if (!*(&v18 + 1))
  {
    goto LABEL_9;
  }

  sub_29E6A2FB8(&v17, v21);
  sub_29E601938(v21, v22);
  v3 = sub_29E751938();
  v4 = &v0[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textTitle];
  *v4 = v3;
  v4[1] = v5;

  sub_29E601938(v21, v22);
  v6 = sub_29E751868();
  if (v7)
  {

    sub_29E601938(v21, v22);
    result = sub_29E751868();
    if (!v9)
    {
      __break(1u);
      return result;
    }

    *&v17 = result;
    *(&v17 + 1) = v9;

    MEMORY[0x29ED96C20](0x6554656C7469542ELL, 0xEA00000000007478);

    v10 = *(&v17 + 1);
    v6 = v17;
  }

  else
  {
    v10 = 0;
  }

  v14 = &v0[OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_textAccessibilityIdentifier];
  *v14 = v6;
  v14[1] = v10;

  [v0 setNeedsUpdateConfiguration];
  return sub_29E5FECBC(v21);
}

uint64_t sub_29E6A2168()
{
  sub_29E60DE10();

  v0 = sub_29E753608();
  v2 = v1;
  v4 = v3;
  sub_29E753428();
  v5 = sub_29E7535D8();
  v7 = v6;
  v9 = v8;

  sub_29E60DB44(v0, v2, v4 & 1);

  v10 = sub_29E7535C8();
  v12 = v11;
  LOBYTE(v2) = v13;
  sub_29E60DB44(v5, v7, v9 & 1);

  sub_29E7538D8();
  v14 = sub_29E7535A8();
  v16 = v15;
  v18 = v17;

  sub_29E60DB44(v10, v12, v2 & 1);

  sub_29E753848();

  sub_29E60DB44(v14, v16, v18 & 1);
}

uint64_t sub_29E6A2364@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E74F698();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  swift_beginAccess();
  sub_29E60BC20(v1 + v7, v17);
  if (!v18)
  {
    sub_29E6A2ED0(v17, &qword_2A1856AD0, sub_29E602F60);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_7;
  }

  sub_29E602F60();
  sub_29E6A2F40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    goto LABEL_7;
  }

  if (!*(&v20 + 1))
  {
LABEL_7:
    sub_29E6A2ED0(&v19, &qword_2A1858B98, sub_29E6A2F40);
    (*(v4 + 104))(v6, *MEMORY[0x29EDC6AD0], v3);
    v11 = sub_29E754258();
    v12 = v15;
    result = (*(v4 + 8))(v6, v3);
    v13 = 0;
    v14 = 0uLL;
    goto LABEL_8;
  }

  sub_29E6A2FB8(&v19, v23);
  v8 = v24;
  v9 = v25;
  sub_29E601938(v23, v24);
  (*(v9 + 8))(&v19, v8, v9);
  result = sub_29E5FECBC(v23);
  v11 = *(&v20 + 1);
  v12 = v21;
  v13 = v20;
  v14 = v19;
LABEL_8:
  *a1 = v14;
  *(a1 + 16) = v13;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_29E6A25B8()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setBackgroundView_];

  v2 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setSelectedBackgroundView_];

  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  *(swift_allocObject() + 16) = v0;
  v3 = v0;
  return sub_29E7549C8();
}

uint64_t sub_29E6A2690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E6A2FE8(0);
  v5[3] = v3;
  v5[4] = sub_29E6A3280(&qword_2A1858BD8, sub_29E6A2FE8, MEMORY[0x29EDBC030]);
  sub_29E5FEBF4(v5);
  sub_29E6A3098(0);
  sub_29E6A3280(&qword_2A1858BD0, sub_29E6A3098, MEMORY[0x29EDBCB58]);
  sub_29E753218();
  return MEMORY[0x29ED972D0](v5);
}

uint64_t sub_29E6A2784@<X0>(uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_29E752FF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_29E6A32C8(0);
  sub_29E6A284C(a2 + *(v3 + 44));
}

uint64_t sub_29E6A284C@<X0>(uint64_t a1@<X8>)
{
  sub_29E64D80C(0);
  v3 = MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v16[-1] - v6;
  sub_29E7544C8();
  v15 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6A2364(v16);
  v9 = v16[0];
  v8 = v16[1];
  v10 = v17;
  v11 = v18;
  v12 = v19;
  sub_29E6A2168();
  sub_29E64D968(v7, v5);
  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  sub_29E6A3190(0);
  sub_29E64D968(v5, a1 + *(v13 + 48));

  sub_29E64D9CC(v7);
  sub_29E64D9CC(v5);
}

uint64_t sub_29E6A2C0C()
{
  sub_29E6A2ED0(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item, &qword_2A1856AD0, sub_29E602F60);
}

id sub_29E6A2C80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleAlertCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29E6A2D58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  swift_beginAccess();
  return sub_29E60BC20(v1 + v3, a1);
}

uint64_t sub_29E6A2DB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin17ScheduleAlertCell_item;
  swift_beginAccess();
  sub_29E61973C(a1, v1 + v3);
  swift_endAccess();
  sub_29E6A1ECC();
  return sub_29E6A2ED0(a1, &qword_2A1856AD0, sub_29E602F60);
}

id (*sub_29E6A2E38(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E6A2E9C;
}

id sub_29E6A2E9C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29E6A1ECC();
  }

  return result;
}

uint64_t sub_29E6A2ED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6A312C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E6A2F40()
{
  result = qword_2A1858BA0;
  if (!qword_2A1858BA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1858BA0);
  }

  return result;
}

uint64_t sub_29E6A2FB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

void sub_29E6A2FE8(uint64_t a1)
{
  if (!qword_2A1858BA8)
  {
    sub_29E6A3098(255);
    sub_29E6A3280(&qword_2A1858BD0, sub_29E6A3098, MEMORY[0x29EDBCB58]);
    v1 = sub_29E753228();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858BA8);
    }
  }
}

void sub_29E6A3098(uint64_t a1)
{
  if (!qword_2A1858BB0)
  {
    sub_29E6A312C(255, &qword_2A1858BB8, sub_29E6A3190, MEMORY[0x29EDBCC28]);
    sub_29E6A31F8();
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858BB0);
    }
  }
}

void sub_29E6A312C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6A3190(uint64_t a1)
{
  if (!qword_2A1858BC0)
  {
    sub_29E64D80C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1858BC0);
    }
  }
}

unint64_t sub_29E6A31F8()
{
  result = qword_2A1858BC8;
  if (!qword_2A1858BC8)
  {
    sub_29E6A312C(255, &qword_2A1858BB8, sub_29E6A3190, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858BC8);
  }

  return result;
}

uint64_t sub_29E6A3280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6A32C8(uint64_t a1)
{
  if (!qword_2A1858BE0)
  {
    sub_29E6A312C(255, &qword_2A1858BB8, sub_29E6A3190, MEMORY[0x29EDBCC28]);
    v1 = sub_29E752B08();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858BE0);
    }
  }
}

uint64_t sub_29E6A3360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a1;
  v31 = a2;
  v4 = sub_29E751908();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29E7519E8();
  v6 = *(v27 - 8);
  MEMORY[0x2A1C7C4A8](v27);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_29E7519F8();
  v9 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E6A3BD0(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E769230;
  *(v12 + 56) = &type metadata for SleepApneaEventDataTypeDetailDataSource.CustomPromotionComponent;
  *(v12 + 64) = sub_29E6A3C3C();
  v13 = swift_allocObject();
  *(v12 + 32) = v13;
  sub_29E602E20(v3 + 24, v13 + 16);
  sub_29E6A3CFC(0, &qword_2A1858BF8, sub_29E6A3C90, &type metadata for SleepApneaEventDataTypeDetailDataSource.SleepApneaEventListComponent);
  *(v12 + 96) = v14;
  *(v12 + 104) = sub_29E6A3DB0(&qword_2A1858C08, &qword_2A1858BF8, sub_29E6A3C90, &type metadata for SleepApneaEventDataTypeDetailDataSource.SleepApneaEventListComponent);
  v15 = swift_allocObject();
  *(v12 + 72) = v15;
  sub_29E602E20(v3 + 24, v15 + 56);
  sub_29E602E20(v3 + 24, v15 + 16);
  sub_29E6A3CFC(0, &qword_2A1858C10, sub_29E6A3D5C, &type metadata for SleepApneaEventDataTypeDetailDataSource.SleepApneaEventEducationComponent);
  *(v12 + 136) = v16;
  *(v12 + 144) = sub_29E6A3DB0(&qword_2A1858C20, &qword_2A1858C10, sub_29E6A3D5C, &type metadata for SleepApneaEventDataTypeDetailDataSource.SleepApneaEventEducationComponent);
  v17 = swift_allocObject();
  *(v12 + 112) = v17;
  sub_29E602E20(v3 + 24, v17 + 16);
  *(v12 + 176) = sub_29E7512E8();
  *(v12 + 184) = sub_29E6A58EC(&qword_2A1858C28, MEMORY[0x29EDC2668], MEMORY[0x29EDC2660]);
  sub_29E5FEBF4((v12 + 152));
  v18 = v26;
  sub_29E7512D8();
  *v11 = v18;
  (*(v9 + 104))(v11, *MEMORY[0x29EDC2B00], v25);
  v19 = v18;
  sub_29E7511E8();
  (*(v6 + 104))(v8, *MEMORY[0x29EDC2AF0], v27);
  *(v12 + 216) = sub_29E751208();
  *(v12 + 224) = sub_29E6A58EC(&qword_2A1859470, MEMORY[0x29EDC2610], MEMORY[0x29EDC2608]);
  sub_29E5FEBF4((v12 + 192));
  sub_29E7511F8();
  v20 = v19;
  sub_29E751338();
  *(v12 + 256) = sub_29E751348();
  *(v12 + 264) = sub_29E6A58EC(&qword_2A1858C30, MEMORY[0x29EDC26B8], MEMORY[0x29EDC26B0]);
  sub_29E5FEBF4((v12 + 232));
  sub_29E751328();
  swift_allocObject();
  swift_weakInit();
  *(v12 + 296) = sub_29E751168();
  *(v12 + 304) = sub_29E6A58EC(&qword_2A18582F8, MEMORY[0x29EDC25A8], MEMORY[0x29EDC25A0]);
  sub_29E5FEBF4((v12 + 272));
  v21 = v20;
  sub_29E751158();
  (*(v29 + 104))(v28, *MEMORY[0x29EDC2A38], v30);
  *(v12 + 336) = sub_29E751308();
  *(v12 + 344) = sub_29E6A58EC(qword_2A1858C38, MEMORY[0x29EDC2678], MEMORY[0x29EDC2670]);
  sub_29E5FEBF4((v12 + 312));
  v22 = v21;
  sub_29E7512F8();
  return sub_29E7511B8();
}

uint64_t sub_29E6A3960(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750EE8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x29EDCA190];
  }

  v7 = *(Strong + 16);
  sub_29E60AC64(v7, v5);

  v8 = sub_29E751A58();
  sub_29E6A3E08(0, &qword_2A1858300, sub_29E66D2E4, MEMORY[0x29EDC9E90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29E762F30;
  *(v9 + 56) = v2;
  *(v9 + 64) = sub_29E6A58EC(&qword_2A1858328, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
  v10 = sub_29E5FEBF4((v9 + 32));
  (*(v3 + 16))(v10, v5, v2);
  v11 = MEMORY[0x29EDC2B10];
  *(v9 + 72) = v8;
  *(v9 + 80) = v11;

  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_29E6A3B48()
{
  sub_29E5FECBC((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_29E6A3BD0(uint64_t a1)
{
  if (!qword_2A1858BE8)
  {
    sub_29E60A664(255, &qword_2A1859440, MEMORY[0x29EDC22E8], 1);
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858BE8);
    }
  }
}

unint64_t sub_29E6A3C3C()
{
  result = qword_2A1858BF0;
  if (!qword_2A1858BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858BF0);
  }

  return result;
}

unint64_t sub_29E6A3C90()
{
  result = qword_2A1858C00;
  if (!qword_2A1858C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858C00);
  }

  return result;
}

void sub_29E6A3CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for SleepApneaEventDataTypeDetailDataSource.FeatureOnboardedHideableComponent(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_29E6A3D5C()
{
  result = qword_2A1858C18;
  if (!qword_2A1858C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1858C18);
  }

  return result;
}

uint64_t sub_29E6A3DB0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E6A3CFC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E6A3E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E6A3E94(uint64_t a1)
{
  result = sub_29E60A664(319, &qword_2A1A7CEF0, MEMORY[0x29EDC2D90], 1);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E6A3F30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_29E6A40B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t sub_29E6A4310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_29E6A4358(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_29E6A43E8()
{
  sub_29E602E20(v0, v6);
  sub_29E751368();
  type metadata accessor for SleepApneaPromotionDataSource(0);
  swift_allocObject();
  v1 = sub_29E711460(v5);
  sub_29E602E20(v6, v4);
  sub_29E6A4E78(v4, v1, 0, sub_29E6A57C4, sub_29E6A4990, &unk_2A2501058, &unk_2A2501080, sub_29E6A5934);

  sub_29E5FECBC(v5);
  sub_29E5FECBC(v6);
  sub_29E6A58EC(&qword_2A1858260, type metadata accessor for SleepApneaPromotionDataSource, MEMORY[0x29EDC2030]);
  sub_29E750828();

  v2 = sub_29E750818();

  return v2;
}

uint64_t sub_29E6A4558(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](a1);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = sub_29E755178();
  v10[1] = v7;
  MEMORY[0x29ED96C20](95, 0xE100000000000000);
  (*(v4 + 16))(v6, v1 + *(a1 + 36), v3);
  swift_getDynamicType();
  (*(v4 + 8))(v6, v3);
  v8 = sub_29E755178();
  MEMORY[0x29ED96C20](v8);

  return v10[0];
}

void *sub_29E6A4694(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E750DE8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeatureOnboardedHideableDataSource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  sub_29E602E20(v2, v10);
  v8 = sub_29E6D2DF8(v10, v3, 1, v7);
  sub_29E751758();
  return v8;
}

uint64_t sub_29E6A4790()
{
  type metadata accessor for SleepApneaEventEducationDataSource(0);
  swift_allocObject();
  sub_29E68D2E0();
  sub_29E750828();

  v0 = sub_29E750818();

  return v0;
}

uint64_t sub_29E6A489C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_29E751388();
  sub_29E602E20(v2, v6);
  type metadata accessor for SleepApneaEventListDataSource(0);
  swift_allocObject();
  sub_29E700028(v3, v6);
  sub_29E750828();

  v4 = sub_29E750818();

  return v4;
}

uint64_t sub_29E6A49A8@<X0>(char a1@<W1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E751D88() ^ a1;
  sub_29E752048();
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = a3;
    v31 = v14;
    v15 = v14;
    *v13 = 136446466;
    v16 = sub_29E755178();
    v18 = sub_29E6B9C90(v16, v17, &v31);
    v29 = v6;
    v19 = a2;
    v20 = v18;

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    if (v10)
    {
      v21 = 0x65736C6166;
    }

    else
    {
      v21 = 1702195828;
    }

    if (v10)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    v23 = sub_29E6B9C90(v21, v22, &v31);

    *(v13 + 14) = v23;
    a2 = v19;
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] isVisible: %s", v13, 0x16u);
    swift_arrayDestroy();
    v24 = v15;
    a3 = v30;
    MEMORY[0x29ED98410](v24, -1, -1);
    MEMORY[0x29ED98410](v13, -1, -1);

    (*(v7 + 8))(v9, v29);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v25 = a2(0);
  v26 = MEMORY[0x29EDC1FF8];
  if ((v10 & 1) == 0)
  {
    v26 = MEMORY[0x29EDC2000];
  }

  return (*(*(v25 - 8) + 104))(a3, *v26, v25);
}

uint64_t sub_29E6A4C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v7 = a4(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v9 = *(Strong + *(*Strong + qword_2A1869458 + 24));

  a5(a1, v9);
  sub_29E750908();
}

void *sub_29E6A4E78(void *a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a7;
  v55 = a8;
  v51 = a6;
  v42 = a5;
  v10 = v8;
  v47 = a2;
  v13 = *v10;
  sub_29E6A3E08(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v48 = &v40 - v15;
  sub_29E6894C4(0);
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v50 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E752098();
  v44 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v43 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29E751D98();
  v41 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4(0);
  v58 = *(v22 - 8);
  v59 = v22;
  v23 = MEMORY[0x2A1C7C4A8](v22);
  v46 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v40 - v25;
  v27 = v13;
  *(v10 + *(v13 + qword_2A1869458 + 32)) = MEMORY[0x29EDCA1A0];
  sub_29E602E20(a1, v10 + *(*v10 + qword_2A1869458 + 16));
  LOBYTE(v13) = a3;
  *(v10 + *(*v10 + qword_2A1869458 + 24)) = a3;
  v28 = a1[3];
  v49 = a1;
  sub_29E601938(a1, v28);
  sub_29E751DB8();
  v56 = v27;
  v57 = v26;
  v42(v21, v13 & 1);
  (*(v41 + 8))(v21, v19);
  (*(v58 + 16))(v46, v26, v59);

  v29 = sub_29E750918();
  v30 = v49;
  sub_29E601938(v49, v49[3]);
  swift_retain_n();
  v60 = sub_29E751DC8();
  sub_29E602DD4();
  v31 = sub_29E754908();
  v61 = v31;
  v32 = sub_29E7548D8();
  v33 = v48;
  (*(*(v32 - 8) + 56))(v48, 1, 1, v32);
  sub_29E64C52C(0);
  sub_29E6A58EC(&qword_2A1A7BFA0, sub_29E64C52C, MEMORY[0x29EDB8A00]);
  sub_29E6A58EC(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  v34 = v50;
  sub_29E752968();
  sub_29E6214E8(v33);

  v35 = swift_allocObject();
  swift_weakInit();

  v36 = swift_allocObject();
  v37 = v56;
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;
  sub_29E6A58EC(&qword_2A18585D0, sub_29E6894C4, MEMORY[0x29EDB89E8]);
  v38 = v53;
  sub_29E7529A8();

  (*(v52 + 8))(v34, v38);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  (*(v58 + 8))(v57, v59);
  sub_29E5FECBC(v30);
  return v29;
}

void sub_29E6A57C4(uint64_t a1)
{
  if (!qword_2A1858CC0)
  {
    sub_29E6A5858(255);
    sub_29E6A58EC(&qword_2A1858CD0, sub_29E6A5858, MEMORY[0x29EDC2110]);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858CC0);
    }
  }
}

void sub_29E6A5858(uint64_t a1)
{
  if (!qword_2A1858CC8)
  {
    sub_29E6958F0(255);
    sub_29E6A58EC(&qword_2A1858800, sub_29E6958F0, MEMORY[0x29EDC2988]);
    v1 = sub_29E750AF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858CC8);
    }
  }
}

uint64_t sub_29E6A58EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6A5978(uint64_t a1)
{
  if (!qword_2A1858CD8)
  {
    type metadata accessor for BreathingDisturbancesChartSection(255);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1858CD8);
    }
  }
}

uint64_t sub_29E6A5A24(uint64_t a1)
{
  v3 = sub_29E754048();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v4 = sub_29E74F048();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_29E6A5B84;

  return sub_29E6A60A4(a1);
}

uint64_t sub_29E6A5B84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_29E6A602C;
  }

  else
  {
    v4 = sub_29E6A5C98;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

unint64_t sub_29E6A5C98()
{
  result = v0[10];
  v37 = *(result + 16);
  if (v37)
  {
    v2 = 0;
    v3 = v0[6];
    v35 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v36 = v3;
    v32 = v0[3];
    v31 = (v3 + 32);
    v34 = (v3 + 8);
    v30 = (v3 + 40);
    v4 = MEMORY[0x29EDCA198];
    v33 = v0[10];
    while (1)
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v6 = v0[7];
      v5 = v0[8];
      v8 = v0[4];
      v7 = v0[5];
      v9 = *(v36 + 72);
      v10 = *(v36 + 16);
      v10(v5, v35 + v9 * v2, v7);
      sub_29E74F008();
      v10(v6, v5, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v4;
      result = sub_29E68AB64(v8);
      v13 = v4[2];
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_24;
      }

      v17 = v12;
      if (v4[3] >= v16)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = result;
          sub_29E6A7A0C();
          result = v28;
          v4 = v38;
        }
      }

      else
      {
        v18 = v0[4];
        sub_29E6A7288(v16, isUniquelyReferenced_nonNull_native);
        result = sub_29E68AB64(v18);
        if ((v17 & 1) != (v19 & 1))
        {

          return sub_29E755078();
        }
      }

      v21 = v0[7];
      v20 = v0[8];
      v23 = v0[4];
      v22 = v0[5];
      v24 = v0[2];
      if (v17)
      {
        (*v30)(v4[7] + result * v9, v0[7], v0[5]);
        (*(v32 + 8))(v23, v24);
        (*v34)(v20, v22);
      }

      else
      {
        v4[(result >> 6) + 8] |= 1 << result;
        v25 = result;
        (*(v32 + 16))(v4[6] + *(v32 + 72) * result, v23, v24);
        (*v31)(v4[7] + v25 * v9, v21, v22);
        (*(v32 + 8))(v23, v24);
        result = (*v34)(v20, v22);
        v26 = v4[2];
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_25;
        }

        v4[2] = v27;
      }

      ++v2;
      result = v33;
      if (v37 == v2)
      {
        goto LABEL_17;
      }
    }
  }

  v4 = MEMORY[0x29EDCA198];
LABEL_17:

  v29 = v0[1];

  return v29(v4);
}

uint64_t sub_29E6A602C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E6A60A4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_29E74F0D8();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_29E74EE78();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_29E6A8290(0);
  v2[12] = swift_task_alloc();
  sub_29E6A82B0(0, &qword_2A1A7BE00, MEMORY[0x29EDC9930]);
  v2[13] = swift_task_alloc();
  v5 = sub_29E74F118();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E6A62B8, 0, 0);
}

uint64_t sub_29E6A62B8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v13 = v0[6];
  v9 = v0[4];
  v8 = v0[5];
  sub_29E6A83A8(v0[3], v2, sub_29E6A8290);
  sub_29E6A66E0(v2, v1);
  (*(v4 + 16))(v3, v9 + OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_gregorianCalendar, v6);
  v0[2] = v8;
  swift_getMetatypeMetadata();
  sub_29E7541F8();
  (*(v7 + 16))(v5, v9 + OBJC_IVAR____TtC20SleepHealthAppPlugin38SleepScoreDaySummaryProviderDataSource_algorithmVersion, v13);
  sub_29E74F0F8();
  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_29E6A6444;

  return MEMORY[0x2A1C691C8](v10);
}

uint64_t sub_29E6A6444(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_29E6A6628;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_29E6A656C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}