uint64_t sub_254E885BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254E6775C(&qword_27F755A10, &unk_254EA3818);
  result = sub_254E9E3EC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_254E87E80(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_254E9E5FC();
    sub_254E9E29C();

    result = sub_254E9E63C();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_254E88904(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_254E88360(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_254E89080(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_254E9E5FC();
      sub_254E9E29C();
      result = sub_254E9E63C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_254E9E5CC() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_254E88DE8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_254E9E5DC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_254E88A6C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_34;
  }

  if (a3)
  {
    sub_254E885BC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_254E88F40();
      goto LABEL_34;
    }

    sub_254E892B4(v7 + 1);
  }

  v9 = *v3;
  sub_254E9E5FC();
  sub_254E62278(v22, v6);
  result = sub_254E9E63C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = 0xE400000000000000;
      v13 = 1702125924;
      switch(*(*(v9 + 48) + a2))
      {
        case 1:
          v13 = 0x6D754E656E6F6870;
          v12 = 0xEB00000000726562;
          break;
        case 2:
          v13 = 1802398060;
          break;
        case 3:
          v12 = 0xE700000000000000;
          v13 = 0x73736572646461;
          break;
        case 4:
          v12 = 0xE600000000000000;
          v13 = 0x6E6F73726570;
          break;
        case 5:
          v12 = 0xE500000000000000;
          v13 = 0x6563616C70;
          break;
        case 6:
          v13 = 0x617A696E6167726FLL;
          v12 = 0xEC0000006E6F6974;
          break;
        case 7:
          v12 = 0xE900000000000079;
          v13 = 0x7469746E45707061;
          break;
        case 8:
          v13 = 0x6E65746E49707061;
          v12 = 0xE900000000000074;
          break;
        default:
          break;
      }

      v14 = 0xE400000000000000;
      v15 = 1702125924;
      switch(v6)
      {
        case 1:
          v15 = 0x6D754E656E6F6870;
          v14 = 0xEB00000000726562;
          break;
        case 2:
          v15 = 1802398060;
          break;
        case 3:
          v14 = 0xE700000000000000;
          v15 = 0x73736572646461;
          break;
        case 4:
          v14 = 0xE600000000000000;
          v15 = 0x6E6F73726570;
          break;
        case 5:
          v14 = 0xE500000000000000;
          v15 = 0x6563616C70;
          break;
        case 6:
          v15 = 0x617A696E6167726FLL;
          v14 = 0xEC0000006E6F6974;
          break;
        case 7:
          v14 = 0xE900000000000079;
          v15 = 0x7469746E45707061;
          break;
        case 8:
          v15 = 0x6E65746E49707061;
          v14 = 0xE900000000000074;
          break;
        default:
          break;
      }

      if (v13 == v15 && v12 == v14)
      {
        goto LABEL_37;
      }

      v17 = sub_254E9E5CC();

      if (v17)
      {
        goto LABEL_38;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_34:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_37:

LABEL_38:
  result = sub_254E9E5DC();
  __break(1u);
  return result;
}

void *sub_254E88DE8()
{
  v1 = v0;
  sub_254E6775C(&qword_27F7554C0, &qword_254EA0800);
  v2 = *v0;
  v3 = sub_254E9E3DC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void *sub_254E88F40()
{
  v1 = v0;
  sub_254E6775C(&qword_27F755A10, &unk_254EA3818);
  v2 = *v0;
  v3 = sub_254E9E3DC();
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

uint64_t sub_254E89080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254E6775C(&qword_27F7554C0, &qword_254EA0800);
  result = sub_254E9E3EC();
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
        sub_254E9E5FC();

        sub_254E9E29C();
        result = sub_254E9E63C();
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

uint64_t sub_254E892B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_254E6775C(&qword_27F755A10, &unk_254EA3818);
  result = sub_254E9E3EC();
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
        sub_254E9E5FC();
        sub_254E9E29C();

        result = sub_254E9E63C();
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

uint64_t sub_254E895CC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_254E9E27C();
  }

  return sub_254E62CF4();
}

unint64_t sub_254E89628()
{
  result = qword_27F755718;
  if (!qword_27F755718)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedAppIntent, &type metadata for DetectedAppIntent, v0, v1);
    atomic_store(result, &qword_27F755718);
  }

  return result;
}

unint64_t sub_254E8967C()
{
  result = qword_27F755720;
  if (!qword_27F755720)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedOrganization, &type metadata for DetectedOrganization, v0, v1);
    atomic_store(result, &qword_27F755720);
  }

  return result;
}

unint64_t sub_254E896D0()
{
  result = qword_27F755728;
  if (!qword_27F755728)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedPlace, &type metadata for DetectedPlace, v0, v1);
    atomic_store(result, &qword_27F755728);
  }

  return result;
}

unint64_t sub_254E89724()
{
  result = qword_27F755730;
  if (!qword_27F755730)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedPerson, &type metadata for DetectedPerson, v0, v1);
    atomic_store(result, &qword_27F755730);
  }

  return result;
}

unint64_t sub_254E89778()
{
  result = qword_27F755738;
  if (!qword_27F755738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedAddress, &type metadata for DetectedAddress, v0, v1);
    atomic_store(result, &qword_27F755738);
  }

  return result;
}

unint64_t sub_254E897CC()
{
  result = qword_27F755748;
  if (!qword_27F755748)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedPhoneNumber, &type metadata for DetectedPhoneNumber, v0, v1);
    atomic_store(result, &qword_27F755748);
  }

  return result;
}

unint64_t sub_254E89820()
{
  result = qword_27F755758;
  if (!qword_27F755758)
  {
    result = swift_getWitnessTable(a9_6, &type metadata for AddressComponents.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755758);
  }

  return result;
}

unint64_t sub_254E89874()
{
  result = qword_280C40998;
  if (!qword_280C40998)
  {
    result = swift_getWitnessTable(asc_254EA33FC, &type metadata for DetectedDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40998);
  }

  return result;
}

unint64_t sub_254E898C8()
{
  result = qword_27F755788;
  if (!qword_27F755788)
  {
    result = swift_getWitnessTable(asc_254EA33AC, &type metadata for DetectedPhoneNumber.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755788);
  }

  return result;
}

unint64_t sub_254E8991C()
{
  result = qword_27F7557A0;
  if (!qword_27F7557A0)
  {
    result = swift_getWitnessTable(a9_7, &type metadata for DetectedLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7557A0);
  }

  return result;
}

unint64_t sub_254E89970()
{
  result = qword_27F7557C8;
  if (!qword_27F7557C8)
  {
    result = swift_getWitnessTable(byte_254EA330C, &type metadata for DetectedAddress.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7557C8);
  }

  return result;
}

unint64_t sub_254E899C4()
{
  result = qword_27F7557D0;
  if (!qword_27F7557D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AddressComponents, &type metadata for AddressComponents, v0, v1);
    atomic_store(result, &qword_27F7557D0);
  }

  return result;
}

unint64_t sub_254E89A18()
{
  result = qword_27F7557E0;
  if (!qword_27F7557E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AddressComponents, &type metadata for AddressComponents, v0, v1);
    atomic_store(result, &qword_27F7557E0);
  }

  return result;
}

uint64_t sub_254E89AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_254E6775C(&qword_27F7557F8, &qword_254EA1250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254E89B14()
{
  result = qword_27F755808;
  if (!qword_27F755808)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for DetectedPerson.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755808);
  }

  return result;
}

uint64_t sub_254E89B68(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_254E67858(&qword_27F755480, &qword_254EA03F0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254E89BD4()
{
  result = qword_27F755820;
  if (!qword_27F755820)
  {
    result = swift_getWitnessTable(byte_254EA326C, &type metadata for DetectedPlace.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755820);
  }

  return result;
}

unint64_t sub_254E89C28()
{
  result = qword_27F755838;
  if (!qword_27F755838)
  {
    result = swift_getWitnessTable(asc_254EA321C, &type metadata for DetectedOrganization.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755838);
  }

  return result;
}

uint64_t sub_254E89C7C()
{
  sub_254E737F0();
  sub_254E6775C(v1, v2);
  sub_254E62148();
  v3 = sub_254E62CF4();
  v4(v3);
  return v0;
}

uint64_t sub_254E89CD4()
{
  sub_254E737F0();
  sub_254E6775C(v1, v2);
  sub_254E62148();
  v3 = sub_254E62CF4();
  v4(v3);
  return v0;
}

uint64_t sub_254E89D2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_254E8CB94(a1, a2);
  sub_254E6775C(v3, v4);
  sub_254E62148();
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_254E89D80()
{
  result = qword_27F755850;
  if (!qword_27F755850)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27F755850);
  }

  return result;
}

unint64_t sub_254E89DD4()
{
  result = qword_280C40100;
  if (!qword_280C40100)
  {
    result = swift_getWitnessTable(asc_254EA31CC, &type metadata for DetectedAppEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40100);
  }

  return result;
}

unint64_t sub_254E89E28()
{
  result = qword_27F755870;
  if (!qword_27F755870)
  {
    result = swift_getWitnessTable(byte_254EA317C, &type metadata for DetectedAppIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755870);
  }

  return result;
}

unint64_t sub_254E89F10()
{
  result = qword_27F755880;
  if (!qword_27F755880)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AddressComponents, &type metadata for AddressComponents, v0, v1);
    atomic_store(result, &qword_27F755880);
  }

  return result;
}

unint64_t sub_254E89FB0()
{
  result = qword_27F755890;
  if (!qword_27F755890)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedPhoneNumber, &type metadata for DetectedPhoneNumber, v0, v1);
    atomic_store(result, &qword_27F755890);
  }

  return result;
}

unint64_t sub_254E8A050()
{
  result = qword_27F7558A0;
  if (!qword_27F7558A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedAddress, &type metadata for DetectedAddress, v0, v1);
    atomic_store(result, &qword_27F7558A0);
  }

  return result;
}

unint64_t sub_254E8A0A8()
{
  result = qword_27F7558A8;
  if (!qword_27F7558A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedPerson, &type metadata for DetectedPerson, v0, v1);
    atomic_store(result, &qword_27F7558A8);
  }

  return result;
}

unint64_t sub_254E8A100()
{
  result = qword_27F7558B0;
  if (!qword_27F7558B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedPlace, &type metadata for DetectedPlace, v0, v1);
    atomic_store(result, &qword_27F7558B0);
  }

  return result;
}

unint64_t sub_254E8A158()
{
  result = qword_27F7558B8;
  if (!qword_27F7558B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedOrganization, &type metadata for DetectedOrganization, v0, v1);
    atomic_store(result, &qword_27F7558B8);
  }

  return result;
}

unint64_t sub_254E8A1F8()
{
  result = qword_27F7558C8;
  if (!qword_27F7558C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectedAppIntent, &type metadata for DetectedAppIntent, v0, v1);
    atomic_store(result, &qword_27F7558C8);
  }

  return result;
}

unint64_t sub_254E8A250()
{
  result = qword_280C40040;
  if (!qword_280C40040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectableEntityType, &type metadata for DetectableEntityType, v0, v1);
    atomic_store(result, &qword_280C40040);
  }

  return result;
}

uint64_t sub_254E8A2E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_254E8CB94(0, a2);
    sub_254E67858(v4, v5);
    v6 = sub_254E8CAE4();
    result = swift_getWitnessTable(v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254E8A3C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
    {
      return sub_254E8CA74(*a1 + 2147483646);
    }

    sub_254E8CC2C();
  }

  else
  {
    v3 = -1;
  }

  return sub_254E8CA74(v3);
}

uint64_t sub_254E8A414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254E8A4A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_254E8A4E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_254E8A58C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_254E8A5CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetectedAppEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetectedPerson.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddressComponents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AddressComponents.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254E8A9A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_254E8CA74(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return sub_254E8CA74((*a1 | (v4 << 8)) - 9);
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

      return sub_254E8CA74((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_254E8CA74((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_254E8CA74(v8);
}

_BYTE *sub_254E8AA28(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          result = sub_254E73980(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_254E8AB80(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_254E8AC2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_254E8CA74(-1);
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
      return sub_254E8CA74((*a1 | (v4 << 8)) - 2);
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

      return sub_254E8CA74((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_254E8CA74((*a1 | (v4 << 8)) - 2);
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

  return sub_254E8CA74(v8);
}

_BYTE *sub_254E8ACB0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_254E73980(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254E8AD8C()
{
  result = qword_27F7558E0;
  if (!qword_27F7558E0)
  {
    result = swift_getWitnessTable(byte_254EA22F4, &type metadata for DetectedEntityDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7558E0);
  }

  return result;
}

unint64_t sub_254E8ADE4()
{
  result = qword_27F7558E8;
  if (!qword_27F7558E8)
  {
    result = swift_getWitnessTable(byte_254EA23AC, &type metadata for DetectedEntity.AppIntentCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7558E8);
  }

  return result;
}

unint64_t sub_254E8AE3C()
{
  result = qword_27F7558F0;
  if (!qword_27F7558F0)
  {
    result = swift_getWitnessTable(aE9, &type metadata for DetectedEntity.AppEntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7558F0);
  }

  return result;
}

unint64_t sub_254E8AE94()
{
  result = qword_27F7558F8;
  if (!qword_27F7558F8)
  {
    result = swift_getWitnessTable(byte_254EA251C, &type metadata for DetectedEntity.OrganizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7558F8);
  }

  return result;
}

unint64_t sub_254E8AEEC()
{
  result = qword_27F755900;
  if (!qword_27F755900)
  {
    result = swift_getWitnessTable(byte_254EA25D4, &type metadata for DetectedEntity.PlaceCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755900);
  }

  return result;
}

unint64_t sub_254E8AF44()
{
  result = qword_27F755908;
  if (!qword_27F755908)
  {
    result = swift_getWitnessTable("=z9-0?", &type metadata for DetectedEntity.PersonCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755908);
  }

  return result;
}

unint64_t sub_254E8AF9C()
{
  result = qword_27F755910;
  if (!qword_27F755910)
  {
    result = swift_getWitnessTable(byte_254EA2744, &type metadata for DetectedEntity.AddressCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755910);
  }

  return result;
}

unint64_t sub_254E8AFF4()
{
  result = qword_27F755918;
  if (!qword_27F755918)
  {
    result = swift_getWitnessTable(byte_254EA27FC, &type metadata for DetectedEntity.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755918);
  }

  return result;
}

unint64_t sub_254E8B04C()
{
  result = qword_27F755920;
  if (!qword_27F755920)
  {
    result = swift_getWitnessTable(byte_254EA28B4, &type metadata for DetectedEntity.PhoneNumberCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755920);
  }

  return result;
}

unint64_t sub_254E8B0A4()
{
  result = qword_27F755928;
  if (!qword_27F755928)
  {
    result = swift_getWitnessTable(aW9_0, &type metadata for DetectedEntity.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755928);
  }

  return result;
}

unint64_t sub_254E8B0FC()
{
  result = qword_27F755930;
  if (!qword_27F755930)
  {
    result = swift_getWitnessTable(byte_254EA2A24, &type metadata for DetectedEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755930);
  }

  return result;
}

unint64_t sub_254E8B154()
{
  result = qword_27F755938;
  if (!qword_27F755938)
  {
    result = swift_getWitnessTable(byte_254EA2ADC, &type metadata for AddressComponents.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755938);
  }

  return result;
}

unint64_t sub_254E8B1AC()
{
  result = qword_27F755940;
  if (!qword_27F755940)
  {
    result = swift_getWitnessTable("5u9-,9", &type metadata for DetectedDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755940);
  }

  return result;
}

unint64_t sub_254E8B204()
{
  result = qword_27F755948;
  if (!qword_27F755948)
  {
    result = swift_getWitnessTable("}t9-P8", &type metadata for DetectedPhoneNumber.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755948);
  }

  return result;
}

unint64_t sub_254E8B25C()
{
  result = qword_27F755950;
  if (!qword_27F755950)
  {
    result = swift_getWitnessTable(byte_254EA2D04, &type metadata for DetectedLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755950);
  }

  return result;
}

unint64_t sub_254E8B2B4()
{
  result = qword_27F755958;
  if (!qword_27F755958)
  {
    result = swift_getWitnessTable(aS9, &type metadata for DetectedAddress.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755958);
  }

  return result;
}

unint64_t sub_254E8B30C()
{
  result = qword_27F755960;
  if (!qword_27F755960)
  {
    result = swift_getWitnessTable(aUr9, &type metadata for DetectedPerson.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755960);
  }

  return result;
}

unint64_t sub_254E8B364()
{
  result = qword_27F755968;
  if (!qword_27F755968)
  {
    result = swift_getWitnessTable(byte_254EA2F2C, &type metadata for DetectedPlace.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755968);
  }

  return result;
}

unint64_t sub_254E8B3BC()
{
  result = qword_27F755970;
  if (!qword_27F755970)
  {
    result = swift_getWitnessTable(byte_254EA2FE4, &type metadata for DetectedOrganization.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755970);
  }

  return result;
}

unint64_t sub_254E8B414()
{
  result = qword_27F755978;
  if (!qword_27F755978)
  {
    result = swift_getWitnessTable("-p9-(3", &type metadata for DetectedAppEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755978);
  }

  return result;
}

unint64_t sub_254E8B46C()
{
  result = qword_27F755980;
  if (!qword_27F755980)
  {
    result = swift_getWitnessTable("uo9-L2", &type metadata for DetectedAppIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755980);
  }

  return result;
}

unint64_t sub_254E8B4C4()
{
  result = qword_27F755988;
  if (!qword_27F755988)
  {
    result = swift_getWitnessTable(byte_254EA30C4, &type metadata for DetectedAppIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755988);
  }

  return result;
}

unint64_t sub_254E8B51C()
{
  result = qword_27F755990;
  if (!qword_27F755990)
  {
    result = swift_getWitnessTable(byte_254EA30EC, &type metadata for DetectedAppIntent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755990);
  }

  return result;
}

unint64_t sub_254E8B574()
{
  result = qword_280C400F0;
  if (!qword_280C400F0)
  {
    result = swift_getWitnessTable(byte_254EA300C, &type metadata for DetectedAppEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C400F0);
  }

  return result;
}

unint64_t sub_254E8B5CC()
{
  result = qword_280C400F8;
  if (!qword_280C400F8)
  {
    result = swift_getWitnessTable(byte_254EA3034, &type metadata for DetectedAppEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C400F8);
  }

  return result;
}

unint64_t sub_254E8B624()
{
  result = qword_27F755998;
  if (!qword_27F755998)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for DetectedOrganization.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755998);
  }

  return result;
}

unint64_t sub_254E8B67C()
{
  result = qword_27F7559A0;
  if (!qword_27F7559A0)
  {
    result = swift_getWitnessTable("]|9-l4", &type metadata for DetectedOrganization.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559A0);
  }

  return result;
}

unint64_t sub_254E8B6D4()
{
  result = qword_27F7559A8;
  if (!qword_27F7559A8)
  {
    result = swift_getWitnessTable(byte_254EA2E9C, &type metadata for DetectedPlace.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559A8);
  }

  return result;
}

unint64_t sub_254E8B72C()
{
  result = qword_27F7559B0;
  if (!qword_27F7559B0)
  {
    result = swift_getWitnessTable(byte_254EA2EC4, &type metadata for DetectedPlace.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559B0);
  }

  return result;
}

unint64_t sub_254E8B784()
{
  result = qword_27F7559B8;
  if (!qword_27F7559B8)
  {
    result = swift_getWitnessTable(byte_254EA2DE4, &type metadata for DetectedPerson.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559B8);
  }

  return result;
}

unint64_t sub_254E8B7DC()
{
  result = qword_27F7559C0;
  if (!qword_27F7559C0)
  {
    result = swift_getWitnessTable(byte_254EA2E0C, &type metadata for DetectedPerson.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559C0);
  }

  return result;
}

unint64_t sub_254E8B834()
{
  result = qword_27F7559C8;
  if (!qword_27F7559C8)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for DetectedAddress.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559C8);
  }

  return result;
}

unint64_t sub_254E8B88C()
{
  result = qword_27F7559D0;
  if (!qword_27F7559D0)
  {
    result = swift_getWitnessTable(byte_254EA2D54, &type metadata for DetectedAddress.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559D0);
  }

  return result;
}

unint64_t sub_254E8B8E4()
{
  result = qword_27F7559D8;
  if (!qword_27F7559D8)
  {
    result = swift_getWitnessTable(asc_254EA2C74, &type metadata for DetectedLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559D8);
  }

  return result;
}

unint64_t sub_254E8B93C()
{
  result = qword_27F7559E0;
  if (!qword_27F7559E0)
  {
    result = swift_getWitnessTable(asc_254EA2C9C, &type metadata for DetectedLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559E0);
  }

  return result;
}

unint64_t sub_254E8B994()
{
  result = qword_27F7559E8;
  if (!qword_27F7559E8)
  {
    result = swift_getWitnessTable(byte_254EA2BBC, &type metadata for DetectedPhoneNumber.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559E8);
  }

  return result;
}

unint64_t sub_254E8B9EC()
{
  result = qword_27F7559F0;
  if (!qword_27F7559F0)
  {
    result = swift_getWitnessTable(byte_254EA2BE4, &type metadata for DetectedPhoneNumber.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559F0);
  }

  return result;
}

unint64_t sub_254E8BA44()
{
  result = qword_280C40988;
  if (!qword_280C40988)
  {
    result = swift_getWitnessTable(byte_254EA2B04, &type metadata for DetectedDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40988);
  }

  return result;
}

unint64_t sub_254E8BA9C()
{
  result = qword_280C40990;
  if (!qword_280C40990)
  {
    result = swift_getWitnessTable(byte_254EA2B2C, &type metadata for DetectedDate.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40990);
  }

  return result;
}

unint64_t sub_254E8BAF4()
{
  result = qword_27F7559F8;
  if (!qword_27F7559F8)
  {
    result = swift_getWitnessTable(aU_4, &type metadata for AddressComponents.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7559F8);
  }

  return result;
}

unint64_t sub_254E8BB4C()
{
  result = qword_27F755A00;
  if (!qword_27F755A00)
  {
    result = swift_getWitnessTable(aE_5, &type metadata for AddressComponents.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755A00);
  }

  return result;
}

unint64_t sub_254E8BBA4()
{
  result = qword_280C40820;
  if (!qword_280C40820)
  {
    result = swift_getWitnessTable("ņ9-P<", &type metadata for DetectedEntity.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_280C40820);
  }

  return result;
}

unint64_t sub_254E8BBFC()
{
  result = qword_280C40828;
  if (!qword_280C40828)
  {
    result = swift_getWitnessTable("Ղ9-(<", &type metadata for DetectedEntity.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_280C40828);
  }

  return result;
}

unint64_t sub_254E8BC54()
{
  result = qword_280C407C0;
  if (!qword_280C407C0)
  {
    result = swift_getWitnessTable(asc_254EA2824, &type metadata for DetectedEntity.PhoneNumberCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407C0);
  }

  return result;
}

unint64_t sub_254E8BCAC()
{
  result = qword_280C407C8;
  if (!qword_280C407C8)
  {
    result = swift_getWitnessTable(byte_254EA284C, &type metadata for DetectedEntity.PhoneNumberCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407C8);
  }

  return result;
}

unint64_t sub_254E8BD04()
{
  result = qword_280C40810;
  if (!qword_280C40810)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for DetectedEntity.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_280C40810);
  }

  return result;
}

unint64_t sub_254E8BD5C()
{
  result = qword_280C40818;
  if (!qword_280C40818)
  {
    result = swift_getWitnessTable(aE_6, &type metadata for DetectedEntity.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_280C40818);
  }

  return result;
}

unint64_t sub_254E8BDB4()
{
  result = qword_280C407E0;
  if (!qword_280C407E0)
  {
    result = swift_getWitnessTable(byte_254EA26B4, &type metadata for DetectedEntity.AddressCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407E0);
  }

  return result;
}

unint64_t sub_254E8BE0C()
{
  result = qword_280C407E8;
  if (!qword_280C407E8)
  {
    result = swift_getWitnessTable(byte_254EA26DC, &type metadata for DetectedEntity.AddressCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407E8);
  }

  return result;
}

unint64_t sub_254E8BE64()
{
  result = qword_280C407F0;
  if (!qword_280C407F0)
  {
    result = swift_getWitnessTable(byte_254EA25FC, &type metadata for DetectedEntity.PersonCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407F0);
  }

  return result;
}

unint64_t sub_254E8BEBC()
{
  result = qword_280C407F8;
  if (!qword_280C407F8)
  {
    result = swift_getWitnessTable(byte_254EA2624, &type metadata for DetectedEntity.PersonCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407F8);
  }

  return result;
}

unint64_t sub_254E8BF14()
{
  result = qword_280C40800;
  if (!qword_280C40800)
  {
    result = swift_getWitnessTable(asc_254EA2544, &type metadata for DetectedEntity.PlaceCodingKeys, v0, v1);
    atomic_store(result, &qword_280C40800);
  }

  return result;
}

unint64_t sub_254E8BF6C()
{
  result = qword_280C40808;
  if (!qword_280C40808)
  {
    result = swift_getWitnessTable(aM_4, &type metadata for DetectedEntity.PlaceCodingKeys, v0, v1);
    atomic_store(result, &qword_280C40808);
  }

  return result;
}

unint64_t sub_254E8BFC4()
{
  result = qword_280C407B0;
  if (!qword_280C407B0)
  {
    result = swift_getWitnessTable(byte_254EA248C, &type metadata for DetectedEntity.OrganizationCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407B0);
  }

  return result;
}

unint64_t sub_254E8C01C()
{
  result = qword_280C407B8;
  if (!qword_280C407B8)
  {
    result = swift_getWitnessTable(asc_254EA24B4, &type metadata for DetectedEntity.OrganizationCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407B8);
  }

  return result;
}

unint64_t sub_254E8C074()
{
  result = qword_280C40850;
  if (!qword_280C40850)
  {
    result = swift_getWitnessTable("͋9-TB", &type metadata for DetectedEntity.AppEntityCodingKeys, v0, v1);
    atomic_store(result, &qword_280C40850);
  }

  return result;
}

unint64_t sub_254E8C0CC()
{
  result = qword_280C40858;
  if (!qword_280C40858)
  {
    result = swift_getWitnessTable("݇9-,B", &type metadata for DetectedEntity.AppEntityCodingKeys, v0, v1);
    atomic_store(result, &qword_280C40858);
  }

  return result;
}

unint64_t sub_254E8C124()
{
  result = qword_280C407D0;
  if (!qword_280C407D0)
  {
    result = swift_getWitnessTable(byte_254EA231C, &type metadata for DetectedEntity.AppIntentCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407D0);
  }

  return result;
}

unint64_t sub_254E8C17C()
{
  result = qword_280C407D8;
  if (!qword_280C407D8)
  {
    result = swift_getWitnessTable(byte_254EA2344, &type metadata for DetectedEntity.AppIntentCodingKeys, v0, v1);
    atomic_store(result, &qword_280C407D8);
  }

  return result;
}

unint64_t sub_254E8C1D4()
{
  result = qword_280C40838;
  if (!qword_280C40838)
  {
    result = swift_getWitnessTable(asc_254EA2994, &type metadata for DetectedEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40838);
  }

  return result;
}

unint64_t sub_254E8C22C()
{
  result = qword_280C40840;
  if (!qword_280C40840)
  {
    result = swift_getWitnessTable(byte_254EA29BC, &type metadata for DetectedEntity.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40840);
  }

  return result;
}

unint64_t sub_254E8C284()
{
  result = qword_280C40020;
  if (!qword_280C40020)
  {
    result = swift_getWitnessTable(asc_254EA2264, &type metadata for DetectedEntityDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40020);
  }

  return result;
}

unint64_t sub_254E8C2DC()
{
  result = qword_280C40028;
  if (!qword_280C40028)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for DetectedEntityDetails.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40028);
  }

  return result;
}

unint64_t sub_254E8C330()
{
  result = qword_280C40038;
  if (!qword_280C40038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectableEntityType, &type metadata for DetectableEntityType, v0, v1);
    atomic_store(result, &qword_280C40038);
  }

  return result;
}

unint64_t sub_254E8C384()
{
  result = qword_280C3FD08;
  if (!qword_280C3FD08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectableEntityType, &type metadata for DetectableEntityType, v0, v1);
    atomic_store(result, &qword_280C3FD08);
  }

  return result;
}

void *sub_254E8C4B8()
{
  v2 = *(v0 + 16) + 1;

  return sub_254E67BC8(0, v2, 1, v0);
}

void sub_254E8C524()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[13] = 0;
  v0[9] = 0;
  v0[10] = 0;
}

void *sub_254E8C540@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 - 256);
  *v3 = a1;
  v3[1] = v1;
  return v3;
}

uint64_t sub_254E8C5BC@<X0>(char a1@<W8>)
{
  *(v1 - 216) = a1;

  return sub_254E9E4AC();
}

uint64_t sub_254E8C5DC(uint64_t a1, uint64_t a2)
{

  return sub_254E9E52C();
}

uint64_t sub_254E8C620(uint64_t a1, uint64_t a2)
{

  return sub_254E9E48C();
}

uint64_t sub_254E8C644(uint64_t a1, uint64_t a2)
{

  return sub_254E9E52C();
}

void sub_254E8C694()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_254E8C8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_254E9E59C();
}

uint64_t sub_254E8C908()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_254E8C9E4()
{
  v2 = v0[16];
  *(v1 - 136) = v0[13];
  *(v1 - 128) = v2;
  v3 = v0[15];
  *(v1 - 120) = v0[14];
  *(v1 - 112) = v3;
}

uint64_t sub_254E8CA38(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_254E9E53C();
}

uint64_t sub_254E8CA50(uint64_t a1)
{

  return sub_254E9E24C();
}

uint64_t sub_254E8CA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_254E9E50C();
}

uint64_t sub_254E8CAB8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_254E8CC48()
{
}

uint64_t sub_254E8CC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_254E9E59C();
}

void sub_254E8CC78()
{

  JUMPOUT(0x259C2B550);
}

uint64_t UIContextClient.__allocating_init()()
{
  sub_254E900E4();
  v0 = swift_allocObject();
  type metadata accessor for UIContextXPCClient();
  sub_254E900E4();
  v1 = swift_allocObject();
  *(v0 + 16) = sub_254E9D194(v1, v2);
  return v0;
}

uint64_t UIContextClient.init()()
{
  type metadata accessor for UIContextXPCClient();
  sub_254E900E4();
  v1 = swift_allocObject();
  *(v0 + 16) = sub_254E9D194(v1, v2);
  return v0;
}

uint64_t UIContextClient.retrieveUIElements()()
{
  type metadata accessor for UIContextOptions(0);
  sub_254E90088();
  swift_allocObject();
  v0 = UIContextOptions.init(detectableTypes:)(MEMORY[0x277D84FA0]);
  v1 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceComponents;
  swift_beginAccess();
  *(v0 + v1) = 3;
  v2 = UIContextClient.retrieveUIElements(options:)(v0);

  return v2;
}

uint64_t sub_254E8CE88(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  sub_254E9DCBC();
  sub_254E90088();
  swift_allocObject();
  sub_254E9DCAC();
  v18 = a1;
  type metadata accessor for UIContextOptions(0);
  sub_254E8FD50(&qword_280C3FD38, type metadata accessor for UIContextOptions, protocol conformance descriptor for UIContextOptions);
  v11 = sub_254E9DC9C();
  v13 = v12;

  if (!v5)
  {
    v15 = a2(v11, v13);
    v17 = v16;
    sub_254E9DC8C();
    sub_254E90088();
    swift_allocObject();
    sub_254E9DC7C();
    sub_254E6775C(a3, a4);
    a5();
    sub_254E9DC6C();
    sub_254E635F4(v15, v17);
    sub_254E635F4(v11, v13);

    return v18;
  }

  return result;
}

uint64_t UIContextClient.retrieveOnScreenContent(parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = v3;
  sub_254E900AC();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_254E8D058()
{
  v1 = *(v0 + 80);
  sub_254E9DCBC();
  sub_254E90088();
  swift_allocObject();
  sub_254E9DCAC();
  v3 = v1[1];
  v2 = v1[2];
  v4 = *v1;
  *(v0 + 64) = *(v1 + 6);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  sub_254E8FC48();
  v5 = sub_254E9DC9C();
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  v7 = v5;
  v8 = v6;

  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_254E8D1B0;

  return sub_254E9D634(v7, v8);
}

uint64_t sub_254E8D1B0()
{
  sub_254E900B8();
  sub_254E9007C();
  *v3 = v2;
  *v3 = *v1;
  v2[15] = v4;
  v2[16] = v5;
  v2[17] = v0;

  sub_254E900AC();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254E8D2BC()
{
  v1 = v0[17];
  sub_254E9DC8C();
  sub_254E90088();
  swift_allocObject();
  sub_254E9DC7C();
  sub_254E6775C(&qword_27F755A20, &qword_254EA3848);
  sub_254E8FC9C();
  sub_254E9DC6C();
  v3 = v0[12];
  v2 = v0[13];
  sub_254E635F4(v0[15], v0[16]);
  sub_254E635F4(v3, v2);

  if (v1)
  {
    sub_254E62FEC();

    return v4();
  }

  else
  {
    v6 = v0[9];
    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_254E8D3E4()
{
  sub_254E900B8();
  sub_254E635F4(*(v0 + 96), *(v0 + 104));
  sub_254E62FEC();

  return v1();
}

uint64_t UIContextClient.convert(entity:format:)()
{
  sub_254E900B8();
  v2 = v1;
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  v5 = sub_254E9E10C();
  *(v0 + 96) = v5;
  sub_254E62BD4(v5);
  *(v0 + 104) = v6;
  *(v0 + 112) = sub_254E90094();
  *(v0 + 120) = swift_task_alloc();
  v7 = sub_254E6775C(&qword_27F7551A0, &qword_254E9F1A0);
  sub_254E62CE8(v7);
  *(v0 + 128) = sub_254E62EC0();
  v8 = sub_254E9DE7C();
  *(v0 + 136) = v8;
  sub_254E62BD4(v8);
  *(v0 + 144) = v9;
  *(v0 + 152) = sub_254E62EC0();
  v10 = sub_254E9DE1C();
  *(v0 + 160) = v10;
  sub_254E62BD4(v10);
  *(v0 + 168) = v11;
  *(v0 + 176) = sub_254E62EC0();
  v12 = sub_254E9DE8C();
  *(v0 + 184) = v12;
  sub_254E62BD4(v12);
  *(v0 + 192) = v13;
  *(v0 + 200) = sub_254E62EC0();
  v14 = sub_254E9DEEC();
  *(v0 + 208) = v14;
  sub_254E62BD4(v14);
  *(v0 + 216) = v15;
  *(v0 + 224) = sub_254E62EC0();
  v16 = sub_254E6775C(&qword_27F755158, &unk_254E9F180);
  sub_254E62CE8(v16);
  *(v0 + 232) = sub_254E62EC0();
  v17 = sub_254E6775C(&qword_27F755150, &qword_254E9F178);
  sub_254E62CE8(v17);
  *(v0 + 240) = sub_254E62EC0();
  v18 = sub_254E9DDDC();
  *(v0 + 248) = v18;
  sub_254E62BD4(v18);
  *(v0 + 256) = v19;
  *(v0 + 264) = sub_254E90094();
  *(v0 + 272) = swift_task_alloc();
  v20 = sub_254E6775C(&qword_27F755A28, &unk_254EA3860);
  sub_254E62CE8(v20);
  *(v0 + 280) = sub_254E90094();
  *(v0 + 288) = swift_task_alloc();
  v21 = sub_254E9DDCC();
  sub_254E62CE8(v21);
  *(v0 + 296) = sub_254E62EC0();
  v22 = sub_254E6775C(&qword_27F755848, &qword_254EA1290);
  sub_254E62CE8(v22);
  *(v0 + 304) = sub_254E62EC0();
  v23 = sub_254E6775C(&qword_27F755160, &qword_254EA3870);
  sub_254E62CE8(v23);
  *(v0 + 312) = sub_254E90094();
  *(v0 + 320) = swift_task_alloc();
  *(v0 + 328) = swift_task_alloc();
  v24 = sub_254E9DD6C();
  *(v0 + 336) = v24;
  sub_254E62BD4(v24);
  *(v0 + 344) = v25;
  *(v0 + 352) = sub_254E90094();
  *(v0 + 360) = swift_task_alloc();
  v26 = sub_254E9E19C();
  *(v0 + 368) = v26;
  sub_254E62BD4(v26);
  *(v0 + 376) = v27;
  *(v0 + 384) = sub_254E62EC0();
  v28 = sub_254E9E18C();
  *(v0 + 392) = v28;
  sub_254E62BD4(v28);
  *(v0 + 400) = v29;
  *(v0 + 408) = sub_254E62EC0();
  v30 = sub_254E9E1CC();
  *(v0 + 416) = v30;
  sub_254E62BD4(v30);
  *(v0 + 424) = v31;
  *(v0 + 432) = sub_254E62EC0();
  v32 = sub_254E9E1BC();
  *(v0 + 440) = v32;
  sub_254E62BD4(v32);
  *(v0 + 448) = v33;
  *(v0 + 456) = sub_254E90094();
  *(v0 + 464) = swift_task_alloc();
  *(v0 + 472) = swift_task_alloc();
  v34 = sub_254E9E0DC();
  *(v0 + 480) = v34;
  sub_254E62BD4(v34);
  *(v0 + 488) = v35;
  *(v0 + 496) = sub_254E62EC0();
  v36 = sub_254E9DE0C();
  *(v0 + 504) = v36;
  sub_254E62BD4(v36);
  *(v0 + 512) = v37;
  *(v0 + 520) = sub_254E62EC0();
  v38 = sub_254E9E13C();
  *(v0 + 528) = v38;
  sub_254E62BD4(v38);
  *(v0 + 536) = v39;
  *(v0 + 544) = sub_254E62EC0();
  *(v0 + 552) = *v2;
  *(v0 + 648) = *(v2 + 8);
  sub_254E900AC();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_254E8DA60()
{
  sub_254E900B8();
  sub_254E9E12C();
  v1 = swift_task_alloc();
  *(v0 + 560) = v1;
  *v1 = v0;
  v1[1] = sub_254E8DAFC;
  v2 = *(v0 + 544);

  return MEMORY[0x2821DADB0](v2);
}

uint64_t sub_254E8DAFC()
{
  v2 = *v1;
  sub_254E9007C();
  *v4 = v3;
  v5 = *v1;
  sub_254E9007C();
  *v6 = v5;
  *(v8 + 568) = v7;
  *(v8 + 576) = v0;

  (*(v2[67] + 8))(v2[68], v2[66]);
  sub_254E900AC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254E8DC64()
{
  v1 = v0;
  v2 = *(v0 + 552);
  if (*(v0 + 648))
  {
    if (*(v0 + 648) == 1)
    {
      v3 = *(v0 + 512);

      sub_254E76AAC(v4, 1u);
      sub_254E76AAC(0, 2u);
      v5 = v2 + 56;
      v6 = -1;
      v7 = -1 << *(v2 + 32);
      if (-v7 < 64)
      {
        v6 = ~(-1 << -v7);
      }

      v8 = v6 & *(v2 + 56);
      v9 = (63 - v7) >> 6;
      v63 = v3;

      v10 = 0;
      v11 = MEMORY[0x277D84F90];
      v61 = v2;
      while (v8)
      {
LABEL_11:
        v13 = v1[65];
        v14 = v1;
        v15 = v1[63];
        (*(v63 + 16))(v13, *(v2 + 48) + *(v63 + 72) * (__clz(__rbit64(v8)) | (v10 << 6)), v15);
        v16 = sub_254E9DDFC();
        (*(v63 + 8))(v13, v15);
        v17 = *(v16 + 16);
        v1 = v11[2];
        v18 = v1 + v17;
        if (__OFADD__(v1, v17))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v11 = sub_254E67CC8(0, v11[2] + 1, 1, v11);
          goto LABEL_28;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v18 > v11[3] >> 1)
        {
          if (v1 <= v18)
          {
            v20 = v1 + v17;
          }

          else
          {
            v20 = v1;
          }

          v11 = sub_254E67CC8(isUniquelyReferenced_nonNull_native, v20, 1, v11);
        }

        v1 = v14;
        v8 &= v8 - 1;
        if (*(v16 + 16))
        {
          if ((v11[3] >> 1) - v11[2] < v17)
          {
            goto LABEL_36;
          }

          sub_254E900D0();
          swift_arrayInitWithCopy();

          v2 = v61;
          if (v17)
          {
            v21 = v11[2];
            v22 = __OFADD__(v21, v17);
            v23 = v21 + v17;
            if (v22)
            {
              goto LABEL_37;
            }

            v11[2] = v23;
          }
        }

        else
        {

          v2 = v61;
          if (v17)
          {
            __break(1u);
            goto LABEL_25;
          }
        }
      }

      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_35;
        }

        if (v12 >= v9)
        {
          break;
        }

        v8 = *(v5 + 8 * v12);
        ++v10;
        if (v8)
        {
          v10 = v12;
          goto LABEL_11;
        }
      }

      sub_254E9E0CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_28:
      v25 = v11;
      v26 = v11[2];
      v2 = v25;
      v27 = v25[3];
      if (v26 >= v27 >> 1)
      {
        v2 = sub_254E67CC8((v27 > 1), v26 + 1, 1, v2);
      }

      *(v2 + 16) = v26 + 1;
      sub_254E900D0();
      (*(v30 + 32))(v2 + v28 + *(v29 + 72) * v26);
    }

    else
    {
      sub_254E76AAC(v2, 2u);
      sub_254E76AAC(0, 2u);
      sub_254E6775C(&qword_27F755000, &qword_254E9ED40);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_254EA03C0;
      sub_254E9E08C();
    }
  }

  else
  {
LABEL_25:

    sub_254E76AAC(v24, 0);
    sub_254E76AAC(0, 2u);
  }

  v31 = v1[58];
  v32 = v1;
  v35 = v1 + 55;
  v34 = v1[55];
  v33 = v35[1];
  v37 = v32[53];
  v36 = v32[54];
  v64 = v32[52];
  v32[73] = sub_254E9E16C();
  v38 = swift_allocBox();
  sub_254E90048();
  (*(v39 + 16))(v40);
  *v31 = v38;
  (*(v33 + 104))(v31, *MEMORY[0x277D729F8], v34);
  v41 = sub_254E6775C(&qword_27F755A30, &qword_254EA3878);
  v62 = swift_allocBox();
  v43 = v42;
  v44 = *(v41 + 48);
  sub_254E9E1DC();
  v45 = swift_allocBox();
  sub_254E90048();
  (*(v46 + 104))(v47);
  *v43 = v45;
  v48 = *MEMORY[0x277D72D50];
  sub_254E9E1EC();
  sub_254E90048();
  (*(v49 + 104))(v43, v48);
  sub_254E6775C(&qword_27F755A38, &qword_254EA3880);
  v50 = sub_254E9E1FC();
  v51 = *(v50 - 8);
  v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_254EA03C0;
  *(v53 + v52) = v2;
  (*(v51 + 104))(v53 + v52, *MEMORY[0x277D72E68], v50);
  *(v43 + v44) = v53;
  *v36 = v62;
  (*(v37 + 104))(v36, *MEMORY[0x277D72AB8], v64);
  v54 = swift_task_alloc();
  v32[74] = v54;
  v55 = sub_254E6775C(&qword_27F755A40, &unk_254EA3888);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v54 = v32;
  v54[1] = sub_254E8E2C0;
  v58 = v32[58];
  v57 = v32[59];
  v59 = v32[54];

  return MEMORY[0x2821DAAA8](v57, v58, v59, v55, OpaqueTypeConformance2);
}

uint64_t sub_254E8E2C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  sub_254E9007C();
  *v5 = v4;
  *v5 = *v2;
  v4[75] = v1;

  v6 = v3[58];
  v7 = v3[56];
  v8 = v3[55];
  (*(v3[53] + 8))(v3[54], v3[52]);
  v11 = *(v7 + 8);
  v10 = v7 + 8;
  v9 = v11;
  if (!v1)
  {
    v4[76] = v9;
    v4[77] = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v9(v6, v8);
  sub_254E900AC();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_254E8F0AC(uint64_t a1)
{
  v3 = *v2;
  sub_254E9007C();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 640) = v1;

  (*(v3[18] + 8))(v3[19], v3[17]);
  sub_254E900AC();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254E8F20C()
{
  v42 = *(v0 + 649);
  v1 = *(v0 + 584);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v39 = *(v0 + 208);
  v40 = *(v0 + 224);
  v4 = *(v0 + 168);
  v38 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 80);
  (*(v4 + 16))(v6);
  sub_254E65418(v6, 0, 1, v5);
  sub_254E63420();
  sub_254E65418(v8, v9, v10, v1);
  sub_254E63420();
  sub_254E65418(v11, v12, v13, v5);
  v14 = type metadata accessor for OnScreenContent.Image(0);
  v15 = *(v14 + 24);
  sub_254E63420();
  sub_254E65418(v16, v17, v18, v1);
  sub_254E8FF38(v6, v7, &qword_27F7551A0, &qword_254E9F1A0);
  *(v7 + *(v14 + 20)) = 0;
  sub_254E8FF38(v2, v7 + v15, &qword_27F755158, &unk_254E9F180);
  type metadata accessor for OnScreenContent.Content(0);
  swift_storeEnumTagMultiPayload();
  v19 = v7 + *(type metadata accessor for OnScreenContent(0) + 20);
  *(v19 + 24) = 0u;
  *(v19 + 8) = 0u;
  *(v19 + 40) = 1;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  type metadata accessor for OnScreenContent.UIMetadata.Window(0);
  sub_254E9DE4C();
  sub_254E63420();
  sub_254E65418(v20, v21, v22, v23);
  sub_254E9DE5C();
  sub_254E63420();
  sub_254E65418(v24, v25, v26, v27);
  *v19 = 0;
  v28 = type metadata accessor for OnScreenContent.UIMetadata(0);
  *(v19 + v28[6]) = 0;
  v29 = v28[7];
  (*(v4 + 8))(v38, v5);
  (*(v3 + 8))(v40, v39);
  *(v19 + v29) = MEMORY[0x277D84F90];
  *(v19 + v28[5]) = 0;
  sub_254E900F0();
  if (v42 == 1)
  {
    sub_254E9DD3C();
  }

  v41 = *(v0 + 608);
  sub_254E8FFFC();

  swift_unknownObjectRelease();
  v31 = sub_254E9001C();
  v32(v31);
  v33 = sub_254E621CC();
  v34(v33);
  v35 = sub_254E90054();
  v41(v35);
  sub_254E636FC();

  sub_254E62FEC();

  return v36();
}

uint64_t UIContextClient.__deallocating_deinit()
{

  sub_254E900E4();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_254E8FAE0()
{
  result = qword_280C3FC70;
  if (!qword_280C3FC70)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_254E67858(&qword_27F755070, &unk_254EA3830);
    v4[0] = sub_254E8FD50(&qword_280C3FD80, type metadata accessor for UIContextElement, protocol conformance descriptor for UIContextElement);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280C3FC70);
  }

  return result;
}

unint64_t sub_254E8FB94()
{
  result = qword_27F755090;
  if (!qword_27F755090)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_254E67858(&qword_27F755078, &qword_254E9EDA0);
    v4[0] = sub_254E8FD50(&qword_280C3FCB0, type metadata accessor for UIElement, "ah9-H-");
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F755090);
  }

  return result;
}

unint64_t sub_254E8FC48()
{
  result = qword_280C3FCC0;
  if (!qword_280C3FCC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnScreenContentRequestParameters, &type metadata for OnScreenContentRequestParameters, v0, v1);
    atomic_store(result, &qword_280C3FCC0);
  }

  return result;
}

unint64_t sub_254E8FC9C()
{
  result = qword_280C3FC80;
  if (!qword_280C3FC80)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_254E67858(&qword_27F755A20, &qword_254EA3848);
    v4[0] = sub_254E8FD50(&qword_280C3FD90, type metadata accessor for OnScreenContent, protocol conformance descriptor for OnScreenContent);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280C3FC80);
  }

  return result;
}

uint64_t sub_254E8FD50(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_254E8FD98(void *a1)
{
  v1 = [a1 typeIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_254E9E27C();

  return v3;
}

uint64_t sub_254E8FDFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_254E6775C(&qword_27F755160, &qword_254EA3870);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254E8FE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254E6775C(&qword_27F755160, &qword_254EA3870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254E8FEDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_254E6775C(a2, a3);
  sub_254E90048();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_254E8FF38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254E6775C(a3, a4);
  sub_254E90048();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t sub_254E90094()
{

  return swift_task_alloc();
}

uint64_t sub_254E900F0()
{

  return sub_254E65418(v0, 0, 1, v1);
}

uint64_t sub_254E90110(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v28 = MEMORY[0x277D84F90];
  sub_254E935DC(0, v1, 0);
  v2 = v28;
  result = sub_254E9478C(v3);
  v7 = result;
  v8 = 0;
  v26 = v3 + 56;
  v21 = v3 + 64;
  v22 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v9 = v7 >> 6;
      if ((*(v26 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v25 = v6;
      v23 = v8;
      v24 = v5;
      v27[8] = 0;
      *v27 = *(*(v3 + 48) + v7);
      result = sub_254E9E44C();
      v11 = *(v28 + 16);
      v10 = *(v28 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_254E935DC((v10 > 1), v11 + 1, 1);
      }

      *(v28 + 16) = v11 + 1;
      v12 = v28 + 16 * v11;
      *(v12 + 32) = *&v27[1];
      *(v12 + 40) = 0xE000000000000000;
      if (v25)
      {
        goto LABEL_29;
      }

      v3 = v22;
      v13 = 1 << *(v22 + 32);
      if (v7 >= v13)
      {
        goto LABEL_26;
      }

      v14 = *(v26 + 8 * v9);
      if ((v14 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v22 + 36) != v24)
      {
        goto LABEL_28;
      }

      v15 = v14 & (-2 << (v7 & 0x3F));
      if (v15)
      {
        v13 = __clz(__rbit64(v15)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v9 << 6;
        v17 = v9 + 1;
        v18 = (v21 + 8 * v9);
        while (v17 < (v13 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_254E947CC(v7, v24, 0);
            v13 = __clz(__rbit64(v19)) + v16;
            goto LABEL_19;
          }
        }

        result = sub_254E947CC(v7, v24, 0);
      }

LABEL_19:
      v8 = v23 + 1;
      if (v23 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v22 + 36);
      v7 = v13;
      if (v13 < 0)
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
  return result;
}

uint64_t UIContextElement.detectedEntities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t UIContextElement.entities.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t UIContextElement.surroundingElements.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t UIContextElement.uiElement.getter()
{
  sub_254E94930();
  sub_254E94900();
  return sub_254E93674();
}

uint64_t UIContextElement.uiElement.setter(uint64_t a1)
{
  sub_254E94930();

  return sub_254E904E4(a1, v1 + v3);
}

uint64_t sub_254E904E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIElement(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void UIContextElement.init(detectedEntities:surroundingElements:uiElement:)()
{
  sub_254E7392C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DetectedEntityDetails(0);
  sub_254E62124();
  MEMORY[0x28223BE20](v10);
  sub_254E62F5C();
  sub_254E949D8();
  *v8 = v6;
  v11 = *(v6 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v26 = v4;
    v27 = MEMORY[0x277D84F90];

    v13 = sub_254E949C4();
    sub_254E9361C(v13, v14, v15);
    v12 = v27;
    v16 = type metadata accessor for DetectedEntity(0);
    sub_254E62BD4(v16);
    v18 = v6 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v19 + 72);
    do
    {
      sub_254E93674();
      *(v0 + *(v9 + 20)) = 0;
      sub_254E949A4();
      if (v22)
      {
        v23 = sub_254E9498C(v21);
        sub_254E9361C(v23, v24, v25);
        v12 = v27;
      }

      *(v12 + 16) = v2;
      sub_254E94924();
      sub_254E936CC();
      v18 += v20;
      --v11;
    }

    while (v11);

    v4 = v26;
  }

  v8[1] = v12;
  v8[2] = v4;
  sub_254E94930();
  sub_254E6348C();
  sub_254E936CC();
  sub_254E738E4();
}

void UIContextElement.init(entities:surroundingElements:uiElement:)()
{
  sub_254E7392C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DetectedEntityDetails(0);
  v7 = sub_254E62BD4(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  sub_254E62F5C();
  v10 = sub_254E9497C();
  v11 = type metadata accessor for DetectedEntity(v10);
  v12 = sub_254E62BD4(v11);
  MEMORY[0x28223BE20](v12);
  sub_254E62F5C();
  sub_254E949D8();
  v5[1] = v3;
  v13 = *(v3 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v26 = v1;
    v27 = v5;
    v28 = MEMORY[0x277D84F90];

    v15 = sub_254E949C4();
    sub_254E93724(v15, v16, v17);
    v14 = v28;
    sub_254E94924();
    v19 = v3 + v18;
    v20 = *(v9 + 72);
    do
    {
      sub_254E93674();
      sub_254E62C10();
      sub_254E936CC();
      sub_254E949A4();
      if (v22)
      {
        v23 = sub_254E9498C(v21);
        sub_254E93724(v23, v24, v25);
        v14 = v28;
      }

      *(v14 + 16) = v9;
      sub_254E94924();
      sub_254E62C10();
      sub_254E936CC();
      v19 += v20;
      --v13;
    }

    while (v13);

    v5 = v27;
    v1 = v26;
  }

  *v5 = v14;
  v5[2] = v1;
  sub_254E94930();
  sub_254E6348C();
  sub_254E936CC();
  sub_254E738E4();
}

void static UIElement.== infix(_:_:)()
{
  sub_254E7392C();
  v2 = v1;
  v4 = v3;
  v5 = sub_254E9DE2C();
  sub_254E62124();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_254E62F5C();
  v11 = v10 - v9;
  sub_254E6775C(&qword_27F755A48, &qword_254EA38D0);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = sub_254E6775C(&qword_27F755A50, &qword_254EA38D8);
  sub_254E62148();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v16);
  sub_254E8C558();
  if (!CGRectEqualToRect(*v4, *v2) || !CGRectEqualToRect(*(v4 + 32), *(v2 + 32)))
  {
    goto LABEL_25;
  }

  if (*(v4 + 96))
  {
    if ((*(v2 + 96) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((*(v2 + 96) & 1) != 0 || !CGRectEqualToRect(*(v4 + 64), *(v2 + 64)))
  {
    goto LABEL_25;
  }

  v17 = *(v4 + 120);
  v79 = *(v4 + 104);
  v80 = v17;
  *v81 = *(v4 + 136);
  *&v81[9] = *(v4 + 145);
  v82 = sub_254E949B8();
  v83 = v18;
  *v84 = *(v2 + 136);
  *&v84[9] = *(v2 + 145);
  v20 = *(v4 + 120);
  v75 = *(v4 + 104);
  v76 = v20;
  v77 = *(v4 + 136);
  v78 = *(v4 + 152);
  v21 = v81[24];
  *&v74[7] = *(v2 + 104);
  *&v74[23] = *(v2 + 120);
  *&v74[39] = *(v2 + 136);
  *&v74[55] = *(v2 + 152);
  v22 = v84[24];
  if (v81[24] == 255)
  {
    if (v84[24] != 255)
    {
      v25 = v84[24];
      v26 = v81[24];
      sub_254E89CD4();
      sub_254E89CD4();
      goto LABEL_23;
    }

    v27 = *(v4 + 120);
    v65 = *(v4 + 104);
    v66 = v27;
    v67 = *(v4 + 136);
    v68 = *(v4 + 152);
    v69 = -1;
    sub_254E89CD4();
    sub_254E89CD4();
    sub_254E71C60(&v65, &qword_27F755A58, &qword_254EA38E0);
  }

  else
  {
    v23 = *(v4 + 136);
    v68 = *(v4 + 152);
    v24 = *(v4 + 120);
    v65 = *(v4 + 104);
    v66 = v24;
    v67 = v23;
    v69 = v81[24];
    v62 = v65;
    v63 = v24;
    *v64 = v23;
    *(v19 + 105) = *(v19 + 169);
    if (v22 == 255)
    {
      v25 = -1;
      v26 = v21;
      v59 = v65;
      v60 = v66;
      *v61 = v67;
      *(v19 + 41) = *(v19 + 169);
      sub_254E9496C();
      sub_254E89CD4();
      sub_254E9496C();
      sub_254E89CD4();
      sub_254E9496C();
      sub_254E89CD4();
      sub_254E9377C(&v59);
LABEL_23:
      v65 = v75;
      v66 = v76;
      v67 = v77;
      v70 = *v74;
      v68 = v78;
      v69 = v26;
      v71 = *&v74[16];
      *v72 = *&v74[32];
      *&v72[15] = *&v74[47];
      v73 = v25;
      v40 = &unk_27F755A60;
      v41 = &unk_254EA38E8;
      v42 = &v65;
LABEL_24:
      sub_254E71C60(v42, v40, v41);
      goto LABEL_25;
    }

    v59 = sub_254E949B8();
    v60 = v28;
    *v61 = *(v2 + 136);
    *&v61[16] = *(v2 + 152);
    v61[24] = v29;
    v54 = v30;
    sub_254E89CD4();
    sub_254E89CD4();
    sub_254E89CD4();
    v53 = static ElementContent.== infix(_:_:)(&v62, &v59, v31, v32, v33, v34, v35, v36);
    v55[0] = v59;
    v55[1] = v60;
    *v56 = *v61;
    *&v56[9] = *&v61[9];
    sub_254E9377C(v55);
    v57[0] = v62;
    v57[1] = v63;
    *v58 = *v64;
    *&v58[9] = *&v64[9];
    sub_254E9377C(v57);
    v59 = v75;
    v60 = v76;
    *v61 = v77;
    *&v61[16] = v78;
    v61[24] = v54;
    sub_254E71C60(&v59, &qword_27F755A58, &qword_254EA38E0);
    if ((v53 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v37 = *(v4 + 176);
  v38 = *(v2 + 176);
  if (v37)
  {
    if (!v38)
    {
      goto LABEL_25;
    }

    v39 = *(v4 + 168) == *(v2 + 168) && v37 == v38;
    if (!v39 && (sub_254E9E5CC() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v38)
  {
    goto LABEL_25;
  }

  v43 = *(v4 + 192);
  v44 = *(v2 + 192);
  if (v43)
  {
    if (!v44)
    {
      goto LABEL_25;
    }

    v45 = *(v4 + 184) == *(v2 + 184) && v43 == v44;
    if (!v45 && (sub_254E9E5CC() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v44)
  {
    goto LABEL_25;
  }

  if (*(v4 + 200) == *(v2 + 200) && *(v4 + 201) == *(v2 + 201))
  {
    v46 = *(v2 + 216);
    if (*(v4 + 216))
    {
      if (!*(v2 + 216))
      {
        goto LABEL_25;
      }

      goto LABEL_44;
    }

    if (*(v4 + 208) != *(v2 + 208))
    {
      v46 = 1;
    }

    if ((v46 & 1) == 0)
    {
LABEL_44:
      type metadata accessor for UIElement(0);
      v47 = *(v15 + 48);
      sub_254E89CD4();
      sub_254E89CD4();
      sub_254E8C600(v0);
      if (v39)
      {
        sub_254E8C600(v0 + v47);
        if (v39)
        {
          sub_254E71C60(v0, &qword_27F755A48, &qword_254EA38D0);
          goto LABEL_25;
        }
      }

      else
      {
        sub_254E89CD4();
        sub_254E8C600(v0 + v47);
        if (!v48)
        {
          (*(v7 + 32))(v11, v0 + v47, v5);
          sub_254E6373C();
          sub_254E938D8(v49, v50, MEMORY[0x277D745D0]);
          sub_254E9E25C();
          v51 = *(v7 + 8);
          v51(v11, v5);
          v51(v14, v5);
          sub_254E71C60(v0, &qword_27F755A48, &qword_254EA38D0);
          goto LABEL_25;
        }

        (*(v7 + 8))(v14, v5);
      }

      v40 = &qword_27F755A50;
      v41 = &qword_254EA38D8;
      v42 = v0;
      goto LABEL_24;
    }
  }

LABEL_25:
  sub_254E738E4();
}

uint64_t sub_254E910B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000254EA5900 == a2;
  if (v3 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365697469746E65 && a2 == 0xE800000000000000;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000254EA5920 == a2;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E656D656C456975 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v9 = sub_254E9E5CC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_254E91224(char a1)
{
  result = 0x7365697469746E65;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6E656D656C456975;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_254E912C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E910B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E912E8(uint64_t a1)
{
  v2 = sub_254E937D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E91324(uint64_t a1)
{
  v2 = sub_254E937D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UIContextElement.encode(to:)(void *a1)
{
  v4 = sub_254E6775C(&qword_27F755A70, &qword_254EA38F0);
  sub_254E62124();
  v6 = v5;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  sub_254E8C558();
  sub_254E94A2C(a1);
  v8 = sub_254E937D0();
  sub_254E94A0C(&type metadata for UIContextElement.CodingKeys, v9, v8);
  sub_254E6775C(&qword_27F755A78, &qword_254EA38F8);
  v10 = sub_254E93824();
  sub_254E94828(v10);
  if (!v1)
  {
    sub_254E6775C(&qword_27F755A80, &unk_254EA3900);
    v11 = sub_254E93920();
    sub_254E94828(v11);
    sub_254E6775C(&qword_27F755070, &unk_254EA3830);
    v12 = sub_254E939D4();
    sub_254E94828(v12);
    type metadata accessor for UIContextElement(0);
    type metadata accessor for UIElement(0);
    sub_254E948E8();
    sub_254E938D8(v13, v14, "\td9- -");
    sub_254E9E59C();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t UIContextElement.init(from:)(void *a1)
{
  type metadata accessor for UIElement(0);
  sub_254E62148();
  MEMORY[0x28223BE20](v3);
  sub_254E62F5C();
  sub_254E6775C(&qword_27F755A88, &qword_254EA3910);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_254E9497C();
  type metadata accessor for UIContextElement(v5);
  sub_254E62148();
  MEMORY[0x28223BE20](v6);
  sub_254E62F5C();
  v9 = (v8 - v7);
  sub_254E94A2C(a1);
  sub_254E937D0();
  sub_254E9E64C();
  if (v15)
  {
    return sub_254E6A780(a1);
  }

  sub_254E6775C(&qword_27F755A78, &qword_254EA38F8);
  sub_254E93A88();
  sub_254E9495C();
  sub_254E9E50C();
  *v9 = v16;
  sub_254E6775C(&qword_27F755A80, &unk_254EA3900);
  sub_254E93B3C();
  sub_254E9495C();
  sub_254E9E50C();
  v9[1] = v16;
  sub_254E6775C(&qword_27F755070, &unk_254EA3830);
  sub_254E8FAE0();
  sub_254E9495C();
  sub_254E9E50C();
  v9[2] = v16;
  sub_254E948E8();
  sub_254E938D8(v10, v11, "ah9-H-");
  sub_254E9E50C();
  v12 = sub_254E8C9A4();
  v13(v12);
  sub_254E6348C();
  sub_254E936CC();
  sub_254E947D8();
  sub_254E93674();
  sub_254E6A780(a1);
  sub_254E62B48();
  return sub_254E93D5C();
}

void UIElement.frame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void UIElement.screenSize.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

__n128 UIElement.windowSize.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 UIElement.windowSize.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  *(v1 + 96) = *(a1 + 32);
  return result;
}

uint64_t UIElement.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v5 = *(v1 + 120);
  v2 = *(v1 + 136);
  v3 = *(v1 + 145);
  *a1 = *(v1 + 104);
  a1[1] = v5;
  a1[2] = v2;
  *(a1 + 41) = v3;
  return sub_254E89CD4();
}

__n128 UIElement.content.setter(uint64_t a1)
{
  v3 = *(v1 + 120);
  v6[0] = *(v1 + 104);
  v6[1] = v3;
  v7[0] = *(v1 + 136);
  *(v7 + 9) = *(v1 + 145);
  sub_254E71C60(v6, &qword_27F755A58, &qword_254EA38E0);
  v4 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v4;
  *(v1 + 136) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 145) = result;
  return result;
}

uint64_t UIElement.appBundleId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t UIElement.processInstanceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return result;
}

uint64_t UIElement.fractionVisible.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t UIElement.navigationSplitPane.setter()
{
  v2 = sub_254E73524();
  v3 = v1 + *(type metadata accessor for UIElement(v2) + 52);

  return sub_254E93BF0(v0, v3);
}

void (*UIElement.navigationSplitPane.modify())()
{
  v0 = sub_254E73524();
  type metadata accessor for UIElement(v0);
  return nullsub_1;
}

__n128 UIElement.init(frame:screenSize:content:appBundleId:processInstanceIdentifier:isSelected:isPrimary:fractionVisible:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8, char a9)
{
  sub_254E62ED8();
  v25 = v24;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0u;
  *(v24 + 96) = 1;
  *(v24 + 104) = 0u;
  *(v24 + 120) = 0u;
  *(v24 + 136) = 0u;
  *(v24 + 152) = 0;
  *(v24 + 160) = -1;
  type metadata accessor for UIElement(0);
  sub_254E9DE2C();
  sub_254E63420();
  sub_254E65418(v26, v27, v28, v29);
  *v25 = v16;
  *(v25 + 8) = v15;
  *(v25 + 16) = v14;
  *(v25 + 24) = v13;
  *(v25 + 32) = v12;
  *(v25 + 40) = v11;
  *(v25 + 48) = v10;
  *(v25 + 56) = v9;
  v30 = *(v25 + 120);
  v34[0] = *(v25 + 104);
  v34[1] = v30;
  v35[0] = *(v25 + 136);
  *(v35 + 9) = *(v25 + 145);
  sub_254E71C60(v34, &qword_27F755A58, &qword_254EA38E0);
  v31 = *(a1 + 16);
  *(v25 + 104) = *a1;
  *(v25 + 120) = v31;
  *(v25 + 136) = *(a1 + 32);
  result = *(a1 + 41);
  *(v25 + 145) = result;
  *(v25 + 168) = a2;
  *(v25 + 176) = a3;
  *(v25 + 184) = a4;
  *(v25 + 192) = a5;
  *(v25 + 200) = a6;
  *(v25 + 201) = a7;
  *(v25 + 208) = a8;
  *(v25 + 216) = a9 & 1;
  return result;
}

__n128 UIElement.init(frame:screenSize:content:appBundleId:isSelected:isPrimary:fractionVisible:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, char a7)
{
  sub_254E62ED8();
  v23 = v22;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 1;
  *(v22 + 104) = 0u;
  *(v22 + 120) = 0u;
  *(v22 + 136) = 0u;
  *(v22 + 152) = 0;
  *(v22 + 160) = -1;
  type metadata accessor for UIElement(0);
  sub_254E9DE2C();
  sub_254E63420();
  sub_254E65418(v24, v25, v26, v27);
  *v23 = v14;
  *(v23 + 8) = v13;
  *(v23 + 16) = v12;
  *(v23 + 24) = v11;
  *(v23 + 32) = v10;
  *(v23 + 40) = v9;
  *(v23 + 48) = v8;
  *(v23 + 56) = v7;
  v28 = *(v23 + 120);
  v31[0] = *(v23 + 104);
  v31[1] = v28;
  v32[0] = *(v23 + 136);
  *(v32 + 9) = *(v23 + 145);
  sub_254E71C60(v31, &qword_27F755A58, &qword_254EA38E0);
  v29 = *(a1 + 16);
  *(v23 + 104) = *a1;
  *(v23 + 120) = v29;
  *(v23 + 136) = *(a1 + 32);
  result = *(a1 + 41);
  *(v23 + 145) = result;
  *(v23 + 168) = a2;
  *(v23 + 176) = a3;
  *(v23 + 184) = 0;
  *(v23 + 192) = 0;
  *(v23 + 200) = a4;
  *(v23 + 201) = a5;
  *(v23 + 208) = a6;
  *(v23 + 216) = a7 & 1;
  return result;
}

__n128 UIElement.init(frame:screenSize:content:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_254E62ED8();
  v15 = v14;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 1;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 152) = 0;
  *(v14 + 160) = -1;
  type metadata accessor for UIElement(0);
  sub_254E9DE2C();
  sub_254E63420();
  sub_254E65418(v16, v17, v18, v19);
  *v15 = v10;
  *(v15 + 8) = v9;
  *(v15 + 16) = v8;
  *(v15 + 24) = v7;
  *(v15 + 32) = v6;
  *(v15 + 40) = v5;
  *(v15 + 48) = v4;
  *(v15 + 56) = v3;
  v20 = *(v15 + 120);
  v23[0] = *(v15 + 104);
  v23[1] = v20;
  v24[0] = *(v15 + 136);
  *(v24 + 9) = *(v15 + 145);
  sub_254E71C60(v23, &qword_27F755A58, &qword_254EA38E0);
  v21 = *(a1 + 16);
  *(v15 + 104) = *a1;
  *(v15 + 120) = v21;
  *(v15 + 136) = *(a1 + 32);
  result = *(a1 + 41);
  *(v15 + 145) = result;
  *(v15 + 168) = a2;
  *(v15 + 176) = a3;
  *(v15 + 208) = 0;
  *(v15 + 184) = 0;
  *(v15 + 192) = 0;
  *(v15 + 200) = 0;
  *(v15 + 216) = 1;
  return result;
}

uint64_t sub_254E9212C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69536E6565726373 && a2 == 0xEA0000000000657ALL;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6953776F646E6977 && a2 == 0xEA0000000000657ALL;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
          if (v9 || (sub_254E9E5CC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x8000000254EA5940 == a2;
            if (v10 || (sub_254E9E5CC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465;
              if (v11 || (sub_254E9E5CC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x72616D6972507369 && a2 == 0xE900000000000079;
                if (v12 || (sub_254E9E5CC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F697463617266 && a2 == 0xEF656C6269736956;
                  if (v13 || (sub_254E9E5CC() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000013 && 0x8000000254EA5960 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_254E9E5CC();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

uint64_t sub_254E9245C(char a1)
{
  result = 0x656D617266;
  switch(a1)
  {
    case 1:
      v3 = 0x6E6565726373;
      goto LABEL_6;
    case 2:
      v3 = 0x776F646E6977;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6953000000000000;
      break;
    case 3:
      result = 0x746E65746E6F63;
      break;
    case 4:
      result = 0x6C646E7542707061;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0x7463656C65537369;
      break;
    case 7:
      result = 0x72616D6972507369;
      break;
    case 8:
      result = 0x6E6F697463617266;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E9259C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E9212C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E925C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254E92454();
  *a1 = result;
  return result;
}

uint64_t sub_254E925EC(uint64_t a1)
{
  v2 = sub_254E93C60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E92628(uint64_t a1)
{
  v2 = sub_254E93C60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UIElement.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_254E6775C(&qword_27F755A90, &qword_254EA3918);
  sub_254E62124();
  v8 = v7;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v9);
  sub_254E8C558();
  sub_254E94A2C(a1);
  v10 = sub_254E93C60();
  sub_254E94A0C(&type metadata for UIElement.CodingKeys, v11, v10);
  v12 = *(v4 + 16);
  v28 = *v4;
  v29 = v12;
  v25.n128_u8[0] = 0;
  type metadata accessor for CGRect(0);
  sub_254E948D0();
  sub_254E938D8(v13, v14, MEMORY[0x277CBF268]);
  sub_254E9486C();
  sub_254E9E59C();
  if (!v2)
  {
    v15 = *(v4 + 48);
    v28 = *(v4 + 32);
    v29 = v15;
    v25.n128_u8[0] = 1;
    sub_254E9486C();
    sub_254E9E59C();
    v16 = *(v4 + 96);
    v17 = *(v4 + 80);
    v32 = *(v4 + 64);
    v33 = v17;
    v34 = v16;
    v31 = 2;
    sub_254E9486C();
    sub_254E9E55C();
    v28 = sub_254E949B8();
    v29 = v18;
    *v30 = *(v4 + 136);
    *&v30[9] = *(v4 + 145);
    v25 = sub_254E949B8();
    v19 = *(v4 + 136);
    v26 = v20;
    v27[0] = v19;
    *(v27 + 9) = *(v4 + 145);
    v24[63] = 3;
    sub_254E89CD4();
    sub_254E93CB4();
    sub_254E79764();
    sub_254E9E55C();
    sub_254E9489C(&v35);
    sub_254E71C60(v24, &qword_27F755A58, &qword_254EA38E0);
    sub_254E947F0(4);
    sub_254E9E53C();
    sub_254E947F0(5);
    sub_254E9E53C();
    sub_254E79764();
    sub_254E9E57C();
    sub_254E79764();
    sub_254E9E57C();
    sub_254E947F0(8);
    sub_254E9E54C();
    type metadata accessor for UIElement(0);
    sub_254E9DE2C();
    sub_254E6373C();
    sub_254E938D8(v21, v22, MEMORY[0x277D745C8]);
    sub_254E79764();
    sub_254E9E55C();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t UIElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37[0] = a2;
  sub_254E6775C(&qword_27F755A48, &qword_254EA38D0);
  sub_254E62F6C();
  MEMORY[0x28223BE20](v4);
  v6 = v37 - v5;
  v37[2] = sub_254E6775C(&qword_27F755A98, &unk_254EA3920);
  sub_254E62124();
  v37[1] = v7;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v8);
  sub_254E949D8();
  v9 = type metadata accessor for UIElement(0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_254E62F5C();
  v12 = v11 - v10;
  *(v12 + 104) = 0u;
  v50 = (v11 - v10 + 104);
  *(v12 + 152) = 0;
  *(v12 + 136) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 160) = -1;
  v14 = *(v13 + 60);
  v15 = sub_254E9DE2C();
  v39 = v14;
  sub_254E63420();
  sub_254E65418(v16, v17, v18, v15);
  v38 = a1;
  sub_254E94A2C(a1);
  sub_254E93C60();
  sub_254E9E64C();
  if (v2)
  {
    sub_254E6A780(v38);
    v23 = v50[1];
    v47 = *v50;
    v48 = v23;
    v49[0] = v50[2];
    *(v49 + 9) = *(v50 + 41);
    sub_254E71C60(&v47, &qword_27F755A58, &qword_254EA38E0);

    return sub_254E71C60(v12 + v39, &qword_27F755A48, &qword_254EA38D0);
  }

  else
  {
    type metadata accessor for CGRect(0);
    LOBYTE(v44[0]) = 0;
    sub_254E948D0();
    sub_254E938D8(v19, v20, MEMORY[0x277CBF280]);
    sub_254E9494C();
    sub_254E94854();
    sub_254E9E50C();
    v21 = v48;
    *v12 = v47;
    *(v12 + 16) = v21;
    LOBYTE(v44[0]) = 1;
    sub_254E9494C();
    sub_254E94854();
    sub_254E9E50C();
    v22 = v48;
    *(v12 + 32) = v47;
    *(v12 + 48) = v22;
    LOBYTE(v44[0]) = 2;
    sub_254E9494C();
    sub_254E94854();
    sub_254E9E4CC();
    v24 = v49[0];
    v25 = v48;
    *(v12 + 64) = v47;
    *(v12 + 80) = v25;
    *(v12 + 96) = v24;
    v46 = 3;
    sub_254E93D08();
    sub_254E94918();
    sub_254E9E4CC();
    v41 = v47;
    v42 = v48;
    v43[0] = v49[0];
    *(v43 + 9) = *(v49 + 9);
    v26 = v50;
    v27 = v50[1];
    v44[0] = *v50;
    v44[1] = v27;
    *v45 = v50[2];
    *&v45[9] = *(v50 + 41);
    sub_254E71C60(v44, &qword_27F755A58, &qword_254EA38E0);
    v28 = v42;
    *v26 = v41;
    v26[1] = v28;
    v26[2] = v43[0];
    *(v26 + 41) = *(v43 + 9);
    sub_254E949F8(4);
    sub_254E94918();
    *(v12 + 168) = sub_254E9E4AC();
    *(v12 + 176) = v29;
    sub_254E949F8(5);
    sub_254E94918();
    *(v12 + 184) = sub_254E9E4AC();
    *(v12 + 192) = v30;
    sub_254E9480C(6);
    *(v12 + 200) = sub_254E9E4EC() & 1;
    sub_254E9480C(7);
    *(v12 + 201) = sub_254E9E4EC() & 1;
    sub_254E9480C(8);
    *(v12 + 208) = sub_254E9E4BC();
    *(v12 + 216) = v31 & 1;
    v40 = 9;
    sub_254E6373C();
    sub_254E938D8(v32, v33, MEMORY[0x277D745E0]);
    sub_254E94918();
    sub_254E9E4CC();
    v34 = sub_254E62D64();
    v35(v34);
    sub_254E93BF0(v6, v12 + v39);
    sub_254E94900();
    sub_254E93674();
    sub_254E6A780(v38);
    return sub_254E93D5C();
  }
}

void Array<A>.loggingDescription.getter()
{
  sub_254E7392C();
  v1 = sub_254E73524();
  type metadata accessor for DetectedEntity(v1);
  sub_254E62148();
  MEMORY[0x28223BE20](v2);
  sub_254E62F5C();
  v3 = sub_254E9497C();
  v4 = type metadata accessor for DetectedEntityDetails(v3);
  v5 = sub_254E62BD4(v4);
  v59 = v6;
  MEMORY[0x28223BE20](v5);
  sub_254E62F5C();
  sub_254E949D8();
  v7 = type metadata accessor for UIContextElement(0);
  v8 = sub_254E62BD4(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = *(v0 + 16);
  v14 = MEMORY[0x277D84F90];
  v56 = v0;
  v54 = v15;
  if (v13)
  {
    sub_254E94924();
    v61 = v0 + v17;
    v60 = *(v18 + 72);
    v63 = v14;
    v57 = v12;
    v58 = v13;
    while (1)
    {
      v62 = v16;
      sub_254E947D8();
      sub_254E93674();
      v19 = *(v12 + 1);
      v20 = *(v19 + 16);
      if (v20)
      {
        v65 = v14;
        sub_254E93DB0(0, v20, 0);
        v21 = v65;
        sub_254E94924();
        v23 = v19 + v22;
        v25 = *(v24 + 72);
        do
        {
          sub_254E93674();
          sub_254E62C10();
          sub_254E936CC();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_254E93D5C();
          v65 = v21;
          v28 = v21[2];
          v27 = v21[3];
          if (v28 >= v27 >> 1)
          {
            sub_254E93DB0((v27 > 1), v28 + 1, 1);
            v21 = v65;
          }

          v21[2] = v28 + 1;
          *(v21 + v28 + 32) = EnumCaseMultiPayload;
          v23 += v25;
          --v20;
        }

        while (v20);
        sub_254E62B48();
        v12 = v57;
        sub_254E93D5C();
        v13 = v58;
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_254E93D5C();
        v21 = v14;
      }

      v29 = v21[2];
      v30 = *(v63 + 2);
      v31 = v30 + v29;
      if (__OFADD__(v30, v29))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v63;
      if (!isUniquelyReferenced_nonNull_native || v31 > *(v63 + 3) >> 1)
      {
        if (v30 <= v31)
        {
          v34 = v30 + v29;
        }

        else
        {
          v34 = v30;
        }

        v33 = sub_254E67DD8(isUniquelyReferenced_nonNull_native, v34, 1, v63);
      }

      v35 = v21[2];
      v63 = v33;
      if (v35)
      {
        v36 = *(v33 + 2);
        if ((*(v33 + 3) >> 1) - v36 < v29)
        {
          goto LABEL_34;
        }

        memcpy(&v33[v36 + 32], v21 + 4, v29);

        v37 = v62;
        if (v29)
        {
          v38 = *(v63 + 2);
          v39 = __OFADD__(v38, v29);
          v40 = v38 + v29;
          if (v39)
          {
            goto LABEL_35;
          }

          *(v63 + 2) = v40;
        }
      }

      else
      {

        v37 = v62;
        if (v29)
        {
          goto LABEL_33;
        }
      }

      v16 = v37 + 1;
      if (v16 == v13)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
LABEL_26:
    v41 = sub_254E84510(v63);
    v42 = sub_254E90110(v41);

    v65 = v42;
    sub_254E6775C(&qword_27F755038, &qword_254EA11E0);
    sub_254E69C68();
    v43 = sub_254E9E24C();
    v45 = v44;

    v46 = 0;
    if (!v13)
    {
LABEL_30:
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_254E9E40C();

      v65 = 0x6465746365746564;
      v66 = 0xE900000000000020;
      v64 = v46;
      v53 = sub_254E9E5BC();
      MEMORY[0x259C2B550](v53);

      MEMORY[0x259C2B550](0xD000000000000014, 0x8000000254EA58E0);
      MEMORY[0x259C2B550](v43, v45);

      MEMORY[0x259C2B550](93, 0xE100000000000000);
      sub_254E738E4();
      return;
    }

    v47 = v55;
    sub_254E94924();
    v49 = v56 + v48;
    v51 = *(v50 + 72);
    while (1)
    {
      sub_254E947D8();
      sub_254E93674();
      v52 = *(*(v47 + 1) + 16);
      v39 = __OFADD__(v46, v52);
      v46 += v52;
      if (v39)
      {
        break;
      }

      sub_254E62B48();
      sub_254E93D5C();
      v49 += v51;
      if (!--v13)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

char *sub_254E934C8(char *result, uint64_t a2, void *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_254E94884(result, a2, a3);
  }

  return result;
}

void sub_254E934F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  sub_254E737F0();
  if (v9 < v8 || (a4(0), sub_254E62148(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    sub_254E949E4();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_254E949E4();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_254E935B4(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_254E935DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254E94270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254E935FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254E943B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_254E93674()
{
  sub_254E737F0();
  v1(0);
  sub_254E62148();
  v2 = sub_254E62CF4();
  v3(v2);
  return v0;
}

uint64_t sub_254E936CC()
{
  sub_254E737F0();
  v1(0);
  sub_254E62148();
  v2 = sub_254E62CF4();
  v3(v2);
  return v0;
}

unint64_t sub_254E937D0()
{
  result = qword_280C40350[0];
  if (!qword_280C40350[0])
  {
    result = swift_getWitnessTable(byte_254EA3C58, &type metadata for UIContextElement.CodingKeys, v0, v1);
    atomic_store(result, qword_280C40350);
  }

  return result;
}

unint64_t sub_254E93824()
{
  result = qword_280C3FC90;
  if (!qword_280C3FC90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_254E67858(&qword_27F755A78, &qword_254EA38F8);
    v4[0] = sub_254E938D8(&qword_280C3FDC0, type metadata accessor for DetectedEntity, protocol conformance descriptor for DetectedEntity);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280C3FC90);
  }

  return result;
}

uint64_t sub_254E938D8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254E93920()
{
  result = qword_280C3FC68;
  if (!qword_280C3FC68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_254E67858(&qword_27F755A80, &unk_254EA3900);
    v4[0] = sub_254E938D8(&qword_280C3FCF8, type metadata accessor for DetectedEntityDetails, protocol conformance descriptor for DetectedEntityDetails);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280C3FC68);
  }

  return result;
}

unint64_t sub_254E939D4()
{
  result = qword_280C3FC78;
  if (!qword_280C3FC78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_254E67858(&qword_27F755070, &unk_254EA3830);
    v4[0] = sub_254E938D8(&qword_280C3FD88, type metadata accessor for UIContextElement, protocol conformance descriptor for UIContextElement);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280C3FC78);
  }

  return result;
}

unint64_t sub_254E93A88()
{
  result = qword_280C3FC88;
  if (!qword_280C3FC88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_254E67858(&qword_27F755A78, &qword_254EA38F8);
    v4[0] = sub_254E938D8(&qword_280C3FDB0, type metadata accessor for DetectedEntity, protocol conformance descriptor for DetectedEntity);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280C3FC88);
  }

  return result;
}

unint64_t sub_254E93B3C()
{
  result = qword_280C3FC60;
  if (!qword_280C3FC60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_254E67858(&qword_27F755A80, &unk_254EA3900);
    v4[0] = sub_254E938D8(&qword_280C3FCE8, type metadata accessor for DetectedEntityDetails, protocol conformance descriptor for DetectedEntityDetails);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280C3FC60);
  }

  return result;
}

uint64_t sub_254E93BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_254E6775C(&qword_27F755A48, &qword_254EA38D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_254E93C60()
{
  result = qword_280C3FF40;
  if (!qword_280C3FF40)
  {
    result = swift_getWitnessTable(aZ9, &type metadata for UIElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C3FF40);
  }

  return result;
}

unint64_t sub_254E93CB4()
{
  result = qword_280C3FDA8;
  if (!qword_280C3FDA8)
  {
    result = swift_getWitnessTable("y_9-", &type metadata for ElementContent, v0, v1);
    atomic_store(result, &qword_280C3FDA8);
  }

  return result;
}

unint64_t sub_254E93D08()
{
  result = qword_280C3FDA0;
  if (!qword_280C3FDA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ElementContent, &type metadata for ElementContent, v0, v1);
    atomic_store(result, &qword_280C3FDA0);
  }

  return result;
}

uint64_t sub_254E93D5C()
{
  v1 = sub_254E73524();
  v2(v1);
  sub_254E62148();
  (*(v3 + 8))(v0);
  return v0;
}

char *sub_254E93DB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_254E94698(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UIElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UIElement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UIContextElement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254E94064()
{
  result = qword_27F755AA8;
  if (!qword_27F755AA8)
  {
    result = swift_getWitnessTable(byte_254EA3B28, &type metadata for UIContextElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755AA8);
  }

  return result;
}

unint64_t sub_254E940BC()
{
  result = qword_27F755AB0;
  if (!qword_27F755AB0)
  {
    result = swift_getWitnessTable(byte_254EA3BE0, &type metadata for UIElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755AB0);
  }

  return result;
}

unint64_t sub_254E94114()
{
  result = qword_280C3FF30;
  if (!qword_280C3FF30)
  {
    result = swift_getWitnessTable(aQt9, &type metadata for UIElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C3FF30);
  }

  return result;
}

unint64_t sub_254E9416C()
{
  result = qword_280C3FF38;
  if (!qword_280C3FF38)
  {
    result = swift_getWitnessTable(aAp9, &type metadata for UIElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C3FF38);
  }

  return result;
}

unint64_t sub_254E941C4()
{
  result = qword_280C40340;
  if (!qword_280C40340)
  {
    result = swift_getWitnessTable(aU9_0, &type metadata for UIContextElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40340);
  }

  return result;
}

unint64_t sub_254E9421C()
{
  result = qword_280C40348;
  if (!qword_280C40348)
  {
    result = swift_getWitnessTable(byte_254EA3AC0, &type metadata for UIContextElement.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40348);
  }

  return result;
}

char *sub_254E94270(char *result, int64_t a2, char a3, char *a4)
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
    sub_254E6775C(&qword_27F755008, &qword_254E9ED48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_254E943B4(void *result, int64_t a2, char a3, void *a4)
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
    sub_254E6775C(&qword_27F755AB8, &unk_254EA3CB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_254E6775C(&qword_27F755A08, &qword_254EA3810);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_254E944EC()
{
  sub_254E7392C();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_254E6775C(v2, v3);
  v16 = v7(0);
  sub_254E62BD4(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = j__malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v7(0);
  sub_254E94924();
  if (v10)
  {
    sub_254E934F8(v8 + v24, v14, v21 + v24, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_254E738E4();
}

char *sub_254E94698(char *result, int64_t a2, char a3, char *a4)
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
    sub_254E6775C(&qword_27F754FF8, &qword_254EA3CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_254E947CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_254E94828(uint64_t a1)
{

  return sub_254E9E59C();
}

__n128 sub_254E9489C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 256);
  *(v1 - 336) = *(a1 - 256);
  *(v1 - 320) = v2;
  *(v1 - 304) = *(v1 - 240);
  result = *(v1 - 231);
  *(v1 - 295) = result;
  return result;
}

uint64_t sub_254E94A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_254E9E65C();
}

uint64_t static ElementContent.Text.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_254E9E5CC() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254E94AD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254E9E5CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254E94B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E94AD8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254E94B90(uint64_t a1)
{
  v2 = sub_254E94D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E94BCC(uint64_t a1)
{
  v2 = sub_254E94D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ElementContent.Text.encode(to:)()
{
  sub_254E73838();
  v2 = v1;
  v3 = sub_254E6775C(&qword_27F755AD0, &qword_254EA3CE0);
  sub_254E62124();
  v5 = v4;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v6);
  sub_254E636EC();
  sub_254E6A434(v2, v2[3]);
  sub_254E94D1C();
  sub_254E9E65C();
  sub_254E9E53C();
  (*(v5 + 8))(v0, v3);
  sub_254E62F78();
}

unint64_t sub_254E94D1C()
{
  result = qword_27F755AD8;
  if (!qword_27F755AD8)
  {
    result = swift_getWitnessTable(byte_254EA453C, &type metadata for ElementContent.Text.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755AD8);
  }

  return result;
}

void ElementContent.Text.init(from:)()
{
  sub_254E73838();
  v3 = v2;
  v5 = v4;
  v6 = sub_254E6775C(&qword_27F755AE0, &qword_254EA3CE8);
  sub_254E62124();
  v8 = v7;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v9);
  sub_254E636EC();
  sub_254E6A434(v3, v3[3]);
  sub_254E94D1C();
  sub_254E9E64C();
  if (!v0)
  {
    v10 = sub_254E9E4AC();
    v12 = v11;
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    v5[1] = v12;
  }

  sub_254E6A780(v3);
  sub_254E62F78();
}

void __swiftcall ElementContent.Command.init(title:standaloneTitle:identifier:menuHierarchyComponents:)(IntelligenceFlowContext::ElementContent::Command *__return_ptr retstr, Swift::String_optional title, Swift::String_optional standaloneTitle, Swift::String_optional identifier, Swift::OpaquePointer menuHierarchyComponents)
{
  retstr->title = title;
  retstr->standaloneTitle = standaloneTitle;
  retstr->identifier = identifier;
  retstr->menuHierarchyComponents = menuHierarchyComponents;
}

uint64_t ElementContent.Command.commandName.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v0[2];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v1 = v3;
  }

  else
  {
LABEL_6:
  }

  return v1;
}

uint64_t static ElementContent.Command.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (sub_254E9E5CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = v4 == v9 && v6 == v11;
    if (!v14 && (sub_254E9E5CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12)
    {
      v15 = v5 == v10 && v7 == v12;
      if (v15 || (sub_254E9E5CC() & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    return 0;
  }

  if (v12)
  {
    return 0;
  }

LABEL_26:
  v16 = sub_254E62CF4();

  return sub_254E707CC(v16, v17);
}

uint64_t sub_254E95120(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F6C61646E617473 && a2 == 0xEF656C746954656ELL;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000017 && 0x8000000254EA5980 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_254E9E5CC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_254E9528C(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6F6C61646E617473;
      break;
    case 2:
      result = 0x696669746E656469;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E95328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E95120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E95350(uint64_t a1)
{
  v2 = sub_254E955D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E9538C(uint64_t a1)
{
  v2 = sub_254E955D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void ElementContent.Command.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_254E73838();
  v44 = v25;
  v27 = v26;
  v28 = sub_254E6775C(&qword_27F755AE8, &unk_254EA3CF0);
  sub_254E62124();
  v30 = v29;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v31);
  v33 = &v38 - v32;
  v34 = v24[2];
  v42 = v24[3];
  v43 = v34;
  v35 = v24[4];
  v40 = v24[5];
  v41 = v35;
  v39 = v24[6];
  sub_254E6A434(v27, v27[3]);
  sub_254E955D8();
  sub_254E9E65C();
  v36 = v44;
  sub_254E9E53C();
  if (!v36)
  {
    v37 = v39;
    sub_254E9E53C();
    sub_254E9E53C();
    v45 = v37;
    sub_254E6775C(&qword_27F755038, &qword_254EA11E0);
    sub_254E95918(&qword_27F755AF8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_254E9E59C();
  }

  (*(v30 + 8))(v33, v28);
  sub_254E62F78();
}

unint64_t sub_254E955D8()
{
  result = qword_27F755AF0;
  if (!qword_27F755AF0)
  {
    result = swift_getWitnessTable("=q9-<#", &type metadata for ElementContent.Command.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755AF0);
  }

  return result;
}

void ElementContent.Command.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_254E73838();
  v26 = v25;
  v28 = v27;
  sub_254E6775C(&qword_27F755B00, &qword_254EA3D00);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v29);
  sub_254E6A434(v26, v26[3]);
  sub_254E955D8();
  sub_254E9E64C();
  if (v24)
  {
    sub_254E6A780(v26);
  }

  else
  {
    v30 = sub_254E9E4AC();
    v41 = v31;
    v32 = sub_254E9E4AC();
    v40 = v33;
    v38 = v32;
    v37 = sub_254E9E4AC();
    v39 = v34;
    sub_254E6775C(&qword_27F755038, &qword_254EA11E0);
    sub_254E95918(&qword_27F755B08, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_254E9E50C();
    v35 = sub_254E62C28();
    v36(v35);
    *v28 = v30;
    v28[1] = v41;
    v28[2] = v38;
    v28[3] = v40;
    v28[4] = v37;
    v28[5] = v39;
    v28[6] = v42;

    sub_254E6A780(v26);
  }

  sub_254E62F78();
}

uint64_t sub_254E95918(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_254E67858(&qword_27F755038, &qword_254EA11E0);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ElementContent.== infix(_:_:)(_OWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  *v82 = *a1;
  *&v82[16] = v8;
  *&v82[32] = a1[2];
  v9 = *&v82[32];
  v10 = a2[1];
  v83 = *a2;
  v84 = v10;
  v12 = *a2;
  v11 = a2[1];
  *v85 = a2[2];
  *&v85[9] = *(a2 + 41);
  *&v82[41] = *(a1 + 41);
  v86[0] = *v82;
  v86[1] = v8;
  v87[0] = v9;
  *(v87 + 9) = *&v82[41];
  v87[2] = v12;
  v87[3] = v11;
  v88[0] = a2[2];
  *(v88 + 9) = *(a2 + 41);
  if (v82[56])
  {
    if (v85[24])
    {
      a4 = *(&v83 + 1);
      a2 = *&v82[8];
      if (*&v82[8])
      {
        if (*(&v83 + 1))
        {
          a3 = v83;
          if (*v82 != v83 || *&v82[8] != *(&v83 + 1))
          {
            v14 = sub_254E9E5CC();
            v15 = v14;
            v23 = sub_254E974D0(v14, v16, v17, v18, v19, v20, v21, v22, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73);
            sub_254E974B8(v23, v24, v25, v26, v27, v28, v29, v30, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
            sub_254E95B50(v86);
            if (v15)
            {
              goto LABEL_17;
            }

            goto LABEL_13;
          }

LABEL_16:
          v56 = sub_254E974D0(*v82, *&v82[8], a3, *(&v83 + 1), a5, a6, a7, a8, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, *&v82[8]);
          sub_254E974B8(v56, v57, v58, v59, v60, v61, v62, v63, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
          sub_254E95B50(v86);
LABEL_17:
          v39 = 1;
          return v39 & 1;
        }
      }

      else if (!*(&v83 + 1))
      {
        goto LABEL_16;
      }
    }
  }

  else if ((v85[24] & 1) == 0)
  {
    v68 = *&v85[16];
    v69 = *v82;
    v70 = *&v82[8];
    v71 = *&v82[24];
    v72 = *&v82[40];
    v73 = *&v82[48];
    v65 = v83;
    v66 = v84;
    v67 = *v85;
    v40 = static ElementContent.Command.== infix(_:_:)(&v69, &v65);
    v39 = v40;
    v48 = sub_254E974D0(v40, v41, v42, v43, v44, v45, v46, v47, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73);
    sub_254E974B8(v48, v49, v50, v51, v52, v53, v54, v55, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
    sub_254E95B50(v86);
    return v39 & 1;
  }

  v31 = sub_254E974D0(*v82, a2, a3, a4, a5, a6, a7, a8, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, *&v82[8]);
  sub_254E974B8(v31, v32, v33, v34, v35, v36, v37, v38, v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, v69, v70, *(&v70 + 1), v71, *(&v71 + 1), v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  sub_254E95B50(v86);
LABEL_13:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_254E95B50(uint64_t a1)
{
  v2 = sub_254E6775C(&qword_27F755B10, &qword_254EA3D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254E95BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_254E9E5CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_254E95C80(char a1)
{
  sub_254E9E5FC();
  MEMORY[0x259C2B8B0](a1 & 1);
  return sub_254E9E63C();
}

uint64_t sub_254E95CC8(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x646E616D6D6F63;
  }
}

uint64_t sub_254E95D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E95BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E95D30(uint64_t a1)
{
  v2 = sub_254E96178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E95D6C(uint64_t a1)
{
  v2 = sub_254E96178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E95DA8(uint64_t a1)
{
  v2 = sub_254E96274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E95DE4(uint64_t a1)
{
  v2 = sub_254E96274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E95E20(uint64_t a1)
{
  v2 = sub_254E961CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E95E5C(uint64_t a1)
{
  v2 = sub_254E961CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ElementContent.encode(to:)()
{
  sub_254E73838();
  v3 = v2;
  sub_254E6775C(&qword_27F755B18, &qword_254EA3D10);
  sub_254E62124();
  v29 = v5;
  v30 = v4;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  sub_254E6775C(&qword_27F755B20, &qword_254EA3D18);
  sub_254E62124();
  v27 = v10;
  v28 = v9;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v32 = sub_254E6775C(&qword_27F755B28, &qword_254EA3D20);
  sub_254E62124();
  v15 = v14;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v16);
  sub_254E636EC();
  v17 = *v0;
  v26 = v0[1];
  v31 = v17;
  v18 = *(v0 + 4);
  v24 = *(v0 + 5);
  v25 = v18;
  v23 = *(v0 + 6);
  v19 = *(v0 + 56);
  sub_254E6A434(v3, v3[3]);
  sub_254E96178();
  sub_254E9E65C();
  if (v19)
  {
    LOBYTE(v33[0]) = 1;
    sub_254E961CC();
    sub_254E97478(&type metadata for ElementContent.TextCodingKeys, v33);
    v33[0] = v31;
    sub_254E96220();
    v20 = v30;
    sub_254E9E59C();
    (*(v29 + 8))(v8, v20);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    sub_254E96274();
    sub_254E97478(&type metadata for ElementContent.CommandCodingKeys, v33);
    v33[0] = v31;
    v33[1] = v26;
    v34 = v25;
    v35 = v24;
    v36 = v23;
    sub_254E962C8();
    v21 = v28;
    sub_254E9E59C();
    (*(v27 + 8))(v13, v21);
  }

  (*(v15 + 8))(v1, v19);
  sub_254E62F78();
}

unint64_t sub_254E96178()
{
  result = qword_27F755B30;
  if (!qword_27F755B30)
  {
    result = swift_getWitnessTable(byte_254EA449C, &type metadata for ElementContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755B30);
  }

  return result;
}

unint64_t sub_254E961CC()
{
  result = qword_27F755B38;
  if (!qword_27F755B38)
  {
    result = swift_getWitnessTable(byte_254EA444C, &type metadata for ElementContent.TextCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755B38);
  }

  return result;
}

unint64_t sub_254E96220()
{
  result = qword_27F755B40;
  if (!qword_27F755B40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ElementContent.Text, &type metadata for ElementContent.Text, v0, v1);
    atomic_store(result, &qword_27F755B40);
  }

  return result;
}

unint64_t sub_254E96274()
{
  result = qword_27F755B48;
  if (!qword_27F755B48)
  {
    result = swift_getWitnessTable(aR9, &type metadata for ElementContent.CommandCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755B48);
  }

  return result;
}

unint64_t sub_254E962C8()
{
  result = qword_27F755B50;
  if (!qword_27F755B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ElementContent.Command, &type metadata for ElementContent.Command, v0, v1);
    atomic_store(result, &qword_27F755B50);
  }

  return result;
}

void ElementContent.init(from:)()
{
  sub_254E73838();
  v53 = v1;
  v54 = v0;
  v3 = v2;
  sub_254E6775C(&qword_27F755B58, &qword_254EA3D28);
  sub_254E62124();
  v50 = v5;
  v51 = v4;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = sub_254E6775C(&qword_27F755B60, &qword_254EA3D30);
  sub_254E62124();
  v49 = v10;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v14 = sub_254E6775C(&qword_27F755B68, &unk_254EA3D38);
  sub_254E62124();
  v52 = v15;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  sub_254E6A434(v3, v3[3]);
  sub_254E96178();
  v19 = v54;
  sub_254E9E64C();
  if (v19)
  {
    goto LABEL_8;
  }

  v46 = v9;
  v47 = v13;
  v48 = v8;
  v54 = v3;
  v20 = v53;
  sub_254E9E51C();
  sub_254E639C4();
  if (v22 == v23 >> 1)
  {
LABEL_7:
    v30 = sub_254E9E43C();
    swift_allocError();
    v32 = v31;
    sub_254E6775C(&qword_27F755138, &qword_254E9F170);
    *v32 = &type metadata for ElementContent;
    sub_254E9E49C();
    sub_254E9E42C();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v18, v14);
    v3 = v54;
LABEL_8:
    sub_254E6A780(v3);
LABEL_9:
    sub_254E62F78();
    return;
  }

  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    sub_254E734D4();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      if (v24)
      {
        LOBYTE(v55[0]) = 1;
        sub_254E961CC();
        v29 = v48;
        sub_254E97458(&type metadata for ElementContent.TextCodingKeys, v55);
        sub_254E969D0();
        v34 = v51;
        sub_254E9E50C();
        sub_254E97444();
        swift_unknownObjectRelease();
        (*v29)(v29, v34);
        v36 = sub_254E621DC();
        v37(v36);
        v41 = v55[0];
        v42 = 1;
      }

      else
      {
        LOBYTE(v55[0]) = 0;
        sub_254E96274();
        v33 = v47;
        sub_254E97458(&type metadata for ElementContent.CommandCodingKeys, v55);
        sub_254E96A24();
        v35 = v46;
        sub_254E9E50C();
        sub_254E97444();
        swift_unknownObjectRelease();
        MEMORY[0](v33, v35);
        v43 = sub_254E621DC();
        v44(v43);
        v42 = 0;
        v41 = v55[0];
        v39 = v55[1];
        v40 = v55[2];
        v38 = v56;
      }

      *v20 = v41;
      *(v20 + 16) = v39;
      *(v20 + 32) = v40;
      *(v20 + 48) = v38;
      *(v20 + 56) = v42;
      sub_254E6A780(v54);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t ElementContent.description.getter()
{
  if (*(v1 + 56) != 1)
  {
    return 0x646E616D6D6F43;
  }

  sub_254E97498();
  sub_254E9E40C();

  v3 = sub_254E634A4();
  if (v4)
  {
    v0 = v2;
  }

  MEMORY[0x259C2B550](v3, v0);

  MEMORY[0x259C2B550](10530, 0xE200000000000000);
  return v6;
}

uint64_t ElementContent.Text.description.getter()
{
  sub_254E97498();
  sub_254E9E40C();

  v2 = sub_254E634A4();
  if (v3)
  {
    v0 = v1;
  }

  MEMORY[0x259C2B550](v2, v0);

  MEMORY[0x259C2B550](10530, 0xE200000000000000);
  return v5;
}

unint64_t sub_254E969D0()
{
  result = qword_27F755B70;
  if (!qword_27F755B70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ElementContent.Text, &type metadata for ElementContent.Text, v0, v1);
    atomic_store(result, &qword_27F755B70);
  }

  return result;
}

unint64_t sub_254E96A24()
{
  result = qword_27F755B78;
  if (!qword_27F755B78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ElementContent.Command, &type metadata for ElementContent.Command, v0, v1);
    atomic_store(result, &qword_27F755B78);
  }

  return result;
}

__n128 sub_254E96A84(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_254E96AA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_254E96AE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_254E96B4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_254E96BA0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254E96BFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_254E96C3C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ElementContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ElementContent.Command.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_254E96E6C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_254E96F1C()
{
  result = qword_27F755B80;
  if (!qword_27F755B80)
  {
    result = swift_getWitnessTable(byte_254EA40F4, &type metadata for ElementContent.Text.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755B80);
  }

  return result;
}

unint64_t sub_254E96F74()
{
  result = qword_27F755B88;
  if (!qword_27F755B88)
  {
    result = swift_getWitnessTable(byte_254EA41AC, &type metadata for ElementContent.Command.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755B88);
  }

  return result;
}

unint64_t sub_254E96FCC()
{
  result = qword_27F755B90;
  if (!qword_27F755B90)
  {
    result = swift_getWitnessTable(aE9_0, &type metadata for ElementContent.TextCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755B90);
  }

  return result;
}

unint64_t sub_254E97024()
{
  result = qword_27F755B98;
  if (!qword_27F755B98)
  {
    result = swift_getWitnessTable(byte_254EA431C, &type metadata for ElementContent.CommandCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755B98);
  }

  return result;
}

unint64_t sub_254E9707C()
{
  result = qword_27F755BA0;
  if (!qword_27F755BA0)
  {
    result = swift_getWitnessTable(byte_254EA43D4, &type metadata for ElementContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BA0);
  }

  return result;
}

unint64_t sub_254E970D4()
{
  result = qword_27F755BA8;
  if (!qword_27F755BA8)
  {
    result = swift_getWitnessTable(byte_254EA428C, &type metadata for ElementContent.CommandCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BA8);
  }

  return result;
}

unint64_t sub_254E9712C()
{
  result = qword_27F755BB0;
  if (!qword_27F755BB0)
  {
    result = swift_getWitnessTable("%i9-,%", &type metadata for ElementContent.CommandCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BB0);
  }

  return result;
}

unint64_t sub_254E97184()
{
  result = qword_27F755BB8;
  if (!qword_27F755BB8)
  {
    result = swift_getWitnessTable(byte_254EA41D4, &type metadata for ElementContent.TextCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BB8);
  }

  return result;
}

unint64_t sub_254E971DC()
{
  result = qword_27F755BC0;
  if (!qword_27F755BC0)
  {
    result = swift_getWitnessTable(byte_254EA41FC, &type metadata for ElementContent.TextCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BC0);
  }

  return result;
}

unint64_t sub_254E97234()
{
  result = qword_27F755BC8;
  if (!qword_27F755BC8)
  {
    result = swift_getWitnessTable("]l9-x$", &type metadata for ElementContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BC8);
  }

  return result;
}

unint64_t sub_254E9728C()
{
  result = qword_27F755BD0;
  if (!qword_27F755BD0)
  {
    result = swift_getWitnessTable("mh9-P$", &type metadata for ElementContent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BD0);
  }

  return result;
}

unint64_t sub_254E972E4()
{
  result = qword_27F755BD8;
  if (!qword_27F755BD8)
  {
    result = swift_getWitnessTable(byte_254EA411C, &type metadata for ElementContent.Command.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BD8);
  }

  return result;
}

unint64_t sub_254E9733C()
{
  result = qword_27F755BE0;
  if (!qword_27F755BE0)
  {
    result = swift_getWitnessTable(byte_254EA4144, &type metadata for ElementContent.Command.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BE0);
  }

  return result;
}

unint64_t sub_254E97394()
{
  result = qword_27F755BE8;
  if (!qword_27F755BE8)
  {
    result = swift_getWitnessTable(aO9, &type metadata for ElementContent.Text.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BE8);
  }

  return result;
}

unint64_t sub_254E973EC()
{
  result = qword_27F755BF0;
  if (!qword_27F755BF0)
  {
    result = swift_getWitnessTable(aMk9, &type metadata for ElementContent.Text.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F755BF0);
  }

  return result;
}

uint64_t sub_254E97458(uint64_t a1, uint64_t a2)
{

  return sub_254E9E48C();
}

uint64_t sub_254E97478(uint64_t a1, uint64_t a2)
{

  return sub_254E9E52C();
}

uint64_t sub_254E97498()
{
}

uint64_t sub_254E974B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);

  return sub_254E95B18(va, &a23);
}

uint64_t sub_254E974D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return sub_254E95B18(v22 - 208, va);
}

uint64_t sub_254E974EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_254E97548(uint64_t a1)
{
  v1 = a1;
  sub_254E73A88(a1);
  sub_254E62278(v3, v1);
  return sub_254E9E63C();
}

uint64_t sub_254E97588(uint64_t a1)
{
  sub_254E73A88(a1);
  sub_254E9C034();
  return sub_254E9E63C();
}

uint64_t sub_254E975C4()
{
  sub_254E9E5FC();
  sub_254E9C034();
  return sub_254E9E63C();
}

uint64_t UIContextOptions.__allocating_init(detectableTypes:)(uint64_t a1)
{
  v2 = swift_allocObject();
  UIContextOptions.init(detectableTypes:)(a1);
  return v2;
}

uint64_t UIContextOptions.targetAppBundleIdentifiers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_targetAppBundleIdentifiers;
  sub_254E9BF84();
  *(v1 + v3) = a1;
}

uint64_t UIContextOptions.excludedAppBundleIdentifiers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_excludedAppBundleIdentifiers;
  sub_254E9BF84();
  *(v1 + v3) = a1;
}

uint64_t UIContextOptions.IntelligenceComponents.description.getter()
{
  v1 = *v0;
  sub_254E6775C(&qword_27F755AB8, &unk_254EA3CB0);
  inited = swift_initStackObject();
  v3 = 0;
  *(inited + 16) = xmmword_254EA10E0;
  *(inited + 32) = xmmword_254EA4590;
  *(inited + 48) = 0xE800000000000000;
  *(inited + 56) = xmmword_254EA45A0;
  *(inited + 72) = 0xE800000000000000;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (inited + 32 + 24 * v3);
  while (++v3 != 3)
  {
    v6 = v5 + 3;
    v7 = *v5;
    v5 += 3;
    if ((v7 & ~v1) == 0)
    {
      v8 = *(v6 - 1);
      v23 = *(v6 - 2);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254E935FC(0, v4[2] + 1, 1);
      }

      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_254E935FC((v9 > 1), v10 + 1, 1);
      }

      v4[2] = v10 + 1;
      v11 = &v4[3 * v10];
      v11[4] = v7;
      v11[5] = v23;
      v11[6] = v8;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_254E87E1C();
  v12 = v4[2];
  if (v12)
  {
    v24 = MEMORY[0x277D84F90];
    sub_254E935DC(0, v12, 0);
    v13 = v4 + 6;
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v17 = *(v24 + 16);
      v16 = *(v24 + 24);

      if (v17 >= v16 >> 1)
      {
        sub_254E935DC((v16 > 1), v17 + 1, 1);
      }

      *(v24 + 16) = v17 + 1;
      v18 = v24 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v13 += 3;
      --v12;
    }

    while (v12);
  }

  sub_254E6775C(&qword_27F755038, &qword_254EA11E0);
  sub_254E69C68();
  v19 = sub_254E9E24C();
  v21 = v20;

  MEMORY[0x259C2B550](v19, v21);

  MEMORY[0x259C2B550](41, 0xE100000000000000);
  return 40;
}

IntelligenceFlowContext::UIContextOptions::IntelligenceComponents sub_254E97C5C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = UIContextOptions.IntelligenceComponents.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_254E97C9C@<X0>(uint64_t *a1@<X8>)
{
  result = UIContextOptions.IntelligenceComponents.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t UIContextOptions.intelligenceComponents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceComponents;
  result = sub_254E9BF84();
  *(v1 + v3) = v2;
  return result;
}

IntelligenceFlowContext::UIContextOptions::IntelligenceCommandOptions __swiftcall UIContextOptions.IntelligenceCommandOptions.init()()
{
  *v0 = 0;
  *(v0 + 2) = 0;
  return result;
}

uint64_t sub_254E97E3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000254EA5AE0 == a2;
  if (v3 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000254EA5B00 == a2;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x556564756C636E69 && a2 == 0xEF64656C7469746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_254E9E5CC();

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

uint64_t sub_254E97F60(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x556564756C636E69;
}

uint64_t sub_254E97FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E97E3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E98000(uint64_t a1)
{
  v2 = sub_254E9AA5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E9803C(uint64_t a1)
{
  v2 = sub_254E9AA5C();

  return MEMORY[0x2821FE720](a1, v2);
}

void UIContextOptions.IntelligenceCommandOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_254E73838();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v30 = sub_254E6775C(&qword_27F755BF8, &qword_254EA45B0);
  sub_254E62124();
  v32 = v31;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v33);
  v35 = &v38 - v34;
  v36 = *v24;
  a10 = v24[1];
  v39 = v24[2];
  sub_254E6A434(v29, v29[3]);
  sub_254E9AA5C();
  sub_254E9E65C();
  a14 = 0;
  sub_254E9BFF0(v36, &a14);
  if (!v25)
  {
    v37 = v39;
    a13 = 1;
    sub_254E9BFF0(a10, &a13);
    sub_254E739C0();
    sub_254E9BFF0(v37, &a12);
  }

  (*(v32 + 8))(v35, v30);
  sub_254E62F78();
}

uint64_t UIContextOptions.IntelligenceCommandOptions.hash(into:)()
{
  sub_254E9E61C();
  sub_254E9E61C();
  return sub_254E9E61C();
}

uint64_t UIContextOptions.IntelligenceCommandOptions.hashValue.getter(uint64_t a1)
{
  sub_254E73A88(a1);
  sub_254E9E61C();
  sub_254E9E61C();
  sub_254E9E61C();
  return sub_254E9E63C();
}

void UIContextOptions.IntelligenceCommandOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_254E73838();
  a18 = v20;
  a19 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_254E6775C(&qword_27F755C00, &qword_254EA45B8);
  sub_254E62124();
  v28 = v27;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  sub_254E6A434(v23, v23[3]);
  sub_254E9AA5C();
  sub_254E9E64C();
  if (!v19)
  {
    BYTE7(a10) = 0;
    sub_254E9BFCC();
    v32 = sub_254E9E4EC();
    BYTE6(a10) = 1;
    sub_254E9BFCC();
    v33 = sub_254E9E4EC();
    sub_254E739C0();
    sub_254E9BFCC();
    v34 = sub_254E9E4EC();
    (*(v28 + 8))(v31, v26);
    *v25 = v32 & 1;
    v25[1] = v33 & 1;
    v25[2] = v34 & 1;
  }

  sub_254E6A780(v23);
  sub_254E62F78();
}

uint64_t sub_254E98470()
{
  sub_254E9E5FC();
  sub_254E9E61C();
  sub_254E9E61C();
  sub_254E9E61C();
  return sub_254E9E63C();
}

uint64_t UIContextOptions.intelligenceCommandOptions.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceCommandOptions);
  sub_254E62FF8();
  result = swift_beginAccess();
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  return result;
}

uint64_t sub_254E985AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1769105779 && a2 == 0xE400000000000000;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000254EA5B20 == a2;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x8000000254EA5B40 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_254E9E5CC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_254E98764(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 1769105779;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6867696C746F7073;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E98810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E985AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E98838(uint64_t a1)
{
  v2 = sub_254E9AAB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E98874(uint64_t a1)
{
  v2 = sub_254E9AAB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E988B0(uint64_t a1)
{
  v2 = sub_254E9AB04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E988EC(uint64_t a1)
{
  v2 = sub_254E9AB04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E98928(uint64_t a1)
{
  v2 = sub_254E9AC00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E98964(uint64_t a1)
{
  v2 = sub_254E9AC00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E989A0(uint64_t a1)
{
  v2 = sub_254E9AB58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E989DC(uint64_t a1)
{
  v2 = sub_254E9AB58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E98A18(uint64_t a1)
{
  v2 = sub_254E9ABAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E98A54(uint64_t a1)
{
  v2 = sub_254E9ABAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254E98A90(uint64_t a1)
{
  v2 = sub_254E9AC54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E98ACC(uint64_t a1)
{
  v2 = sub_254E9AC54();

  return MEMORY[0x2821FE720](a1, v2);
}

void UIContextOptions.Client.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_254E73838();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  sub_254E6775C(&qword_27F755C08, &qword_254EA45C0);
  sub_254E62124();
  v76 = v32;
  v77 = v31;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v33);
  sub_254E62158();
  v75 = v34;
  sub_254E6775C(&qword_27F755C10, &qword_254EA45C8);
  sub_254E62124();
  v73 = v36;
  v74 = v35;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v37);
  sub_254E62158();
  v72 = v38;
  sub_254E6775C(&qword_27F755C18, &qword_254EA45D0);
  sub_254E62124();
  v70 = v40;
  v71 = v39;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v41);
  sub_254E62158();
  v69 = v42;
  sub_254E6775C(&qword_27F755C20, &qword_254EA45D8);
  sub_254E62124();
  v67 = v44;
  v68 = v43;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v45);
  sub_254E62158();
  v66 = v46;
  sub_254E6775C(&qword_27F755C28, &qword_254EA45E0);
  sub_254E62124();
  v64 = v48;
  v65 = v47;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v49);
  v51 = &v63 - v50;
  v52 = sub_254E6775C(&qword_27F755C30, &qword_254EA45E8);
  sub_254E62124();
  v54 = v53;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v55);
  v57 = &v63 - v56;
  v58 = *v26;
  sub_254E6A434(v30, v30[3]);
  sub_254E9AAB0();
  sub_254E9E65C();
  v59 = (v54 + 8);
  switch(v58)
  {
    case 1:
      a13 = 1;
      sub_254E9AC00();
      v60 = v66;
      sub_254E62D7C(&type metadata for UIContextOptions.Client.SiriCodingKeys, &a13);
      v62 = v67;
      v61 = v68;
      goto LABEL_7;
    case 2:
      sub_254E739C0();
      sub_254E9ABAC();
      v60 = v69;
      sub_254E62D7C(&type metadata for UIContextOptions.Client.UiAutomationTestingCodingKeys, &a14);
      v62 = v70;
      v61 = v71;
      goto LABEL_7;
    case 3:
      a15 = 3;
      sub_254E9AB58();
      v60 = v72;
      sub_254E62D7C(&type metadata for UIContextOptions.Client.SpotlightCodingKeys, &a15);
      v62 = v73;
      v61 = v74;
      goto LABEL_7;
    case 4:
      a16 = 4;
      sub_254E9AB04();
      v60 = v75;
      sub_254E62D7C(&type metadata for UIContextOptions.Client.CommandLineDebugCodingKeys, &a16);
      v62 = v76;
      v61 = v77;
LABEL_7:
      (*(v62 + 8))(v60, v61);
      break;
    default:
      sub_254E9AC54();
      sub_254E9E52C();
      (*(v64 + 8))(v51, v65);
      break;
  }

  (*v59)(v57, v52);
  sub_254E62F78();
}

uint64_t UIContextOptions.Client.hashValue.getter(uint64_t a1)
{
  sub_254E73A88(a1);
  sub_254E9C034();
  return sub_254E9E63C();
}

void UIContextOptions.Client.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_254E73838();
  a25 = v27;
  a26 = v28;
  v100 = v26;
  v30 = v29;
  v96 = v31;
  sub_254E6775C(&qword_27F755C58, &qword_254EA45F0);
  sub_254E62124();
  v93 = v32;
  v94 = v33;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v34);
  sub_254E62158();
  v99 = v35;
  sub_254E6775C(&qword_27F755C60, &qword_254EA45F8);
  sub_254E62124();
  v91 = v36;
  v92 = v37;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v38);
  sub_254E62158();
  v98 = v39;
  sub_254E6775C(&qword_27F755C68, &qword_254EA4600);
  sub_254E62124();
  v89 = v41;
  v90 = v40;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v42);
  sub_254E62158();
  v95 = v43;
  sub_254E6775C(&qword_27F755C70, &qword_254EA4608);
  sub_254E62124();
  v87 = v45;
  v88 = v44;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v46);
  v48 = &v81 - v47;
  v49 = sub_254E6775C(&qword_27F755C78, &qword_254EA4610);
  sub_254E62124();
  v86 = v50;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v51);
  v53 = &v81 - v52;
  v54 = sub_254E6775C(&qword_27F755C80, &unk_254EA4618);
  sub_254E62124();
  v97 = v55;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v56);
  v58 = &v81 - v57;
  sub_254E6A434(v30, v30[3]);
  sub_254E9AAB0();
  v59 = v100;
  sub_254E9E64C();
  if (v59)
  {
    goto LABEL_10;
  }

  v84 = v49;
  v85 = v53;
  v100 = v48;
  v60 = v98;
  v61 = v99;
  v62 = v58;
  sub_254E9E51C();
  sub_254E734E0();
  if (v64 == v65 >> 1)
  {
    v66 = v97;
LABEL_9:
    v74 = sub_254E9E43C();
    swift_allocError();
    v76 = v75;
    sub_254E6775C(&qword_27F755138, &qword_254E9F170);
    *v76 = &type metadata for UIContextOptions.Client;
    sub_254E9E49C();
    sub_254E9E42C();
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x277D84160], v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v66 + 8))(v62, v54);
LABEL_10:
    sub_254E6A780(v30);
LABEL_11:
    sub_254E62F78();
    return;
  }

  if (v64 < (v65 >> 1))
  {
    v82 = *(v63 + v64);
    v67 = sub_254E734D4();
    v69 = v68;
    v71 = v70;
    swift_unknownObjectRelease();
    v83 = v67;
    if (v69 == v71 >> 1)
    {
      v72 = v96;
      switch(v82)
      {
        case 1:
          a13 = 1;
          sub_254E9AC00();
          v60 = v100;
          sub_254E634D0(&type metadata for UIContextOptions.Client.SiriCodingKeys, &a13);
          swift_unknownObjectRelease();
          v78 = v87;
          v77 = v88;
          goto LABEL_16;
        case 2:
          sub_254E739C0();
          sub_254E9ABAC();
          v60 = v95;
          sub_254E634D0(&type metadata for UIContextOptions.Client.UiAutomationTestingCodingKeys, &a14);
          swift_unknownObjectRelease();
          v78 = v89;
          v77 = v90;
          goto LABEL_16;
        case 3:
          a15 = 3;
          sub_254E9AB58();
          sub_254E634D0(&type metadata for UIContextOptions.Client.SpotlightCodingKeys, &a15);
          swift_unknownObjectRelease();
          v77 = v91;
          v78 = v92;
LABEL_16:
          (*(v78 + 8))(v60, v77);
          break;
        case 4:
          a16 = 4;
          sub_254E9AB04();
          sub_254E9E48C();
          swift_unknownObjectRelease();
          (*(v94 + 8))(v61, v93);
          break;
        default:
          a12 = 0;
          sub_254E9AC54();
          v73 = v85;
          sub_254E634D0(&type metadata for UIContextOptions.Client.UnknownCodingKeys, &a12);
          swift_unknownObjectRelease();
          (*(v86 + 8))(v73, v84);
          break;
      }

      v79 = sub_254E9BFD8();
      v80(v79, v54);
      *v72 = v82;
      sub_254E6A780(v30);
      goto LABEL_11;
    }

    v66 = v97;
    v62 = v58;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t UIContextOptions.client.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_client;
  result = sub_254E9BF84();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_254E996DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6261746365746564 && a2 == 0xEF7365707954656CLL;
  if (v4 || (sub_254E9E5CC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x8000000254EA59F0 == a2;
    if (v6 || (sub_254E9E5CC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000254EA5A10 == a2;
      if (v7 || (sub_254E9E5CC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000020 && 0x8000000254EA5A30 == a2;
        if (v8 || (sub_254E9E5CC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x8000000254EA5A60 == a2;
          if (v9 || (sub_254E9E5CC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x8000000254EA5A80 == a2;
            if (v10 || (sub_254E9E5CC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000016 && 0x8000000254EA5AA0 == a2;
              if (v11 || (sub_254E9E5CC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001ALL && 0x8000000254EA5AC0 == a2;
                if (v12 || (sub_254E9E5CC() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_254E9E5CC();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_254E9999C(char a1)
{
  result = 0x6261746365746564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0x746E65696C63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254E99AC8()
{
  sub_254E9E5FC();
  sub_254E9C034();
  return sub_254E9E63C();
}

uint64_t sub_254E99B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254E996DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254E99B34(uint64_t a1)
{
  v2 = sub_254E9ACA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254E99B70(uint64_t a1)
{
  v2 = sub_254E9ACA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UIContextOptions.deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_appIntentsRequest;
  sub_254E9DF2C();
  sub_254E62148();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t UIContextOptions.__deallocating_deinit()
{
  UIContextOptions.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void UIContextOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_254E73838();
  v53 = v24;
  v25 = v23;
  v27 = v26;
  v28 = sub_254E9DF2C();
  sub_254E62124();
  v52 = v29;
  MEMORY[0x28223BE20](v30);
  sub_254E62F5C();
  v33 = v32 - v31;
  v34 = sub_254E6775C(&qword_27F755C88, &qword_254EA4628);
  sub_254E62124();
  v36 = v35;
  sub_254E62F6C();
  MEMORY[0x28223BE20](v37);
  v39 = &v52 - v38;
  sub_254E6A434(v27, v27[3]);
  sub_254E9ACA8();
  sub_254E9E65C();
  v64 = *(v25 + 16);
  v63 = 0;
  sub_254E6775C(&qword_27F755C90, &unk_254EA4630);
  sub_254E9AE4C(&qword_280C3FC30, sub_254E9ACFC, MEMORY[0x277D83B50]);
  v54 = v34;
  v40 = v53;
  sub_254E9E59C();
  if (v40)
  {
    (*(v36 + 8))(v39, v54);
  }

  else
  {
    v41 = v52;
    sub_254E621EC();
    swift_beginAccess();
    v63 = 1;
    sub_254E9BFCC();
    sub_254E9E58C();
    v42 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_appIntentsRequest;
    sub_254E621EC();
    swift_beginAccess();
    (*(v41 + 16))(v33, v25 + v42, v28);
    v62 = 2;
    sub_254E9AF18(&qword_280C3FE00, MEMORY[0x277D747B0]);
    sub_254E9BFB0();
    sub_254E9E59C();
    (*(v41 + 8))(v33, v28);
    sub_254E621EC();
    swift_beginAccess();
    v61 = 3;
    sub_254E9BFB0();
    sub_254E9BFCC();
    sub_254E9E57C();
    v44 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_targetAppBundleIdentifiers;
    sub_254E621EC();
    swift_beginAccess();
    v60 = *(v25 + v44);
    LOBYTE(v59) = 4;
    sub_254E6775C(&qword_27F755480, &qword_254EA03F0);
    sub_254E89B68(&qword_280C3FE58, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_254E9BFB0();
    sub_254E9E55C();
    v45 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_excludedAppBundleIdentifiers;
    sub_254E621EC();
    swift_beginAccess();
    v59 = *(v25 + v45);
    LOBYTE(v58) = 5;
    sub_254E9BFB0();
    sub_254E9E59C();
    v46 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceComponents;
    sub_254E621EC();
    swift_beginAccess();
    v58 = *(v25 + v46);
    v55 = 6;
    sub_254E9AD50();
    sub_254E9BFB0();
    sub_254E9E59C();
    v47 = (v25 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceCommandOptions);
    sub_254E621EC();
    swift_beginAccess();
    v48 = v47[1];
    v49 = v47[2];
    v55 = *v47;
    v56 = v48;
    v57 = v49;
    sub_254E9ADA4();
    sub_254E9BFB0();
    sub_254E9E59C();
    sub_254E621EC();
    swift_beginAccess();
    sub_254E9ADF8();
    v50 = v54;
    sub_254E9E59C();
    v51 = sub_254E9BFD8();
    v43(v51, v50);
  }

  sub_254E62F78();
}

uint64_t UIContextOptions.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  UIContextOptions.init(from:)(a1);
  return v2;
}

void *UIContextOptions.init(from:)(void *a1)
{
  v31 = sub_254E9DF2C();
  sub_254E62124();
  v29 = v3;
  MEMORY[0x28223BE20](v4);
  sub_254E62F5C();
  v27 = v6 - v5;
  v28 = sub_254E6775C(&qword_27F755C98, &qword_254EA4640);
  sub_254E62124();
  sub_254E62F6C();
  MEMORY[0x28223BE20](v7);
  sub_254E62158();
  sub_254E9DF1C();
  sub_254E62124();
  MEMORY[0x28223BE20](v8);
  sub_254E62F5C();
  *(v1 + 24) = 0x3FD999999999999ALL;
  v11 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_appIntentsRequest;
  (*(v12 + 104))(v10 - v9, *MEMORY[0x277D74798]);
  v26 = v11;
  sub_254E9DF0C();
  v25 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_includeOffscreenSelectedElements;
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_includeOffscreenSelectedElements) = 1;
  v24 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_targetAppBundleIdentifiers;
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_targetAppBundleIdentifiers) = 0;
  v13 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_excludedAppBundleIdentifiers;
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_excludedAppBundleIdentifiers) = MEMORY[0x277D84FA0];
  v14 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceComponents;
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceComponents) = 1;
  v15 = v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_intelligenceCommandOptions;
  *v15 = 0;
  *(v15 + 2) = 0;
  v16 = OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_client;
  v32 = v1;
  *(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_client) = 1;
  sub_254E6A434(a1, a1[3]);
  sub_254E9ACA8();
  sub_254E9E64C();
  if (v30)
  {
    v21 = v1;
    (*(v29 + 8))(v1 + OBJC_IVAR____TtC23IntelligenceFlowContext16UIContextOptions_appIntentsRequest, v31);

    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_254E6775C(&qword_27F755C90, &unk_254EA4630);
    sub_254E9AE4C(&qword_280C3FC28, sub_254E9AEC4, MEMORY[0x277D83B70]);
    sub_254E62C38();
    sub_254E9E50C();
    *(v1 + 16) = v40;
    sub_254E9C00C();
    sub_254E9E4FC();
    v19 = v18;
    sub_254E62FF8();
    swift_beginAccess();
    *(v1 + 24) = v19;
    sub_254E9AF18(&qword_280C3FDF8, MEMORY[0x277D747C0]);
    sub_254E9BFBC();
    sub_254E62C38();
    sub_254E9E50C();
    swift_beginAccess();
    (*(v29 + 40))(v1 + v26, v27, v31);
    swift_endAccess();
    sub_254E9C00C();
    v20 = sub_254E9E4EC();
    sub_254E62FF8();
    swift_beginAccess();
    *(v32 + v25) = v20 & 1;
    sub_254E6775C(&qword_27F755480, &qword_254EA03F0);
    sub_254E89B68(&qword_280C3FC20, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_254E9BFBC();
    sub_254E62C38();
    sub_254E9E4CC();
    sub_254E62FF8();
    swift_beginAccess();
    *(v32 + v24) = v39;

    sub_254E9BFBC();
    sub_254E62C38();
    sub_254E9E50C();
    sub_254E62FF8();
    swift_beginAccess();
    *(v32 + v13) = v38;
    v21 = v32;

    sub_254E9AF5C();
    sub_254E62C38();
    sub_254E9E50C();
    sub_254E62FF8();
    swift_beginAccess();
    *(v32 + v14) = v37;
    sub_254E9AFB0();
    sub_254E62C38();
    sub_254E9E50C();
    sub_254E62FF8();
    swift_beginAccess();
    *v15 = v33;
    *(v15 + 1) = v34;
    *(v15 + 2) = v35;
    sub_254E9B004();
    sub_254E62C38();
    sub_254E9E50C();
    v22 = sub_254E9BFD8();
    v23(v22, v28);
    sub_254E62FF8();
    swift_beginAccess();
    *(v32 + v16) = v36;
  }

  sub_254E6A780(a1);
  return v21;
}

uint64_t sub_254E9AA0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = UIContextOptions.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_254E9AA5C()
{
  result = qword_280C40298;
  if (!qword_280C40298)
  {
    result = swift_getWitnessTable(byte_254EA5214, &type metadata for UIContextOptions.IntelligenceCommandOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40298);
  }

  return result;
}

unint64_t sub_254E9AAB0()
{
  result = qword_280C40268;
  if (!qword_280C40268)
  {
    result = swift_getWitnessTable(aEd9T, &type metadata for UIContextOptions.Client.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40268);
  }

  return result;
}

unint64_t sub_254E9AB04()
{
  result = qword_27F755C38;
  if (!qword_27F755C38)
  {
    result = swift_getWitnessTable(byte_254EA5174, &type metadata for UIContextOptions.Client.CommandLineDebugCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755C38);
  }

  return result;
}

unint64_t sub_254E9AB58()
{
  result = qword_27F755C40;
  if (!qword_27F755C40)
  {
    result = swift_getWitnessTable(byte_254EA5124, &type metadata for UIContextOptions.Client.SpotlightCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755C40);
  }

  return result;
}

unint64_t sub_254E9ABAC()
{
  result = qword_27F755C48;
  if (!qword_27F755C48)
  {
    result = swift_getWitnessTable(aUe9, &type metadata for UIContextOptions.Client.UiAutomationTestingCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755C48);
  }

  return result;
}

unint64_t sub_254E9AC00()
{
  result = qword_280C40250;
  if (!qword_280C40250)
  {
    result = swift_getWitnessTable(byte_254EA5084, &type metadata for UIContextOptions.Client.SiriCodingKeys, v0, v1);
    atomic_store(result, &qword_280C40250);
  }

  return result;
}

unint64_t sub_254E9AC54()
{
  result = qword_27F755C50;
  if (!qword_27F755C50)
  {
    result = swift_getWitnessTable(byte_254EA5034, &type metadata for UIContextOptions.Client.UnknownCodingKeys, v0, v1);
    atomic_store(result, &qword_27F755C50);
  }

  return result;
}

unint64_t sub_254E9ACA8()
{
  result = qword_280C40280;
  if (!qword_280C40280)
  {
    result = swift_getWitnessTable(aEf90, &type metadata for UIContextOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_280C40280);
  }

  return result;
}

unint64_t sub_254E9ACFC()
{
  result = qword_280C3FD10;
  if (!qword_280C3FD10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectableEntityType, &type metadata for DetectableEntityType, v0, v1);
    atomic_store(result, &qword_280C3FD10);
  }

  return result;
}

unint64_t sub_254E9AD50()
{
  result = qword_280C3FD78;
  if (!qword_280C3FD78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.IntelligenceComponents, &type metadata for UIContextOptions.IntelligenceComponents, v0, v1);
    atomic_store(result, &qword_280C3FD78);
  }

  return result;
}

unint64_t sub_254E9ADA4()
{
  result = qword_280C3FD58;
  if (!qword_280C3FD58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.IntelligenceCommandOptions, &type metadata for UIContextOptions.IntelligenceCommandOptions, v0, v1);
    atomic_store(result, &qword_280C3FD58);
  }

  return result;
}

unint64_t sub_254E9ADF8()
{
  result = qword_280C3FD48;
  if (!qword_280C3FD48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.Client, &type metadata for UIContextOptions.Client, v0, v1);
    atomic_store(result, &qword_280C3FD48);
  }

  return result;
}

uint64_t sub_254E9AE4C(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_254E67858(&qword_27F755C90, &unk_254EA4630);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254E9AEC4()
{
  result = qword_280C3FD00;
  if (!qword_280C3FD00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DetectableEntityType, &type metadata for DetectableEntityType, v0, v1);
    atomic_store(result, &qword_280C3FD00);
  }

  return result;
}

uint64_t sub_254E9AF18(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_254E9DF2C();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254E9AF5C()
{
  result = qword_280C3FD68;
  if (!qword_280C3FD68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.IntelligenceComponents, &type metadata for UIContextOptions.IntelligenceComponents, v0, v1);
    atomic_store(result, &qword_280C3FD68);
  }

  return result;
}

unint64_t sub_254E9AFB0()
{
  result = qword_280C3FD50;
  if (!qword_280C3FD50)
  {
    result = swift_getWitnessTable("yY9-D ", &type metadata for UIContextOptions.IntelligenceCommandOptions, v0, v1);
    atomic_store(result, &qword_280C3FD50);
  }

  return result;
}

unint64_t sub_254E9B004()
{
  result = qword_280C3FD40;
  if (!qword_280C3FD40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.Client, &type metadata for UIContextOptions.Client, v0, v1);
    atomic_store(result, &qword_280C3FD40);
  }

  return result;
}

unint64_t sub_254E9B05C()
{
  result = qword_280C402A0[0];
  if (!qword_280C402A0[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.IntelligenceComponents, &type metadata for UIContextOptions.IntelligenceComponents, v0, v1);
    atomic_store(result, qword_280C402A0);
  }

  return result;
}

unint64_t sub_254E9B0B4()
{
  result = qword_27F755CA0;
  if (!qword_27F755CA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.IntelligenceComponents, &type metadata for UIContextOptions.IntelligenceComponents, v0, v1);
    atomic_store(result, &qword_27F755CA0);
  }

  return result;
}

unint64_t sub_254E9B108()
{
  result = qword_280C3FD70;
  if (!qword_280C3FD70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.IntelligenceComponents, &type metadata for UIContextOptions.IntelligenceComponents, v0, v1);
    atomic_store(result, &qword_280C3FD70);
  }

  return result;
}

unint64_t sub_254E9B160()
{
  result = qword_280C3FD60;
  if (!qword_280C3FD60)
  {
    result = swift_getWitnessTable("if9-X ", &type metadata for UIContextOptions.IntelligenceComponents, v0, v1);
    atomic_store(result, &qword_280C3FD60);
  }

  return result;
}

unint64_t sub_254E9B1B8()
{
  result = qword_27F755CA8;
  if (!qword_27F755CA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.IntelligenceCommandOptions, &type metadata for UIContextOptions.IntelligenceCommandOptions, v0, v1);
    atomic_store(result, &qword_27F755CA8);
  }

  return result;
}

unint64_t sub_254E9B210()
{
  result = qword_27F755CB0;
  if (!qword_27F755CB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UIContextOptions.Client, &type metadata for UIContextOptions.Client, v0, v1);
    atomic_store(result, &qword_27F755CB0);
  }

  return result;
}

uint64_t type metadata accessor for UIContextOptions(uint64_t a1)
{
  result = qword_280C401F0;
  if (!qword_280C401F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254E9B2B8(uint64_t a1)
{
  result = sub_254E9DF2C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for UIContextOptions.IntelligenceCommandOptions(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UIContextOptions.IntelligenceCommandOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UIContextOptions.IntelligenceCommandOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
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

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIContextOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UIContextOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_254E9B694(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}