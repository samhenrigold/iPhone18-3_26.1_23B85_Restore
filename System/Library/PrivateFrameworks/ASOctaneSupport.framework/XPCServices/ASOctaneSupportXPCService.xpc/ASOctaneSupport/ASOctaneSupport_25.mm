uint64_t sub_1001D3C48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000183C4(&unk_1002BC450, &unk_10020A100);
  result = sub_1001F7778();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_1001F8068();

        sub_1001F6C28();
        result = sub_1001F80D8();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1001D3E7C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1001F6608();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000183C4(&qword_1002BC468, &qword_10021A690);
  v7 = sub_1001F7778();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_1001D48EC(&qword_1002BBAB8, &protocol conformance descriptor for Calendar.Component);
        result = sub_1001F69F8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1001D4180(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000183C4(&qword_1002BC440, &qword_10021A678);
  result = sub_1001F7778();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_1001F8058();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1001D436C()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001D43A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000183C4(&unk_1002BC470, qword_10021A698);
  v4 = sub_1001F7778();
  v5 = v4;
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
    v11 = v4 + 56;
    if (v9)
    {
LABEL_6:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      goto LABEL_12;
    }

LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        JUMPOUT(0x1001D467CLL);
      }

      if (v6 >= v10)
      {
        break;
      }

      v14 = *(v3 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1001F8068();
        sub_1001F6C28();

        v16 = sub_1001F80D8();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v22 && (v21 & 1) != 0)
            {
              goto LABEL_27;
            }

            v23 = v19 == v22;
            if (v19 == v22)
            {
              v19 = 0;
            }

            v21 |= v23;
            v24 = *(v11 + 8 * v19);
          }

          while (v24 == -1);
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
        }

        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + v20) = v15;
        ++*(v5 + 16);
        if (v9)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v2 = v1;
  }

  else
  {
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1001D4690(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000183C4(&qword_1002BC448, &unk_10021A680);
  result = sub_1001F7778();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1001F8068();
        sub_1001F6C28();

        result = sub_1001F80D8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1001D48EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F6608();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001D4A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = sub_1000183C4(&qword_1002AF150, &unk_100202ED0);
      v10 = *(a3 + 68);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_1001D4AFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = sub_1000183C4(&qword_1002AF150, &unk_100202ED0);
      v10 = *(a4 + 68);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for IAPTransaction(uint64_t a1)
{
  result = qword_1002BC4D8;
  if (!qword_1002BC4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D4C28(uint64_t a1)
{
  sub_100140004(319, &qword_1002BC4E8, &type metadata for UInt64);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100140004(319, &qword_1002B8F70, &type metadata for Int);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_100140004(319, &qword_1002ACF10, type metadata for String);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1000AD1F8(319);
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_100140004(319, &qword_1002AEC50, &type metadata for Data);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_1001D4D98(319);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_1001D4D98(uint64_t a1)
{
  if (!qword_1002BC4F0)
  {
    sub_100019BC4(&qword_1002AC7C8, &qword_1002008C0);
    v1 = sub_1001F74B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1002BC4F0);
    }
  }
}

void sub_1001D4DFC(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v7 = sub_1000183C4(&qword_1002AF150, &unk_100202ED0);
  __chkstk_darwin(v7 - 8);
  v31 = &v30 - v8;
  v9 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = 0x65646F6358;
  *(a4 + 32) = 0xE500000000000000;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  v12 = type metadata accessor for IAPTransaction(0);
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  v13 = v12[13];
  v14 = sub_1001F6508();
  sub_100018460(a4 + v13, 1, 1, v14);
  v15 = v12[14];
  sub_100018460(a4 + v15, 1, 1, v14);
  v16 = a4 + v12[15];
  *v16 = 0;
  *(v16 + 8) = 1;
  *(a4 + v12[16]) = xmmword_100202480;
  v17 = v12[17];
  v18 = sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
  sub_100018460(a4 + v17, 1, 1, v18);
  *(a4 + 56) = sub_1000BFC24();
  *(a4 + 64) = v19;
  *(a4 + 88) = sub_1000BFC14();
  *(a4 + 96) = v20;
  v33 = sub_1000C1A68();
  *(a4 + 104) = sub_1001F7E28();
  *(a4 + 112) = v21;
  v22 = sub_1000C5458(8);
  v24 = v23;
  v25 = 0;
  v26 = 0;
  if ((v24 & 1) == 0)
  {
    v33 = v22;
    v25 = sub_1001F7E28();
  }

  *(a4 + 120) = v25;
  *(a4 + 128) = v26;
  sub_1000BFDA8();
  sub_1001F6418();
  sub_1001D5BD0();
  sub_1001D5950(v11, a4 + v13, &unk_1002B3450, &qword_100202EE0);
  sub_1000C5464(12);
  if (v27)
  {
    sub_1001033F4(a4 + v13, a4 + v15);
  }

  else
  {
    sub_1001F6418();
    sub_1001D5BD0();
    sub_1001D5950(v11, a4 + v15, &unk_1002B3450, &qword_100202EE0);
  }

  *v16 = sub_1000C2550();
  *(v16 + 8) = 0;
  if (a2)
  {
    v28 = v32;

    v29 = v31;
    a2(a1);
    sub_100037408(a2, v28);
    sub_100037408(a2, v28);

    sub_1001D5950(v29, a4 + v17, &qword_1002AF150, &unk_100202ED0);
  }

  else
  {
  }
}

unint64_t sub_1001D511C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027D918;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001D5178(char a1)
{
  result = 0x64692D6D657469;
  switch(a1)
  {
    case 1:
      result = 0x6D6574692D707061;
      break;
    case 2:
      result = 0x6D6E6F7269766E65;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 6580578;
      break;
    case 5:
      result = 1936881250;
      break;
    case 6:
      result = 0x616E2D726566666FLL;
      break;
    case 7:
      result = 0x746361736E617274;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x6573616863727570;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x797469746E617571;
      break;
    case 12:
      result = 0x2D74706965636572;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001D5364(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BC550, &qword_10021A700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10001AE68(a1, a1[3]);
  sub_1001D5840();
  sub_1001F8198();
  LOBYTE(v15) = 0;
  sub_10001E6C8();
  sub_1001F7D78();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v15) = 1;
  sub_1001D5BC4();
  sub_10001E6C8();
  sub_1001F7DA8();
  sub_1001379E4(2);
  sub_1001F7D88();
  sub_1001379E4(3);
  sub_1001F7D48();
  sub_1001379E4(4);
  sub_1001F7D18();
  sub_1001379E4(5);
  sub_1001F7D18();
  sub_1001379E4(6);
  sub_1001F7D18();
  sub_1001379E4(7);
  sub_1001F7D18();
  sub_1001379E4(8);
  sub_1001F7D18();
  v13 = v6;
  v9 = type metadata accessor for IAPTransaction(0);
  LOBYTE(v15) = 9;
  sub_1001F6508();
  sub_1001D5894();
  sub_1001D5BC4();
  sub_10001E6C8();
  sub_1001F7D58();
  LOBYTE(v15) = 10;
  sub_1001D5BC4();
  sub_10001E6C8();
  sub_1001F7D58();
  sub_1001379E4(11);
  sub_1001F7D48();
  v10 = (v3 + *(v9 + 64));
  v11 = v10[1];
  v15 = *v10;
  v16 = v11;
  v14 = 12;
  sub_100040C5C(v15, v11);
  sub_10004FAD4();
  sub_10001E6C8();
  sub_1001F7D58();
  sub_10003A36C(v15, v16);
  LOBYTE(v15) = 13;
  sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
  sub_1001D58EC();
  sub_1001D5BC4();
  sub_10001E6C8();
  sub_1001F7D58();
  return (*(v13 + 8))(v8, v5);
}

unint64_t sub_1001D56E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D511C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001D5718@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001D5178(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001D5760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001D5168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001D5788@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001D516C();
  *a1 = result;
  return result;
}

uint64_t sub_1001D57B0(uint64_t a1)
{
  v2 = sub_1001D5840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D57EC(uint64_t a1)
{
  v2 = sub_1001D5840();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001D5840()
{
  result = qword_1002BC558;
  if (!qword_1002BC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC558);
  }

  return result;
}

unint64_t sub_1001D5894()
{
  result = qword_1002ACB38;
  if (!qword_1002ACB38)
  {
    sub_1001F6508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ACB38);
  }

  return result;
}

unint64_t sub_1001D58EC()
{
  result = qword_1002AF280;
  if (!qword_1002AF280)
  {
    sub_100019BC4(&qword_1002AC7C8, &qword_1002008C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF280);
  }

  return result;
}

uint64_t sub_1001D5950(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000183C4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for IAPTransaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
        JUMPOUT(0x1001D5A84);
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001D5AC0()
{
  result = qword_1002BC560;
  if (!qword_1002BC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC560);
  }

  return result;
}

unint64_t sub_1001D5B18()
{
  result = qword_1002BC568;
  if (!qword_1002BC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC568);
  }

  return result;
}

unint64_t sub_1001D5B70()
{
  result = qword_1002BC570;
  if (!qword_1002BC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC570);
  }

  return result;
}

uint64_t sub_1001D5BD0()
{

  return sub_100018460(v0, 0, 1, v1);
}

BOOL sub_1001D5CCC(_BOOL8 result, unint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return result >= a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D5CF0(uint64_t a1)
{
  v2 = sub_100030890();
  EmbeddedChannel.pipeline.getter();

  ChannelPipeline.close(mode:promise:)(a1, v2, v3, v4, v5, v6, v7, v8, v10, v11);

  return v2;
}

uint64_t sub_1001D5D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  v7 = a5(a1, a2, a3, a4);
  a6();
  sub_100158DF0();

  ChannelPipeline.register(promise:)(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);

  return v7;
}

uint64_t sub_1001D5DE8(uint64_t a1)
{
  v2 = sub_100030890();
  EmbeddedChannel.pipeline.getter();

  ChannelPipeline.writeAndFlush(_:promise:)(a1, v2, v3);

  return v2;
}

double sub_1001D5E58@<D0>(_OWORD *a1@<X8>)
{
  if (&type metadata for Any + 1 == &type metadata for ByteBuffer)
  {
    sub_100037030(v1, &v10);
    if (v15)
    {
      sub_100089D44(&v10);
      goto LABEL_21;
    }

    if (v10 < 0)
    {
      sub_100034300(v10);
      goto LABEL_21;
    }

    v16 = v10;
    v17 = v11;
    LODWORD(v18) = v12;
    WORD2(v18) = WORD2(v12);
    BYTE6(v18) = (v12 | ((WORD2(v12) | (BYTE6(v12) << 16)) << 32)) >> 48;
LABEL_19:
    swift_dynamicCast();
    return result;
  }

  if (&type metadata for Any + 1 == &type metadata for FileRegion)
  {
    v4 = NIOAny.tryAsFileRegion()();
    if (!v4)
    {
      goto LABEL_21;
    }

    v10 = v4;
    v11 = v5;
    LODWORD(v12) = v6;
    WORD2(v12) = WORD2(v6);
    BYTE6(v12) = BYTE6(v6);
    goto LABEL_19;
  }

  if (&type metadata for Any + 1 == &type metadata for IOData)
  {
    v7 = NIOAny.tryAsIOData()();
    if ((~v7 & 0xF000000000000007) != 0)
    {
      v10 = v7;
      v11 = v8;
      LODWORD(v12) = v9;
      BYTE6(v12) = BYTE6(v9);
      WORD2(v12) = WORD2(v9);
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (sub_1000183C4(&qword_1002ADD58, &qword_100200AC0) == &type metadata for Any + 1)
  {
    NIOAny.tryAsByteEnvelope()(&v10);
    if (v11)
    {
      v18 = v12;
      v19 = v13;
      v20 = v14;
      v16 = v10;
      v17 = v11;
      goto LABEL_19;
    }

LABEL_21:
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  sub_100030F5C(a1);
  return result;
}

uint64_t sub_1001D605C()
{
  sub_1001DC1D4();
  v4 = v3;
  v6 = v5;
  v7 = *(v2 + 48);
  ObjectType = swift_getObjectType();
  (*(v7 + 80))(v6, v4, v1, v0, ObjectType, v7);
  sub_1000A40C4();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(v9 + 32) = -1;
  sub_1000183C4(&qword_1002B4570, &qword_10020DE58);
  swift_allocObject();
  sub_10012CD34(0);

  sub_100120D54();
  sub_100127948(1);
  Lock.unlock()();
  sub_100047940();
  result = swift_beginAccess();
  v11 = *(v9 + 32);
  if (v11 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v11)
    {
      swift_willThrow();
      v12 = sub_10012F180();
      sub_1000A339C(v12, v13, 1);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    return sub_10012F180();
  }

  return result;
}

uint64_t sub_1001D6204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1001DC1D4();
  v10 = v9;
  v12 = v11;
  v13 = *(v7 + 40);
  ObjectType = swift_getObjectType();
  (*(v13 + 80))(v12, v10, v6, v5, ObjectType, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = -1;
  sub_1000183C4(&qword_1002B4570, &qword_10020DE58);
  swift_allocObject();
  v16 = sub_10012CD34(0);

  a5(v17, v16, v15, v7);
  sub_100127948(1);
  Lock.unlock()();
  sub_100047940();
  result = swift_beginAccess();
  v19 = *(v15 + 24);
  if (v19 == 255)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v15 + 16);
    if (v19)
    {
      swift_willThrow();
      sub_1000477E8(v20, 1);
    }

    else
    {

      sub_10012ED00(v20, v19);
    }
  }

  return result;
}

uint64_t sub_1001D639C(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return String.remove(at:)(a1);
  }

LABEL_5:
  a1 = sub_1001F6C58();

  return String.remove(at:)(a1);
}

void sub_1001D6404()
{
  if (*(*v0 + 16))
  {
    sub_1001DB53C();
    if (!v1)
    {
      v2 = *(*v0 + 16) - 1;

      sub_1001DB3F0(v2);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1001D6480()
{
  if (*(*v0 + 16))
  {
    sub_100037B94();
    if (!sub_1001DB5AC(v1))
    {
      sub_100103E6C();
      sub_1001DB468(v2, v3, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1001D64D8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D6514(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  sub_10012F774(v3 + 16, v10);
  if (*(v3 + 24) == 255)
  {
    *(v3 + 16) = a1;
    v7 = a2 & 1;
    *(v3 + 24) = v7;
    sub_10012F774(v3 + 48, &v9);
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 48) = 0;
    a3(a1, v7);
  }

  return sub_10012F180();
}

uint64_t sub_1001D6668(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  sub_10012F774(v4 + 16, v14);
  v10 = 0;
  if (*(v6 + 32) == 255)
  {
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v11 = a3 & 1;
    *(v6 + 32) = v11;
    sub_10012F774(v6 + 56, &v13);
    v10 = *(v6 + 56);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    *(v6 + 56) = 0;
    a4(a1, a2, v11);
  }

  return v10;
}

uint64_t sub_1001D6750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  sub_10012F774(v3 + 16, v12);
  if (*(v3 + 39) == 255)
  {
    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
    *(v3 + 32) = a3 & 0x1FFFFFFFFFFFFFFLL;
    sub_10012F774(v3 + 56, &v11);
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = 0;
    sub_100103E6C();
    sub_1000A3A44(v7, v8, v9, HIBYTE(a3) & 1);
  }

  return sub_10012F180();
}

uint64_t sub_1001D6830()
{
  v4 = v1;
  sub_1001DC14C();
  v6 = v5;
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)();
  sub_10012F774(v1 + 16, v10);
  v7 = 0;
  if (*(v4 + 47) == 255)
  {
    *(v4 + 16) = v6;
    *(v4 + 24) = v3;
    *(v4 + 32) = v2;
    *(v4 + 40) = v0 & 0x1FFFFFFFFFFFFFFLL;
    sub_10012F774(v4 + 64, &v9);
    v7 = *(v4 + 64);
    *(v4 + 72) = 0;
    *(v4 + 80) = 0;
    *(v4 + 64) = 0;
    sub_1000A3938(v6, v3, v2, v0, HIBYTE(v0) & 1);
  }

  return v7;
}

void sub_1001D6920()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = __OFSUB__(v2, v1);
  v4 = v2 - v1;
  if (v4 < 0 != v3)
  {
    v4 += *(*v0 + 16);
  }

  v5 = v4 < 1;
  v6 = v4 - 1;
  if (!v5)
  {
    *(v0 + 24) = v6;
    *(v0 + 32) = 0;
  }
}

unint64_t sub_1001D694C(unint64_t result, void (*a2)(void), uint64_t (*a3)(unint64_t, unint64_t), uint64_t (*a4)(unint64_t, unint64_t))
{
  v7 = v4;
  for (i = result; (i + 0x4000000000000000) >= 0; i = v11)
  {
    if (__OFADD__(2 * i, 2))
    {
      goto LABEL_16;
    }

    v9 = *v7;
    v10 = *(*v7 + 16);
    v11 = i;
    if (v10 > ((2 * i) | 1))
    {
      v12 = sub_1001D64D8((2 * i) | 1, *v7);
      v13 = sub_1001D64D8(i, v9);
      a2(0);
      v14 = a3(v12, v13);

      if (v14)
      {
        v11 = (2 * i) | 1;
      }

      else
      {
        v11 = i;
      }

      v10 = *(v9 + 16);
    }

    if (v10 > (2 * i + 2))
    {
      sub_1001D64D8(2 * i + 2, v9);
      v15 = sub_1001D64D8(v11, v9);
      a2(0);
      v16 = sub_100013EFC();
      v17 = a3(v16, v15);

      if (v17)
      {
        v11 = 2 * i + 2;
      }
    }

    if (v11 == i)
    {
      return result;
    }

    result = a4(i, v11);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1001D6B08(unint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *v2;
  v6 = sub_1001D64D8(a1, *v2);
  type metadata accessor for ScheduledTask();
  v7 = static ScheduledTask.< infix(_:_:)(v6, a2);

  if (!v7)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100111FFC(v5, v8, v9, v10);
      v5 = v11;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      if (*(v5 + 16) <= v4)
      {
        goto LABEL_19;
      }

      v12 = v5 + 32;
      *(v5 + 32 + 8 * v4) = a2;

LABEL_7:

      while (1)
      {
        v14 = v4 - 1;
        if (v4 < 1)
        {
LABEL_15:
          *v2 = v5;
          return result;
        }

        v15 = v4;
        v16 = *(v5 + 16);
        if (v4 >= v16)
        {
          break;
        }

        v4 = v14 >> 1;
        if (v14 >> 1 >= v16)
        {
          goto LABEL_17;
        }

        v17 = *(v12 + 8 * v15);
        v18 = *(v12 + 8 * v4);
        result = static ScheduledTask.< infix(_:_:)(v17, v18);
        if ((result & 1) == 0)
        {
          goto LABEL_15;
        }

        if (v15 != v4)
        {
          *(v12 + 8 * v15) = v18;

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_20;
          }

          *(v12 + 8 * v4) = v17;
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

uint64_t sub_1001D6CF4(unint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(unint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  v9 = v5;
  v11 = a1;
  v12 = *v5;
  v13 = sub_1001D64D8(a1, *v5);
  a3(0);
  v14 = a4(v13, a2);

  if (v14)
  {
LABEL_27:
    sub_1001DC1E8();
    result = sub_1001DC120("Fatal error", v26, v27, v28, v29, "ASOctaneSupportXPCService/Heap.swift", v30, v31, v32, v33);
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = a5(v12);
    *v9 = v12;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (*(v12 + 16) <= v11)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v12 + 8 * v11 + 32) = a2;

LABEL_7:

  result = sub_1001F7898();
  while (1)
  {
    v17 = v11 - 1;
    if (v11 < 1)
    {
      return result;
    }

    v18 = v11;
    v19 = *v9;
    v20 = *(*v9 + 16);
    if (v11 >= v20)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v11 = v17 >> 1;
    if (v17 >> 1 >= v20)
    {
      goto LABEL_22;
    }

    v21 = *(v19 + 32 + 8 * v18);
    v22 = *(v19 + 32 + 8 * v11);
    result = a4(v21, v22);
    if ((result & 1) == 0)
    {
      return result;
    }

    if (v18 != v11)
    {

      v23 = swift_isUniquelyReferenced_nonNull_native();
      *v9 = v19;
      if ((v23 & 1) == 0)
      {
        v19 = a5(v19);
        *v9 = v19;
      }

      if (v18 >= *(v19 + 16))
      {
        goto LABEL_25;
      }

      *(v19 + 8 * v18 + 32) = v22;

      sub_1001F7898();
      v24 = *v9;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *v9 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = a5(v24);
        *v9 = v24;
      }

      if (v11 < *(v24 + 16))
      {
        *(v24 + 8 * v11 + 32) = v21;
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }
}

uint64_t sub_1001D6F18(unint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = sub_1001D64D8(a1, v3);
  v7 = v4 - 1;
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = sub_1001D64D8(a1, v3);
  v9 = sub_1001D64D8(v7, v3);

  if (v8 == v9)
  {
    goto LABEL_10;
  }

  v10 = sub_1001D64D8(a1, v3);
  v11 = sub_1001D64D8(*(v3 + 16) - 1, v3);
  type metadata accessor for EmbeddedScheduledTask();
  v12 = sub_1001D7590(v10, v11);

  v13 = sub_1001D64D8(*(v3 + 16) - 1, v3);
  if (!v12)
  {
    sub_1001D6CF4(a1, v13, type metadata accessor for EmbeddedScheduledTask, sub_1001D7590, sub_100112884);

LABEL_10:
    sub_1001D6480();

    return v6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((result & 1) == 0)
  {
    result = sub_100112884(v3, v15, v16, v17);
    v3 = result;
    *v2 = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 16) > a1)
  {
    *(v3 + 8 * a1 + 32) = v13;

    sub_1001F7898();
    sub_1001D6480();

    sub_1001D694C(a1, type metadata accessor for EmbeddedScheduledTask, sub_1001D7590, sub_100065A5C);
    return v6;
  }

  __break(1u);
  return result;
}

void sub_1001D718C(unint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
    return;
  }

  sub_1001D64D8(a1, v3);
  v6 = v4 - 1;
  if (v4 == 1 || (type metadata accessor for ScheduledTask(), v7 = sub_1001D64D8(a1, v3), sub_1001DC104(v6), , , v7 == v6))
  {
LABEL_10:
    sub_1001D6404();

    return;
  }

  sub_1001DC104(a1);
  v8 = sub_1001D64D8(*(v3 + 16) - 1, v3);
  v9 = static ScheduledTask.< infix(_:_:)(v6, v8);

  sub_1001DC104(*(v3 + 16) - 1);
  if (!v9)
  {
    sub_1001D6B08(a1, v6);

    goto LABEL_10;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FFC(v3, v10, v11, v12);
    v3 = v13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 16) > a1)
  {
    *(v3 + 8 * a1 + 32) = v6;

    *v2 = v3;
    sub_1001D6404();

    sub_1001DC0B8();
    sub_1001D694C(a1, v14, static ScheduledTask.< infix(_:_:), sub_100065B7C);
    return;
  }

  __break(1u);
}

uint64_t sub_1001D732C(unint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = sub_1001D64D8(a1, v4);
  v8 = v5 - 1;
  if (!v8 || (sub_1001DC104(a1), v9 = sub_1001D64D8(v8, v4), , , v2 == v9))
  {
    sub_1001DC0A0();
LABEL_11:
    sub_1001D6480();

    return v7;
  }

  sub_1001DC104(a1);
  v10 = sub_1001D64D8(*(v4 + 16) - 1, v4);
  type metadata accessor for ScheduledTask();
  v11 = static ScheduledTask.< infix(_:_:)(v2, v10);

  sub_1001DC104(*(v4 + 16) - 1);
  if (!v11)
  {
    sub_1001D6CF4(a1, v2, type metadata accessor for ScheduledTask, static ScheduledTask.< infix(_:_:), sub_100112884);

    goto LABEL_11;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if ((result & 1) == 0)
  {
    result = sub_100112884(v4, v13, v14, v15);
    v4 = result;
    *v3 = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v4 + 16) > a1)
  {
    *(v4 + 8 * a1 + 32) = v2;

    sub_1001F7898();
    sub_1001DC0A0();
    sub_1001D6480();

    sub_1001DC0B8();
    sub_1001D694C(a1, v16, static ScheduledTask.< infix(_:_:), sub_100065A5C);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D7558()
{

  return swift_deallocClassInstance();
}

BOOL sub_1001D7590(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = *(a2 + 32);
  if (v2 == v3)
  {
    v2 = *(result + 40);
    v3 = *(a2 + 40);
    return v2 < v3;
  }

  if (((v3 | v2) & 0x8000000000000000) == 0)
  {
    return v2 < v3;
  }

  __break(1u);
  return result;
}

uint64_t EmbeddedEventLoop.__allocating_init()()
{
  sub_100047958();
  v0 = swift_allocObject();
  EmbeddedEventLoop.init()();
  return v0;
}

void *EmbeddedEventLoop.init()()
{
  v0[2] = 0;
  v0[3] = j___s25ASOctaneSupportXPCService17EmbeddedEventLoopC14scheduledTasks33_2BD33AE1E0B741588AA1A4B01A075DD0LLAA13PriorityQueueVyAA0D13ScheduledTaskAELLCGvpfi();
  sub_1000183C4(&qword_1002AC608, &qword_1001FDF50);
  sub_10001840C();
  v0[4] = sub_1001F69B8();
  v0[5] = 0;
  return v0;
}

uint64_t sub_1001D7690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  result = swift_allocObject();
  *(result + 32) = v3;
  *(result + 40) = &protocol witness table for EmbeddedEventLoop;
  *(result + 16) = 0;
  *(result + 24) = -1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  v8 = *(v3 + 40);
  if (v8 == -1)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    *(v3 + 40) = v8 + 1;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    type metadata accessor for EmbeddedScheduledTask();
    v11 = swift_allocObject();
    v11[4] = a1;
    v11[5] = v8;
    v11[2] = sub_100180CB4;
    v11[3] = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1001DBFD0;
    *(v13 + 24) = v12;
    swift_retain_n();
    swift_retain_n();

    sub_10011DD5C();

    swift_beginAccess();
    sub_1000433B0(v11);
    swift_endAccess();

    return v9;
  }

  return result;
}

uint64_t EmbeddedEventLoop.scheduleTask<A>(deadline:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  EmbeddedChannel.WrongTypeError.actual.getter(*v4, a4);
  sub_1001DC19C();
  result = EventLoop.makePromise<A>(of:file:line:)(v10, v11, v12, v13, 92, v9, a4, &protocol witness table for EmbeddedEventLoop);
  v15 = v4[5];
  if (v15 == -1)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v4[5] = v15 + 1;
    sub_100047958();
    v17 = swift_allocObject();
    v17[2] = a4;
    v17[3] = v16;
    v17[4] = a2;
    v17[5] = a3;
    type metadata accessor for EmbeddedScheduledTask();
    sub_100047958();
    v18 = swift_allocObject();
    v18[4] = a1;
    v18[5] = v15;
    v18[2] = sub_1001D7B58;
    v18[3] = v17;
    sub_10004794C();
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = v18;
    swift_retain_n();

    v20 = Scheduled.init(promise:cancellationTask:)(v16, sub_1001D7BF0, v19);
    sub_100047934();
    swift_beginAccess();
    sub_1000433B0(v18);
    swift_endAccess();

    return v20;
  }

  return result;
}

uint64_t sub_1001D7A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  EventLoopPromise.succeed(_:)(v9, a1, a4);
  return (*(v6 + 8))(v9, a4);
}

uint64_t sub_1001D7B1C()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001D7B88(uint64_t a1)
{
  swift_beginAccess();
  v1 = sub_1000E1DAC();
  if ((v2 & 1) == 0)
  {
    sub_1001D6F18(v1);
  }

  return swift_endAccess();
}

uint64_t EmbeddedEventLoop.scheduleTask<A>(in:_:)()
{
  sub_1001DC14C();
  v5 = static NIODeadline.+ infix(_:_:)(*(v1 + 16), v4);

  return EmbeddedEventLoop.scheduleTask<A>(deadline:_:)(v5, v3, v2, v0);
}

uint64_t EmbeddedEventLoop.execute(_:)()
{
  sub_100037B94();
  v3 = *(v1 + 16);
  sub_10004794C();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v0;

  sub_1001D7690(v3, sub_10012DB64, v4);
}

Swift::Void __swiftcall EmbeddedEventLoop.advanceTime(to:)(ASOctaneSupportXPCService::NIODeadline to)
{
  v2 = *(v1 + 16);
  if (((v2 | to._uptimeNanoseconds) & 0x8000000000000000) == 0)
  {
    v3 = v1;
    if (v2 <= to._uptimeNanoseconds)
    {
      uptimeNanoseconds = to._uptimeNanoseconds;
    }

    else
    {
      uptimeNanoseconds = *(v1 + 16);
    }

    sub_100047940();
    swift_beginAccess();
    while (1)
    {
      v5 = sub_10008A304();
      if (!v5)
      {
        goto LABEL_41;
      }

      v6 = v5;
      v7 = *(v5 + 32);
      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (uptimeNanoseconds < v7)
      {

LABEL_41:
        *(v3 + 16) = uptimeNanoseconds;
        return;
      }

      while (1)
      {
        v8 = *(v3 + 24);
        if (!*(v8 + 16) || *(*(v8 + 32) + 32) != v7)
        {
          break;
        }

        swift_retain_n();
        sub_1001F6F08();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1001F6F58();
        }

        sub_1001F6F98();
        sub_100047934();
        swift_beginAccess();
        v9 = *(v3 + 24);
        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = *(v9 + 32);
          v12 = v10 - 1;
          if (v10 == 1 || (v13 = *(v9 + 32 + 8 * v12), v11 == v13))
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v3 + 24) = v9;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v9 = sub_100112884(v9, v26, v27, v28);
              *(v3 + 24) = v9;
            }

            v29 = *(v9 + 16);
            if (!v29)
            {
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            *(v9 + 16) = v29 - 1;
            sub_1001F7898();
          }

          else
          {
            type metadata accessor for EmbeddedScheduledTask();
            if (sub_1001D7590(v11, v13))
            {

              v14 = swift_isUniquelyReferenced_nonNull_native();
              *(v3 + 24) = v9;
              if ((v14 & 1) == 0)
              {
                v9 = sub_100112884(v9, v15, v16, v17);
                *(v3 + 24) = v9;
              }

              if (!*(v9 + 16))
              {
                goto LABEL_43;
              }

              *(v9 + 32) = v13;

              sub_1001F7898();
              v18 = *(v3 + 24);
              if (!*(v18 + 16))
              {
                goto LABEL_44;
              }

              v19 = swift_isUniquelyReferenced_nonNull_native();
              *(v3 + 24) = v18;
              if ((v19 & 1) == 0)
              {
                v18 = sub_100112884(v18, v20, v21, v22);
                *(v3 + 24) = v18;
              }

              v23 = *(v18 + 16);
              if (!v23)
              {
                goto LABEL_45;
              }

              *(v18 + 16) = v23 - 1;
              sub_1001F7898();

              sub_1001DC03C();
              sub_1001D694C(0, v24, sub_1001D7590, sub_100065A5C);
            }

            else
            {
              v30 = sub_1001D64D8(v12, v9);

              sub_1001DC088();
              sub_1001D6CF4(0, v30, v31, sub_1001D7590, sub_100112884);

              sub_1001DC06C();
              sub_1001D6480();
            }
          }
        }

        swift_endAccess();

        v7 = *(v6 + 32);
      }

      *(v3 + 16) = v7;
      v32 = sub_10013B560();
      if (v32)
      {
        v33 = v32;
        if (v32 < 1)
        {
          goto LABEL_47;
        }

        v34 = 0;
        do
        {
          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v35 = sub_1001F7808();
          }

          else
          {
            v35 = _swiftEmptyArrayStorage[v34 + 4];
          }

          ++v34;
          v36 = *(v35 + 16);

          v36(v37);
        }

        while (v33 != v34);
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall EmbeddedEventLoop.advanceTime(by:)(ASOctaneSupportXPCService::TimeAmount by)
{
  v2 = static NIODeadline.+ infix(_:_:)(*(v1 + 16), by.nanoseconds);

  EmbeddedEventLoop.advanceTime(to:)(v2);
}

uint64_t sub_1001D80F4()
{
  v1 = v0;
  sub_100047940();
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v5 = v2 + 32;
    v4 = *(v2 + 32);
    v6 = v3 - 1;
    if (v3 == 1)
    {
      break;
    }

    v7 = *(v5 + 8 * v6);
    if (v4 == v7)
    {
      break;
    }

    type metadata accessor for EmbeddedScheduledTask();
    v8 = sub_100158DF0();
    if (!sub_1001D7590(v8, v7))
    {
      v25 = sub_1001D64D8(v3 - 1, v2);
      v26 = sub_1001D64D8(0, v2);
      v27 = sub_1001D7590(v26, v25);

      if (v27)
      {
        goto LABEL_37;
      }

      v67 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100112884(v2, v28, v29, v30);
        v67 = v2;
      }

      if (!*(v2 + 16))
      {
        goto LABEL_32;
      }

      *(v2 + 32) = v25;

      sub_1001F7898();

      v31 = v67;
      if (!*(v67 + 16))
      {
        goto LABEL_34;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100112884(v67, v32, v33, v34);
        v67 = v31;
      }

      v35 = *(v31 + 16);
      if (!v35)
      {
        goto LABEL_35;
      }

      sub_1001DC0D0(v35);
      sub_1001F7898();
      goto LABEL_18;
    }

    v9 = *(v5 + 8 * v6);

    v67 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100112884(v2, v10, v11, v12);
      v67 = v2;
    }

    if (!*(v2 + 16))
    {
      goto LABEL_31;
    }

    *(v2 + 32) = v9;

    sub_1001F7898();
    v13 = v67;
    if (!*(v67 + 16))
    {
      goto LABEL_33;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_100112884(v67, v14, v15, v16);
      v67 = v13;
    }

    v17 = *(v13 + 16);
    if (!v17)
    {
      goto LABEL_36;
    }

    sub_1001DC0D0(v17);
    sub_1001F7898();

    sub_1001DC03C();
    sub_1001D694C(0, v18, sub_1001D7590, sub_100065A5C);
LABEL_19:
    *(v1 + 16) = *(v4 + 32);
    v23 = *(v4 + 16);

    v23(v24);

    v2 = v67;
    v3 = *(v67 + 16);
    if (!v3)
    {
      goto LABEL_38;
    }
  }

  v67 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100112884(v2, v19, v20, v21);
    v67 = v2;
  }

  v22 = *(v2 + 16);
  if (v22)
  {
    sub_1001DC1C0(v22);
    sub_1001F7898();
LABEL_18:

    goto LABEL_19;
  }

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
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1001DC1E8();
  sub_1001DC120("Fatal error", v36, v37, v38, v39, "ASOctaneSupportXPCService/Heap.swift", v40, v41, v65, v66);
  __break(1u);
LABEL_38:
  while (2)
  {

LABEL_39:
    sub_100047934();
    swift_beginAccess();
    v42 = *(v1 + 24);
    v43 = *(v42 + 16);
    if (!v43)
    {
      return swift_endAccess();
    }

    v44 = v42 + 32;
    v45 = v43 - 1;
    if (v43 != 1 && *(v42 + 32) != *(v44 + 8 * v45))
    {
      type metadata accessor for EmbeddedScheduledTask();
      v46 = sub_1000378FC();
      if (sub_1001D7590(v46, v47))
      {
        v48 = *(v44 + 8 * v45);

        result = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 24) = v42;
        if ((result & 1) == 0)
        {
          result = sub_100112884(v42, v50, v51, v52);
          v42 = result;
          *(v1 + 24) = result;
        }

        if (!*(v42 + 16))
        {
          goto LABEL_60;
        }

        *(v42 + 32) = v48;

        result = sub_1001F7898();
        v53 = *(v1 + 24);
        if (!*(v53 + 16))
        {
          goto LABEL_61;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 24) = v53;
        if ((result & 1) == 0)
        {
          result = sub_100112884(v53, v54, v55, v56);
          v53 = result;
          *(v1 + 24) = result;
        }

        v57 = *(v53 + 16);
        if (!v57)
        {
          goto LABEL_62;
        }

        sub_1001DC0D0(v57);
        sub_1001F7898();

        sub_1001DC03C();
        sub_1001D694C(0, v58, sub_1001D7590, sub_100065A5C);
        goto LABEL_56;
      }

      v63 = sub_1001D64D8(v45, v42);

      sub_1001DC088();
      sub_1001D6CF4(0, v63, v64, sub_1001D7590, sub_100112884);

      sub_1001DC06C();
      sub_1001D6480();
LABEL_55:

LABEL_56:
      swift_endAccess();
      continue;
    }

    break;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v42;
  if ((result & 1) == 0)
  {
    result = sub_100112884(v42, v59, v60, v61);
    v42 = result;
    *(v1 + 24) = result;
  }

  v62 = *(v42 + 16);
  if (v62)
  {
    sub_1001DC1C0(v62);
    sub_1001F7898();
    goto LABEL_55;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t EmbeddedEventLoop.shutdownGracefully(queue:_:)(NSObject *a1, uint64_t a2, uint64_t a3)
{
  EmbeddedEventLoop.advanceTime(to:)(v3[2]);
  sub_10004794C();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_10004794C();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1001CE30C;
  *(v8 + 24) = v7;
  v11[4] = sub_100046F3C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001D875C;
  v11[3] = &unk_100295030;
  v9 = _Block_copy(v11);

  dispatch_sync(a1, v9);
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t EmbeddedEventLoop.deinit()
{
  sub_100047940();
  swift_beginAccess();
  v1 = *(*(v0 + 24) + 16);

  if (v1)
  {
    __break(1u);
  }

  else
  {

    return v0;
  }

  return result;
}

uint64_t EmbeddedEventLoop.__deallocating_deinit()
{
  EmbeddedEventLoop.deinit();
  sub_100047958();

  return swift_deallocClassInstance();
}

uint64_t EmbeddedChannelCore.deinit()
{
  *(v0 + 16) = 0;

  v1 = sub_10002E2C0();
  sub_1000A13B0(v1);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t EmbeddedChannelCore.__deallocating_deinit()
{
  EmbeddedChannelCore.deinit();

  return swift_deallocClassInstance();
}

uint64_t EmbeddedChannelCore.outboundBuffer.getter()
{
  sub_100047940();
  swift_beginAccess();
}

uint64_t EmbeddedChannelCore.outboundBuffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100158D18((v3 + 8), a2);
  v3[8] = a1;
  v3[9] = a2;
  v3[10] = a3;
}

uint64_t (*EmbeddedChannelCore.outboundBuffer.modify())(uint64_t a1)
{
  sub_100047934();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t EmbeddedChannelCore.pendingOutboundBuffer.getter@<X0>(uint64_t a1@<X8>)
{
  sub_100047940();
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

uint64_t EmbeddedChannelCore.pendingOutboundBuffer.setter()
{
  v2 = sub_1001DC1B4();
  sub_100158D18(v2, v3);
  v4 = *(v0 + 16);
  *(v1 + 88) = *v0;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(v0 + 32);
}

uint64_t (*EmbeddedChannelCore.pendingOutboundBuffer.modify())(uint64_t a1)
{
  sub_1001DC1B4();
  sub_100047934();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t EmbeddedChannelCore.inboundBuffer.getter()
{
  sub_100047940();
  swift_beginAccess();
}

uint64_t EmbeddedChannelCore.inboundBuffer.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100158D18((v3 + 16), a2);
  v3[16] = a1;
  v3[17] = a2;
  v3[18] = a3;
}

uint64_t (*EmbeddedChannelCore.inboundBuffer.modify())(uint64_t a1)
{
  sub_100047934();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1001D8B94()
{
  sub_10002D678();
  sub_10002E0D8();
  v0 = swift_allocError();
  sub_1001DC188(v0, v1);
  return swift_willThrow();
}

void EmbeddedChannelCore.close0(error:mode:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 16) == 1)
  {
    *(v3 + 16) = 0;
    if (a3)
    {
      v4 = sub_10002E2C0();
      sub_1000A13B0(v4);
    }

    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)();
    if (sub_10009D370())
    {
      sub_100158DF0();

      sub_10009DF84();
    }

    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)();
    if (sub_10009D370())
    {
      sub_100158DF0();

      sub_10009DEA8();
    }

    v5 = *(v3 + 32);
    swift_getObjectType();
    v6 = *(v5 + 24);
    swift_unknownObjectRetain();

    v7 = sub_100168534();
    v6(v7);
    swift_unknownObjectRelease();
  }

  else if (a3)
  {
    sub_10002D678();
    sub_10002E0D8();
    v8 = swift_allocError();
    *v9 = 3;
    *(v9 + 8) = 3;
    swift_errorRetain();
    sub_1000A13B0(v8);
  }
}

uint64_t sub_1001D8DC4()
{
  sub_10009AF34();

  sub_1000A13B0(0);
}

void EmbeddedChannelCore.bind0(to:promise:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_10002E2C0();
    sub_1000A13B0(v2);
  }
}

uint64_t EmbeddedChannelCore.connect0(to:promise:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 17) = 1;
  if (a2)
  {
    v3 = sub_10002E2C0();
    sub_1000A13B0(v3);
  }

  sub_1001DC16C();
  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009D370();
  if (result)
  {
    sub_100013EFC();

    sub_10009E060();
  }

  return result;
}

uint64_t EmbeddedChannelCore.register0(promise:)(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10002E2C0();
    sub_1000A13B0(v1);
  }

  sub_1001DC16C();
  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009D370();
  if (result)
  {
    sub_100013EFC();

    sub_10009DDCC();
  }

  return result;
}

uint64_t EmbeddedChannelCore.registerAlreadyConfigured0(promise:)(uint64_t a1)
{
  *(v1 + 17) = 1;
  EmbeddedChannelCore.register0(promise:)(a1);
  sub_1001DC16C();
  sub_10002E170();
  debugOnly(_:)();
  result = sub_10009D370();
  if (result)
  {
    sub_100013EFC();

    sub_10009E060();
  }

  return result;
}

uint64_t EmbeddedChannelCore.write0(_:promise:)(uint64_t a1, uint64_t a2)
{
  sub_10002EE44(a1, v4);
  v5 = a2;
  sub_100047934();
  swift_beginAccess();

  sub_10002F33C(v4);
  sub_1000374B8(v4, &qword_1002ADD78, &qword_100200AE8);
  return swift_endAccess();
}

Swift::Void __swiftcall EmbeddedChannelCore.flush0()()
{
  v1 = v0;
  sub_10012F774(v0 + 88, v44);
  sub_1001D6920();
  v2 = &qword_1002ADD70;
  v3 = &qword_1002ADD78;
  while ((*(v1 + 120) & 1) == 0)
  {
    v4 = *(v1 + 112);
    sub_100047934();
    swift_beginAccess();
    v5 = v4 - 1;
    if (v4 < 1)
    {
      v5 = 0;
    }

    *(v1 + 112) = v5;
    *(v1 + 120) = v4 < 1;
    v6 = *(v1 + 88);
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    v9 = v8 - v7;
    if (v8 < v7)
    {
      v9 += *(v6 + 16);
    }

    if (v9 <= 0)
    {
      memset(__dst, 0, 64);
      *&__dst[64] = 1;
      swift_endAccess();
LABEL_35:
      sub_1000374B8(__dst, &qword_1002ADD70, &qword_100200AE0);
      return;
    }

    if (v8 == v7)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

    if (HIDWORD(v7))
    {
      goto LABEL_39;
    }

    v10 = *(v6 + 16);
    if (v7 >= v10)
    {
      goto LABEL_40;
    }

    sub_10006AEB8(v6 + 72 * v7 + 32, v41, v2, &qword_100200AE0);
    if (*&v41[64] == 1)
    {
      goto LABEL_45;
    }

    memcpy(__dst, v41, sizeof(__dst));
    if (v8 >= v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    if ((v8 - v7 + v11) < 1)
    {
      goto LABEL_41;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 88) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100111FCC(v6, v13, v14, v15);
      v6 = v16;
    }

    memset(v41, 0, 64);
    *&v41[64] = 1;
    *(v1 + 88) = v6;
    if (v7 >= *(v6 + 16))
    {
      goto LABEL_42;
    }

    sub_10006AE68(v41, v6 + 72 * v7 + 32, v2, &qword_100200AE0);
    *(v1 + 88) = v6;
    *(v1 + 96) = (*(v6 + 16) + 0x1FFFFFFFFLL) & (v7 + 1);
    v17 = *&__dst[64];
    swift_endAccess();
    if (v17 == 1)
    {
      goto LABEL_35;
    }

    memcpy(v43, __dst, sizeof(v43));
    sub_100047934();
    swift_beginAccess();
    v18 = *(v1 + 80);
    sub_10002EE44(v43, __dst);
    v19 = *(v1 + 64);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 64) = v19;
    if ((v20 & 1) == 0)
    {
      v19 = sub_100111F84(v19, v21, v22, v23);
      *(v1 + 64) = v19;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

    if (v18 >= *(v19 + 16))
    {
      goto LABEL_44;
    }

    sub_10006AE68(__dst, v19 + (v18 << 6) + 32, &qword_1002ADD30, qword_100205400);
    *(v1 + 64) = v19;
    v24 = (*(v19 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v18 + 1);
    *(v1 + 80) = v24;
    if (*(v1 + 72) == v24)
    {
      sub_1001140B0();
    }

    swift_endAccess();
    sub_10006AEB8(v43, __dst, v3, &qword_100200AE8);
    v25 = v3;
    v26 = *&__dst[64];
    if (*&__dst[64])
    {
      v27 = v2;
      v28 = v25;
      v29 = *(*&__dst[64] + 40);
      ObjectType = swift_getObjectType();
      if ((*(v29 + 16))(ObjectType, v29))
      {
        v31 = sub_10002E2C0();
        v34 = sub_1001D6514(v31, v32, v33);
        v36 = v35;
        CallbackList._run()();
        sub_100037408(v34, v36);

        v3 = v28;
        sub_1000374B8(v43, v28, &qword_100200AE8);
      }

      else
      {
        v37 = *(v26 + 40);
        v38 = swift_getObjectType();
        v41[0] = 0;
        sub_1000A40C4();
        v39 = swift_allocObject();
        *(v39 + 16) = v26;
        *(v39 + 24) = 0;
        *(v39 + 32) = v41[0];
        v40 = *(v37 + 24);

        v40(sub_1000A3B0C, v39, v38, v37);

        sub_1000374B8(v43, v25, &qword_100200AE8);
        v3 = v25;
      }

      v2 = v27;
    }

    else
    {
      sub_1000374B8(v43, v25, &qword_100200AE8);
      v3 = v25;
    }

    sub_100034310(__dst);
  }
}

void EmbeddedChannelCore.triggerUserOutboundEvent0(_:promise:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    v2 = swift_allocError();
    sub_1001DC188(v2, v3);
    swift_errorRetain();
    sub_1000A13B0(v2);
  }
}

uint64_t EmbeddedChannelCore.channelRead0(_:)(uint64_t a1)
{
  sub_100047934();
  swift_beginAccess();
  sub_10002F1C8(a1);
  return swift_endAccess();
}

uint64_t EmbeddedChannelCore.errorCaught0(error:)(uint64_t result)
{
  if (!*(v1 + 48))
  {
    *(v1 + 48) = result;
    return swift_errorRetain();
  }

  return result;
}

uint64_t EmbeddedChannel.isActive.getter()
{
  v0 = *(EmbeddedChannel.channelcore.getter() + 17);

  return v0;
}

uint64_t EmbeddedChannel.channelcore.getter()
{
  result = v0[2];
  if (result)
  {
    v2 = v0[2];
LABEL_5:

    return v2;
  }

  v3 = v0[4];
  if (v3)
  {
    sub_100047940();
    swift_beginAccess();
    v4 = v0[9];
    type metadata accessor for EmbeddedChannelCore();
    v5 = swift_allocObject();

    v2 = sub_1001DBB38(v3, v4, v5);
    v0[2] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t EmbeddedChannel.closeFuture.getter()
{
  v0 = *(EmbeddedChannel.channelcore.getter() + 40);

  return v0;
}

uint64_t EmbeddedChannel.eventLoop.getter()
{
  sub_100047940();
  swift_beginAccess();
}

uint64_t EmbeddedChannel.channelcore.modify(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = EmbeddedChannel.channelcore.getter();
  return sub_100168534();
}

uint64_t sub_1001D97FC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return EmbeddedChannel.channelcore.setter(*a1);
  }

  EmbeddedChannel.channelcore.setter(v2);
}

uint64_t EmbeddedChannel.pipeline.getter()
{
  result = *(v0 + 32);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t EmbeddedChannel.isWritable.getter()
{
  sub_100047940();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t EmbeddedChannel.isWritable.setter(char a1, uint64_t a2)
{
  result = sub_100158D18(v2 + 24, a2);
  *(v2 + 24) = a1;
  return result;
}

uint64_t (*EmbeddedChannel.isWritable.modify())(uint64_t a1)
{
  sub_100047934();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t EmbeddedChannel.finish(acceptAlreadyClosed:)(char a1)
{
  v3 = v1;
  sub_1001DC19C();
  sub_1001D5CF0(v5);
  sub_1001DC054();
  sub_1001DC1A8();
  sub_1001D6204(v6, v7, v8, 498, v9);
  if (v2)
  {

    v69 = v2;
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    if (swift_dynamicCast())
    {

      v10 = BYTE8(v76);
      v11 = BYTE8(v76) >= 3u && v76 == 3;
      if (v11 && (a1 & 1) != 0)
      {

        goto LABEL_11;
      }

      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      *v47 = v76;
      *(v47 + 8) = v10;
      swift_willThrow();
    }

    return v3;
  }

LABEL_11:
  sub_100047940();
  swift_beginAccess();

  sub_1001D80F4();

  v12._uptimeNanoseconds = *(*(v3 + 72) + 16);

  EmbeddedEventLoop.advanceTime(to:)(v12);

  EmbeddedChannel.throwIfErrorCaught()();
  if (v13)
  {
    return v3;
  }

  v14 = EmbeddedChannel.channelcore.getter();
  sub_100047940();
  swift_beginAccess();
  if (v14[9] == v14[10])
  {
    sub_100047940();
    swift_beginAccess();
    if (v14[17] == v14[18])
    {
      sub_100047940();
      swift_beginAccess();
      if (v14[12] == v14[13])
      {

        return 0;
      }
    }
  }

  sub_100047940();
  swift_beginAccess();
  v15 = v14[17];
  v16 = v14[18];

  sub_10007BC90(v17, v15, v16, v18, v19, v20, v21, v22, v48, v50, v53, v55, v57, v59, v61, v63, v65, v67, v69, v72);
  v3 = v23;
  v24 = v14[9];
  v25 = v14[10];

  sub_10007BC90(v26, v24, v25, v27, v28, v29, v30, v31, v49, v51, v54, v56, v58, v60, v62, v64, v66, v68, v70, v73);
  sub_100047940();
  swift_beginAccess();
  v32 = v14[11];
  v33 = v14[12];
  v34 = v14[13];
  v35 = v34 - v33;
  if (v34 < v33)
  {
    v35 += *(v32 + 16);
  }

  if (!v35)
  {

    return v3;
  }

  v80 = _swiftEmptyArrayStorage;

  result = sub_1000345BC(0, v35 & ~(v35 >> 63), 0);
  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!HIDWORD(v33))
  {
    v52 = v3;
    if (v35 < 0)
    {
      goto LABEL_41;
    }

    v37 = 0;
    v38 = v80;
    v81 = v32 + 32;
    while (1)
    {
      v39 = v35;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v33 >= *(v32 + 16))
      {
        goto LABEL_37;
      }

      sub_10006AEB8(v81 + 72 * v33, &v76, &qword_1002ADD70, &qword_100200AE0);
      result = v79;
      if (v79 == 1)
      {
        goto LABEL_42;
      }

      v71 = v76;
      v74 = v77;
      *v75 = *v78;
      *&v75[16] = *&v78[16];

      v76 = v71;
      v77 = v74;
      *v78 = *v75;
      *&v78[9] = *&v75[9];
      v80 = v38;
      v42 = v38[2];
      v41 = v38[3];
      if (v42 >= v41 >> 1)
      {
        result = sub_1000345BC((v41 > 1), v42 + 1, 1);
        v38 = v80;
      }

      v38[2] = v42 + 1;
      v43 = &v38[8 * v42];
      v44 = v76;
      v45 = v77;
      v46 = *v78;
      *(v43 + 73) = *&v78[9];
      v43[3] = v45;
      v43[4] = v46;
      v43[2] = v44;
      v33 = (*(v32 + 16) - 1) & (v33 + 1);
      if (HIDWORD(v33))
      {
        goto LABEL_38;
      }

      ++v37;
      v11 = v40 == v39;
      v35 = v39;
      if (v11)
      {

        return v52;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EmbeddedChannel.throwIfErrorCaught()()
{
  v1 = *(EmbeddedChannel.channelcore.getter() + 48);
  swift_errorRetain();

  if (v1)
  {
    *(*(v0 + 16) + 48) = 0;

    swift_willThrow();
  }
}

uint64_t EmbeddedChannel.finish()()
{
  result = EmbeddedChannel.finish(acceptAlreadyClosed:)(0);
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t EmbeddedChannel.allocator.getter()
{
  sub_100047940();
  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t EmbeddedChannel.allocator.setter()
{
  sub_1001DC14C();
  v5 = v4;
  result = sub_100158D18((v1 + 5), v6);
  v1[5] = v5;
  v1[6] = v3;
  v1[7] = v2;
  v1[8] = v0;
  return result;
}

uint64_t EmbeddedChannel.embeddedEventLoop.getter()
{
  sub_100047940();
  swift_beginAccess();
}

uint64_t EmbeddedChannel.embeddedEventLoop.setter(uint64_t a1, uint64_t a2)
{
  sub_100158D18(v2 + 72, a2);
  *(v2 + 72) = a1;
}

uint64_t (*EmbeddedChannel.embeddedEventLoop.modify())(uint64_t a1)
{
  sub_100047934();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t EmbeddedChannel.localAddress.getter()
{
  sub_100047940();
  swift_beginAccess();
  v1 = *(v0 + 80);
  sub_10002D824(v1);
  return v1;
}

uint64_t EmbeddedChannel.localAddress.setter(uint64_t a1, uint64_t a2)
{
  sub_100158D18(v2 + 80, a2);
  v4 = *(v2 + 80);
  *(v2 + 80) = a1;
  return sub_10002D83C(v4);
}

uint64_t (*EmbeddedChannel.localAddress.modify())(uint64_t a1)
{
  sub_100047934();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t EmbeddedChannel.remoteAddress.getter()
{
  sub_100047940();
  swift_beginAccess();
  v1 = *(v0 + 88);
  sub_10002D824(v1);
  return v1;
}

uint64_t EmbeddedChannel.remoteAddress.setter()
{
  v2 = sub_1001DC1B4();
  sub_100158D18(v2, v3);
  v4 = *(v1 + 88);
  *(v1 + 88) = v0;
  return sub_10002D83C(v4);
}

uint64_t EmbeddedChannel.readOutbound<A>(as:)@<X0>(ValueMetadata *a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = EmbeddedChannel.channelcore.getter();
  sub_100047934();
  swift_beginAccess();
  EmbeddedChannel._readFromBuffer<A>(buffer:)((v5 + 64), a2, x8_0);
  swift_endAccess();
}

void EmbeddedChannel._readFromBuffer<A>(buffer:)(uint64_t *a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F74B8();
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = a1[1];
  if (v12 == a1[2])
  {
    v13 = a3;
    v14 = 1;
LABEL_9:
    sub_100018460(v13, v14, 1, a2);
    return;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v12))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100030A9C(v20);
  sub_100031CE8(1);
  EmbeddedChannel.channelcore.getter();
  type metadata accessor for EmbeddedChannelCore();
  ChannelCore.tryUnwrapData<A>(_:as:)(a2, v11);

  if (sub_10001C990(v11, 1, a2) != 1)
  {
    sub_100034310(v20);
    (*(a2[-1].Description + 4))(a3, v11, a2);
    v13 = a3;
    v14 = 0;
    goto LABEL_9;
  }

  (*(v8 + 8))(v11, v6);
  EmbeddedChannel.channelcore.getter();
  sub_1001D5E58(&v18);
  v15 = v19;
  if (v19)
  {

    sub_10001AE68(&v18, v15);
    DynamicType = swift_getDynamicType();
    sub_100019CCC(&v18);
    sub_1001DBBF0();
    sub_10002E0D8();
    swift_allocError();
    *v17 = a2;
    v17[1] = DynamicType;
    swift_willThrow();
    sub_100034310(v20);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t EmbeddedChannel.readInbound<A>(as:)@<X0>(ValueMetadata *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = EmbeddedChannel.channelcore.getter();
  sub_100047934();
  swift_beginAccess();
  EmbeddedChannel._readFromBuffer<A>(buffer:)((v4 + 128), a1, a2);
  swift_endAccess();
}

void EmbeddedChannel.writeInbound<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_10002DFFC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  EmbeddedChannel.pipeline.getter();
  (*(v5 + 16))(v8, a1, a2);
  NIOAny.init<A>(_:)(v8, a2, v22);
  ChannelPipeline.fireChannelRead(_:)();

  sub_100034310(v22);
  EmbeddedChannel.pipeline.getter();
  ChannelPipeline.fireChannelReadComplete()();

  EmbeddedChannel.throwIfErrorCaught()();
  if (!v9)
  {
    v10 = EmbeddedChannel.channelcore.getter();
    sub_100047940();
    swift_beginAccess();
    v11 = *(v10 + 136);
    v12 = *(v10 + 144);

    if (v11 != v12)
    {
      sub_100047940();
      swift_beginAccess();

      sub_100103E6C();
      sub_10007BC90(v13, v14, v15, v16, v17, v18, v19, v20, v21[0], v21[1], v21[2], v21[3], v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7]);
    }
  }
}

void EmbeddedChannel.writeOutbound<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_10002DFFC();
  __chkstk_darwin(v5);
  v7 = sub_100103BE8(v6, v25);
  v8(v7);
  NIOAny.init<A>(_:)(v3, a2, v30);
  sub_1001DC19C();
  sub_1001D5DE8(v9);
  sub_100034310(v30);
  sub_1001DC1A8();
  sub_1001D6204(v10, v11, v12, 614, v13);

  if (!v2)
  {
    v14 = EmbeddedChannel.channelcore.getter();
    sub_100047940();
    swift_beginAccess();
    v15 = *(v14 + 72);
    v16 = *(v14 + 80);

    if (v15 != v16)
    {
      sub_100047940();
      swift_beginAccess();

      sub_100103E6C();
      sub_10007BC90(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v30[5], v30[6], v30[7]);
    }
  }
}

uint64_t EmbeddedChannel.__allocating_init(handler:loop:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1000183C4(&qword_1002ADE00, &qword_100200B88);
    sub_100047958();
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_1001FE9E0;
    v6[4] = a1;
    v6[5] = a2;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_1001DC15C();
  v7 = swift_allocObject();
  EmbeddedChannel.init(handlers:loop:)(v6, a3);
  return v7;
}

uint64_t EmbeddedChannel.__allocating_init(handlers:loop:)()
{
  sub_100037B94();
  sub_1001DC15C();
  swift_allocObject();
  v2 = sub_100158DF0();
  EmbeddedChannel.init(handlers:loop:)(v2, v0);
  return v1;
}

int64x2_t *EmbeddedChannel.init(handlers:loop:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[1].i64[0] = 0;
  v2[1].i8[8] = 1;
  v2[2].i64[0] = 0;
  v2[2].i64[1] = j_j__malloc;
  v2[3].i64[0] = j_j__realloc;
  v2[3].i64[1] = j_j__free;
  v2[4].i64[0] = sub_10005EC68;
  type metadata accessor for EmbeddedEventLoop();
  sub_100047958();
  v5 = swift_allocObject();
  EmbeddedEventLoop.init()();
  v3[4].i64[1] = v5;
  v3[5] = vdupq_n_s64(0xF000000000000007);
  v3[6].i64[0] = 0;
  v3[6].i64[1] = 0;
  sub_10012F774(&v3[4].i64[1], v18);
  v3[4].i64[1] = a2;

  type metadata accessor for ChannelPipeline();
  swift_allocObject();
  sub_100013EFC();

  v3[2].i64[0] = sub_1001DB9A8(v6, v5);

  if (v3[2].i64[0])
  {

    sub_10009EAFC();
    if ((v7 & 1) == 0)
    {

      sub_1001DC1A8();
      sub_1001D5D8C(v8, v9, v10, 666, v11, v12);
      sub_1001DC054();
      sub_1001DC1A8();
      sub_1001D6204(v13, v14, v15, 666, v16);

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  swift_willThrowTypedImpl();

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t EmbeddedChannel.getOption<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  EmbeddedChannel.eventLoop.getter();
  swift_getObjectType();
  EmbeddedChannel.getOptionSync<A>(_:)(a1, a2, a3);
  sub_1001DC19C();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  v13 = v12;
  swift_unknownObjectRelease();
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return v13;
}

uint64_t EmbeddedChannel.getOptionSync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100037B94();
  sub_10002DFFC();
  __chkstk_darwin(v3);
  sub_100103BE8(v4, v7);
  sub_100103E6C();
  v5();
  if (swift_dynamicCast())
  {
    swift_getAssociatedTypeWitness();
    return swift_dynamicCast();
  }

  else
  {
    sub_1001F77B8(23);
    v8._countAndFlagsBits = 0x206E6F6974706FLL;
    v8._object = 0xE700000000000000;
    sub_1001F6CA8(v8);
    sub_1001F7E68();
    v9._countAndFlagsBits = 0x70757320746F6E20;
    v9._object = 0xEE00646574726F70;
    sub_1001F6CA8(v9);
    result = sub_1001F7AC8();
    __break(1u);
  }

  return result;
}

uint64_t EmbeddedChannel.bind(to:promise:)()
{
  sub_100037B94();
  if (v3)
  {
    sub_10004794C();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    sub_10004794C();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1001DBC6C;
    *(v5 + 24) = v4;

    sub_1001DC1FC();
  }

  EmbeddedChannel.pipeline.getter();
  v6 = sub_100158DF0();
  ChannelPipeline.bind(to:promise:)(v6, v0, v7);
}

uint64_t sub_1001DAE40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 80);
  *(a1 + 80) = a2;
  sub_10002D83C(v4);
}

uint64_t EmbeddedChannel.connect(to:promise:)()
{
  sub_100037B94();
  if (v3)
  {
    sub_10004794C();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    sub_10004794C();
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1001DBCA8;
    *(v5 + 24) = v4;

    sub_1001DC1FC();
  }

  EmbeddedChannel.pipeline.getter();
  v6 = sub_100158DF0();
  ChannelPipeline.connect(to:promise:)(v6, v0, v7);
}

uint64_t sub_1001DAF68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 88);
  *(a1 + 88) = a2;
  sub_10002D83C(v4);
}

uint64_t *EmbeddedChannel.deinit()
{

  sub_10002D83C(*(v0 + 80));
  sub_10002D83C(*(v0 + 88));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t EmbeddedChannel.__deallocating_deinit()
{
  EmbeddedChannel.deinit();
  sub_1001DC15C();

  return swift_deallocClassInstance();
}

uint64_t sub_1001DB070()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  sub_10002D824(v1);
  return v1;
}

uint64_t sub_1001DB0B8()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  sub_10002D824(v1);
  return v1;
}

uint64_t EmbeddedChannel.syncOptions.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for EmbeddedChannel.SynchronousOptions;
  a1[4] = &protocol witness table for EmbeddedChannel.SynchronousOptions;
  *a1 = v1;
}

uint64_t sub_1001DB260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001DC008(a1, a2, a3);
  sub_1001C19A8();
  if (v4)
  {
    v5 = sub_1001DC21C();
  }

  else
  {
    sub_1000378FC();
    v5 = sub_1001F7808();
  }

  *v3 = v5;
  return sub_100168534();
}

uint64_t sub_1001DB2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001DC008(a1, a2, a3);
  sub_1001C19A8();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    sub_1000378FC();
    v7 = sub_1001F7808();
  }

  *v3 = v7;
  return sub_100168534();
}

uint64_t sub_1001DB328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001DC008(a1, a2, a3);
  sub_1001C19A8();
  if (v4)
  {
    v5 = sub_1001DC21C();
  }

  else
  {
    sub_1000378FC();
    v5 = sub_1001F7808();
  }

  *v3 = v5;
  return sub_100168534();
}

uint64_t sub_1001DB38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001DC008(a1, a2, a3);
  sub_1001C19A8();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    sub_1000378FC();
    v7 = sub_1001F7808();
  }

  *v3 = v7;
  return sub_100168534();
}

void sub_1001DB3F0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FFC(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  if (v8 <= a1)
  {
    __break(1u);
  }

  else
  {
    v9 = v8 - 1;
    sub_1000375D8(v3 + 8 * a1 + 40, v8 - 1 - a1, (v3 + 8 * a1 + 32));
    *(v3 + 16) = v9;
    *v1 = v3;
  }
}

uint64_t sub_1001DB468(unint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v7;
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
    *v3 = result;
  }

  v9 = *(v7 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = v7 + 8 * a1;
    v13 = *(v12 + 32);
    a3(v12 + 40, v11);
    *(v7 + 16) = v10;
    sub_1001F7898();
    return v13;
  }

  return result;
}

uint64_t sub_1001DB51C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001DB53C()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100111FFC(v1, v2, v3, v4);
    v1 = v5;
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 16) = v6 - 1;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001DB5AC(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = a1(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = *(v3 + 8 * v6 + 32);
    *(v3 + 16) = v6;
    sub_1001F7898();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001DB620()
{

  sub_1000374AC(*(v0 + 24), *(v0 + 32));
  sub_1000A40C4();

  return _swift_deallocObject(v1, v2, v3);
}

void *sub_1001DB688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1001DC0E4(a1, a2, a3, a4, a5);
  v9 = sub_1000A29F0(v6, v7, &protocol descriptor for _ChannelInboundHandler);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v5[7] = v9;
  v5[8] = v10;
  v5[9] = sub_1000A3A58(v6, *v6, &protocol descriptor for _ChannelOutboundHandler);
  v5[10] = v11;
  v5[2] = 0;
  v5[3] = 0;
  return v5;
}

void *sub_1001DB744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1001DC0E4(a1, a2, a3, a4, a5);
  v5[7] = sub_1000A3A58(v6, v7, &protocol descriptor for _ChannelInboundHandler);
  v5[8] = v8;
  result = sub_1000A29F0(v6, *v6, &protocol descriptor for _ChannelOutboundHandler);
  v11 = result;
  if (result)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v5[9] = v11;
  v5[10] = v12;
  v5[2] = 0;
  v5[3] = 0;
  if (v5[7] | v11)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DB814(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = a1;
  *(a2 + 72) = &off_10027FE88;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = &protocol witness table for SelectableEventLoop;
  type metadata accessor for HeadChannelHandler();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  inited = swift_initStaticObject();
  type metadata accessor for ChannelHandlerContext();
  v4 = swift_allocObject();
  *(a2 + 16) = sub_1001DB688(1684104552, 0xE400000000000000, inited, a2, v4);

  type metadata accessor for TailChannelHandler();
  v5 = swift_initStaticObject();
  v6 = swift_allocObject();
  *(a2 + 24) = sub_1001DB744(1818845556, 0xE400000000000000, v5, a2, v6);

  if (*(a2 + 16))
  {
    *(*(a2 + 16) + 16) = *(a2 + 24);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    *(v7 + 24) = *(a2 + 16);
  }

  return a2;
}

uint64_t sub_1001DB9A8(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = a1;
  *(a2 + 72) = &protocol witness table for EmbeddedChannel;
  *(a2 + 48) = EmbeddedChannel.eventLoop.getter();
  *(a2 + 56) = &protocol witness table for EmbeddedEventLoop;
  type metadata accessor for HeadChannelHandler();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  inited = swift_initStaticObject();
  type metadata accessor for ChannelHandlerContext();
  v4 = swift_allocObject();
  *(a2 + 16) = sub_1001DB688(1684104552, 0xE400000000000000, inited, a2, v4);

  type metadata accessor for TailChannelHandler();
  v5 = swift_initStaticObject();
  v6 = swift_allocObject();
  *(a2 + 24) = sub_1001DB744(1818845556, 0xE400000000000000, v5, a2, v6);

  if (*(a2 + 16))
  {
    *(*(a2 + 16) + 16) = *(a2 + 24);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    *(v7 + 24) = *(a2 + 16);
  }

  return a2;
}

uint64_t sub_1001DBB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 16) = 1;
  *(a3 + 64) = sub_10002EC5C(0x10uLL);
  *(a3 + 72) = v6;
  *(a3 + 80) = v7;
  *(a3 + 88) = sub_10002EC00(0x10uLL);
  *(a3 + 96) = v8;
  *(a3 + 104) = v9;
  *(a3 + 112) = 0;
  *(a3 + 120) = 1;
  *(a3 + 128) = sub_10002EC5C(0x10uLL);
  *(a3 + 136) = v10;
  *(a3 + 144) = v11;
  ObjectType = swift_getObjectType();
  EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for ()[1]);
  v13 = sub_100042910("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Embedded.swift", 110, 2, 233);
  *(a3 + 48) = 0;
  *(a3 + 56) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = &protocol witness table for EmbeddedEventLoop;
  *(a3 + 40) = v13;
  return a3;
}

unint64_t sub_1001DBBF0()
{
  result = qword_1002BC578;
  if (!qword_1002BC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC578);
  }

  return result;
}

uint64_t sub_1001DBC74()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001DBCD4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001DBCEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DBD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1001DBD94(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1001DBDC0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DBE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

unint64_t sub_1001DBE8C()
{
  result = qword_1002BC9C8;
  if (!qword_1002BC9C8)
  {
    type metadata accessor for EmbeddedScheduledTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC9C8);
  }

  return result;
}

uint64_t sub_1001DBEE4()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_1000373FC(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  sub_1000A40C4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1001DBF28()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_1000374AC(*(v0 + 16), v1 & 1);
  }

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1001DBF70()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001DC0E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 88) = 0;
  *(a5 + 40) = result;
  *(a5 + 48) = a2;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_1001DC120(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_1001F7AC8();
}

uint64_t sub_1001DC16C()
{

  return swift_getObjectType();
}

uint64_t sub_1001DC1FC()
{

  return sub_10011E218();
}

uint64_t sub_1001DC21C()
{
}

uint64_t sub_1001DC234(unint64_t a1)
{
  if (a1 < 9)
  {
    return 2 * a1 + 14;
  }

  type metadata accessor for ASOctaneSimulatedErrorCategory(0);
  result = sub_1001F7F78();
  __break(1u);
  return result;
}

uint64_t sub_1001DC284(unint64_t a1)
{
  if (a1 < 9)
  {
    return 2 * a1 + 13;
  }

  type metadata accessor for ASOctaneSimulatedErrorCategory(0);
  result = sub_1001F7F78();
  __break(1u);
  return result;
}

uint64_t sub_1001DC2D4(uint64_t result, char a2)
{
  if (a2)
  {
    *(v2 + 32) = xmmword_100206E00;
  }

  else
  {
    v3 = result;
    v4 = *(v2 + 16) - 1;
    if (v4 > 6)
    {
      v5 = &off_10027AB90;
    }

    else
    {
      v5 = (&off_1002957C0)[v4];
    }

    v6 = 0;
    v7 = v5[2];
    v8 = v5 + 4;
LABEL_7:
    if (v6 == v7)
    {
    }

    else if (v6 >= v5[2])
    {
      __break(1u);
    }

    else
    {
      v9 = *(v8 + v6);
      v10 = *(v8 + v6++);
      v11 = (&off_1002957F8)[v9];
      v12 = v11[2];
      v13 = 4;
      do
      {
        if (!v12)
        {

          goto LABEL_7;
        }

        v14 = v11[v13++];
        --v12;
      }

      while (v14 != v3);

      v15 = sub_1001DC9A8(v10);
      v16 = sub_1000E1020(v3, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        *(v2 + 32) = v10;
        *(v2 + 40) = v16;
      }
    }
  }

  return result;
}

uint64_t sub_1001DC4B0(uint64_t result)
{
  switch(result)
  {
    case 0:
      return result;
    case 1:
      result = 0x6E776F6E6B6E55;
      break;
    case 2:
      result = 0x6E61432072657355;
      break;
    case 3:
      result = 0x206B726F7774654ELL;
      break;
    case 4:
      result = 0x45206D6574737953;
      break;
    case 5:
    case 19:
    case 22:
      sub_1001DEB04();
      result = v5 | 8;
      break;
    case 6:
      result = 0x69746E4520746F4ELL;
      break;
    case 7:
    case 20:
      sub_1001DEB04();
      result = v2 - 3;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
    case 10:
      result = sub_1001DEACC();
      break;
    case 11:
    case 14:
      sub_1001DEB04();
      result = v1 + 5;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = sub_1001DEAB4();
      break;
    case 15:
    case 21:
      sub_1001DEB04();
      result = v3 - 2;
      break;
    case 16:
      result = 0x64656C696146;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      sub_1001DEB04();
      result = v4 + 6;
      break;
    default:
      type metadata accessor for ASOctaneSimulatedError(0);
      sub_1001F7F78();
      __break(1u);
      JUMPOUT(0x1001DC700);
  }

  return result;
}

unint64_t sub_1001DC75C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027DA88;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001DC7B4(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = sub_1001DEA5C(0x7570u);
      break;
    case 2:
      result = 0x726566666FLL;
      break;
    case 3:
      result = 0x7220646E75666572;
      break;
    case 4:
      result = 0x6163696669726576;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001DC88C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DC75C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001DC8BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001DC7B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001DC9BC(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027DB48;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001DCA10(char a1)
{
  if (a1)
  {
    return 0x7865646E69;
  }

  else
  {
    return 1701869940;
  }
}

BOOL sub_1001DCA3C(unsigned __int8 a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = 0x636972656E6567;
  v6 = 0xE700000000000000;
  v9 = a1;
  v10 = 0x636972656E6567;
  switch(v9)
  {
    case 1:
      v6 = 0xE800000000000000;
      v10 = 0x6573616863727570;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v10 = 0x726566666FLL;
      break;
    case 3:
      v10 = 0x7220646E75666572;
      v6 = 0xEE00747365757165;
      break;
    case 4:
      v10 = 0x6163696669726576;
      v6 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  v11 = 0xE700000000000000;
  switch(a3)
  {
    case 1:
      v11 = 0xE800000000000000;
      v5 = 0x6573616863727570;
      break;
    case 2:
      v11 = 0xE500000000000000;
      v5 = 0x726566666FLL;
      break;
    case 3:
      v5 = 0x7220646E75666572;
      v11 = 0xEE00747365757165;
      break;
    case 4:
      v5 = 0x6163696669726576;
      v11 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  if (v10 == v5 && v6 == v11)
  {

    return a2 == a4;
  }

  v13 = sub_1001F7EA8();

  result = 0;
  if (v13)
  {
    return a2 == a4;
  }

  return result;
}

uint64_t sub_1001DCC2C(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1000183C4(&qword_1002BCAD8, &qword_10021ADF0);
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_1001DE270();
  sub_1001F8198();
  v16 = a2;
  v15 = 0;
  sub_1001DE318();
  sub_1001F7DC8();
  if (!v3)
  {
    v14 = 1;
    sub_1001F7DA8();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1001DCD9C(void *a1)
{
  v2 = sub_1000183C4(&qword_1002BCAC0, &qword_10021ADE8);
  sub_10001A278();
  v4 = v3;
  sub_10001E844();
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  sub_10001AE68(a1, a1[3]);
  sub_1001DE270();
  sub_1001F8178();
  v10[14] = 0;
  sub_1001DE2C4();
  sub_1001F7CB8();
  v8 = v10[15];
  v10[13] = 1;
  sub_1001F7C98();
  (*(v4 + 8))(v7, v2);
  sub_100019CCC(a1);
  return v8;
}

uint64_t sub_1001DCF70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DC9BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001DCFA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001DCA10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001DCFD4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DC9BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001DCFFC(uint64_t a1)
{
  v2 = sub_1001DE270();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DD038(uint64_t a1)
{
  v2 = sub_1001DE270();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001DD074@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001DCD9C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

unint64_t sub_1001DD0DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027DB98;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001DD128(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x64656C62616E65;
  }

  return 0x746E6572727563;
}

unint64_t sub_1001DD19C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DD0DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001DD1CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001DD128(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001DD200@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001DD0DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001DD228(uint64_t a1)
{
  v2 = sub_1001DE15C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001DD264(uint64_t a1)
{
  v2 = sub_1001DE15C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001DD2A0(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BCAE8, &qword_10021ADF8);
  sub_10001A278();
  v5 = v4;
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = &v15[-v7];
  v9 = sub_10001AE68(a1, a1[3]);
  sub_1001DE15C();
  sub_1001F8178();
  if (!v1)
  {
    type metadata accessor for ASOctaneSimulatedErrorCategory(0);
    LOBYTE(v16) = 0;
    sub_1001DE36C(&qword_1002BCAF0, &protocol conformance descriptor for ASOctaneSimulatedErrorCategory);
    sub_1001F7CB8();
    v10 = v18;
    LOBYTE(v16) = 1;
    v12 = sub_1001F7C88();
    v15[15] = 2;
    sub_1001DE3B0();
    sub_1001F7C48();
    (*(v5 + 8))(v8, v3);
    v13 = v16;
    v14 = v17;
    v9 = swift_allocObject();
    *(v9 + 16) = v10;
    *(v9 + 24) = v12 & 1;
    *(v9 + 32) = v13;
    *(v9 + 40) = v14;
  }

  sub_100019CCC(a1);
  return v9;
}

uint64_t sub_1001DD4DC(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BCAA0, &qword_10021ADE0);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1001DE15C();
  sub_1001F8198();
  *&v12 = *(v3 + 16);
  v13 = 0;
  type metadata accessor for ASOctaneSimulatedErrorCategory(0);
  sub_1001DE36C(&qword_1002BCAB0, &protocol conformance descriptor for ASOctaneSimulatedErrorCategory);
  sub_1001F7DC8();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1001F7D98();
    v12 = *(v3 + 32);
    v13 = 2;
    sub_1001DE1B0();
    sub_1001F7D58();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1001DD6BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001DD2A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1001DD70C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  v2 = v5 == 5 && v4 == 5;
  if (v4 == 5 || v5 == 5)
  {
    return v2;
  }

  return sub_1001DCA3C(*(a1 + 32), *(a1 + 40), v5, *(a2 + 40));
}

uint64_t sub_1001DD794()
{
  result = swift_beginAccess();
  v1 = static ASOctaneSimulatedErrorCategory.allCases;
  v2 = static ASOctaneSimulatedErrorCategory.allCases[2];
  if (v2)
  {
    type metadata accessor for OctaneSimulatedError();

    v3 = 4;
    do
    {
      v4 = v1[v3];
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = 0;
      *(v5 + 32) = xmmword_100206E00;
      sub_1001F6F08();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1001F6F58();
      }

      sub_1001F6F98();
      ++v3;
      --v2;
    }

    while (v2);
  }

  qword_1002E61A0 = _swiftEmptyArrayStorage;
  return result;
}

double static ASOctaneSimulatedErrorCategory.allCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static ASOctaneSimulatedErrorCategory.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static ASOctaneSimulatedErrorCategory.allCases = a1;
}

uint64_t sub_1001DD9B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F72502064616F4CLL && a2 == 0xED00007374637564;
  if (v4 || (sub_1000B7E74(0x6F72502064616F4CLL, 0xED00007374637564) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616863727550 && a2 == 0xE800000000000000;
    if (v6 || (sub_1000B7E74(0x6573616863727550, 0xE800000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = sub_1001DEAE4();
      v9 = a1 == v7 && a2 == v8;
      if (v9 || (sub_1000B7E74(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = sub_1001DEA6C();
        v12 = a1 == v10 && a2 == v11;
        if (v12 || (sub_1000B7E74(v10, v11) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = a1 == 0xD000000000000013 && 0x800000010022E500 == a2;
          if (v13 || (sub_1000B7E74(0xD000000000000013, 0x800000010022E500) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v14 = sub_1001DEA90();
            v16 = a1 == v14 && a2 == v15;
            if (v16 || (sub_1000B7E74(v14, v15) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v17 = a1 == 0xD00000000000001ALL && 0x800000010022E4E0 == a2;
              if (v17 || (sub_1000B7E74(0xD00000000000001ALL, 0x800000010022E4E0) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v18 = a1 == 0xD000000000000014 && 0x800000010022E4C0 == a2;
                if (v18 || (sub_1000B7E74(0xD000000000000014, 0x800000010022E4C0) & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000017 && 0x800000010022E4A0 == a2)
                {

                  return 8;
                }

                else
                {
                  v20 = sub_1000B7E74(0xD000000000000017, 0x800000010022E4A0);

                  if (v20)
                  {
                    return 8;
                  }

                  else
                  {
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

double sub_1001DDD2C@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static ASOctaneSimulatedErrorCategory.allCases;

  return result;
}

unint64_t *ASOctaneSimulatedErrorCategory.init(from:)(void *a1)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001042A8();
  sub_1001F8168();
  if (!v2)
  {
    sub_10001AE68(v15, v16);
    sub_1001042A8();
    v4 = sub_1001F7EC8();
    v6 = v5;

    v7 = sub_1001DD9B4(v4, v6);
    if ((v8 & 1) == 0)
    {
      v1 = v7;

      sub_100019CCC(v15);
      sub_100019CCC(a1);
      return v1;
    }

    v9 = sub_1001F7848();
    swift_allocError();
    v11 = v10;
    v17 = *(sub_1000183C4(&qword_1002B3738, &qword_10020BFA0) + 48);
    type metadata accessor for ASOctaneSimulatedErrorCategory(0);
    *v11 = v12;
    sub_10001AE68(v15, v16);
    sub_1001F7EB8();
    sub_1001F77B8(35);

    v14[0] = 0xD000000000000021;
    v14[1] = 0x800000010022E220;
    v1 = v14;
    v18._countAndFlagsBits = v4;
    v18._object = v6;
    sub_1001F6CA8(v18);

    sub_1001F7838();
    (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.valueNotFound(_:), v9);
    swift_willThrow();
    sub_100019CCC(v15);
  }

  sub_100019CCC(a1);
  return v1;
}

uint64_t ASOctaneSimulatedErrorCategory.encode(to:)(void *a1)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_1001DDC04();
  sub_10004BD98(v2, v2[3]);
  sub_1001F7EE8();

  return sub_100019CCC(v2);
}

unint64_t *sub_1001DE064@<X0>(void *a1@<X0>, unint64_t **a2@<X8>)
{
  result = ASOctaneSimulatedErrorCategory.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OctaneSimulatedError.CurrentValue(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[16])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for OctaneSimulatedError.CurrentValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1001DE15C()
{
  result = qword_1002BCAA8;
  if (!qword_1002BCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAA8);
  }

  return result;
}

unint64_t sub_1001DE1B0()
{
  result = qword_1002BCAB8;
  if (!qword_1002BCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAB8);
  }

  return result;
}

uint64_t sub_1001DE204(uint64_t a1)
{
  switch(a1)
  {
    case 11:
      result = 1;
      break;
    case 12:
      result = 4;
      break;
    case 13:
      result = 2;
      break;
    case 14:
      result = 3;
      break;
    default:
      if (a1 == 1)
      {
        result = 0;
      }

      else
      {
        result = 5;
      }

      break;
  }

  return result;
}

unint64_t sub_1001DE270()
{
  result = qword_1002BCAC8;
  if (!qword_1002BCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAC8);
  }

  return result;
}

unint64_t sub_1001DE2C4()
{
  result = qword_1002BCAD0;
  if (!qword_1002BCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAD0);
  }

  return result;
}

unint64_t sub_1001DE318()
{
  result = qword_1002BCAE0;
  if (!qword_1002BCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAE0);
  }

  return result;
}

uint64_t sub_1001DE36C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASOctaneSimulatedErrorCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DE3B0()
{
  result = qword_1002BCAF8;
  if (!qword_1002BCAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCAF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneSimulatedError.CurrentValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x1001DE4D0);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneSimulatedError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001DE5D4);
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

_BYTE *storeEnumTagSinglePayload for OctaneSimulatedError.ErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
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
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1001DE6D8);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001DE740(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DE798()
{
  result = qword_1002BCB10;
  if (!qword_1002BCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB10);
  }

  return result;
}

unint64_t sub_1001DE7F0()
{
  result = qword_1002BCB18;
  if (!qword_1002BCB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB18);
  }

  return result;
}

unint64_t sub_1001DE848()
{
  result = qword_1002BCB20;
  if (!qword_1002BCB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB20);
  }

  return result;
}

unint64_t sub_1001DE8A0()
{
  result = qword_1002BCB28;
  if (!qword_1002BCB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB28);
  }

  return result;
}

unint64_t sub_1001DE8F8()
{
  result = qword_1002BCB30;
  if (!qword_1002BCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB30);
  }

  return result;
}

unint64_t sub_1001DE950()
{
  result = qword_1002BCB38;
  if (!qword_1002BCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB38);
  }

  return result;
}

unint64_t sub_1001DE9A8()
{
  result = qword_1002BCB40;
  if (!qword_1002BCB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB40);
  }

  return result;
}

unint64_t sub_1001DE9FC()
{
  result = qword_1002BCB48;
  if (!qword_1002BCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB48);
  }

  return result;
}

uint64_t static NSJSONSerialization.jsonObject(with:options:)(void x0_0, unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_opt_self();

  Data.init(buffer:byteTransferStrategy:)(v8, a1, a2 & 0xFFFFFFFFFFFFFFLL, 2);
  v10 = v9;
  v12 = v11;
  isa = sub_1001F63A8().super.isa;
  sub_10003A380(v10, v12);
  v18 = 0;
  v14 = [v7 JSONObjectWithData:isa options:a3 error:&v18];

  v15 = v18;
  if (v14)
  {
    sub_1001F76D8();
    return swift_unknownObjectRelease();
  }

  else
  {
    v17 = v15;
    sub_1001F61B8();

    return swift_willThrow();
  }
}

uint64_t _UInt24._backing.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 2) = a2;
  return result;
}

unint64_t sub_1001DED08()
{
  result = qword_1002BCB50;
  if (!qword_1002BCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCB50);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _UInt24(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _UInt24(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0x1FFFFFF) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for _UInt24(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t sub_1001DEEB8(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (*(v2 + 16) && (v3 = sub_10011108C(0x44497465737361), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);

    v6 = sub_1001EA8E8();
    sub_1001F10F8(6580578, 0xE300000000000000, v6);
    v8 = v7;

    sub_1000402B8(a1);
    if (!v8)
    {

      return 0;
    }
  }

  else
  {
    sub_1000402B8(a1);
    return 0;
  }

  return v5;
}

void sub_1001DEFAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000183C4(&qword_1002BCC70, &unk_10021B408);
    v2 = sub_1001F7B78();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_10002F9B0(*(a1 + 56) + 32 * v10, v35);
    *&v34 = v13;
    *(&v34 + 1) = v12;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10003708C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10003708C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10003708C(v31, v32);
    v14 = sub_1001F7738(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = v7[v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_10003708C(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1001DF298(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9 = a2;
  v8 = a3;
  v7(a2, a3, a4);
}

void sub_1001DF340(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1001DF3E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1001DF434(uint64_t result)
{
  if (!v2 & v1)
  {
    if (result)
    {
      switch(result)
      {
        case 14000:
          return 1;
        case 18400:
          return 14;
        case 15200:
          return 8;
        case 15400:
          return 9;
        case 16000:
          return 10;
        case 16400:
          return 11;
        case 17200:
          return 12;
        case 18000:
          return 13;
        case 14001:
          return 2;
        default:
          return 15;
      }
    }
  }

  else
  {
    switch(result)
    {
      case 15000:
        result = 3;
        break;
      case 15001:
        result = 4;
        break;
      case 15002:
        result = 5;
        break;
      case 15003:
        result = 6;
        break;
      case 15004:
        result = 7;
        break;
      default:
        JUMPOUT(0);
    }
  }

  return result;
}

uint64_t sub_1001DF574@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001DF560(*v1);
  *a1 = result;
  return result;
}

void sub_1001DF5A0()
{
  v0 = [objc_opt_self() persistedDataPath];
  if (v0)
  {
    v1 = sub_1001F6B48();
    v2 = [v0 stringByAppendingPathComponent:v1];

    v0 = sub_1001F6B58();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  qword_1002BCB60 = v0;
  qword_1002BCB68 = v4;
}

id sub_1001DF658()
{
  v0 = sub_1001F6508();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() persistedDataPath];
  if (!v4)
  {
    return v4;
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1001F77B8(19);

  strcpy(v12, "store-corrupt-");
  HIBYTE(v12[1]) = -18;
  sub_1001F64E8();
  sub_1001F6428();
  v6 = v5;
  v7 = v5;
  result = (*(v1 + 8))(v3, v0);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 9.22337204e18)
  {
    v11[1] = v6;
    v13._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v13);

    v14._countAndFlagsBits = 6448174;
    v14._object = 0xE300000000000000;
    sub_1001F6CA8(v14);
    v9 = sub_1001F6B48();

    v10 = [v4 stringByAppendingPathComponent:v9];

    v4 = sub_1001F6B58();
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1001DF888()
{
  v0 = sub_1001DF8D8();
  v1 = [objc_allocWithZone(SQLiteDatabase) initWithConnectionOptions:v0];

  qword_1002BCB70 = v1;
}

id sub_1001DF8D8()
{
  if (qword_1002AC530 != -1)
  {
    swift_once();
  }

  if (!qword_1002BCB68)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v2 = sub_1001F6688();
    sub_100019C94(v2, qword_1002E6180);
    v3 = sub_1001F6668();
    v4 = sub_1001F72A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "StoreKit Testing in Xcode is unavailable. Please file a bug and attach a sysdiagnose.", v5, 2u);
    }

    exit(1);
  }

  v0 = qword_1002BCB60;
  sub_1001E6AD4();

  return sub_1001DFA20(v0);
}

id sub_1001DFA20(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1001F6B48();

  v3 = [v1 initWithDatabasePath:v2];

  return v3;
}

void sub_1001DFA94(uint64_t a1)
{
  if (qword_1002AC538 != -1)
  {
    swift_once();
  }

  v1 = qword_1002BCB70;
  v2 = objc_allocWithZone(type metadata accessor for DatabaseStore());
  v3 = v1;
  v4 = sub_1001E7368();
  v6 = [v4 v5];

  qword_1002E61A8 = v6;
}

void sub_1001DFB1C()
{
  sub_1001F77B8(417);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x800000010022E600;
  sub_1001F6CA8(v4);
  v0 = [type metadata accessor for TransactionEntity() databaseTable];
  v1 = sub_1001F6B58();
  v3 = v2;

  v5._countAndFlagsBits = v1;
  v5._object = v3;
  sub_1001F6CA8(v5);

  v6._object = 0x800000010022E620;
  v6._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v6);
  v7._countAndFlagsBits = 0x6E6F69746361;
  v7._object = 0xE600000000000000;
  sub_1001F6CA8(v7);
  v8._object = 0x800000010022E640;
  v8._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v8);
  v9._countAndFlagsBits = 0x746174735F627461;
  v9._object = 0xEA00000000007375;
  sub_1001F6CA8(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  sub_1001F6CA8(v10);
  v11._countAndFlagsBits = 0x695F656C646E7562;
  v11._object = 0xE900000000000064;
  sub_1001F6CA8(v11);
  v12._object = 0x800000010022E640;
  v12._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v12);
  v13._countAndFlagsBits = 0x645F6C65636E6163;
  v13._object = 0xEB00000000657461;
  sub_1001F6CA8(v13);
  v14._countAndFlagsBits = 0xA2C4C41455220;
  v14._object = 0xE700000000000000;
  sub_1001F6CA8(v14);
  v15._countAndFlagsBits = 0x6974617269707865;
  v15._object = 0xEF657461645F6E6FLL;
  sub_1001F6CA8(v15);
  v16._countAndFlagsBits = 0xA2C4C41455220;
  v16._object = 0xE700000000000000;
  sub_1001F6CA8(v16);
  v17._countAndFlagsBits = 0x64656873696E6966;
  v17._object = 0xE800000000000000;
  sub_1001F6CA8(v17);
  v18._countAndFlagsBits = 0xD00000000000001DLL;
  v18._object = 0x800000010022E660;
  sub_1001F6CA8(v18);
  v19._countAndFlagsBits = 0xD000000000000012;
  v19._object = 0x80000001002228F0;
  sub_1001F6CA8(v19);
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v20._object = 0x800000010022E660;
  sub_1001F6CA8(v20);
  v21._countAndFlagsBits = 25705;
  v21._object = 0xE200000000000000;
  sub_1001F6CA8(v21);
  v22._countAndFlagsBits = 0xD000000000000013;
  v22._object = 0x800000010022E680;
  sub_1001F6CA8(v22);
  v23._countAndFlagsBits = 0x6C616E696769726FLL;
  v23._object = 0xEB0000000064695FLL;
  sub_1001F6CA8(v23);
  v24._countAndFlagsBits = 0x52454745544E4920;
  v24._object = 0xEA00000000000A2CLL;
  sub_1001F6CA8(v24);
  v25._countAndFlagsBits = 0xD000000000000016;
  v25._object = 0x8000000100222940;
  sub_1001F6CA8(v25);
  v26._countAndFlagsBits = 0xA2C4C41455220;
  v26._object = 0xE700000000000000;
  sub_1001F6CA8(v26);
  v27._countAndFlagsBits = 0x5F746375646F7270;
  v27._object = 0xEA00000000006469;
  sub_1001F6CA8(v27);
  v28._object = 0x800000010022E640;
  v28._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v28);
  v29._countAndFlagsBits = 0xD000000000000011;
  v29._object = 0x8000000100222920;
  sub_1001F6CA8(v29);
  v30._countAndFlagsBits = 0xA2C5458455420;
  v30._object = 0xE700000000000000;
  sub_1001F6CA8(v30);
  v31._countAndFlagsBits = 0x6573616863727570;
  v31._object = 0xED0000657461645FLL;
  sub_1001F6CA8(v31);
  v32._object = 0x800000010022E6A0;
  v32._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v32);
  v33._countAndFlagsBits = 0x797469746E617571;
  v33._object = 0xE800000000000000;
  sub_1001F6CA8(v33);
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v34._object = 0x800000010022E6C0;
  sub_1001F6CA8(v34);
  v35._countAndFlagsBits = 0x6574617473;
  v35._object = 0xE500000000000000;
  sub_1001F6CA8(v35);
  v36._countAndFlagsBits = 0xD00000000000001DLL;
  v36._object = 0x800000010022E660;
  sub_1001F6CA8(v36);
  v37._countAndFlagsBits = 0xD000000000000015;
  v37._object = 0x8000000100222970;
  sub_1001F6CA8(v37);
  v38._countAndFlagsBits = 0xA2C5458455420;
  v38._object = 0xE700000000000000;
  sub_1001F6CA8(v38);
  v39._countAndFlagsBits = 1701869940;
  v39._object = 0xE400000000000000;
  sub_1001F6CA8(v39);
  v40._object = 0x800000010022E640;
  v40._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v40);
  v41._countAndFlagsBits = 0x756665725F646964;
  v41._object = 0xEA0000000000646ELL;
  sub_1001F6CA8(v41);
  v42._countAndFlagsBits = 0xD00000000000001DLL;
  v42._object = 0x800000010022E660;
  sub_1001F6CA8(v42);
  v43._countAndFlagsBits = 0x64695F726566666FLL;
  v43._object = 0xE800000000000000;
  sub_1001F6CA8(v43);
  v44._countAndFlagsBits = 0xA2C5458455420;
  v44._object = 0xE700000000000000;
  sub_1001F6CA8(v44);
  v45._object = 0x80000001002229A0;
  v45._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v45);
  v46._countAndFlagsBits = 0xD00000000000001ALL;
  v46._object = 0x800000010022E6E0;
  sub_1001F6CA8(v46);
  qword_1002E61B0 = 0;
  *algn_1002E61B8 = 0xE000000000000000;
}

uint64_t sub_1001E0044()
{
  if (qword_1002AC530 != -1)
  {
    swift_once();
  }

  return sub_100037A2C();
}

id sub_1001E00F0()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  v1 = sub_1001F6B48();
  v2 = sub_1001E7368();
  [v2 v3];

  type metadata accessor for DatabaseSession();
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  type metadata accessor for DatabaseTransaction();
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

uint64_t sub_1001E0198(id a1)
{
  v2 = v1;
  v4 = sub_1001F6288();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7);
  v169 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v143 - v10;
  v164 = sub_1000183C4(&unk_1002BCC30, &qword_10021B3F8);
  __chkstk_darwin(v164);
  v163 = &v143 - v12;
  v156 = sub_1001F61C8();
  sub_10001A278();
  v14 = v13;
  __chkstk_darwin(v15);
  v144 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  __chkstk_darwin(v17 - 8);
  v143 = &v143 - v18;
  v155 = &v175;
  v153 = (v14 + 104);
  v152 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v170 = v6 + 16;
  v162 = (v6 + 32);
  v154 = v6;
  v159 = (v6 + 8);
  v19 = 1;
  v20 = &selRef__receiptAttributeWithCoder_type_version_data_;
  *(&v21 + 1) = 6;
  v151 = xmmword_100208B20;
  *&v21 = 136315394;
  v157 = v21;
  v146 = a1;
  v145 = v2;
  v161 = v4;
  v158 = v11;
  while (2)
  {
    switch(sub_1001DF434([a1 v20[64]]))
    {
      case 1u:
        sub_10012F3D4();
        v121 = swift_allocObject();
        *(v121 + 16) = v2;
        v177 = sub_1001E5A04;
        v178 = v121;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v122;
        v176 = &unk_100295D88;
        _Block_copy(&aBlock);
        sub_1001E7158();
        goto LABEL_32;
      case 2u:
        sub_10012F3D4();
        v115 = swift_allocObject();
        *(v115 + 16) = v2;
        v177 = sub_1001E59EC;
        v178 = v115;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v116;
        v176 = &unk_100295D38;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:15000 usingBlock:v19];
        goto LABEL_38;
      case 3u:
        sub_10012F3D4();
        v117 = swift_allocObject();
        *(v117 + 16) = v2;
        v177 = sub_1001E59D4;
        v178 = v117;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v118;
        v176 = &unk_100295CE8;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:15001 usingBlock:v19];
        goto LABEL_38;
      case 4u:
        sub_10012F3D4();
        v109 = swift_allocObject();
        *(v109 + 16) = v2;
        v177 = sub_1001E59BC;
        v178 = v109;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v110;
        v176 = &unk_100295C98;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:15002 usingBlock:v19];
        goto LABEL_38;
      case 5u:
        sub_10012F3D4();
        v123 = swift_allocObject();
        *(v123 + 16) = v2;
        v177 = sub_1001E59A4;
        v178 = v123;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v124;
        v176 = &unk_100295C48;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:15003 usingBlock:v19];
        goto LABEL_38;
      case 6u:
        sub_10012F3D4();
        v127 = swift_allocObject();
        *(v127 + 16) = v2;
        v177 = sub_1001E598C;
        v178 = v127;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v128;
        v176 = &unk_100295BF8;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:15004 usingBlock:v19];
        goto LABEL_38;
      case 7u:
        sub_10012F3D4();
        v119 = swift_allocObject();
        *(v119 + 16) = v2;
        v177 = sub_1001E5974;
        v178 = v119;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v120;
        v176 = &unk_100295BA8;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:15200 usingBlock:v19];
        goto LABEL_38;
      case 8u:
        sub_10012F3D4();
        v131 = swift_allocObject();
        *(v131 + 16) = v2;
        v177 = sub_1001E595C;
        v178 = v131;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v132;
        v176 = &unk_100295B58;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:15400 usingBlock:v19];
        goto LABEL_38;
      case 9u:
        sub_10012F3D4();
        v113 = swift_allocObject();
        *(v113 + 16) = v2;
        v177 = sub_1001E5938;
        v178 = v113;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v114;
        v176 = &unk_100295B08;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:16000 usingBlock:v19];
        goto LABEL_38;
      case 0xAu:
        sub_10012F3D4();
        v129 = swift_allocObject();
        *(v129 + 16) = v2;
        v177 = sub_1001E5920;
        v178 = v129;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v130;
        v176 = &unk_100295AB8;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:16400 usingBlock:v19];
        goto LABEL_38;
      case 0xBu:
        sub_10012F3D4();
        v106 = swift_allocObject();
        *(v106 + 16) = v2;
        v177 = sub_1001E5908;
        v178 = v106;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v107;
        v176 = &unk_100295A68;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:17200 usingBlock:v19];
        goto LABEL_38;
      case 0xCu:
        sub_10012F3D4();
        v111 = swift_allocObject();
        *(v111 + 16) = v2;
        v177 = sub_1001E58F0;
        v178 = v111;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v112;
        v176 = &unk_100295A18;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:18000 usingBlock:v19];
        goto LABEL_38;
      case 0xDu:
        sub_10012F3D4();
        v125 = swift_allocObject();
        *(v125 + 16) = v2;
        v177 = sub_1001E58D8;
        v178 = v125;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v126;
        v176 = &unk_1002959C8;
        _Block_copy(&aBlock);
        sub_1001E7158();
        v108 = [a1 migrateToVersion:18400 usingBlock:v19];
        goto LABEL_38;
      case 0xEu:
        if ((v19 & 1) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_39;
      case 0xFu:
        if (qword_1002AC510 != -1)
        {
          swift_once();
        }

        v138 = sub_1001F6688();
        v139 = sub_100019C94(v138, qword_1002E6180);
        v140 = a1;
        v103 = sub_1001F6668();
        v141 = sub_1001F7298();
        if (sub_100099534(v141))
        {
          v142 = swift_slowAlloc();
          *v142 = 134218240;
          *(v142 + 4) = [v140 v20[64]];

          *(v142 + 12) = 2048;
          *(v142 + 14) = 18400;
          _os_log_impl(&_mh_execute_header, v103, v139, "Error: No database migration for %lld to %lld", v142, 0x16u);
          v136 = v142;
          goto LABEL_44;
        }

        v103 = v140;
        goto LABEL_45;
      default:
        v177 = sub_1001E147C;
        v178 = 0;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v22;
        v176 = &unk_100295DB0;
        v19 = _Block_copy(&aBlock);
LABEL_32:
        v108 = [a1 migrateToVersion:14001 usingBlock:v19];
LABEL_38:
        v133 = v108;
        _Block_release(v19);
        if (v133)
        {
LABEL_39:
          v19 = 1;
LABEL_40:
          if ([a1 v20[64]] >= 18400)
          {
            return v19;
          }

          continue;
        }

LABEL_5:
        if (qword_1002AC510 != -1)
        {
          swift_once();
        }

        v23 = sub_1001F6688();
        v160 = sub_100019C94(v23, qword_1002E6180);
        v24 = v160;
        v25 = sub_1001F6668();
        v26 = sub_1001F72A8();
        if (sub_100099534(v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v24, "Failed to perform migration; retrying with new, empty database…", v27, 2u);
          sub_10003A72C(v27);
        }

        if (qword_1002AC530 != -1)
        {
          swift_once();
        }

        v28 = qword_1002BCB68;
        if (!qword_1002BCB68)
        {
          return 0;
        }

        v29 = qword_1002BCB60;
        v30 = sub_1001DF658();
        if (!v31)
        {
          return 0;
        }

        v171 = v30;
        v149 = v31;
        v166 = sub_1000183C4(&unk_1002BCC40, &qword_100200A08);
        v168 = *(v154 + 72);
        v165 = *(v154 + 80);
        v32 = (v165 + 32) & ~v165;
        v172 = v32;
        v150 = 3 * v168;
        v33 = swift_allocObject();
        *(v33 + 16) = v151;
        v167 = v33;
        v34 = v33 + v32;
        v35 = sub_1000D4818();
        sub_100018460(v35, v36, v37, v161);
        v148 = *v153;
        v38 = v144;
        v39 = v152;
        v40 = v156;
        v148(v144, v152, v156);

        sub_1001F6268();
        aBlock = v29;
        v174 = v28;

        sub_1001E73B4();
        v147 = aBlock;
        v41 = sub_1000D4818();
        v42 = v161;
        sub_100018460(v41, v43, v44, v161);
        v45 = v40;
        v46 = v148;
        v148(v38, v39, v45);
        v47 = v168;
        sub_1001E7320(v147);
        v147 = (v34 + 2 * v47);
        aBlock = v29;
        v174 = v28;
        v48 = v42;

        sub_1001E7394();
        v49 = aBlock;
        v50 = sub_1000D4818();
        v53 = sub_1001E73F4(v50, v51, v52);
        v54 = v156;
        v46(v53, v39, v156);
        sub_1001E7320(v49);
        v55 = swift_allocObject();
        *(v55 + 16) = v151;
        v166 = v55;
        v56 = sub_1000D4818();
        v59 = sub_1001E73F4(v56, v57, v58);
        v46(v59, v39, v54);
        v60 = v149;

        v61 = v171;
        sub_1001E73D4();
        aBlock = v61;
        v174 = v60;

        sub_1001E73B4();
        v62 = aBlock;
        v63 = sub_1000D4818();
        v66 = sub_1001E73F4(v63, v64, v65);
        v46(v66, v39, v156);
        sub_1001E7320(v62);
        aBlock = v171;
        v174 = v60;

        sub_1001E7394();

        v67 = sub_1000D4818();
        v70 = sub_1001E73F4(v67, v68, v69);
        v46(v70, v152, v156);
        v71 = v172;
        sub_1001E73D4();
        v72 = *(v154 + 16);
        v73 = 3;
        v74 = v158;
        v75 = v159;
        v165 = v72;
        do
        {
          v171 = v73;
          v76 = v163;
          v77 = *(v164 + 48);
          v72(v163, &v71[v167], v48);
          v172 = v71;
          v72(&v76[v77], &v71[v166], v48);
          (*v162)(v74, v76, v48);
          v78 = [objc_opt_self() defaultManager];
          sub_1001F6218(v79);
          v81 = v80;
          sub_1001F6218(v82);
          v84 = v83;
          v85 = *v75;
          (*v75)(&v76[v77], v48);
          aBlock = 0;
          LODWORD(v77) = [v78 copyItemAtURL:v81 toURL:v84 error:&aBlock];

          if (v77)
          {
            v86 = aBlock;
          }

          else
          {
            v87 = aBlock;
            sub_1001F61B8();

            swift_willThrow();
            v72(v169, v74, v48);
            swift_errorRetain();
            v88 = sub_1001F6668();
            v89 = sub_1001F7298();

            if (os_log_type_enabled(v88, v89))
            {
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              aBlock = v92;
              *v90 = v157;
              sub_1001E5B84(&qword_1002B2478, &type metadata accessor for URL, &protocol conformance descriptor for URL);
              v93 = sub_1001F7E28();
              v95 = v94;
              v75 = v159;
              v85(v169, v161);
              v96 = sub_1000E4544(v93, v95, &aBlock);
              v48 = v161;

              *(v90 + 4) = v96;
              *(v90 + 12) = 2112;
              swift_errorRetain();
              v97 = _swift_stdlib_bridgeErrorToNSError();
              *(v90 + 14) = v97;
              *v91 = v97;
              _os_log_impl(&_mh_execute_header, v88, v89, "Error backing up corrupted database file (%s): %@", v90, 0x16u);
              sub_10004BDE8(v91, &unk_1002BA650, &unk_100203AA0);
              sub_10003A72C(v91);
              sub_100019CCC(v92);
              sub_10003A72C(v92);
              v98 = v90;
              v74 = v158;
              sub_10003A72C(v98);
            }

            else
            {

              v75 = v159;
              v85(v169, v48);
            }
          }

          v85(v74, v48);
          v71 = &v172[v168];
          v73 = v171 - 1;
          v72 = v165;
        }

        while (v171 != 1);
        swift_setDeallocating();
        sub_1001E57F0();
        swift_setDeallocating();
        sub_1001E57F0();
        sub_10012F3D4();
        v99 = swift_allocObject();
        v2 = v145;
        *(v99 + 16) = v145;
        v177 = sub_1001E58A8;
        v178 = v99;
        aBlock = _NSConcreteStackBlock;
        sub_1001E6C60();
        v175 = v100;
        v176 = &unk_100295978;
        _Block_copy(&aBlock);
        sub_1001E7158();
        a1 = v146;
        v101 = [v146 migrateToVersion:0 usingBlock:v71];
        _Block_release(v71);
        v102 = v160;
        v103 = sub_1001F6668();
        if (v101)
        {
          v104 = sub_1001F7288();
          if (sub_100099534(v104))
          {
            v105 = swift_slowAlloc();
            *v105 = 0;
            _os_log_impl(&_mh_execute_header, v103, v102, "Successfully reset database to schema version 0; retrying migration to current version…", v105, 2u);
            sub_10003A72C(v105);
          }

          v19 = 0;
          v20 = &selRef__receiptAttributeWithCoder_type_version_data_;
          goto LABEL_40;
        }

        v134 = sub_1001F72A8();
        if (sub_100099534(v134))
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&_mh_execute_header, v103, v102, "Couldn’t reset to schema version 0; something is very wrong!", v135, 2u);
          v136 = v135;
LABEL_44:
          sub_10003A72C(v136);
        }

LABEL_45:

        return 0;
    }
  }
}

void sub_1001E147C(void *a1)
{
  if (qword_1002AC548 != -1)
  {
    swift_once();
  }

  v2 = sub_1001F6B48();
  [a1 executeStatement:v2];
}

void sub_1001E1510(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1001E1578(void *a1)
{
  v186 = [a1 connection];
  v199 = _swiftEmptyArrayStorage;
  v198 = 0;
  sub_1001F77B8(16);

  sub_1001E6F98();
  v185 = type metadata accessor for TransactionEntity();
  v4 = [v185 databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  v200._countAndFlagsBits = v1;
  v200._object = v2;
  sub_1001F6CA8(v200);

  v5 = sub_1001F6B48();

  sub_10004794C();
  v6 = swift_allocObject();
  *(v6 + 16) = &v198;
  *(v6 + 24) = &v199;
  sub_10004794C();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E5A1C;
  *(v7 + 24) = v6;
  v196 = sub_1001E5A24;
  v197 = v7;
  aBlock = _NSConcreteStackBlock;
  v193 = 1107296256;
  v194 = sub_1001DF340;
  v195 = &unk_100295E28;
  v8 = _Block_copy(&aBlock);

  v9 = sub_1001E7368();
  [v9 v10];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
LABEL_76:
    swift_once();
    goto LABEL_4;
  }

  if (v198)
  {
LABEL_73:

    goto LABEL_74;
  }

  sub_1001E7020();
  aBlock = v11;
  v193 = v12;
  v13 = [v185 databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  v201._countAndFlagsBits = v7;
  v201._object = v8;
  sub_1001F6CA8(v201);

  v14 = sub_1001F6B48();

  [a1 executeStatement:v14];

  if (qword_1002AC548 != -1)
  {
    goto LABEL_76;
  }

LABEL_4:
  v15 = sub_1001F6B48();
  v16 = sub_1001E7368();
  [v16 v17];

  v18 = v199;
  v19 = v199[2];
  if (!v19)
  {
    goto LABEL_73;
  }

  v174 = v6;
  sub_1001E6D68();
  v183 = "ty";
  v187 = "ion_date";
  v188 = "subscription_period";
  v180 = 0x8000000100221B90;
  v181 = "up_id";

  v182 = 0;
  v28 = 4;
  v178 = xmmword_1001FE9E0;
  v184 = v18;
  do
  {
    v29 = v18[v28];
    v195 = &type metadata for Bool;
    LOBYTE(aBlock) = 0;
    sub_1001E7218(v20, v21, v22, v23, v24, v25, v26, v27, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191);

    swift_isUniquelyReferenced_nonNull_native();
    v190 = v29;
    sub_1001E70C8();
    v30 = v29;
    sub_1001F13E8(1701869940, 0xE400000000000000, v29);
    if (v195)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v191._countAndFlagsBits == 0xD000000000000015 && v180 == v191._object)
      {

LABEL_18:
        v33 = v187;
        goto LABEL_19;
      }

      v32 = sub_1001F7EA8();

      v33 = v187;
      if ((v32 & 1) == 0)
      {
        v34 = sub_1001E7040();
        sub_1001F13E8(v34, v35, v29);
        v36 = v195;
        v37 = sub_1001E6DC8();
        if (v36)
        {
          v195 = &type metadata for Bool;
          LOBYTE(aBlock) = 1;
          sub_1001E7218(v37, v38, v39, v40, v41, v42, v43, v44, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1001E6D58();
          sub_1001E70C8();
          v30 = v190;
        }
      }
    }

    else
    {
      sub_1001E6DC8();
      v33 = v187;
    }

LABEL_19:
    v45 = sub_1001E6F30(0x6D6F7270u);
    sub_1001F13E8(v45, v46, v30);
    if (v195)
    {
      sub_1001E6E20(v47, v48, v49, v50, v51, v52, v53, v54, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191._countAndFlagsBits);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_1001F5E88();
      swift_allocObject();
      sub_1001F5E78();
      _s10AdHocOfferCMa();
      sub_1001E5B84(&qword_1002AD588, _s10AdHocOfferCMa, &unk_100211BA0);
      sub_1001F5E68();
      if (v182)
      {

        sub_1001E7410();

        v182 = 0;
LABEL_23:
        sub_1001E6D68();
        v33 = v187;
        goto LABEL_25;
      }

      v182 = 0;

      v162 = aBlock;
      sub_1001E6D98();
      if (!v195)
      {
        sub_1001E7410();

        sub_1001E6DC8();
        goto LABEL_23;
      }

      if (swift_dynamicCast())
      {
        v163 = *(v162 + 104);
        v176 = *(v162 + 96);
        v195 = &type metadata for Transaction.RenewalType;
        v164 = swift_allocObject();
        aBlock = v164;
        *(v164 + 16) = v191;
        *(v164 + 32) = v176;
        *(v164 + 40) = v163;
        *(v164 + 48) = 1;
        sub_1001E7218(v164, v165, v166, v167, v168, v169, v170, v171, v173, v174, v176, v191._object, v178, *(&v178 + 1), v179, v180, v181, 0, v183, v184, v185, v186, v187, v188, v189, v190, *&v191);

        swift_isUniquelyReferenced_nonNull_native();
        sub_1001E6D58();
        sub_1001E7260();
        sub_1001E7410();

        v30 = v190;
        sub_1001E6D68();
        v33 = v187;
        goto LABEL_31;
      }

      sub_1001E7410();

      sub_1001E6D68();
      v33 = v187;
    }

    else
    {
      sub_1001E6DC8();
    }

LABEL_25:
    v55 = sub_1001E6F30(0x72746E69u);
    sub_1001F13E8(v55, v56, v30);
    v57 = v195;
    sub_1001E6DC8();
    if (v57)
    {
      sub_1001E6D98();
      if (v195)
      {
        sub_1001E6E20(v58, v59, v60, v61, v62, v63, v64, v65, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191._countAndFlagsBits);
        if (swift_dynamicCast())
        {
          aBlock = 0x3A6F72746E69;
          v193 = 0xE600000000000000;
          sub_1001F6CA8(v191);

          v195 = type metadata for String;
          sub_1001E7218(v66, v67, v68, v69, v70, v71, v72, v73, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1001E6D58();
          sub_1001E7260();
          v30 = v190;
        }

        sub_1001E6D68();
      }

      else
      {
        sub_1001E6DC8();
      }
    }

LABEL_31:
    v74 = sub_1001E6F30(0x6D6F7270u);
    sub_10011108C(v74);
    if (v75)
    {
      sub_1001E733C();
      sub_1001E6E50();
      sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
      sub_1001E6E10();
      sub_1001E6D68();
      sub_1001F7A98(v76, v30);
      sub_1001E6E30();
      sub_1001E6CF4();
      sub_1001F7AB8();
    }

    else
    {
      sub_1001E72C8();
    }

    sub_1001E6DC8();
    v77 = sub_1001E6F30(0x72746E69u);
    sub_10011108C(v77);
    if (v78)
    {
      sub_1001E733C();
      sub_1001E6E50();
      sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
      v79 = sub_1001E6E10();
      sub_1001F7A98(v79, v30);
      sub_1001E6E30();
      sub_1001E6CF4();
      sub_1001F7AB8();
    }

    else
    {
      sub_1001E72C8();
    }

    sub_1001E6DC8();
    sub_1001F13E8(0xD000000000000017, v188 | 0x8000000000000000, v30);
    if (v195)
    {
      sub_1001E6E20(v80, v81, v82, v83, v84, v85, v86, v87, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191._countAndFlagsBits);
      if (swift_dynamicCast())
      {
        sub_1000183C4(&qword_1002ADB80, &qword_1002008B0);
        v88 = swift_allocObject();
        *(v88 + 16) = v178;
        *(v88 + 32) = v191;
        *(v88 + 48) = 0;
        *(v88 + 56) = 0;
        *(v88 + 64) = 4;
        v89 = sub_1000183C4(&unk_1002BCC60, &qword_10021B400);
        v195 = v89;
        aBlock = v88;
LABEL_40:
        sub_1001E7218(v89, v90, v91, v92, v93, v94, v95, v96, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1001E6D58();
        sub_1001E5A4C();
        v30 = v190;
        goto LABEL_49;
      }
    }

    else
    {
      sub_1001E6DC8();
    }

    v97 = sub_1001E6FF4();
    sub_1001F13E8(v97, v98, v30);
    if (!v195)
    {
      goto LABEL_48;
    }

    sub_1001E6E20(v99, v100, v101, v102, v103, v104, v105, v106, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191._countAndFlagsBits);
    if ((swift_dynamicCast() & 1) == 0 || v191._countAndFlagsBits < 1)
    {
      goto LABEL_49;
    }

    sub_1001E6D98();
    if (v195)
    {
      sub_1001E6E20(v107, v108, v109, v110, v111, v112, v113, v114, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191._countAndFlagsBits);
      if (swift_dynamicCast())
      {
        v195 = &type metadata for Transaction.RenewalType;
        v89 = swift_allocObject();
        aBlock = v89;
        *(v89 + 16) = v191;
        *(v89 + 32) = 0;
        *(v89 + 40) = 0;
        *(v89 + 48) = 4;
        goto LABEL_40;
      }
    }

    else
    {
LABEL_48:
      sub_1001E6DC8();
    }

LABEL_49:
    sub_10011108C(0xD000000000000017);
    if (v115)
    {
      sub_1001E733C();
      sub_1001E6E50();
      sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
      v116 = sub_1001E6E10();
      sub_1001F7A98(v116, v30);
      sub_1001E6E30();
      sub_1001E6CF4();
      sub_1001F7AB8();
    }

    else
    {
      sub_1001E72C8();
    }

    sub_1001E6DC8();
    v117 = sub_1001E6FF4();
    sub_10011108C(v117);
    if (v118)
    {
      sub_1001E733C();
      sub_1001E6E50();
      sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
      v119 = sub_1001E6E10();
      sub_1001F7A98(v119, v30);
      sub_1001E6E30();
      sub_1001E6CF4();
      sub_1001F7AB8();
    }

    else
    {
      sub_1001E72C8();
    }

    sub_1001E6DC8();
    sub_10011108C(0xD000000000000013);
    if (v120)
    {
      sub_1001E733C();
      sub_1001E6E50();
      sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
      v121 = sub_1001E6E10();
      sub_1001F7A98(v121, v30);
      sub_1001E6E30();
      sub_1001E6CF4();
      sub_1001F7AB8();
    }

    else
    {
      sub_1001E72C8();
    }

    sub_1001E6D68();
    sub_1001E6DC8();
    sub_1001F13E8(0x64656873696E6966, 0xE800000000000000, v30);
    v122 = v195;
    v123 = sub_1001E6DC8();
    if (!v122)
    {
      v195 = &type metadata for Int;
      aBlock = 0;
      sub_1001E7218(v123, v124, v125, v126, v127, v128, v129, v130, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1001E6D58();
      sub_1001E5A4C();
      v30 = v190;
    }

    sub_1001F13E8(0xD000000000000012, v33 | 0x8000000000000000, v30);
    v131 = v195;
    v132 = sub_1001E6DC8();
    if (!v131)
    {
      v195 = &type metadata for Int;
      aBlock = 0;
      sub_1001E7218(v132, v133, v134, v135, v136, v137, v138, v139, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1001E6D58();
      sub_1001E5A4C();
      v30 = v190;
    }

    sub_1001F13E8(0x797469746E617571, 0xE800000000000000, v30);
    v140 = v195;
    v141 = sub_1001E6DC8();
    if (!v140)
    {
      v195 = &type metadata for Int;
      aBlock = 0;
      sub_1001E7218(v141, v142, v143, v144, v145, v146, v147, v148, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1001E6D58();
      sub_1001E5A4C();
      v30 = v190;
    }

    sub_1001F13E8(0x6574617473, 0xE500000000000000, v30);
    v149 = v195;
    v150 = sub_1001E6DC8();
    if (!v149)
    {
      v195 = &type metadata for Int;
      aBlock = 0;
      sub_1001E7218(v150, v151, v152, v153, v154, v155, v156, v157, v173, v174, v175, v177, v178, *(&v178 + 1), v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, *&v191);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1001E6D58();
      sub_1001E5A4C();
      v30 = v190;
    }

    sub_1001DEFAC(v30);
    v159 = v158;
    v160 = v186;
    v161 = sub_10013F590(v159, v160);

    ++v28;
    --v19;
    v18 = v184;
  }

  while (v19);

LABEL_74:
}

void sub_1001E25B0()
{
  sub_1001E6CD0();
  sub_1001F77B8(55);
  sub_1001E6F60();
  v0 = [type metadata accessor for TransactionEntity() databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  sub_1001812F0();

  v23._countAndFlagsBits = sub_1001E6C7C();
  sub_1001F6CA8(v23);
  v24._countAndFlagsBits = sub_1001E7354();
  v24._object = 0xEB00000000646564;
  sub_1001F6CA8(v24);
  sub_1001E6D20();
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1001F6CA8(v25);
  sub_1001E7080(v1, v2, v3, v4, v5, v6, v7, v8, v16, v18, v21);
  v9 = sub_1001E719C();
  sub_1001E7200(v9, "executeStatement:", v10, v11, v12, v13, v14, v15, v17, v19);
}

void sub_1001E2684()
{
  sub_1001E6CD0();
  sub_1001F77B8(36);

  sub_1001E6C9C();
  v0 = [sub_1001E7308() databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  sub_1001812F0();

  v23._countAndFlagsBits = sub_1001E6C7C();
  sub_1001F6CA8(v23);
  sub_1001E6D20();
  v24._countAndFlagsBits = 0xD000000000000016;
  sub_1001F6CA8(v24);
  sub_1001E6E60();
  sub_1001E7080(v1, v2, v3, v4, v5, v6, v7, v8, v16, v18, v21);
  v9 = sub_1001E719C();
  sub_1001E7200(v9, "executeStatement:", v10, v11, v12, v13, v14, v15, v17, v19);
}

void sub_1001E2748()
{
  sub_1001E6CD0();
  sub_1001F77B8(58);
  sub_1001E6F60();
  v0 = [type metadata accessor for TransactionEntity() databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  sub_1001812F0();

  v23._countAndFlagsBits = sub_1001E6C7C();
  sub_1001F6CA8(v23);
  sub_1001810E8();
  v24._countAndFlagsBits = 0xD000000000000015;
  sub_1001F6CA8(v24);
  sub_1001810E8();
  sub_1001F6CA8(v25);
  sub_1001E7080(v1, v2, v3, v4, v5, v6, v7, v8, v16, v18, v21);
  v9 = sub_1001E719C();
  sub_1001E7200(v9, "executeStatement:", v10, v11, v12, v13, v14, v15, v17, v19);
}

void sub_1001E2828()
{
  sub_1001E6CD0();
  sub_1001F77B8(36);

  sub_1001E6C9C();
  v0 = [sub_1001E7308() databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  sub_1001812F0();

  v23._countAndFlagsBits = sub_1001E6C7C();
  sub_1001F6CA8(v23);
  sub_1001E6D20();
  v24._countAndFlagsBits = 0xD000000000000011;
  sub_1001F6CA8(v24);
  sub_1001E6E60();
  sub_1001E7080(v1, v2, v3, v4, v5, v6, v7, v8, v16, v18, v21);
  v9 = sub_1001E719C();
  sub_1001E7200(v9, "executeStatement:", v10, v11, v12, v13, v14, v15, v17, v19);
}

uint64_t sub_1001E2CB4(void *a1)
{
  v2 = v1;
  sub_1001F77B8(33);

  sub_1001E6C9C();
  v21 = v4;
  v22 = v5;
  v6 = type metadata accessor for TransactionEntity();
  v7 = [v6 databaseTable];
  v8 = sub_1001F6B58();
  v10 = v9;

  v27._countAndFlagsBits = v8;
  v27._object = v10;
  sub_1001F6CA8(v27);

  v28._countAndFlagsBits = sub_1001E6C7C();
  sub_1001F6CA8(v28);
  v29._object = 0x8000000100222AF0;
  v29._countAndFlagsBits = 0xD00000000000001ELL;
  sub_1001F6CA8(v29);
  v30._countAndFlagsBits = sub_1001E6F00();
  v30._object = 0xE500000000000000;
  sub_1001F6CA8(v30);
  v11 = sub_1001F6B48();

  [a1 executeStatement:v11];

  sub_1001F77B8(16);

  sub_1001E6F98();
  v14 = [v6 databaseTable];
  sub_1001F6B58();
  sub_1001E72B0();
  v31._countAndFlagsBits = v6;
  v31._object = v11;
  sub_1001F6CA8(v31);

  v15 = sub_1001F6B48();

  sub_10004794C();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1;
  sub_10004794C();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1001E677C;
  *(v17 + 24) = v16;
  v25 = sub_1001E6BA0;
  v26 = v17;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1001DF340;
  v24 = &unk_100295F40;
  v18 = _Block_copy(&v21);
  v19 = a1;

  [v19 executeOptionalQuery:v15 withResults:v18];

  _Block_release(v18);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

void sub_1001E2F64()
{
  sub_1001E6CD0();
  sub_1001F77B8(36);

  sub_1001E6C9C();
  v0 = [sub_1001E7308() databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  sub_1001812F0();

  v23._countAndFlagsBits = sub_1001E6C7C();
  sub_1001F6CA8(v23);
  sub_1001E6D20();
  v24._countAndFlagsBits = 0xD000000000000014;
  sub_1001F6CA8(v24);
  sub_1001E6E60();
  sub_1001E7080(v1, v2, v3, v4, v5, v6, v7, v8, v16, v18, v21);
  v9 = sub_1001E719C();
  sub_1001E7200(v9, "executeStatement:", v10, v11, v12, v13, v14, v15, v17, v19);
}

void sub_1001E3028()
{
  sub_1001E6CD0();
  sub_1001F77B8(35);

  sub_1001E6C9C();
  v0 = [sub_1001E7308() databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  sub_1001812F0();

  v23._countAndFlagsBits = sub_1001E6C7C();
  sub_1001F6CA8(v23);
  sub_1001E6D20();
  v24._countAndFlagsBits = 0xD000000000000012;
  sub_1001F6CA8(v24);
  sub_1001E6D30();
  sub_1001E7080(v1, v2, v3, v4, v5, v6, v7, v8, v16, v18, v21);
  v9 = sub_1001E719C();
  sub_1001E7200(v9, "executeStatement:", v10, v11, v12, v13, v14, v15, v17, v19);
}

void sub_1001E38D8()
{
  sub_1001E6CD0();
  sub_1001F77B8(35);

  sub_1001E6C9C();
  v0 = [sub_1001E7308() databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  sub_1001812F0();

  v23._countAndFlagsBits = sub_1001E6C7C();
  sub_1001F6CA8(v23);
  v24._countAndFlagsBits = 0x65705F726566666FLL;
  v24._object = 0xEC000000646F6972;
  sub_1001F6CA8(v24);
  sub_1001E6D30();
  sub_1001E7080(v1, v2, v3, v4, v5, v6, v7, v8, v16, v18, v21);
  v9 = sub_1001E719C();
  sub_1001E7200(v9, "executeStatement:", v10, v11, v12, v13, v14, v15, v17, v19);
}

void sub_1001E39A8(uint64_t a1)
{
  sub_1001E7020();
  v1 = [sub_1001E7308() databaseTable];
  sub_1001F6B58();
  sub_1001E71B4();
  sub_1001812F0();

  sub_1001E7080(v2, v3, v4, v5, v6, v7, v8, v9, v17, v19, v22);
  v10 = sub_1001E719C();
  sub_1001E7200(v10, "executeStatement:", v11, v12, v13, v14, v15, v16, v18, v20);
}

void sub_1001E3A74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    a3 = swift_allocObject();
    *(a3 + 16) = a4;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1001E6704;
    *(v15 + 24) = a3;
    aBlock[4] = sub_1001E6724;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001DF298;
    aBlock[3] = &unk_100295EC8;
    v16 = _Block_copy(aBlock);
    v6 = a1;

    [v6 enumerateRowsUsingBlock:v16];

    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_9:

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v5 = sub_1001F6688();
  sub_100019C94(v5, qword_1002E6180);
  swift_errorRetain();
  v6 = sub_1001F6668();
  v7 = sub_1001F7298();

  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_9;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  aBlock[0] = v9;
  *v8 = 136446210;
  swift_getErrorValue();
  v10 = sub_1001F7FE8();
  v12 = sub_1000E4544(v10, v11, aBlock);

  *(v8 + 4) = v12;
  _os_log_impl(&_mh_execute_header, v6, v7, "Failed to read from current table: %{public}s", v8, 0xCu);
  sub_100019CCC(v9);

LABEL_10:
  *a3 = 1;
}

void sub_1001E3D44(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 dictionaryWithValuesForColumns];
    v7 = sub_1001F6998();

    sub_10003204C();
    v8 = *(*a4 + 16);
    sub_100032250(v8);

    v9 = *a4;
    *(v9 + 16) = v8 + 1;
    *(v9 + 8 * v8 + 32) = v7;
  }
}

void sub_1001E3DE8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v4 = sub_1001F6688();
    sub_100019C94(v4, qword_1002E6180);
    swift_errorRetain();
    v5 = sub_1001F6668();
    v6 = sub_1001F7298();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30[0] = v8;
      *v7 = 136446210;
      swift_getErrorValue();
      v9 = sub_1001F7FE8();
      v11 = sub_1000E4544(v9, v10, v30);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "[DatabaseStore.self migrate15400To16000(migrator:)] Failed to read from current table: %{public}s", v7, 0xCu);
      sub_100019CCC(v8);
    }

    else
    {
    }
  }

  else if (a1)
  {
    v13 = a1;
    v30[0] = sub_1001F69B8();
    v28 = _swiftEmptyArrayStorage;
    v29 = sub_1001F69B8();
    __chkstk_darwin(v29);
    v22[6] = &v29;
    v22[7] = v30;
    v22[8] = &v28;
    __chkstk_darwin(v14);
    v22[2] = sub_1001E6A54;
    v22[3] = v15;
    v23 = v13;
    sub_1001E5384(sub_1001E6A60, v22);
    v24 = v28;
    v17 = v28[2];
    if (v17)
    {
      v18 = (v24 + 5);
      *&v16 = 136446210;
      v25 = v16;
      v26 = a4;
      do
      {
        sub_1001E4360(*(v18 - 1), a4, *v18);
        v18 += 2;
        --v17;
      }

      while (v17);
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v19 = sub_1001F6688();
    sub_100019C94(v19, qword_1002E6180);
    v27 = sub_1001F6668();
    v20 = sub_1001F7298();
    if (os_log_type_enabled(v27, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v27, v20, "[DatabaseStore.self migrate15400To16000(migrator:)] No results found for SQL query desipte not encountering an explicit error", v21, 2u);
    }
  }
}

uint64_t sub_1001E4360(uint64_t a1, id a2, double a3)
{
  v5 = [a2 connection];
  sub_1001F77B8(59);
  v21._countAndFlagsBits = 0x20455441445055;
  v21._object = 0xE700000000000000;
  sub_1001F6CA8(v21);
  v6 = [type metadata accessor for TransactionEntity() databaseTable];
  v7 = sub_1001F6B58();
  v9 = v8;

  v22._countAndFlagsBits = v7;
  v22._object = v9;
  sub_1001F6CA8(v22);

  v23._object = 0x800000010022E760;
  v23._countAndFlagsBits = 0xD00000000000002CLL;
  sub_1001F6CA8(v23);
  v24._countAndFlagsBits = 25705;
  v24._object = 0xE200000000000000;
  sub_1001F6CA8(v24);
  v25._countAndFlagsBits = 1059077408;
  v25._object = 0xE400000000000000;
  sub_1001F6CA8(v25);
  v10 = sub_1001F6B48();

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a1;
  v12 = swift_allocObject();
  v12[2] = sub_1001E6A98;
  v12[3] = v11;
  aBlock[4] = sub_1001E6C5C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DF3E0;
  aBlock[3] = &unk_100295FB8;
  v13 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v14 = [v5 executeStatement:v10 error:aBlock bindings:v13];
  _Block_release(v13);

  isEscapingClosureAtFileLocation = aBlock[0];
  if (v14)
  {
    v16 = aBlock[0];

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v18 = isEscapingClosureAtFileLocation;
  sub_1001F61B8();

  swift_willThrow();

  v19 = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  return result;
}

id sub_1001E4678(void *a1, uint64_t a2)
{
  result = [a1 bindDouble:1 atPosition:?];
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {

    return [a1 bindInt64:a2 atPosition:2];
  }

  return result;
}

void sub_1001E46D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v6 = sub_1001F6688();
    sub_100019C94(v6, qword_1002E6180);
    swift_errorRetain();
    v7 = sub_1001F6668();
    v8 = sub_1001F7298();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v45[0] = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = sub_1001F7FE8();
      v13 = sub_1000E4544(v11, v12, v45);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "[DatabaseStore.self executeRSSDMigrationLogic(results:updateHandler:)] Error while enumerating table rows: %{public}s", v9, 0xCu);
      sub_100019CCC(v10);
    }

    else
    {
    }

    return;
  }

  if (a1)
  {
    v17 = sub_1001E5498(&off_10027DC00);
    sub_1001F13E8(0xD000000000000015, 0x8000000100222970, v17);
    if (!v45[3])
    {

      sub_10004BDE8(v45, &qword_1002B34A0, &qword_1002009E0);
      return;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    sub_1001F13E8(25705, 0xE200000000000000, v17);
    if (swift_dynamicCast())
    {
      sub_1001F13E8(0x6573616863727570, 0xED0000657461645FLL, v17);
      if (swift_dynamicCast())
      {
        v18 = v43;
        sub_1001F13E8(0x6974617269707865, 0xEF657461645F6E6FLL, v17);
        if (swift_dynamicCast())
        {
          v19 = COERCE_DOUBLE(sub_1001F1394(*&v43, v44, *a4));
          if (v20)
          {
            sub_1001F13E8(0xD000000000000016, 0x8000000100222940, v17);
            if (swift_dynamicCast())
            {
              v18 = v43;
            }

            goto LABEL_48;
          }

          if (v43 - v19 >= 5184000.0)
          {
LABEL_48:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v45[0] = *a5;
            sub_1001E6594(*&v43, v44, isUniquelyReferenced_nonNull_native, v18);
            *a5 = v45[0];
LABEL_49:
            v35 = swift_isUniquelyReferenced_nonNull_native();
            v45[0] = *a4;
            sub_1001E6594(*&v43, v44, v35, v43);
            *a4 = v45[0];
            v36 = sub_1001F1394(*&v43, v44, *a5);
            if (v37)
            {
              __break(1u);
            }

            else
            {
              v38 = v36;

              sub_100032174();
              v39 = *(*a6 + 16);
              sub_100032358();
              v40 = *a6;
              *(v40 + 16) = v39 + 1;
              v41 = v40 + 16 * v39;
              *(v41 + 32) = v43;
              *(v41 + 40) = v38;
            }

            return;
          }

          if (*(*a5 + 16))
          {

            sub_10011108C(*&v43);
            v32 = v31;

            if (v32)
            {
              goto LABEL_49;
            }
          }

          if (qword_1002AC510 != -1)
          {
            swift_once();
          }

          v33 = sub_1001F6688();
          sub_100019C94(v33, qword_1002E6180);
          v25 = sub_1001F6668();
          v26 = sub_1001F7298();
          if (!os_log_type_enabled(v25, v26))
          {
LABEL_40:

            return;
          }

          v27 = swift_slowAlloc();
          *v27 = 0;
          v28 = "[DatabaseStore.self executeRSSDMigrationLogic(results:updateHandler:)] Unexpectedly didn’t find a cached RSSD for a group ID that already has an associated cached ED";
        }

        else
        {

          if (qword_1002AC510 != -1)
          {
            swift_once();
          }

          v30 = sub_1001F6688();
          sub_100019C94(v30, qword_1002E6180);
          v25 = sub_1001F6668();
          v26 = sub_1001F7298();
          if (!os_log_type_enabled(v25, v26))
          {
            goto LABEL_40;
          }

          v27 = swift_slowAlloc();
          *v27 = 0;
        }
      }

      else
      {

        if (qword_1002AC510 != -1)
        {
          swift_once();
        }

        v29 = sub_1001F6688();
        sub_100019C94(v29, qword_1002E6180);
        v25 = sub_1001F6668();
        v26 = sub_1001F7298();
        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_40;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
      }
    }

    else
    {

      if (qword_1002AC510 != -1)
      {
        swift_once();
      }

      v24 = sub_1001F6688();
      sub_100019C94(v24, qword_1002E6180);
      v25 = sub_1001F6668();
      v26 = sub_1001F7298();
      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_40;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
    }

    _os_log_impl(&_mh_execute_header, v25, v26, v28, v27, 2u);

    goto LABEL_40;
  }

  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v21 = sub_1001F6688();
  sub_100019C94(v21, qword_1002E6180);
  oslog = sub_1001F6668();
  v22 = sub_1001F7298();
  if (os_log_type_enabled(oslog, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
  }
}

id sub_1001E4FE8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DatabaseStore();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

id sub_1001E5060(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DatabaseStore();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1001E50B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DatabaseStore();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001E5114(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10004794C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_10004794C();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E6AA4;
  *(v7 + 24) = v6;
  v10[4] = sub_1001E6AAC;
  v10[5] = v7;
  sub_1001E6E88();
  v10[1] = 1107296256;
  v10[2] = sub_1001E558C;
  v10[3] = &unk_100296080;
  v8 = _Block_copy(v10);

  [v3 readUsingSession:v8];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E524C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10004794C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_10004794C();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E6B18;
  *(v7 + 24) = v6;
  v10[4] = sub_1001E6B20;
  v10[5] = v7;
  sub_1001E6E88();
  v10[1] = 1107296256;
  v10[2] = sub_1001E5648;
  v10[3] = &unk_1002960F8;
  v8 = _Block_copy(v10);

  [v3 modifyUsingTransaction:v8];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E5384(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_1001E6C58;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001DF298;
  v9[3] = &unk_100296008;
  v6 = _Block_copy(v9);

  [v2 enumerateRowsUsingBlock:v6];
  _Block_release(v6);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E5498(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_1001F6F18().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 dictionaryWithValuesForColumnNames:v2.super.isa];

  v4 = sub_1001F6998();
  return v4;
}

uint64_t sub_1001E5524(void *a1, void (*a2)(void *))
{
  v6[3] = type metadata accessor for DatabaseSession();
  v6[4] = &off_100287978;
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_100019CCC(v6);
}

void sub_1001E558C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1001E55D8(void *a1, uint64_t (*a2)(void *))
{
  v6[3] = type metadata accessor for DatabaseTransaction();
  v6[4] = &off_100294D38;
  v6[0] = a1;
  v4 = a1;
  LOBYTE(a2) = a2(v6);
  sub_100019CCC(v6);
  return a2 & 1;
}

uint64_t sub_1001E5648(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1001E56B4()
{
  swift_arrayDestroy();
  sub_1001E6F20();

  return swift_deallocClassInstance();
}

uint64_t sub_1001E572C(uint64_t *a1, uint64_t *a2)
{
  sub_1000183C4(a1, a2);
  swift_arrayDestroy();
  sub_1001E6F20();

  return swift_deallocClassInstance();
}

uint64_t sub_1001E5774()
{
  swift_arrayDestroy();
  sub_1001E6F20();

  return swift_deallocClassInstance();
}

uint64_t sub_1001E57B0()
{
  swift_arrayDestroy();
  sub_1001E6F20();

  return swift_deallocClassInstance();
}

uint64_t sub_1001E57F0()
{
  sub_1001F6288();
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

void *sub_1001E5868(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_1001E58C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001E5A4C()
{
  sub_100037AEC();
  sub_1001E71E8();
  v5 = sub_1001E6F10(v3, v4);
  sub_10011108C(v5);
  sub_1001E6CBC();
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1001F7FC8();
    __break(1u);
    return;
  }

  sub_1001E7374();
  v7 = sub_1000183C4(&unk_1002BCC50, &qword_10020A110);
  if (sub_1001E6DE4(v7))
  {
    v8 = sub_1001E71F4();
    sub_10011108C(v8);
    sub_1001E6F50();
    if (!v10)
    {
      goto LABEL_14;
    }

    v2 = v9;
  }

  if (v1)
  {
    sub_100019CCC((*(*v0 + 56) + 32 * v2));
    sub_100037A2C();
    sub_100037A50();

    sub_10003708C(v11, v12);
  }

  else
  {
    sub_1001E7240();
    sub_1001E66C0(v14, v15, v16, v17, v18);
    sub_100037A50();
  }
}

uint64_t sub_1001E5B44()
{
  sub_100099050(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1001E5B84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1001E5BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100037AEC();
  sub_1001E7288(v14, v15);
  sub_1001E6CBC();
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = sub_1001F7FC8();
    __break(1u);
    return result;
  }

  sub_100087324();
  v17 = sub_1000183C4(&qword_1002B70E0, &qword_10021B450);
  if (sub_1001E6EE0(v17))
  {
    sub_1001110F0(v10);
    sub_1001E6F40();
    if (!v19)
    {
      goto LABEL_14;
    }

    v13 = v18;
  }

  if (v12)
  {
    sub_100019CCC((*(*v11 + 56) + 32 * v13));
    sub_100037A2C();
    sub_100037A50();

    return sub_10003708C(v20, v21);
  }

  else
  {
    sub_100037A50();

    return sub_1001E6784(v24, v25, v26, v27);
  }
}

void sub_1001E5CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  sub_10011108C(a3);
  sub_1001E6CBC();
  if (v15)
  {
    __break(1u);
LABEL_14:
    sub_1001F7FC8();
    __break(1u);
    return;
  }

  v16 = v13;
  v17 = v14;
  sub_1000183C4(&unk_1002BCC80, &qword_10020C130);
  if (sub_1001F7A98(a5 & 1, v12))
  {
    sub_10011108C(a3);
    sub_1001E7250();
    if (!v19)
    {
      goto LABEL_14;
    }

    v16 = v18;
  }

  v20 = *v6;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = a1;
    v21[1] = a2;
    sub_100037B00();
  }

  else
  {
    sub_1001E67EC(v16, a3, a4, a1, a2, v20);
    sub_100037B00();
  }
}

unint64_t sub_1001E5DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100037AEC();
  v16 = sub_1001E7060(v13, v14, v15);
  sub_100111164(v16);
  sub_1001E6CBC();
  if (v19)
  {
    __break(1u);
LABEL_14:
    result = sub_1001F7FC8();
    __break(1u);
    return result;
  }

  v20 = v17;
  v21 = v18;
  v22 = sub_1000183C4(&qword_1002BA558, &qword_10021B430);
  if (sub_1001E6DE4(v22))
  {
    v23 = sub_1001E71F4();
    sub_100111164(v23);
    sub_1001E7250();
    if (!v25)
    {
      goto LABEL_14;
    }

    v20 = v24;
  }

  if (v21)
  {
    v26 = *(*v12 + 56) + 16 * v20;
    *v26 = v11;
    *(v26 + 8) = v10;
    *(v26 + 12) = HIDWORD(v10);
    sub_100037A50();

    return j__swift_release(v27);
  }

  else
  {
    sub_100037A50();

    return sub_1001E6838(v30, v31, v32, v33, v34);
  }
}

unint64_t sub_1001E5ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100037AEC();
  sub_1001E71CC(v14, v15);
  sub_100112888();
  sub_1001E6CBC();
  if (v16)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for ASDOctaneEventType(0);
    result = sub_1001F7FC8();
    __break(1u);
    return result;
  }

  sub_100087324();
  v17 = sub_1000183C4(&qword_1002BCD08, &qword_10021B490);
  if (sub_1001E6EE0(v17))
  {
    sub_100112888();
    sub_1001E6F40();
    if (!v19)
    {
      goto LABEL_14;
    }

    v13 = v18;
  }

  if (v12)
  {
    *(*(*v11 + 56) + 8 * v13) = v10;
    sub_100037A50();
  }

  else
  {
    sub_100037A50();

    return sub_1001E6894(v22, v23, v24, v25);
  }
}

void sub_1001E5FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100037AEC();
  sub_1001E71CC(v14, v15);
  sub_100112888();
  sub_1001E6CBC();
  if (v16)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for ASDOctaneValueIdentifier(0);
    sub_1001F7FC8();
    __break(1u);
    return;
  }

  sub_100087324();
  v17 = sub_1000183C4(&qword_1002BCD00, &qword_100202908);
  if (sub_1001E6EE0(v17))
  {
    sub_100112888();
    sub_1001E6F40();
    if (!v19)
    {
      goto LABEL_12;
    }

    v13 = v18;
  }

  if (v12)
  {
    *(*(*v11 + 56) + 8 * v13) = v10;
    sub_100037A50();
  }

  else
  {
    sub_100037A50();

    sub_1001E6894(v20, v21, v22, v23);
  }
}

unint64_t sub_1001E607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100037AEC();
  sub_1001E7060(v15, v16, v17);
  sub_100112888();
  sub_1001E6CBC();
  if (v18)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for ASDOctaneValueIdentifier(0);
    result = sub_1001F7FC8();
    __break(1u);
    return result;
  }

  sub_1001E7374();
  v19 = sub_1000183C4(&qword_1002BCCF8, &unk_10021B480);
  if (sub_1001E6DE4(v19))
  {
    sub_1001E71F4();
    sub_100112888();
    sub_1001E6F50();
    if (!v21)
    {
      goto LABEL_14;
    }

    v14 = v20;
  }

  if (v13)
  {
    v22 = (*(*v12 + 56) + 16 * v14);
    *v22 = v11;
    v22[1] = v10;
    sub_100037A50();
  }

  else
  {
    sub_1001E7240();
    sub_100037A50();

    return sub_1001E68D8(v25, v26, v27, v28, v29);
  }
}

void sub_1001E617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1001E71E8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_1001E6F10(v15, v13);
  sub_10011108C(v17);
  sub_1001E6CBC();
  if (v18)
  {
    __break(1u);
LABEL_14:
    sub_1001F7FC8();
    __break(1u);
    return;
  }

  sub_1001E7374();
  v19 = sub_1000183C4(a5, a6);
  if (sub_1001E6DE4(v19))
  {
    v20 = sub_1001E71F4();
    sub_10011108C(v20);
    sub_1001E6F50();
    if (!v22)
    {
      goto LABEL_14;
    }

    v8 = v21;
  }

  v23 = *v6;
  if (v7)
  {
    *(*(v23 + 56) + 8 * v8) = v16;
    sub_100037B00();
  }

  else
  {
    sub_1001E6964(v8, v14, v12, v16, v23);
    sub_100037B00();
  }
}

unint64_t sub_1001E627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100037AEC();
  sub_1001E7288(v15, v16);
  sub_1001E6CBC();
  if (v17)
  {
    __break(1u);
LABEL_14:
    result = sub_1001F7FC8();
    __break(1u);
    return result;
  }

  sub_100087324();
  v18 = sub_1000183C4(&qword_1002BCCD0, &qword_10021B458);
  if (sub_1001E6EE0(v18))
  {
    sub_1001110F0(v11);
    sub_1001E6F40();
    if (!v20)
    {
      goto LABEL_14;
    }

    v14 = v19;
  }

  if (v13)
  {
    *(*(*v12 + 56) + 8 * v14) = v10;
    sub_100037A50();
  }

  else
  {
    sub_100037A50();

    return sub_1001E6920(v23, v24, v25, v26);
  }
}

void sub_1001E637C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1001E71E8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_1001E6F10(v15, v13);
  sub_10011108C(v17);
  sub_1001E6CBC();
  if (v18)
  {
    __break(1u);
LABEL_14:
    sub_1001F7FC8();
    __break(1u);
    return;
  }

  sub_1001E7374();
  v19 = sub_1000183C4(a5, a6);
  if (sub_1001E6DE4(v19))
  {
    v20 = sub_1001E71F4();
    sub_10011108C(v20);
    sub_1001E6F50();
    if (!v22)
    {
      goto LABEL_14;
    }

    v8 = v21;
  }

  v23 = *v6;
  if (v7)
  {
    *(*(v23 + 56) + 8 * v8) = v16;
    sub_100037B00();
  }

  else
  {
    sub_1001E6964(v8, v14, v12, v16, v23);
    sub_100037B00();
  }
}

uint64_t sub_1001E6490()
{
  sub_100037AEC();
  sub_1001E71E8();
  v3 = sub_1001E6F10(v1, v2);
  sub_1001111A8(v3);
  sub_1001E6CBC();
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1001F7FC8();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  v9 = sub_1000183C4(&qword_1002BCCB0, &qword_10021B438);
  if (sub_1001E6DE4(v9))
  {
    v10 = sub_1001E71F4();
    sub_1001111A8(v10);
    sub_1001E7250();
    if (!v12)
    {
      goto LABEL_14;
    }

    v7 = v11;
  }

  if (v8)
  {
    sub_100019CCC((*(*v0 + 56) + 40 * v7));
    sub_100037A2C();
    sub_100037A50();

    return sub_100103BD8(v13, v14);
  }

  else
  {
    sub_1001E7240();
    sub_1001E6994(v17, v18, v19, v20, v21);
    sub_100037A50();

    return sub_10005E2E0(v22, v23);
  }
}

void sub_1001E6594(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10011108C(a1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_1000183C4(&qword_1002BCC78, &unk_10021B418);
  if (!sub_1001F7A98(a3 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10011108C(a1);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_1001F7FC8();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a4;
  }

  else
  {
    sub_1001E6A04(v16, a1, a2, v20, a4);
  }
}

_OWORD *sub_1001E66C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1001E7128(a1, a2, a3, a4, a5);
  result = sub_10003708C(v8, (v7 + 32 * v6));
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

uint64_t sub_1001E674C()
{
  v1 = sub_1001E6F20();

  return _swift_deallocObject(v1, v2, v3);
}

_OWORD *sub_1001E6784(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_10003708C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1001E67EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1001E6838(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  *(v5 + 12) = HIDWORD(a4);
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1001E6894(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1001E68D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1001E6920(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1001E6964(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1001E7128(a1, a2, a3, a4, a5);
  *(v8 + 8 * result) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v11;
  }

  return result;
}

uint64_t sub_1001E6994(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100103BD8(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1001E6A04(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1001E6A60(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1001E6AD4()
{
  result = qword_1002BCC98;
  if (!qword_1002BCC98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002BCC98);
  }

  return result;
}

void sub_1001E6D30()
{
  v1._countAndFlagsBits = 0x474E4952545320;
  v1._object = 0xE700000000000000;

  sub_1001F6CA8(v1);
}

void sub_1001E6D78()
{
  v2._countAndFlagsBits = v0;
  v2._object = 0xEA00000000000A2CLL;

  sub_1001F6CA8(v2);
}

double sub_1001E6D98()
{

  return sub_1001F13E8(0x5F746375646F7270, 0xEA00000000006469, v0);
}

uint64_t sub_1001E6DC8()
{

  return sub_10004BDE8(v2 - 160, v1, v0);
}

BOOL sub_1001E6DE4(uint64_t a1)
{

  return sub_1001F7A98(v2 & 1, v1);
}

uint64_t sub_1001E6E30()
{
}

void sub_1001E6E60()
{
  v1._countAndFlagsBits = 0x52454745544E4920;
  v1._object = 0xE800000000000000;

  sub_1001F6CA8(v1);
}

void sub_1001E6EA8()
{
  v2._countAndFlagsBits = v0;
  v2._object = 0xE700000000000000;

  sub_1001F6CA8(v2);
}

void sub_1001E6EC4(Swift::String a1)
{
  a1._countAndFlagsBits = 0xD000000000000010;

  sub_1001F6CA8(a1);
}

BOOL sub_1001E6EE0(uint64_t a1)
{

  return sub_1001F7A98(v2 & 1, v1);
}

void sub_1001E6F60()
{
  v1._countAndFlagsBits = 0x4154205245544C41;
  v1._object = 0xEC00000020454C42;

  sub_1001F6CA8(v1);
}

void sub_1001E6FBC()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_1001F6CA8(v3);
}

void sub_1001E6FD8()
{

  v4._countAndFlagsBits = v1 | v0;
  v4._object = (v2 | 0x8000000000000000);
  sub_1001F6CA8(v4);
}

NSString sub_1001E7080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_1001F6B48();
}

void sub_1001E7098()
{
  v1._countAndFlagsBits = 0x735F736568737570;
  v1._object = 0xEB00000000746E65;

  sub_1001F6CA8(v1);
}

void sub_1001E70C8()
{

  sub_1001E5A4C();
}

void sub_1001E70F8()
{
  v1._countAndFlagsBits = 0x6470755F7473616CLL;
  v1._object = 0xEC00000064657461;

  sub_1001F6CA8(v1);
}

unint64_t sub_1001E7128(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_1001E7158()
{
}

void sub_1001E7170()
{
  v1._countAndFlagsBits = 0x6F726665726F7473;
  v1._object = 0xEA0000000000746ELL;

  sub_1001F6CA8(v1);
}

uint64_t sub_1001E719C()
{
}

void sub_1001E71B4()
{
}

id sub_1001E7200(int a1, const char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return [v10 a2];
}

_OWORD *sub_1001E7218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27)
{

  return sub_10003708C((v27 - 160), &a27);
}

void sub_1001E7260()
{

  sub_1001E5A4C();
}

unint64_t sub_1001E7288(uint64_t a1, uint64_t a2)
{

  return sub_1001110F0(a2);
}

void sub_1001E72B0()
{
}

double sub_1001E72C8()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

void sub_1001E72D4(uint64_t a1)
{
  v2._countAndFlagsBits = a1 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
  v2._object = 0xE500000000000000;

  sub_1001F6CA8(v2);
}

id sub_1001E72F0()
{
  v3 = *(v1 + 576);

  return [v0 v3];
}

uint64_t sub_1001E7308()
{

  return type metadata accessor for TransactionEntity();
}

uint64_t sub_1001E7320(uint64_t a1)
{

  return sub_1001F6268();
}

uint64_t sub_1001E733C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1001E7394()
{
  v1._countAndFlagsBits = 1818326829;
  v1._object = 0xE400000000000000;

  sub_1001F6CA8(v1);
}

void sub_1001E73B4()
{
  v1._countAndFlagsBits = 1835561773;
  v1._object = 0xE400000000000000;

  sub_1001F6CA8(v1);
}

uint64_t sub_1001E73D4()
{

  return sub_1001F6268();
}

uint64_t sub_1001E7410()
{

  return sub_10003A380(v0, v1);
}

uint64_t sub_1001E74B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001E75D0(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x4B65746176697270;
  }

  return 0x654B63696C627570;
}

uint64_t sub_1001E7624(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BCE18, &qword_10021B640);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_10001AE68(a1, a1[3]);
  sub_1001E7AB8();
  sub_1001F8198();
  v10[15] = 0;
  sub_10005DBC4();
  sub_1001F7D88();
  if (!v1)
  {
    v10[14] = 1;
    sub_10005DBC4();
    sub_1001F7D88();
    v10[13] = 2;
    sub_10005DBC4();
    sub_1001F7D18();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1001E778C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BCE08, &qword_10021B638);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1001E7AB8();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  v27 = 0;
  v11 = sub_1001F7C78();
  v24 = v12;
  v26 = 1;
  v22 = sub_1001F7C78();
  v23 = v13;
  v25 = 2;
  v14 = sub_1001F7C08();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = sub_100019CCC(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_1001E79BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001E74B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001E79E4(uint64_t a1)
{
  v2 = sub_1001E7AB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E7A20(uint64_t a1)
{
  v2 = sub_1001E7AB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001E7A5C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001E778C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1001E7AB8()
{
  result = qword_1002BCE10;
  if (!qword_1002BCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneKeyPair.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001E7BD8);
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

unint64_t sub_1001E7C14()
{
  result = qword_1002BCE20;
  if (!qword_1002BCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE20);
  }

  return result;
}

unint64_t sub_1001E7C6C()
{
  result = qword_1002BCE28;
  if (!qword_1002BCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE28);
  }

  return result;
}

unint64_t sub_1001E7CC4()
{
  result = qword_1002BCE30;
  if (!qword_1002BCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BCE30);
  }

  return result;
}

uint64_t sub_1001E7D18(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002BD038, &qword_10021B978);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  *(v1 + 64) = 1363432531;
  *(v1 + 72) = 0xE400000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  sub_10001AE68(a1, a1[3]);
  sub_1001E8EA4();
  sub_1001F8178();
  if (v2)
  {

    type metadata accessor for OctaneIAP();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22) = 0;
    *(v1 + 16) = sub_1001F7C78();
    *(v1 + 24) = v12;
    sub_1001E91D0(1);
    *(v1 + 32) = sub_1001F7C88() & 1;
    sub_1001E91D0(2);
    *(v1 + 40) = sub_1001F7C78();
    *(v1 + 48) = v13;
    sub_1000183C4(&qword_1002B7D88, &qword_10021B980);
    v21 = 3;
    sub_1001E8EF8(&qword_1002B7D90, &qword_1002B7D98, &unk_1002182D4, &protocol conformance descriptor for <A> [A]);
    sub_1001F7CB8();
    *(v1 + 56) = v22;
    sub_1001E91D0(4);
    *(v1 + 80) = sub_1001F7C78();
    *(v1 + 88) = v14;
    sub_1001E91D0(5);
    *(v1 + 96) = sub_1001F7C08();
    *(v1 + 104) = v15;

    v21 = 6;
    sub_1000789EC();
    sub_1001F7CB8();
    *(v1 + 112) = v22;
    sub_1001E91D0(7);
    v16 = sub_1001F7C08();
    v17 = v10;
    v19 = v18;
    (*(v7 + 8))(v17, v5);
    *(v3 + 120) = v16;
    *(v3 + 128) = v19;
  }

  sub_100019CCC(a1);
  return v3;
}

uint64_t sub_1001E8100(void *a1)
{
  v2 = v1;
  sub_1000183C4(&qword_1002BD048, &unk_10021B988);
  sub_10001A278();
  __chkstk_darwin(v4);
  sub_10001AE68(a1, a1[3]);
  sub_1001E8EA4();
  sub_1001F8198();
  v5 = v2[2];

  sub_1001E91E8();
  sub_1001F7D88();
  if (v5 || (, sub_10001E6C8(), sub_1001F7D98(), v9 = v2[5], , sub_1001E91E8(), sub_1001F7D88(), v9) || (, sub_1000183C4(&qword_1002B7D88, &qword_10021B980), sub_1001E8EF8(&qword_1002B7DC0, &qword_1002B7DC8, &unk_1002182AC, &protocol conformance descriptor for <A> [A]), sub_10001E6C8(), sub_1001F7DC8(), v10 = v2[10], , sub_1001E91E8(), sub_1001F7D88(), v10) || (, v11 = v2[12], , sub_1001E91E8(), sub_1001F7D18(), v11))
  {
    v6 = sub_1001E9204();
    v7(v6);
  }

  else
  {

    sub_100078C1C();
    sub_10001E6C8();
    sub_1001F7DC8();

    sub_10001E6C8();
    sub_1001F7D18();
    v12 = sub_1001E9204();
    v13(v12);
  }
}

uint64_t sub_1001E8400()
{

  return v0;
}

uint64_t sub_1001E8450()
{
  v1 = v0[13];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v0[12];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
LABEL_5:
    v2 = v0[10];
  }

  return v2;
}

uint64_t sub_1001E84A8()
{
  v0 = sub_1000183C4(&qword_1002AE9F0, &unk_1002076A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1001F65B8();
  sub_100018460(v2, 1, 1, v3);

  v4 = sub_1001F7448();
  v6 = v5;

  sub_1001643F0(v2);
  if ((v6 & 0x100000000) != 0)
  {
    sub_1001F7408(v7, 0.0);
    return v8;
  }

  return v4;
}

uint64_t sub_1001E859C(uint64_t a1, uint64_t a2)
{
  result = sub_1001E9214();
  switch(v3)
  {
    case 1:
      result = 0x75736E6F436E6F4ELL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001E8640(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100278E40;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001E86B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E8640(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001E86E0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1001E859C(*v2, a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1001E87BC(uint64_t a1, uint64_t a2)
{
  result = sub_1001E9214();
  switch(v3)
  {
    case 1:
      result = 0x736E6F432D6E6F4ELL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001E8868()
{
  sub_1001E8400();

  return swift_deallocClassInstance();
}

uint64_t sub_1001E88C0(void *a1)
{
  v2 = swift_allocObject();
  sub_1001E7D18(a1);
  return v2;
}

_BYTE *storeEnumTagSinglePayload for OctaneIAPType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001E89DCLL);
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

unint64_t sub_1001E8A18()
{
  result = qword_1002BD028;
  if (!qword_1002BD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD028);
  }

  return result;
}

unint64_t sub_1001E8A6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027DC70;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001E8AC0(char a1)
{
  result = 0x5079616C70736964;
  switch(a1)
  {
    case 1:
      result = 0x6853796C696D6166;
      break;
    case 2:
      result = 0x6C616E7265746E69;
      break;
    case 3:
      result = 0x617A696C61636F6CLL;
      break;
    case 4:
      result = 0x49746375646F7270;
      break;
    case 5:
      result = 0x636E657265666572;
      break;
    case 6:
      result = 1701869940;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001E8BF4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 424))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1001E8CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E8A6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001E8CD0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001E8AC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001E8D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001E8AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001E8D40(uint64_t a1)
{
  v2 = sub_1001E8EA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E8D7C(uint64_t a1)
{
  v2 = sub_1001E8EA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001E8DB8(uint64_t a1, uint64_t a2)
{
  if ((sub_1000E7B34(*(a1 + 112), *(a2 + 112)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  return sub_1001F7EA8();
}

unint64_t sub_1001E8E50()
{
  result = qword_1002BD030;
  if (!qword_1002BD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD030);
  }

  return result;
}

unint64_t sub_1001E8EA4()
{
  result = qword_1002BD040;
  if (!qword_1002BD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD040);
  }

  return result;
}

uint64_t sub_1001E8EF8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B7D88, &qword_10021B980);
    sub_1001E8F80(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001E8F80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OctaneLocalization();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OctaneIAP.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x1001E9090);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001E90CC()
{
  result = qword_1002BD050;
  if (!qword_1002BD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD050);
  }

  return result;
}

unint64_t sub_1001E9124()
{
  result = qword_1002BD058;
  if (!qword_1002BD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD058);
  }

  return result;
}

unint64_t sub_1001E917C()
{
  result = qword_1002BD060;
  if (!qword_1002BD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD060);
  }

  return result;
}

void sub_1001E9238()
{
  v27 = *v0;
  if (*(&v27 + 1))
  {
    sub_10018EE5C();
    if (v2)
    {
      if ((*(&v27 + 1) & 0x1000000000000000) != 0)
      {
        sub_10004F684(&v27, v26);
        v24 = sub_10012F960();
        sub_1001ED558(v24, v25, 10);
        sub_10018E9C4(&v27);
        return;
      }

      if ((*(&v27 + 1) & 0x2000000000000000) != 0)
      {
        sub_10018EE74();
        if (v6)
        {
          if (v10)
          {
            if (v10 != 1)
            {
              sub_10005B084();
              while (1)
              {
                sub_100027240();
                if (!v6 & v5)
                {
                  break;
                }

                sub_10018EDCC();
                if (!v6 || __OFADD__(v17, v16))
                {
                  break;
                }

                sub_10002727C();
                if (v6)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_70;
          }

          goto LABEL_77;
        }

        if (v11 != 45)
        {
          if (v10)
          {
            while (1)
            {
              sub_100027240();
              if (!v6 & v5)
              {
                break;
              }

              sub_10018EDCC();
              if (!v6 || __OFADD__(v23, v22))
              {
                break;
              }

              sub_10002727C();
              if (v6)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

        if (v10)
        {
          if (v10 != 1)
          {
            sub_10005B084();
            while (1)
            {
              sub_100027240();
              if (!v6 & v5)
              {
                break;
              }

              sub_10018EDCC();
              if (!v6 || __OFSUB__(v13, v12))
              {
                break;
              }

              sub_10002727C();
              if (v6)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }
      }

      else
      {
        if ((v0 & 0x1000000000000000) != 0)
        {
          v3 = ((*(&v27 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_10012F960();
          v3 = sub_1001F7858();
        }

        v4 = *v3;
        if (v4 == 43)
        {
          if (v1 >= 1)
          {
            if (v1 != 1)
            {
              if (v3)
              {
                sub_10018EE30();
                while (1)
                {
                  sub_100027240();
                  if (!v6 & v5)
                  {
                    goto LABEL_70;
                  }

                  sub_10018EDCC();
                  if (!v6 || __OFADD__(v15, v14))
                  {
                    goto LABEL_70;
                  }

                  sub_10002727C();
                  if (v6)
                  {
                    goto LABEL_71;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_70;
          }

          goto LABEL_76;
        }

        if (v4 != 45)
        {
          if (v1)
          {
            if (v3)
            {
              while (*v3 - 48 <= 9)
              {
                sub_10018EE0C();
                if (!v6 || __OFADD__(v21, v20))
                {
                  break;
                }

                v3 = (v18 + 1);
                if (v19 == 1)
                {
                  goto LABEL_61;
                }
              }

              goto LABEL_70;
            }

            goto LABEL_61;
          }

LABEL_70:
          v9 = 1;
          goto LABEL_71;
        }

        if (v1 >= 1)
        {
          if (v1 != 1)
          {
            if (v3)
            {
              sub_10018EE30();
              while (1)
              {
                sub_100027240();
                if (!v6 & v5)
                {
                  goto LABEL_70;
                }

                sub_10018EDCC();
                if (!v6 || __OFSUB__(v8, v7))
                {
                  goto LABEL_70;
                }

                sub_10002727C();
                if (v6)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_61:
            v9 = 0;
LABEL_71:
            v26[16] = v9;
            return;
          }

          goto LABEL_70;
        }

        __break(1u);
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }
  }
}

void sub_1001E947C()
{
  v27 = *(v0 + 16);
  if (*(&v27 + 1))
  {
    sub_10018EE5C();
    if (v2)
    {
      if ((*(&v27 + 1) & 0x1000000000000000) != 0)
      {
        sub_10004F684(&v27, v26);
        v24 = sub_10012F960();
        sub_1001ED558(v24, v25, 10);
        sub_10018E9C4(&v27);
        return;
      }

      if ((*(&v27 + 1) & 0x2000000000000000) != 0)
      {
        sub_10018EE74();
        if (v6)
        {
          if (v10)
          {
            if (v10 != 1)
            {
              sub_10005B084();
              while (1)
              {
                sub_100027240();
                if (!v6 & v5)
                {
                  break;
                }

                sub_10018EDCC();
                if (!v6 || __OFADD__(v17, v16))
                {
                  break;
                }

                sub_10002727C();
                if (v6)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_70;
          }

          goto LABEL_77;
        }

        if (v11 != 45)
        {
          if (v10)
          {
            while (1)
            {
              sub_100027240();
              if (!v6 & v5)
              {
                break;
              }

              sub_10018EDCC();
              if (!v6 || __OFADD__(v23, v22))
              {
                break;
              }

              sub_10002727C();
              if (v6)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

        if (v10)
        {
          if (v10 != 1)
          {
            sub_10005B084();
            while (1)
            {
              sub_100027240();
              if (!v6 & v5)
              {
                break;
              }

              sub_10018EDCC();
              if (!v6 || __OFSUB__(v13, v12))
              {
                break;
              }

              sub_10002727C();
              if (v6)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }
      }

      else
      {
        if ((v0 & 0x1000000000000000) != 0)
        {
          v3 = ((*(&v27 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_10012F960();
          v3 = sub_1001F7858();
        }

        v4 = *v3;
        if (v4 == 43)
        {
          if (v1 >= 1)
          {
            if (v1 != 1)
            {
              if (v3)
              {
                sub_10018EE30();
                while (1)
                {
                  sub_100027240();
                  if (!v6 & v5)
                  {
                    goto LABEL_70;
                  }

                  sub_10018EDCC();
                  if (!v6 || __OFADD__(v15, v14))
                  {
                    goto LABEL_70;
                  }

                  sub_10002727C();
                  if (v6)
                  {
                    goto LABEL_71;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_70;
          }

          goto LABEL_76;
        }

        if (v4 != 45)
        {
          if (v1)
          {
            if (v3)
            {
              while (*v3 - 48 <= 9)
              {
                sub_10018EE0C();
                if (!v6 || __OFADD__(v21, v20))
                {
                  break;
                }

                v3 = (v18 + 1);
                if (v19 == 1)
                {
                  goto LABEL_61;
                }
              }

              goto LABEL_70;
            }

            goto LABEL_61;
          }

LABEL_70:
          v9 = 1;
          goto LABEL_71;
        }

        if (v1 >= 1)
        {
          if (v1 != 1)
          {
            if (v3)
            {
              sub_10018EE30();
              while (1)
              {
                sub_100027240();
                if (!v6 & v5)
                {
                  goto LABEL_70;
                }

                sub_10018EDCC();
                if (!v6 || __OFSUB__(v8, v7))
                {
                  goto LABEL_70;
                }

                sub_10002727C();
                if (v6)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_61:
            v9 = 0;
LABEL_71:
            v26[16] = v9;
            return;
          }

          goto LABEL_70;
        }

        __break(1u);
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }
  }
}

unint64_t sub_1001E96C0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027DD50;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001E970C(char a1)
{
  result = 1684632420;
  switch(a1)
  {
    case 1:
      result = 0x496D616441707061;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001E97A0(void *a1)
{
  v3 = sub_1000183C4(&qword_1002BD078, &qword_10021BBA0);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_10001AE68(a1, a1[3]);
  sub_1001E9DFC();
  sub_1001F8198();
  v10[15] = 0;
  sub_10005DBC4();
  sub_1001F7D18();
  if (!v1)
  {
    v10[14] = 1;
    sub_10005DBC4();
    sub_1001F7D18();
    v10[13] = 2;
    sub_10005DBC4();
    sub_1001F7D88();
    v10[12] = 3;
    sub_10005DBC4();
    sub_1001F7D88();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1001E9928@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002BD068, &qword_10021BB98);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1001E9DFC();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  LOBYTE(v34[0]) = 0;
  sub_1001EA074();
  v11 = sub_1001F7C08();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  sub_1001EA074();
  v13 = sub_1001F7C08();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = sub_1001F7C78();
  v27 = v15;
  v35 = 3;
  sub_1001EA074();
  v16 = sub_1001F7C78();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_1000207E4(&v30, v34);
  sub_100019CCC(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_100020840(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

unint64_t sub_1001E9BFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E96C0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001E9C2C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001E970C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001E9C60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001E96C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001E9C88(uint64_t a1)
{
  v2 = sub_1001E9DFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001E9CC4(uint64_t a1)
{
  v2 = sub_1001E9DFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1001E9D00@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001E9928(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1001E9D5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1001E9D9C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1001E9DFC()
{
  result = qword_1002BD070;
  if (!qword_1002BD070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD070);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StatusRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1001E9F1CLL);
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

unint64_t sub_1001E9F58()
{
  result = qword_1002BD080;
  if (!qword_1002BD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD080);
  }

  return result;
}

unint64_t sub_1001E9FB0()
{
  result = qword_1002BD088;
  if (!qword_1002BD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD088);
  }

  return result;
}

unint64_t sub_1001EA008()
{
  result = qword_1002BD090;
  if (!qword_1002BD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD090);
  }

  return result;
}

uint64_t sub_1001EA170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v8 = *v4;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  sub_1000287AC();
  v12 = v11;
  ObjectType = swift_getObjectType();
  LOBYTE(v12) = (*(v12 + 16))(ObjectType, v12);
  swift_unknownObjectRelease();
  sub_1000287AC();
  if (v12)
  {
    v15 = v14;
    v16 = swift_getObjectType();
    v17 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[1], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel+SocketOptionProvider.swift", 140, 2, 24, v16, &type metadata for ()[1], v15);
    swift_unknownObjectRelease();

    sub_1001EA084(v26, a2, a3, a4);
    sub_1000A13B0(0);
  }

  else
  {
    v24 = v14;
    v25 = swift_getObjectType();
    (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
    v18 = a2;
    v19 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = *(v8 + 80);
    *(v20 + 24) = a4;
    *(v20 + 32) = *(v8 + 88);
    *(v20 + 40) = v4;
    *(v20 + 48) = v26;
    *(v20 + 52) = v18;
    (*(v9 + 32))(v20 + v19, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    v21 = v24;
    v22 = *(v24 + 32);

    v17 = v22(sub_1001EA7AC, v20, &type metadata for ()[1], v25, v21);
    swift_unknownObjectRelease();
  }

  return v17;
}

uint64_t sub_1001EA450(int a1, int a2, uint64_t a3)
{
  sub_1000287AC();
  v8 = v7;
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);
  swift_unknownObjectRelease();
  sub_1000287AC();
  v12 = v11;
  v13 = swift_getObjectType();
  if (v10)
  {
    v14 = EventLoop.makePromise<A>(of:file:line:)(a3, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel+SocketOptionProvider.swift", 140, 2, 44, v13, a3, v12);
    v15 = swift_unknownObjectRelease();
    __chkstk_darwin(v15);
    v21[2] = a3;
    v21[3] = v3;
    v22 = a1;
    v23 = a2;

    sub_100029C10(v16, sub_1001EA6C4, v21, a3);

    return v14;
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = v3;
    *(v18 + 32) = a1;
    *(v18 + 36) = a2;
    v19 = *(v12 + 32);

    v20 = v19(sub_1001EA810, v18, a3, v13, v12);
    swift_unknownObjectRelease();

    return v20;
  }
}

uint64_t sub_1001EA68C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001EA6F0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001EA828(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001EA840(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1001EA880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1001EA8E8()
{
  v0 = sub_1001F5FE8();
  v58 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000183C4(&qword_1002B70B0, &qword_1002198D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v50 - v7;

  sub_1001F6018();

  sub_1001C6118(v8, v5);
  v9 = sub_1001F6028();
  if (sub_10001C990(v5, 1, v9) == 1)
  {
    sub_1001C6188(v5);
LABEL_22:
    v14 = sub_1001F69B8();
    goto LABEL_23;
  }

  v10 = sub_1001F5FF8();
  v11 = *(*(v9 - 8) + 8);
  v12 = v9;
  v13 = v10;
  v11(v5, v12);
  if (!v13)
  {
    goto LABEL_22;
  }

  v50 = v8;
  v14 = sub_1001F69B8();
  v57 = *(v13 + 16);
  if (!v57)
  {
LABEL_21:

    v8 = v50;
LABEL_23:
    sub_1001C6188(v8);
    return v14;
  }

  v15 = 0;
  v56 = v13 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
  v54 = v2;
  v55 = v58 + 16;
  v52 = v0;
  v53 = v58 + 8;
  v51 = v13;
  while (v15 < *(v13 + 16))
  {
    (*(v58 + 16))(v2, v56 + *(v58 + 72) * v15, v0);
    v16 = sub_1001F5FC8();
    v18 = v17;
    v19 = sub_1001F5FD8();
    if (v20)
    {
      v2 = v20;
      v21 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v14;
      v23 = sub_10011108C(v16);
      v25 = v14[2];
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_25;
      }

      v28 = v23;
      v29 = v24;
      sub_1000183C4(&unk_1002BCC80, &qword_10020C130);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v27))
      {
        v30 = sub_10011108C(v16);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_27;
        }

        v28 = v30;
      }

      if (v29)
      {

        v14 = v59;
        v32 = (v59[7] + 16 * v28);
        *v32 = v21;
        v32[1] = v2;

        v33 = sub_1001EB534();
        v0 = v52;
        v34(v33, v52);
      }

      else
      {
        v14 = v59;
        v59[(v28 >> 6) + 8] |= 1 << v28;
        v42 = (v14[6] + 16 * v28);
        *v42 = v16;
        v42[1] = v18;
        v43 = (v14[7] + 16 * v28);
        *v43 = v21;
        v43[1] = v2;
        v44 = sub_1001EB534();
        v0 = v52;
        v45(v44, v52);
        v46 = v14[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_26;
        }

        v14[2] = v48;
      }

      v13 = v51;
    }

    else
    {
      v35 = v13;
      sub_10011108C(v16);
      v37 = v36;

      if (v37)
      {
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v59 = v14;
        v39 = v14[3];
        sub_1000183C4(&unk_1002BCC80, &qword_10020C130);
        sub_1001F7A98(v38, v39);
        v14 = v59;

        sub_1001F7AB8();
      }

      v40 = sub_1001EB534();
      v41(v40, v0);
      v13 = v35;
    }

    if (v57 == ++v15)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1001F7FC8();
  __break(1u);
  return result;
}

uint64_t sub_1001EADD8()
{
  v0._object = 0x8000000100227920;
  v0._countAndFlagsBits = 0xD00000000000001FLL;
  v2 = HTTPHeaders.first(name:)(v0);
  result = v2.value._countAndFlagsBits;
  if (!v2.value._object)
  {
    return 3157553;
  }

  return result;
}

void *sub_1001EAE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = sub_1001F69B8();

  sub_1001A1114(0, 0, 0);
  v17._countAndFlagsBits = 0x2D746E65746E6F43;
  v17._object = 0xEC00000065707954;
  v18 = HTTPHeaders.first(name:)(v17);

  if (v18.value._object)
  {
    v19 = sub_1001EAFE0(v18.value._countAndFlagsBits, v18.value._object);
    v21 = v20;
  }

  else
  {

    v19 = 0;
    v21 = 1;
  }

  if (a6)
  {
    v22 = a8;
  }

  else
  {
    v22 = 0;
  }

  v23 = a7;
  if (!a6)
  {
    v23 = 0;
  }

  __src[0] = v19;
  __src[1] = v21;
  __src[2] = a1;
  __src[3] = a2;
  __src[4] = a3;
  __src[5] = a4;
  LOBYTE(__src[6]) = a5;
  __src[7] = 0;
  __src[8] = 0;
  __src[9] = a6;
  __src[10] = v23;
  LODWORD(__src[11]) = v22;
  BYTE6(__src[11]) = BYTE6(v22);
  WORD2(__src[11]) = WORD2(v22);
  __src[12] = v16;
  v29[0] = v19;
  v29[1] = v21;
  v29[2] = a1;
  v29[3] = a2;
  v29[4] = a3;
  v29[5] = a4;
  v30 = a5;
  v31 = 0;
  v32 = 0;
  v33 = a6;
  v34 = v23;
  v37 = BYTE6(v22);
  v36 = WORD2(v22);
  v35 = v22;
  v38 = v16;
  sub_1000593F4(__src, v27);
  sub_1000402B8(v29);
  return memcpy(a9, __src, 0x68uLL);
}

uint64_t sub_1001EAFE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F6BB8();

  v4._object = 0x80000001002227E0;
  v4._countAndFlagsBits = 0xD000000000000010;
  if (sub_1001F6D58(v4) || (v5._countAndFlagsBits = 0xD000000000000019, v5._object = 0x800000010022EA30, sub_1001F6D58(v5)))
  {

    return 0;
  }

  return v2;
}

uint64_t sub_1001EB09C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10011108C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001EB550();
  v8 = *(v7 + 24);
  sub_1000183C4(&unk_1002BCC80, &qword_10020C130);
  sub_1001EB544();
  sub_1001F7A98(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 16 * v5);
  sub_1001F7AB8();
  *v2 = v11;
  return v9;
}

uint64_t sub_1001EB174()
{
  v1 = v0;
  v2 = sub_100112888();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001EB550();
  v7 = *(v6 + 24);
  sub_1000183C4(&qword_1002BCCF8, &unk_10021B480);
  sub_1001EB544();
  sub_1001F7A98(isUniquelyReferenced_nonNull_native, v7);
  v8 = *(*(v10 + 56) + 16 * v4);
  type metadata accessor for ASDOctaneValueIdentifier(0);
  sub_1000504E4();
  sub_1001F7AB8();
  *v1 = v10;
  return v8;
}

uint64_t sub_1001EB298(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = v5;
  v10 = sub_10011108C(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001EB550();
  v15 = *(v14 + 24);
  sub_1000183C4(a3, a4);
  sub_1001EB544();
  sub_1001F7A98(isUniquelyReferenced_nonNull_native, v15);

  v16 = *(*(v18 + 56) + 8 * v12);
  a5(0);
  sub_1001F7AB8();
  *v9 = v18;
  return v16;
}

double sub_1001EB37C@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_1001111A8(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001EB550();
    v9 = *(v8 + 24);
    sub_1000183C4(&qword_1002BCCB0, &qword_10021B438);
    sub_1001EB544();
    sub_1001F7A98(isUniquelyReferenced_nonNull_native, v9);
    sub_10005E2F4(*(*(v11 + 48) + 16 * v6), *(*(v11 + 48) + 16 * v6 + 8));
    sub_100103BD8((*(v11 + 56) + 40 * v6), a1);
    sub_1000183C4(&qword_1002BCC90, &unk_10020FC30);
    sub_100146A98();
    sub_1001F7AB8();
    *v2 = v11;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001EB474(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001EB4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001EB55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 23;
  v6 = sub_100098F08();
  return sub_1001EB668(a1, &v8, a2, &type metadata for TransactionEntity.Key, a3, v6);
}

uint64_t sub_1001EB5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001F7758();
  v6 = sub_1001EB668(a1, v8, a2, &type metadata for AnyHashable, a3, &protocol witness table for AnyHashable);
  sub_10003A1F8(v8);
  return v6;
}

uint64_t sub_1001EB668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = __chkstk_darwin(a1);
  v13 = v8;
  (*(v9 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_1001F6438();
  v12[4] = &type metadata for Double;
  v12[1] = v10;
  sub_1001F69D8();
  sub_1001F69E8();
  return v13;
}

uint64_t getEnumTagSinglePayload for OctaneSubscriptionPeriod(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 9))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 7;
      v2 = v3 - 7;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for OctaneSubscriptionPeriod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void sub_1001EB808(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001F5F48();
  sub_10001A278();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v76[-v11];
  v79 = a1;
  v80 = a2;
  v77 = 32;
  v78 = 0xE100000000000000;
  sub_10001C790();
  v13 = sub_1001F7618();
  if (v13)
  {
    v79 = 32;
    v80 = 0xE100000000000000;
    __chkstk_darwin(v13);
    *&v76[-16] = &v79;
    v14 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100048E80, &v76[-32], a1, a2);
    v15 = v14[2];
    if (v15)
    {
      v79 = _swiftEmptyArrayStorage;
      sub_1000375CC(0, v15, 0);
      v16 = v79;
      v17 = v14 + 7;
      do
      {

        v18 = sub_1001F6BE8();
        v20 = v19;

        v79 = v16;
        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          sub_1000375CC(v21 > 1, v22 + 1, 1);
          v16 = v79;
        }

        v16[2] = v22 + 1;
        v23 = &v16[2 * v22];
        v23[4] = v18;
        v23[5] = v20;
        v17 += 4;
        --v15;
      }

      while (v15);
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
    }

    if (v16[2] == 2)
    {
      sub_1001BFA24(0, 1, v16);

      sub_1001EC3EC();
      if ((v39 & 1) == 0)
      {
        sub_1001BFA24(1uLL, 1, v16);
        v41 = v16[6];
        v40 = v16[7];

        v79 = v41;
        v80 = v40;
        v81._countAndFlagsBits = 115;
        v81._object = 0xE100000000000000;
        v42 = sub_1001F6D68(v81);
        if (v42)
        {
          sub_1001D639C(v42);
        }

        v43 = sub_1001F6BB8();
        v45 = v44;

        sub_1001ED190(v43, v45);
        return;
      }
    }

    goto LABEL_105;
  }

  v79 = a1;
  v80 = a2;
  sub_1001F5F18();
  sub_1001F5F38();
  v24 = *(v6 + 8);
  v24(v12, v4);
  v25 = sub_1001F75E8();
  v27 = v26;
  v24(v9, v4);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v29 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    goto LABEL_105;
  }

  if ((v27 & 0x1000000000000000) != 0)
  {
    LOBYTE(v77) = 0;
    sub_1001ED560(v25, v27, 10);
    v57 = v75;
    goto LABEL_86;
  }

  if ((v27 & 0x2000000000000000) != 0)
  {
    v79 = v25;
    v80 = v27 & 0xFFFFFFFFFFFFFFLL;
    if (v25 == 43)
    {
      if (v28)
      {
        if (v28 != 1)
        {
          sub_1001EE65C();
          while (1)
          {
            sub_100027240();
            if (!v62 & v33)
            {
              break;
            }

            sub_1001EE4F4();
            if (!v62 || __OFADD__(v49, v48))
            {
              break;
            }

            sub_10002727C();
            if (v62)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

LABEL_110:
      __break(1u);
      return;
    }

    if (v25 != 45)
    {
      if (v28)
      {
        while (1)
        {
          sub_100027240();
          if (!v62 & v33)
          {
            break;
          }

          sub_1001EE4F4();
          if (!v62 || __OFADD__(v56, v55))
          {
            break;
          }

          sub_10002727C();
          if (v62)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    if (v28)
    {
      if (v28 != 1)
      {
        sub_1001EE65C();
        while (1)
        {
          sub_100027240();
          if (!v62 & v33)
          {
            break;
          }

          sub_1001EE4F4();
          if (!v62 || __OFSUB__(v38, v37))
          {
            break;
          }

          sub_10002727C();
          if (v62)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_84;
    }

    goto LABEL_108;
  }

  if ((v25 & 0x1000000000000000) == 0)
  {
    sub_1001F7858();
  }

  sub_1001EE5E4();
  if (v62)
  {
    if (v31 < 1)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    if (v31 != 1)
    {
      if (v30)
      {
        sub_10018EE30();
        while (1)
        {
          sub_100027240();
          if (!v62 & v33)
          {
            goto LABEL_84;
          }

          sub_1001EE4F4();
          if (!v62 || __OFADD__(v47, v46))
          {
            goto LABEL_84;
          }

          sub_10002727C();
          if (v62)
          {
            goto LABEL_85;
          }
        }
      }

      goto LABEL_75;
    }

LABEL_84:
    v36 = 1;
    goto LABEL_85;
  }

  if (v32 != 45)
  {
    if (v31)
    {
      v50 = 0;
      if (v30)
      {
        while (1)
        {
          sub_10018EE4C();
          if (!v62 & v33)
          {
            goto LABEL_84;
          }

          v54 = 10 * v50;
          if ((v50 * v52) >> 64 != (10 * v50) >> 63)
          {
            goto LABEL_84;
          }

          v50 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            goto LABEL_84;
          }

          sub_1001EE5D8(v51);
          if (v62)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_84;
  }

  if (v31 < 1)
  {
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v31 == 1)
  {
    goto LABEL_84;
  }

  if (v30)
  {
    sub_10018EE30();
    while (1)
    {
      sub_100027240();
      if (!v62 & v33)
      {
        goto LABEL_84;
      }

      sub_1001EE4F4();
      if (!v62 || __OFSUB__(v35, v34))
      {
        goto LABEL_84;
      }

      sub_10002727C();
      if (v62)
      {
        goto LABEL_85;
      }
    }
  }

LABEL_75:
  v36 = 0;
LABEL_85:
  LOBYTE(v77) = v36;
  v57 = v36;
LABEL_86:

  if (v57)
  {
    goto LABEL_105;
  }

  sub_100037B7C();
  if (sub_1001F6C38() < 3)
  {
    goto LABEL_105;
  }

  v58 = sub_100037B7C();
  v60 = sub_100088678(v58, v59);
  if (!v61)
  {
    goto LABEL_105;
  }

  v62 = v60 == 80 && v61 == 0xE100000000000000;
  if (v62)
  {
  }

  else
  {
    v63 = sub_1001F7EA8();

    if ((v63 & 1) == 0)
    {
      goto LABEL_105;
    }
  }

  v64 = sub_100037B7C();
  v66 = sub_1000C4628(v64, v65);
  if (!v67)
  {
LABEL_105:

    return;
  }

  v68 = v66;
  v69 = v67;
  sub_1001F6C78();
  v70 = sub_1001F6D98();
  v72 = v71;

  if (v70 == 84 && v72 == 0xE100000000000000)
  {

    v74 = 1;
  }

  else
  {
    v74 = sub_1001F7EA8();
  }

  sub_1001ED044(v68, v69, v74 & 1);
}

uint64_t sub_1001EBEE0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_1001EC61C(a2, &off_100279AC0);
  v4 = !v3;
  if (v3)
  {
    v5._countAndFlagsBits = 84;
  }

  else
  {
    v5._countAndFlagsBits = 0;
  }

  if (v4)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v5._object = v6;
  sub_1001F6CA8(v5);

  v13._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v13);

  v7 = sub_1001ECA84(v2);
  v9 = v8;
  sub_100088678(v7, v8);
  v11 = v10;

  if (v11)
  {
    sub_1001F6A28();
    sub_1001EE620();
    v14._countAndFlagsBits = v9;
    v14._object = v6;
    sub_1001F6CA8(v14);

    return 80;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001EBFDC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a1 == a3)
  {
    v4 = 0x646E6F636573;
    v5 = 0xE600000000000000;
    v6 = 0x646E6F636573;
    switch(a2)
    {
      case 1:
        v6 = 0x6574756E696DLL;
        break;
      case 2:
        v5 = 0xE400000000000000;
        v6 = 1920298856;
        break;
      case 3:
        v5 = 0xE300000000000000;
        v6 = 7954788;
        break;
      case 4:
        v5 = 0xE400000000000000;
        v6 = 1801807223;
        break;
      case 5:
        v5 = 0xE500000000000000;
        v6 = 0x68746E6F6DLL;
        break;
      case 6:
        v5 = 0xE400000000000000;
        v6 = 1918985593;
        break;
      default:
        break;
    }

    v8 = 0xE600000000000000;
    switch(a4)
    {
      case 1:
        v4 = 0x6574756E696DLL;
        break;
      case 2:
        v8 = 0xE400000000000000;
        v4 = 1920298856;
        break;
      case 3:
        v8 = 0xE300000000000000;
        v4 = 7954788;
        break;
      case 4:
        v8 = 0xE400000000000000;
        v4 = 1801807223;
        break;
      case 5:
        v8 = 0xE500000000000000;
        v4 = 0x68746E6F6DLL;
        break;
      case 6:
        v8 = 0xE400000000000000;
        v4 = 1918985593;
        break;
      default:
        break;
    }

    if (v6 == v4 && v5 == v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1001F7EA8();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1001EC1A8()
{
  sub_1001EE5C0();
  if (!v2)
  {
    goto LABEL_67;
  }

  if ((v0 & 0x1000000000000000) != 0)
  {
    sub_1001EDA10(v1, v0, 0xAuLL);
LABEL_67:

    return;
  }

  if ((v0 & 0x2000000000000000) == 0)
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      sub_1001EE650();
    }

    else
    {
      sub_1001F7858();
    }

    sub_1001EE5E4();
    if (v6)
    {
      if (v4 >= 1)
      {
        if (v4 != 1 && v3)
        {
          sub_10018EE30();
          do
          {
            sub_100027240();
            if (!v6 && v7)
            {
              break;
            }

            sub_1001EE59C();
            if (!v6)
            {
              break;
            }

            sub_1001EE55C();
            if (__CFADD__(v15, v14))
            {
              break;
            }

            sub_10002727C();
          }

          while (!v6);
        }

        goto LABEL_67;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v4)
      {
        v18 = 0;
        if (v3)
        {
          do
          {
            sub_10018EE4C();
            if (!v6 && v7)
            {
              break;
            }

            if (!is_mul_ok(v18, v20))
            {
              break;
            }

            v7 = __CFADD__(10 * v18, v21);
            v18 = 10 * v18 + v21;
            if (v7)
            {
              break;
            }

            sub_1001EE5D8(v19);
          }

          while (!v6);
        }
      }

      goto LABEL_67;
    }

    if (v4 >= 1)
    {
      if (v4 != 1 && v3)
      {
        sub_10018EE30();
        do
        {
          sub_100027240();
          if (!v6 && v7)
          {
            break;
          }

          sub_1001EE59C();
          if (!v6)
          {
            break;
          }

          sub_1001EE55C();
          if (v9 < v8)
          {
            break;
          }

          sub_10002727C();
        }

        while (!v6);
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_1001EE63C();
  if (!v6)
  {
    if (v11 != 45)
    {
      if (v10)
      {
        do
        {
          sub_100027240();
          if (!v6 && v7)
          {
            break;
          }

          sub_1001EE59C();
          if (!v6)
          {
            break;
          }

          sub_1001EE55C();
          if (__CFADD__(v23, v22))
          {
            break;
          }

          sub_10002727C();
        }

        while (!v6);
      }

      goto LABEL_67;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        sub_1001C1C78();
        do
        {
          sub_100027240();
          if (!v6 && v7)
          {
            break;
          }

          sub_1001EE59C();
          if (!v6)
          {
            break;
          }

          sub_1001EE55C();
          if (v13 < v12)
          {
            break;
          }

          sub_10002727C();
        }

        while (!v6);
      }

      goto LABEL_67;
    }

    goto LABEL_71;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      sub_1001C1C78();
      do
      {
        sub_100027240();
        if (!v6 && v7)
        {
          break;
        }

        sub_1001EE59C();
        if (!v6)
        {
          break;
        }

        sub_1001EE55C();
        if (__CFADD__(v17, v16))
        {
          break;
        }

        sub_10002727C();
      }

      while (!v6);
    }

    goto LABEL_67;
  }

LABEL_73:
  __break(1u);
}

void sub_1001EC3EC()
{
  sub_1001EE5C0();
  if (!v2)
  {
    goto LABEL_67;
  }

  if ((v0 & 0x1000000000000000) != 0)
  {
    sub_1001ED560(v1, v0, 10);
LABEL_67:

    return;
  }

  if ((v0 & 0x2000000000000000) == 0)
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      sub_1001EE650();
    }

    else
    {
      sub_1001F7858();
    }

    sub_1001EE5E4();
    if (v6)
    {
      if (v4 >= 1)
      {
        if (v4 != 1 && v3)
        {
          sub_10018EE30();
          do
          {
            sub_100027240();
            if (!v6 & v7)
            {
              break;
            }

            sub_1000E4DA0();
            if (!v6)
            {
              break;
            }

            if (__OFADD__(v15, v14))
            {
              break;
            }

            sub_10002727C();
          }

          while (!v6);
        }

        goto LABEL_67;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v4)
      {
        v18 = 0;
        if (v3)
        {
          do
          {
            sub_10018EE4C();
            if (!v6 & v7)
            {
              break;
            }

            v22 = 10 * v18;
            if ((v18 * v20) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            sub_1001EE5D8(v19);
          }

          while (!v6);
        }
      }

      goto LABEL_67;
    }

    if (v4 >= 1)
    {
      if (v4 != 1 && v3)
      {
        sub_10018EE30();
        do
        {
          sub_100027240();
          if (!v6 & v7)
          {
            break;
          }

          sub_1000E4DA0();
          if (!v6)
          {
            break;
          }

          if (__OFSUB__(v9, v8))
          {
            break;
          }

          sub_10002727C();
        }

        while (!v6);
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_1001EE63C();
  if (!v6)
  {
    if (v11 != 45)
    {
      if (v10)
      {
        do
        {
          sub_100027240();
          if (!v6 & v7)
          {
            break;
          }

          sub_1000E4DA0();
          if (!v6)
          {
            break;
          }

          if (__OFADD__(v24, v23))
          {
            break;
          }

          sub_10002727C();
        }

        while (!v6);
      }

      goto LABEL_67;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        sub_1001C1C78();
        do
        {
          sub_100027240();
          if (!v6 & v7)
          {
            break;
          }

          sub_1000E4DA0();
          if (!v6)
          {
            break;
          }

          if (__OFSUB__(v13, v12))
          {
            break;
          }

          sub_10002727C();
        }

        while (!v6);
      }

      goto LABEL_67;
    }

    goto LABEL_71;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      sub_1001C1C78();
      do
      {
        sub_100027240();
        if (!v6 & v7)
        {
          break;
        }

        sub_1000E4DA0();
        if (!v6)
        {
          break;
        }

        if (__OFADD__(v17, v16))
        {
          break;
        }

        sub_10002727C();
      }

      while (!v6);
    }

    goto LABEL_67;
  }

LABEL_73:
  __break(1u);
}

BOOL sub_1001EC61C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE600000000000000;
    v8 = 0x646E6F636573;
    switch(*v4)
    {
      case 1:
        v8 = 0x6574756E696DLL;
        break;
      case 2:
        v7 = 0xE400000000000000;
        v8 = 1920298856;
        break;
      case 3:
        v7 = 0xE300000000000000;
        v8 = 7954788;
        break;
      case 4:
        v7 = 0xE400000000000000;
        v8 = 1801807223;
        break;
      case 5:
        v7 = 0xE500000000000000;
        v8 = 0x68746E6F6DLL;
        break;
      case 6:
        v7 = 0xE400000000000000;
        v8 = 1918985593;
        break;
      default:
        break;
    }

    v9 = 0xE600000000000000;
    v10 = 0x646E6F636573;
    switch(a1)
    {
      case 1:
        v10 = 0x6574756E696DLL;
        break;
      case 2:
        v9 = 0xE400000000000000;
        v10 = 1920298856;
        break;
      case 3:
        v9 = 0xE300000000000000;
        v10 = 7954788;
        break;
      case 4:
        v9 = 0xE400000000000000;
        v10 = 1801807223;
        break;
      case 5:
        v9 = 0xE500000000000000;
        v10 = 0x68746E6F6DLL;
        break;
      case 6:
        v9 = 0xE400000000000000;
        v10 = 1918985593;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_1001F7EA8();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1001EC818(uint64_t a1, char a2)
{
  v4 = sub_1000183C4(&qword_1002BD098, &qword_10021BF78);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1000183C4(&qword_1002BD0A0, &unk_10021BF80);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1001F6618();
  sub_100018460(v9, 1, 1, v10);
  v11 = sub_1001F6628();
  sub_100018460(v6, 1, 1, v11);
  switch(a2)
  {
    case 1:
      sub_1001EE47C();
      v22 = v12;
      v21 = 0;
      v20 = 0;
      v19 = a1;
      goto LABEL_8;
    case 2:
      sub_1001EE47C();
      v22 = v12;
      v21 = 0;
      v20 = v12;
      v19 = 0;
      v18 = 0;
      v17 = a1;
      goto LABEL_9;
    case 3:
      sub_1001EE47C();
      sub_1001EE508();
      v16 = 0;
      v15 = a1;
      goto LABEL_10;
    case 4:
      v12 = 1;
      goto LABEL_8;
    case 5:
    case 6:
      sub_1001EE47C();
      sub_1001EE508();
      v16 = v14;
      v15 = 0;
      sub_1001EE544();
      return sub_1001F60B8();
    default:
      sub_1001EE47C();
      v22 = 0;
      v21 = a1;
LABEL_8:
      v18 = v12;
      v17 = 0;
LABEL_9:
      v16 = v12;
      v15 = 0;
LABEL_10:
      sub_1001EE544();
      return sub_1001F60B8();
  }
}

uint64_t sub_1001ECA84(char a1)
{
  result = 0x646E6F636573;
  switch(a1)
  {
    case 1:
      result = 0x6574756E696DLL;
      break;
    case 2:
      result = 1920298856;
      break;
    case 3:
      result = 7954788;
      break;
    case 4:
      result = 1801807223;
      break;
    case 5:
      result = 0x68746E6F6DLL;
      break;
    case 6:
      result = 1918985593;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001ECB3C(uint64_t a1, char a2)
{
  v4 = sub_1001F7E28();
  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  sub_1001F6CA8(v5);
  v6._countAndFlagsBits = sub_1001ECA84(a2);
  sub_1001F6CA8(v6);

  return v4;
}

uint64_t sub_1001ECBB4(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v51) = a3;
  v50 = a2;
  v4 = sub_1001F60C8();
  sub_10001A278();
  v49 = v5;
  __chkstk_darwin(v6);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_1001F6508();
  sub_10001A278();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100023510();
  v47 = v19 - v18;
  v20 = sub_1001F65C8();
  sub_10001A278();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100023510();
  v26 = v25 - v24;
  sub_1001F6618();
  sub_10001A278();
  v52 = v28;
  v53 = v27;
  __chkstk_darwin(v27);
  sub_100023510();
  v31 = v30 - v29;
  (*(v22 + 104))(v26, enum case for Calendar.Identifier.gregorian(_:), v20);
  sub_1001F65D8();
  (*(v22 + 8))(v26, v20);
  sub_1001EC818(v50, v51);
  v50 = a1;
  v32 = v49;
  sub_1001F65F8();
  v33 = *(v32 + 8);
  v51 = v4;
  v33(v10, v4);
  v34 = v14;
  if (sub_10001C990(v13, 1, v14) == 1)
  {
    (*(v52 + 8))(v31, v53);
    sub_100136794(v13);
    return 0;
  }

  else
  {
    v36 = *(v16 + 32);
    v37 = v47;
    v46 = v34;
    v36(v47, v13, v34);
    sub_1000183C4(&qword_1002BD0A8, &qword_10021BF90);
    v38 = sub_1001F6608();
    sub_10001A278();
    v40 = v39;
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1001FE9E0;
    (*(v40 + 104))(v42 + v41, enum case for Calendar.Component.day(_:), v38);
    sub_1001B8640();
    v43 = v48;
    sub_1001F65E8();

    v44 = sub_1001F60A8();
    LOBYTE(v38) = v45;
    v33(v43, v51);
    (*(v16 + 8))(v37, v46);
    (*(v52 + 8))(v31, v53);
    if (v38)
    {
      return 0;
    }

    else
    {
      return v44;
    }
  }
}

uint64_t sub_1001ED044(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1001F6BC8();
  v6 = v5;
  v7 = v4 == 83 && v5 == 0xE100000000000000;
  if (v7 || (v8 = v4, (sub_1001EE524(83) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v10 = v8 == 77 && v6 == 0xE100000000000000;
    if (v10 || (sub_1001EE524(77) & 1) != 0)
    {

      if (a3)
      {
        return 1;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      v11 = v8 == 72 && v6 == 0xE100000000000000;
      if (v11 || (sub_1001EE524(72) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = v8 == 68 && v6 == 0xE100000000000000;
        if (v12 || (sub_1001EE524(68) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v13 = v8 == 87 && v6 == 0xE100000000000000;
          if (v13 || (sub_1001EE524(87) & 1) != 0)
          {

            return 4;
          }

          else if (v8 == 89 && v6 == 0xE100000000000000)
          {

            return 6;
          }

          else
          {
            v15 = sub_1001EE524(89);

            if (v15)
            {
              return 6;
            }

            else
            {
              return 7;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001ED190(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1002793B0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001ED200@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001ED190(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1001ED230@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001ECA84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t *sub_1001ED25C(void *a1)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001042A8();
  sub_1001F8168();
  if (!v2)
  {
    sub_10001AE68(v14, v14[3]);
    sub_1001042A8();
    v4 = sub_1001F7EC8();
    v6 = v5;

    sub_1001EB808(v4, v6);
    if (v8 != 7)
    {
      v1 = v7;

      sub_100019CCC(v14);
      sub_100019CCC(a1);
      return v1;
    }

    v9 = sub_1001F7848();
    swift_allocError();
    v11 = v10;
    sub_1001F77B8(18);

    v13[0] = 0x2064696C61766E49;
    v13[1] = 0xEF222065756C6176;
    v15._countAndFlagsBits = v4;
    v15._object = v6;
    sub_1001F6CA8(v15);

    v1 = v13;
    v16._countAndFlagsBits = 34;
    v16._object = 0xE100000000000000;
    sub_1001F6CA8(v16);
    sub_1001F7838();
    (*(*(v9 - 8) + 104))(v11, enum case for DecodingError.dataCorrupted(_:), v9);
    swift_willThrow();
    sub_100019CCC(v14);
  }

  sub_100019CCC(a1);
  return v1;
}

uint64_t sub_1001ED434(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_1001EBEE0(a2, a3);
  sub_10004BD98(v6, v6[3]);
  sub_1001F7EE8();

  return sub_100019CCC(v6);
}

uint64_t *sub_1001ED4F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001ED25C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

void sub_1001ED560(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1001F6DA8();
  if ((v5 & 0x1000000000000000) != 0)
  {
    v47 = sub_100037B7C();
    sub_1001EDEB0(v47, v48);
    sub_1001EE620();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      sub_1001EE650();
    }

    else
    {
      sub_100037B7C();
      sub_1001F7858();
    }

    sub_1001EE5E4();
    if (v9)
    {
      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          sub_1001EE4DC();
          if (v24 ^ v25 | v23)
          {
            v28 = 65;
          }

          if (!(v24 ^ v25 | v23))
          {
            v29 = 58;
          }

          if (v26)
          {
            v30 = 0;
            v31 = (v26 + 1);
            while (1)
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v29)
              {
                if (v32 < 0x41 || v32 >= v28)
                {
                  sub_1001EE568();
                  if (!v21 || v32 >= v34)
                  {
                    goto LABEL_137;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v30 * a3;
              if ((v30 * a3) >> 64 == (v30 * a3) >> 63)
              {
                v30 = v35 + (v32 + v33);
                if (!__OFADD__(v35, (v32 + v33)))
                {
                  ++v31;
                  if (--v27)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_137;
            }
          }
        }

        goto LABEL_137;
      }

      goto LABEL_141;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        sub_1001EE608();
        if (v37 ^ v38 | v36)
        {
          v40 = v43;
        }

        if (v37 ^ v38 | v36)
        {
          v41 = 65;
        }

        if (!(v37 ^ v38 | v36))
        {
          v42 = 58;
        }

        if (v39)
        {
          v44 = 0;
          while (1)
          {
            v45 = *v39;
            if (v45 < 0x30 || v45 >= v42)
            {
              if (v45 < 0x41 || v45 >= v41)
              {
                if (v45 < 0x61 || v45 >= v40)
                {
                  goto LABEL_137;
                }

                v46 = -87;
              }

              else
              {
                v46 = -55;
              }
            }

            else
            {
              v46 = -48;
            }

            if ((v44 * a3) >> 64 == (v44 * a3) >> 63 && !__OFADD__(v44 * a3, (v45 + v46)))
            {
              v39 = sub_1001EE5D8(v39);
              if (!v9)
              {
                continue;
              }
            }

            goto LABEL_137;
          }
        }
      }

      goto LABEL_137;
    }

    if (v7 >= 1)
    {
      if (v7 != 1)
      {
        sub_1001EE4DC();
        if (v10 ^ v11 | v9)
        {
          v14 = 65;
        }

        if (!(v10 ^ v11 | v9))
        {
          v15 = 58;
        }

        if (v12)
        {
          v16 = 0;
          v17 = (v12 + 1);
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v15)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                sub_1001EE568();
                if (!v21 || v18 >= v20)
                {
                  break;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v22 = v16 * a3;
            if ((v16 * a3) >> 64 == (v16 * a3) >> 63)
            {
              v16 = v22 - (v18 + v19);
              if (!__OFSUB__(v22, (v18 + v19)))
              {
                ++v17;
                if (--v13)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_137:

      return;
    }

    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  sub_1001EE5A8();
  if (!v9)
  {
    if (v50 != 45)
    {
      if (v49)
      {
        sub_1001EE4C0();
        while (1)
        {
          sub_1001EE590();
          if (v21 && v66 < v65)
          {
            v67 = -48;
          }

          else if (v66 < 0x41 || v66 >= v64)
          {
            sub_1001EE568();
            if (!v21 || v66 >= v68)
            {
              goto LABEL_137;
            }

            v67 = -87;
          }

          else
          {
            v67 = -55;
          }

          if ((v63 * a3) >> 64 == (v63 * a3) >> 63 && !__OFADD__(v63 * a3, (v66 + v67)))
          {
            sub_1001EE584();
            if (!v9)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    if (v49)
    {
      if (v49 != 1)
      {
        sub_1001EE4C0();
        sub_1001EE574();
        while (1)
        {
          sub_1001EE590();
          if (v21 && v54 < v53)
          {
            v55 = -48;
          }

          else if (v54 < 0x41 || v54 >= v52)
          {
            sub_1001EE568();
            if (!v21 || v54 >= v56)
            {
              goto LABEL_137;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }

          if ((v51 * a3) >> 64 == (v51 * a3) >> 63 && !__OFSUB__(v51 * a3, (v54 + v55)))
          {
            sub_1001EE584();
            if (!v9)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    goto LABEL_140;
  }

  if (v49)
  {
    if (v49 != 1)
    {
      sub_1001EE4C0();
      sub_1001EE574();
      while (1)
      {
        sub_1001EE590();
        if (v21 && v60 < v59)
        {
          v61 = -48;
        }

        else if (v60 < 0x41 || v60 >= v58)
        {
          sub_1001EE568();
          if (!v21 || v60 >= v62)
          {
            goto LABEL_137;
          }

          v61 = -87;
        }

        else
        {
          v61 = -55;
        }

        if ((v57 * a3) >> 64 == (v57 * a3) >> 63 && !__OFADD__(v57 * a3, (v60 + v61)))
        {
          sub_1001EE584();
          if (!v9)
          {
            continue;
          }
        }

        goto LABEL_137;
      }
    }

    goto LABEL_137;
  }

LABEL_142:
  __break(1u);
}

void sub_1001EDA10(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_1001F6DA8();
  if ((v5 & 0x1000000000000000) != 0)
  {
    v35 = sub_100037B7C();
    sub_1001EDEB0(v35, v36);
    sub_1001EE620();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      sub_1001EE650();
    }

    else
    {
      sub_100037B7C();
      sub_1001F7858();
    }

    sub_1001EE5E4();
    if (v24)
    {
      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          sub_1001EE4DC();
          if (v17)
          {
            while (1)
            {
              sub_1001EE590();
              if (v14 && v21 < v19)
              {
                v22 = -48;
              }

              else if (v21 < 0x41 || v21 >= v18)
              {
                sub_1001EE568();
                if (!v14 || v21 >= v23)
                {
                  goto LABEL_129;
                }

                v22 = -87;
              }

              else
              {
                v22 = -55;
              }

              if (is_mul_ok(v20, a3) && !__CFADD__(v20 * a3, (v21 + v22)))
              {
                sub_1001EE584();
                if (!v24)
                {
                  continue;
                }
              }

              goto LABEL_129;
            }
          }
        }

        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        sub_1001EE608();
        if (v25 ^ v26 | v24)
        {
          v28 = v31;
        }

        if (v25 ^ v26 | v24)
        {
          v29 = 65;
        }

        if (!(v25 ^ v26 | v24))
        {
          v30 = 58;
        }

        if (v27)
        {
          v32 = 0;
          while (1)
          {
            v33 = *v27;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v29)
              {
                if (v33 < 0x61 || v33 >= v28)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (is_mul_ok(v32, a3) && !__CFADD__(v32 * a3, (v33 + v34)))
            {
              v27 = sub_1001EE5D8(v27);
              if (!v24)
              {
                continue;
              }
            }

            goto LABEL_129;
          }
        }
      }

      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      if (v7 != 1)
      {
        sub_1001EE4DC();
        if (v9)
        {
          while (1)
          {
            sub_1001EE590();
            if (v14 && v13 < v11)
            {
              v15 = -48;
            }

            else if (v13 < 0x41 || v13 >= v10)
            {
              sub_1001EE568();
              if (!v14 || v13 >= v16)
              {
                break;
              }

              v15 = -87;
            }

            else
            {
              v15 = -55;
            }

            if (is_mul_ok(v12, a3) && v12 * a3 >= (v13 + v15))
            {
              sub_1001EE584();
              if (!v24)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_129:

      return;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  sub_1001EE5A8();
  if (!v24)
  {
    if (v38 != 45)
    {
      if (v37)
      {
        sub_1001EE4C0();
        while (1)
        {
          sub_1001EE590();
          if (v14 && v54 < v53)
          {
            v55 = -48;
          }

          else if (v54 < 0x41 || v54 >= v52)
          {
            sub_1001EE568();
            if (!v14 || v54 >= v56)
            {
              goto LABEL_129;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }

          if (is_mul_ok(v51, a3) && !__CFADD__(v51 * a3, (v54 + v55)))
          {
            sub_1001EE584();
            if (!v24)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    if (v37)
    {
      if (v37 != 1)
      {
        sub_1001EE4C0();
        sub_1001EE574();
        while (1)
        {
          sub_1001EE590();
          if (v14 && v42 < v41)
          {
            v43 = -48;
          }

          else if (v42 < 0x41 || v42 >= v40)
          {
            sub_1001EE568();
            if (!v14 || v42 >= v44)
            {
              goto LABEL_129;
            }

            v43 = -87;
          }

          else
          {
            v43 = -55;
          }

          if (is_mul_ok(v39, a3) && v39 * a3 >= (v42 + v43))
          {
            sub_1001EE584();
            if (!v24)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    goto LABEL_132;
  }

  if (v37)
  {
    if (v37 != 1)
    {
      sub_1001EE4C0();
      sub_1001EE574();
      while (1)
      {
        sub_1001EE590();
        if (v14 && v48 < v47)
        {
          v49 = -48;
        }

        else if (v48 < 0x41 || v48 >= v46)
        {
          sub_1001EE568();
          if (!v14 || v48 >= v50)
          {
            goto LABEL_129;
          }

          v49 = -87;
        }

        else
        {
          v49 = -55;
        }

        if (is_mul_ok(v45, a3) && !__CFADD__(v45 * a3, (v48 + v49)))
        {
          sub_1001EE584();
          if (!v24)
          {
            continue;
          }
        }

        goto LABEL_129;
      }
    }

    goto LABEL_129;
  }

LABEL_134:
  __break(1u);
}

uint64_t sub_1001EDEB0(uint64_t a1, unint64_t a2)
{
  v2 = sub_1001EDF18(SelectableEventLoop._promiseCompleted(futureIdentifier:), 0, a1, a2);
  v6 = sub_1001EDF4C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1001EDF4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1001F7528();
    if (!v9 || (v10 = v9, v11 = sub_1000E4950(v9, 0), v12 = sub_1001EE0AC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1001F6C18();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1001F6C18();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1001F7858();
LABEL_4:

  return sub_1001F6C18();
}

unint64_t sub_1001EE0AC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1001EE2BC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1001F6D38();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1001F7858();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1001EE2BC(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1001F6D08();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001EE2BC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1001F6D48();
    sub_1001EE5F0(v6);
    return v7 | 4;
  }

  else
  {
    v3 = sub_1001F6D18();
    sub_1001EE5F0(v3);
    return v4 | 8;
  }
}

_BYTE *storeEnumTagSinglePayload for OctaneSubscriptionPeriod.Unit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1001EE3E4);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001EE420()
{
  result = qword_1002BD0B0[0];
  if (!qword_1002BD0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002BD0B0);
  }

  return result;
}

uint64_t sub_1001EE524(uint64_t a1)
{

  return sub_1001F7EA8();
}

uint64_t sub_1001EE620()
{
}

uint64_t sub_1001EE6F8(int a1, uint64_t a2, uint64_t a3)
{
  if (strerror(a1))
  {
    sub_1001F77B8(18);

    v5 = a2;
    v6._countAndFlagsBits = 8250;
    v6._object = 0xE200000000000000;
    sub_1001F6CA8(v6);
    v7._countAndFlagsBits = sub_1001F6CC8();
    sub_1001F6CA8(v7);

    v8._countAndFlagsBits = 0x3A6F6E7272652820;
    v8._object = 0xE900000000000020;
    sub_1001F6CA8(v8);
    v9._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v9);

    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    sub_1001F6CA8(v10);
  }

  else
  {
    sub_1001F77B8(38);

    v5 = a2;
    v11._object = 0x800000010022EA50;
    v11._countAndFlagsBits = 0xD000000000000022;
    sub_1001F6CA8(v11);
    v12._countAndFlagsBits = sub_1001F7E28();
    sub_1001F6CA8(v12);
  }

  return v5;
}

__n128 sub_1001EE8A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001EE8B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1001EE8F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001EE950(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1001EE964(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001EE9A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t NIOSingleStepByteToMessageDecoder.decode(context:buffer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1001F74B8();
  sub_10002DFFC();
  v23 = v10;
  sub_10001E844();
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  sub_10002DFFC();
  v15 = v14;
  sub_10001E844();
  __chkstk_darwin(v16);
  sub_1001EFDE4();
  v18 = v27;
  result = (*(v17 + 16))(v25, a3, a4);
  if (!v18)
  {
    v27 = v4;
    v20 = v9;
    v21 = sub_10001C990(v13, 1, AssociatedTypeWitness);
    if (v21 == 1)
    {
      (*(v23 + 8))(v13, v20);
    }

    else
    {
      (*(v15 + 32))(v5, v13, AssociatedTypeWitness);
      sub_1001EFDC0();
      ChannelHandlerContext.fireChannelRead(_:)();
      sub_100034310(v26);
      (*(v15 + 8))(v5, AssociatedTypeWitness);
    }

    return v21 == 1;
  }

  return result;
}

uint64_t NIOSingleStepByteToMessageDecoder.decodeLast(context:buffer:seenEOF:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v23[1] = a1;
  v25 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1001F74B8();
  sub_10002DFFC();
  v24 = v11;
  sub_10001E844();
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  sub_10002DFFC();
  v16 = v15;
  sub_10001E844();
  __chkstk_darwin(v17);
  sub_1001EFDE4();
  v19 = v27;
  result = (*(v18 + 24))(a2, v26, a4, a5);
  if (!v19)
  {
    v21 = v24;
    v27 = v10;
    v22 = sub_10001C990(v14, 1, AssociatedTypeWitness);
    if (v22 == 1)
    {
      (*(v21 + 8))(v14, v27);
    }

    else
    {
      (*(v16 + 32))(v5, v14, AssociatedTypeWitness);
      sub_1001EFDC0();
      ChannelHandlerContext.fireChannelRead(_:)();
      sub_100034310(v28);
      (*(v16 + 8))(v5, AssociatedTypeWitness);
    }

    return v22 == 1;
  }

  return result;
}

uint64_t NIOSingleStepByteToMessageProcessor.__allocating_init(_:maximumBufferSize:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  NIOSingleStepByteToMessageProcessor.init(_:maximumBufferSize:)(a1, a2, a3 & 1);
  return v6;
}

uint64_t *NIOSingleStepByteToMessageProcessor.init(_:maximumBufferSize:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  v7 = (v3 + *(*v3 + 112));
  *v7 = 0;
  v7[1] = 0;
  *(v7 + 15) = 0;
  (*(*(*(v6 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  v8 = v3 + *(*v3 + 104);
  *v8 = a2;
  *(v8 + 8) = a3 & 1;
  return v3;
}

void sub_1001EEF64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = HIDWORD(a3);
  v8 = v3 + *(*v3 + 112);
  swift_beginAccess();
  if (!*v8)
  {
    goto LABEL_5;
  }

  v9 = *(v8 + 8);
  v10 = *(v8 + 12);
  if (v10 < v9)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 == v9)
  {
LABEL_5:
    *v8 = a1;
    *(v8 + 8) = a2;
    *(v8 + 16) = a3;
    *(v8 + 22) = BYTE6(a3);
    *(v8 + 20) = v7;

    return;
  }

  swift_beginAccess();
  v11 = *(v8 + 12);
  swift_beginAccess();
  v12 = HIDWORD(a2) - a2;
  if (HIDWORD(a2) < a2)
  {
    goto LABEL_11;
  }

  v13 = *(a1 + 24) + (BYTE6(a3) | (v7 << 8)) + a2;
  v14 = v13 + v12;

  ByteBuffer._setBytes(_:at:)(v13, v14, v11);
  v15 = *(v8 + 12);
  v17 = __CFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_12:
    __break(1u);
    return;
  }

  *(v8 + 12) = v18;
  swift_endAccess();
}

uint64_t sub_1001EF0AC@<X0>(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v5 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1001F74B8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-v9];
  v11 = v2 + *(v5 + 112);
  result = swift_beginAccess();
  if (!*v11)
  {
    return sub_100018460(a2, 1, 1, AssociatedTypeWitness);
  }

  v13 = *(v11 + 10);
  v15 = *(v11 + 3);
  v14 = *(v11 + 4);
  v16 = *(v11 + 2);
  v17 = v11[22];
  v23 = *v11;
  v24 = __PAIR64__(v15, v16);
  v25 = v14;
  v26 = v13;
  v27 = v17;
  if (v15 < v16)
  {
    __break(1u);
    return result;
  }

  if (v15 == v16)
  {
    return sub_100018460(a2, 1, 1, AssociatedTypeWitness);
  }

  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 15) = 0;
  v28(&v23);
  if (v3)
  {
  }

  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  *v11 = v23;
  *(v11 + 1) = v18;
  v11[22] = v21;
  *(v11 + 10) = v20;
  *(v11 + 4) = v19;

  return (*(v8 + 32))(a2, v10, v7);
}

uint64_t sub_1001EF2C8(char a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v6 = v5;
  v62 = a4;
  v63 = a3;
  v60 = a2;
  v8 = *v4;
  v9 = *v4;
  v64 = *(*v4 + 88);
  v61 = *(v8 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1001F74B8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v59 = (&v56 - v16);
  __chkstk_darwin(v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v57 = &v56 - v23;
  v58 = v21;
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  v56 = v22;
  v24 = v4 + *(v9 + 112);
  v21 = swift_beginAccess();
  if (!*v24)
  {
    if (qword_1002AC430 == -1)
    {
LABEL_17:
      v27 = v12;
      v31 = qword_1002E6088;
      LODWORD(v28) = dword_1002E6090;
      LOWORD(v29) = word_1002E6094;
      v30 = byte_1002E6096;

      goto LABEL_18;
    }

LABEL_30:
    swift_once();
    goto LABEL_17;
  }

  v25 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v26 < v25)
  {
    __break(1u);
    goto LABEL_30;
  }

  v22 = v56;
  if (v26 != v25)
  {
LABEL_6:
    v59 = v12;
    v61 = AssociatedTypeWitness;
    v64 = v4;
    v33 = a1 & 1;
    v34 = v60 & 1;
    v35 = (v22 + 32);
    for (i = (v22 + 8); ; v21 = (*i)(v19, v38))
    {
      __chkstk_darwin(v21);
      *(&v56 - 2) = v64;
      *(&v56 - 8) = v33;
      *(&v56 - 7) = v34;
      result = sub_1001EF0AC(sub_1001EFD9C, v14);
      if (v5)
      {
        return result;
      }

      v38 = v61;
      if (sub_10001C990(v14, 1, v61) == 1)
      {
        break;
      }

      (*v35)(v19, v14, v38);
      v63(v19);
    }

    v59[1](v14, v58);
    v39 = v64;
    v40 = *v64;
    v41 = v64 + *(*v64 + 104);
    if ((v41[8] & 1) == 0)
    {
      v42 = *v41;
      v43 = v64 + *(*v64 + 112);
      result = swift_beginAccess();
      if (!*v43)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      v44 = *(v43 + 2);
      v45 = *(v43 + 3);
      v46 = v45 >= v44;
      v47 = v45 - v44;
      if (!v46)
      {
        goto LABEL_32;
      }

      if (v42 < v47)
      {
        sub_10006AF08();
        swift_allocError();
        return swift_willThrow();
      }

      v40 = *v39;
    }

    v53 = v39 + *(v40 + 112);
    result = swift_beginAccess();
    if (!*v53)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v54 = *(v53 + 2);
    v55 = *(v53 + 3);
    if (v55 >= v54)
    {
      if (v55 == v54)
      {
        swift_beginAccess();
        ByteBuffer.discardReadBytes()();
        return swift_endAccess();
      }

      return result;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = v12;
  v28 = *(v24 + 4) | ((*(v24 + 10) | (v24[22] << 16)) << 32);
  v29 = HIDWORD(v28) & 0xFFFFFF;
  v30 = BYTE6(v28);
  v31 = vdup_n_s32(v25);
  v32 = *v24;
LABEL_18:
  v65[0] = v32;
  v65[1] = v31;
  v66 = v28;
  v67 = v29;
  v68 = v30;
  swift_beginAccess();
  v48 = v64;
  v49 = v64[3];

  v50 = v59;
  v49(v65, v60 & 1, v61, v48);
  swift_endAccess();
  if (!v6)
  {
    if (sub_10001C990(v50, 1, AssociatedTypeWitness) == 1)
    {

      return v27[1](v50, v58);
    }

    v51 = v56;
    v52 = v57;
    (*(v56 + 32))(v57, v50, AssociatedTypeWitness);
    v63(v52);
    (*(v51 + 8))(v52, AssociatedTypeWitness);
  }
}

uint64_t sub_1001EF91C(uint64_t a1, uint64_t *a2, char a3, char a4)
{
  v6 = *(*a2 + 80);
  v7 = *(*a2 + 88);
  if (a3)
  {
    swift_beginAccess();
    (*(v7 + 24))(a1, a4 & 1, v6, v7);
  }

  else
  {
    swift_beginAccess();
    (*(v7 + 16))(a1, v6, v7);
  }

  swift_endAccess();
  return sub_1001EFA54(a1, a2);
}

uint64_t sub_1001EFA54(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  if (v3 < v2)
  {
    __break(1u);
  }

  else if (v3 != v2)
  {
    v4 = *a2;
    v13 = *(result + 16);
    v12 = *(result + 20);
    v11 = *(result + 22);
    swift_beginAccess();
    v6 = v4 + 80;
    v5 = *(v4 + 80);
    v7 = *(*(v6 + 8) + 8);
    v8 = *(v7 + 48);

    v10 = v8(v9, v2 | (v3 << 32), v13 | (v12 << 32) | (v11 << 48), v5, v7);
    swift_endAccess();

    if (v10)
    {
      return ByteBuffer.discardReadBytes()();
    }
  }

  return result;
}

uint64_t NIOSingleStepByteToMessageProcessor.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t NIOSingleStepByteToMessageProcessor.__deallocating_deinit()
{
  NIOSingleStepByteToMessageProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001EFCDC(uint64_t a1)
{
  result = swift_checkMetadataState();
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

void *sub_1001EFDC0()
{

  return ByteToMessageDecoder.wrapInboundOut(_:)(v0, (v1 - 144));
}

void sub_1001EFE18(_OWORD *a2@<X8>)
{
  v8 = *(v2 + 72);
  if (!v8)
  {
LABEL_13:
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    sub_1001F4778();
    return;
  }

  v9 = v2;
  sub_1001F4454(v8);
  sub_1001F45EC();
  if (v10)
  {
    v11 = sub_1001F6158();
    sub_1001C6EB8(v11);
    v12 = sub_1001F6148();
    sub_1001F4330();
    sub_1001F4428();
    sub_1001F6138();
    if (v3)
    {
LABEL_4:

      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v13 = sub_1001F6688();
      sub_10009951C(v13, qword_1002E6180);
      sub_1000593F4(v9, v56);
      swift_errorRetain();
      v14 = sub_1001F6668();
      v15 = sub_1001F7298();
      sub_1000402B8(v9);

      if (os_log_type_enabled(v14, v15))
      {
        sub_10003A894();
        v56[0] = sub_1001F4718();
        sub_1001F46F4(4.8754e-34);
        v16 = sub_1000E4544(v12, v4, v56);

        *(v6 + 4) = v16;
        v17 = sub_1001F4690();
        sub_1001F4794(v17, v18, v19, v20, v21, v22, v23, v24, v5, v45, v48, v50, v52, v54);
        v25 = sub_1001F4678();
        sub_1001F4654(v25, v26);
        v27 = sub_1001F7FE8();
        sub_1001F4794(v27, v28, v29, v30, v31, v32, v33, v34, v43, v46, v49, v51, v53, v55);
        sub_1001F4678();
        *(v6 + 24) = v4;
        sub_1001F456C(&_mh_execute_header, v35, v36, "Error parsing request for endpoint %{public}s and client version %{public}s: %{public}s");
        sub_1001F4638();
        sub_100021754();

        sub_100021754();

        sub_10003A380(v44, v47);
      }

      else
      {
        v41 = sub_10007B9BC();
        sub_10003A380(v41, v42);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v37 = sub_1001F5E88();
    sub_1001C6EB8(v37);
    v12 = sub_1001F5E78();
    sub_1001F4330();
    sub_1001F4428();
    sub_1001F5E68();
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v38 = sub_10007B9BC();
  sub_10003A380(v38, v39);
  sub_1001F4778();
}

void sub_1001F0068(void *a1@<X8>)
{
  v7 = *(v1 + 72);
  if (!v7)
  {
LABEL_13:
    sub_1001F3F44(__src);
    memcpy(a1, __src, 0x379uLL);
    return;
  }

  sub_1001F4480(v7);
  sub_1001F45EC();
  if (v8)
  {
    v9 = sub_1001F6158();
    sub_1001C6EB8(v9);
    sub_1001F6148();
    sub_1001F3F4C();
    sub_1001F4428();
    sub_1001F6138();
    if (v2)
    {
LABEL_4:

      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v10 = sub_1001F6688();
      sub_10009951C(v10, qword_1002E6180);
      sub_1000593F4(v1, __src);
      swift_errorRetain();
      v11 = sub_1001F6668();
      v12 = sub_1001F7298();
      sub_1000402B8(v1);

      if (os_log_type_enabled(v11, v12))
      {
        sub_10003A894();
        __src[0] = sub_1001F4718();
        *v5 = 136446722;
        v13 = *(v1 + 32);
        v28 = v3;
        v14 = *(v13 + 32);
        v15 = *(v13 + 40);

        v16 = sub_1000E4544(v14, v15, __src);

        *(v5 + 4) = v16;
        v17 = sub_1001F4690();
        sub_1000E4544(v17, v18, __src);
        sub_1001F4678();
        *(v5 + 14) = v15;
        *(v5 + 22) = v4;
        swift_getErrorValue();
        v19 = sub_1001F7FE8();
        sub_1000E4544(v19, v20, __src);
        sub_1001F4678();
        *(v5 + 24) = v15;
        sub_1001F456C(&_mh_execute_header, v21, v22, "Error parsing request for endpoint %{public}s and client version %{public}s: %{public}s");
        sub_1001F4638();
        sub_100021754();

        sub_100021754();

        sub_10003A380(v4, v28);
      }

      else
      {
        v26 = sub_10007B9BC();
        sub_10003A380(v26, v27);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v23 = sub_1001F5E88();
    sub_1001C6EB8(v23);
    sub_1001F5E78();
    sub_1001F3F4C();
    sub_1001F4428();
    sub_1001F5E68();
    if (v2)
    {
      goto LABEL_4;
    }
  }

  v24 = sub_10007B9BC();
  sub_10003A380(v24, v25);

  debugOnly(_:)();
}

uint64_t sub_1001F031C()
{
  v3 = *(v0 + 72);
  if (!v3)
  {
LABEL_11:
    v40 = 0;
    v41 = 0;
    v42 = 0;
    return v40;
  }

  sub_1001F4480(v3);
  sub_1001F4510();
  if (v4)
  {
    v5 = sub_1001F6158();
    sub_1001C6EB8(v5);
    sub_1001F6148();
    sub_1001F3FF4();
    sub_1001F4414();
    sub_1001F6138();
    if (v1)
    {
LABEL_4:

      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v6 = sub_1001F6688();
      sub_10009951C(v6, qword_1002E6180);
      sub_1000593F4(v0, v39);
      swift_errorRetain();
      v7 = sub_1001F6668();
      sub_1001F7298();
      sub_1001F47F4();

      if (sub_1001F47DC())
      {
        sub_10003A894();
        v39[0] = sub_1001F45C0();
        sub_1001F44F0(4.8754e-34);
        sub_1001F4824(v8, v9, v39);
        sub_1001F4854();
        v10 = sub_1001F44D0();
        sub_1001F47AC(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v35, v37);
        v18 = sub_1001F45FC();
        sub_1001F46D0(v18);
        v19 = sub_1001F7FE8();
        sub_1001F47AC(v19, v20, v21, v22, v23, v24, v25, v26, v32, v34, v36, v38);
        sub_1001F45FC();
        *(v2 + 24) = v0;
        sub_1001F44B0(&_mh_execute_header, v27, v28, "Error parsing request for endpoint %{public}s and client version %{public}s: %{public}s");
        sub_1001F458C();
        sub_100021754();

        sub_100021754();

        sub_1001F45A8();
      }

      else
      {
        sub_1001F45A8();
      }

      goto LABEL_11;
    }
  }

  else
  {
    v29 = sub_1001F5E88();
    sub_1001C6EB8(v29);
    sub_1001F5E78();
    sub_1001F3FF4();
    sub_1001F4414();
    sub_1001F5E68();
    if (v1)
    {
      goto LABEL_4;
    }
  }

  sub_1001F45A8();

  return v40;
}

void sub_1001F0528()
{
  v3 = *(v0 + 72);
  if (!v3)
  {
LABEL_11:
    v46 = 0;
    v47 = 0;
    goto LABEL_12;
  }

  sub_1001F4454(v3);
  sub_1001F4510();
  if (v4)
  {
    v5 = sub_1001F6158();
    sub_1001C6EB8(v5);
    sub_1001F6148();
    sub_1001F4138();
    sub_1001F4414();
    sub_1001F6138();
    if (v1)
    {
LABEL_4:

      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v6 = sub_1001F6688();
      sub_10009951C(v6, qword_1002E6180);
      sub_1000593F4(v0, v45);
      swift_errorRetain();
      v7 = sub_1001F6668();
      sub_1001F7298();
      sub_1001F47F4();

      if (sub_1001F47DC())
      {
        sub_10003A894();
        v45[0] = sub_1001F45C0();
        sub_1001F44F0(4.8754e-34);
        sub_1001F4824(v8, v9, v45);
        sub_1001F4854();
        v10 = sub_1001F44D0();
        sub_1001F47C4(v10, v11, v12, v13, v14, v15, v16, v17, v37, v40);
        v18 = sub_1001F45FC();
        sub_1001F46AC(v18, v19, v20, v21, v22, v23, v24, v25, v38, v41, v43, v44);
        v26 = sub_1001F7FE8();
        sub_1001F47C4(v26, v27, v28, v29, v30, v31, v32, v33, v39, v42);
        sub_1001F45FC();
        *(v2 + 24) = v0;
        sub_1001F44B0(&_mh_execute_header, v34, v35, "Error parsing request for endpoint %{public}s and client version %{public}s: %{public}s");
        sub_1001F458C();
        sub_100021754();

        sub_100021754();

        sub_1001F45A8();
      }

      else
      {
        sub_1001F45A8();
      }

      goto LABEL_11;
    }
  }

  else
  {
    v36 = sub_1001F5E88();
    sub_1001C6EB8(v36);
    sub_1001F5E78();
    sub_1001F4138();
    sub_1001F4414();
    sub_1001F5E68();
    if (v1)
    {
      goto LABEL_4;
    }
  }

  sub_1001F45A8();

LABEL_12:
  sub_1001F4778();
}

uint64_t sub_1001F0720()
{
  v3 = *(v0 + 72);
  if (!v3)
  {
LABEL_11:
    v40 = 0;
    v41 = 0;
    v42 = 0;
    return v40;
  }

  sub_1001F4480(v3);
  sub_1001F4510();
  if (v4)
  {
    v5 = sub_1001F6158();
    sub_1001C6EB8(v5);
    sub_1001F6148();
    sub_1001F41E0();
    sub_1001F4414();
    sub_1001F6138();
    if (v1)
    {
LABEL_4:

      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v6 = sub_1001F6688();
      sub_10009951C(v6, qword_1002E6180);
      sub_1000593F4(v0, v39);
      swift_errorRetain();
      v7 = sub_1001F6668();
      sub_1001F7298();
      sub_1001F47F4();

      if (sub_1001F47DC())
      {
        sub_10003A894();
        v39[0] = sub_1001F45C0();
        sub_1001F44F0(4.8754e-34);
        sub_1001F4824(v8, v9, v39);
        sub_1001F4854();
        v10 = sub_1001F44D0();
        sub_1001F47AC(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v35, v37);
        v18 = sub_1001F45FC();
        sub_1001F46D0(v18);
        v19 = sub_1001F7FE8();
        sub_1001F47AC(v19, v20, v21, v22, v23, v24, v25, v26, v32, v34, v36, v38);
        sub_1001F45FC();
        *(v2 + 24) = v0;
        sub_1001F44B0(&_mh_execute_header, v27, v28, "Error parsing request for endpoint %{public}s and client version %{public}s: %{public}s");
        sub_1001F458C();
        sub_100021754();

        sub_100021754();

        sub_1001F45A8();
      }

      else
      {
        sub_1001F45A8();
      }

      goto LABEL_11;
    }
  }

  else
  {
    v29 = sub_1001F5E88();
    sub_1001C6EB8(v29);
    sub_1001F5E78();
    sub_1001F41E0();
    sub_1001F4414();
    sub_1001F5E68();
    if (v1)
    {
      goto LABEL_4;
    }
  }

  sub_1001F45A8();

  return v40;
}

double sub_1001F092C@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 72))
  {
    v2 = sub_1000B74F4();
    v4 = v3;
    if (*(v1 + 8))
    {
      sub_1001F6158();
      swift_allocObject();
      sub_1001F6148();
      sub_1001F2DE8();
      sub_1001F6138();
    }

    else
    {
      sub_1001F5E88();
      swift_allocObject();
      sub_1001F5E78();
      sub_1001F2DE8();
      sub_1001F5E68();
    }

    sub_10003A380(v2, v4);
  }

  else
  {
    *(a1 + 96) = 0;
    result = 0.0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1001F0C8C@<D0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 72);
  if (!v7)
  {
LABEL_11:
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_12;
  }

  v8 = v1;
  sub_1001F4454(v7);
  sub_1001F45EC();
  if (v9)
  {
    v10 = sub_1001F6158();
    sub_1001C6EB8(v10);
    v11 = sub_1001F6148();
    sub_1001F3E38();
    sub_1001F4428();
    sub_1001F6138();
    if (v2)
    {
LABEL_4:

      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v12 = sub_1001F6688();
      sub_10009951C(v12, qword_1002E6180);
      sub_1000593F4(v8, v57);
      swift_errorRetain();
      v13 = sub_1001F6668();
      v14 = sub_1001F7298();
      sub_1000402B8(v8);

      if (os_log_type_enabled(v13, v14))
      {
        sub_10003A894();
        v57[0] = sub_1001F4718();
        sub_1001F46F4(4.8754e-34);
        v15 = sub_1000E4544(v11, v3, v57);

        *(v5 + 4) = v15;
        v16 = sub_1001F4690();
        sub_1001F4794(v16, v17, v18, v19, v20, v21, v22, v23, v4, v46, v49, v51, v53, v55);
        v24 = sub_1001F4678();
        sub_1001F4654(v24, v25);
        v26 = sub_1001F7FE8();
        sub_1001F4794(v26, v27, v28, v29, v30, v31, v32, v33, v44, v47, v50, v52, v54, v56);
        sub_1001F4678();
        *(v5 + 24) = v3;
        sub_1001F456C(&_mh_execute_header, v34, v35, "Error parsing request for endpoint %{public}s and client version %{public}s: %{public}s");
        sub_1001F4638();
        sub_100021754();

        sub_100021754();

        sub_10003A380(v45, v48);
      }

      else
      {
        v39 = sub_10007B9BC();
        sub_10003A380(v39, v40);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v36 = sub_1001F5E88();
    sub_1001C6EB8(v36);
    v11 = sub_1001F5E78();
    sub_1001F3E38();
    sub_1001F4428();
    sub_1001F5E68();
    if (v2)
    {
      goto LABEL_4;
    }
  }

  v37 = sub_10007B9BC();
  sub_10003A380(v37, v38);

LABEL_12:
  v41 = v60;
  result = *&v58;
  v43 = v59;
  *a1 = v58;
  *(a1 + 16) = v43;
  *(a1 + 32) = v41;
  return result;
}

uint64_t sub_1001F0EFC(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = *(v2 + 72);
  if (!v4)
  {
LABEL_11:
    v50 = 0u;
    v51 = 0u;
    return v50;
  }

  sub_1001F4454(v4);
  sub_1001F4510();
  if (v7)
  {
    v8 = sub_1001F6158();
    sub_1001C6EB8(v8);
    sub_1001F6148();
    a1();
    sub_1001F454C();
    sub_1001F6138();
    if (a2)
    {
LABEL_4:

      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v9 = sub_1001F6688();
      sub_10009951C(v9, qword_1002E6180);
      sub_1000593F4(v2, v49);
      swift_errorRetain();
      v10 = sub_1001F6668();
      sub_1001F7298();
      sub_1001F47F4();

      if (sub_1001F47DC())
      {
        sub_10003A894();
        v49[0] = sub_1001F45C0();
        sub_1001F44F0(4.8754e-34);
        sub_1001F4824(v11, v12, v49);
        sub_1001F4854();
        v13 = sub_1001F44D0();
        sub_1001F47C4(v13, v14, v15, v16, v17, v18, v19, v20, v41, v44);
        v21 = sub_1001F45FC();
        sub_1001F46AC(v21, v22, v23, v24, v25, v26, v27, v28, v42, v45, v47, v48);
        v29 = sub_1001F7FE8();
        sub_1001F47C4(v29, v30, v31, v32, v33, v34, v35, v36, v43, v46);
        sub_1001F45FC();
        *(v3 + 24) = v2;
        sub_1001F44B0(&_mh_execute_header, v37, v38, "Error parsing request for endpoint %{public}s and client version %{public}s: %{public}s");
        sub_1001F458C();
        sub_100021754();

        sub_100021754();

        sub_1001F45A8();
      }

      else
      {
        sub_1001F45A8();
      }

      goto LABEL_11;
    }
  }

  else
  {
    v39 = sub_1001F5E88();
    sub_1001C6EB8(v39);
    sub_1001F5E78();
    a1();
    sub_1001F454C();
    sub_1001F5E68();
    if (a2)
    {
      goto LABEL_4;
    }
  }

  sub_1001F45A8();

  return v50;
}

uint64_t sub_1001F10F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_10011108C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1001F1150(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0xF000000000000007;
  }

  v3 = sub_100111164(a1);
  if ((v4 & 1) == 0)
  {
    return 0xF000000000000007;
  }

  v5 = *(*(a2 + 56) + 16 * v3);
  Scheduled.futureResult.getter(v5);
  return v5;
}

double sub_1001F11D8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_1001F476C();
  }

  v2 = sub_100111214(a1);
  if ((v3 & 1) == 0)
  {
    return sub_1001F476C();
  }

  v4 = sub_1001F45DC(v2);

  sub_10002F9B0(v4, v5);
  return result;
}

double sub_1001F1248@<D0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v5 = a2(), (v6 & 1) != 0))
  {
    sub_100026064(*(a1 + 56) + 40 * v5, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    return sub_1001F476C();
  }

  return result;
}

double sub_1001F12A0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_1001F476C();
  }

  v2 = sub_100111288(a1);
  if ((v3 & 1) == 0)
  {
    return sub_1001F476C();
  }

  v4 = sub_1001F45DC(v2);

  sub_10002F9B0(v4, v5);
  return result;
}

void sub_1001F12F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_100112888();
    if (v3)
    {
      sub_1001F4760(v2);
    }
  }
}

uint64_t sub_1001F1348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_10011108C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1001F4760(v3);
}

uint64_t sub_1001F1394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_10011108C(a1);
  if (v4)
  {
    return sub_1001F4760(v3);
  }

  else
  {
    return 0;
  }
}

double sub_1001F13E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return sub_1001F476C();
  }

  v3 = sub_10011108C(a1);
  if ((v4 & 1) == 0)
  {
    return sub_1001F476C();
  }

  v5 = sub_1001F45DC(v3);

  sub_10002F9B0(v5, v6);
  return result;
}

void sub_1001F1440(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F5EA8();
  v5 = sub_100056658(v4);
  __chkstk_darwin(v5);
  sub_1001F443C();
  memcpy(__dst, a1, sizeof(__dst));
  v6 = sub_1001F5F08();
  sub_1001C6EB8(v6);
  sub_1001F5EF8();
  sub_1001F483C();
  sub_1001F5EB8();
  sub_1001F4288();
  sub_1001F5EE8();
  sub_1000C9B50();
  memcpy(v20, __dst, 0x59uLL);
  sub_1001F42DC(v20);
  v7 = sub_100075518();
  sub_100040C70(v7, v8);
  v9 = sub_100075518();
  sub_1001F4734(v9, v10, v11, v12);

  v13 = sub_100075518();
  sub_10003A380(v13, v14);
  v15 = sub_1001F4620();
  *a2 = v22;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 38) = v19;
}

double sub_1001F15CC(char a1)
{
  sub_1001F4614();
  v1 = sub_1001F5EA8();
  v2 = sub_100056658(v1);
  __chkstk_darwin(v2);
  sub_1001F443C();
  v3 = sub_1001F5F08();
  sub_1001C6EB8(v3);
  sub_1001F5EF8();
  sub_1001F483C();
  sub_1001F5EB8();
  sub_1001F3FA0();
  sub_1001F5EE8();
  sub_1000C9B50();
  sub_100040C70(v4, v5);
  v6 = sub_100075518();
  sub_1001F4734(v6, v7, v8, v9);

  v10 = sub_100075518();
  sub_10003A380(v10, v11);
  return sub_1001F43DC();
}

double sub_1001F16C8(uint64_t a1)
{
  sub_1001F4614();
  v1 = sub_1001F5EA8();
  v2 = sub_100056658(v1);
  __chkstk_darwin(v2);
  sub_1001F443C();
  v3 = sub_1001F5F08();
  sub_1001C6EB8(v3);
  sub_1001F5EF8();
  sub_1001F483C();
  sub_1001F5EB8();
  sub_1000183C4(&qword_1002BD240, &qword_10021C270);
  sub_1001F3E8C();
  sub_1001F5EE8();
  sub_1000C9B50();

  v4 = sub_100075518();
  sub_100040C70(v4, v5);
  v6 = sub_100075518();
  sub_1001F4734(v6, v7, v8, v9);

  v10 = sub_100075518();
  sub_10003A380(v10, v11);
  return sub_1001F43DC();
}

void sub_1001F1864(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F5EA8();
  v5 = sub_100056658(v4);
  __chkstk_darwin(v5);
  sub_1001F443C();
  memcpy(v21, a1, sizeof(v21));
  v6 = sub_1001F5F08();
  sub_1001C6EB8(v6);
  sub_1001F5EF8();
  sub_1001F483C();
  sub_1001F5EB8();
  sub_1001F40E4();
  sub_1001F5EE8();
  memcpy(v20, v21, 0x68uLL);
  sub_1001A8928(v20);
  v7 = sub_1000377A8();
  sub_100040C70(v7, v8);
  v9 = sub_1000377A8();
  sub_1001F4734(v9, v10, v11, v12);

  v13 = sub_1000377A8();
  sub_10003A380(v13, v14);
  v15 = sub_1001F4620();
  *a2 = v22;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 36) = v18;
  *(a2 + 38) = v19;
}

double sub_1001F19F8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  sub_1001F4614();
  v4 = sub_1001F5EA8();
  v5 = sub_100056658(v4);
  __chkstk_darwin(v5);
  sub_100023510();
  v6 = sub_1001F5F08();
  sub_1001C6EB8(v6);
  sub_1001F5EF8();
  sub_1001F5E98();
  v7 = sub_1001F5EB8();
  a2(v7);
  sub_1001F5EE8();

  v8 = sub_1000377A8();
  sub_100040C70(v8, v9);
  v10 = sub_1000377A8();
  sub_1001F4734(v10, v11, v12, v13);

  v14 = sub_1000377A8();
  sub_10003A380(v14, v15);
  return sub_1001F43DC();
}

double sub_1001F1B24@<D0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F5EA8();
  __chkstk_darwin(v4 - 8);
  memcpy(v14, a1, sizeof(v14));
  sub_1001F5F08();
  swift_allocObject();
  sub_1001F5EF8();
  sub_1001F5E98();
  sub_1001F5EB8();
  sub_1001F2D38();
  v5 = sub_1001F5EE8();
  v7 = v6;
  memcpy(v13, v14, 0x61uLL);
  sub_1000B2864(v13);
  sub_100040C70(v5, v7);
  sub_1000B77D0(v5, v7, 0xD000000000000010, 0x80000001002227E0, &v15);

  sub_10003A380(v5, v7);
  v8 = v16;
  result = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  *a2 = v15;
  *(a2 + 16) = v8;
  *(a2 + 24) = result;
  *(a2 + 32) = v10;
  *(a2 + 36) = v11;
  *(a2 + 38) = v12;
  return result;
}

__n128 sub_1001F1D20(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1001F4614();
  v10 = sub_1001F5EA8();
  v11 = sub_100056658(v10);
  __chkstk_darwin(v11);
  sub_100023510();
  v12 = sub_1001F5F08();
  sub_1001C6EB8(v12);
  sub_1001F5EF8();
  sub_1001F5E98();
  sub_1001F5EB8();
  a2(0);
  sub_1001F4048(a3, a4, a5);
  v13 = sub_1001F5EE8();
  v15 = v14;
  sub_100040C70(v13, v14);
  sub_1001F4734(v13, v15, 0x80000001002227E0, &v23);

  sub_10003A380(v13, v15);
  v16 = v24;
  LODWORD(v13) = v26;
  LOWORD(v15) = v27;
  v17 = v28;
  v22 = v23;
  v18 = v25;
  v19 = sub_10007B9BC();
  sub_1001F4090(v19, v20);
  result = v22;
  *v5 = v22;
  v5[1].n128_u64[0] = v16;
  v5[1].n128_u64[1] = v18;
  v5[2].n128_u32[0] = v13;
  v5[2].n128_u16[2] = v15;
  v5[2].n128_u8[6] = v17;
  return result;
}

void *sub_1001F1EB4(void *a1)
{
  sub_1000C56AC(v15);
  v2 = v18;
  if (v18 == 255)
  {
    goto LABEL_8;
  }

  v4 = v16;
  v3 = v17;
  if (sub_1000C5D00() != 4)
  {
    sub_1000B29A0(v15, &qword_1002B3310, &qword_10020A0A0);
LABEL_8:
    v10 = a1;
    return a1;
  }

  v5 = sub_1000BFC14();
  v7 = sub_1000EE5B8(v5, v6);

  switch(v2)
  {
    case 1:
      if (!v7)
      {
        goto LABEL_17;
      }

      v11 = sub_100025678(v4, v3);
      goto LABEL_15;
    case 2:
      if (!v7)
      {
        goto LABEL_17;
      }

      v11 = sub_10002574C(v4, v3);
      goto LABEL_15;
    case 3:
      if (!v7)
      {
        goto LABEL_17;
      }

      v11 = sub_100025820(v4, v3);
LABEL_15:
      v12 = v11;
      sub_1000B29A0(v15, &qword_1002B3310, &qword_10020A0A0);

      if (!v12)
      {
        goto LABEL_18;
      }

      v9 = *(v12 + 57);

      break;
    case 4:
LABEL_17:
      sub_1000B29A0(v15, &qword_1002B3310, &qword_10020A0A0);
      goto LABEL_18;
    default:
      sub_1000B29A0(v15, &qword_1002B3310, &qword_10020A0A0);
      if (v7 && (v8 = *(v7 + 136)) != 0)
      {
        v9 = *(v8 + 57);
      }

      else
      {
LABEL_18:
        v9 = 1;
      }

      break;
  }

  sub_1000C5DD0(v9);
  sub_10008EA08(a1, 0);
  v13 = a1;

  return a1;
}

void *sub_1001F20AC(void *a1)
{
  sub_1000C56AC(v18);
  v2 = v21;
  if (v21 == 255)
  {
    goto LABEL_8;
  }

  v4 = v19;
  v3 = v20;
  sub_1000C5F7C();
  if (v5 != 7)
  {
    sub_1000B29A0(v18, &qword_1002B3310, &qword_10020A0A0);
LABEL_8:
    v9 = a1;
    return a1;
  }

  v6 = sub_1000BFC14();
  v8 = sub_1000EE5B8(v6, v7);

  switch(v2)
  {
    case 1:
      if (!v8)
      {
        goto LABEL_17;
      }

      v10 = sub_100025678(v4, v3);
      goto LABEL_15;
    case 2:
      if (!v8)
      {
        goto LABEL_17;
      }

      v10 = sub_10002574C(v4, v3);
      goto LABEL_15;
    case 3:
      if (!v8)
      {
        goto LABEL_17;
      }

      v10 = sub_100025820(v4, v3);
LABEL_15:
      v11 = v10;
      sub_1000B29A0(v18, &qword_1002B3310, &qword_10020A0A0);

      if (v11)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    case 4:
LABEL_17:
      sub_1000B29A0(v18, &qword_1002B3310, &qword_10020A0A0);
      goto LABEL_18;
    default:
      sub_1000B29A0(v18, &qword_1002B3310, &qword_10020A0A0);
      if (!v8)
      {
LABEL_18:
        v13 = 0;
LABEL_20:
        v15 = 7;
        goto LABEL_21;
      }

      if (!*(v8 + 136))
      {
LABEL_19:
        v13 = 0;
        goto LABEL_20;
      }

LABEL_16:

      sub_100161BA8();
      v13 = v12;
      v15 = v14;

LABEL_21:
      sub_1000C6038(v13, v15);
      sub_10008EA08(a1, 0);
      v16 = a1;

      return a1;
  }
}

BOOL sub_1001F22D8(char a1, char a2)
{
  if (a1)
  {
    v3 = 12918;
  }

  else
  {
    v3 = 12662;
  }

  v4 = sub_10005E758(1uLL, v3, 0xE200000000000000);
  v8 = v7;
  if (!((v4 ^ v5) >> 14))
  {

    goto LABEL_9;
  }

  v9 = v6;
  v10 = sub_1001F38CC(v4, v5, v6, v7, 10);
  if ((v11 & 0x100) != 0)
  {
    v14 = sub_1000377A8();
    v12 = sub_1001F2E3C(v14, v15, v9, v8, 10);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = v10;
  v13 = v11;

  if (v13)
  {
LABEL_9:
    v12 = 0;
  }

LABEL_10:
  if (a2)
  {
    v18 = 12918;
  }

  else
  {
    v18 = 12662;
  }

  v19 = sub_10005E758(1uLL, v18, 0xE200000000000000);
  v21 = v20;
  if (!((v19 ^ v22) >> 14))
  {

    goto LABEL_18;
  }

  sub_1000C9B50();
  v24 = v23;
  v27 = sub_1001F38CC(v25, v26, v23, v21, 10);
  if ((v28 & 0x100) == 0)
  {
    v29 = v27;
    v30 = v28;

    if ((v30 & 1) == 0)
    {
      return v12 < v29;
    }

    goto LABEL_18;
  }

  v31 = sub_100075518();
  v29 = sub_1001F2E3C(v31, v32, v24, v21, 10);
  v34 = v33;

  if (v34)
  {
LABEL_18:
    v29 = 0;
  }

  return v12 < v29;
}

uint64_t sub_1001F2450(char a1)
{
  if (a1)
  {
    return 12918;
  }

  else
  {
    return 12662;
  }
}

uint64_t sub_1001F2468(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A328;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_1001F24C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1001F092C(v29);
  if (v31)
  {
    v23[0] = v29[0];
    v23[1] = v29[1];
    v23[2] = v29[2];
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v6 = sub_1001F10F8(0x6E6F6973726576, 0xE700000000000000, *(a1 + 96));
    if (v7)
    {
      v8 = sub_1001F2468(v6, v7);
    }

    else
    {
      v8 = 0;
    }

    sub_1001F2710(v23, v8 & 1);
    sub_1000B29A0(v29, &qword_1002BD218, &qword_10021C268);
    sub_1001F1B24(v18, v19);
    v16 = v19[1];
    v17 = v19[0];
    v3 = v20 | ((v21 | (v22 << 16)) << 32);
    v12 = type metadata accessor for HTTPResponseHead._Storage();
    v13 = sub_100021728(v12);
    v15 = v16;
    v11 = v17;
    a1 = v13;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 3;
    *(v13 + 40) = 65537;
  }

  else
  {
    v9 = type metadata accessor for HTTPResponseHead._Storage();
    v10 = sub_100021728(v9);
    *&v11 = sub_10005C340(v10);
    *(v14 + 32) = 21;
    *(v14 + 40) = 65537;
    v15 = 0uLL;
  }

  *a2 = a1;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  *(a2 + 24) = v11;
  *(a2 + 40) = v15;
  *(a2 + 56) = v3;
  *(a2 + 62) = BYTE6(v3);
  *(a2 + 60) = WORD2(v3);
}

uint64_t sub_1001F2710(uint64_t a1, char a2)
{
  v4 = v3;
  sub_1001F4614();
  v7 = sub_1001F6508();
  __chkstk_darwin(v7);
  sub_100023510();
  v12 = v11 - v10;
  v13 = *(a1 + 24);
  if (!v13)
  {
    sub_100021578();
    v25 = swift_allocError();
    sub_1001F474C(v25, v26);
    swift_retain_n();
    sub_1001F480C();
LABEL_28:
    swift_willThrow();

    return sub_1000B2768(a1);
  }

  v53 = v12;
  v49 = v9;
  v50 = v8;
  v14 = *(a1 + 16);
  v15 = *(a1 + 72);
  if (*(a1 + 80))
  {
    v16 = 0.0;
  }

  else
  {
    v16 = *(a1 + 64);
  }

  if (*(a1 + 80))
  {
    v15 = 0;
  }

  v56 = v15;

  sub_1001F480C();

  sub_1001F480C();
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v17 = sub_1001F6688();
  sub_100019C94(v17, qword_1002E6180);

  v18 = sub_1001F6668();
  v19 = sub_1001F72B8();

  v52 = v2;
  v54 = v13;
  if (os_log_type_enabled(v18, v19))
  {
    v48 = a2;
    v20 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_1000E4544(v14, v13, v58);
    *(v20 + 12) = 2080;
    v21 = v56;
    v22 = sub_100181504(v16);
    v24 = sub_1000E4544(v22, v23, v58);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Handling in-app receipts request for %s from revision %s.", v20, 0x16u);
    swift_arrayDestroy();
    sub_100021754();

    a2 = v48;
    sub_100021754();
  }

  else
  {

    v21 = v56;
  }

  if (v21 <= 4)
  {
    sub_1001F6448();
    sub_1001F6428();
    (*(v49 + 8))(v53, v50);
  }

  sub_1001F486C();
  v27 = sub_1001F22D8(a2 & 1, 1);
  sub_10018DEC4(v27);
  v28 = sub_10008EC44(v14);
  v30 = v29;
  if (v56 > 4)
  {
LABEL_25:

    sub_1001F480C();
    sub_1000B19E8(a1, v28, v30 & 1, v4, a1, v59);
    v40 = v61;
    if (v61)
    {
      v41 = sub_1001F486C();
      v42 = *v41;
      v43 = *(*(*v41 + 128) + 16);

      os_unfair_lock_lock(v43);
      *(v42 + 112) = 1;
      os_unfair_lock_unlock(v43);

      result = sub_1000B2768(a1);
      v44 = v59[1];
      *v52 = v59[0];
      *(v52 + 16) = v44;
      *(v52 + 32) = v60;
      *(v52 + 40) = v40;
      v45 = v63;
      *(v52 + 48) = v62;
      *(v52 + 64) = v45;
      *(v52 + 80) = v64;
      *(v52 + 96) = v65;
      return result;
    }

    sub_100021578();
    v46 = swift_allocError();
    sub_1001F474C(v46, v47);
    goto LABEL_28;
  }

  sub_10001AE68((v4 + 48), *(v4 + 72));
  sub_1000795A8(v14, v54);
  v31 = sub_10001A07C();
  v32 = v28;
  if (!v31)
  {

    v28 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v33 = v31;
  v57 = v32;
  v55 = v30;
  v51 = a1;
  v58[0] = _swiftEmptyArrayStorage;
  result = sub_1001F78C8();
  if ((v33 & 0x8000000000000000) == 0)
  {
    v35 = 0;
    v36 = v32 & 0xC000000000000001;
    do
    {
      if (v36)
      {
        v37 = sub_1001F7808();
      }

      else
      {
        v37 = *(v57 + 8 * v35 + 32);
      }

      v38 = v37;
      ++v35;
      sub_1001F486C();
      v39 = sub_1001F1EB4(v38);
      sub_1001F486C();
      sub_1001F20AC(v39);

      sub_1001F7878();
      sub_1001F7908();
      sub_1001F7918();
      sub_1001F7898();
    }

    while (v33 != v35);

    v28 = v58[0];
    a1 = v51;
    v30 = v55;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001F2D38()
{
  result = qword_1002BD220;
  if (!qword_1002BD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD220);
  }

  return result;
}

uint64_t sub_1001F2D8C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for Transaction();
      result = sub_1001F6F88();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

unint64_t sub_1001F2DE8()
{
  result = qword_1002BD228;
  if (!qword_1002BD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD228);
  }

  return result;
}

unsigned __int8 *sub_1001F2E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1001F39A8();

  result = sub_1001F6DA8();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001EDEB0(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1001F7858();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1001F33D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  sub_1001F39A8();

  result = sub_1001F6DA8();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1001EDEB0(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1001F7858();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          sub_1001EE4DC();
          if (v22)
          {
            do
            {
              sub_1001EE590();
              if (v17 && v26 < v24)
              {
                v27 = -48;
              }

              else if (v26 < 0x41 || v26 >= v23)
              {
                sub_1001EE568();
                if (!v17 || v26 >= v28)
                {
                  goto LABEL_125;
                }

                v27 = -87;
              }

              else
              {
                v27 = -55;
              }

              if (!is_mul_ok(v25, a5) || __CFADD__(v25 * a5, (v26 + v27)))
              {
                goto LABEL_124;
              }

              sub_1001EE584();
            }

            while (!v21);
LABEL_44:
            v8 = v20;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v8 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v8 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_125;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v32, a5))
            {
              goto LABEL_124;
            }

            v35 = v32 * a5;
            v36 = v33 + v34;
            v17 = __CFADD__(v35, v36);
            v32 = v35 + v36;
            if (v17)
            {
              goto LABEL_124;
            }

            ++result;
            --v10;
          }

          while (v10);
          v8 = v32;
          goto LABEL_125;
        }

        goto LABEL_64;
      }

      goto LABEL_124;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        sub_1001EE4DC();
        if (v12)
        {
          while (1)
          {
            sub_1001EE590();
            if (v17 && v16 < v14)
            {
              v18 = -48;
            }

            else if (v16 < 0x41 || v16 >= v13)
            {
              sub_1001EE568();
              if (!v17 || v16 >= v19)
              {
                goto LABEL_125;
              }

              v18 = -87;
            }

            else
            {
              v18 = -55;
            }

            if (!is_mul_ok(v15, a5) || v15 * a5 < (v16 + v18))
            {
              goto LABEL_124;
            }

            sub_1001EE584();
            if (v21)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_64:
        v8 = 0;
LABEL_125:

        return v8;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v9) & 0xF;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        sub_1001EE4C0();
        while (1)
        {
          sub_1001EE590();
          if (v17 && v56 < v55)
          {
            v57 = -48;
          }

          else if (v56 < 0x41 || v56 >= v54)
          {
            sub_1001EE568();
            if (!v17 || v56 >= v58)
            {
              goto LABEL_125;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }

          if (!is_mul_ok(v53, a5) || __CFADD__(v53 * a5, (v56 + v57)))
          {
            goto LABEL_124;
          }

          sub_1001EE584();
          if (v21)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v39)
    {
      if (v39 != 1)
      {
        sub_1001EE4C0();
        while (1)
        {
          sub_1001EE590();
          if (v17 && v43 < v42)
          {
            v44 = -48;
          }

          else if (v43 < 0x41 || v43 >= v41)
          {
            sub_1001EE568();
            if (!v17 || v43 >= v45)
            {
              goto LABEL_125;
            }

            v44 = -87;
          }

          else
          {
            v44 = -55;
          }

          if (!is_mul_ok(v40, a5) || v40 * a5 < (v43 + v44))
          {
            goto LABEL_124;
          }

          sub_1001EE584();
          if (v21)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    if (v39 != 1)
    {
      sub_1001EE4C0();
      do
      {
        sub_1001EE590();
        if (v17 && v50 < v49)
        {
          v51 = -48;
        }

        else if (v50 < 0x41 || v50 >= v48)
        {
          sub_1001EE568();
          if (!v17 || v50 >= v52)
          {
            goto LABEL_125;
          }

          v51 = -87;
        }

        else
        {
          v51 = -55;
        }

        if (!is_mul_ok(v47, a5) || __CFADD__(v47 * a5, (v50 + v51)))
        {
          goto LABEL_124;
        }

        sub_1001EE584();
      }

      while (!v21);
LABEL_123:
      v8 = v46;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_1001F38CC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1001F7858();
  }

  result = sub_1001F39FC(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1001F39A8()
{
  result = qword_1002BD230;
  if (!qword_1002BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD230);
  }

  return result;
}

uint64_t sub_1001F39FC(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1001EE2BC(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1001F6D28();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1001EE2BC(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1001EE2BC(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1001F6D28();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_1001F3E38()
{
  result = qword_1002BD238;
  if (!qword_1002BD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD238);
  }

  return result;
}

unint64_t sub_1001F3E8C()
{
  result = qword_1002BD248;
  if (!qword_1002BD248)
  {
    sub_100019BC4(&qword_1002BD240, &qword_10021C270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD248);
  }

  return result;
}

unint64_t sub_1001F3EF0()
{
  result = qword_1002BD250;
  if (!qword_1002BD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD250);
  }

  return result;
}

unint64_t sub_1001F3F4C()
{
  result = qword_1002BD258;
  if (!qword_1002BD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD258);
  }

  return result;
}

unint64_t sub_1001F3FA0()
{
  result = qword_1002BD260;
  if (!qword_1002BD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD260);
  }

  return result;
}

unint64_t sub_1001F3FF4()
{
  result = qword_1002BD268;
  if (!qword_1002BD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD268);
  }

  return result;
}

uint64_t sub_1001F4048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001F4090(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000B2EC8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1001F40E4()
{
  result = qword_1002BD280;
  if (!qword_1002BD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD280);
  }

  return result;
}

unint64_t sub_1001F4138()
{
  result = qword_1002BD288;
  if (!qword_1002BD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD288);
  }

  return result;
}

unint64_t sub_1001F418C()
{
  result = qword_1002BD290;
  if (!qword_1002BD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD290);
  }

  return result;
}

unint64_t sub_1001F41E0()
{
  result = qword_1002BD298;
  if (!qword_1002BD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD298);
  }

  return result;
}

unint64_t sub_1001F4234()
{
  result = qword_1002BD2A0;
  if (!qword_1002BD2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD2A0);
  }

  return result;
}

unint64_t sub_1001F4288()
{
  result = qword_1002BD2A8;
  if (!qword_1002BD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD2A8);
  }

  return result;
}

unint64_t sub_1001F4330()
{
  result = qword_1002BD2B0;
  if (!qword_1002BD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD2B0);
  }

  return result;
}

unint64_t sub_1001F4384()
{
  result = qword_1002BD2B8;
  if (!qword_1002BD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BD2B8);
  }

  return result;
}

double sub_1001F43DC()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 36);
  v5 = *(v1 + 38);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 24);
  *(v0 + 24) = result;
  *(v0 + 32) = v3;
  *(v0 + 36) = v4;
  *(v0 + 38) = v5;
  return result;
}

unint64_t sub_1001F4454@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = *(v1 + 56);
  v4 = *(v1 + 80);
  v5 = *(v1 + 87);
  *(v2 - 112) = a1;
  *(v2 - 104) = v4;
  *(v2 - 97) = v5;

  return sub_1000B74F4();
}

unint64_t sub_1001F4480@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 - 144;
  *v4 = *(v1 + 56);
  v5 = *(v1 + 80);
  v6 = *(v1 + 87);
  *(v2 - 128) = a1;
  *(v2 - 120) = v5;
  *(v4 + 31) = v6;

  return sub_1000B74F4();
}

void sub_1001F44B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t sub_1001F44D0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2082;

  return sub_1001EADD8();
}

double sub_1001F44F0(float a1)
{
  *v1 = a1;

  return result;
}

double sub_1001F4520()
{

  return sub_1000B738C(0, 0xE000000000000000, 6, v0 - 88);
}

void sub_1001F456C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t sub_1001F458C()
{

  return swift_arrayDestroy();
}

uint64_t sub_1001F45A8()
{

  return sub_10003A380(v1, v0);
}

uint64_t sub_1001F45C0()
{

  return swift_slowAlloc();
}

uint64_t sub_1001F45FC()
{
}

uint64_t sub_1001F4638()
{

  return swift_arrayDestroy();
}

uint64_t sub_1001F4654(uint64_t a1, uint64_t a2, ...)
{
  *(v4 + 14) = v2;
  *(v4 + 22) = v3;

  return swift_getErrorValue();
}

uint64_t sub_1001F4678()
{
}

uint64_t sub_1001F4690()
{
  *(v0 + 12) = 2082;

  return sub_1001EADD8();
}

uint64_t sub_1001F46AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  *(v13 + 14) = v12;
  *(v13 + 22) = v14;

  return swift_getErrorValue();
}

uint64_t sub_1001F46D0(uint64_t a1, ...)
{
  *(v2 + 14) = v1;
  *(v2 + 22) = v3;

  return swift_getErrorValue();
}

double sub_1001F46F4(float a1)
{
  *v1 = a1;

  return result;
}

uint64_t sub_1001F4718()
{

  return swift_slowAlloc();
}

double sub_1001F4734@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  return sub_1000B77D0(a1, a2, 0xD000000000000010, a3, a4);
}

void sub_1001F474C(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 21;
}

double sub_1001F476C()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

unint64_t sub_1001F4794(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_1000E4544(a1, a2, va);
}

unint64_t sub_1001F47AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_1000E4544(a1, a2, va);
}

unint64_t sub_1001F47C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1000E4544(a1, a2, va);
}

BOOL sub_1001F47DC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1001F47F4()
{

  return sub_1000402B8(v0);
}

uint64_t sub_1001F480C()
{

  return sub_10018EB84(v0, v1 - 296);
}

unint64_t sub_1001F4824(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1000E4544(v3, v4, a3);
}

uint64_t sub_1001F483C()
{

  return sub_1001F5E98();
}

uint64_t sub_1001F4854()
{
}

void *sub_1001F486C()
{
  v2 = *(v0 + 112);

  return sub_10001AE68((v0 + 88), v2);
}

unsigned int *sub_1001F4E84(unsigned int *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 2) = 2;
  *result = v2 & 0xE0FFFFFC | 0x2000000;
  return result;
}

void sub_1001F524C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to determine container path error: %llu", &v3, 0xCu);
}

void sub_1001F536C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*a1 + 8);
  v5 = a2;
  v6 = [v4 options];
  v7 = [v6 databasePath];
  v8 = *(a3 + 56);
  v9 = 138543618;
  v10 = v7;
  v11 = 2048;
  v12 = v8;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Migrating %{public}@ to %llu failed!", &v9, 0x16u);
}

void sub_1001F5534(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 options];
  v5 = [v4 databasePath];
  v6 = 138543362;
  v7 = v5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Requring all stores to migrate after truncating corrupt database at: %{public}@", &v6, 0xCu);
}

void sub_1001F561C(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
}

void sub_1001F56AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100013EFC() databasePath];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  sub_100013ECC(&_mh_execute_header, v5, v6, "Connection taken down HARD, please call close before deallocating: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_1001F5740(void *a1)
{
  v1 = a1;
  v2 = sub_100011CA8(7u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v9) = 138543362;
    *(&v9 + 4) = v1;
    sub_100013ECC(&_mh_execute_header, v3, v4, "Encountered exception while executing query: %{public}@", v5, v6, v7, v8, v9, DWORD2(v9));
  }

  objc_end_catch();
}

void sub_1001F57EC(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = sub_100011CA8(7u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v9) = 138543362;
    *(&v9 + 4) = v1;
    sub_100013ECC(&_mh_execute_header, v3, v4, "Encountered exception while in transaction: %{public}@", v5, v6, v7, v8, v9, DWORD2(v9));
  }

  objc_end_catch();
}

void sub_1001F58E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [sub_100013EFC() databasePath];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  sub_100013ECC(&_mh_execute_header, v5, v6, "Can't define application function since the connection is not open: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

void sub_1001F5978(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [sub_100013EFC() databasePath];
  sub_100013EEC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1001F5A14(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = objc_opt_class();
  v5 = v4;
  v6 = [sub_100013F08() databasePath];
  v7 = 138412546;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%@]: Truncating database after corruption: %{public}@", &v7, 0x16u);
}

void sub_1001F5AEC(void *a1)
{
  v3 = a1;
  sub_100013EFC();
  v4 = objc_opt_class();
  v5 = [sub_100013F08() databasePath];
  sub_100013EB4();
  sub_100013EEC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1001F5BA4(void *a1)
{
  v3 = a1;
  sub_100013EFC();
  v4 = objc_opt_class();
  v5 = [sub_100013F08() databasePath];
  sub_100013EB4();
  sub_100013EEC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1001F5C84(void *a1)
{
  v3 = a1;
  sub_100013EFC();
  v4 = objc_opt_class();
  v5 = [sub_100013F08() databasePath];
  sub_100013EB4();
  sub_100013EEC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1001F5D64(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a3;
  v5 = v7;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %@", &v6, 0x16u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}