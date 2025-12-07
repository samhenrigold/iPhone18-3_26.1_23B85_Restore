Swift::Int sub_1002FCE34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005814(&unk_1003DC2C0, &unk_10034A390);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1002FD06C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100005814(&qword_1003E86F8, &qword_10034A440);
  v7 = static _SetStorage.resize(original:capacity:move:)();
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1002FF768(&qword_1003DB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

void *sub_1002FD388(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_errorRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_errorRetain();
      result = v14;
      if (__OFADD__(v14++, 1))
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1002FD4E0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
    v14 = 1;
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
      if (__OFADD__(v14++, 1))
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

uint64_t sub_1002FD638(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1002FD6AC()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002FD71C()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002F9E58(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), &qword_1003E86B0, &unk_10034A3A0, type metadata accessor for CustodianshipInfoRecord, sub_10003230C, type metadata accessor for CustodianshipInfoRecord);
}

uint64_t sub_1002FD800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002FD830(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t sub_1002FD8EC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002F9E58(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), &qword_1003E86B8, &unk_10034A3B0, type metadata accessor for CustodianRecord, sub_100031F34, type metadata accessor for CustodianRecord);
}

uint64_t sub_1002FD9E8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002F9E58(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), &qword_1003E86C0, &unk_10034A3C0, type metadata accessor for CustodianRecoveryInfoRecord, sub_100031F90, type metadata accessor for CustodianRecoveryInfoRecord);
}

uint64_t sub_1002FDAE4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002F9E58(v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), &qword_1003E86C8, &unk_10034A3D0, type metadata accessor for CustodianHealthRecord, sub_1000322B0, type metadata accessor for CustodianHealthRecord);
}

uint64_t sub_1002FDC58()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_1002FDD64(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);

  return a1(v1 + v3, v7, v8, v9);
}

uint64_t sub_1002FDE14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005814(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1002FDE7C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1002FDED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FDF3C()
{
  v1 = (type metadata accessor for InheritanceHealthRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v0 + v2 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002FE0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FE134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002FE194()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);

  v5(v0 + v2 + v1[9], v4);
  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002FE2E8()
{
  v1 = (type metadata accessor for BeneficiaryManifestRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);

  v5(v0 + v2 + v1[8], v4);
  sub_100012324(*(v0 + v2 + v1[9]), *(v0 + v2 + v1[9] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002FE438()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, v2 + v9);
}

uint64_t sub_1002FE62C()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);

  v5(v0 + v2 + v1[11], v4);
  sub_100012324(*(v0 + v2 + v1[12]), *(v0 + v2 + v1[12] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002FE7A0()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002FE944()
{
  v1 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v11 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v6(v0 + v2 + v1[5], v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v7 = (v0 + v2 + v1[8]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_100012324(*v7, v8);
  }

  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v3 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  return _swift_deallocObject(v0, v2 + v11);
}

uint64_t sub_1002FEB38()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002FED3C()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);

  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1002FEE90(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1002FEF18()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002FEF50()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002FEFA4()
{

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1002FF004()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002FF058()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002FF0A4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002FF120()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 50) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1002FF1EC()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 50) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (*(v0 + 49))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  sub_1002E9790(v3, v4, v5, v6, v8 | v7, v0 + v2);
}

uint64_t sub_1002FF2BC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (*(v2 + 33))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v2 + 40);
  v11 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1002E9D70(a1, a2, v6, v7, v9 | v8, v10, v11);
}

uint64_t sub_1002FF35C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1002FF428(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1002EA148(a1, a2, v6, v7, v8);
}

uint64_t sub_1002FF4AC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1002FF578()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1002EA390(v2, v3, v4, v5, v6);
}

uint64_t sub_1002FF5E0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_1002FF6AC(char a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1002E9EEC(a1, v4, v5, v6, v7);
}

uint64_t sub_1002FF768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002FF7C4()
{
  result = qword_1003E8708;
  if (!qword_1003E8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E8708);
  }

  return result;
}

void sub_1002FF8DC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [a1 databaseScope];
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAA70);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Handling CloudKit APS Notification: %@", v13, 0xCu);
    sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);
  }

  if (v8 == 1)
  {
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "No need to handle zone change for public DB";
LABEL_19:
      _os_log_impl(&_mh_execute_header, oslog, v25, v27, v26, 2u);
    }
  }

  else
  {
    if (v8 == 3)
    {
      v23 = sub_1002E2BC4(a2, a3);
      v17 = [v23 sharedCloudDatabase];

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_13;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_10021145C(a2, a3, v29);
      v22 = "Received APS notification to pull shared DB changes for container: %s";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v18, v19, v22, v20, 0xCu);
      sub_10000839C(v21);

LABEL_13:

      sub_10014EF84(v4 + 24, v29);
      if (v30)
      {
        sub_1000080F8(v29, v30);
        v24 = swift_allocObject();
        *(v24 + 16) = a2;
        *(v24 + 24) = a3;

        sub_1002E542C(v17, a2, a3, 1, sub_100301830, v24);

        sub_10000839C(v29);
      }

      else
      {

        sub_100008D3C(v29, &qword_1003DF6C8, qword_1003436E0);
      }

      return;
    }

    if (v8 == 2)
    {
      v16 = sub_1002E2BC4(a2, a3);
      v17 = [v16 privateCloudDatabase];

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_13;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_10021145C(a2, a3, v29);
      v22 = "Received APS notification to pull private DB changes for container: %s";
      goto LABEL_12;
    }

    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "No need to handle zone change for unknown DB";
      goto LABEL_19;
    }
  }
}

void sub_1002FFDB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA58);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_10021145C(a2, a3, &v17);
      *(v8 + 12) = 2112;
      v11 = _convertErrorToNSError(_:)();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching ckDatabase (%s) changes: %@", v8, 0x16u);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v10);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA70);

    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10021145C(a2, a3, &v17);
      _os_log_impl(&_mh_execute_header, oslog, v13, "Successfully fetched ckDatabase (%s) changes", v14, 0xCu);
      sub_10000839C(v15);
    }

    else
    {
    }
  }
}

void sub_1003000EC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordZoneID];
  if (!v8)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAA58);
    v27 = a1;
    v43 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v27;
      *v30 = v27;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v43, v28, "Missing recordZoneID in zone notification: %@", v29, 0xCu);
      sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);
    }

    goto LABEL_26;
  }

  v43 = v8;
  v9 = [a1 databaseScope];
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA58);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Handling CloudKit APS Zone Change Notification: %@", v14, 0xCu);
    sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
  }

  if (v9 != 1)
  {
    if (v9 == 3)
    {
      v32 = sub_1002E2BC4(a2, a3);
      v18 = [v32 sharedCloudDatabase];

      v33 = v43;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_18;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v33;
      *v23 = v43;
      v34 = v33;
      v25 = "Received APS notification to pull shared DB changes for zoneID: %@";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v20, v21, v25, v22, 0xCu);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);

LABEL_18:

      sub_10014EF84(v4 + 24, v44);
      if (v45)
      {
        sub_1000080F8(v44, v45);
        sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1003431D0;
        *(v35 + 32) = v43;
        v36 = swift_allocObject();
        *(v36 + 16) = v11;
        v37 = v11;
        v38 = v43;
        sub_1002E6374(v18, v35, 1, sub_1003017F0, v36);

        sub_10000839C(v44);
      }

      else
      {

        sub_100008D3C(v44, &qword_1003DF6C8, qword_1003436E0);
      }

      return;
    }

    if (v9 == 2)
    {
      v17 = sub_1002E2BC4(a2, a3);
      v18 = [v17 privateCloudDatabase];

      v19 = v43;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_18;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v43;
      v24 = v19;
      v25 = "Received APS notification to pull private DB changes for zoneID: %@";
      goto LABEL_17;
    }

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_25;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "No need to handle zone change for unknown DB";
    goto LABEL_24;
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "No need to handle zone change for public DB";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);
  }

LABEL_25:

LABEL_26:
}

void sub_100300744(uint64_t a1, void *a2)
{
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA58);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Completed DB pull for APS notification: %@", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }
}

void sub_100300890(void *a1)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA70);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "CloudKitSyncManager received APS message: %@", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }

  v9 = [v3 userInfo];
  if (!v9)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v10 = v9;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v51 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

  if (!v51)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    sub_100008D04(v2, qword_1003FAA58);
    v23 = v3;
    v51 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v51, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, v51, v24, "CloudKitSyncManager received unknown APS message (missing type): %@", v25, 0xCu);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
    }

    goto LABEL_49;
  }

  v12 = [v51 notificationType];
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      sub_100008D04(v2, qword_1003FAA58);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_48;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "No need to handle read notification";
      goto LABEL_47;
    }

    if (v12 == 4)
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = [v3 topic];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35 = sub_10030171C(v32, v34);
          v37 = v36;

          if (v37)
          {
            sub_1002FF8DC(v29, v35, v37);
            goto LABEL_24;
          }

          goto LABEL_58;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      sub_100008D04(v2, qword_1003FAA58);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_48;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "Unable to cast notification to CKDatabaseNotification";
      goto LABEL_47;
    }
  }

  else
  {
    if (v12 == 1)
    {
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      sub_100008D04(v2, qword_1003FAA58);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_48;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "No need to handle query notification";
      goto LABEL_47;
    }

    if (v12 == 2)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = [v3 topic];
        if (v15)
        {
          v16 = v15;
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;

          v20 = sub_10030171C(v17, v19);
          v22 = v21;

          if (v22)
          {
            sub_1003000EC(v14, v20, v22);
LABEL_24:

            return;
          }

          if (qword_1003D7F28 != -1)
          {
            swift_once();
          }

          sub_100008D04(v2, qword_1003FAA58);
          v43 = v3;
          oslog = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(oslog, v44))
          {
LABEL_63:

            v42 = oslog;
            goto LABEL_50;
          }

          v2 = swift_slowAlloc();
          v3 = swift_slowAlloc();
          v52 = v3;
          *v2 = 136315138;
          v45 = [v43 topic];

          if (v45)
          {
LABEL_62:
            v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v47;

            v49 = sub_10021145C(v46, v48, &v52);

            *(v2 + 4) = v49;
            _os_log_impl(&_mh_execute_header, oslog, v44, "Received notification for unknown container topic: %s", v2, 0xCu);
            sub_10000839C(v3);

            return;
          }

          __break(1u);
LABEL_58:
          if (qword_1003D7F28 != -1)
          {
            swift_once();
          }

          sub_100008D04(v2, qword_1003FAA58);
          v43 = v3;
          oslog = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(oslog, v44))
          {
            v2 = swift_slowAlloc();
            v3 = swift_slowAlloc();
            v52 = v3;
            *v2 = 136315138;
            v45 = [v43 topic];

            if (v45)
            {
              goto LABEL_62;
            }

LABEL_67:
            __break(1u);
            return;
          }

          goto LABEL_63;
        }

        goto LABEL_65;
      }

      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      sub_100008D04(v2, qword_1003FAA58);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_48;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "Unable to cast notification to CKRecordZoneNotification";
      goto LABEL_47;
    }
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  sub_100008D04(v2, qword_1003FAA58);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v38, v39))
  {
    goto LABEL_48;
  }

  v40 = swift_slowAlloc();
  *v40 = 0;
  v41 = "No need to handle unknown APS notification";
LABEL_47:
  _os_log_impl(&_mh_execute_header, v38, v39, v41, v40, 2u);

LABEL_48:

LABEL_49:
  v42 = v51;
LABEL_50:
}

uint64_t sub_10030124C()
{

  sub_100008D3C(v0 + 24, &qword_1003DF6C8, qword_1003436E0);

  return swift_deallocClassInstance();
}

void sub_1003012C0(unint64_t a1, unint64_t a2)
{
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA58);
  sub_100015D6C(a1, a2);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100012324(a1, a2);
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    sub_100166018(a1, a2);
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    sub_10005A668();
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = v9;

    v11 = sub_10021145C(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Received APS Public Token: %s", v6, 0xCu);
    sub_10000839C(v7);
  }

  else
  {
  }
}

void sub_1003014A8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA70);
  sub_100015D6C(a1, a2);

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  sub_100012324(a1, a2);

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v14 = 136315650;
    sub_100166018(a1, a2);
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    sub_10005A668();
    v15 = BidirectionalCollection<>.joined(separator:)();
    v17 = v16;

    v18 = sub_10021145C(v15, v17, &v20);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_10021145C(a3, a4, &v20);
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_10021145C(a5, a6, &v20);
    _os_log_impl(&_mh_execute_header, oslog, v13, "Received APS Token: %s for topic: %s, identifier: %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10030171C(uint64_t a1, uint64_t a2)
{
  if (qword_1003D7F00 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v2 = qword_1003FAA30;
  if (!*(qword_1003FAA30 + 16))
  {
    return 0;
  }

  v3 = sub_1003084DC(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_1003017B8()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1003017F8()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100301838(uint64_t a1, unint64_t a2)
{
  _StringGuts.grow(_:)(55);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x8000000100334820;
  String.append(_:)(v4);
  if (a2 >> 60 == 15)
  {
    v5 = 0x65736C6166;
  }

  else
  {
    v5 = 1702195828;
  }

  if (a2 >> 60 == 15)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  sub_100052704(a1, a2);
  v7._countAndFlagsBits = v5;
  v7._object = v6;
  String.append(_:)(v7);

  v8._object = 0x8000000100334850;
  v8._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v8);
  sub_100005814(&qword_1003E8A08, &qword_10034A6B8);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  return 0;
}

uint64_t sub_100301968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v20 = a1;
  v21 = a2;
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v19 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&qword_1003E0400, &qword_100344870);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DF5E0, &unk_100343690);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v4 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer) = xmmword_10033F590;
  v18 = OBJC_IVAR____TtC13appleaccountd11DataCryptor_serialQueue;
  sub_100071C74();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100304FF8(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000D10EC(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v4 + v18) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = (v4 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keychainAccount);
  v13 = v21;
  *v12 = v20;
  v12[1] = v13;
  v14 = (v4 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keychainService);
  v15 = v23;
  *v14 = v22;
  v14[1] = v15;
  return v4;
}

uint64_t sub_100301CC8()
{
  v2 = v0;
  v3 = sub_100005814(&qword_1003E8A10, &qword_10034A6C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v47 - v5;
  isEscapingClosureAtFileLocation = (v2 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer);
  if (*(v2 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer + 8) >> 60 != 15)
  {
    v3 = *isEscapingClosureAtFileLocation;
    sub_100052704(*isEscapingClosureAtFileLocation, *(v2 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer + 8));
    if (qword_1003D7F20 == -1)
    {
LABEL_9:
      v13 = type metadata accessor for Logger();
      sub_100008D04(v13, qword_1003FAA40);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "File encryption key already retrieved from keychain.", v16, 2u);
      }

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock = v20;
        *v19 = 136315138;
        v21 = *isEscapingClosureAtFileLocation;
        v22 = isEscapingClosureAtFileLocation[1];
        if (v22 >> 60 == 15)
        {
          sub_100015D58(v21, v22);
          v23 = 0xE700000000000000;
          v24 = 0x3E7974706D653CLL;
        }

        else
        {
          v27 = *isEscapingClosureAtFileLocation;
          v48 = v3;
          v28 = v22;
          sub_100052704(v21, v22);
          v29 = sub_100166018(v27, v28);
          v47[1] = v1;
          v47[2] = v29;
          v55 = v29;
          sub_100005814(&qword_1003DA1E0, &qword_100345E50);
          sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50, &protocol conformance descriptor for [A]);
          v30 = BidirectionalCollection<>.joined(separator:)();
          v23 = v31;
          v32 = v28;
          v3 = v48;
          sub_100015D58(v27, v32);

          v24 = v30;
        }

        v33 = sub_10021145C(v24, v23, &aBlock);

        *(v19 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v17, v18, "Encryption key: %s", v19, 0xCu);
        sub_10000839C(v20);
      }

      return v3;
    }

LABEL_25:
    swift_once();
    goto LABEL_9;
  }

  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC13appleaccountd11DataCryptor__deviceInfoProvider, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v8 = sub_10031F0D4();
  sub_10000839C(&aBlock);
  if (v8 == 1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA40);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Cannot access the key before first unlock.", v12, 2u);
    }

    type metadata accessor for AAError(0);
    v55 = -4421;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100304FF8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return v3;
  }

  v25 = sub_100302488();
  if (v1)
  {
    return v3;
  }

  v35 = v26;
  if (v26 >> 60 != 15)
  {
    v42 = *(v2 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_serialQueue);
    v43 = v25;
    v44 = swift_allocObject();
    v44[2] = v2;
    v44[3] = v43;
    v44[4] = v35;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_100305048;
    *(v45 + 24) = v44;
    v53 = sub_1002ACED0;
    v54 = v45;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_10030F718;
    v52 = &unk_1003B4908;
    v46 = _Block_copy(&aBlock);

    sub_100052704(v43, v35);

    v3 = v43;

    dispatch_sync(v42, v46);
    _Block_release(v46);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v3;
    }

    __break(1u);
    goto LABEL_25;
  }

  v3 = sub_100302BC4();
  v37 = v36;
  v38 = *(v2 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_serialQueue);
  v39 = swift_allocObject();
  v39[2] = v2;
  v39[3] = v3;
  v39[4] = v37;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_100304F38;
  *(v40 + 24) = v39;
  v53 = sub_100071DCC;
  v54 = v40;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10030F718;
  v52 = &unk_1003B4890;
  v41 = _Block_copy(&aBlock);

  sub_100015D6C(v3, v37);

  dispatch_sync(v38, v41);
  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if ((v41 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100302488()
{
  v2 = v0;
  v3 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - v5;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Fetching file encryption key in keychain", v10, 2u);
  }

  v11 = [objc_allocWithZone(AAFKeychainItemDescriptor) init];
  v12 = String._bridgeToObjectiveC()();
  [v11 setAccount:v12];

  v13 = String._bridgeToObjectiveC()();
  [v11 setService:v13];

  [v11 setItemClass:1];
  [v11 setSynchronizable:1];
  [v11 setItemAccessible:5];
  [v11 setUseDataProtection:2];
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC13appleaccountd11DataCryptor__keychainManager, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  v14 = v47;
  v15 = v48;
  sub_1000080F8(v46, v47);
  v16 = (*(v15 + 16))(v11, v14, v15);
  if (!v1)
  {
    v21 = v16;
    sub_10000839C(v46);
    if (v21 && (v22 = [v21 value]) != 0)
    {
      v23 = v22;
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v14 = 0;
      v25 = 0xF000000000000000;
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Found a file encryption key in keychain", v32, 2u);
    }

    sub_100052704(v14, v25);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    sub_100015D58(v14, v25);
    if (os_log_type_enabled(v33, v34))
    {
      v42 = v21;
      v35 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v35 = 136315138;
      if (v25 >> 60 == 15)
      {
        v36 = 0xE700000000000000;
        v37 = 0x3E7974706D653CLL;
      }

      else
      {
        v40 = sub_100166018(v14, v25);
        v43 = v40;
        sub_100005814(&qword_1003DA1E0, &qword_100345E50);
        sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50, &protocol conformance descriptor for [A]);
        v37 = BidirectionalCollection<>.joined(separator:)();
        v36 = v38;
      }

      v39 = sub_10021145C(v37, v36, v46);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Encryption key: %s", v35, 0xCu);
      sub_10000839C(v41);
    }

    else
    {
    }

    return v14;
  }

  sub_10000839C(v46);
  swift_getErrorValue();
  result = dispatch thunk of Error._code.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    if (result == -25300)
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "File encryption key not found in keychain", v20, 2u);
      }

      return 0;
    }

    else
    {
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v14 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v14 = 138412290;
        swift_errorRetain();
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&_mh_execute_header, v26, v27, "Error occured when fetching file encryption key from keychain - %@", v14, 0xCu);
        sub_100083380(v28);
      }

      swift_getErrorValue();
      sub_100256A68(-4422, v44, v45);
      swift_willThrow();
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100302BC4()
{
  v1 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v65 = *(v1 - 8);
  v66 = v1;
  __chkstk_darwin(v1);
  v3 = &v58[-v2];
  v4 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58[-v6];
  v64 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventFileSystemNewFileEncryptionKeyCreated altDSID:0 flowID:0];
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_100008D04(v8, qword_1003FAA40);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating new file encryption key...", v12, 2u);
  }

  v14 = sub_10031DFA8(0x20uLL);
  v67 = v13;
  if (v0)
  {
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create file encryption key: %@", v29, 0xCu);
      sub_100083380(v30);
    }

    swift_getErrorValue();
    sub_100256A68(-4423, v73, v74);
    v32 = v64;
    if (v64)
    {
      v33 = v64;
      v34 = _convertErrorToNSError(_:)();
      [v33 updateTaskResultWithError:v34];
    }

    swift_willThrow();

    v36 = v65;
    v35 = v66;
    (*(v65 + 16))(v3, v68 + OBJC_IVAR____TtC13appleaccountd11DataCryptor__analyticsReporter, v66);
    Dependency.wrappedValue.getter();
    (*(v36 + 8))(v3, v35);
    swift_getObjectType();
    sub_100246FA8(v32);

    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v13;
    v62 = v9;
    v63 = v3;
    v16 = [objc_allocWithZone(AAFKeychainItemDescriptor) init];
    v17 = String._bridgeToObjectiveC()();
    [v16 setAccount:v17];

    v18 = String._bridgeToObjectiveC()();
    [v16 setService:v18];

    [v16 setItemClass:1];
    [v16 setSynchronizable:1];
    [v16 setItemAccessible:5];
    [v16 setUseDataProtection:2];
    v19 = objc_allocWithZone(AAFKeychainItem);
    v20 = v16;
    sub_100015D6C(v14, v15);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v22 = [v19 initWithDescriptor:v20 value:isa];

    sub_100012324(v14, v15);
    (*(v5 + 16))(v7, v68 + OBJC_IVAR____TtC13appleaccountd11DataCryptor__keychainManager, v4);
    Dependency.wrappedValue.getter();
    v23 = v4;
    v24 = v22;
    (*(v5 + 8))(v7, v23);
    v25 = v71;
    v26 = v72;
    sub_1000080F8(v70, v71);
    (*(v26 + 8))(v24, v25, v26);
    v61 = v20;
    sub_10000839C(v70);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "New encryption key successfully created and stored in keychain.", v40, 2u);
    }

    v41 = v67;
    sub_100015D6C(v14, v67);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    v44 = v41;
    sub_100012324(v14, v41);
    v45 = os_log_type_enabled(v42, v43);
    v46 = v63;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v60 = v47;
      v62 = swift_slowAlloc();
      v70[0] = v62;
      *v47 = 136315138;
      v69 = sub_100166018(v14, v44);
      v59 = v43;
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_1000D10EC(&qword_1003DA1E8, &qword_1003DA1E0, &qword_100345E50, &protocol conformance descriptor for [A]);
      v48 = BidirectionalCollection<>.joined(separator:)();
      v50 = v49;

      v51 = sub_10021145C(v48, v50, v70);

      v52 = v60;
      *(v60 + 1) = v51;
      _os_log_impl(&_mh_execute_header, v42, v59, "Encryption key: %s", v52, 0xCu);
      sub_10000839C(v62);
    }

    v53 = v61;
    v54 = v64;
    if (v64)
    {
      v55 = v64;
      [v55 updateTaskResultWithError:0];
    }

    v57 = v65;
    v56 = v66;
    (*(v65 + 16))(v46, v68 + OBJC_IVAR____TtC13appleaccountd11DataCryptor__analyticsReporter, v66);
    Dependency.wrappedValue.getter();
    (*(v57 + 8))(v46, v56);
    swift_getObjectType();
    sub_100246FA8(v54);

    swift_unknownObjectRelease();
  }

  return v14;
}

uint64_t sub_10030348C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v34 = a4;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAAE8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Encrypting data...", v11, 2u);
  }

  result = sub_100301CC8();
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v14 = result;
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Obtained encryption key", v18, 2u);
    }

    sub_100015D6C(v14, v15);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = Data.hashValue.getter();
      sub_100012324(v14, v15);
      _os_log_impl(&_mh_execute_header, v19, v20, "Encryption Key: %ld", v21, 0xCu);
    }

    else
    {
      sub_100012324(v14, v15);
    }

    Data.encrypt(using:)(v14, v15, a1, a2, v33);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Converted data to Encrypted Data object", v24, 2u);
    }

    sub_100304E00(v33, v32);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134218496;
      *(v27 + 4) = Data.hashValue.getter();
      *(v27 + 12) = 2048;
      *(v27 + 14) = Data.hashValue.getter();
      *(v27 + 22) = 2048;
      *(v27 + 24) = Data.hashValue.getter();
      sub_100304E5C(v33);
      _os_log_impl(&_mh_execute_header, v25, v26, "EncryptedData.cipherText: %ld, initializationVector: %ld, .tag: %ld", v27, 0x20u);
    }

    else
    {
      sub_100304E5C(v33);
    }

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v32[0] = v33[0];
    v32[1] = v33[1];
    v32[2] = v33[2];
    sub_100304EE0();
    v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v30 = v29;
    sub_100012324(v14, v15);

    result = sub_100304E5C(v33);
    v31 = v34;
    *v34 = v28;
    v31[1] = v30;
  }

  return result;
}

uint64_t sub_10030390C@<X0>(void *a3@<X3>, uint64_t *a4@<X8>)
{
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAE8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Decrypting data...", v10, 2u);
  }

  v11 = sub_100301CC8();
  if (v4)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    sub_100008D04(v7, qword_1003FAA40);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v39[0] = v30;
      *v29 = 136315138;
      v41 = v4;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v31 = String.init<A>(describing:)();
      v33 = sub_10021145C(v31, v32, v39);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Error decoding EncryptedData: %s", v29, 0xCu);
      sub_10000839C(v30);
    }

    result = swift_willThrow();
    *a3 = v4;
  }

  else
  {
    v13 = v11;
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v38 = a4;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Obtained encryption key", v17, 2u);
    }

    sub_100015D6C(v13, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = Data.hashValue.getter();
      sub_100012324(v13, v14);
      _os_log_impl(&_mh_execute_header, v18, v19, "Encryption Key: %ld", v20, 0xCu);
    }

    else
    {
      sub_100012324(v13, v14);
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100304DAC();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v40[0] = v39[0];
    v40[1] = v39[1];
    v40[2] = v39[2];
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Converted data to Encrypted Data object", v23, 2u);
    }

    sub_100304E00(v40, v39);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218496;
      *(v26 + 4) = Data.hashValue.getter();
      *(v26 + 12) = 2048;
      *(v26 + 14) = Data.hashValue.getter();
      *(v26 + 22) = 2048;
      *(v26 + 24) = Data.hashValue.getter();
      sub_100304E5C(v40);
      _os_log_impl(&_mh_execute_header, v24, v25, "EncryptedData.cipherText: %ld, initializationVector: %ld, tag: %ld", v26, 0x20u);
    }

    else
    {
      sub_100304E5C(v40);
    }

    v34 = EncryptedData.decrypt(using:)(v13, v14);
    v36 = v35;
    sub_100304E5C(v40);
    result = sub_100012324(v13, v14);
    *v38 = v34;
    v38[1] = v36;
  }

  return result;
}

void sub_100303ECC()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E8A10, &qword_10034A6C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - v4;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA40);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Deleting encryption key...", v9, 2u);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v12 = 136315138;
      v13 = [objc_opt_self() callStackSymbols];
      v33 = v1;
      v14 = v13;
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = Array.description.getter();
      v17 = v16;

      v18 = v15;
      v1 = v33;
      v19 = sub_10021145C(v18, v17, v34);

      *(v12 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Deleting encryption key call stack: %s", v12, 0xCu);
      sub_10000839C(v32);
    }
  }

  v20 = (v1 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer);
  if (*(&v1[1].isa + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer) >> 60 == 15)
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd11DataCryptor__deviceInfoProvider, v2);
    Dependency.wrappedValue.getter();
    (*(v3 + 8))(v5, v2);
    v21 = sub_10031F0D4();
    sub_10000839C(v34);
    if (v21 == 1)
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Cannot access the key before first unlock.", v24, 2u);
      }

      v25 = *v20;
      v26 = v20[1];
      *v20 = xmmword_10033F590;
      sub_100015D58(v25, v26);
    }

    else
    {
      v30 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventFileSystemFileEncryptionKeyDeleted altDSID:0 flowID:0];
      v31 = objc_autoreleasePoolPush();
      sub_10030439C(v1, v30);
      objc_autoreleasePoolPop(v31);
    }
  }

  else
  {
    v33 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v33, v27, "Doesn't have encryption key so returning.", v28, 2u);
    }

    v29 = v33;
  }
}

uint64_t sub_10030439C(uint64_t a1, void *a2)
{
  v41 = a2;
  v3 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = v38 - v4;
  v6 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v38 - v8;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA40);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Deleting AAD Encryption key.", v13, 2u);
  }

  v14 = [objc_allocWithZone(AAFKeychainItemDescriptor) init];
  v15 = String._bridgeToObjectiveC()();
  [v14 setAccount:v15];

  v16 = String._bridgeToObjectiveC()();
  [v14 setService:v16];

  [v14 setItemClass:1];
  [v14 setSynchronizable:1];
  [v14 setItemAccessible:5];
  [v14 setUseDataProtection:2];
  (*(v7 + 16))(v9, a1 + OBJC_IVAR____TtC13appleaccountd11DataCryptor__keychainManager, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  v17 = v43;
  v18 = v44;
  sub_1000080F8(v42, v43);
  v19 = v38[1];
  (*(v18 + 24))(v14, v17, v18);
  if (v19)
  {

    sub_10000839C(v42);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v42[0] = v23;
      *v22 = 136315138;
      v45 = v19;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v24 = String.init<A>(describing:)();
      v26 = sub_10021145C(v24, v25, v42);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "AAD Encryption key could not be deleted. Error - %s", v22, 0xCu);
      sub_10000839C(v23);
    }

    v27 = v41;
    if (v41)
    {
      v28 = _convertErrorToNSError(_:)();
      [v27 updateTaskResultWithError:v28];
    }

    else
    {
    }
  }

  else
  {
    sub_10000839C(v42);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v27 = v41;
    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Encryption key deleted from keychain successfully.", v32, 2u);
    }

    if (v27)
    {
      [v27 updateTaskResultWithError:0];
    }
  }

  v33 = *(a1 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer);
  v34 = *(a1 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer + 8);
  *(a1 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer) = xmmword_10033F590;
  sub_100015D58(v33, v34);
  v36 = v39;
  v35 = v40;
  (*(v39 + 16))(v5, a1 + OBJC_IVAR____TtC13appleaccountd11DataCryptor__analyticsReporter, v40);
  Dependency.wrappedValue.getter();
  (*(v36 + 8))(v5, v35);
  swift_getObjectType();
  sub_100246FA8(v27);
  return swift_unknownObjectRelease();
}

uint64_t sub_10030497C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd11DataCryptor__keychainManager;
  v2 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd11DataCryptor__deviceInfoProvider;
  v4 = sub_100005814(&qword_1003E8A10, &qword_10034A6C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd11DataCryptor__analyticsReporter;
  v6 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  sub_100015D58(*(v0 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer), *(v0 + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataCryptor(uint64_t a1)
{
  result = qword_1003E8850;
  if (!qword_1003E8850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100304B5C(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003E1350, &qword_1003E0400, &qword_100344870);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003E8860, &unk_1003DF5E0, &unk_100343690);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100304CCC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100304CF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100304D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_100304DAC()
{
  result = qword_1003E89F8;
  if (!qword_1003E89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E89F8);
  }

  return result;
}

uint64_t sub_100304EB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_100304EE0()
{
  result = qword_1003E8A00;
  if (!qword_1003E8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E8A00);
  }

  return result;
}

uint64_t sub_100304F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100304F64()
{

  sub_100012324(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100304FA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC13appleaccountd11DataCryptor_keyContainer);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_100015D6C(v1, v2);

  return sub_100015D58(v4, v5);
}

uint64_t sub_100304FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100305054()
{
  sub_100005814(&unk_1003E8AB0, &unk_10034A760);
  inited = swift_initStackObject();
  *(inited + 32) = NSFilePosixPermissions;
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 508;
  v1 = NSFilePosixPermissions;
  v2 = sub_100309B04(inited);
  swift_setDeallocating();
  result = sub_100008D3C(inited + 32, &qword_1003E8C90, qword_10034A8D0);
  static NSFileManager.daemonAgentDirectoryAttributes = v2;
  return result;
}

uint64_t *NSFileManager.daemonAgentDirectoryAttributes.unsafeMutableAddressor()
{
  if (qword_1003D7F08 != -1)
  {
    swift_once();
  }

  return &static NSFileManager.daemonAgentDirectoryAttributes;
}

uint64_t static NSFileManager.daemonAgentDirectoryAttributes.getter()
{
  if (qword_1003D7F08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static NSFileManager.daemonAgentDirectoryAttributes.setter(uint64_t a1)
{
  if (qword_1003D7F08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static NSFileManager.daemonAgentDirectoryAttributes = a1;
}

uint64_t (*static NSFileManager.daemonAgentDirectoryAttributes.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1003D7F08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id static NSFileManager.removeDirectory(url:)()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v15 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v15];

  if (v4)
  {
    return v15;
  }

  v6 = v15;
  v7 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v15 = v7;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  sub_1000EBAD0();
  if (!swift_dynamicCast())
  {
  }

  v8 = [v14 domain];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v12 == v11)
  {

    goto LABEL_8;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_8:
    if ([v14 code] == 4)
    {
    }
  }

  swift_willThrow();
}

void static NSFileManager.emptyDirectory(url:)(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for NSFastEnumerationIterator();
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v30 = [v11 defaultManager];
  v12 = [v11 defaultManager];
  v13 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (v13)
  {
    v27 = v13;
    v28 = v8;
    NSEnumerator.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (v32)
    {
      v14 = (v2 + 56);
      v15 = (v2 + 32);
      v16 = (v2 + 8);
      do
      {
        v17 = swift_dynamicCast();
        v18 = *v14;
        if (v17)
        {
          v18(v7, 0, 1, v1);
          (*v15)(v4, v7, v1);
          URL._bridgeToObjectiveC()(v19);
          v21 = v20;
          (*v16)(v4, v1);
          v31 = 0;
          v22 = [v30 removeItemAtURL:v21 error:&v31];

          if (v22)
          {
            v23 = v31;
          }

          else
          {
            v24 = v31;
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }
        }

        else
        {
          v18(v7, 1, 1, v1);
          sub_100008D3C(v7, &qword_1003E7500, &qword_10033EC30);
        }

        NSFastEnumerationIterator.next()();
      }

      while (v32);
    }

    (*(v29 + 8))(v10, v28);
  }

  else
  {
    v25 = v30;
  }
}

void *static NSFileManager.shallowContents(of:)(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for NSFastEnumerationIterator();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();

  v13 = [v12 defaultManager];
  v14 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v30 = v9;
  v31 = v8;
  v29 = v14;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v32)
  {
    v27 = v2;
    v28 = (v2 + 32);
    v15 = _swiftEmptyArrayStorage;
    do
    {
      v16 = swift_dynamicCast();
      v17 = *(v2 + 56);
      if (v16)
      {
        v17(v7, 0, 1, v1);
        v18 = *v28;
        (*v28)(v4, v7, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v18;
        v26 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_100306B88(0, v15[2] + 1, 1, v15, &qword_1003E44A8, &qword_100347878, &type metadata accessor for URL);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_100306B88((v20 > 1), v21 + 1, 1, v15, &qword_1003E44A8, &qword_100347878, &type metadata accessor for URL);
        }

        v15[2] = v21 + 1;
        v22 = v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
        v4 = v26;
        v25(v22, v26, v1);
      }

      else
      {
        v17(v7, 1, 1, v1);
        sub_100008D3C(v7, &qword_1003E7500, &qword_10033EC30);
      }

      NSFastEnumerationIterator.next()();
    }

    while (v32);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  (*(v30 + 8))(v11, v31);

  return v15;
}

uint64_t sub_100305CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() defaultManager];
  v4 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  return v4;
}

void *sub_100305DC4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100005814(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005814(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100305F30(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003E3908, &qword_100346C60);
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

char *sub_100306104(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003DA128, &unk_10033F280);
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

void *sub_1003062A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005814(&qword_1003E8250, &qword_10034A0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003063DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003E8A90, &qword_10034A740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100306558(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003E8220, &qword_10034A088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100306680(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&qword_1003E8A18, &qword_10034A6C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003067A0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005814(&qword_1003E8A20, &qword_10034A6D0);
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
    sub_100005814(&qword_1003E8A28, &qword_10034A6D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10030690C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100005814(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005814(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100306A40(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005814(&qword_1003E8A30, &qword_10034A6E0);
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
    sub_100005814(&qword_1003E8A38, &qword_10034A6E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100306B88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005814(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_100306D64(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100005814(&qword_1003E3908, &qword_100346C60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100306DE8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100005814(&qword_1003E8250, &qword_10034A0B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t _sSo13NSFileManagerC13appleaccountdE26createDirectoryIfNecessary3url10attributesSb10Foundation3URLV_SDySo0A12AttributeKeyaypGSgtFZ_0(uint64_t a1, Class isa)
{
  v3 = [objc_opt_self() defaultManager];
  v14 = 0;
  URL.path.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v14];

  if (!v5)
  {
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    if (isa)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_100306FE8();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v13 = 0;
    v9 = [v3 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:isa error:&v13];

    if (!v9)
    {
      v11 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      return v5 ^ 1;
    }

    v10 = v13;
  }

  return v5 ^ 1;
}

unint64_t sub_100306FE8()
{
  result = qword_1003D8410;
  if (!qword_1003D8410)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8410);
  }

  return result;
}

id sub_100307090(uint64_t a1)
{
  v4 = 0;
  v2 = [v1 keychainItemForDescriptor:a1 error:&v4];
  if (v4)
  {
    v4;

    swift_willThrow();
  }

  return v2;
}

id sub_10030715C(uint64_t a1, SEL *a2)
{
  v5 = 0;
  result = [v2 *a2];
  v4 = v5;
  if (v5)
  {
    swift_willThrow();
    return v4;
  }

  return result;
}

uint64_t sub_100307204(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_100309D30(v2, *(a1 + 36), 0, a1);
  swift_errorRetain();
  return v4;
}

uint64_t sub_100307274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v52 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100008D04(v14, qword_1003FAAE8);
  v46 = *(v9 + 16);
  v47 = v9 + 16;
  v46(v13, a1, v8);
  v43 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v44 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v45 = a3;
    v42 = v20;
    aBlock[0] = v20;
    *v19 = 136315138;
    sub_10030B4D8(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v9 + 8))(v13, v8);
    v24 = sub_10021145C(v21, v23, aBlock);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Local Cache: Delete called for record URL: %s", v19, 0xCu);
    sub_10000839C(v42);
    a3 = v45;

    a1 = v44;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = a1;
      aBlock[0] = v43;
      *v27 = 136315138;
      v28 = [objc_opt_self() callStackSymbols];
      v45 = a3;
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = Array.description.getter();
      v31 = v30;

      v32 = sub_10021145C(v29, v31, aBlock);
      a3 = v45;

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Local Cache: Delete call stack: %s", v27, 0xCu);
      sub_10000839C(v43);
      a1 = v44;
    }
  }

  v33 = v48;
  v46(v48, a1, v8);
  v34 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v35 = swift_allocObject();
  (*(v9 + 32))(v35 + v34, v33, v8);
  v36 = (v35 + ((v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v36 = v49;
  v36[1] = a3;
  aBlock[4] = sub_10030B5C0;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B49B8;
  v37 = _Block_copy(aBlock);

  v38 = v50;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_10030B4D8(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v39 = v52;
  v40 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v54 + 8))(v39, v40);
  (*(v51 + 8))(v38, v53);
}

uint64_t sub_100307994(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, void))
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v13 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v46 = 0;
  v17 = [v13 removeItemAtURL:v15 error:&v46];

  if (v17)
  {
    v45 = a2;
    v18 = qword_1003D7F58;
    v19 = v46;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAE8);
    (*(v7 + 16))(v12, a1, v6);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136315138;
      sub_10030B4D8(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v7 + 8))(v12, v6);
      v28 = sub_10021145C(v25, v27, &v46);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Local Cache: File deleted successfully - %s", v23, 0xCu);
      sub_10000839C(v24);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    return v45(1, 0);
  }

  else
  {
    v45 = a3;
    v29 = v46;
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAE8);
    (*(v7 + 16))(v10, a1, v6);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v34 = 136315394;
      sub_10030B4D8(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = a2;
      v38 = v37;
      (*(v7 + 8))(v10, v6);
      v39 = sub_10021145C(v35, v38, &v46);
      a2 = v36;

      *(v34 + 4) = v39;
      *(v34 + 12) = 2112;
      v40 = _convertErrorToNSError(_:)();
      *(v34 + 14) = v40;
      v41 = v43;
      *v43 = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "Local Cache: Error deleting record at %s - %@", v34, 0x16u);
      sub_100083380(v41);

      sub_10000839C(v44);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    swift_errorRetain();
    a2(v30, 1);
  }
}

uint64_t sub_100307F40()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 URLsForDirectory:5 inDomains:1];

  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v9 + 16))
  {
    (*(v1 + 16))(v4, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v6, v4, v0);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v1 + 8))(v6, v0);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10030816C()
{

  return swift_deallocClassInstance();
}

void *sub_1003081E0()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v1 - 8);
  v9 = v1;
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v0[2] = JSONEncoder.init()();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v0[3] = JSONDecoder.init()();
  v7 = sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  sub_10030B4D8(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for DataCryptor(0);
  swift_allocObject();
  v0[5] = sub_100301968(0xD000000000000017, 0x800000010032F3E0, 0x614364726F636572, 0xEB00000000656863);
  return v0;
}

unint64_t sub_1003084DC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100308554(a1, a2, v4);
}

unint64_t sub_100308554(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10030860C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_10030866C(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E8C38, &qword_10034A868);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005814(&unk_1003E7760, &unk_10034A870);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D04(v9, v5, &qword_1003E8C38, &qword_10034A868);
      result = sub_10031AF8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 32 * v13;
      v17 = *(v8 + 2);
      v18 = *(v8 + 3);
      *v16 = *v8;
      *(v16 + 16) = v17;
      *(v16 + 24) = v18;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100308864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E7790, &qword_100349930);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1003084DC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100308978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E3460, qword_1003469E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012D04(v4, &v13, &qword_1003DB0B0, &unk_10033E710);
      v5 = v13;
      v6 = v14;
      result = sub_1003084DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100070AF0(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100308AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&unk_1003E7770, &unk_100349910);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_errorRetain();
      result = sub_1003084DC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100308BAC(uint64_t a1)
{
  v2 = sub_100005814(&unk_1003E8C78, &unk_10034A8B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005814(&qword_1003E77D0, qword_100349980);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D04(v9, v5, &unk_1003E8C78, &unk_10034A8B8);
      result = sub_10031AF8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for CustodianRecoveryInfoRecord(0);
      result = sub_10030B668(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100308DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&unk_1003DBB70, &unk_100349970);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003084DC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100308EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E8C20, &qword_10034A850);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012D04(v4, v13, &qword_1003DBB58, &qword_10033FC20);
      result = sub_10031B060(v13);
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
      result = sub_100070AF0(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100308FEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E8C70, &qword_10034A8B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1003084DC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003090E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E8C28, &qword_10034A858);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_10031B728();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003091E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E7758, &unk_100349900);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10031B728();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003092D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E8C30, &qword_10034A860);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_10031B728();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1003093E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E8C68, &qword_10034A8A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = *i;

      v7 = v14;

      result = sub_1003084DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 16 * result) = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10030950C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E7780, &qword_100349920);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100015D6C(v7, v8);
      result = sub_1003084DC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100309624(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E8C58, &qword_10034A898);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005814(&qword_1003E8C60, &qword_10034A8A0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D04(v9, v5, &qword_1003E8C58, &qword_10034A898);
      result = sub_10031AF8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100309820(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100005814(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1003084DC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10030991C(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003E44B8, &qword_100347888);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100005814(&unk_1003E8C40, &unk_10034A880);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012D04(v9, v5, &qword_1003E44B8, &qword_100347888);
      result = sub_10031B0A4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for URL();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100309B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E8C88, &qword_10034A8C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012D04(v4, &v11, &qword_1003E8C90, qword_10034A8D0);
      v5 = v11;
      result = sub_10031B728();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100070AF0(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100309C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&unk_1003E77B0, &unk_100349950);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1003084DC(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100309D30(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100309D80(void (*a1)(uint64_t), uint64_t a2)
{
  v76 = a2;
  v81 = a1;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v74 - v8;
  __chkstk_darwin(v7);
  v11 = &v74 - v10;
  v82 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v79 = *(v82 - 8);
  __chkstk_darwin(v82);
  v13 = &v74 - v12;
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  v78 = v13;
  Dependency.init(dependencyId:config:)();
  v14 = [objc_opt_self() analyticsEventWithName:kAAAnalyticsEventFileSystemPurgeLocalDisk altDSID:0 flowID:0];
  if (qword_1003D7F58 != -1)
  {
    v73 = v14;
    swift_once();
    v14 = v73;
  }

  v77 = v14;
  v15 = type metadata accessor for Logger();
  v80 = sub_100008D04(v15, qword_1003FAAE8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Local Cache: Purging storage container", v18, 2u);
  }

  if ([objc_opt_self() isInternalBuild])
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v83 = v22;
      *v21 = 136315138;
      v23 = [objc_opt_self() callStackSymbols];
      v74 = v3;
      v75 = v2;
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = Array.description.getter();
      v26 = v25;

      v27 = sub_10021145C(v24, v26, &v83);
      v3 = v74;
      v2 = v75;

      *(v21 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v19, v20, "Local Cache: Purge call stack %s", v21, 0xCu);
      sub_10000839C(v22);
    }
  }

  type metadata accessor for LocalCache();
  sub_100307F40();
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  URL.path.getter();
  v30 = String._bridgeToObjectiveC()();

  v31 = [v29 fileExistsAtPath:v30];

  if (!v31)
  {
    (*(v3 + 16))(v6, v11, v2);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v83 = v52;
      *v51 = 136315138;
      sub_10030B4D8(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v56 = *(v3 + 8);
      v56(v6, v2);
      v57 = sub_10021145C(v53, v55, &v83);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Local Cache: Container directory doesn't exist: %s", v51, 0xCu);
      sub_10000839C(v52);

      v56(v11, v2);
      goto LABEL_22;
    }

    v69 = *(v3 + 8);
    v69(v6, v2);
LABEL_21:
    v69(v11, v2);
LABEL_22:
    v60 = 0;
    v64 = v77;
    v68 = v78;
    if (!v77)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v32 = [v28 defaultManager];
  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  v83 = 0;
  v36 = [v32 removeItemAtURL:v34 error:&v83];

  v37 = v83;
  if (v36)
  {
    (*(v3 + 16))(v9, v11, v2);
    v38 = v37;
    v39 = v9;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v83 = v43;
      *v42 = 136315138;
      sub_10030B4D8(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v75 = v2;
      v47 = *(v3 + 8);
      v47(v39, v2);
      v48 = sub_10021145C(v44, v46, &v83);

      *(v42 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "Local Cache: Storage container removed: %s", v42, 0xCu);
      sub_10000839C(v43);

      v47(v11, v75);
      goto LABEL_22;
    }

    v69 = *(v3 + 8);
    v69(v39, v2);
    goto LABEL_21;
  }

  v58 = v83;
  v59 = v2;
  v60 = _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v3 + 8))(v11, v59);
  swift_errorRetain();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();

  v63 = os_log_type_enabled(v61, v62);
  v64 = v77;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v65 = 138412290;
    v67 = _convertErrorToNSError(_:)();
    *(v65 + 4) = v67;
    *v66 = v67;
    _os_log_impl(&_mh_execute_header, v61, v62, "Local Cache: Error removing the storage container: %@", v65, 0xCu);
    sub_100083380(v66);
  }

  v68 = v78;
  if (v64)
  {
LABEL_23:
    v70 = v64;
    if (v60)
    {
      v71 = _convertErrorToNSError(_:)();
    }

    else
    {
      v71 = 0;
    }

    [v64 updateTaskResultWithError:v71];
  }

LABEL_27:
  Dependency.wrappedValue.getter();
  swift_getObjectType();
  sub_100246FA8(v64);
  swift_unknownObjectRelease();
  if (v81)
  {
    v81(v60);

    return (*(v79 + 8))(v68, v82);
  }

  else
  {
    (*(v79 + 8))(v68, v82);
  }
}

void sub_10030A77C(uint64_t a1, void *a2, void (*a3)(char *, uint64_t), uint64_t a4, int a5)
{
  v75 = a2;
  v73 = a4;
  v74 = a1;
  v7 = type metadata accessor for URLResourceValues();
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v69 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v70 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v68 = &v63 - v14;
  v15 = __chkstk_darwin(v13);
  v67 = &v63 - v16;
  __chkstk_darwin(v15);
  v18 = &v63 - v17;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100008D04(v19, qword_1003FAAE8);
  v21 = v10 + 16;
  v77 = *(v10 + 16);
  v77(v18, a3, v9);
  v72 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v78 = v10;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v71 = a5;
    v26 = v25;
    v63 = swift_slowAlloc();
    v64 = a3;
    v79 = v63;
    *v26 = 136315138;
    sub_10030B4D8(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v10 + 16;
    v29 = v9;
    v31 = v30;
    v32 = *(v10 + 8);
    v32(v18, v29);
    v33 = sub_10021145C(v27, v31, &v79);
    v9 = v29;
    v21 = v28;

    *(v26 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Local Cache: Saving record at path: %s", v26, 0xCu);
    sub_10000839C(v63);
    a3 = v64;

    a5 = v71;
  }

  else
  {

    v32 = *(v10 + 8);
    v32(v18, v9);
  }

  v34 = v76;
  Data.write(to:options:)();
  if (v34)
  {
    v35 = v70;
    v77(v70, a3, v9);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v64 = v32;
      v40 = v39;
      v41 = swift_slowAlloc();
      v79 = v41;
      *v38 = 136315394;
      sub_10030B4D8(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v9;
      v45 = v44;
      v64(v35, v43);
      v46 = sub_10021145C(v42, v45, &v79);

      *(v38 + 4) = v46;
      *(v38 + 12) = 2112;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v47;
      *v40 = v47;
      _os_log_impl(&_mh_execute_header, v36, v37, "Local Cache: Error saving record at path: %s - %@", v38, 0x16u);
      sub_100083380(v40);

      sub_10000839C(v41);
    }

    else
    {

      v32(v35, v9);
    }

    swift_willThrow();
  }

  else
  {
    v71 = a5;
    v48 = v67;
    v76 = v21;
    v77(v67, a3, v9);
    v49 = v9;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v52 = os_log_type_enabled(v50, v51);
    v64 = v32;
    if (v52)
    {
      v53 = v32;
      v54 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79 = v75;
      *v54 = 136315138;
      sub_10030B4D8(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v48;
      v57 = a3;
      v59 = v58;
      v53(v56, v49);
      v60 = sub_10021145C(v55, v59, &v79);
      a3 = v57;

      *(v54 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v50, v51, "Local Cache: Successfully saved record at path: %s", v54, 0xCu);
      sub_10000839C(v75);
    }

    else
    {

      v32(v48, v49);
    }

    v62 = v68;
    v61 = v69;
    if ((v71 & 1) == 0)
    {
      URLResourceValues.init()();
      URLResourceValues.isExcludedFromBackup.setter();
      v77(v62, a3, v49);
      URL.setResourceValues(_:)();
      v64(v62, v49);
      (*(v65 + 8))(v61, v66);
    }
  }
}

void sub_10030AF38(void *a1)
{
  v2 = type metadata accessor for CryptoKitError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAE8);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Local Cache: Handling fetch record failure: %@", v9, 0xCu);
    sub_100083380(v10);
  }

  v30 = a1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  if (swift_dynamicCast())
  {
LABEL_8:
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Local Cache: Error was of type CryptoError, wiping local records", v14, 2u);
    }

    sub_100309D80(0, 0);
    v15 = objc_allocWithZone(type metadata accessor for CustodianMigrationAnalyticsEvent(0));
    sub_100309C2C(_swiftEmptyArrayStorage);
    v16 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v17 = _convertErrorToNSError(_:)();
    if (AAUnderTest.getter())
    {
      goto LABEL_22;
    }

    v30 = v17;
    sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
    type metadata accessor for CKError(0);
    v17 = v17;
    if (swift_dynamicCast())
    {
      v18 = v29;
      v19 = related decl 'e' for CKErrorCode.partialErrorsByItemID.getter();
      if (v19)
      {
        v20 = sub_100307204(v19);

        if (v20)
        {
          swift_getErrorValue();
          sub_1002DEA80(v26[1], v26[2]);

          goto LABEL_19;
        }
      }
    }

    v30 = v17;
    sub_1000CB64C();
    v18 = v17;
    if (!_getErrorEmbeddedNSError<A>(_:)())
    {
      swift_allocError();
      *v23 = v18;
      goto LABEL_21;
    }

LABEL_19:

LABEL_21:
    swift_getErrorValue();
    sub_10025648C(v27, v28);
    v24 = _convertErrorToNSError(_:)();

    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000010032DFF0;
    *(inited + 48) = Int._bridgeToObjectiveC()();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x800000010032E010;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_100309820(inited, &unk_1003E77B0, &unk_100349950);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();

LABEL_22:

    goto LABEL_23;
  }

  v30 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    (*(v3 + 8))(v5, v2);
    goto LABEL_8;
  }

  v16 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v16, v21, "Local Cache: This is NOT a CryptoError, no further action needed", v22, 2u);
  }

LABEL_23:
}

uint64_t sub_10030B4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10030B520()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_10030B5C0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_100307994(v0 + v2, v4, v5);
}

uint64_t sub_10030B650(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10030B668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030B6D0(uint64_t a1)
{
  v2 = type metadata accessor for CloudShareInfo(0);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005814(&unk_1003E1070, &unk_100344CE0);
  __chkstk_darwin(v5);
  v7 = (v9 - v6);
  sub_100012D04(a1, v9 - v6, &unk_1003E1070, &unk_100344CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_100005814(&unk_1003DEBD0, &qword_1003432B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10030EBC8(v7, v4, type metadata accessor for CloudShareInfo);
    sub_100005814(&unk_1003DEBD0, &qword_1003432B0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10030B848(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  __chkstk_darwin(v6);
  v8 = (v10 - v7);
  sub_100012D04(a1, v10 - v7, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    sub_100005814(&qword_1003E3628, qword_10034A980);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_100005814(&qword_1003E3628, qword_10034A980);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10030B9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v64 = a5;
  v65 = a4;
  v62 = a3;
  v63 = a2;
  v8 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v56 = &v54 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for CustodianRecord(0);
  v57 = *(v61 - 8);
  v14 = *(v57 + 64);
  v15 = __chkstk_darwin(v61);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v67 = &v54 - v17;
  __chkstk_darwin(v16);
  v19 = &v54 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  if (qword_1003D7F58 != -1)
  {
    v53 = v20;
    swift_once();
    v20 = v53;
  }

  v66 = v20;
  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAE8);
  sub_10030EAFC(a1, v19, type metadata accessor for CustodianRecord);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v54 = a6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v55 = a1;
    v68[0] = v26;
    *v25 = 136315394;
    (*(v11 + 16))(v13, v19, v10);
    sub_10030EB64(v19, type metadata accessor for CustodianRecord);
    sub_10030EC34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v11 + 8))(v13, v10);
    v30 = sub_10021145C(v27, v29, v68);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v68);
    _os_log_impl(&_mh_execute_header, v22, v23, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v25, 0x16u);
    swift_arrayDestroy();
    a1 = v55;

    a6 = v54;
  }

  else
  {
    sub_10030EB64(v19, type metadata accessor for CustodianRecord);
  }

  v32 = v59;
  v31 = v60;
  v33 = v64;
  v34 = v56;
  (*(v59 + 16))(v56, v64 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v60);
  Dependency.wrappedValue.getter();
  (*(v32 + 8))(v34, v31);
  sub_1000080F8(v68, v68[3]);
  sub_1000A04D8(a1, a6, v67);
  v35 = v58;
  sub_10030EAFC(a1, v58, type metadata accessor for CustodianRecord);
  v36 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v37 = (v14 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_10030EBC8(v35, v40 + v36, type metadata accessor for CustodianRecord);
  *(v40 + v37) = v33;
  v41 = (v40 + v38);
  v42 = v65;
  v43 = v66;
  *v41 = v62;
  v41[1] = v42;
  *(v40 + v39) = v63;
  v44 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v44 = sub_10030EC7C;
  v44[1] = v43;
  v45 = qword_1003D7EB0;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = v67;
  if (*(v67 + *(v61 + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9C0;
  }

  v48 = *v47;
  v49 = v47[1];

  v50 = sub_1002E2BC4(v48, v49);

  v51 = [v50 privateCloudDatabase];

  sub_100174A80(v46, v51, sub_10030ED5C, v40);

  sub_10030EB64(v46, type metadata accessor for CustodianRecord);
  sub_10000839C(v68);
}

uint64_t sub_10030C118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v64 = a5;
  v65 = a4;
  v62 = a3;
  v63 = a2;
  v8 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v56 = &v54 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for CustodianRecord(0);
  v57 = *(v61 - 8);
  v14 = *(v57 + 64);
  v15 = __chkstk_darwin(v61);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v67 = &v54 - v17;
  __chkstk_darwin(v16);
  v19 = &v54 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  if (qword_1003D7F58 != -1)
  {
    v53 = v20;
    swift_once();
    v20 = v53;
  }

  v66 = v20;
  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAAE8);
  sub_10030EAFC(a1, v19, type metadata accessor for CustodianRecord);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v54 = a6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v55 = a1;
    v68[0] = v26;
    *v25 = 136315394;
    (*(v11 + 16))(v13, v19, v10);
    sub_10030EB64(v19, type metadata accessor for CustodianRecord);
    sub_10030EC34(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v11 + 8))(v13, v10);
    v30 = sub_10021145C(v27, v29, v68);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, v68);
    _os_log_impl(&_mh_execute_header, v22, v23, "Storage Controller: Saving record with modify block recordID: %s, type: %s...", v25, 0x16u);
    swift_arrayDestroy();
    a1 = v55;

    a6 = v54;
  }

  else
  {
    sub_10030EB64(v19, type metadata accessor for CustodianRecord);
  }

  v32 = v59;
  v31 = v60;
  v33 = v64;
  v34 = v56;
  (*(v59 + 16))(v56, v64 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v60);
  Dependency.wrappedValue.getter();
  (*(v32 + 8))(v34, v31);
  sub_1000080F8(v68, v68[3]);
  sub_1000B37DC(a1, a6, v67);
  v35 = v58;
  sub_10030EAFC(a1, v58, type metadata accessor for CustodianRecord);
  v36 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v37 = (v14 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_10030EBC8(v35, v40 + v36, type metadata accessor for CustodianRecord);
  *(v40 + v37) = v33;
  v41 = (v40 + v38);
  v42 = v65;
  v43 = v66;
  *v41 = v62;
  v41[1] = v42;
  *(v40 + v39) = v63;
  v44 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v44 = sub_10030EAF4;
  v44[1] = v43;
  v45 = qword_1003D7EB0;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = v67;
  if (*(v67 + *(v61 + 48)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v47 = &qword_1003FA9C0;
  }

  v48 = *v47;
  v49 = v47[1];

  v50 = sub_1002E2BC4(v48, v49);

  v51 = [v50 privateCloudDatabase];

  sub_100174A80(v46, v51, sub_10030EC30, v40);

  sub_10030EB64(v46, type metadata accessor for CustodianRecord);
  sub_10000839C(v68);
}

uint64_t sub_10030C838(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-1] - v8;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAE8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Storage Controller: Purging records...", v13, 2u);
  }

  (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v9, v6);
  sub_100309D80(a1, a2);
  return sub_10000839C(v16);
}

uint64_t sub_10030CA20(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for CloudShareInfo(0);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10030CB2C, 0, 0);
}

uint64_t sub_10030CB2C()
{
  v34 = v0;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 160);
  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAE8);
  sub_10030EAFC(v3, v1, type metadata accessor for CloudShareInfo);
  sub_10030EAFC(v3, v2, type metadata accessor for CloudShareInfo);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  if (v7)
  {
    v32 = *(v0 + 208);
    v10 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v10 = 136315394;
    type metadata accessor for URL();
    sub_10030EC34(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10030EB64(v8, type metadata accessor for CloudShareInfo);
    v14 = sub_10021145C(v11, v13, v33);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = *(v9 + *(v32 + 24));
    *(v0 + 152) = v15;
    v16 = v15;
    sub_100005814(&qword_1003DEBC0, &unk_100343298);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    sub_10030EB64(v9, type metadata accessor for CloudShareInfo);
    v20 = sub_10021145C(v17, v19, v33);

    *(v10 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Storage Controller: Accepting share with url: %s and token: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10030EB64(v9, type metadata accessor for CloudShareInfo);
    sub_10030EB64(v8, type metadata accessor for CloudShareInfo);
  }

  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  v23 = *(v0 + 184);
  (*(v22 + 16))(v21, *(v0 + 176) + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v23);
  Dependency.wrappedValue.getter();
  (*(v22 + 8))(v21, v23);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  if (swift_dynamicCast())
  {
    sub_10003E950((v0 + 96), v0 + 16);
    sub_1000080F8((v0 + 16), *(v0 + 40));
    v24 = swift_task_alloc();
    *(v0 + 232) = v24;
    *v24 = v0;
    v24[1] = sub_10030D088;
    v26 = *(v0 + 160);
    v25 = *(v0 + 168);

    return sub_100250974(v26, v25);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100008D3C(v0 + 96, &unk_1003DB050, &qword_10033FA60);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Storage Controller: This is unexpected! Cloud storage does not conform to CloudKitSharing protocol.", v30, 2u);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 144) = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10030EC34(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_10030D088()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10030D228;
  }

  else
  {
    v2 = sub_10030D19C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030D19C()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030D228()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030D2B0()
{
  v1[19] = v0;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_10030D37C, 0, 0);
}

uint64_t sub_10030D37C()
{
  v25 = v0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Storage Controller: Fetching all shared record from cloud...", v4, 2u);
  }

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);

  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&qword_1003E86F0, &unk_10034A430);
  if (swift_dynamicCast())
  {
    sub_10003E950((v0 + 96), v0 + 16);
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v9 = qword_1003FA9D0;
    v10 = qword_1003FA9D8;
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    v11 = sub_1002E2BC4(v9, v10);
    *(v0 + 184) = v11;
    v12 = [v11 sharedCloudDatabase];
    *(v0 + 192) = v12;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    sub_100008D04(v1, qword_1003FAAE8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10021145C(v9, v10, &v24);
      _os_log_impl(&_mh_execute_header, v13, v14, "Storage Controller: Fetching changes from shared database for container: %s", v15, 0xCu);
      sub_10000839C(v16);
    }

    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *(v17 + 16) = v0 + 16;
    *(v17 + 24) = v12;
    *(v17 + 32) = v9;
    *(v17 + 40) = v10;
    *(v17 + 48) = 1;
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_10030D93C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v18, 0, 0, 0xD000000000000020, 0x80000001003349F0, sub_10030E954, v17, &type metadata for () + 8);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100008D3C(v0 + 96, &qword_1003DF6C8, qword_1003436E0);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    sub_100008D04(v1, qword_1003FAAE8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Storage Controller: Cloud storage object is not confirm to cloud sync", v21, 2u);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 144) = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10030EC34(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10030D93C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10030DAD4;
  }

  else
  {

    v2 = sub_10030DA58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030DA58()
{
  v1 = *(v0 + 184);

  sub_10000839C((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10030DAD4()
{
  v1 = *(v0 + 192);

  sub_10000839C((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10030DB58()
{
  v1[19] = v0;
  v2 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_10030DC24, 0, 0);
}

uint64_t sub_10030DC24()
{
  v25 = v0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Storage Controller: Fetching all private record from cloud...", v4, 2u);
  }

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);

  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  sub_100005814(&qword_1003E86F0, &unk_10034A430);
  if (swift_dynamicCast())
  {
    sub_10003E950((v0 + 96), v0 + 16);
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v9 = qword_1003FA9D0;
    v10 = qword_1003FA9D8;
    if (qword_1003D7EB0 != -1)
    {
      swift_once();
    }

    v11 = sub_1002E2BC4(v9, v10);
    *(v0 + 184) = v11;
    v12 = [v11 privateCloudDatabase];
    *(v0 + 192) = v12;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    sub_100008D04(v1, qword_1003FAAE8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10021145C(v9, v10, &v24);
      _os_log_impl(&_mh_execute_header, v13, v14, "Storage Controller: Fetching changes from private database for container: %s", v15, 0xCu);
      sub_10000839C(v16);
    }

    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *(v17 + 16) = v0 + 16;
    *(v17 + 24) = v12;
    *(v17 + 32) = v9;
    *(v17 + 40) = v10;
    *(v17 + 48) = 0;
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_10030E1E0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v18, 0, 0, 0xD000000000000021, 0x80000001003349C0, sub_10030E91C, v17, &type metadata for () + 8);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    sub_100008D3C(v0 + 96, &qword_1003DF6C8, qword_1003436E0);
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    sub_100008D04(v1, qword_1003FAAE8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Storage Controller: Cloud storage object is not confirm to cloud sync", v21, 2u);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 144) = -7000;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10030EC34(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_10030E1E0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10030ED60;
  }

  else
  {

    v2 = sub_10030ED4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10030E2FC(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  v20 = a5;
  v21 = a8;
  v13 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - v15;
  sub_1000080F8(a2, a2[3]);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v16, v13);
  sub_1002E542C(a3, a4, v20, a6 & 0x101, v21, v18);
}

uint64_t sub_10030E474(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAAE8);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAE8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, a4, v16, 2u);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10030E6DC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v2 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage;
  v4 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorageController(uint64_t a1)
{
  result = qword_1003E8CD0;
  if (!qword_1003E8CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030E824(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003E8CE0, &unk_1003DF610, &unk_1003437A0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10030E974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 49))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_10030E2FC(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v4 | *(v3 + 48), a2, a3);
}

uint64_t sub_10030E9B4()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10030EAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030EB64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10030EBC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030EC34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10030EC84(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v7);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_10027B738(a1, v1 + v4, v8, v10, v11, v9, v13, v14);
}

Swift::Void __swiftcall OSActivity.close()()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
}

uint64_t sub_10030EDC8()
{
  qword_1003E8EF0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t OSActivity.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

os_activity_t sub_10030EE60(char *description, char a2, void *dso)
{
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1003D7F10 == -1)
        {
LABEL_5:
          v4 = dso;
          v5 = qword_1003E8EF0;

          return _os_activity_create(v4, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1003D7F10 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1003E8EF0, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t static OSTransaction.named(_:block:)(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a3;
  swift_allocObject();
  sub_10030F0FC(a1, a2, v5);
  a4();
}

void *sub_10030F0FC(char *a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v35 - v10;
  v37 = v3;
  v36 = a3;
  if (a3)
  {
    v10 = a1 >> 32;
    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_22;
      }

      v10 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v12 = a1 + 1;
LABEL_9:
          v38 = (v12 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v12) >> 3))));
          goto LABEL_10;
        }

LABEL_15:
        v30 = (a1 & 0x3F) << 8;
        v31 = (a1 >> 6) + v30 + 33217;
        v32 = (v30 | (a1 >> 6) & 0x3F) << 8;
        v33 = (a1 >> 18) + ((v32 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v34 = (a1 >> 12) + v32 + 8487393;
        if (v10)
        {
          v12 = v33;
        }

        else
        {
          v12 = v34;
        }

        if (a1 < 0x800)
        {
          v12 = v31;
        }

        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_10:
  v38 = static String._fromUTF8Repairing(_:)();
  v39 = v13;

  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = v38;
  v16 = v39;
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v7 + 8))(v11, v6);
  v38 = v15;
  v39 = v16;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  v22 = v38;
  v21 = v39;
  v23 = v37;
  v37[2] = v38;
  v23[3] = v21;

  v24 = static os_log_type_t.default.getter();
  sub_100005814(&unk_1003E7720, &qword_100346B60);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10033EB30;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_100242A70();
  *(v25 + 32) = v22;
  *(v25 + 40) = v21;
  sub_10030F5CC();

  v26 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v26, "Opening transaction - %@", 24, 2, v25);

  String.utf8CString.getter();
  v27 = os_transaction_create();

  if (v27)
  {

    v23[4] = v27;
    type metadata accessor for OSActivity();
    v28 = swift_allocObject();
    *(v28 + 32) = 0;
    *(v28 + 24) = 0;
    *(v28 + 16) = sub_10030EE60(a1, v36, &_mh_execute_header);
    swift_beginAccess();
    v29 = swift_unknownObjectRetain();
    os_activity_scope_enter(v29, (v28 + 24));
    swift_endAccess();
    swift_unknownObjectRelease();
    v23[5] = v28;
    return v23;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *OSTransaction.deinit(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = static os_log_type_t.default.getter();
  sub_100005814(&unk_1003E7720, &qword_100346B60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10033EB30;
  v6 = *(v2 + 16);
  v7 = *(v3 + 24);
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100242A70();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_10030F5CC();

  v8 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v8, "Closing transaction - %@", 24, 2, v5);

  v9 = *(v3 + 40);
  swift_beginAccess();
  os_activity_scope_leave((v9 + 24));
  swift_endAccess();

  swift_unknownObjectRelease();
  return v3;
}

unint64_t sub_10030F5CC()
{
  result = qword_1003E9000;
  if (!qword_1003E9000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E9000);
  }

  return result;
}

uint64_t OSTransaction.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  OSTransaction.deinit(a1, a2);

  return swift_deallocClassInstance();
}

uint64_t static OSTransaction.named(_:block:)(char *a1, uint64_t a2, int a3, void (*a4)(void))
{
  swift_initStackObject();
  sub_10030F0FC(a1, a2, a3);
  a4();
}

uint64_t type metadata accessor for OSTransaction()
{
  return objc_opt_self();
}

{
  return type metadata accessor for OSTransaction();
}

void sub_10030F740(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = String.utf8CString.getter();
  xpc_activity_unregister((v4 + 32));

  v5 = a1[11];
  v6 = a1[12];
  a1[11] = 0;
  a1[12] = 0;
  sub_100083B0C(v5, v6);
  swift_unknownObjectWeakAssign();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAB8);

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10021145C(v2, v3, &v12);
    _os_log_impl(&_mh_execute_header, oslog, v8, "%s - Unregistered criteria", v9, 0xCu);
    sub_10000839C(v10);
  }
}

void sub_10030F8D0()
{
  v1 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAB8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10021145C(*(v1 + 24), *(v1 + 32), aBlock);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - updateCriteria called.", v5, 0xCu);
    sub_10000839C(v6);
  }

  v7 = *(v1 + 16);
  sub_100005814(&qword_1003E9300, &qword_10034AC60);
  OS_dispatch_queue.sync<A>(execute:)();
  if (aBlock[0])
  {
    sub_100310608(aBlock[0]);
    swift_unknownObjectRelease();
    return;
  }

  v8 = *(v1 + 80);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  if (v8 != 1)
  {
    goto LABEL_12;
  }

  if (v11)
  {
    v12 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = *(v1 + 24);
    v14 = *(v1 + 32);
    *(v12 + 4) = sub_10021145C(v13, v14, aBlock);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10021145C(v13, v14, aBlock);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s - No current activity -- re-registering: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v9 = swift_allocObject();
  v9[2].isa = sub_1000C50FC;
  v9[3].isa = v1;
  aBlock[4] = sub_10031351C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10030F718;
  aBlock[3] = &unk_1003B4D68;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
LABEL_12:
    if (v11)
    {
      v15 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v15 = 136315394;
      v17 = *(v1 + 24);
      v16 = *(v1 + 32);
      *(v15 + 4) = sub_10021145C(v17, v16, aBlock);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_10021145C(v17, v16, aBlock);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s - No current activity -- hasn't checked in yet: %s", v15, 0x16u);
      swift_arrayDestroy();
    }
  }
}

BOOL sub_10030FD90(uint64_t a1, xpc_activity_state_t a2, const char *a3, ...)
{
  v6 = v3;
  sub_100005814(&qword_1003E9300, &qword_10034AC60);
  OS_dispatch_queue.sync<A>(execute:)();
  if (activity)
  {
    v7 = xpc_activity_set_state(activity, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      activity = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10021145C(*(v6 + 24), *(v6 + 32), &activity);
      _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
      sub_10000839C(v12);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_10030FF58(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = a1[11];
  v4 = a1[12];
  a1[11] = sub_1003131A0;
  a1[12] = v2;

  sub_100083B0C(v3, v4);
  v8[4] = sub_1003131A0;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10014BE88;
  v8[3] = &unk_1003B4DB8;
  v5 = _Block_copy(v8);

  v6 = String.utf8CString.getter();
  xpc_activity_register((v6 + 32), XPC_ACTIVITY_CHECK_IN, v5);

  _Block_release(v5);
}

uint64_t sub_100310094(_xpc_activity_s *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAB8);
    swift_unknownObjectRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      swift_unknownObjectRetain();
      sub_100005814(&qword_1003E92F8, &qword_10034AC58);
      v9 = String.init<A>(describing:)();
      v11 = sub_10021145C(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "registered activity: %s", v7, 0xCu);
      sub_10000839C(v8);
    }

    sub_10031024C(a1);
  }

  return result;
}

uint64_t sub_10031024C(_xpc_activity_s *a1)
{
  v2 = v1;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(*(v2 + 24), *(v2 + 32), &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - calling activityHandler", v7, 0xCu);
    sub_10000839C(v8);
  }

  type metadata accessor for OSTransaction();
  swift_allocObject();
  v9 = sub_10030F0FC("XPCActivity", 11, 2);
  sub_1003103E0(v9, a1, v2);
}

uint64_t sub_1003103E0(uint64_t a1, xpc_activity_t activity, uint64_t a3)
{
  state = xpc_activity_get_state(activity);
  v7 = sub_1003129A0(state);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAAB8);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v11 = 136315394;
    swift_unknownObjectRetain();
    sub_100005814(&qword_1003E92F8, &qword_10034AC58);
    v12 = String.init<A>(describing:)();
    v14 = sub_10021145C(v12, v13, &v19);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = String.init<A>(describing:)();
    v17 = sub_10021145C(v15, v16, &v19);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "activityHandler for %s -- state: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!v7)
  {
    swift_unknownObjectWeakAssign();
    *(a3 + 80) = 1;
    v7 = sub_100310608(activity);
  }

  return (*(a3 + 56))(a3, a1, v7);
}

unint64_t sub_100310608(_xpc_activity_s *a1)
{
  v2 = v1;
  v3 = a1;
  if (!xpc_activity_copy_criteria(a1))
  {
    goto LABEL_4;
  }

  v4 = swift_unknownObjectRetain();
  sub_10031281C(v4, &v52);
  if (v52 != 2)
  {
    v58 = v52;
    v59 = v53;
    v60 = v54;
    (*(v1 + 40))(&v55, &v52);
    if (v55 == 2)
    {
      v24 = *(v1 + 16);
      v3 = swift_allocObject();
      *(v3 + 2) = sub_1003134F8;
      *(v3 + 3) = v2;
      *(&v50 + 1) = sub_10031351C;
      v51 = v3;
      aBlock = _NSConcreteStackBlock;
      *&aBlock_8 = 1107296256;
      *(&aBlock_8 + 1) = sub_10030F718;
      *&v50 = &unk_1003B4D18;
      v25 = _Block_copy(&aBlock);

      dispatch_sync(v24, v25);
      _Block_release(v25);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();
      swift_unknownObjectRelease();

      if ((v24 & 1) == 0)
      {
        return 6;
      }

      __break(1u);
    }

    else
    {
      aBlock = v55;
      aBlock_8 = v56;
      v50 = v57;
      if (!sub_1003124E4(&aBlock, &v58))
      {
        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_100008D04(v33, qword_1003FAAB8);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v36 = 136315394;
          *(v36 + 4) = sub_10021145C(*(v1 + 24), *(v1 + 32), &v47);
          *(v36 + 12) = 2080;
          v37 = String.init<A>(describing:)();
          v39 = sub_10021145C(v37, v38, &v47);

          *(v36 + 14) = v39;
          _os_log_impl(&_mh_execute_header, v34, v35, "%s - Existing criteria: %s", v36, 0x16u);
          swift_arrayDestroy();
        }

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v42 = 136315394;
          *(v42 + 4) = sub_10021145C(v2[3], v2[4], &v47);
          *(v42 + 12) = 2080;
          v43 = String.init<A>(describing:)();
          v45 = sub_10021145C(v43, v44, &v47);

          *(v42 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v40, v41, "%s - Registering updated  criteria: %s", v42, 0x16u);
          swift_arrayDestroy();
        }

        sub_100310FBC();
        xpc_activity_set_criteria(v3, v46);
        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      if (qword_1003D7F48 == -1)
      {
        goto LABEL_22;
      }
    }

    swift_once();
LABEL_22:
    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_10021145C(v2[3], v2[4], &v47);
      *(v29 + 12) = 2080;
      v30 = String.init<A>(describing:)();
      v32 = sub_10021145C(v30, v31, &v47);

      *(v29 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - Keeping existing criteria for: %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_16;
  }

  swift_unknownObjectRelease();
LABEL_4:
  v5 = *(v1 + 40);
  v58 = 2;
  v59 = 0u;
  v60 = 0u;
  v5(&v55, &v58);
  v6 = v55;
  if (v55 != 2)
  {
LABEL_11:
    aBlock = v6;
    aBlock_8 = v56;
    v50 = v57;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_10021145C(v2[3], v2[4], &v47);
      *(v17 + 12) = 2080;
      v18 = String.init<A>(describing:)();
      v20 = sub_10021145C(v18, v19, &v47);

      *(v17 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s - Registering new criteria: %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    sub_100310FBC();
    xpc_activity_set_criteria(v3, v21);
LABEL_16:
    swift_unknownObjectRelease();
    state = xpc_activity_get_state(v3);
    return sub_1003129A0(state);
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAB8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10021145C(v2[3], v2[4], &aBlock);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s - criteriaBlock returned nil", v10, 0xCu);
    sub_10000839C(v11);
  }

  v12 = v2[2];
  v3 = swift_allocObject();
  *(v3 + 2) = sub_100313104;
  *(v3 + 3) = v2;
  *(&v50 + 1) = sub_1000A8B74;
  v51 = v3;
  aBlock = _NSConcreteStackBlock;
  *&aBlock_8 = 1107296256;
  *(&aBlock_8 + 1) = sub_10030F718;
  *&v50 = &unk_1003B4CC8;
  v13 = _Block_copy(&aBlock);

  dispatch_sync(v12, v13);
  _Block_release(v13);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  return 6;
}

void sub_100310FBC()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  v3 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  if (!*v0)
  {
    v3 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  }

  xpc_dictionary_set_string(v1, XPC_ACTIVITY_PRIORITY, *v3);
  v4 = *(v0 + 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, *(v0 + 1));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, *(v0 + 8));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, *(v0 + 16));
  if (v4 == 1)
  {
    xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, *(v0 + 24));
  }

  v5 = *(v0 + 32);
  if (v5)
  {
    if (!XPC_ACTIVITY_POWER_NAP)
    {
      __break(1u);
      goto LABEL_39;
    }

    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_POWER_NAP, 1);
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_11;
  }

  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 1);
LABEL_11:
  if ((v5 & 2) == 0)
  {
    goto LABEL_14;
  }

  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 1);
LABEL_14:
  if ((v5 & 0x800) == 0)
  {
    goto LABEL_17;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
LABEL_17:
  if ((v5 & 8) == 0)
  {
    goto LABEL_20;
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
LABEL_20:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_23;
  }

  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
LABEL_23:
  if ((v5 & 0x20) != 0)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  }

  if ((v5 & 0x40) != 0)
  {
    if (XPC_ACTIVITY_MEMORY_INTENSIVE)
    {
      xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MEMORY_INTENSIVE, 1);
      goto LABEL_28;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_28:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_31;
  }

  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_CPU_INTENSIVE, 1);
LABEL_31:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_34;
  }

  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_DISK_INTENSIVE, 1);
LABEL_34:
  if ((v5 & 0x400) == 0)
  {
    return;
  }

  if (!XPC_ACTIVITY_POST_INSTALL)
  {
LABEL_47:
    __break(1u);
    return;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_POST_INSTALL, 1);
}

uint64_t sub_10031121C()
{
  result = String.init(cString:)();
  qword_1003E90C0 = result;
  *algn_1003E90C8 = v1;
  return result;
}

uint64_t sub_10031124C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616E65746E69616DLL;
  }

  else
  {
    v3 = 0x7974696C697475;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v5 = 0x616E65746E69616DLL;
  }

  else
  {
    v5 = 0x7974696C697475;
  }

  if (*a2)
  {
    v6 = 0xEB0000000065636ELL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003112FC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100311388(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100311400(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100311488@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3D70, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003114E8(uint64_t *a1@<X8>)
{
  v2 = 0x7974696C697475;
  if (*v1)
  {
    v2 = 0x616E65746E69616DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000065636ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1003115E0()
{
  if (*v0)
  {
    return 0x6E65746E69616D2ELL;
  }

  else
  {
    return 0x7974696C6974752ELL;
  }
}

unint64_t sub_100311624@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100312A64(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100311700(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100305F30(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100305F30((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x614E7265776F702ELL;
  *(v5 + 5) = 0xE900000000000070;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100305F30((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x766544656B61772ELL;
    *(v8 + 5) = 0xEB00000000656369;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100305F30((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD00000000000001ALL;
    *(v11 + 5) = 0x8000000100334CE0;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100305F30((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0xD000000000000010;
  *(v14 + 5) = 0x8000000100334CC0;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_100305F30((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0xD00000000000001BLL;
  *(v17 + 5) = 0x8000000100334CA0;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100305F30((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  strcpy(v20 + 32, ".allowBattery");
  *(v20 + 23) = -4864;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_43:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100305F30((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD000000000000010;
  *(v23 + 5) = 0x8000000100334C80;
  if ((a1 & 0x80) == 0)
  {
LABEL_18:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100305F30((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  strcpy(v26 + 32, ".cpuIntensive");
  *(v26 + 23) = -4864;
  if ((a1 & 0x100) == 0)
  {
LABEL_19:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100305F30((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  strcpy(v29 + 32, ".diskIntensive");
  v29[47] = -18;
  if ((a1 & 0x200) == 0)
  {
LABEL_20:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100305F30((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0xD000000000000019;
  *(v32 + 5) = 0x8000000100334C60;
  if ((a1 & 0x400) == 0)
  {
LABEL_21:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100305F30((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  strcpy(v35 + 32, ".postInstall");
  v35[45] = 0;
  *(v35 + 23) = -5120;
  if ((a1 & 0x800) != 0)
  {
LABEL_68:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100305F30(0, *(v2 + 2) + 1, 1, v2);
    }

    v37 = *(v2 + 2);
    v36 = *(v2 + 3);
    if (v37 >= v36 >> 1)
    {
      v2 = sub_100305F30((v36 > 1), v37 + 1, 1, v2);
    }

    *(v2 + 2) = v37 + 1;
    v38 = &v2[16 * v37];
    *(v38 + 4) = 0x657269757165722ELL;
    *(v38 + 5) = 0xEF417373616C4373;
  }

LABEL_73:
  sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  sub_10005A668();
  v39 = BidirectionalCollection<>.joined(separator:)();
  v41 = v40;

  v42._countAndFlagsBits = v39;
  v42._object = v41;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 93;
  v43._object = 0xE100000000000000;
  String.append(_:)(v43);
  return 91;
}

uint64_t sub_100311ED4(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E92E0, &qword_10034AC50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000080F8(a1, a1[3]);
  sub_100312F60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = *v3;
  v16 = 0;
  sub_10031305C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 4);
    v10[15] = 5;
    sub_1003130B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100312134()
{
  v1 = *v0;
  v2 = 0x797469726F697270;
  v3 = 0x7265506563617267;
  v4 = 0x6C61767265746E69;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69746165706572;
  if (v1 != 1)
  {
    v5 = 0x79616C6564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003121F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100312AC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100312220(uint64_t a1)
{
  v2 = sub_100312F60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031225C(uint64_t a1)
{
  v2 = sub_100312F60();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100312298@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100312CCC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

BOOL sub_1003122F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1003124E4(v5, v7);
}

uint64_t sub_100312344()
{

  sub_1002E2B30(v0 + 72);
  sub_100083B0C(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

__n128 sub_1003123D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003123EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100312430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100312490()
{
  result = qword_1003E92B0;
  if (!qword_1003E92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E92B0);
  }

  return result;
}

BOOL sub_1003124E4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x616E65746E69616DLL;
  }

  else
  {
    v5 = 0x7974696C697475;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v7 = 0x616E65746E69616DLL;
  }

  else
  {
    v7 = 0x7974696C697475;
  }

  if (*a2)
  {
    v8 = 0xEB0000000065636ELL;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

uint64_t sub_100312608(uint64_t result)
{
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_34;
  }

  v1 = result;
  result = xpc_dictionary_get_BOOL(result, XPC_ACTIVITY_POWER_NAP);
  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v2 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY);
  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_SHOULD_WAKE_DEVICE);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v4 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_A);
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v5 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v6 = result;
  v7 = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY);
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_ALLOW_BATTERY);
  if (!XPC_ACTIVITY_MEMORY_INTENSIVE)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_MEMORY_INTENSIVE);
  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_CPU_INTENSIVE);
  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v10 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_DISK_INTENSIVE);
  if (!XPC_ACTIVITY_POST_INSTALL)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v11 = v2;
  if (v3)
  {
    v11 = v2 | 4;
  }

  if (v4)
  {
    v11 |= 2uLL;
  }

  if (v5)
  {
    v11 |= 0x800uLL;
  }

  if (v6)
  {
    v11 |= 8uLL;
  }

  if (v7)
  {
    v11 |= 0x10uLL;
  }

  if (v8)
  {
    v11 |= 0x20uLL;
  }

  if (v9)
  {
    v11 |= 0x40uLL;
  }

  if (v10)
  {
    v11 |= 0x80uLL;
  }

  if (result)
  {
    v12 = v11 | 0x100;
  }

  else
  {
    v12 = v11;
  }

  v13 = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_POST_INSTALL);
  swift_unknownObjectRelease();
  if (v13)
  {
    return v12 | 0x400;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_10031281C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, XPC_ACTIVITY_PRIORITY))
  {
    v4 = String.init(cString:)();
    if (qword_1003D7F18 != -1)
    {
      v16 = v4;
      v17 = v5;
      swift_once();
      v4 = v16;
      v5 = v17;
    }

    if (v4 == qword_1003E90C0 && v5 == *algn_1003E90C8)
    {

      v8 = 0;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = ~v7 & 1;
    }

    v14 = xpc_dictionary_get_BOOL(a1, XPC_ACTIVITY_REPEATING);
    int64 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_DELAY);
    v10 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_GRACE_PERIOD);
    v11 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_INTERVAL);
    result = sub_100312608(a1);
    v15 = 256;
    if (!v14)
    {
      v15 = 0;
    }

    v13 = v15 | v8;
  }

  else
  {
    swift_unknownObjectRelease();
    int64 = 0;
    v10 = 0;
    v11 = 0;
    result = 0;
    v13 = 2;
  }

  *a2 = v13;
  a2[1] = int64;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = result;
  return result;
}

unint64_t sub_1003129A0(unint64_t result)
{
  if (result >= 6)
  {
    _StringGuts.grow(_:)(38);

    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100312A64(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_100312A74()
{
  result = qword_1003E92B8;
  if (!qword_1003E92B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E92B8);
  }

  return result;
}

uint64_t sub_100312AC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746165706572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100312CCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100005814(&qword_1003E92C0, &qword_10034AC48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_100312F60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000839C(a1);
  }

  v23 = 0;
  sub_100312FB4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v24;
  v22 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 4;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = 5;
  sub_100313008();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v17;
  result = sub_10000839C(a1);
  *a2 = v9;
  *(a2 + 1) = v10 & 1;
  v13 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v11;
  return result;
}

unint64_t sub_100312F60()
{
  result = qword_1003E92C8;
  if (!qword_1003E92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E92C8);
  }

  return result;
}

unint64_t sub_100312FB4()
{
  result = qword_1003E92D0;
  if (!qword_1003E92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E92D0);
  }

  return result;
}

unint64_t sub_100313008()
{
  result = qword_1003E92D8;
  if (!qword_1003E92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E92D8);
  }

  return result;
}

unint64_t sub_10031305C()
{
  result = qword_1003E92E8;
  if (!qword_1003E92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E92E8);
  }

  return result;
}

unint64_t sub_1003130B0()
{
  result = qword_1003E92F0;
  if (!qword_1003E92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E92F0);
  }

  return result;
}

uint64_t sub_10031311C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100313134@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_100313168()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_1003131DC()
{
  result = qword_1003E9308;
  if (!qword_1003E9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9308);
  }

  return result;
}

unint64_t sub_100313234()
{
  result = qword_1003E9310;
  if (!qword_1003E9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9310);
  }

  return result;
}

unint64_t sub_10031328C()
{
  result = qword_1003E9318;
  if (!qword_1003E9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9318);
  }

  return result;
}

unint64_t sub_1003132E4()
{
  result = qword_1003E9320;
  if (!qword_1003E9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9320);
  }

  return result;
}

unint64_t sub_10031333C()
{
  result = qword_1003E9328;
  if (!qword_1003E9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9328);
  }

  return result;
}

unint64_t sub_100313394()
{
  result = qword_1003E9330;
  if (!qword_1003E9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9330);
  }

  return result;
}

unint64_t sub_1003133EC()
{
  result = qword_1003E9338;
  if (!qword_1003E9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9338);
  }

  return result;
}

unint64_t sub_100313444()
{
  result = qword_1003E9340;
  if (!qword_1003E9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9340);
  }

  return result;
}

unint64_t sub_100313498()
{
  result = qword_1003E9348;
  if (!qword_1003E9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9348);
  }

  return result;
}

uint64_t sub_10031352C(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071C74();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  v15 = v18;
  *(v14 + 16) = a1;
  *(v14 + 24) = v15;
  aBlock[4] = sub_1003139D4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B4F60;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100163F0C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
}

uint64_t sub_1003138C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    if (v3)
    {
      sub_10030F8D0();
    }
  }

  return result;
}

uint64_t sub_100313938()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100313994()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1003139DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003139F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a3)
  {
    case 4u:
      return sub_10030FD6C();
    case 3u:
      return sub_10030FD48(result, a2, a3, a4, a5, a6, a7, a8, v8);
    case 2u:
      return a4(result, a2);
  }

  return result;
}

uint64_t sub_100313A50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v35 = a2;
  v40 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v40);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  static DispatchQoS.background.getter();
  v19 = swift_allocObject();
  v20 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(a1 + 32);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  type metadata accessor for XPCActivity();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v22 + 80) = 0;
  v36 = sub_100071C74();
  *(v22 + 88) = 0;
  *(v22 + 96) = 0;
  strcpy(&aBlock, "XPCActivity-");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;

  v23._countAndFlagsBits = a2;
  v23._object = v41;
  String.append(_:)(v23);
  v33 = *(&aBlock + 1);
  v34 = aBlock;
  v30 = v18;
  v31 = v13;
  v24 = *(v13 + 16);
  v32 = v12;
  v24(v16, v18, v12);
  (*(v10 + 104))(v37, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v38);
  *&aBlock = _swiftEmptyArrayStorage;
  sub_100163F0C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = v35;
  *(v22 + 16) = v25;
  *(v22 + 24) = v26;
  *(v22 + 32) = v41;
  *(v22 + 40) = sub_1000C508C;
  *(v22 + 48) = v19;
  *(v22 + 56) = sub_100313F98;
  *(v22 + 64) = v21;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1000C50FC;
  *(v27 + 24) = v22;
  v45 = sub_100071DCC;
  v46 = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v43 = sub_10030F718;
  v44 = &unk_1003B5000;
  v28 = _Block_copy(&aBlock);

  dispatch_sync(v25, v28);
  _Block_release(v28);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  else
  {
    (*(v31 + 8))(v30, v32);
    return v22;
  }

  return result;
}

uint64_t sub_100313F60()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100313FB8()
{
  sub_100314434();

  return swift_deallocClassInstance();
}

void sub_100313FEC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA40);
    v19 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v19, v7, "Already registered XPC observer.", v8, 2u);
    }

    v9 = v19;
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA40);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Registering XPC observer.", v13, 2u);
    }

    *(v1 + 16) = 1;
    sub_100071C74();
    (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.userInitiated(_:), v2);
    v14 = static OS_dispatch_queue.global(qos:)();
    (*(v3 + 8))(v5, v2);
    v15 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100314674;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003143E0;
    aBlock[3] = &unk_1003B5050;
    v16 = _Block_copy(aBlock);

    v17 = String.utf8CString.getter();
    swift_beginAccess();
    notify_register_dispatch((v17 + 32), (v1 + 20), v14, v16);
    swift_endAccess();

    _Block_release(v16);
  }
}

uint64_t sub_100314388(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [XPCNotificationObserver didChangeEnvironment]_0();
  }

  return result;
}

uint64_t sub_1003143E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100314434()
{
  if (*(v0 + 16) == 1)
  {
    v1 = v0;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Canceling XPC observer.", v5, 2u);
    }

    *(v1 + 16) = 0;
    swift_beginAccess();
    notify_cancel(*(v1 + 20));
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Already canceled XPC observer.", v8, 2u);
    }
  }
}

uint64_t sub_10031463C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10031467C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1003147DC(void (*a1)(uint64_t), void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10)
{
  v62 = a3;
  v58 = a1;
  v59 = a2;
  v15 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v56 = *(v15 - 8);
  v57 = v15;
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = swift_allocObject();
  v19 = a5;
  v18[2] = a5;
  v18[3] = a6;
  v60 = a7;
  v18[4] = a7;
  v18[5] = a8;
  v63 = a8;
  v18[6] = a9;
  v18[7] = a10;
  v20 = swift_allocObject();
  v64 = a4;
  v20[2] = a4;
  v20[3] = sub_100315224;
  v61 = v20;
  v20[4] = v18;
  v21 = *(v62 + 16);
  if (v21)
  {
    v22 = v19;

    sub_100083AA0(v60, v63);
    v23 = qword_1003D7F48;

    v24 = v21;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAB8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Fetching User Information", v28, 2u);
    }

    v29 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_10031523C;
    aBlock[5] = v61;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003B5130;
    v30 = _Block_copy(aBlock);

    [v24 getUserInformationForAltDSID:v29 completion:v30];
    _Block_release(v30);
  }

  else
  {
    v55 = v17;
    v58 = a9;
    v31 = v19;
    v62 = a6;

    v32 = v60;
    sub_100083AA0(v60, v63);
    v33 = qword_1003D7F48;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAB8);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "AuthController is nil", v37, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[7] = -7057;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v38 = aBlock[0];
    v59 = v31;

    v39 = v32;
    sub_100083AA0(v32, v63);

    v40 = v38;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v19;
      v45 = v44;
      *v43 = 138412290;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&_mh_execute_header, v41, v42, "Fetching User Information finished with error: %@", v43, 0xCu);
      sub_100083380(v45);
      v19 = v54;
    }

    swift_willThrow();
    swift_errorRetain();
    v48 = v55;
    v47 = v56;
    if (v19)
    {
      v49 = _convertErrorToNSError(_:)();
      [v59 updateTaskResultWithError:v49];
    }

    v50 = v57;
    (*(v47 + 16))(v48, v62 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter, v57);
    Dependency.wrappedValue.getter();
    (*(v47 + 8))(v48, v50);
    swift_getObjectType();
    sub_100246FA8(v19);
    v51 = swift_unknownObjectRelease();
    v52 = v58;
    if (v39)
    {
      v51 = v39(v40);
    }

    v52(v51);
    v53 = *(v62 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation);
    *(v62 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation) = 0;

    sub_100083B0C(v39, v63);
  }
}

void sub_100314E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, void *), uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = qword_1003D7F48;

    v13 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Fetching User Information", v17, 2u);
    }

    v18 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_1003151A8;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003B50B8;
    v19 = _Block_copy(aBlock);

    [v13 getUserInformationForAltDSID:v18 completion:v19];
    _Block_release(v19);
  }

  else
  {
    v20 = qword_1003D7F48;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAB8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "AuthController is nil", v24, 2u);
    }

    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7057;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v18 = aBlock[0];
    sub_10007F200(0, aBlock[0], a4, a5);
  }
}

uint64_t sub_1003151B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003151CC()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100315244(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a3;
  *(v7 + 32) = a5;
  *(v7 + 112) = a4;
  *(v7 + 16) = a2;
  v8 = type metadata accessor for OSSignpostID();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100315310, 0, 0);
}

uint64_t sub_100315310()
{
  v16 = v0;
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v0[10] = OSTransaction.init(name:)();
  sub_10030F5CC();

  v1 = OS_os_log.init(subsystem:category:)();
  v0[11] = v1;
  v2 = v1;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v3 = static OS_os_log.default.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = StaticString.description.getter();
    v9 = sub_10021145C(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v4, "🏁 [BEGIN] %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_100315548;
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[4];

  return sub_100266DD4(v10, v13, v11, v12);
}

uint64_t sub_100315548()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1003162F4;
  }

  else
  {
    v2 = sub_1003162F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10031565C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a3;
  *(v7 + 32) = a5;
  *(v7 + 112) = a4;
  *(v7 + 16) = a2;
  v8 = type metadata accessor for OSSignpostID();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100315728, 0, 0);
}

uint64_t sub_100315728()
{
  v16 = v0;
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v0[10] = OSTransaction.init(name:)();
  sub_10030F5CC();

  v1 = OS_os_log.init(subsystem:category:)();
  v0[11] = v1;
  v2 = v1;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  v3 = static OS_os_log.default.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = StaticString.description.getter();
    v9 = sub_10021145C(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v4, "🏁 [BEGIN] %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_100315960;
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[4];

  return sub_10028D95C(v10, v13, v11, v12);
}

uint64_t sub_100315960()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100315C68;
  }

  else
  {
    v2 = sub_100315A74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100315A74()
{
  v16 = v0;
  v1 = v0[11];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[7];
  if (v3)
  {
    v14 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = StaticString.description.getter();
    v11 = sub_10021145C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v2, "✅ [END] %s", v7, 0xCu);
    sub_10000839C(v8);

    (*(v5 + 8))(v14, v6);
  }

  else
  {
    (*(v5 + 8))(v0[9], v0[7]);
  }

  OSTransaction.complete()();

  v12 = v0[1];

  return v12();
}

uint64_t sub_100315C68()
{
  v1 = v0[11];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[11];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v3, v2, "❌ [END] %@", v4, 0xCu);
    sub_100083380(v5);
  }

  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  OSTransaction.complete()();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100315EF8()
{
  v0 = type metadata accessor for Logger();
  sub_100315FA4(v0, qword_1003FAAD0);
  sub_100008D04(v0, qword_1003FAAD0);

  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100315FA4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100316008()
{
  v0 = type metadata accessor for Logger();
  sub_100315FA4(v0, qword_1003FAB00);
  sub_100008D04(v0, qword_1003FAB00);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003160C0()
{
  v0 = type metadata accessor for Logger();
  sub_100315FA4(v0, qword_1003FAB30);
  sub_100008D04(v0, qword_1003FAB30);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10031614C()
{
  v0 = type metadata accessor for Logger();
  sub_100315FA4(v0, qword_1003FAB48);
  sub_100008D04(v0, qword_1003FAB48);

  return Logger.init(subsystem:category:)();
}

uint64_t sub_10031626C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100315FA4(v5, a2);
  sub_100008D04(v5, a2);

  return Logger.init(subsystem:category:)();
}

id sub_1003162FC()
{
  v0 = objc_allocWithZone(AAUpdateProvisioningRequest);

  return [v0 init];
}

uint64_t sub_100316334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  return _swift_task_switch(sub_10031635C, 0, 0);
}

uint64_t sub_10031635C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_10031657C;
    v4 = v0[10];
    v3 = v0[11];

    return sub_100316764(v4, v3);
  }

  else
  {
    if (qword_1003D7F98 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FABA8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "AccountUpdatePerformer - Unexpected encountered nil self.", v9, 2u);
    }

    v10 = v0[10];
    v11 = v0[8];

    type metadata accessor for AAError(0);
    v0[6] = 0;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = v0[5];
    v11(v10, v12);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_10031657C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  return _swift_task_switch(sub_100316680, 0, 0);
}

uint64_t sub_100316680()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  if (v1)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    swift_errorRetain();
    v4(v3, v2);

    sub_10005A40C(v2, 1);
  }

  else
  {
    (*(v0 + 64))(v2, 0);
    sub_10005A40C(v2, 0);
  }

  sub_10005A40C(v2, v1 & 1);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100316764(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return _swift_task_switch(sub_100316788, 0, 0);
}

uint64_t sub_100316788()
{
  v1 = *(v0 + 152);
  v2 = [*(v0 + 136) accountType];
  v3 = [*(*sub_1000080F8((v1 + 112) *(v1 + 136)) + 16)];
  v4 = v3;
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

LABEL_25:

LABEL_26:
    if (qword_1003D7F98 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FABA8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "AccountUpdatePerformer - Encountered unexpected account type.", v24, 2u);
    }

    type metadata accessor for AAError(0);
    *(v0 + 128) = -18;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v25 = *(v0 + 120);
    v26 = *(v0 + 8);

    return v26(v25, 1);
  }

  if (!v3)
  {
    v4 = v2;
    goto LABEL_25;
  }

  sub_100319208();
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v6 = [*(v0 + 136) identifier];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = *(v0 + 136);

  v8 = [v7 aa_authToken];
  if (v8 || (v8 = [*(v0 + 136) aa_password]) != 0)
  {

LABEL_10:
    if (qword_1003D7F98 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FABA8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "AccountUpdatePerformer - We have tokens. Proceeding to get_account_setting to update account properties.", v12, 2u);
    }

    v13 = *(v0 + 144);

    if (v13)
    {
      v14 = *(v0 + 144);
      *(v0 + 88) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 96) = v15;
      AnyHashable.init<A>(_:)();
      if (*(v14 + 16) && (v16 = sub_10031B060(v0 + 16), (v17 & 1) != 0))
      {
        sub_10000DB1C(*(v14 + 56) + 32 * v16, v0 + 56);
        sub_1000526B0(v0 + 16);
        if (*(v0 + 80))
        {
          v18 = swift_dynamicCast();
          if (v18)
          {
            v19 = *(v0 + 104);
          }

          else
          {
            v19 = 0;
          }

          if (v18)
          {
            v20 = *(v0 + 112);
          }

          else
          {
            v20 = 0;
          }

          goto LABEL_36;
        }
      }

      else
      {
        sub_1000526B0(v0 + 16);
        *(v0 + 56) = 0u;
        *(v0 + 72) = 0u;
      }
    }

    else
    {
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    sub_100008D3C(v0 + 56, &qword_1003D87C8, qword_100344800);
    v19 = 0;
    v20 = 0;
LABEL_36:
    *(v0 + 176) = v20;
    v28 = swift_task_alloc();
    *(v0 + 184) = v28;
    *v28 = v0;
    v28[1] = sub_100317140;
    v29 = *(v0 + 136);

    return sub_100317828(v29, v19, v20);
  }

  v30 = swift_task_alloc();
  *(v0 + 160) = v30;
  *v30 = v0;
  v30[1] = sub_100316C74;
  v31 = *(v0 + 144);
  v32 = *(v0 + 136);

  return sub_1003172FC(v32, v31);
}

uint64_t sub_100316C74(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 200) = a2;

  return _swift_task_switch(sub_100316D78, 0, 0);
}

uint64_t sub_100316D78()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 8);

    return v2(v1, 1);
  }

  if (qword_1003D7F98 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 136);
  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FABA8);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 168);
  if (v9)
  {
    v11 = *(v0 + 136);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v11;
    *v13 = v11;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "AccountUpdatePerformer - Renew succeeded for %@.", v12, 0xCu);
    sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);
  }

  sub_10005A40C(v10, 0);

  if (qword_1003D7F98 != -1)
  {
    swift_once();
  }

  sub_100008D04(v5, qword_1003FABA8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "AccountUpdatePerformer - We have tokens. Proceeding to get_account_setting to update account properties.", v17, 2u);
  }

  v18 = *(v0 + 144);

  if (v18)
  {
    v19 = *(v0 + 144);
    *(v0 + 88) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 96) = v20;
    AnyHashable.init<A>(_:)();
    if (*(v19 + 16) && (v21 = sub_10031B060(v0 + 16), (v22 & 1) != 0))
    {
      sub_10000DB1C(*(v19 + 56) + 32 * v21, v0 + 56);
      sub_1000526B0(v0 + 16);
      if (*(v0 + 80))
      {
        v23 = swift_dynamicCast();
        if (v23)
        {
          v24 = *(v0 + 104);
        }

        else
        {
          v24 = 0;
        }

        if (v23)
        {
          v25 = *(v0 + 112);
        }

        else
        {
          v25 = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_1000526B0(v0 + 16);
      *(v0 + 56) = 0u;
      *(v0 + 72) = 0u;
    }
  }

  else
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_100008D3C(v0 + 56, &qword_1003D87C8, qword_100344800);
  v24 = 0;
  v25 = 0;
LABEL_26:
  *(v0 + 176) = v25;
  v26 = swift_task_alloc();
  *(v0 + 184) = v26;
  *v26 = v0;
  v26[1] = sub_100317140;
  v27 = *(v0 + 136);

  return sub_100317828(v27, v24, v25);
}

uint64_t sub_100317140(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 201) = a2;

  return _swift_task_switch(sub_100317264, 0, 0);
}

uint64_t sub_100317264()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 201);
  v3 = sub_100317CF4(*(v0 + 136), v1, v2 & 1);
  v5 = v4;
  sub_10005A40C(v1, v2 & 1);
  v6 = *(v0 + 8);

  return v6(v3, v5 & 1);
}

uint64_t sub_1003172FC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100317320, 0, 0);
}

uint64_t sub_100317320()
{
  v1 = v0[4];
  sub_1000080F8((v0[6] + 112), *(v0[6] + 136));
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1003173CC;
  v3 = v0[5];

  return sub_10015C380(v1, v3);
}

uint64_t sub_1003173CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(v1, 1);
  }

  else
  {
    *(v4 + 64) = a1;

    return _swift_task_switch(sub_100317520, 0, 0);
  }
}

uint64_t sub_100317520()
{
  v1 = *(v0 + 64);
  switch(v1)
  {
    case 2:
      if (qword_1003D7F98 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100008D04(v11, qword_1003FABA8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_19;
      }

      v14 = "AccountUpdatePerformer - Failed with no error?";
      goto LABEL_18;
    case 1:
      if (qword_1003D7F98 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100008D04(v4, qword_1003FABA8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "AccountUpdatePerformer - User rejected renewal request.", v7, 2u);
      }

      v8 = objc_allocWithZone(NSError);
      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 initWithDomain:v9 code:-1 userInfo:0];

      v2 = v10;
      goto LABEL_20;
    case 0:
      v2 = *(v0 + 32);
      v3 = 0;
      goto LABEL_21;
  }

  if (qword_1003D7F98 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FABA8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = "AccountUpdatePerformer - Accounts provided unknown result";
LABEL_18:
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, v14, v16, 2u);
  }

LABEL_19:

  type metadata accessor for AAError(0);
  *(v0 + 24) = 0;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001530B4();
  _BridgedStoredNSError.init(_:userInfo:)();
  v2 = *(v0 + 16);
LABEL_20:
  v3 = 1;
LABEL_21:
  v17 = *(v0 + 8);

  return v17(v2, v3);
}

uint64_t sub_100317828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  return _swift_task_switch(sub_10031784C, 0, 0);
}

uint64_t sub_10031784C()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = (*(v0[23] + 56))();
  v0[24] = v3;
  [v3 setAccount:v2];
  if (v1)
  {
    v4 = String._bridgeToObjectiveC()();
    [v3 setServerInfo:v4];
  }

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1003179B4;
  v5 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003E9690, &unk_10034B2D8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100318088;
  v0[13] = &unk_1003B5198;
  v0[14] = v5;
  [v3 performRequestWithHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003179B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_100317C80;
  }

  else
  {
    v2 = sub_100317AC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100317AC4()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;

      v4 = v3;
      v5 = 0;
      goto LABEL_10;
    }
  }

  if (qword_1003D7F98 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FABA8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "AccountUpdatePerformer - Request did not receive a viable response.", v9, 2u);
  }

  v10 = *(v0 + 192);

  type metadata accessor for AAError(0);
  *(v0 + 144) = -4402;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001530B4();
  _BridgedStoredNSError.init(_:userInfo:)();

  v4 = *(v0 + 80);
  v5 = 1;
LABEL_10:
  v11 = *(v0 + 8);

  return v11(v4, v5);
}

uint64_t sub_100317C80(uint64_t a1)
{
  v2 = v1[24];
  swift_willThrow();

  v3 = v1[25];
  v4 = v1[1];

  return v4(v3, 1);
}

id sub_100317CF4(void *a1, id a2, char a3)
{
  v3 = a2;
  if ((a3 & 1) == 0)
  {
    v5 = [a2 error];
    if (!v5)
    {
      [a1 aa_updateWithProvisioningResponse:v3];
      v25 = a1;
      return a1;
    }

    v6 = v5;
    if (qword_1003D7F98 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FABA8);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "AccountUpdatePerformer - Provisioning response contained an error: %@", v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    swift_getErrorValue();
    v15 = sub_1002569F8(v29, v30);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v15 + 16))
    {
      v18 = sub_1003084DC(v16, v17);
      v20 = v19;

      if (v20)
      {
        sub_10000DB1C(*(v15 + 56) + 32 * v18, v31);

        if (swift_dynamicCast())
        {
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            _os_log_impl(&_mh_execute_header, v21, v22, "AccountUpdatePerformer - Provisioning response contains a protocol error.", v23, 2u);
          }

          v24 = sub_100319254(a1, v27, v28, v3);

          if (v24)
          {
            sub_100318160(a1);
          }
        }

        return v6;
      }
    }

    else
    {
    }

    return v6;
  }

  swift_errorRetain();
  return v3;
}

uint64_t sub_100318014()
{
  sub_10000839C(v0 + 2);

  sub_10000839C(v0 + 9);
  sub_10000839C(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_100318088(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

id sub_100318160(void *a1)
{
  sub_100040738((v1 + 14), v12);
  v3 = sub_1000080F8(v12, v12[3]);
  result = [a1 aa_altDSID];
  if (result)
  {
    v5 = result;
    v6 = [*(*v3 + 16) aa_appleAccountWithAltDSID:result];

    if (v6)
    {

      sub_10000839C(v12);
      v7 = v1[12];
      v8 = v1[13];
      sub_1000080F8(v1 + 9, v7);
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = a1;
      v10 = *(v8 + 8);

      v11 = a1;
      v10(&unk_10034B2C8, v9, v7, v8);
    }

    else
    {
      return sub_10000839C(v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003182A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1003182C0, 0, 0);
}

uint64_t sub_1003182C0()
{
  if (qword_1003D7F98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FABA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccountUpdatePerformer - Saving existing account for suspension/terms.", v4, 2u);
  }

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_1000080F8((v6 + 112), *(v6 + 136));
  sub_10015BC80(v5);
  if ([*(v0 + 24) aa_needsToVerifyTerms])
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "AccountUpdatePerformer - Account needs terms. Posting CFU if one doesn't exist.", v9, 2u);
    }

    v10 = swift_task_alloc();
    *(v0 + 32) = v10;
    *v10 = v0;
    v10[1] = sub_100043144;
    v11 = *(v0 + 24);

    return sub_1003185F8(v11);
  }

  else
  {
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1003185F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100318618, 0, 0);
}

uint64_t sub_100318618()
{
  v1 = v0[3];
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v0[4] = OSTransaction.init(name:)();
  v2 = v1[5];
  v3 = v1[6];
  sub_1000080F8(v1 + 2, v2);
  v7 = (*(v3 + 72) + **(v3 + 72));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_100318780;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_100318780(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_100318FA0;
  }

  else
  {
    v4 = sub_100318894;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100318894()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
LABEL_38:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v0[6];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_21:

    if (qword_1003D7F98 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v0[8] = sub_100008D04(v18, qword_1003FABA8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "AccountUpdatePerformer - Posting the verify terms CFU.", v21, 2u);
    }

    v22 = v0[3];

    v23 = v22[5];
    v24 = v22[6];
    sub_1000080F8(v22 + 2, v23);
    v25 = AAFollowUpIdentifierVerifyTerms;
    v39 = (*(v24 + 24) + **(v24 + 24));
    v26 = swift_task_alloc();
    v0[9] = v26;
    *v26 = v0;
    v26[1] = sub_100318D94;
    v27 = v0[2];

    return v39(v25, v27, 0, v23, v24);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[6];
  if (!v2)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v3 + 32;
  while (1)
  {
    if (v5)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_37;
      }

      v8 = *(v7 + 8 * v4);
    }

    v1 = v8;
    v0 = (v4 + 1);
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v9 = [v8 uniqueIdentifier];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_5:

      goto LABEL_6;
    }

    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v13)
    {
      goto LABEL_5;
    }

    if (v11 == v14 && v13 == v15)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      v29 = v38;
      goto LABEL_29;
    }

LABEL_6:

    ++v4;
    if (v0 == v2)
    {
      v0 = v38;
      goto LABEL_21;
    }
  }

  v29 = v38;

LABEL_29:

  if (qword_1003D7F98 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100008D04(v30, qword_1003FABA8);
  v31 = v1;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "AccountUpdatePerformer - Verify terms CFU is already posted: %@", v34, 0xCu);
    sub_100008D3C(v35, &unk_1003D9140, &qword_10033E640);

    v31 = v32;
    v32 = v36;
  }

  OSTransaction.complete()();

  v37 = v29[1];

  return v37();
}

uint64_t sub_100318D94(char a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1003190D4;
  }

  else
  {
    v4 = sub_100318EAC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100318EAC(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 88);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccountUpdatePerformer - Posted the verify terms CFU with success %{BOOL}d", v5, 8u);
  }

  OSTransaction.complete()();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_100318FA0()
{
  if (qword_1003D7F98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FABA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccountUpdatePerformer - Encountered error posting verify terms CFU.", v4, 2u);
  }

  OSTransaction.complete()();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003190D4()
{
  if (qword_1003D7F98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FABA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AccountUpdatePerformer - Encountered error posting verify terms CFU.", v4, 2u);
  }

  OSTransaction.complete()();

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_100319208()
{
  result = qword_1003E9688;
  if (!qword_1003E9688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E9688);
  }

  return result;
}

id sub_100319254(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == a3)
  {

    goto LABEL_13;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_13:
    if (qword_1003D7F98 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FABA8);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "AccountUpdatePerformer - Account needing terms: %@", v19, 0xCu);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);
    }

    v14 = [v16 aa_needsToVerifyTerms] ^ 1;
    [v16 aa_setNeedsToVerifyTerms:1];
    return v14;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v11 == a3)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14;
    }
  }

  if (qword_1003D7F98 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FABA8);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "AccountUpdatePerformer - Suspended account: %@", v27, 0xCu);
    sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
  }

  result = [a4 responseDictionary];
  if (result)
  {
    v30 = result;
    v31 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    *&v36[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v36[0] + 1) = v32;
    AnyHashable.init<A>(_:)();
    if (*(v31 + 16) && (v33 = sub_10031B060(v37), (v34 & 1) != 0))
    {
      sub_10000DB1C(*(v31 + 56) + 32 * v33, v36);
      sub_1000526B0(v37);

      sub_100070AF0(v36, &v38);
      v35 = [v24 aa_suspensionInfo];
      v14 = v35 == 0;
      if (v35)
      {
      }

      sub_1000080F8(&v38, v39);
      [v24 setAccountProperty:_bridgeAnythingToObjectiveC<A>(_:)() forKey:kAAProtocolSuspendedInfoKey];
      swift_unknownObjectRelease();
      sub_10000839C(&v38);
    }

    else
    {

      sub_1000526B0(v37);
      return 0;
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003196D0()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100319710()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000082A8;

  return sub_1003182A0(v2, v3);
}

uint64_t sub_1003197D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E69747563657865;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7964616572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6E69747563657865;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x64656873696E6966;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7964616572;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1003198E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100319984(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100319A14(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100319AB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10031A1D8(*a1);
  *a2 = result;
  return result;
}

void sub_100319AE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E69747563657865;
  if (v2 != 1)
  {
    v5 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7964616572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_100319B44(char a1)
{
  v3 = OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state;
  v4 = String._bridgeToObjectiveC()();

  [v1 willChangeValueForKey:v4];

  v5 = String._bridgeToObjectiveC()();

  [v1 willChangeValueForKey:v5];

  *(v1 + v3) = a1;
  v6 = String._bridgeToObjectiveC()();

  [v1 didChangeValueForKey:v6];

  v7 = String._bridgeToObjectiveC()();

  [v1 didChangeValueForKey:v7];
}

uint64_t sub_100319E38()
{
  if ([v0 isCancelled])
  {
    if (v0[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] && v0[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] == 1)
    {
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v1 & 1) == 0)
      {
        v2 = 1;
        return v2 & 1;
      }
    }
  }

  if (v0[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] && v0[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] != 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v2 & 1;
}

uint64_t sub_100319F7C()
{
  result = [v0 isCancelled];
  if ((result & 1) == 0)
  {
    sub_100319B44(1);
    v2 = *&v0[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    v3 = swift_allocObject();
    swift_unknownObjectUnownedInit();

    v2(sub_10031A25C, v3);
  }

  return result;
}

void sub_10031A038(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100319B44(2);
}

id sub_10031A104(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AsyncOperation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10031A184()
{
  result = qword_1003E96D0;
  if (!qword_1003E96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E96D0);
  }

  return result;
}

unint64_t sub_10031A1D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3DC0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10031A224()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10031A264(uint64_t a1, unint64_t a2, void *a3)
{
  if ((AAUnderTest.getter() & 1) == 0)
  {
    v6 = [a3 infoDictionary];
    if (v6)
    {
      v7 = v6;
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v8 + 16) && (v9 = sub_1003084DC(a1, a2), (v10 & 1) != 0))
      {
        sub_10000DB1C(*(v8 + 56) + 32 * v9, v28);

        if (swift_dynamicCast())
        {
          return v27;
        }
      }

      else
      {
      }

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100008D04(v12, qword_1003FAA40);

      v13 = a3;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v28[0] = v18;
        *v16 = 136315394;
        *(v16 + 4) = sub_10021145C(a1, a2, v28);
        *(v16 + 12) = 2112;
        *(v16 + 14) = v13;
        *v17 = v13;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unable to read %s from Info.plist of %@", v16, 0x16u);
        sub_100083380(v17);

        sub_10000839C(v18);
      }
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100008D04(v20, qword_1003FAA40);
      v21 = a3;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v22, v23, "Unable to load Info.plist of %@", v24, 0xCu);
        sub_100083380(v25);
      }
    }
  }

  return 0;
}

uint64_t sub_10031A5C8(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v12)
    {
      return 1;
    }
  }

  else
  {
    sub_100008D3C(v15, &qword_1003D87C8, qword_100344800);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Client is missing management entitlement: %@", v9, 0xCu);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);
  }

  return 0;
}

uint64_t sub_10031A7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10031A810(uint64_t result, int a2, int a3)
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

uint64_t AAUnderTest.getter()
{
  v0 = [objc_opt_self() isInternalBuild];
  v1 = objc_opt_self();
  v2 = [v1 processInfo];
  v3 = [v2 environment];

  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v4 + 16) && (v5 = sub_1003084DC(0xD00000000000001BLL, 0x8000000100334FE0), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA40);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v0;
    _os_log_impl(&_mh_execute_header, v9, v10, "internalBuild: %{BOOL}d", v11, 8u);
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v7 != 0;

    _os_log_impl(&_mh_execute_header, v12, v13, "Is XCTestConfigurationFilePath nil: %{BOOL}d", v14, 8u);
  }

  else
  {
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    sub_100005814(&qword_1003E26F0, &qword_10034B4C0);
    v19 = String.init<A>(describing:)();
    v21 = sub_10021145C(v19, v20, &v27);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "ProcessInfo.processInfo.environment[XCTestConfigurationFilePath]: %s", v17, 0xCu);
    sub_10000839C(v18);

    if (!v0)
    {
      return v0 & 1;
    }
  }

  else
  {

    if (!v0)
    {
      return v0 & 1;
    }
  }

  v22 = [v1 processInfo];
  v23 = [v22 environment];

  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v24 + 16))
  {
    sub_1003084DC(0xD00000000000001BLL, 0x8000000100334FE0);
    LOBYTE(v0) = v25;
  }

  else
  {
    LOBYTE(v0) = 0;
  }

  return v0 & 1;
}

uint64_t AAPrettyBool(_:)(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return 5457241;
  }

  else
  {
    return 20302;
  }
}

uint64_t sub_10031AC8C()
{
  qword_1003E96D8 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t _AADActivityCreate(_:dso:)(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1003D7FA0 == -1)
        {
LABEL_5:
          v5 = qword_1003E96D8;

          return _os_activity_create(dso, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1003D7FA0 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1003E96D8, OS_ACTIVITY_FLAG_DEFAULT);
}

void *sub_10031AED4(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_10031AF48@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_10031AF8C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10031B5DC(&qword_1003DB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10031B370(a1, v2, &type metadata accessor for UUID, &qword_1003DB088, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_10031B060(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10031B2A8(a1, v4);
}

unint64_t sub_10031B0A4(uint64_t a1)
{
  type metadata accessor for URL();
  sub_10031B5DC(&qword_1003E44C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10031B370(a1, v2, &type metadata accessor for URL, &unk_1003E96E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

unint64_t sub_10031B178(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10031B510(a1, v4, &unk_1003E6930, AAMessagingDestination_ptr);
}

unint64_t sub_10031B1C8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_10031B510(a1, v4, &qword_1003DEBF0, CKRecordZoneID_ptr);
}

unint64_t sub_10031B218(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10031B624(a1, v2);
}

unint64_t sub_10031B2A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000D1064(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000526B0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10031B370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10031B5DC(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_10031B510(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_100016034(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_10031B5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10031B624(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10031B72C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd14ContactsHelper__contactsManager;
  v2 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContactsHelper(uint64_t a1)
{
  result = qword_1003E9720;
  if (!qword_1003E9720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10031B828(uint64_t a1)
{
  sub_10031B8B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10031B8B8(uint64_t a1)
{
  if (!qword_1003E9730[0])
  {
    sub_100008CBC(&unk_1003D9820, &unk_10033EFD0);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, qword_1003E9730);
    }
  }
}

uint64_t Data.hash<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = v14 - v9;
  v14[0] = a2;
  v14[1] = a3;
  sub_1002BEB64();
  static HashFunction.hash<A>(data:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_10031D944(v10, AssociatedTypeWitness, *(AssociatedConformanceWitness + 32));
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v12;
}

void *sub_10031BA74(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_1002E0224(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
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
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = __DataStorage._offset.getter();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = __DataStorage._offset.getter();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_100005814(&unk_1003E7720, &qword_100346B60);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10033EB30;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = String.init(format:_:)();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_1002E0224((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t Data.encrypt(using:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v79 = a3;
  v80 = a4;
  v78 = a5;
  v8 = sub_100005814(&qword_1003E97F0, &qword_10034B528);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - v9;
  v11 = type metadata accessor for AES.GCM.SealedBox();
  v76 = *(v11 - 8);
  v77 = v11;
  __chkstk_darwin(v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AES.GCM.Nonce();
  v81 = *(v14 - 8);
  v82 = v14;
  __chkstk_darwin(v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SymmetricKey();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v21)
    {
      if (BYTE6(a2) == 16)
      {
        goto LABEL_18;
      }

LABEL_11:
      if (v21 == 2)
      {
        v27 = *(a1 + 16);
        v26 = *(a1 + 24);
        v24 = __OFSUB__(v26, v27);
        v28 = v26 - v27;
        if (v24)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v28 == 32)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v21 == 1)
        {
          if (!__OFSUB__(HIDWORD(a1), a1))
          {
            if (HIDWORD(a1) - a1 == 32)
            {
              goto LABEL_18;
            }

            goto LABEL_22;
          }

          goto LABEL_54;
        }

        if (BYTE6(a2) == 32)
        {
          goto LABEL_18;
        }
      }

LABEL_22:
      sub_10031E0F8();
      swift_allocError();
      *v34 = 10;
      return swift_willThrow();
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v21 != 2)
  {
    goto LABEL_22;
  }

  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v24 = __OFSUB__(v22, v23);
  v25 = v22 - v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v25 != 16)
  {
    goto LABEL_11;
  }

LABEL_18:
  v85 = a1;
  v86 = a2;
  sub_100015D6C(a1, a2);
  SymmetricKey.init<A>(data:)();
  v29 = sub_10031DFA8(0x10uLL);
  if (v5)
  {
    return (*(v18 + 8))(v20, v17);
  }

  v75 = v13;
  v85 = v29;
  v86 = v30;
  v32 = v29;
  v33 = v30;
  sub_100015D6C(v29, v30);
  sub_1002BEB64();
  AES.GCM.Nonce.init<A>(data:)();
  v73 = v32;
  v74 = v33;
  v85 = v79;
  v86 = v80;
  v35 = v81;
  v36 = v82;
  (*(v81 + 16))(v10, v16, v82);
  (*(v35 + 56))(v10, 0, 1, v36);
  static AES.GCM.seal<A>(_:using:nonce:)();
  sub_100008D3C(v10, &qword_1003E97F0, &qword_10034B528);
  v37 = AES.GCM.SealedBox.tag.getter();
  v79 = v38;
  v80 = v37;
  v39 = AES.GCM.SealedBox.ciphertext.getter();
  v87 = &type metadata for Data;
  v88 = &protocol witness table for Data;
  v85 = v39;
  v86 = v40;
  v41 = sub_1000080F8(&v85, &type metadata for Data);
  v42 = *v41;
  v43 = v41[1];
  v44 = v43 >> 62;
  if ((v43 >> 62) > 1)
  {
    if (v44 != 2)
    {
      memset(v83, 0, 14);
      v60 = v83;
      v59 = v83;
LABEL_50:
      sub_10031D508(v60, v59, v84);
      v46 = v81;
      v45 = v82;
      goto LABEL_51;
    }

    v47 = *(v42 + 16);
    v72 = *(v42 + 24);
    v48 = __DataStorage._bytes.getter();
    if (v48)
    {
      v49 = v48;
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v47, v50))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v71 = (v47 - v50 + v49);
    }

    else
    {
      v71 = 0;
    }

    v61 = v72 - v47;
    if (!__OFSUB__(v72, v47))
    {
      v62 = __DataStorage._length.getter();
      if (v62 >= v61)
      {
        v63 = v61;
      }

      else
      {
        v63 = v62;
      }

      v60 = v71;
      v64 = &v71[v63];
      if (v71)
      {
        v59 = v64;
      }

      else
      {
        v59 = 0;
      }

      goto LABEL_50;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v46 = v81;
  v45 = v82;
  if (v44)
  {
    v51 = v42;
    v52 = v42 >> 32;
    v72 = v52 - v51;
    if (v52 >= v51)
    {
      v53 = v51;
      v54 = __DataStorage._bytes.getter();
      if (!v54)
      {
LABEL_34:
        v56 = __DataStorage._length.getter();
        if (v56 >= v72)
        {
          v57 = v72;
        }

        else
        {
          v57 = v56;
        }

        v58 = (v57 + v54);
        if (v54)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v60 = v54;
        goto LABEL_50;
      }

      v55 = __DataStorage._offset.getter();
      if (!__OFSUB__(v53, v55))
      {
        v54 += v53 - v55;
        goto LABEL_34;
      }

LABEL_59:
      __break(1u);
    }

    goto LABEL_56;
  }

  v83[0] = *v41;
  LOWORD(v83[1]) = v43;
  BYTE2(v83[1]) = BYTE2(v43);
  BYTE3(v83[1]) = BYTE3(v43);
  BYTE4(v83[1]) = BYTE4(v43);
  BYTE5(v83[1]) = BYTE5(v43);
  sub_10031D508(v83, v83 + BYTE6(v43), v84);
LABEL_51:
  (*(v76 + 8))(v75, v77);
  (*(v46 + 8))(v16, v45);
  (*(v18 + 8))(v20, v17);
  v65 = v84[0];
  v66 = v84[1];
  result = sub_10000839C(&v85);
  v67 = v78;
  v68 = v74;
  *v78 = v73;
  v67[1] = v68;
  v69 = v79;
  v67[2] = v80;
  v67[3] = v69;
  v67[4] = v65;
  v67[5] = v66;
  return result;
}

uint64_t EncryptedData.decrypt(using:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for AES.GCM.SealedBox();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AES.GCM.Nonce();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v19)
    {
      if (BYTE6(a2) == 16)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v19 != 2)
  {
    goto LABEL_22;
  }

  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = __OFSUB__(v20, v21);
  v23 = v20 - v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v23 == 16)
  {
LABEL_18:
    *&v36 = a1;
    *(&v36 + 1) = a2;
    sub_100015D6C(a1, a2);
    SymmetricKey.init<A>(data:)();
    v39 = *v2;
    v36 = *v2;
    sub_1001E9B50(&v39, &v35);
    a2 = sub_1002BEB64();
    v27 = v40;
    AES.GCM.Nonce.init<A>(data:)();
    if (v27)
    {
      (*(v15 + 8))(v18, v14);
    }

    else
    {
      v40 = v14;
      (*(v32 + 16))(v11, v13, v33);
      v28 = v2[2];
      v35 = v2[1];
      v36 = v28;
      v37 = v35;
      v38 = v28;
      sub_1001E9B50(&v38, v34);
      sub_1001E9B50(&v37, v34);
      AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
      a2 = static AES.GCM.open(_:using:)();
      (*(v30 + 8))(v7, v31);
      (*(v32 + 8))(v13, v33);
      (*(v15 + 8))(v18, v40);
    }

    return a2;
  }

LABEL_11:
  if (v19 != 2)
  {
    if (v19 == 1)
    {
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (HIDWORD(a1) - a1 == 32)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      }

      goto LABEL_26;
    }

    if (BYTE6(a2) == 32)
    {
      goto LABEL_18;
    }

LABEL_22:
    sub_10031E0F8();
    swift_allocError();
    *v29 = 10;
    swift_willThrow();
    return a2;
  }

  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  v22 = __OFSUB__(v24, v25);
  v26 = v24 - v25;
  if (!v22)
  {
    if (v26 == 32)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

Swift::Int sub_10031CA04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10034B7F8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10031CA8C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10034B7F8[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10031CAD8@<X0>(Swift::Int *a1@<X0>, appleaccountd::CryptoError_optional *a2@<X8>)
{
  result = _s13appleaccountd11CryptoErrorO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_10031CB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10031E490();
  v5 = sub_100005BB0();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t Data.hexadecimalString.getter(unint64_t a1, unint64_t a2)
{
  sub_10031BA74(a1, a2);
  sub_100005814(&qword_1003DA1E0, &qword_100345E50);
  sub_10005A668();
  v2 = BidirectionalCollection<>.joined(separator:)();

  return v2;
}

uint64_t EncryptedData.init(initializationVector:tag:cipherText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t Data.hmac<A>(key:using:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v21 = a5;
  v9 = type metadata accessor for HashedAuthenticationCode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  sub_100015D6C(a1, a2);
  SymmetricKey.init<A>(data:)();
  v22 = v20;
  v23 = v21;
  sub_1002BEB64();
  static HMAC.authenticationCode<A>(for:using:)();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_10031D944(v12, v9, WitnessTable);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  return v18;
}

uint64_t EncryptedData.initializationVector.getter()
{
  v1 = *v0;
  sub_100015D6C(*v0, *(v0 + 8));
  return v1;
}

uint64_t EncryptedData.tag.getter()
{
  v1 = *(v0 + 16);
  sub_100015D6C(v1, *(v0 + 24));
  return v1;
}

uint64_t EncryptedData.cipherText.getter()
{
  v1 = *(v0 + 32);
  sub_100015D6C(v1, *(v0 + 40));
  return v1;
}

double EncryptedData.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10031E14C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t EncryptedData.encode(to:)(void *a1)
{
  sub_1000080F8(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v10 = *v1;
  v5 = *v1;
  sub_10003E968(v6, v7);
  sub_1001E9B50(&v10, v4);
  sub_1000EE774();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_100012324(v5, *(&v5 + 1));
  if (!v2)
  {
    v9 = v1[1];
    v5 = v1[1];
    sub_10003E968(v6, v7);
    sub_1001E9B50(&v9, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100012324(v5, *(&v5 + 1));
    v8 = v1[2];
    v5 = v1[2];
    sub_10003E968(v6, v7);
    sub_1001E9B50(&v8, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100012324(v5, *(&v5 + 1));
  }

  return sub_10000839C(v6);
}

uint64_t sub_10031D0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_10031D6E4(&type metadata for UInt8, sub_10031E504, v10, a1, a2, &type metadata for UInt8, &type metadata for Never, TupleTypeMetadata2, &protocol witness table for Never, v9);
}

uint64_t sub_10031D17C(uint64_t *a1, size_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      *(&bytes + 7) = 0;
      *&bytes = 0;
      return SecRandomCopyBytes(kSecRandomDefault, a2, &bytes);
    }

    sub_100012324(v4, v3);
    *&bytes = v4;
    *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10033F8D0;
    sub_100012324(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v9 = *(&bytes + 1);
    v10 = *(bytes + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_25;
    }

    v11 = result;
    v12 = __DataStorage._offset.getter();
    v13 = __OFSUB__(v10, v12);
    v14 = v10 - v12;
    if (!v13)
    {
      __DataStorage._length.getter();
      result = SecRandomCopyBytes(kSecRandomDefault, a2, (v11 + v14));
      *a1 = bytes;
      a1[1] = v9 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v5)
  {
    sub_100012324(v4, v3);
    *&bytes = v4;
    WORD4(bytes) = v3;
    BYTE10(bytes) = BYTE2(v3);
    BYTE11(bytes) = BYTE3(v3);
    BYTE12(bytes) = BYTE4(v3);
    BYTE13(bytes) = BYTE5(v3);
    BYTE14(bytes) = BYTE6(v3);
    result = SecRandomCopyBytes(kSecRandomDefault, a2, &bytes);
    v7 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    *a1 = bytes;
    a1[1] = v7;
    return result;
  }

  v15 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  sub_100012324(v4, v3);
  *a1 = xmmword_10033F8D0;
  sub_100012324(0, 0xC000000000000000);
  v16 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v16 < v4)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
    {
LABEL_23:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v15 = v17;
  }

  if (v16 < v4)
  {
    goto LABEL_20;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v18 = result;
    v19 = __DataStorage._offset.getter();
    v20 = v4 - v19;
    if (!__OFSUB__(v4, v19))
    {
      __DataStorage._length.getter();
      v21 = SecRandomCopyBytes(kSecRandomDefault, a2, (v18 + v20));

      *a1 = v4;
      a1[1] = v15 | 0x4000000000000000;
      return v21;
    }

    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
  return result;
}

_BYTE *sub_10031D508@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10018F824(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10031D844(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10031D8C0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10031D59C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = *(a4 - 8);
  __chkstk_darwin(a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v9 + 16))(v11, a3, a4);
  result = dispatch thunk of Sequence._copyContents(initializing:)();
  *(a6 + v12) = result;
  return result;
}

uint64_t sub_10031D6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = __chkstk_darwin(a1);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t sub_10031D844(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10031D8C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10031D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v10 = &v29 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(v8);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  (*(v16 + 16))(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_100005814(&qword_1003E0E50, &qword_1003444A8);
  if (swift_dynamicCast())
  {
    sub_10003E950(v32, &v34);
    sub_1000080F8(&v34, v35);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v32[0] = v31;
    sub_10000839C(&v34);
    goto LABEL_34;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  sub_100008D3C(v32, &qword_1003E0E58, &unk_1003444B0);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (*(&v34 + 1) >> 60 != 15)
  {
    v32[0] = v34;
    goto LABEL_34;
  }

  v30 = v34;
  v17 = dispatch thunk of Sequence.underestimatedCount.getter();
  *&v32[0] = sub_10018F8DC(v17);
  *(&v32[0] + 1) = v18;
  __chkstk_darwin(*&v32[0]);
  *(&v29 - 4) = a2;
  *(&v29 - 3) = a3;
  *(&v29 - 2) = a1;
  Data._Representation.withUnsafeMutableBytes<A>(_:)();
  v19 = *&v10[*(TupleTypeMetadata2 + 48)];
  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v20 = *(&v32[0] + 1) >> 62;
  if ((*(&v32[0] + 1) >> 62) <= 1)
  {
    if (v20)
    {
      if (__OFSUB__(DWORD1(v32[0]), v32[0]))
      {
        goto LABEL_38;
      }

      if (v19 == DWORD1(v32[0]) - LODWORD(v32[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v19 == BYTE14(v32[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v20 == 2)
  {
    v22 = *(*&v32[0] + 16);
    v21 = *(*&v32[0] + 24);
    v23 = __OFSUB__(v21, v22);
    v24 = v21 - v22;
    if (v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v19 == v24)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v20 == 2)
    {
      v25 = *(*&v32[0] + 24);
    }

    else if (v20 == 1)
    {
      v25 = *&v32[0] >> 32;
    }

    else
    {
      v25 = BYTE14(v32[0]);
    }

LABEL_31:
    if (v25 >= v19)
    {
      Data._Representation.replaceSubrange(_:with:count:)();
LABEL_33:
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v19)
  {
    v25 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v34 = 0;
  *(&v34 + 7) = 0;
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v31) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v26) = 0;
  do
  {
    *(&v34 + v26) = v31;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v26 == 14)
    {
      *&v31 = v34;
      *(&v31 + 6) = *(&v34 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v26) = 0;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  while ((BYTE1(v31) & 1) == 0);
  if (v26)
  {
    *&v31 = v34;
    *(&v31 + 6) = *(&v34 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100015D58(v30, *(&v30 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  sub_100015D58(v30, *(&v30 + 1));
LABEL_34:
  v27 = v32[0];
  sub_100015D6C(*&v32[0], *(&v32[0] + 1));
  sub_100012324(v27, *(&v27 + 1));
  return v27;
}

uint64_t sub_10031DEE0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_10018F804(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
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

uint64_t _s13appleaccountd11CryptoErrorO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if ((a1 + 4320) > 0x14)
  {
    return 13;
  }

  else
  {
    return asc_1003350DE[a1 + 4320];
  }
}

uint64_t sub_10031DFA8(size_t a1)
{
  v13 = sub_10031DEE0(a1);
  v14 = v3;
  v4 = sub_10031D17C(&v13, a1);
  if (v1)
  {
    return sub_100012324(v13, v14);
  }

  v5 = v4;
  if (v4)
  {
    v6 = static os_log_type_t.error.getter();
    sub_100005814(&unk_1003E7720, &qword_100346B60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10033EB30;
    *(v7 + 56) = &type metadata for Int32;
    *(v7 + 64) = &protocol witness table for Int32;
    *(v7 + 32) = v5;
    sub_10030F5CC();
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v8, "Error generating random data. Error code - %i", v13);

    v9 = _s13appleaccountd11CryptoErrorO8rawValueACSgSi_tcfC_0(v5);
    sub_10031E0F8();
    swift_allocError();
    if (v9 == 13)
    {
      v11 = 8;
    }

    else
    {
      v11 = v9;
    }

    *v10 = v11;
    swift_willThrow();
    return sub_100012324(v13, v14);
  }

  return v13;
}

unint64_t sub_10031E0F8()
{
  result = qword_1003E97F8;
  if (!qword_1003E97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E97F8);
  }

  return result;
}

uint64_t sub_10031E14C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000080F8(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_10000839C(a1);
  }

  sub_10003E968(v9, v10);
  sub_1000EE61C();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  sub_10003E968(v9, v10);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v11 = v8;
  sub_10003E968(v9, v10);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  sub_10000839C(v9);
  sub_100015D6C(v7, v8);
  v5 = v11;
  sub_100015D6C(v7, v11);
  sub_100015D6C(v7, v8);
  sub_10000839C(a1);
  sub_100012324(v7, v8);
  sub_100012324(v7, v5);
  result = sub_100012324(v7, v8);
  *a2 = v7;
  a2[1] = v8;
  a2[2] = v7;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  return result;
}

unint64_t sub_10031E36C()
{
  result = qword_1003E9800;
  if (!qword_1003E9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9800);
  }

  return result;
}

uint64_t sub_10031E3D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10031E424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10031E490()
{
  result = qword_1003E9808;
  if (!qword_1003E9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9808);
  }

  return result;
}

uint64_t sub_10031E53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for P384.KeyAgreement.PublicKey();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10031E608(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for P384.KeyAgreement.PublicKey();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for HPKEEnvelope(uint64_t a1)
{
  result = qword_1003E9868;
  if (!qword_1003E9868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10031E700(uint64_t a1)
{
  result = type metadata accessor for P384.KeyAgreement.PublicKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10031E77C()
{
  if (*v0)
  {
    return 0x6C75737061636E65;
  }

  else
  {
    return 0x6554726568706963;
  }
}

uint64_t sub_10031E7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6554726568706963 && a2 == 0xEA00000000007478;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C75737061636E65 && a2 == 0xEF79654B64657461)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10031E8B4(uint64_t a1)
{
  v2 = sub_10031EE80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10031E8F0(uint64_t a1)
{
  v2 = sub_10031EE80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10031E92C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for P384.KeyAgreement.PublicKey();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&qword_1003E98A0, &qword_10034B8D0);
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v10 = type metadata accessor for HPKEEnvelope(0);
  __chkstk_darwin(v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v32 = a1;
  sub_1000080F8(a1, v13);
  sub_10031EE80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000839C(v32);
  }

  v26 = v6;
  v27 = v12;
  v14 = v30;
  v15 = v4;
  v35 = 0;
  sub_1000EE61C();
  v16 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v34;
  v18 = v27;
  v25[1] = v34;
  v25[2] = v33;
  *v27 = v33;
  v18[1] = v17;
  v35 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v14;
  v20 = v33;
  v21 = v34;
  sub_100015D6C(v33, v34);
  sub_1002C2970();
  v22 = v26;
  P384.KeyAgreement.PublicKey.init<A>(derRepresentation:)();
  (*(v19 + 8))(v9, v16);
  sub_100012324(v20, v21);
  v23 = v27;
  (*(v28 + 32))(v27 + *(v10 + 20), v22, v15);
  sub_10031EED4(v23, v29);
  sub_10000839C(v32);
  return sub_10031EF38(v23);
}

uint64_t sub_10031EC98(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003E98B0, &qword_10034B8D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000080F8(a1, a1[3]);
  sub_10031EE80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_100015D6C(v14, v9);
  sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100012324(v14, v15);
  if (!v2)
  {
    type metadata accessor for HPKEEnvelope(0);
    v14 = P384.KeyAgreement.PublicKey.derRepresentation.getter();
    v15 = v10;
    v13 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100012324(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10031EE80()
{
  result = qword_1003E98A8;
  if (!qword_1003E98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E98A8);
  }

  return result;
}

uint64_t sub_10031EED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPKEEnvelope(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031EF38(uint64_t a1)
{
  v2 = type metadata accessor for HPKEEnvelope(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10031EFA8()
{
  result = qword_1003E98B8;
  if (!qword_1003E98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E98B8);
  }

  return result;
}

unint64_t sub_10031F000()
{
  result = qword_1003E98C0;
  if (!qword_1003E98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E98C0);
  }

  return result;
}

unint64_t sub_10031F058()
{
  result = qword_1003E98C8;
  if (!qword_1003E98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E98C8);
  }

  return result;
}

uint64_t sub_10031F0D4()
{
  v0 = MKBGetDeviceLockState();
  if (v0 > 1)
  {
    if (v0 == 3)
    {
      return 5;
    }

    if (v0 == 2)
    {
      return 4;
    }

    return 0;
  }

  if (!v0)
  {
    return 3;
  }

  if (v0 != 1)
  {
    return 0;
  }

  if (MKBDeviceUnlockedSinceBoot())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10031F174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v15 = *(v22 - 8);
  __chkstk_darwin(v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v6 + 16);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v6;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a4;
  v18[7] = a5;
  aBlock[4] = sub_10031FFD0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B5628;
  v19 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100161C40(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v23 + 8))(v14, v12);
  (*(v15 + 8))(v17, v22);
}

uint64_t sub_10031F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = _convertErrorToNSError(_:)();
  v9 = [v8 aa_partialErrorsByName];

  if (!v9)
  {
    goto LABEL_26;
  }

  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v10 + 16))
  {

LABEL_26:
    swift_beginAccess();

    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    sub_1002CEFC4(a1, a3, a4, isUniquelyReferenced_nonNull_native);

    *(a2 + 24) = v50;
    v42 = swift_endAccess();
    return a5(v42);
  }

  v43 = a5;
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v44 = v15;
  v45 = v10 + 64;
  v46 = v10;
  v47 = a2;
  while (v14)
  {
LABEL_13:
    v18 = __clz(__rbit64(v14)) | (v16 << 6);
    v19 = (*(v10 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v10 + 56) + 8 * v18);

    swift_errorRetain();

    v23._countAndFlagsBits = 59;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = v20;
    v24._object = v21;
    String.append(_:)(v24);
    swift_beginAccess();
    swift_errorRetain();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    v28 = sub_1003084DC(a3, a4);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_29;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (v25)
      {
        if (v27)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1002CFE94();
        if (v32)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_1002CC470(v31, v25);
      v33 = sub_1003084DC(a3, a4);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_31;
      }

      v28 = v33;
      if (v32)
      {
LABEL_6:
        *(v26[7] + 8 * v28) = v22;

        goto LABEL_7;
      }
    }

    v26[(v28 >> 6) + 8] |= 1 << v28;
    v35 = (v26[6] + 16 * v28);
    *v35 = a3;
    v35[1] = a4;
    *(v26[7] + 8 * v28) = v22;
    v36 = v26[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_30;
    }

    v26[2] = v38;
LABEL_7:
    v14 &= v14 - 1;
    a2 = v47;
    *(v47 + 24) = v26;
    swift_endAccess();

    v11 = v45;
    v10 = v46;
    v15 = v44;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return v43(v39);
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10031F804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10031FCF8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B55D8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100161C40(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

void sub_10031FAD4(uint64_t a1, void (*a2)())
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (*(v4 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = v4;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100256CF4(inited + 32);
    sub_100161C40(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    v7 = v8;
    a2();
  }

  else
  {
    (a2)(0);
  }
}

uint64_t sub_10031FC54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10031FCB8()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10031FD04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10031FD1C()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = sub_100071C74();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_100161C40(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = sub_100308AA8(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_10031FF80()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10031FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v4 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 112) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100306680(0, *(v8 + 2) + 1, 1, v8);
    *(v4 + 112) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100306680((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[24 * v11];
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  *(v12 + 6) = a3;
  *(v4 + 112) = v8;
  swift_endAccess();
  v13 = qword_1003D7F20;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA40);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = a1;

    _os_log_impl(&_mh_execute_header, v15, v16, "Serial Queue: Operation added to queue: %lu", v17, 0xCu);
  }

  else
  {
  }

  sub_1003201C4();
  return a1;
}

void sub_1003201C4()
{
  v1 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  if (*(v0 + 120) == 1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA40);
    v21 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v21, v5, "Serial Queue: Queue is running, so not dequeueing next item immediately", v6, 2u);
    }

    v7 = v21;

    return;
  }

  swift_beginAccess();
  v8 = *(v0 + 112);
  if (v8[2])
  {
    *(v0 + 120) = 1;
    swift_beginAccess();
    if (v8[2])
    {
      v9 = v8[4];
      v10 = v8[5];
      v11 = v8[6];

      v12 = v0;
      sub_100320D68(0, 1);
      swift_endAccess();
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
      v14 = sub_100320E28();
      v15 = swift_allocObject();
      v15[2] = v12;
      v15[3] = v14;
      v15[4] = v9;
      v15[5] = v10;
      v15[6] = v11;
      v15[7] = v12;
      swift_retain_n();
      sub_1000BCD5C(0, 0, v3, &unk_10034BC10, v15);

      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_1003D7F20 != -1)
  {
LABEL_17:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA40);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Serial Queue: Queue is empty, all operations are completed", v19, 2u);
  }
}

uint64_t sub_100320508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10032052C, a7, 0);
}

uint64_t sub_10032052C()
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_100008D04(v1, qword_1003FAA40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;

    _os_log_impl(&_mh_execute_header, v2, v3, "Serial Queue: Begin - performing task with id: %lu", v5, 0xCu);
  }

  else
  {
  }

  v8 = (v0[3] + *v0[3]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100320718;

  return v8();
}

uint64_t sub_100320718()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100320958;
  }

  else
  {
    v4 = sub_100320844;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100320844()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[2];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;

    _os_log_impl(&_mh_execute_header, v1, v2, "Serial Queue: End - performing task with id: %lu", v4, 0xCu);
  }

  else
  {
  }

  *(v0[5] + 120) = 0;
  sub_1003201C4();
  v5 = v0[1];

  return v5();
}

uint64_t sub_100320958()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[2];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 134218242;
    *(v4 + 4) = v3;

    *(v4 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Serial Queue: Error performing task with id: %lu: %@", v4, 0x16u);
    sub_100083380(v5);
  }

  else
  {
  }

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v7, v8, "Serial Queue: End - performing task with id: %lu", v10, 0xCu);
  }

  else
  {
  }

  *(v0[5] + 120) = 0;
  sub_1003201C4();
  v11 = v0[1];

  return v11();
}

uint64_t sub_100320B88()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_100320BE4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100320BF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100320C40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100320C90(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_100320D68(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100306680(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100320C90(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_100320E28()
{
  result = qword_1003E9B80;
  if (!qword_1003E9B80)
  {
    type metadata accessor for SerialQueue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9B80);
  }

  return result;
}

uint64_t sub_100320E7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_100320EC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_100320508(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100320F98(void *a1, uint64_t a2, void (*a3)(void *))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA40);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error building URL configuration: %@", v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    v26[0] = a2;
    v27 = 1;
    swift_errorRetain();
    a3(v26);
  }

  else if (a1)
  {
    v11 = qword_1003D7F20;
    v12 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA40);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "URL configuration built successfully.", v16, 2u);
    }

    v17 = type metadata accessor for DaemonSetupServiceURLBag();
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    v26[3] = v17;
    v26[4] = &off_1003B5708;
    v26[0] = v18;
    v27 = 0;
    v19 = v12;

    a3(v26);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA40);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No URL configuration was built...", v23, 2u);
    }

    type metadata accessor for AAError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    v26[0] = v25;
    v27 = 1;
    a3(v26);
  }

  return sub_100008D3C(v26, &qword_1003E6FB8, &qword_1003492C0);
}

Swift::Int DeviceLockState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_100321444()
{
  result = qword_1003E9CD0;
  if (!qword_1003E9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9CD0);
  }

  return result;
}

uint64_t sub_1003214A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  sub_100321960(a1, a2, a3, a4, a5);
}

uint64_t sub_1003214EC(char a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (qword_1003D7F88 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAB78);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 67109378;
    *(v13 + 4) = a1 & 1;
    *(v13 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v13 + 10) = v15;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "isWalrusStatusMismatchDetectionEnabled: Fetched new urlBag with success: %{BOOL}d and with error: %@", v13, 0x12u);
    sub_100083380(v14);

    a5 = v12;
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = [a3 configurationAtKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    _print_unlocked<A, B>(_:_:)();
    v19 = String.lowercased()();

    if (v19._countAndFlagsBits == 49 && v19._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v19._countAndFlagsBits == 1702195828 && v19._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v19._countAndFlagsBits == 7562617 && v19._object == 0xE300000000000000)
    {

      v20 = 1;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v20 & 1;
      _os_log_impl(&_mh_execute_header, v21, v22, "isWalrusStatusMismatchDetectionEnabled: %{BOOL}d", v23, 8u);
    }

    a5(v20 & 1);
    return sub_10000839C(v28);
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "isWalrusStatusMismatchDetectionEnabled: configuration(atKey) nil", v27, 2u);
    }

    return (a5)(0);
  }
}

uint64_t sub_1003218FC()
{

  return swift_deallocClassInstance();
}

void sub_100321960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = objc_opt_self();

  if ([v11 disableADPStateHealing])
  {
    if (qword_1003D7F88 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAB78);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "isWalrusStatusMismatchDetectionEnabled: Defaults are in place to prevent ADP State Healing";
    goto LABEL_12;
  }

  v17 = [objc_opt_self() sharedBag];
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = sub_100321CD0;
    v19[5] = v10;
    v23[4] = sub_100321D24;
    v23[5] = v19;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1107296256;
    v23[2] = sub_10013BB5C;
    v23[3] = &unk_1003B5848;
    v20 = _Block_copy(v23);
    v21 = v18;

    [v21 requestNewURLBagIfNecessaryWithCompletion:v20];
    _Block_release(v20);

    return;
  }

  if (qword_1003D7F88 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAB78);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "isWalrusStatusMismatchDetectionEnabled: urlBag is nil";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);
  }

LABEL_13:

  sub_1002A1248(0, a2, a3, a4);
}

uint64_t sub_100321C90()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100321CDC()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100321D30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100321D5C()
{
  result = qword_1003E9DC8;
  if (!qword_1003E9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E9DC8);
  }

  return result;
}

const char *sub_100321DB0()
{
  if (*v0 == 6)
  {
    return "Security";
  }

  else
  {
    return "AppleAccount";
  }
}

const char *sub_100321DE0()
{
  v1 = *v0;
  v2 = "OverrideAppleIDHealthCheckInterval";
  v3 = "UpdatedRCFlow";
  if (v1 != 5)
  {
    v3 = "SEPBasedICSCHealingEnabled";
  }

  v4 = "LegacyContactAutoHealing";
  if (v1 != 3)
  {
    v4 = "ageAttestation";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "DecoupleOTPeerID";
  if (v1 != 1)
  {
    v5 = "AABranding";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100321E88()
{
  v1 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - v3;
  v5 = OBJC_IVAR____TtC13appleaccountd29PersonalInformationController__akAccountManager;
  v31 = *(v2 + 16);
  v32 = v0;
  v31(&v30 - v3, v0 + OBJC_IVAR____TtC13appleaccountd29PersonalInformationController__akAccountManager, v1);
  Dependency.wrappedValue.getter();
  v6 = *(v2 + 8);
  v6(v4, v1);
  v7 = v34;
  v8 = [v34 primaryAuthKitAccount];

  if (v8)
  {
    v9 = v8;
    v31(v4, v32 + v5, v1);
    Dependency.wrappedValue.getter();
    v6(v4, v1);
    v10 = v34;
    v11 = [v34 isEligibleToMigrateToChildForAccount:v8];

    if (v11)
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100008D04(v12, qword_1003FAA40);
      v13 = v11;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = v9;
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 4) = [v13 BOOLValue];

        _os_log_impl(&_mh_execute_header, v14, v15, "returning ageMigrationEligible: %{BOOL}d", v17, 8u);
        v9 = v16;
      }

      else
      {

        v14 = v13;
      }

      v23 = [v13 BOOLValue];
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100008D04(v24, qword_1003FAA40);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "PersonalAttestationController: isEligibleToMigrateToChild is nil.", v27, 2u);
      }

      type metadata accessor for AgeAttestationError(0);
      v23 = v28;
      v33 = -4001;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10032261C();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA40);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "PersonalAttestationController: Unable to fetch authkit account.", v21, 2u);
    }

    type metadata accessor for AgeAttestationError(0);
    v23 = v22;
    v33 = -4001;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10032261C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v23 & 1;
}

uint64_t sub_100322354()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29PersonalInformationController__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29PersonalInformationController__akAccountManager;
  v4 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd29PersonalInformationController__authController;
  v6 = sub_100005814(&qword_1003DABC8, &unk_10033F890);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersonalInformationController(uint64_t a1)
{
  result = qword_1003E9E10;
  if (!qword_1003E9E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003224E8(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DA14(319);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &qword_1003DA948, &unk_1003DA950, &unk_1003436B0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10032261C()
{
  result = qword_1003D8300;
  if (!qword_1003D8300)
  {
    type metadata accessor for AgeAttestationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8300);
  }

  return result;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}