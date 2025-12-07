unint64_t sub_10036F438(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10036F5D8(int64_t a1)
{
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v5 - 8);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v7 - 8);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v9 = __chkstk_darwin(v45);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v9);
  v15 = &v38 - v14;
  v16 = *v1;
  v17 = *v1 + 56;
  v18 = -1 << *(*v1 + 32);
  v19 = (a1 + 1) & ~v18;
  if (((1 << v19) & *(v17 + 8 * (v19 >> 6))) != 0)
  {
    v43 = v13;
    v20 = ~v18;

    v21 = _HashTable.previousHole(before:)();
    v22 = *(v17 + 8 * (v19 >> 6));
    v46 = v16;
    if ((v22 & (1 << v19)) != 0)
    {
      v23 = (v21 + 1) & v20;
      v24 = *(v43 + 72);
      v25 = v39;
      v43 = v20;
      v44 = v17;
      v42 = v24;
      while (1)
      {
        v26 = v24 * v19;
        sub_1003708C4(*(v46 + 48) + v24 * v19, v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
        Hasher.init(_seed:)();
        sub_1003708C4(v15, v11, type metadata accessor for SDAirDropDiscoveredEndpoint);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          break;
        }

        if (EnumCaseMultiPayload != 2)
        {
          v30 = *v11;
          Hasher._combine(_:)(3uLL);
          NSObject.hash(into:)();

LABEL_16:
          v31 = v43;
          goto LABEL_19;
        }

        sub_10000ED10(v11, v25, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        Hasher._combine(_:)(2uLL);
        Data.hash(into:)();
        type metadata accessor for UUID();
        sub_1000053E8(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        if (*(v25 + *(v3 + 28) + 8))
        {
          Hasher._combine(_:)(1u);
          v25 = v39;
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v31 = v43;
        Hasher._combine(_:)(*(v25 + *(v3 + 36)));
        sub_10037092C(v25, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
LABEL_19:
        v32 = Hasher._finalize()();
        sub_10037092C(v15, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v33 = v32 & v31;
        if (a1 >= v23)
        {
          v24 = v42;
          if (v33 < v23)
          {
            goto LABEL_6;
          }

LABEL_23:
          if (a1 < v33)
          {
            goto LABEL_6;
          }

          goto LABEL_24;
        }

        v24 = v42;
        if (v33 < v23)
        {
          goto LABEL_23;
        }

LABEL_24:
        v34 = v24 * a1;
        if (v24 * a1 < v26 || *(v46 + 48) + v24 * a1 >= (*(v46 + 48) + v26 + v24))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v19;
          if (v34 == v26)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v19;
LABEL_6:
        v19 = (v19 + 1) & v31;
        v17 = v44;
        if (((*(v44 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (EnumCaseMultiPayload)
      {
        v28 = v41;
        sub_10000ED10(v11, v41, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        Hasher._combine(_:)(1uLL);
        sub_10032D050(v47);
        v29 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      }

      else
      {
        v28 = v40;
        sub_10000ED10(v11, v40, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        Hasher._combine(_:)(0);
        sub_10032CD80(v47);
        v29 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      }

      sub_10037092C(v28, v29);
      goto LABEL_16;
    }

LABEL_30:

    *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v16 = v46;
  }

  else
  {
    *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v35 = *(v16 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v37;
    ++*(v16 + 36);
  }

  return result;
}

uint64_t sub_10036FBA4(int64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(void *), uint64_t (*a5)(void))
{
  v29 = a4;
  v30 = a5;
  v28 = a3;
  v27 = a2(0);
  v7 = *(v27 - 8);
  result = __chkstk_darwin(v27);
  v10 = &v26 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v17 = (v16 + 1) & v15;
      v18 = *(v7 + 72);
      while (1)
      {
        v19 = v18 * v14;
        sub_1003708C4(*(v11 + 48) + v18 * v14, v10, v28);
        Hasher.init(_seed:)();
        v29(v31);
        v20 = Hasher._finalize()();
        sub_10037092C(v10, v30);
        v21 = v20 & v15;
        if (a1 >= v17)
        {
          break;
        }

        if (v21 < v17)
        {
          goto LABEL_11;
        }

LABEL_12:
        v22 = v18 * a1;
        if (v18 * a1 < v19 || *(v11 + 48) + v18 * a1 >= (*(v11 + 48) + v19 + v18))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v14;
          if (v22 == v19)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v14;
LABEL_6:
        v14 = (v14 + 1) & v15;
        if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v21 < v17)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v21)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v11 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v25;
    ++*(v11 + 36);
  }

  return result;
}

uint64_t sub_10036FE24(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v14 = sub_10000EBD4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002CE534();
      goto LABEL_7;
    }

    sub_100571EF8(v17, a3 & 1);
    v23 = sub_10000EBD4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *a4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100370800(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *a4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 16 * v14);
  *v21 = a1;
  v21[1] = &off_1008E5F48;

  return swift_unknownObjectRelease();
}

uint64_t sub_100370040(uint64_t a1)
{
  v3 = *(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SDAirDropServerConnection(0) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100367D90(a1, v7, v1 + v4, v8);
}

uint64_t sub_100370124()
{
  v1 = *(type metadata accessor for SDAirDropServerConnection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_100369958(v0 + v2, v5, v6);
}

uint64_t sub_100370200(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_100369C7C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1003702F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_10097A648, &qword_1007FD778) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SDAirDropServerConnection(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for NWConnection.State() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100005C04;

  return sub_100368138(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1003704C0(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_100369FFC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1003705F0()
{
  v1 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else if (!EnumCaseMultiPayload)
  {
    swift_unknownObjectRelease();
  }

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100370708(uint64_t a1)
{
  v4 = *(type metadata accessor for SDAirDropServerConnectionIdentity(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10036A0D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100370800(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 16 * a1);
  *v11 = a3;
  v11[1] = &off_1008E5F48;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1003708C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10037092C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100370994(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10035FF3C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100370A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036BEAC(a1, v4, v5, v6);
}

uint64_t sub_100370B20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036C10C(a1, v4, v5, v6);
}

uint64_t sub_100370BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036BB10(a1, v4, v5, v6);
}

uint64_t sub_100370C88(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100005C04;

  return sub_1003780A0();
}

uint64_t sub_100370D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036B594(a1, v4, v5, v6);
}

uint64_t sub_100370DF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036B07C(a1, v4, v5, v6);
}

uint64_t sub_100370EA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036AD0C(a1, v4, v5, v6);
}

uint64_t sub_100370F58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036AB68(a1, v4, v5, v6);
}

uint64_t sub_10037100C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_100371020(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_100371034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_10036A8F4(a1, v4, v5, v6);
}

uint64_t sub_1003710F8()
{
  v1 = sub_10028088C(&qword_10097A7E8, &unk_1007FD9C8);
  __chkstk_darwin(v1 - 8);
  v3 = &v59 - v2;
  v4 = type metadata accessor for NWEndpoint.Port();
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWTXTRecord();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener])
  {
    v62 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener;
    v63 = v6;
    v64 = v3;
    v65 = v0;
    v61 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceSupportManager];
    v12 = *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_deviceStatus);
    if (sub_10002A73C())
    {
      v13 = 62459;
    }

    else
    {
      v13 = 46075;
    }

    v67 = &_swiftEmptyDictionarySingleton;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    v66 = v13;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = &_swiftEmptyDictionarySingleton;
    sub_10057A00C(v17, v19, v14, v16, isUniquelyReferenced_nonNull_native);

    v67 = v66;
    if ([v12 enableStrangers] && (sub_100469838() & 1) != 0 && (v21 = objc_msgSend(*(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropDeviceSupportManager_nearbyAgent), "bleAuthTag")) != 0)
    {
      v22 = v21;
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = Data.base64EncodedString(options:)(0);
      countAndFlagsBits = v26._countAndFlagsBits;
      object = v26._object;
      sub_100026AC0(v23, v25);
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1002B0B7C(countAndFlagsBits, object, v29, v30);
    NWTXTRecord.init(_:)();
    v31 = NWTXTRecord.data.getter();
    v60 = v32;
    v61 = v31;
    (*(v8 + 8))(v11, v7);
    v33 = v65;
    sub_100469844();
    v35 = v34;
    v37 = v36;
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C4AC(v38, qword_10097A750);

    v39 = v33;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    v42 = os_log_type_enabled(v40, v41);
    v59 = v35;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v67 = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_10000C4E4(v35, v37, &v67);
      *(v43 + 12) = 1024;
      *(v43 + 14) = v39[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility];

      _os_log_impl(&_mh_execute_header, v40, v41, "Starting AirDrop Bonjour Server %s - legacy %{BOOL}d", v43, 0x12u);
      sub_10000C60C(v44);
    }

    else
    {
    }

    v45 = v39[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_privacyImprovements];
    if (v45 != 1 || (v39[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility] & 1) != 0 || (sub_100469838() & 1) != 0)
    {
      v46 = sub_10046949C();
    }

    else
    {
      v46 = 0;
    }

    v47 = *&v39[OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_queue];
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100637CD0(v46, v47, sub_100375550, v48);

    swift_unknownObjectRelease();

    static NWEndpoint.Port.any.getter();
    type metadata accessor for NWListener();
    swift_allocObject();
    v49 = NWListener.init(using:on:)();
    *&v65[v62] = v49;

    v50 = swift_allocObject();
    *(v50 + 16) = v39;
    *(v50 + 24) = v49;
    v51 = v39;

    NWListener.stateUpdateHandler.setter();
    *(swift_allocObject() + 16) = v51;
    v52 = v51;
    NWListener.newConnectionHandler.setter();
    if (v45 & 1) != 0 && (sub_10046A478())
    {
      v53 = 0;
      v54 = 0xF000000000000000;
      v55 = v64;
      v57 = v60;
      v56 = v61;
    }

    else
    {
      v57 = v60;
      v56 = v61;
      sub_100294008(v61, v60);
      v53 = v56;
      v54 = v57;
      v55 = v64;
    }

    sub_1002A9924(v53, v54);
    NWListener.Service.init(name:type:domain:txtRecord:)();
    v58 = type metadata accessor for NWListener.Service();
    (*(*(v58 - 8) + 56))(v55, 0, 1, v58);
    NWListener.service.setter();
    NWListener.start(queue:)();
    sub_10028BCC0(v53, v54);

    return sub_100026AC0(v56, v57);
  }

  return result;
}

uint64_t sub_100371854()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A750);
  v1 = sub_10000C4AC(v0, qword_10097A750);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10037191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = qword_1009735E0;

  swift_unknownObjectRetain();

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v16 = sub_1003759BC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v12;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;

  sub_1002B3398(0, 0, v10, &unk_1007FDA20, v17);
}

uint64_t sub_100371B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v7[10] = static AirDropActor.shared;

  return _swift_task_switch(sub_100371BD0, v8, 0);
}

uint64_t sub_100371BD0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_100371CD0;
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);

    return sub_100371E20(v5, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100371CD0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);

  return _swift_task_switch(sub_100371DF8, v2, 0);
}

uint64_t sub_100371E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v4[40] = static AirDropActor.shared;

  return _swift_task_switch(sub_100371F7C, v7, 0);
}

uint64_t sub_100371F7C()
{
  v1 = v0[33];
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_privacyImprovements) != 1 || (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility) & 1) != 0 || (sub_100469838() & 1) != 0)
  {
    v3 = v0[38];
    v2 = v0[39];
    v4 = v0[36];
    v5 = v0[34];
    v6 = v0[35];
    v8 = v0[31];
    v7 = v0[32];
    aBlock = v0[37];
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    v0[7] = v9;
    v0[6] = sub_100375990;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100011678;
    v0[5] = &unk_1008DD878;
    v10 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[26] = _swiftEmptyArrayStorage;
    sub_1003759BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);
    (*(v6 + 8))(v4, v5);
    (*(v3 + 8))(v2, aBlock);
LABEL_5:

    v11 = v0[1];

    return v11();
  }

  v13 = sec_trust_copy_ref(v0[30]);
  v15 = sub_10009159C(v13, v14);

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = sub_100638124(v16, v18);
  v21 = v20;
  v0[41] = v19;
  v0[42] = v20;

  if (!v21)
  {
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_10097A750);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Missing altDSID on certificate", v26, 2u);
    }

    v28 = v0[38];
    v27 = v0[39];
    v29 = v0[36];
    v36 = v0[37];
    v30 = v0[34];
    v31 = v0[35];
    v32 = v0[32];
    v33 = v0[31];

    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    v0[13] = v34;
    v0[12] = sub_100375A04;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100011678;
    v0[11] = &unk_1008DD8C8;
    v35 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[27] = _swiftEmptyArrayStorage;
    sub_1003759BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);
    (*(v31 + 8))(v29, v30);
    (*(v28 + 8))(v27, v36);
    goto LABEL_5;
  }

  v22 = swift_task_alloc();
  v0[43] = v22;
  *v22 = v0;
  v22[1] = sub_100372510;

  return sub_100375C30(v19, v21);
}

uint64_t sub_100372510(char a1)
{
  v2 = *(*v1 + 320);
  *(*v1 + 360) = a1;

  return _swift_task_switch(sub_100372628, v2, 0);
}

uint64_t sub_100372628()
{
  v33 = v0;
  if (*(v0 + 360) == 1)
  {
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097A750);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[41];
      v4 = v0[42];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v32 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_10000C4E4(v5, v4, &v32);
      _os_log_impl(&_mh_execute_header, v2, v3, "Matching altDSID found %s - accepting connection", v6, 0xCu);
      sub_10000C60C(v7);
    }

    v8 = v0[42];
    v9 = swift_task_alloc();
    v0[44] = v9;
    *v9 = v0;
    v9[1] = sub_100372B14;
    v10 = v0[41];

    return sub_100374D70(v10, v8);
  }

  else
  {
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097A750);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[42];
    if (v15)
    {
      v17 = v0[41];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315138;
      v20 = sub_10000C4E4(v17, v16, &v32);

      *(v18 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unknown altDSID on certificate %s", v18, 0xCu);
      sub_10000C60C(v19);
    }

    else
    {
    }

    v22 = v0[38];
    v21 = v0[39];
    v23 = v0[36];
    v24 = v0[34];
    v25 = v0[35];
    v26 = v0[32];
    v27 = v0[31];
    v31 = v0[37];
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v26;
    v0[18] = sub_100375A3C;
    v0[19] = v28;
    v0[14] = _NSConcreteStackBlock;
    v0[15] = 1107296256;
    v0[16] = sub_100011678;
    v0[17] = &unk_1008DD918;
    v29 = _Block_copy(v0 + 14);

    static DispatchQoS.unspecified.getter();
    v0[28] = _swiftEmptyArrayStorage;
    sub_1003759BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);
    (*(v25 + 8))(v23, v24);
    (*(v22 + 8))(v21, v31);

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_100372B14()
{
  v1 = *(*v0 + 320);

  return _swift_task_switch(sub_100372C40, v1, 0);
}

uint64_t sub_100372C40()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[31];
  v12 = v0[37];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v0[24] = sub_100375A3C;
  v0[25] = v8;
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100011678;
  v0[23] = &unk_1008DD968;
  v9 = _Block_copy(v0 + 20);

  static DispatchQoS.unspecified.getter();
  v0[29] = _swiftEmptyArrayStorage;
  sub_1003759BC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100372E58(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWListener.State();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v10;
  (*(v4 + 32))(&v13[v12], &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *&v13[(v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = v11;
  sub_1002B3398(0, 0, v8, &unk_1007FDA00, v13);
}

uint64_t sub_100373094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  return _swift_task_switch(sub_1003730B8, 0, 0);
}

uint64_t sub_1003730B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    *(v0 + 104) = v2;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1003731E0;
    v4 = *(v0 + 80);

    return sub_100373338(v4, v2);
  }

  else
  {
    **(v0 + 64) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1003731E0()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_100373310, 0, 0);
}

uint64_t sub_100373338(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for NWError();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for NWListener.State();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v3[21] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003734F0, v6, 0);
}

uint64_t sub_1003734F0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v2 + 16))(v1, v0[8], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for NWListener.State.waiting(_:))
  {
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[12];
    v8 = v0[13];
    (*(v0[19] + 96))(v5, v0[18]);
    (*(v8 + 32))(v6, v5, v7);
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v9 = v0[16];
    v10 = v0[17];
    v11 = v0[12];
    v12 = v0[13];
    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_10097A750);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[12];
    v21 = v0[13];
    if (v17)
    {
      v82 = v14;
      v22 = swift_slowAlloc();
      v83 = v18;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_1003759BC(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v82(v24, v19, v20);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v21 + 8);
      v26(v19, v20);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "AirDrop Bonjour server waiting with error %@", v22, 0xCu);
      sub_10028924C(v23);

      v26(v83, v20);
    }

    else
    {

      v47 = *(v21 + 8);
      v47(v19, v20);
      v47(v18, v20);
    }

    goto LABEL_47;
  }

  if (v4 == enum case for NWListener.State.failed(_:))
  {
    v27 = v0[20];
    v28 = v0[15];
    v29 = v0[12];
    v30 = v0[13];
    (*(v0[19] + 96))(v27, v0[18]);
    (*(v30 + 32))(v28, v27, v29);
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v31 = v0[14];
    v32 = v0[15];
    v33 = v0[12];
    v34 = v0[13];
    v35 = type metadata accessor for Logger();
    sub_10000C4AC(v35, qword_10097A750);
    v36 = *(v34 + 16);
    v36(v31, v32, v33);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v41 = v0[13];
    v40 = v0[14];
    v42 = v0[12];
    if (v39)
    {
      v43 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v43 = 138412290;
      sub_1003759BC(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      swift_allocError();
      v36(v44, v40, v42);
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v46 = *(v41 + 8);
      v46(v40, v42);
      *(v43 + 4) = v45;
      *v84 = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "AirDrop Bonjour server failed with error %@", v43, 0xCu);
      sub_10028924C(v84);
    }

    else
    {

      v46 = *(v41 + 8);
      v46(v40, v42);
    }

    v0[24] = v46;
    if (v0[9])
    {
      NWListener.cancel()();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v53 = swift_task_alloc();
      v0[26] = v53;
      *v53 = v0;
      v53[1] = sub_1003741C0;
      v54 = v0[15];

      return sub_10035E6D4(1, v54);
    }

    (v0[24])(v0[15], v0[12]);
LABEL_47:

    v81 = v0[1];

    return v81();
  }

  if (v4 == enum case for NWListener.State.setup(_:))
  {
    if (qword_1009736B0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_10000C4AC(v48, qword_10097A750);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "AirDrop Bonjour server setting up", v51, 2u);
    }

    goto LABEL_47;
  }

  if (v4 != enum case for NWListener.State.ready(_:))
  {
    if (v4 == enum case for NWListener.State.cancelled(_:))
    {
      if (qword_1009736B0 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_10000C4AC(v69, qword_10097A750);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "AirDrop Bonjour server stopped", v72, 2u);
      }

      v73 = v0[10];

      if (*(v73 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility) == 1)
      {
        sub_1003710F8();
      }
    }

    else
    {
      if (qword_1009736B0 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_10000C4AC(v74, qword_10097A750);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Unknown AirDrop server state", v77, 2u);
      }

      v79 = v0[19];
      v78 = v0[20];
      v80 = v0[18];

      (*(v79 + 8))(v78, v80);
    }

    goto LABEL_47;
  }

  if (qword_1009736B0 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_10000C4AC(v56, qword_10097A750);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "AirDrop Bonjour server ready", v59, 2u);
  }

  v61 = v0[10];
  v60 = v0[11];

  v62 = *(v61 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_sessionLogger);
  Date.init()();
  v63 = type metadata accessor for Date();
  (*(*(v63 - 8) + 56))(v60, 0, 1, v63);
  v64 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDAirDropLegacySessionLogger_bonjourServerStartDate;
  swift_beginAccess();
  sub_1003561CC(v60, v62 + v64);
  swift_endAccess();
  v65 = String._bridgeToObjectiveC()();
  v66 = getpid();
  sub_100086D20(@"BonjourAdvertise", @"Start", v65, v66);

  v67 = swift_unknownObjectWeakLoadStrong();
  v0[22] = v67;
  if (!v67)
  {
    goto LABEL_47;
  }

  v68 = swift_task_alloc();
  v0[23] = v68;
  *v68 = v0;
  v68[1] = sub_100373FD0;

  return sub_1005EAAE8();
}

uint64_t sub_100373FD0()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_1003740E0, v1, 0);
}

uint64_t sub_1003740E0()
{
  v1 = *(v0 + 176);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary33SDAirDropReceiveConnectionManager_bonjourServerErrors;
  swift_beginAccess();
  *(v1 + v2) = &_swiftEmptySetSingleton;

  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003741C0()
{
  v1 = *(*v0 + 168);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1003742EC, v1, 0);
}

uint64_t sub_1003742EC()
{
  (*(v0 + 192))(*(v0 + 120), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003743AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  v8[5] = a1;

  sub_1002B3398(0, 0, v5, &unk_1007FD9E0, v8);
}

uint64_t sub_1003744E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100374504, 0, 0);
}

uint64_t sub_100374504()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v2 = static AirDropActor.shared;

    return _swift_task_switch(sub_100374600, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100374600()
{
  v1 = *(v0 + 64);
  sub_10037466C(*(v0 + 56));

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_10037466C(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  sub_10050180C();
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_connections;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = qword_1009735E0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = static AirDropActor.shared;
  v11 = sub_1003759BC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = a1;
  v12[5] = v8;

  sub_1002B3098(0, 0, v5, &unk_1007FD9F0, v12);
}

void sub_1003748B8()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_listener))
  {
    v2 = v0;
    v3 = qword_1009736B0;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097A750);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Stopping AirDrop Bonjour Server", v7, 2u);
    }

    NWListener.cancel()();
    sub_10055D2F8(1);
    sub_100374AC8(&OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_serverType, &OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_connections);
    *(v2 + v1) = 0;

    [*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_deviceStatus) setNextAirDropID:0];
    *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility) = 0;
    if (@"AirDropID")
    {
      CFPreferencesSetValue(@"AirDropID", 0, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
      CFPreferencesSynchronize(kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100374AC8(void *a1, unint64_t a2)
{
  if (qword_100973790 != -1)
  {
LABEL_23:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097AD70);
  v6 = v2;
  v2 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    if (*(&v6->isa + *a1))
    {
      if (*(&v6->isa + *a1) == 1)
      {
        v10 = 0xEE00726576726553;
        v11 = 0x2072756F6A6E6F42;
      }

      else
      {
        v10 = 0xEA0000000000646CLL;
        v11 = 0x656946207261654ELL;
      }
    }

    else
    {
      v10 = 0x800000010078D790;
      v11 = 0xD00000000000001ALL;
    }

    v12 = sub_10000C4E4(v11, v10, v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v7, "Cancelling all connections associated with %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  a1 = *a2;
  swift_beginAccess();
  a2 = *(a1 + v6);
  if (a2 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v2 = *(a2 + 8 * v14 + 32);

        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_20;
        }
      }

      NWConnection.cancel()();

      ++v14;
    }

    while (v15 != v13);
  }

  *(a1 + v6) = _swiftEmptyArrayStorage;
}

uint64_t sub_100374D70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_100374E10, v4, 0);
}

uint64_t sub_100374E10()
{
  v12 = v0;
  if (qword_1009736B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A750);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10000C4E4(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Restarting AirDrop Bonjour Server for legacy peer %s", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v8 = v0[4];
  sub_1003748B8();
  *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary22SDAirDropBonjourServer_legacyCompatibility) = 1;
  v9 = v0[1];

  return v9();
}

uint64_t sub_100374FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for SDAirDropServerConnection(0);
  v5[8] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_100375078, v6, 0);
}

uint64_t sub_100375078()
{
  v17 = v0;
  if (qword_1009736B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A750);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    v6 = NWConnection.debugDescription.getter();
    v8 = sub_10000C4E4(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received AirDrop Bonjour connection %s", v4, 0xCu);
    sub_10000C60C(v5);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = Strong, v11 = swift_unknownObjectWeakLoadStrong(), *(v0 + 72) = v11, v10, v11))
  {
    **(v0 + 64) = *(v0 + 40);
    swift_storeEnumTagMultiPayload();

    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *v12 = v0;
    v12[1] = sub_1003752F0;
    v13 = *(v0 + 64);

    return sub_100359E00(v13);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1003752F0()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  swift_unknownObjectRelease();
  sub_100375730(v1);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100375568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1003744E0(a1, v4, v5, v7, v6);
}

uint64_t sub_100375628()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100375670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_100374FAC(a1, v4, v5, v7, v6);
}

uint64_t sub_100375730(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropServerConnection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10037578C(uint64_t a1)
{
  v4 = *(type metadata accessor for NWListener.State() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_100373094(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1003758BC(uint64_t a1)
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
  v10[1] = sub_100005C00;

  return sub_100371B28(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1003759BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100375A4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v12 = (*(a1 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v6)))));
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    swift_bridgeObjectRetain_n();

    sub_10046DAAC(&v22, v14, v13);

    v17 = *a3;
    if (*(*a3 + 16) && (v18 = sub_100012854(v14, v13), (v19 & 1) != 0))
    {
      v23 = *(*(v17 + 56) + 8 * v18);
    }

    else
    {
      v23 = &_swiftEmptySetSingleton;
    }

    v6 &= v6 - 1;

    sub_10046DAAC(&v22, v16, v15);

    v9 = v23;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a3;
    *a3 = 0x8000000000000000;
    sub_10057AEF0(v9, v14, v13, isUniquelyReferenced_nonNull_native);

    *a3 = v22;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100375C30(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[5] = static AirDropActor.shared;

  return _swift_task_switch(sub_100375CD4, v4, 0);
}

uint64_t sub_100375CD4()
{
  type metadata accessor for SFAirDropUserDefaults();
  v1 = static SFAirDropUserDefaults.shared.getter();
  v2 = SFAirDropUserDefaults.privacyImprovements.getter();

  if ((v2 & 1) == 0)
  {
    v5 = 1;
LABEL_29:
    v24 = v0[1];

    return v24(v5);
  }

  v3 = v0[4];
  v4 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[6] = v4;
  v5 = v4 != 0;
  if (!v4)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097A860);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Store not setup", v19, 2u);
    }

    goto LABEL_28;
  }

  v6 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v6)
  {

    v7 = [v6 altDSID];
    if (v7)
    {
      v9 = v0[2];
      v8 = v0[3];
      v10 = v7;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if (v11 == v9 && v13 == v8)
      {

LABEL_23:
        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_10000C4AC(v21, qword_10097A860);
        v17 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v17, v22, "Found same account match", v23, 2u);
        }

LABEL_28:

        goto LABEL_29;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
  }

  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v20 = static IDMSActor.shared;

  return _swift_task_switch(sub_100376010, v20, 0);
}

uint64_t sub_100376010()
{
  *(v0 + 64) = sub_100325AD0(*(v0 + 16), *(v0 + 24)) & 1;
  *(v0 + 56) = 0;
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1003760A8, v1, 0);
}

uint64_t sub_1003760A8()
{
  v12 = v0;
  v1 = *(v0 + 64);
  if (v1 == 1)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_10097A860);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 16);
      v5 = *(v0 + 24);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10000C4E4(v6, v5, &v11);
      _os_log_impl(&_mh_execute_header, v3, v4, "Found match in db entries for altDSID %s", v7, 0xCu);
      sub_10000C60C(v8);

      goto LABEL_9;
    }
  }

LABEL_9:
  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_100376268()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A860);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to query db %@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_100376420()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A860);
  v1 = sub_10000C4AC(v0, qword_10097A860);
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0960);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003764E8(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = [objc_opt_self() standardUserDefaults];
  sub_10000FF90(a1, v4, &qword_10097A7F0, &unk_1007FB600);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v4, v6);
  }

  v9 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v9];

  swift_unknownObjectRelease();
  return sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
}

uint64_t sub_10037668C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_100005508(v11, &unk_1009746F0, &qword_1007F90B0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

id sub_100376808(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore] = 0;
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_updateToken;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 56);
  v9(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount] = 0;
  v10 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffDateKey];
  *v10 = 0xD000000000000027;
  *(v10 + 1) = 0x800000010078DB70;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask] = 0;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_queryBatchSize] = 120;
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDAgent;
  *&v3[v11] = [objc_opt_self() sharedAgent];
  v12 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_osTransaction] = 0;
  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_sessionTelemetry;
  v14 = type metadata accessor for SDAirDropIDMSServiceTelemetry(0);
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  v9(&v15[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken], 1, 1, v8);
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  *&v15[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount] = 0;
  *&v15[OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_totalBatchCount] = 0;
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_log;
  if (qword_100973708 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000C4AC(v19, qword_1009A0960);
  (*(*(v19 - 8) + 16))(&v15[v18], v20, v19);
  v35.receiver = v15;
  v35.super_class = v14;
  *&v3[v13] = objc_msgSendSuper2(&v35, "init");
  type metadata accessor for SDNWPathMonitor(0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsPathMonitor] = sub_10041ED68();
  v21 = type metadata accessor for SDContactStore();
  v22 = swift_allocObject();
  v23 = CNContactStoreMeContactDidChangeNotification;
  v22[2] = CNContactStoreDidChangeNotification;
  v22[3] = v23;
  v24 = objc_allocWithZone(CNContactStore);
  v25 = CNContactStoreDidChangeNotification;
  v26 = v23;
  v22[4] = [v24 init];
  v27 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_contactStore];
  *(v27 + 3) = v21;
  *(v27 + 4) = &off_1008E85A0;
  *v27 = v22;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_hashManager] = a1;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_deviceStatus] = a2;
  v28 = objc_opt_self();
  v29 = a1;
  v30 = a2;
  v31 = [v28 defaultCenter];
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_notificationCenter] = v31;
  v34.receiver = v3;
  v34.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v34, "init");
  sub_100376BCC();

  return v32;
}

void sub_100376BCC()
{
  v1 = v0;
  type metadata accessor for SFAirDropUserDefaults();
  v2 = static SFAirDropUserDefaults.shared.getter();
  v3 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v3)
  {
    v4 = [*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_deviceStatus) myAppleID];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 1;
    }

    v9 = (v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState);
    v10 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState);
    v11 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState + 8);
    *v9 = v6;
    v9[1] = v8;
    sub_10037100C(v10, v11);
    v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_notificationCenter);

    [v12 addObserver:v1 selector:"appleIDChangedWithNotification:" name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
  }
}

uint64_t sub_100376CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v4[3] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_100376D9C, v5, 0);
}

uint64_t sub_100376D9C()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 40) = sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activating SDAirDropIDMSService", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100376EEC;

  return sub_1003775AC();
}

uint64_t sub_100376EEC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_10037702C;

  return sub_1003779EC();
}

uint64_t sub_10037702C()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_10037713C, v1, 0);
}

uint64_t sub_10037713C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsPathMonitor);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_100377168, v1, 0);
}

uint64_t sub_100377168()
{
  v1 = *(v0 + 32);
  sub_10041E294();

  return _swift_task_switch(sub_1003771D4, v1, 0);
}

uint64_t sub_1003771D4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[9] = v1;
  if (v1)
  {
    v2 = qword_1009735E8;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = static IDMSActor.shared;

    return _swift_task_switch(sub_1003772C0, v3, 0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1003772C0()
{
  v1 = sub_100324CE8();
  v3 = *(v0 + 32);
  if (v2 >> 60 == 15)
  {
    v4 = sub_1003773B4;
  }

  else
  {
    sub_10028BCC0(v1, v2);
    v4 = sub_10037734C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10037734C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003773B4(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running initial service update", v4, 2u);
  }

  type metadata accessor for SFAirDropUserDefaults();
  v5 = static SFAirDropUserDefaults.shared.getter();
  v6 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v6)
  {
    v7 = v1[3];
    v8 = v1[4];
    v9 = v1[2];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v12 = swift_allocObject();
    v12[2] = v8;
    v12[3] = v11;
    v12[4] = v9;
    v13 = v9;

    sub_1002B3098(0, 0, v7, &unk_1007FDBC0, v12);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1003775AC()
{
  *(v1 + 16) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10037764C, v2, 0);
}

uint64_t sub_10037764C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;
  v0[4] = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;
  v3 = *(v1 + v2);
  if (v3)
  {
    v0[6] = v3;

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1003778DC;

    return sub_100324F0C();
  }

  else
  {
    if (qword_1009735E8 != -1)
    {
      swift_once();
    }

    v6 = static IDMSActor.shared;

    return _swift_task_switch(sub_100377770, v6, 0);
  }
}

uint64_t sub_100377770()
{
  v1 = *(v0 + 24);
  type metadata accessor for SDAirDropIDMSStore();
  swift_allocObject();
  *(v0 + 40) = sub_10032A32C();

  return _swift_task_switch(sub_1003777F4, v1, 0);
}

uint64_t sub_1003777F4()
{
  v1 = v0[4];
  v2 = v0[2];
  *(v2 + v1) = v0[5];

  v3 = *(v2 + v1);
  if (v3)
  {
    v0[6] = v3;

    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_1003778DC;

    return sub_100324F0C();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1003778DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003779EC()
{
  *(v1 + 16) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_100377A8C, v2, 0);
}

uint64_t sub_100377A8C()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount))
  {
    goto LABEL_2;
  }

  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[4] = sub_10000C4AC(v5, qword_10097A860);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching current appleID account", v8, 2u);
  }

  v9 = v0[2];

  v10 = [*(v9 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDAgent) myAccount];
  if (v10)
  {
    v11 = *(v1 + v2);
    *(v1 + v2) = v10;
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to fetch appleID account info", v13, 2u);
    }
  }

  v14 = *(v1 + v2);
  if (!v14)
  {
    goto LABEL_2;
  }

  v15 = [v14 altDSID];
  if (!v15)
  {
    goto LABEL_2;
  }

  v16 = v0[2];
  v17 = v15;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v0[5] = v18;
  v0[6] = v20;
  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;
  v0[7] = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;
  v22 = *(v16 + v21);
  v0[8] = v22;
  if (!v22)
  {

LABEL_2:
    v3 = v0[1];

    return v3();
  }

  v23 = qword_1009735E8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = static IDMSActor.shared;

  return _swift_task_switch(sub_100377D3C, v24, 0);
}

uint64_t sub_100377D3C()
{
  v1 = v0[3];
  v2 = sub_100324DFC();
  v4 = v3;

  v0[9] = v2;
  v0[10] = v4;

  return _swift_task_switch(sub_100377DC4, v1, 0);
}

uint64_t sub_100377DC4()
{
  v1 = v0[10];
  if (!v1)
  {
    goto LABEL_15;
  }

  if (v0[5] == v0[9] && v1 == v0[6])
  {

LABEL_15:

    goto LABEL_16;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "User change detected - clearing store", v6, 2u);
    }

    v7 = v0[7];
    v8 = v0[2];

    v9 = *(v8 + v7);
    v0[11] = v9;
    if (v9)
    {

      v10 = swift_task_alloc();
      v0[12] = v10;
      *v10 = v0;
      v10[1] = sub_100377F78;

      return sub_100329C34();
    }
  }

LABEL_16:
  v12 = v0[1];

  return v12();
}

uint64_t sub_100377F78()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1003780A0()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_100378160();
}

uint64_t sub_100378160()
{
  v1[23] = v0;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1[24] = swift_task_alloc();
  v1[25] = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v1[26] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[31] = v2;
  v1[32] = *(v2 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[40] = v3;
  v1[41] = *(v3 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v1[44] = static AirDropActor.shared;

  return _swift_task_switch(sub_100378408, v4, 0);
}

void sub_100378408()
{
  if (*(v0[23] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState + 8) < 2uLL)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_10097A860);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Device not logged-in to iCloud, skipping IDMS service update", v4, 2u);
    }

    goto LABEL_24;
  }

  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[39];
  sub_10037668C(v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_100005508(v0[39], &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_19;
  }

  v8 = v0[42];
  v9 = v0[40];
  v10 = v0[41];
  (*(v10 + 32))(v0[43], v0[39], v9);
  static Date.now.getter();
  v11 = static Date.< infix(_:_:)();
  v12 = *(v10 + 8);
  v12(v8, v9);
  if (v11)
  {
    v13 = v0[42];
    v14 = v0[40];
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v16 = v15;
    v12(v13, v14);
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_10097A860);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "Still in IDMS backoff period, checking for scheduled update in %f seconds", v20, 0xCu);
    }

    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -9.22337204e18)
    {
      if (v16 < 9.22337204e18)
      {
        v21 = v0[43];
        v22 = v0[40];
        sub_10037A7C4(v16);
        v12(v21, v22);
LABEL_24:

        v43 = v0[1];

        v43();
        return;
      }

LABEL_29:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  v12(v0[43], v0[40]);
LABEL_19:
  v23 = v0[40];
  v24 = v0[41];
  v25 = v0[38];
  v26 = v0[31];
  v27 = v0[32];
  v28 = v0[30];
  v29 = v0[23];
  v30 = *(v24 + 56);
  v0[45] = v30;
  v0[46] = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v30(v25, 1, 1, v23);
  sub_1003764E8(v25);
  *(v29 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask) = 0;

  UUID.init()();
  v31 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_updateToken;
  v0[47] = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_updateToken;
  swift_beginAccess();
  sub_10000FF90(v29 + v31, v28, &unk_100976120, &qword_1007F9260);
  v32 = *(v27 + 48);
  v27 += 48;
  v0[48] = v32;
  v0[49] = v27 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v26) = v32(v28, 1, v26);
  sub_100005508(v28, &unk_100976120, &qword_1007F9260);
  v33 = v27 + 8;
  if (v26 != 1)
  {
    v41 = v0[31];
    v42 = v0[29];
    (*(v0[32] + 32))(v42, v0[37], v41);
    (*v33)(v42, 0, 1, v41);
    swift_beginAccess();
    sub_10000C788(v42, v29 + v31, &unk_100976120, &qword_1007F9260);
    swift_endAccess();
    goto LABEL_24;
  }

  v34 = v0[37];
  v36 = v0[31];
  v35 = v0[32];
  v37 = v0[29];
  v38 = *(v35 + 16);
  v0[50] = v38;
  v0[51] = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38(v37, v34, v36);
  v39 = *v33;
  v0[52] = *v33;
  v0[53] = v33 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v39(v37, 0, 1, v36);
  swift_beginAccess();
  sub_10000C788(v37, v29 + v31, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  v40 = swift_task_alloc();
  v0[54] = v40;
  *v40 = v0;
  v40[1] = sub_100378AA8;

  sub_10002DCF0();
}

uint64_t sub_100378AA8()
{
  v1 = *(*v0 + 352);

  return _swift_task_switch(sub_100378BB8, v1, 0);
}

uint64_t sub_100378BB8()
{
  v22 = v0;
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  v0[55] = sub_10000C4AC(v5, qword_10097A860);
  v1(v2, v3, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[36];
  v10 = v0[31];
  v11 = v0[32];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v12 = 136315138;
    sub_100389AB0(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v11 + 8);
    v16(v9, v10);
    v17 = sub_10000C4E4(v13, v15, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Waiting for reachability for IDMS service update %s", v12, 0xCu);
    sub_10000C60C(v20);
  }

  else
  {

    v16 = *(v11 + 8);
    v16(v9, v10);
  }

  v0[56] = v16;
  v18 = swift_task_alloc();
  v0[57] = v18;
  *v18 = v0;
  v18[1] = sub_100378E2C;

  return sub_10041E4B0();
}

uint64_t sub_100378E2C()
{
  v1 = *(*v0 + 352);

  return _swift_task_switch(sub_100378F3C, v1, 0);
}

uint64_t sub_100378F3C()
{
  v1 = *(*(v0 + 184) + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_sessionTelemetry);
  *(v0 + 464) = v1;
  return _swift_task_switch(sub_100378F68, v1, 0);
}

uint64_t sub_100378F68()
{
  v1 = v0[58];
  v2 = v0[52];
  v3 = v0[50];
  v12 = v0[45];
  v13 = v0[44];
  v11 = v0[40];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[31];
  v7 = v0[29];
  sub_1005C18F4();
  v3(v7, v5, v6);
  v2(v7, 0, 1, v6);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  swift_beginAccess();
  sub_10000C788(v7, v1 + v8, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  Date.init()();
  v12(v4, 0, 1, v11);
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_sessionStart;
  swift_beginAccess();
  sub_10000C788(v4, v1 + v9, &qword_10097A7F0, &unk_1007FB600);
  swift_endAccess();

  return _swift_task_switch(sub_1003790E0, v13, 0);
}

uint64_t sub_1003790E0()
{
  v21 = v0;
  v1 = v0[50];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[31];
  sub_10037AA88();
  v1(v3, v2, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[56];
  v9 = v0[35];
  v10 = v0[31];
  if (v7)
  {
    v19 = v0[56];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    sub_100389AB0(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v19(v9, v10);
    v16 = sub_10000C4E4(v13, v15, &v20);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting IDMS service update %s", v11, 0xCu);
    sub_10000C60C(v12);
  }

  else
  {

    v8(v9, v10);
  }

  v17 = swift_task_alloc();
  v0[59] = v17;
  *v17 = v0;
  v17[1] = sub_100379314;

  return sub_1003775AC();
}

uint64_t sub_100379314()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 480) = v3;
  *v3 = v2;
  v3[1] = sub_100379454;

  return sub_1003779EC();
}

uint64_t sub_100379454()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 488) = v3;
  *v3 = v2;
  v3[1] = sub_1003795AC;
  v4 = *(v1 + 296);

  return sub_10037AB94(v4);
}

uint64_t sub_1003795AC()
{
  v1 = *(*v0 + 352);

  return _swift_task_switch(sub_1003796BC, v1, 0);
}

uint64_t sub_1003796BC()
{
  v20 = v0;
  (*(v0 + 400))(*(v0 + 272), *(v0 + 296), *(v0 + 248));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v7 = 136315138;
    sub_100389AB0(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    v11 = *(v6 + 8);
    v11(v4, v5);
    v12 = sub_10000C4E4(v8, v10, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished IDMS service update %s", v7, 0xCu);
    sub_10000C60C(v18);
  }

  else
  {

    v11 = *(v6 + 8);
    v11(v4, v5);
  }

  *(v0 + 496) = v11;
  v13 = *(v0 + 304);
  sub_10037DD60();
  sub_10037668C(v13);
  v14 = swift_task_alloc();
  *(v0 + 504) = v14;
  *v14 = v0;
  v14[1] = sub_1003798EC;
  v16 = *(v0 + 296);
  v15 = *(v0 + 304);

  return sub_1005C0C2C(v16, v15);
}

uint64_t sub_1003798EC()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 304);

  sub_100005508(v2, &qword_10097A7F0, &unk_1007FB600);

  return _swift_task_switch(sub_100379A28, v1, 0);
}

uint64_t sub_100379A28()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  v3 = *(v0 + 376);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v8 = *(v0 + 184);
  (*(v0 + 400))(v5, *(v0 + 296), v4);
  v1(v5, 0, 1, v4);
  v9 = *(v7 + 48);
  sub_10000FF90(v5, v6, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v8 + v3, v6 + v9, &unk_100976120, &qword_1007F9260);
  v10 = v2(v6, 1, v4);
  v11 = *(v0 + 384);
  v12 = *(v0 + 248);
  if (v10 == 1)
  {
    sub_100005508(*(v0 + 224), &unk_100976120, &qword_1007F9260);
    if (v11(v6 + v9, 1, v12) == 1)
    {
      sub_100005508(*(v0 + 208), &unk_100976120, &qword_1007F9260);
LABEL_14:
      v44 = *(v0 + 416);
      v45 = *(v0 + 376);
      v46 = *(v0 + 248);
      v47 = *(v0 + 232);
      v48 = *(v0 + 184);
      (*(v0 + 496))(*(v0 + 296), v46);
      v44(v47, 1, 1, v46);
      swift_beginAccess();
      sub_10000C788(v47, v48 + v45, &unk_100976120, &qword_1007F9260);
      swift_endAccess();
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  sub_10000FF90(*(v0 + 208), *(v0 + 216), &unk_100976120, &qword_1007F9260);
  v13 = v11(v6 + v9, 1, v12);
  v14 = *(v0 + 496);
  if (v13 == 1)
  {
    v15 = *(v0 + 248);
    v16 = *(v0 + 216);
    sub_100005508(*(v0 + 224), &unk_100976120, &qword_1007F9260);
    v14(v16, v15);
LABEL_6:
    sub_100005508(*(v0 + 208), &unk_100987030, &qword_1007F9330);
    goto LABEL_7;
  }

  v38 = *(v0 + 264);
  v39 = *(v0 + 248);
  v41 = *(v0 + 216);
  v40 = *(v0 + 224);
  v42 = *(v0 + 208);
  (*(*(v0 + 256) + 32))(v38, v6 + v9, v39);
  sub_100389AB0(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v38, v39);
  sub_100005508(v40, &unk_100976120, &qword_1007F9260);
  v14(v41, v39);
  sub_100005508(v42, &unk_100976120, &qword_1007F9260);
  if (v43)
  {
    goto LABEL_14;
  }

LABEL_7:
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Update requested mid-flight - restarting update", v19, 2u);
  }

  v20 = *(v0 + 416);
  v21 = *(v0 + 376);
  v22 = *(v0 + 248);
  v23 = *(v0 + 232);
  v24 = *(v0 + 184);

  v20(v23, 1, 1, v22);
  swift_beginAccess();
  sub_10000C788(v23, v24 + v21, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  type metadata accessor for SFAirDropUserDefaults();
  v25 = static SFAirDropUserDefaults.shared.getter();
  LOBYTE(v22) = SFAirDropUserDefaults.privacyImprovements.getter();

  v26 = *(v0 + 496);
  if (v22)
  {
    v27 = *(v0 + 352);
    v28 = *(v0 + 296);
    v29 = *(v0 + 248);
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v34 = swift_allocObject();
    v34[2] = v27;
    v34[3] = v33;
    v34[4] = v31;
    v35 = v31;

    sub_1002B3098(0, 0, v30, &unk_1007FDB30, v34);

    v36 = v28;
    v37 = v29;
  }

  else
  {
    v36 = *(v0 + 296);
    v37 = *(v0 + 248);
  }

  v26(v36, v37);
LABEL_15:

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_10037A014()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_10037A0D4();
}

uint64_t sub_10037A0D4()
{
  v1[2] = v0;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1[3] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  v1[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037A1AC, v2, 0);
}

uint64_t sub_10037A1AC()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[5] = sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Checking if local handles need retry", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[6] = v6;
  if (v6)
  {
    v7 = qword_1009735E8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = static IDMSActor.shared;
    v9 = sub_10037A514;
    v10 = 0;

    return _swift_task_switch(v9, v8, v10);
  }

  v11 = _swiftEmptySetSingleton[2];

  v12 = _swiftEmptySetSingleton[2];

  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    return _swift_task_switch(v9, v8, v10);
  }

  if (v13 >= 1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v14, v15, "%ld needing retry detected", v16, 0xCu);
    }

    type metadata accessor for SFAirDropUserDefaults();
    v17 = static SFAirDropUserDefaults.shared.getter();
    v18 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v18)
    {
      v20 = v0[3];
      v19 = v0[4];
      v21 = v0[2];
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
      v23 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v24 = swift_allocObject();
      v24[2] = v19;
      v24[3] = v23;
      v24[4] = v21;
      v25 = v21;

      sub_1002B3098(0, 0, v20, &unk_1007FD900, v24);
    }
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_10037A514()
{
  v1 = v0[4];
  v2 = sub_100326E88();
  v4 = v3;

  v0[7] = v2;
  v0[8] = v4;

  return _swift_task_switch(sub_10037A59C, v1, 0);
}

uint64_t sub_10037A59C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  if (v1)
  {
    v3 = v0[7];
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v4 = v3[2];

  v5 = v2[2];

  v7 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
  }

  else
  {
    if (v7 >= 1)
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v8, v9, "%ld needing retry detected", v10, 0xCu);
      }

      type metadata accessor for SFAirDropUserDefaults();
      v11 = static SFAirDropUserDefaults.shared.getter();
      v12 = SFAirDropUserDefaults.privacyImprovements.getter();

      if (v12)
      {
        v14 = v0[3];
        v13 = v0[4];
        v15 = v0[2];
        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
        v17 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
        v18 = swift_allocObject();
        v18[2] = v13;
        v18[3] = v17;
        v18[4] = v15;
        v19 = v15;

        sub_1002B3098(0, 0, v14, &unk_1007FD900, v18);
      }
    }

    v20 = v0[1];

    return v20();
  }

  return result;
}

void sub_10037A7C4(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask))
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_10097A860);
    v18 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v18, v8, "Retry task already scheduled", v9, 2u);
    }

    v10 = v18;
  }

  else
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = qword_1009735E0;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = static AirDropActor.shared;
    v15 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = a1;
    v16[5] = v12;

    *(v1 + v6) = sub_1002B3098(0, 0, v5, &unk_1007FDB40, v16);
  }
}

uint64_t sub_10037AA88()
{
  v1 = v0;
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_10097A860);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin IDMS service OSTransaction", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_osTransaction) = os_transaction_create();

  return swift_unknownObjectRelease();
}

uint64_t sub_10037AB94(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Date();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = sub_10028088C(&unk_100987030, &qword_1007F9330);
  v2[20] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v2[23] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037ADBC, v5, 0);
}

uint64_t sub_10037ADBC()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[24] = v1;
  if (v1)
  {
    v2 = qword_1009735E8;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = static IDMSActor.shared;

    return _swift_task_switch(sub_10037AFC8, v3, 0);
  }

  else
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097A860);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "IDMS store not setup", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10037AFC8()
{
  v1 = v0[23];
  v0[25] = sub_100324CE8();
  v0[26] = v2;

  return _swift_task_switch(sub_10037B034, v1, 0);
}

uint64_t sub_10037B034()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[27] = sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting contacts query", v4, 2u);
  }

  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[9];

  sub_10002CDC0((v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_contactStore), *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_contactStore + 24));
  v8 = sub_1005A0840(v6, v5);
  v0[28] = v9;
  v0[29] = v10;
  v11 = v0[9];
  v12 = sub_10054A7D0(120, v8);
  v0[30] = v12;

  v0[31] = *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_sessionTelemetry);
  v13 = v12[2];
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  v14[1] = sub_10037B3AC;
  v15 = v0[8];

  return sub_1005C149C(v13, v15);
}

uint64_t sub_10037B3AC()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_10037B4BC, v1, 0);
}

uint64_t sub_10037B4BC()
{
  v1 = *(v0[30] + 16);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_currentUpdateToken;
  v0[33] = v1;
  v0[34] = v2;
  v0[35] = OBJC_IVAR____TtC16DaemoniOSLibrary29SDAirDropIDMSServiceTelemetry_finishedBatchCount;
  swift_beginAccess();
  if (v1)
  {
    result = v0[30];
    v0[36] = 0;
    if (*(result + 16))
    {
      v4 = *(result + 32);
      v0[37] = v4;

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      v7 = os_log_type_enabled(v5, v6);
      v8 = v0[30];
      if (v7)
      {
        v9 = swift_slowAlloc();
        *v9 = 134218240;
        *(v9 + 4) = 1;
        *(v9 + 12) = 2048;
        *(v9 + 14) = *(v8 + 16);

        _os_log_impl(&_mh_execute_header, v5, v6, "Processing change event batch %ld of %ld", v9, 0x16u);
      }

      else
      {
      }

      v12 = v0[24];
      v13 = swift_task_alloc();
      v0[38] = v13;
      *v13 = v0;
      v13[1] = sub_10037B6F4;

      return sub_100384F38(v4, v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = v0[24];
    v11 = swift_task_alloc();
    v0[45] = v11;
    *v11 = v0;
    v11[1] = sub_10037C35C;

    return sub_100388428(v10);
  }

  return result;
}

uint64_t sub_10037B6F4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  *(v3 + 312) = a1;
  *(v3 + 320) = a2;

  return _swift_task_switch(sub_10037B828, v4, 0);
}

uint64_t sub_10037B828()
{
  if (*(v0[39] + 16) || *(v0[40] + 16))
  {
    v1 = swift_task_alloc();
    v0[41] = v1;
    *v1 = v0;
    v1[1] = sub_10037BB70;
    v3 = v0[39];
    v2 = v0[40];

    return sub_10037E824(v3, v2);
  }

  else
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[36] + 1;
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "Nothing to fetch for batch %ld", v8, 0xCu);
    }

    v9 = v0[36];
    v10 = v9 + 1;
    if (v9 + 1 == v0[33])
    {
      v11 = v0[24];
      v12 = swift_task_alloc();
      v0[45] = v12;
      *v12 = v0;
      v12[1] = sub_10037C35C;

      return sub_100388428(v11);
    }

    else
    {
      v0[36] = v10;
      result = v0[30];
      if (v10 >= *(result + 16))
      {
        __break(1u);
      }

      else
      {
        v13 = *(result + 8 * v10 + 32);
        v0[37] = v13;

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = v9 + 2;
          v17 = v0[30];
          v18 = swift_slowAlloc();
          *v18 = 134218240;
          *(v18 + 4) = v16;
          *(v18 + 12) = 2048;
          *(v18 + 14) = *(v17 + 16);

          _os_log_impl(&_mh_execute_header, v14, v15, "Processing change event batch %ld of %ld", v18, 0x16u);
        }

        else
        {
        }

        v19 = v0[24];
        v20 = swift_task_alloc();
        v0[38] = v20;
        *v20 = v0;
        v20[1] = sub_10037B6F4;

        return sub_100384F38(v13, v19);
      }
    }
  }

  return result;
}

uint64_t sub_10037BB70()
{
  v2 = *v1;
  v2[42] = v0;

  if (v0)
  {
    v3 = v2[23];

    return _swift_task_switch(sub_10037D578, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[43] = v4;
    *v4 = v2;
    v4[1] = sub_10037BCF8;

    return sub_10037F0A4();
  }
}

uint64_t sub_10037BCF8()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);

    v4 = sub_10037D774;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 248);
    v4 = sub_10037BE20;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10037BE20()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[16];
  v7 = v0[17];
  (*(v7 + 16))(v3, v0[8], v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = *(v5 + 48);
  sub_10000FF90(v3, v4, &unk_100976120, &qword_1007F9260);
  sub_10000FF90(v2 + v1, v4 + v8, &unk_100976120, &qword_1007F9260);
  v9 = *(v7 + 48);
  if (v9(v4, 1, v6) != 1)
  {
    v14 = v0[16];
    sub_10000FF90(v0[20], v0[21], &unk_100976120, &qword_1007F9260);
    v15 = v9(v4 + v8, 1, v14);
    v16 = v0[21];
    v17 = v0[22];
    if (v15 != 1)
    {
      v20 = v0[20];
      v22 = v0[17];
      v21 = v0[18];
      v23 = v0[16];
      (*(v22 + 32))(v21, v4 + v8, v23);
      sub_100389AB0(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v22 + 8);
      v25(v21, v23);
      sub_100005508(v17, &unk_100976120, &qword_1007F9260);
      v25(v16, v23);
      v11 = sub_100005508(v20, &unk_100976120, &qword_1007F9260);
      if ((v24 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v18 = v0[16];
    v19 = v0[17];
    sub_100005508(v0[22], &unk_100976120, &qword_1007F9260);
    (*(v19 + 8))(v16, v18);
LABEL_6:
    sub_100005508(v0[20], &unk_100987030, &qword_1007F9330);
    goto LABEL_10;
  }

  v10 = v0[16];
  sub_100005508(v0[22], &unk_100976120, &qword_1007F9260);
  if (v9(v4 + v8, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  v11 = sub_100005508(v0[20], &unk_100976120, &qword_1007F9260);
LABEL_8:
  v26 = v0[35];
  v27 = v0[31];
  v28 = *(v27 + v26);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
    return _swift_task_switch(v11, v12, v13);
  }

  *(v27 + v26) = v30;
LABEL_10:
  v12 = v0[23];
  v11 = sub_10037C138;
  v13 = 0;

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10037C138()
{
  v1 = v0[36];
  v2 = v1 + 1;
  if (v1 + 1 == v0[33])
  {
    v3 = v0[24];
    v4 = swift_task_alloc();
    v0[45] = v4;
    *v4 = v0;
    v4[1] = sub_10037C35C;

    return sub_100388428(v3);
  }

  else
  {
    v0[36] = v2;
    result = v0[30];
    if (v2 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = *(result + 8 * v2 + 32);
      v0[37] = v6;

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = v1 + 2;
        v10 = v0[30];
        v11 = swift_slowAlloc();
        *v11 = 134218240;
        *(v11 + 4) = v9;
        *(v11 + 12) = 2048;
        *(v11 + 14) = *(v10 + 16);

        _os_log_impl(&_mh_execute_header, v7, v8, "Processing change event batch %ld of %ld", v11, 0x16u);
      }

      else
      {
      }

      v12 = v0[24];
      v13 = swift_task_alloc();
      v0[38] = v13;
      *v13 = v0;
      v13[1] = sub_10037B6F4;

      return sub_100384F38(v6, v12);
    }
  }

  return result;
}

uint64_t sub_10037C35C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[46] = a1;
  v5[47] = a2;
  v5[48] = v2;

  v6 = v4[23];
  if (v2)
  {
    v7 = sub_10037C6EC;
  }

  else
  {
    v7 = sub_10037C494;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10037C494()
{
  if (*(v0[46] + 16) || *(v0[47] + 16))
  {
    v1 = swift_task_alloc();
    v0[49] = v1;
    *v1 = v0;
    v1[1] = sub_10037C8E4;
    v3 = v0[46];
    v2 = v0[47];

    return sub_10037E824(v3, v2);
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = *(v8 + 16);

    *(v9 + 4) = v10;

    _os_log_impl(&_mh_execute_header, v5, v6, "Finished processing %ld batch updates", v9, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v11 = *(v0[9] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  v12 = v0[28];
  v13 = v0[29];
  if (!v11)
  {
    sub_100294008(v12, v13);
    goto LABEL_13;
  }

  sub_100294008(v12, v13);
  v14 = [v11 altDSID];
  if (!v14)
  {
LABEL_13:
    v16 = 0;
    v18 = 0;
    goto LABEL_14;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

LABEL_14:
  v0[53] = v18;
  v19 = swift_task_alloc();
  v0[54] = v19;
  *v19 = v0;
  v19[1] = sub_10037CD48;
  v21 = v0[28];
  v20 = v0[29];

  return sub_1003299F0(v21, v20, v16, v18);
}

uint64_t sub_10037C6EC()
{
  v1 = v0[29];
  v2 = v0[28];

  sub_100026AC0(v2, v1);
  v0[55] = v0[48];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to finish IDMS update from contacts - %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  v8 = v0[9];

  v9 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v9 && (v10 = [v9 altDSID]) != 0)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[56] = v14;
  v15 = swift_task_alloc();
  v0[57] = v15;
  *v15 = v0;
  v15[1] = sub_10037CF94;
  v17 = v0[25];
  v16 = v0[26];

  return sub_1003299F0(v17, v16, v12, v14);
}

uint64_t sub_10037C8E4()
{
  v2 = *v1;
  v2[50] = v0;

  if (v0)
  {
    v3 = v2[23];

    return _swift_task_switch(sub_10037D95C, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[51] = v4;
    *v4 = v2;
    v4[1] = sub_10037CA60;

    return sub_10037F0A4();
  }
}

uint64_t sub_10037CA60()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_10037DB68;
  }

  else
  {
    v4 = sub_10037CB8C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10037CB8C()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[30];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v4 + 16);

    *(v5 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v1, v2, "Finished processing %ld batch updates", v5, 0xCu);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v7 = *(v0[9] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  v8 = v0[28];
  v9 = v0[29];
  if (v7)
  {
    sub_100294008(v8, v9);
    v10 = [v7 altDSID];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      goto LABEL_9;
    }
  }

  else
  {
    sub_100294008(v8, v9);
  }

  v12 = 0;
  v14 = 0;
LABEL_9:
  v0[53] = v14;
  v15 = swift_task_alloc();
  v0[54] = v15;
  *v15 = v0;
  v15[1] = sub_10037CD48;
  v17 = v0[28];
  v16 = v0[29];

  return sub_1003299F0(v17, v16, v12, v14);
}

uint64_t sub_10037CD48()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 184);

  sub_100026AC0(v2, v1);

  return _swift_task_switch(sub_10037CEB0, v3, 0);
}

uint64_t sub_10037CEB0()
{
  v1 = v0[28];
  v2 = v0[29];
  sub_10028BCC0(v0[25], v0[26]);

  sub_100026AC0(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10037CF94()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_10037D0C0, v1, 0);
}

uint64_t sub_10037D0C0()
{
  *(v0 + 56) = *(v0 + 440);
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = v1;
      if (v2)
      {
        type metadata accessor for SFAirDropUserDefaults();
        v7 = static SFAirDropUserDefaults.shared.getter();
        v6 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();
      }

      *(v5 + 4) = v6 / 1000;
      _os_log_impl(&_mh_execute_header, v3, v4, "Scheduling server backoff retry in %ld seconds", v5, 0xCu);
    }

    static Date.now.getter();
    if (v2)
    {
      type metadata accessor for SFAirDropUserDefaults();
      v8 = static SFAirDropUserDefaults.shared.getter();
      SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();
    }

    v9 = *(v0 + 120);
    v10 = *(v0 + 104);
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    Date.addingTimeInterval(_:)();
    (*(v12 + 8))(v10, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    sub_1003764E8(v9);
    if (v2)
    {
      type metadata accessor for SFAirDropUserDefaults();
      v13 = static SFAirDropUserDefaults.shared.getter();
      v1 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();
    }

    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    sub_10037A7C4(v1 / 1000);
    sub_10028BCC0(v15, v14);
  }

  else
  {
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unexpected error type %@", v18, 0xCu);
      sub_100005508(v19, &qword_100975400, &qword_1007F65D0);
    }

    v21 = *(v0 + 200);
    v30 = *(v0 + 208);
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);
    v24 = *(v0 + 96);
    v25 = *(v0 + 80);

    type metadata accessor for SFAirDropUserDefaults();
    v26 = static SFAirDropUserDefaults.shared.getter();
    v27 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();

    static Date.now.getter();
    Date.addingTimeInterval(_:)();
    (*(v23 + 8))(v24, v25);
    (*(v23 + 56))(v22, 0, 1, v25);
    sub_1003764E8(v22);
    sub_10037A7C4(v27 / 1000);

    sub_10028BCC0(v21, v30);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10037D578()
{
  sub_100026AC0(v0[28], v0[29]);

  v0[55] = v0[42];
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to finish IDMS update from contacts - %@", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);
  }

  v6 = v0[9];

  v7 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v7 && (v8 = [v7 altDSID]) != 0)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v0[56] = v12;
  v13 = swift_task_alloc();
  v0[57] = v13;
  *v13 = v0;
  v13[1] = sub_10037CF94;
  v15 = v0[25];
  v14 = v0[26];

  return sub_1003299F0(v15, v14, v10, v12);
}

uint64_t sub_10037D774()
{
  sub_100026AC0(v0[28], v0[29]);
  v0[55] = v0[44];
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to finish IDMS update from contacts - %@", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);
  }

  v6 = v0[9];

  v7 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v7 && (v8 = [v7 altDSID]) != 0)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v0[56] = v12;
  v13 = swift_task_alloc();
  v0[57] = v13;
  *v13 = v0;
  v13[1] = sub_10037CF94;
  v15 = v0[25];
  v14 = v0[26];

  return sub_1003299F0(v15, v14, v10, v12);
}

uint64_t sub_10037D95C()
{
  v1 = v0[29];
  v2 = v0[28];

  sub_100026AC0(v2, v1);
  v0[55] = v0[50];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to finish IDMS update from contacts - %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  v8 = v0[9];

  v9 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v9 && (v10 = [v9 altDSID]) != 0)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[56] = v14;
  v15 = swift_task_alloc();
  v0[57] = v15;
  *v15 = v0;
  v15[1] = sub_10037CF94;
  v17 = v0[25];
  v16 = v0[26];

  return sub_1003299F0(v17, v16, v12, v14);
}

uint64_t sub_10037DB68()
{
  v1 = v0[29];
  v2 = v0[28];

  sub_100026AC0(v2, v1);
  v0[55] = v0[52];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to finish IDMS update from contacts - %@", v5, 0xCu);
    sub_100005508(v6, &qword_100975400, &qword_1007F65D0);
  }

  v8 = v0[9];

  v9 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_myAccount);
  if (v9 && (v10 = [v9 altDSID]) != 0)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[56] = v14;
  v15 = swift_task_alloc();
  v0[57] = v15;
  *v15 = v0;
  v15[1] = sub_10037CF94;
  v17 = v0[25];
  v16 = v0[26];

  return sub_1003299F0(v17, v16, v12, v14);
}

void sub_10037DD60()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_osTransaction;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_osTransaction))
  {
    v2 = v0;
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_10097A860);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Clearing IDMS service OSTransaction", v6, 2u);
    }

    *(v2 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10037DE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5[10] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v5[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037DFEC, v7, 0);
}

uint64_t sub_10037DFEC(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  *(v1 + 128) = v6;
  *v6 = v1;
  v6[1] = sub_10037E0E0;

  return sub_10002ED10(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_10037E0E0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_10037E540;
  }

  else
  {
    v7 = sub_10037E268;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10037E268()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrying update after backoff", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v0[11];
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1003764E8(v7);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    type metadata accessor for SFAirDropUserDefaults();
    v11 = static SFAirDropUserDefaults.shared.getter();
    v12 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v12)
    {
      v13 = v0[15];
      v14 = v0[10];
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
      v16 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v17 = swift_allocObject();
      v17[2] = v13;
      v17[3] = v16;
      v17[4] = v10;

      sub_1002B3098(0, 0, v14, &unk_1007FDB48, v17);
    }

    else
    {
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10037E540()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A860);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Backoff task failed", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v0[11];
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1003764E8(v7);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    type metadata accessor for SFAirDropUserDefaults();
    v11 = static SFAirDropUserDefaults.shared.getter();
    v12 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v12)
    {
      v13 = v0[15];
      v14 = v0[10];
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
      v16 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v17 = swift_allocObject();
      v17[2] = v13;
      v17[3] = v16;
      v17[4] = v10;

      sub_1002B3098(0, 0, v14, &unk_1007FDB48, v17);
    }

    else
    {
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10037E824(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037E8C8, v4, 0);
}

uint64_t sub_10037E8C8()
{
  v28 = v0;
  v1 = v0[5];
  v2 = v0[6];
  if (*(v1 + 16) || *(v2 + 16))
  {
    v0[2] = &_swiftEmptySetSingleton;
    v0[3] = &_swiftEmptySetSingleton;
    v0[4] = &_swiftEmptyDictionarySingleton;
    sub_100375A4C(v1, (v0 + 2), v0 + 4);
    sub_100375A4C(v2, (v0 + 3), v0 + 4);
    v3 = v0[2];
    v0[9] = v3;
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = sub_10028F5DC(*(v3 + 16), 0);
      v6 = sub_100291F68(&v27, v5 + 4, v4, v3);
      v7 = v27;

      result = sub_100027D64(v7);
      if (v6 != v4)
      {
        __break(1u);
        goto LABEL_28;
      }

      v9 = v5;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v10 = v0[3];
    v0[10] = v9;
    v0[11] = v10;
    v11 = *(v10 + 16);
    if (!v11)
    {
      v12 = _swiftEmptyArrayStorage;
LABEL_11:
      v0[12] = v12;
      v15 = v9[2];
      v16 = v12[2];
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        __break(1u);
      }

      else if (qword_1009736B8 == -1)
      {
LABEL_13:
        v18 = type metadata accessor for Logger();
        sub_10000C4AC(v18, qword_10097A860);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134217984;
          *(v21 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v19, v20, "Requesting %ld handles", v21, 0xCu);
        }

        v22 = v0[4];
        v0[13] = v22;
        if (v17 <= 120)
        {
          v24 = swift_task_alloc();
          v0[14] = v24;
          *v24 = v0;
          v24[1] = sub_10037EC88;

          return sub_10038009C(v9, v12, v22);
        }

        else
        {
          v23 = swift_task_alloc();
          v0[16] = v23;
          *v23 = v0;
          v23[1] = sub_10037EE38;

          return sub_10037F650(v9, v12, v22);
        }
      }

      swift_once();
      goto LABEL_13;
    }

    v26 = v9;
    v12 = sub_10028F5DC(v11, 0);
    v13 = sub_100291F68(&v27, v12 + 4, v11, v10);
    v14 = v27;

    result = sub_100027D64(v14);
    if (v13 == v11)
    {
      v9 = v26;
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_10037EC88()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_10037F008;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10037EDBC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10037EDBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037EE38()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_10037EF6C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100389CAC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10037EF6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037F008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037F0A4()
{
  *(v1 + 16) = v0;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  *(v1 + 24) = static AirDropActor.shared;

  return _swift_task_switch(sub_10037F144, v2, 0);
}

uint64_t sub_10037F144()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_10037F2E8;

    return sub_1003276F0();
  }

  else
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097A860);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Store not setup", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10037F2E8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10037F478;
  }

  else
  {
    v4 = sub_10037F414;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10037F414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037F478()
{
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097A860);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "DB write failed %@", v4, 0xCu);
    sub_100005508(v5, &qword_100975400, &qword_1007F65D0);
  }

  sub_10032B0C0();
  swift_allocError();
  *v7 = 0;
  *(v7 + 8) = 1;
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10037F650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_10037F6F4, v5, 0);
}

void sub_10037F6F4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v2 + 2);

  if (v3)
  {
    if (v3 > 0x77)
    {
      if (v3 == 120)
      {

        v12 = 120;
        v11 = v2;
        goto LABEL_18;
      }

LABEL_40:
      sub_1002AF124(v2, (v2 + 32), 0, 0xF1uLL);
      v11 = v26;
      v12 = *(v26 + 16);
      if (!v12)
      {
LABEL_25:

        v6 = _swiftEmptyArrayStorage;
        goto LABEL_26;
      }

      v3 = *(v2 + 2);
      if (v3 < v12)
      {
        __break(1u);
        return;
      }

LABEL_18:
      v13 = v3 - v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[2] = v2;
      if (!isUniquelyReferenced_nonNull_native || v13 > *(v2 + 3) >> 1)
      {
        if (v3 <= v13)
        {
          v15 = v3 - v12;
        }

        else
        {
          v15 = v3;
        }

        v2 = sub_10028E1C8(isUniquelyReferenced_nonNull_native, v15, 1, v2);
        v0[2] = v2;
      }

      sub_10057EB2C(0, v12, 0);
      goto LABEL_25;
    }

    v4 = *(v1 + 2);
LABEL_5:
    v5 = 120 - v3;
    swift_unknownObjectRetain();
    v6 = v1;
    if (v4 > v5)
    {
      sub_1002AF124(v1, (v1 + 32), 0, (2 * v5) | 1);
      v6 = v25;

      v4 = *(v6 + 2);
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else if (v4)
    {
LABEL_7:
      v7 = *(v1 + 2);
      v8 = v7 - v4;
      if (v7 >= v4)
      {
        v9 = swift_isUniquelyReferenced_nonNull_native();
        v0[3] = v1;
        if (!v9 || v8 > *(v1 + 3) >> 1)
        {
          if (v7 <= v8)
          {
            v10 = v7 - v4;
          }

          else
          {
            v10 = v7;
          }

          v1 = sub_10028E1C8(v9, v10, 1, v1);
          v0[3] = v1;
        }

        sub_10057EB2C(0, v4, 0);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_15:

    v11 = v2;
    v2 = _swiftEmptyArrayStorage;
LABEL_26:
    v0[13] = v2;
    v0[14] = v1;
    v0[11] = v11;
    v0[12] = v1;
    v0[9] = 1;
    v0[10] = v6;
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_10097A860);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218496;
      *(v19 + 4) = 1;
      *(v19 + 12) = 2048;
      v20 = *(v11 + 16);

      *(v19 + 14) = v20;

      *(v19 + 22) = 2048;
      v21 = *(v6 + 2);

      *(v19 + 24) = v21;

      _os_log_impl(&_mh_execute_header, v17, v18, "Fetching batch %ld with %ld emails and %ld phone numbers", v19, 0x20u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v22 = swift_task_alloc();
    v0[15] = v22;
    *v22 = v0;
    v22[1] = sub_10037FAD8;
    v23 = v0[6];

    sub_10038009C(v11, v6, v23);
    return;
  }

  v4 = *(v1 + 2);
  if (v4)
  {
    goto LABEL_5;
  }

  v24 = v0[1];

  v24();
}

uint64_t sub_10037FAD8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 64);

  if (v0)
  {

    v4 = sub_100380038;
  }

  else
  {
    v4 = sub_10037FC28;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_10037FC28(uint64_t a1, uint64_t a2)
{
  v5 = v3[13];
  v6 = v3[14];
  v7 = v3[9];
  v8 = *(v5 + 2);
  if (v8)
  {
    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      v4 = v3[12];
      if (v8 > 0x77)
      {
        if (v8 == 120)
        {

          v16 = 120;
          v15 = v5;
          v17 = 120;
          goto LABEL_20;
        }

LABEL_43:
        sub_1002AF124(v5, (v5 + 32), 0, 0xF1uLL);
        v15 = v31;
        v16 = *(v31 + 16);
        if (!v16)
        {
LABEL_27:

          v11 = _swiftEmptyArrayStorage;
LABEL_34:
          v3[13] = v5;
          v3[14] = v6;
          v3[11] = v15;
          v3[12] = v4;
          v3[9] = v9;
          v3[10] = v11;
          if (qword_1009736B8 != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          sub_10000C4AC(v23, qword_10097A860);

          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 134218496;
            *(v26 + 4) = v9;
            *(v26 + 12) = 2048;
            v27 = *(v15 + 16);

            *(v26 + 14) = v27;

            *(v26 + 22) = 2048;
            v28 = *(v11 + 2);

            *(v26 + 24) = v28;

            _os_log_impl(&_mh_execute_header, v24, v25, "Fetching batch %ld with %ld emails and %ld phone numbers", v26, 0x20u);
          }

          else
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          v29 = swift_task_alloc();
          v3[15] = v29;
          *v29 = v3;
          v29[1] = sub_10037FAD8;
          v30 = v3[6];

          sub_10038009C(v15, v11, v30);
          return;
        }

        v17 = *(v5 + 2);
        if (v17 < v16)
        {
          __break(1u);
          return;
        }

LABEL_20:
        v18 = v17 - v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[2] = v5;
        if (!isUniquelyReferenced_nonNull_native || v18 > *(v5 + 3) >> 1)
        {
          if (v17 <= v18)
          {
            v20 = v17 - v16;
          }

          else
          {
            v20 = v17;
          }

          v5 = sub_10028E1C8(isUniquelyReferenced_nonNull_native, v20, 1, v5);
          v3[2] = v5;
        }

        sub_10057EB2C(0, v16, 0);
        goto LABEL_27;
      }

      v10 = *(v4 + 2);
LABEL_8:
      v2 = 120 - v8;
      swift_unknownObjectRetain();
      v11 = v4;
      if (v10 <= v2)
      {
        if (v10)
        {
LABEL_10:
          v12 = *(v4 + 2);
          v6 = (v12 - v10);
          if (v12 >= v10)
          {
            v13 = swift_isUniquelyReferenced_nonNull_native();
            v3[3] = v4;
            if (!v13 || v6 > *(v4 + 3) >> 1)
            {
              if (v12 <= v6)
              {
                v14 = v12 - v10;
              }

              else
              {
                v14 = v12;
              }

              v4 = sub_10028E1C8(v13, v14, 1, v4);
              v3[3] = v4;
            }

            sub_10057EB2C(0, v10, 0);

            v15 = v5;
            v5 = _swiftEmptyArrayStorage;
            v6 = v4;
            goto LABEL_34;
          }

          __break(1u);
          goto LABEL_43;
        }

LABEL_33:

        v15 = v5;
        v5 = _swiftEmptyArrayStorage;
        goto LABEL_34;
      }

LABEL_32:
      sub_1002AF124(v4, (v4 + 32), 0, (2 * v2) | 1);
      v11 = v22;

      v10 = *(v11 + 2);
      if (v10)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v10 = *(v6 + 2);
  if (v10)
  {
    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      v4 = v3[14];
      goto LABEL_8;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v21 = v3[1];

  v21();
}

uint64_t sub_100380038()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[101] = v3;
  v4[100] = a3;
  v4[99] = a2;
  v4[98] = a1;
  v5 = type metadata accessor for Date();
  v4[102] = v5;
  v4[103] = *(v5 - 8);
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v4[107] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v4[108] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003801F4, v6, 0);
}

uint64_t sub_1003801F4()
{
  v1 = *(v0[101] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDAgent);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[109] = isa;
  v3 = Array._bridgeToObjectiveC()().super.isa;
  v0[110] = v3;
  v0[2] = v0;
  v0[7] = v0 + 94;
  v0[3] = sub_100380368;
  v4 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097A958, &unk_1007FDBA8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100383400;
  v0[13] = &unk_1008DDA58;
  v0[14] = v4;
  [v1 altDSIDLookupWithEmails:isa phoneNumbers:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100380368()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 888) = v2;
  v3 = *(v1 + 864);
  if (v2)
  {
    v4 = sub_100382C8C;
  }

  else
  {
    v4 = sub_100380488;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100380488()
{
  v122 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 752);

  type metadata accessor for SFAirDropUserDefaults();

  v3 = static SFAirDropUserDefaults.shared.getter();
  v4 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();

  sub_100285A50(v2, v4, (v0 + 232));
  v5 = *(v0 + 264);
  if (!v5)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    sub_10000C4AC(v117, qword_10097A860);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v121[0] = v17;
      *v16 = 136315138;
      v18 = Dictionary.description.getter();
      v20 = v19;

      v21 = sub_10000C4E4(v18, v20, v121);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to parse response %s", v16, 0xCu);
      sub_10000C60C(v17);
    }

    else
    {
    }

    sub_10032B0C0();
    swift_allocError();
    *v59 = 1;
    *(v59 + 8) = 1;
    swift_willThrow();
    v60 = _convertErrorToNSError(_:)();
    v61 = [v60 domain];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v120 = v60;
    if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
    {
    }

    else
    {
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v66 & 1) == 0)
      {
        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        sub_10000C4AC(v117, qword_10097A860);
        swift_errorRetain();
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *v110 = 138412290;
          swift_errorRetain();
          v112 = _swift_stdlib_bridgeErrorToNSError();
          *(v110 + 4) = v112;
          *v111 = v112;
          _os_log_impl(&_mh_execute_header, v108, v109, "Unknown altDSID fetch error %@", v110, 0xCu);
          sub_100005508(v111, &qword_100975400, &qword_1007F65D0);
        }

        swift_allocError();
        *v113 = 2;
        *(v113 + 8) = 1;
        goto LABEL_73;
      }
    }

    v67 = [v60 userInfo];
    v68 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003CE294(v68);
    v70 = v69;

    v71 = static SFAirDropUserDefaults.shared.getter();
    v72 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();

    sub_100285A50(v70, v72, (v0 + 192));
    v73 = *(v0 + 224);
    if (v73)
    {
      v74 = *(v0 + 208);
      *(v0 + 312) = *(v0 + 192);
      *(v0 + 328) = v74;
      *(v0 + 344) = v73;
      if (qword_1009736B8 != -1)
      {
        swift_once();
      }

      sub_10000C4AC(v117, qword_10097A860);
      *(v0 + 576) = *(v0 + 320);
      *(v0 + 744) = *(v0 + 344);
      sub_10000FF90(v0 + 576, v0 + 688, &qword_100975100, &qword_1007FBA10);
      sub_10000FF90(v0 + 744, v0 + 776, &qword_100974C10, &qword_1007F7E58);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      sub_100005508(v0 + 576, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 744, &qword_100974C10, &qword_1007F7E58);
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v121[0] = v78;
        *v77 = 136315138;
        sub_10000FF90(v0 + 576, v0 + 496, &qword_100975100, &qword_1007FBA10);
        sub_10000FF90(v0 + 744, v0 + 768, &qword_100974C10, &qword_1007F7E58);
        v79 = sub_100284AC4();
        v81 = v80;
        sub_100005508(v0 + 576, &qword_100975100, &qword_1007FBA10);
        sub_100005508(v0 + 744, &qword_100974C10, &qword_1007F7E58);
        v82 = sub_10000C4E4(v79, v81, v121);

        *(v77 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v75, v76, "Server altDSID fetch failure %s", v77, 0xCu);
        sub_10000C60C(v78);
      }

      v83 = *(v0 + 336);
      swift_allocError();
      *v84 = v83;
      *(v84 + 8) = 0;
      swift_willThrow();
      sub_100005508(v0 + 576, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 744, &qword_100974C10, &qword_1007F7E58);
      goto LABEL_74;
    }

    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v117, qword_10097A860);
    v98 = v60;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v121[0] = v102;
      *v101 = 136315138;
      v103 = [v98 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v104 = Dictionary.description.getter();
      v106 = v105;

      v107 = sub_10000C4E4(v104, v106, v121);

      *(v101 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v99, v100, "Unable to parse error response %s", v101, 0xCu);
      sub_10000C60C(v102);
    }

    swift_allocError();
    *v115 = 1;
    *(v115 + 8) = 1;
LABEL_73:
    swift_willThrow();
LABEL_74:

    v93 = *(v0 + 8);
LABEL_75:

    return v93();
  }

  v6 = *(v0 + 248);
  *(v0 + 272) = *(v0 + 232);
  *(v0 + 288) = v6;
  *(v0 + 304) = v5;

  if (qword_1009736B8 != -1)
  {
LABEL_80:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  *(v0 + 896) = v7;
  *(v0 + 904) = sub_10000C4AC(v7, qword_10097A860);
  *(v0 + 448) = *(v0 + 280);
  v8 = *(v0 + 304);
  *(v0 + 912) = v8;
  *(v0 + 736) = v8;
  sub_10000FF90(v0 + 448, v0 + 528, &qword_100975100, &qword_1007FBA10);
  sub_10000FF90(v0 + 736, v0 + 760, &qword_100974C10, &qword_1007F7E58);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 800);
  if (v11)
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = *(v8 + 16);
    sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    *(v13 + 12) = 2048;
    *(v13 + 14) = *(v12 + 16);

    _os_log_impl(&_mh_execute_header, v9, v10, "Processing %ld results - contactSet %ld", v13, 0x16u);
  }

  else
  {

    sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
  }

  v22 = static SFAirDropUserDefaults.shared.getter();
  *(v0 + 920) = SFAirDropUserDefaults.idmsHandleRetryDelaySeconds.getter();

  v23 = *(v8 + 16);
  *(v0 + 928) = v23;
  if (!v23)
  {
LABEL_50:
    sub_10000FF90(v0 + 448, v0 + 592, &qword_100975100, &qword_1007FBA10);
    sub_10000FF90(v0 + 736, v0 + 720, &qword_100974C10, &qword_1007F7E58);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v121[0] = v88;
      *v87 = 136315138;
      v89 = sub_100284AC4();
      v91 = v90;
      sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
      v92 = sub_10000C4E4(v89, v91, v121);

      *(v87 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v85, v86, "Batch success: %s", v87, 0xCu);
      sub_10000C60C(v88);
    }

    else
    {

      sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    }

    v93 = *(v0 + 8);
    goto LABEL_75;
  }

  *(v0 + 936) = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore;

  v24 = 0;
  while (1)
  {
    *(v0 + 944) = v24;
    v25 = *(v0 + 912);
    if (v24 >= *(v25 + 16))
    {
      goto LABEL_79;
    }

    v26 = v25 + 48 * v24;
    v27 = *(v26 + 32);
    *(v0 + 952) = v27;
    v28 = *(v26 + 40);
    *(v0 + 960) = v28;
    v29 = *(v26 + 48);
    *(v0 + 968) = v29;
    v30 = *(v26 + 56);
    *(v0 + 976) = v30;
    v31 = *(v26 + 64);
    v119 = *(v26 + 72);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v118 = v31;
      v35 = swift_slowAlloc();
      v121[0] = v35;
      *v34 = 136315138;
      *(v0 + 512) = 0;
      *(v0 + 520) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v36 = *(v0 + 520);
      *(v0 + 544) = *(v0 + 512);
      *(v0 + 552) = v36;
      v37._object = 0x8000000100788E90;
      v37._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v37);
      v38._countAndFlagsBits = v27;
      v38._object = v28;
      String.append(_:)(v38);
      v39._countAndFlagsBits = 0x44495344746C6120;
      v39._object = 0xE900000000000020;
      String.append(_:)(v39);
      *(v0 + 480) = v29;
      *(v0 + 488) = v30;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v40._countAndFlagsBits = 0x6F43726F72726520;
      v40._object = 0xEC000000203A6564;
      String.append(_:)(v40);
      *(v0 + 704) = v118;
      *(v0 + 712) = v119;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v41 = sub_10000C4E4(*(v0 + 544), *(v0 + 552), v121);

      *(v34 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Parsing %s", v34, 0xCu);
      sub_10000C60C(v35);
    }

    if (!v30)
    {
      break;
    }

    if (*(*(v0 + 800) + 16))
    {

      v42 = sub_100012854(v27, v28);
      v44 = v43;

      if (v44)
      {
        v45 = *(*(*(v0 + 800) + 56) + 8 * v42);
        *(v0 + 984) = v45;
        v46 = *(v45 + 32);
        *(v0 + 713) = v46;
        v47 = 1 << v46;
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        else
        {
          v48 = -1;
        }

        v49 = v48 & *(v45 + 56);
        v50 = (v47 + 63) >> 6;

        v51 = 0;
        while (v49)
        {
          v52 = v49;
LABEL_30:
          *(v0 + 1000) = v51;
          *(v0 + 992) = v52;
          v49 = (v52 - 1) & v52;
          v54 = *(*(v0 + 808) + *(v0 + 936));
          *(v0 + 1008) = v54;
          if (v54)
          {
            v94 = (*(v45 + 48) + ((v51 << 10) | (16 * __clz(__rbit64(v52)))));
            *(v0 + 1016) = *v94;
            *(v0 + 1024) = v94[1];
            v95 = qword_1009735E8;

            if (v95 != -1)
            {
              swift_once();
            }

            v96 = static IDMSActor.shared;
            v97 = sub_1003816E8;
            goto LABEL_69;
          }
        }

        while (1)
        {
          v53 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v53 >= v50)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_13;
          }

          v52 = *(v45 + 56 + 8 * v53);
          ++v51;
          if (v52)
          {
            v51 = v53;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }
    }

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "No contactID match for handle response", v58, 2u);
    }

LABEL_13:
    v24 = *(v0 + 944) + 1;
    if (v24 == *(v0 + 928))
    {
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
      goto LABEL_50;
    }
  }

  v55 = *(*(v0 + 808) + *(v0 + 936));
  *(v0 + 1032) = v55;
  if (!v55)
  {

    goto LABEL_13;
  }

  v114 = qword_1009735E8;

  if (v114 != -1)
  {
    swift_once();
  }

  v96 = static IDMSActor.shared;
  v97 = sub_100382238;
LABEL_69:

  return _swift_task_switch(v97, v96, 0);
}

uint64_t sub_1003816E8()
{
  v1 = *(v0 + 960);
  *(v0 + 624) = *(v0 + 952);
  *(v0 + 632) = v1;
  *(v0 + 640) = 124;
  *(v0 + 648) = 0xE100000000000000;
  sub_10001229C();
  if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v2 = *(v0 + 976), *(v0 + 656) = *(v0 + 968), *(v0 + 664) = v2, *(v0 + 672) = 124, *(v0 + 680) = 0xE100000000000000, (StringProtocol.contains<A>(_:)()) || (v3 = *(v0 + 1024), *(v0 + 464) = *(v0 + 1016), *(v0 + 472) = v3, *(v0 + 608) = 124, *(v0 + 616) = 0xE100000000000000, (StringProtocol.contains<A>(_:)()))
  {
    if (qword_100973620 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(*(v0 + 896), qword_100978850);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {

      goto LABEL_11;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Invalid entry - skipping store", v6, 2u);
  }

  else
  {
    v7 = *(v0 + 1024);
    v8 = *(v0 + 1016);
    v9 = *(v0 + 1008);
    v10 = *(v0 + 976);
    v11 = *(v0 + 960);
    v12 = *(v0 + 952);
    v13 = *(v0 + 856);
    v14 = *(v0 + 824);
    v18 = *(v0 + 816);
    v19 = *(v0 + 968);
    *(v0 + 144) = v12;
    *(v0 + 152) = v11;
    *(v0 + 160) = v19;
    *(v0 + 168) = v10;
    *(v0 + 176) = v8;
    *(v0 + 184) = v7;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v9 + 56);
    *(v9 + 56) = 0x8000000000000000;
    sub_10057AAF4((v0 + 144), v8, v7, isUniquelyReferenced_nonNull_native);
    *(v9 + 56) = v20;
    swift_endAccess();
    (*(v14 + 56))(v13, 1, 1, v18);
    swift_beginAccess();

    sub_1002B1544(v13, v12, v11);
    swift_endAccess();
    swift_beginAccess();

    sub_10046DAAC((v0 + 560), v19, v10);
    swift_endAccess();
  }

LABEL_11:
  v16 = *(v0 + 864);

  return _swift_task_switch(sub_100381A98, v16, 0);
}

uint64_t sub_100381A98()
{
  v53 = v0;
  v1 = (*(v0 + 992) - 1) & *(v0 + 992);
  v2 = *(v0 + 1000);
LABEL_2:
  while (v1)
  {
    v3 = v1;
LABEL_8:
    *(v0 + 1000) = v2;
    *(v0 + 992) = v3;
    v1 = (v3 - 1) & v3;
    v5 = *(*(v0 + 808) + *(v0 + 936));
    *(v0 + 1008) = v5;
    if (v5)
    {
      v48 = (*(*(v0 + 984) + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v3)))));
      *(v0 + 1016) = *v48;
      *(v0 + 1024) = v48[1];
      v49 = qword_1009735E8;

      if (v49 != -1)
      {
        swift_once();
      }

      v46 = static IDMSActor.shared;
      v47 = sub_1003816E8;
      goto LABEL_39;
    }
  }

  while (1)
  {
    v4 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
      goto LABEL_35;
    }

    if (v4 >= (((1 << *(v0 + 713)) + 63) >> 6))
    {
      break;
    }

    v3 = *(*(v0 + 984) + 8 * v4 + 56);
    ++v2;
    if (v3)
    {
      v2 = v4;
      goto LABEL_8;
    }
  }

  swift_bridgeObjectRelease_n();
  while (1)
  {
    while (1)
    {
      v6 = *(v0 + 944) + 1;
      if (v6 == *(v0 + 928))
      {
        sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
        sub_10000FF90(v0 + 448, v0 + 592, &qword_100975100, &qword_1007FBA10);
        sub_10000FF90(v0 + 736, v0 + 720, &qword_100974C10, &qword_1007F7E58);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
        sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v52 = v38;
          *v37 = 136315138;
          v39 = sub_100284AC4();
          v41 = v40;
          sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
          sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
          v42 = sub_10000C4E4(v39, v41, &v52);

          *(v37 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v35, v36, "Batch success: %s", v37, 0xCu);
          sub_10000C60C(v38);
        }

        else
        {

          sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
          sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
        }

        v43 = *(v0 + 8);

        return v43();
      }

      *(v0 + 944) = v6;
      v7 = *(v0 + 912);
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7 + 48 * v6;
      v9 = *(v8 + 32);
      *(v0 + 952) = v9;
      v10 = *(v8 + 40);
      *(v0 + 960) = v10;
      v11 = *(v8 + 48);
      *(v0 + 968) = v11;
      v12 = *(v8 + 56);
      *(v0 + 976) = v12;
      v13 = *(v8 + 64);
      v51 = *(v8 + 72);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v50 = v13;
        v17 = swift_slowAlloc();
        v52 = v17;
        *v16 = 136315138;
        *(v0 + 512) = 0;
        *(v0 + 520) = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v18 = *(v0 + 520);
        *(v0 + 544) = *(v0 + 512);
        *(v0 + 552) = v18;
        v19._object = 0x8000000100788E90;
        v19._countAndFlagsBits = 0xD000000000000018;
        String.append(_:)(v19);
        v20._countAndFlagsBits = v9;
        v20._object = v10;
        String.append(_:)(v20);
        v21._countAndFlagsBits = 0x44495344746C6120;
        v21._object = 0xE900000000000020;
        String.append(_:)(v21);
        *(v0 + 480) = v11;
        *(v0 + 488) = v12;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v22._countAndFlagsBits = 0x6F43726F72726520;
        v22._object = 0xEC000000203A6564;
        String.append(_:)(v22);
        *(v0 + 704) = v50;
        *(v0 + 712) = v51;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v23 = sub_10000C4E4(*(v0 + 544), *(v0 + 552), &v52);

        *(v16 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v14, v15, "Parsing %s", v16, 0xCu);
        sub_10000C60C(v17);
      }

      if (!v12)
      {
        break;
      }

      if (*(*(v0 + 800) + 16))
      {

        v24 = sub_100012854(v9, v10);
        v26 = v25;

        if (v26)
        {
          v31 = *(*(*(v0 + 800) + 56) + 8 * v24);
          *(v0 + 984) = v31;
          v32 = *(v31 + 32);
          *(v0 + 713) = v32;
          v33 = 1 << v32;
          if (v33 < 64)
          {
            v34 = ~(-1 << v33);
          }

          else
          {
            v34 = -1;
          }

          v1 = v34 & *(v31 + 56);

          v2 = 0;
          goto LABEL_2;
        }
      }

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "No contactID match for handle response", v29, 2u);
      }
    }

    v30 = *(*(v0 + 808) + *(v0 + 936));
    *(v0 + 1032) = v30;
    if (v30)
    {
      break;
    }
  }

  v45 = qword_1009735E8;

  if (v45 != -1)
  {
    goto LABEL_44;
  }

LABEL_35:
  v46 = static IDMSActor.shared;
  v47 = sub_100382238;
LABEL_39:

  return _swift_task_switch(v47, v46, 0);
}

uint64_t sub_100382238(uint64_t a1)
{
  v2 = v1[129];
  v3 = v1[120];
  v4 = v1[119];
  v5 = v1[106];
  v6 = v1[105];
  v7 = v1[104];
  v8 = v1[103];
  v9 = v1[102];
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v8 + 8))(v6, v9);
  swift_beginAccess();
  v10 = *(v8 + 32);
  v10(v7, v5, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 72);
  v1[91] = v12;
  *(v2 + 72) = 0x8000000000000000;
  v13 = sub_100012854(v4, v3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v3) = v14;
  v4 = v1 + 91;
  if (*(v12 + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_8:
      v23 = *v4;
      if (v3)
      {
LABEL_9:
        (*(v1[103] + 40))(v23[7] + *(v1[103] + 72) * v13, v1[104], v1[102]);
        goto LABEL_14;
      }

LABEL_12:
      v25 = v1[120];
      v26 = v1[119];
      v27 = v1[104];
      v28 = v1[103];
      v29 = v1[102];
      v23[(v13 >> 6) + 8] |= 1 << v13;
      v30 = (v23[6] + 16 * v13);
      *v30 = v26;
      v30[1] = v25;
      v31 = v10(v23[7] + *(v28 + 72) * v13, v27, v29);
      v34 = v23[2];
      v17 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v17)
      {
        __break(1u);
        return _swift_task_switch(v31, v32, v33);
      }

      v23[2] = v35;

LABEL_14:
      v36 = v1[108];
      *(v2 + 72) = v23;

      swift_endAccess();

      v31 = sub_1003824F4;
      v32 = v36;
      v33 = 0;

      return _swift_task_switch(v31, v32, v33);
    }

LABEL_11:
    v24 = v13;
    sub_1002CFFF4();
    v13 = v24;
    v23 = *v4;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v19 = v1[120];
  v20 = v1[119];
  sub_100574A1C(v18, isUniquelyReferenced_nonNull_native);
  v13 = sub_100012854(v20, v19);
  if ((v3 & 1) == (v21 & 1))
  {
    goto LABEL_8;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_1003824F4()
{
  v54 = v0;
  v1 = *(v0 + 944) + 1;
  if (v1 == *(v0 + 928))
  {
LABEL_2:
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    sub_10000FF90(v0 + 448, v0 + 592, &qword_100975100, &qword_1007FBA10);
    sub_10000FF90(v0 + 736, v0 + 720, &qword_100974C10, &qword_1007F7E58);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v53 = v5;
      *v4 = 136315138;
      v6 = sub_100284AC4();
      v8 = v7;
      sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
      v9 = sub_10000C4E4(v6, v8, &v53);

      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Batch success: %s", v4, 0xCu);
      sub_10000C60C(v5);
    }

    else
    {

      sub_100005508(v0 + 448, &qword_100975100, &qword_1007FBA10);
      sub_100005508(v0 + 736, &qword_100974C10, &qword_1007F7E58);
    }

    v44 = *(v0 + 8);

    return v44();
  }

  while (1)
  {
    *(v0 + 944) = v1;
    v10 = *(v0 + 912);
    if (v1 >= *(v10 + 16))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      swift_once();
LABEL_36:
      v48 = static IDMSActor.shared;
      v49 = sub_1003816E8;
      goto LABEL_40;
    }

    v11 = v10 + 48 * v1;
    v12 = *(v11 + 32);
    *(v0 + 952) = v12;
    v13 = *(v11 + 40);
    *(v0 + 960) = v13;
    v14 = *(v11 + 48);
    *(v0 + 968) = v14;
    v15 = *(v11 + 56);
    *(v0 + 976) = v15;
    v16 = *(v11 + 64);
    v52 = *(v11 + 72);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v51 = v16;
      v20 = swift_slowAlloc();
      v53 = v20;
      *v19 = 136315138;
      *(v0 + 512) = 0;
      *(v0 + 520) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v21 = *(v0 + 520);
      *(v0 + 544) = *(v0 + 512);
      *(v0 + 552) = v21;
      v22._object = 0x8000000100788E90;
      v22._countAndFlagsBits = 0xD000000000000018;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v12;
      v23._object = v13;
      String.append(_:)(v23);
      v24._countAndFlagsBits = 0x44495344746C6120;
      v24._object = 0xE900000000000020;
      String.append(_:)(v24);
      *(v0 + 480) = v14;
      *(v0 + 488) = v15;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v25._countAndFlagsBits = 0x6F43726F72726520;
      v25._object = 0xEC000000203A6564;
      String.append(_:)(v25);
      *(v0 + 704) = v51;
      *(v0 + 712) = v52;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v26 = sub_10000C4E4(*(v0 + 544), *(v0 + 552), &v53);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Parsing %s", v19, 0xCu);
      sub_10000C60C(v20);
    }

    if (!v15)
    {
      break;
    }

    if (*(*(v0 + 800) + 16))
    {

      v27 = sub_100012854(v12, v13);
      v29 = v28;

      if (v29)
      {
        v30 = *(*(*(v0 + 800) + 56) + 8 * v27);
        *(v0 + 984) = v30;
        v31 = *(v30 + 32);
        *(v0 + 713) = v31;
        v32 = 1 << v31;
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v34 = v33 & *(v30 + 56);
        v35 = (v32 + 63) >> 6;

        v36 = 0;
        do
        {
          if (!v34)
          {
            while (1)
            {
              v38 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                break;
              }

              if (v38 >= v35)
              {

                swift_bridgeObjectRelease_n();
                goto LABEL_6;
              }

              v37 = *(v30 + 56 + 8 * v38);
              ++v36;
              if (v37)
              {
                v36 = v38;
                goto LABEL_23;
              }
            }

            __break(1u);
            goto LABEL_44;
          }

          v37 = v34;
LABEL_23:
          *(v0 + 1000) = v36;
          *(v0 + 992) = v37;
          v34 = (v37 - 1) & v37;
          v39 = *(*(v0 + 808) + *(v0 + 936));
          *(v0 + 1008) = v39;
        }

        while (!v39);
        v46 = (*(v30 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v37)))));
        *(v0 + 1016) = *v46;
        *(v0 + 1024) = v46[1];
        v47 = qword_1009735E8;

        if (v47 != -1)
        {
          goto LABEL_45;
        }

        goto LABEL_36;
      }
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "No contactID match for handle response", v43, 2u);
    }

LABEL_6:
    v1 = *(v0 + 944) + 1;
    if (v1 == *(v0 + 928))
    {
      goto LABEL_2;
    }
  }

  v40 = *(*(v0 + 808) + *(v0 + 936));
  *(v0 + 1032) = v40;
  if (!v40)
  {

    goto LABEL_6;
  }

  v50 = qword_1009735E8;

  if (v50 != -1)
  {
    swift_once();
  }

  v48 = static IDMSActor.shared;
  v49 = sub_100382238;
LABEL_40:

  return _swift_task_switch(v49, v48, 0);
}

uint64_t sub_100382C8C(uint64_t a1)
{
  v54 = v1;
  v2 = *(v1 + 880);
  v3 = *(v1 + 872);
  swift_willThrow();

  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 domain];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      if (qword_1009736B8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000C4AC(v12, qword_10097A860);
      swift_errorRetain();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v17;
        *v16 = v17;
        _os_log_impl(&_mh_execute_header, v13, v14, "Unknown altDSID fetch error %@", v15, 0xCu);
        sub_100005508(v16, &qword_100975400, &qword_1007F65D0);
      }

      sub_10032B0C0();
      swift_allocError();
      *v18 = 2;
      *(v18 + 8) = 1;
LABEL_23:
      swift_willThrow();
      goto LABEL_24;
    }
  }

  v19 = [v4 userInfo];
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003CE294(v20);
  v22 = v21;

  type metadata accessor for SFAirDropUserDefaults();
  v23 = static SFAirDropUserDefaults.shared.getter();
  v24 = SFAirDropUserDefaults.idmsDefaultBackoffMS.getter();

  sub_100285A50(v22, v24, (v1 + 192));
  v25 = *(v1 + 224);
  if (!v25)
  {
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000C4AC(v38, qword_10097A860);
    v39 = v4;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      v43 = v53[0];
      *v42 = 136315138;
      v44 = [v39 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = Dictionary.description.getter();
      v47 = v46;

      v48 = sub_10000C4E4(v45, v47, v53);

      *(v42 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to parse error response %s", v42, 0xCu);
      sub_10000C60C(v43);
    }

    sub_10032B0C0();
    swift_allocError();
    *v49 = 1;
    *(v49 + 8) = 1;
    goto LABEL_23;
  }

  v52 = v4;
  v26 = *(v1 + 208);
  *(v1 + 312) = *(v1 + 192);
  *(v1 + 328) = v26;
  *(v1 + 344) = v25;
  if (qword_1009736B8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_10097A860);
  *(v1 + 576) = *(v1 + 320);
  *(v1 + 744) = *(v1 + 344);
  sub_10000FF90(v1 + 576, v1 + 688, &qword_100975100, &qword_1007FBA10);
  sub_10000FF90(v1 + 744, v1 + 776, &qword_100974C10, &qword_1007F7E58);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  sub_100005508(v1 + 576, &qword_100975100, &qword_1007FBA10);
  sub_100005508(v1 + 744, &qword_100974C10, &qword_1007F7E58);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v53[0] = v31;
    *v30 = 136315138;
    sub_10000FF90(v1 + 576, v1 + 496, &qword_100975100, &qword_1007FBA10);
    sub_10000FF90(v1 + 744, v1 + 768, &qword_100974C10, &qword_1007F7E58);
    v32 = sub_100284AC4();
    v34 = v33;
    sub_100005508(v1 + 576, &qword_100975100, &qword_1007FBA10);
    sub_100005508(v1 + 744, &qword_100974C10, &qword_1007F7E58);
    v35 = sub_10000C4E4(v32, v34, v53);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Server altDSID fetch failure %s", v30, 0xCu);
    sub_10000C60C(v31);
  }

  v4 = v52;
  v36 = *(v1 + 336);
  sub_10032B0C0();
  swift_allocError();
  *v37 = v36;
  *(v37 + 8) = 0;
  swift_willThrow();
  sub_100005508(v1 + 576, &qword_100975100, &qword_1007FBA10);
  sub_100005508(v1 + 744, &qword_100974C10, &qword_1007F7E58);
LABEL_24:

  v50 = *(v1 + 8);

  return v50();
}

uint64_t sub_100383400(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002CDC0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1003834F0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v3[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003835CC, v4, 0);
}

uint64_t sub_1003835CC()
{
  v1 = v0[3];
  v2 = (v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_appleIDState);
  v3 = v2[1];
  if (!v3)
  {
    v5 = v0[2];
    *v2 = v5;
    v2[1] = v1;
    sub_100371020(v5, v1);
    goto LABEL_14;
  }

  v4 = *v2;
  if (v3 == 1)
  {
    if (v1 == 1)
    {
      goto LABEL_14;
    }
  }

  else if (v1 >= 2)
  {
    v16 = v3 == v1 && v4 == v0[2];
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_14;
    }

    v1 = v0[3];
  }

  v6 = v0[2];
  *v2 = v6;
  v2[1] = v1;
  sub_100371020(v6, v1);
  sub_10037100C(v4, v3);
  type metadata accessor for SFAirDropUserDefaults();
  v7 = static SFAirDropUserDefaults.shared.getter();
  v8 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v8)
  {
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v13;
    v14[4] = v11;
    v15 = v11;

    sub_1002B3098(0, 0, v10, &unk_1007FDBE0, v14);
  }

LABEL_14:

  v17 = v0[1];

  return v17();
}

void sub_1003837D0()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  type metadata accessor for SFAirDropUserDefaults();
  v5 = static SFAirDropUserDefaults.shared.getter();
  v6 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v6)
  {
    if ([*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_deviceStatus] currentConsoleUser])
    {
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v1;
      v9 = v1;
      sub_1002B3098(0, 0, v4, &unk_1007FDBD0, v8);
    }
  }
}

uint64_t sub_100383938()
{
  v1 = [*(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_deviceStatus) myAppleID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 1;
  }

  v0[3] = v3;
  v0[4] = v5;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_100383A24;

  return sub_1003834F0(v3, v5);
}

uint64_t sub_100383A24()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  sub_10037100C(v2, v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t type metadata accessor for SDAirDropIDMSService(uint64_t a1)
{
  result = qword_10097A918;
  if (!qword_10097A918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100383DD8(uint64_t a1)
{
  sub_100383ECC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100383ECC(uint64_t a1)
{
  if (!qword_100975F70)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100975F70);
    }
  }
}

uint64_t sub_100383F24()
{
  v1[2] = v0;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1[3] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v1[4] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;
  v1[5] = static AirDropActor.shared;

  return _swift_task_switch(sub_100384034, v2, 0);
}

uint64_t sub_100384034()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_idmsStore);
  v0[6] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1003842DC;

    return sub_100329C34();
  }

  else
  {
    v5 = v0[4];
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_1003764E8(v5);
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask;
    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask))
    {

      Task.cancel()();
    }

    *(v1 + v7) = 0;

    type metadata accessor for SFAirDropUserDefaults();
    v8 = static SFAirDropUserDefaults.shared.getter();
    v9 = SFAirDropUserDefaults.privacyImprovements.getter();

    if (v9)
    {
      v10 = v0[5];
      v12 = v0[2];
      v11 = v0[3];
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
      v14 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v15 = swift_allocObject();
      v15[2] = v10;
      v15[3] = v14;
      v15[4] = v12;
      v16 = v12;

      sub_1002B3098(0, 0, v11, &unk_1007FDBF0, v15);
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1003842DC()
{
  v2 = *v1;

  v3 = *(v2 + 40);
  if (v0)
  {

    v4 = sub_100389CB4;
  }

  else
  {

    v4 = sub_100384438;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100384438()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_1003764E8(v1);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask;
  if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary20SDAirDropIDMSService_backoffRetryTask))
  {

    Task.cancel()();
  }

  *(v2 + v4) = 0;

  type metadata accessor for SFAirDropUserDefaults();
  v5 = static SFAirDropUserDefaults.shared.getter();
  v6 = SFAirDropUserDefaults.privacyImprovements.getter();

  if (v6)
  {
    v7 = v0[5];
    v9 = v0[2];
    v8 = v0[3];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = sub_100389AB0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
    v12 = swift_allocObject();
    v12[2] = v7;
    v12[3] = v11;
    v12[4] = v9;
    v13 = v9;

    sub_1002B3098(0, 0, v8, &unk_1007FDBF0, v12);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100384650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_1003780A0();
}

uint64_t sub_100384704(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C04;

  return sub_10037DE80(a1, v4, v5, v7, v6);
}

void *sub_1003847C4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, __n128))
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

    v10 = sub_100384A98(v9, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_100384868(uint64_t result, uint64_t a2, Swift::Int a3, Swift::Int a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v7 = (result + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      swift_bridgeObjectRetain_n();

      sub_10046EF98(&v10, v9, v8, a3, a4);

      v7 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_10038491C(uint64_t result, uint64_t a2, uint64_t a3, Swift::Int a4, uint64_t a5)
{
  v22 = a5;
  v5 = *(result + 16);
  if (v5)
  {
    v7 = 0;
    v8 = result + 32;
    v9 = a2 + 56;
    do
    {
      if (*(a2 + 16))
      {
        v10 = (v8 + 16 * v7);
        v12 = *v10;
        v11 = v10[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v13 = Hasher._finalize()();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = (*(a2 + 48) + 16 * v15);
            v18 = *v17 == v12 && v17[1] == v11;
            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v19 = v22;

          sub_10046EF98(&v21, v12, v11, a4, v19);
        }

LABEL_3:
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

Swift::Int sub_100384A98(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, __n128))
{
  v24 = result;
  v25 = 0;
  v6 = 0;
  v29 = a3;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = (*(v29 + 48) + 32 * v15);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v28[0] = *v16;
    v28[1] = v17;
    v28[2] = v18;
    v28[3] = v19;

    v20 = (a5)(v28, a4);

    if (v5)
    {
      return result;
    }

    if (v20)
    {
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:
        v22 = v29;

        return sub_1006E3504(v24, a2, v25, v22);
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
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100384C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, __n128), unint64_t a4)
{
  v35 = a3;
  v7 = v4;
  v8 = a1;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v36 = a2;

  if (v10 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v31 = v11;
    v37 = v7;
    v33 = &v31;
    __chkstk_darwin(v13);
    v32 = &v31 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v12);
    v34 = 0;
    v12 = 0;
    v14 = v8 + 56;
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    a4 = v16 & *(v8 + 56);
    v11 = (v15 + 63) >> 6;
    while (a4)
    {
      v17 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
LABEL_12:
      v20 = v17 | (v12 << 6);
      v7 = v8;
      v21 = (*(v8 + 48) + 32 * v20);
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v38[0] = *v21;
      v38[1] = v22;
      v38[2] = v23;
      v38[3] = v24;

      v25 = v37;
      v26 = (v35)(v38, v36);
      v37 = v25;
      if (v25)
      {

        swift_willThrow();
        goto LABEL_24;
      }

      v5 = v26;

      v8 = v7;
      if (v5)
      {
        *&v32[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
LABEL_17:
          v5 = sub_1006E3504(v32, v31, v34, v8);

          return v5;
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        goto LABEL_17;
      }

      v19 = *(v14 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        a4 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v36;

  v5 = sub_1003847C4(v29, v11, v8, v30, a4);

LABEL_24:

  return v5;
}

uint64_t sub_100384F38(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[22] = static AirDropActor.shared;

  return _swift_task_switch(sub_100384FD8, v3, 0);
}

uint64_t sub_100384FD8()
{
  v119 = v0;
  v0[18] = &_swiftEmptySetSingleton;
  v0[19] = &_swiftEmptySetSingleton;
  v108 = (v0 + 19);
  v109 = (v0 + 18);
  v1 = v0[20];
  if (v1 >> 62)
  {
    goto LABEL_130;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v0[23] = v2;
  v3 = 0;
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      v0[24] = v3;
      v5 = v0[20];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_125;
        }

        v6 = *(v5 + 8 * v4 + 32);
      }

      v0[25] = v6;
      v0[26] = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_124;
      }

      type metadata accessor for SDContactChangeHistoryAddEvent();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v111 = v7;
        v8 = [*(v7 + 16) emailAddresses];
        sub_10028088C(&qword_10097A210, &qword_1007FDB90);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v9 >> 62)
        {
          v0 = _CocoaArrayWrapper.endIndex.getter();
          v110 = v3;
          if (v0)
          {
LABEL_15:
            v10 = 0;
            v11 = _swiftEmptyArrayStorage;
            while (1)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_121;
                }

                v12 = *(v9 + 8 * v10 + 32);
              }

              v13 = v12;
              v14 = (v10 + 1);
              if (__OFADD__(v10, 1))
              {
                break;
              }

              v15 = String.init(_:)([v12 value]);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_10028E1C8(0, *(v11 + 2) + 1, 1, v11);
              }

              v17 = *(v11 + 2);
              v16 = *(v11 + 3);
              if (v17 >= v16 >> 1)
              {
                v11 = sub_10028E1C8((v16 > 1), v17 + 1, 1, v11);
              }

              *(v11 + 2) = v17 + 1;
              *&v11[16 * v17 + 32] = v15;
              ++v10;
              if (v14 == v0)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }
        }

        else
        {
          v0 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v110 = v3;
          if (v0)
          {
            goto LABEL_15;
          }
        }

        v11 = _swiftEmptyArrayStorage;
LABEL_33:

        v20 = [*(v111 + 16) phoneNumbers];
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v21 >> 62)
        {
          v114 = v21 & 0xFFFFFFFFFFFFFF8;
          v22 = _CocoaArrayWrapper.endIndex.getter();
          if (v22)
          {
LABEL_35:
            v0 = 0;
            v112 = _swiftEmptyArrayStorage;
LABEL_36:
            v23 = v0;
            while (1)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v23 >= *(v114 + 16))
                {
                  goto LABEL_123;
                }

                v24 = *(v21 + 8 * v23 + 32);
              }

              v25 = v24;
              v0 = (v23 + 1);
              if (__OFADD__(v23, 1))
              {
                break;
              }

              v26 = [v24 value];
              v27 = [v26 stringValue];

              v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v30 = v29;

              v117[8] = v28;
              v117[9] = v30;
              String.init<A>(_:)();
              v31 = String._bridgeToObjectiveC()();

              v32 = sub_1001F26EC(v31);

              if (v32)
              {
                v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v35 = v34;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v112 = sub_10028E1C8(0, *(v112 + 2) + 1, 1, v112);
                }

                v37 = *(v112 + 2);
                v36 = *(v112 + 3);
                if (v37 >= v36 >> 1)
                {
                  v112 = sub_10028E1C8((v36 > 1), v37 + 1, 1, v112);
                }

                *(v112 + 2) = v37 + 1;
                v38 = &v112[16 * v37];
                *(v38 + 4) = v33;
                *(v38 + 5) = v35;
                if (v0 != v22)
                {
                  goto LABEL_36;
                }

                goto LABEL_53;
              }

              ++v23;
              if (v0 == v22)
              {
                goto LABEL_53;
              }
            }

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
            goto LABEL_128;
          }
        }

        else
        {
          v114 = v21 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v22)
          {
            goto LABEL_35;
          }
        }

        v112 = _swiftEmptyArrayStorage;
LABEL_53:

        v39 = [*(v111 + 16) identifier];
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_10000C4AC(v43, qword_10097A860);

        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.debug.getter();

        v0 = v117;
        v3 = v110;
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v118[0] = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_10000C4E4(v40, v42, v118);
          _os_log_impl(&_mh_execute_header, v44, v45, "Add contact event %s", v46, 0xCu);
          sub_10000C60C(v47);
        }

        sub_100384868(v11, v109, v40, v42);

        sub_100384868(v112, v108, v40, v42);
        swift_bridgeObjectRelease_n();
      }

      else
      {
        type metadata accessor for SDContactChangeHistoryUpdateEvent();
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v113 = v18;
          v52 = [*(v18 + 16) emailAddresses];
          sub_10028088C(&qword_10097A210, &qword_1007FDB90);
          v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v54 = v53;
          if (v53 >> 62)
          {
            v55 = _CocoaArrayWrapper.endIndex.getter();
            v54 = v53;
          }

          else
          {
            v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v56 = _swiftEmptyArrayStorage;
          if (v55)
          {
            v57 = 0;
            v115 = v54 & 0xC000000000000001;
            v0 = (v54 & 0xFFFFFFFFFFFFFF8);
            v58 = v54;
            do
            {
              if (v115)
              {
                v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v57 >= v0[2])
                {
                  goto LABEL_127;
                }

                v59 = *(v54 + 8 * v57 + 32);
              }

              v60 = v59;
              v61 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                goto LABEL_126;
              }

              v62 = String.init(_:)([v59 value]);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v56 = sub_10028E1C8(0, *(v56 + 2) + 1, 1, v56);
              }

              v64 = *(v56 + 2);
              v63 = *(v56 + 3);
              if (v64 >= v63 >> 1)
              {
                v56 = sub_10028E1C8((v63 > 1), v64 + 1, 1, v56);
              }

              *(v56 + 2) = v64 + 1;
              *&v56[16 * v64 + 32] = v62;
              ++v57;
              v54 = v58;
            }

            while (v61 != v55);
          }

          v117[27] = v56;

          v65 = [*(v113 + 16) phoneNumbers];
          v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v66 >> 62)
          {
            v67 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v117[28] = _swiftEmptyArrayStorage;
          if (!v67)
          {
LABEL_106:

            v94 = [*(v113 + 16) identifier];
            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v97 = v96;

            v117[29] = v95;
            v117[30] = v97;
            if (qword_1009736B8 != -1)
            {
              swift_once();
            }

            v98 = type metadata accessor for Logger();
            sub_10000C4AC(v98, qword_10097A860);

            v99 = Logger.logObject.getter();
            v100 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v118[0] = v102;
              *v101 = 136315138;
              *(v101 + 4) = sub_10000C4E4(v95, v97, v118);
              _os_log_impl(&_mh_execute_header, v99, v100, "Update contact event %s", v101, 0xCu);
              sub_10000C60C(v102);
            }

            if (qword_1009735E8 != -1)
            {
              swift_once();
            }

            v50 = static IDMSActor.shared;
            v51 = sub_100385F08;
            goto LABEL_62;
          }

          v0 = 0;
          v116 = _swiftEmptyArrayStorage;
LABEL_84:
          v68 = v0;
          while (1)
          {
            if ((v66 & 0xC000000000000001) != 0)
            {
              v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_129;
              }

              v69 = *(v66 + 8 * v68 + 32);
            }

            v70 = v69;
            v0 = (v68 + 1);
            if (__OFADD__(v68, 1))
            {
              break;
            }

            v71 = [v69 value];
            v72 = [v71 stringValue];

            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v75 = v74;

            v117[8] = v73;
            v117[9] = v75;
            String.init<A>(_:)();
            v76 = String._bridgeToObjectiveC()();

            v77 = sub_1001F26EC(v76);

            if (v77)
            {
              v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v80 = v79;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v116 = sub_10028E1C8(0, *(v116 + 2) + 1, 1, v116);
              }

              v82 = *(v116 + 2);
              v81 = *(v116 + 3);
              if (v82 >= v81 >> 1)
              {
                v116 = sub_10028E1C8((v81 > 1), v82 + 1, 1, v116);
              }

              *(v116 + 2) = v82 + 1;
              v83 = &v116[16 * v82];
              *(v83 + 4) = v78;
              *(v83 + 5) = v80;
              v117[28] = v116;
              if (v0 != v67)
              {
                goto LABEL_84;
              }

              goto LABEL_106;
            }

            ++v68;
            if (v0 == v67)
            {
              goto LABEL_106;
            }
          }

LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          v2 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        type metadata accessor for SDContactChangeHistoryDeleteEvent();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          v84 = v19;
          if (qword_1009736B8 != -1)
          {
            swift_once();
          }

          v85 = type metadata accessor for Logger();
          sub_10000C4AC(v85, qword_10097A860);

          v86 = Logger.logObject.getter();
          v87 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v118[0] = v89;
            *v88 = 136315138;
            v90 = *(v84 + 16);
            v91 = *(v84 + 24);

            v92 = sub_10000C4E4(v90, v91, v118);

            *(v88 + 4) = v92;
            _os_log_impl(&_mh_execute_header, v86, v87, "Delete contact event %s)", v88, 0xCu);
            sub_10000C60C(v89);
          }

          v117[31] = *(v84 + 16);
          v117[32] = *(v84 + 24);
          v93 = qword_1009735E8;

          if (v93 != -1)
          {
            swift_once();
          }

          v50 = static IDMSActor.shared;
          v51 = sub_100386F94;
          goto LABEL_62;
        }

        type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
        if (swift_dynamicCastClass())
        {
          if (qword_1009736B8 != -1)
          {
            swift_once();
          }

          v103 = type metadata accessor for Logger();
          v0[33] = v103;
          sub_10000C4AC(v103, qword_10097A860);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            *v106 = 0;
            _os_log_impl(&_mh_execute_header, v104, v105, "Drop everything contact event", v106, 2u);
          }

          if (qword_1009735E8 != -1)
          {
            swift_once();
          }

          v50 = static IDMSActor.shared;
          v51 = sub_1003880C8;
          goto LABEL_62;
        }
      }

      v4 = v0[26];
      if (v4 == v0[23])
      {
        v49 = *v109;
        v48 = *v108;
        goto LABEL_59;
      }
    }
  }

  v48 = &_swiftEmptySetSingleton;
  v49 = &_swiftEmptySetSingleton;
LABEL_59:
  v0[35] = v48;
  v0[36] = v49;
  v0[34] = v3;
  if (qword_1009735E8 != -1)
  {
    swift_once();
  }

  v50 = static IDMSActor.shared;
  v51 = sub_1003882C8;
LABEL_62:

  return _swift_task_switch(v51, v50, 0);
}

uint64_t sub_100385F08()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + 56);
  *(v4 + 56) = 0x8000000000000000;
  sub_10057AAF4((v0 + 16), v2, v1, isUniquelyReferenced_nonNull_native);

  *(v4 + 56) = v7;
  swift_endAccess();

  return _swift_task_switch(sub_100385FFC, v3, 0);
}

uint64_t sub_100385FFC()
{
  v127 = v0;
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[24];

  sub_100384868(v4, (v0 + 18), v1, v2);

  sub_100384868(v3, (v0 + 19), v1, v2);
  swift_bridgeObjectRelease_n();

  v6 = v0[26];
  if (v6 == v0[23])
  {
LABEL_2:
    *(v0 + 35) = vextq_s8(*(v0 + 9), *(v0 + 9), 8uLL);
    v0[34] = v5;
    if (qword_1009735E8 != -1)
    {
LABEL_130:
      swift_once();
    }

    v7 = static IDMSActor.shared;
    v8 = sub_1003882C8;
  }

  else
  {
    v9 = &selRef_createWiFiRequest;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    v125 = v0;
    while (1)
    {
      while (1)
      {
        v0[24] = v5;
        v11 = v0[20];
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v12 = *(v11 + 8 * v6 + 32);
        }

        v125[25] = v12;
        v125[26] = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_121;
        }

        type metadata accessor for SDContactChangeHistoryAddEvent();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          break;
        }

        v118 = v13;
        v16 = [*(v13 + 16) v9[340]];
        sub_10028088C(&qword_10097A210, &qword_1007FDB90);
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v17 >> 62)
        {
          v18 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v117 = v5;
        v19 = _swiftEmptyArrayStorage;
        if (v18)
        {
          v20 = 0;
          while (1)
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_122;
              }

              v21 = *(v17 + 8 * v20 + 32);
            }

            v22 = v21;
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            v24 = String.init(_:)([v21 value]);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_10028E1C8(0, *(v19 + 2) + 1, 1, v19);
            }

            v26 = *(v19 + 2);
            v25 = *(v19 + 3);
            if (v26 >= v25 >> 1)
            {
              v19 = sub_10028E1C8((v25 > 1), v26 + 1, 1, v19);
            }

            *(v19 + 2) = v26 + 1;
            *&v19[16 * v26 + 32] = v24;
            ++v20;
            if (v23 == v18)
            {
              goto LABEL_34;
            }
          }

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
          goto LABEL_130;
        }

LABEL_34:

        v27 = [*(v118 + 16) phoneNumbers];
        v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v123 = v28 & 0xFFFFFFFFFFFFFF8;
        if (v28 >> 62)
        {
          v29 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v29)
        {
          v30 = 0;
          v121 = v28 & 0xC000000000000001;
          v119 = _swiftEmptyArrayStorage;
LABEL_38:
          v31 = v30;
          while (1)
          {
            if (v121)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v31 >= *(v123 + 16))
              {
                goto LABEL_124;
              }

              v32 = *(v28 + 8 * v31 + 32);
            }

            v33 = v32;
            v30 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_123;
            }

            v34 = v19;
            v35 = v28;
            v36 = v29;
            v37 = [v32 value];
            v38 = [v37 stringValue];

            v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            v125[8] = v39;
            v125[9] = v41;
            String.init<A>(_:)();
            v42 = String._bridgeToObjectiveC()();

            v43 = sub_1001F26EC(v42);

            if (v43)
            {
              v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v47 = v46;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v119 = sub_10028E1C8(0, *(v119 + 2) + 1, 1, v119);
              }

              v49 = *(v119 + 2);
              v48 = *(v119 + 3);
              if (v49 >= v48 >> 1)
              {
                v119 = sub_10028E1C8((v48 > 1), v49 + 1, 1, v119);
              }

              *(v119 + 2) = v49 + 1;
              v50 = &v119[16 * v49];
              *(v50 + 4) = v45;
              *(v50 + 5) = v47;
              v29 = v36;
              v44 = v30 == v36;
              v28 = v35;
              v19 = v34;
              if (v44)
              {
                goto LABEL_56;
              }

              goto LABEL_38;
            }

            ++v31;
            v29 = v36;
            v44 = v30 == v36;
            v28 = v35;
            v19 = v34;
            if (v44)
            {
              goto LABEL_56;
            }
          }
        }

        v119 = _swiftEmptyArrayStorage;
LABEL_56:

        v51 = [*(v118 + 16) identifier];
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;

        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_10000C4AC(v55, qword_10097A860);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v126[0] = v59;
          *v58 = 136315138;
          *(v58 + 4) = sub_10000C4E4(v52, v54, v126);
          _os_log_impl(&_mh_execute_header, v56, v57, "Add contact event %s", v58, 0xCu);
          sub_10000C60C(v59);
        }

        v5 = v117;
        sub_100384868(v19, (v125 + 18), v52, v54);

        sub_100384868(v119, (v125 + 19), v52, v54);
        swift_bridgeObjectRelease_n();
        v0 = v125;

        v6 = v125[26];
        p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
        v9 = &selRef_createWiFiRequest;
        if (v6 == v125[23])
        {
          goto LABEL_2;
        }
      }

      type metadata accessor for SDContactChangeHistoryUpdateEvent();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        break;
      }

      type metadata accessor for SDContactChangeHistoryDeleteEvent();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v93 = v15;
        if (p_opt_class_meths[215] != -1)
        {
          swift_once();
        }

        v94 = type metadata accessor for Logger();
        sub_10000C4AC(v94, qword_10097A860);

        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v126[0] = v98;
          *v97 = 136315138;
          v99 = *(v93 + 16);
          v100 = *(v93 + 24);

          v101 = sub_10000C4E4(v99, v100, v126);

          *(v97 + 4) = v101;
          _os_log_impl(&_mh_execute_header, v95, v96, "Delete contact event %s)", v97, 0xCu);
          sub_10000C60C(v98);
        }

        v125[31] = *(v93 + 16);
        v125[32] = *(v93 + 24);
        v102 = qword_1009735E8;

        if (v102 != -1)
        {
          swift_once();
        }

        v7 = static IDMSActor.shared;
        v8 = sub_100386F94;
        goto LABEL_4;
      }

      type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
      if (swift_dynamicCastClass())
      {
        if (p_opt_class_meths[215] != -1)
        {
          swift_once();
        }

        v112 = type metadata accessor for Logger();
        v125[33] = v112;
        sub_10000C4AC(v112, qword_10097A860);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          _os_log_impl(&_mh_execute_header, v113, v114, "Drop everything contact event", v115, 2u);
        }

        if (qword_1009735E8 != -1)
        {
          swift_once();
        }

        v7 = static IDMSActor.shared;
        v8 = sub_1003880C8;
        goto LABEL_4;
      }

      v0 = v125;
      v6 = v125[26];
      if (v6 == v125[23])
      {
        goto LABEL_2;
      }
    }

    v122 = v14;
    v60 = [*(v14 + 16) v9[340]];
    sub_10028088C(&qword_10097A210, &qword_1007FDB90);
    v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v61 >> 62)
    {
      v62 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = _swiftEmptyArrayStorage;
    if (v62)
    {
      v64 = 0;
      v124 = v61 & 0xC000000000000001;
      v65 = v61 & 0xFFFFFFFFFFFFFF8;
      v66 = v61;
      do
      {
        if (v124)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v64 >= *(v65 + 16))
          {
            goto LABEL_126;
          }

          v67 = *(v61 + 8 * v64 + 32);
        }

        v68 = v67;
        v69 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_125;
        }

        v70 = String.init(_:)([v67 value]);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_10028E1C8(0, *(v63 + 2) + 1, 1, v63);
        }

        v72 = *(v63 + 2);
        v71 = *(v63 + 3);
        if (v72 >= v71 >> 1)
        {
          v63 = sub_10028E1C8((v71 > 1), v72 + 1, 1, v63);
        }

        *(v63 + 2) = v72 + 1;
        *&v63[16 * v72 + 32] = v70;
        ++v64;
        v44 = v69 == v62;
        v61 = v66;
      }

      while (!v44);
    }

    v125[27] = v63;

    v73 = [*(v122 + 16) phoneNumbers];
    v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v74 >> 62)
    {
      v75 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v125[28] = _swiftEmptyArrayStorage;
    if (v75)
    {
      v76 = 0;
      v120 = _swiftEmptyArrayStorage;
LABEL_84:
      v77 = v76;
      do
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v77 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_128;
          }

          v78 = *(v74 + 8 * v77 + 32);
        }

        v79 = v78;
        v76 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_127;
        }

        v80 = [v78 value];
        v81 = [v80 stringValue];

        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        v125[8] = v82;
        v125[9] = v84;
        String.init<A>(_:)();
        v85 = String._bridgeToObjectiveC()();

        v86 = sub_1001F26EC(v85);

        if (v86)
        {
          v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v89 = v88;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v120 = sub_10028E1C8(0, *(v120 + 2) + 1, 1, v120);
          }

          v91 = *(v120 + 2);
          v90 = *(v120 + 3);
          if (v91 >= v90 >> 1)
          {
            v120 = sub_10028E1C8((v90 > 1), v91 + 1, 1, v120);
          }

          *(v120 + 2) = v91 + 1;
          v92 = &v120[16 * v91];
          *(v92 + 4) = v87;
          *(v92 + 5) = v89;
          v125[28] = v120;
          if (v76 != v75)
          {
            goto LABEL_84;
          }

          break;
        }

        ++v77;
      }

      while (v76 != v75);
    }

    v103 = [*(v122 + 16) identifier];
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;

    v125[29] = v104;
    v125[30] = v106;
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    sub_10000C4AC(v107, qword_10097A860);

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v126[0] = v111;
      *v110 = 136315138;
      *(v110 + 4) = sub_10000C4E4(v104, v106, v126);
      _os_log_impl(&_mh_execute_header, v108, v109, "Update contact event %s", v110, 0xCu);
      sub_10000C60C(v111);
    }

    if (qword_1009735E8 != -1)
    {
      swift_once();
    }

    v7 = static IDMSActor.shared;
    v8 = sub_100385F08;
  }

LABEL_4:

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100386F94()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[21];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v3 + 56);
  v0[12] = v5;
  *(v3 + 56) = 0x8000000000000000;
  v6 = sub_100012854(v2, v1);
  v9 = *(v5 + 16);
  v10 = (v7 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_16:
    v31 = v6;
    sub_1002D001C();
    v6 = v31;
LABEL_8:
    v16 = v0[12];
    v17 = v0[32];
    if (v1)
    {
      v18 = (v16[7] + 48 * v6);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      *v18 = 0u;
      *(v18 + 1) = 0u;
      *(v18 + 2) = 0u;
      sub_100389AF8(v19, v20, v21, v22, v23, v24);
    }

    else
    {
      v25 = v0[31];
      v16[(v6 >> 6) + 8] |= 1 << v6;
      v26 = (v16[6] + 16 * v6);
      *v26 = v25;
      v26[1] = v17;
      v27 = (v16[7] + 48 * v6);
      v27[1] = 0u;
      v27[2] = 0u;
      *v27 = 0u;
      v28 = v16[2];
      v11 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v11)
      {
        __break(1u);
        return _swift_task_switch(v6, v7, v8);
      }

      v16[2] = v29;
    }

    v30 = v0[22];
    *(v0[21] + 56) = v16;
    swift_endAccess();
    v6 = sub_100387198;
    v7 = v30;
    v8 = 0;

    return _swift_task_switch(v6, v7, v8);
  }

  LOBYTE(v1) = v7;
  if (*(v5 + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v14 = v0[31];
  v13 = v0[32];
  sub_100574A44(v12, isUniquelyReferenced_nonNull_native);
  v6 = sub_100012854(v14, v13);
  if ((v1 & 1) == (v7 & 1))
  {
    goto LABEL_8;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100387198()
{
  v123 = v0;

  v1 = v0[26];
  v2 = v0[24];
  if (v1 == v0[23])
  {
LABEL_2:
    *(v0 + 35) = vextq_s8(*(v0 + 9), *(v0 + 9), 8uLL);
    v0[34] = v2;
    if (qword_1009735E8 != -1)
    {
LABEL_130:
      swift_once();
    }

    v3 = static IDMSActor.shared;
    v4 = sub_1003882C8;
  }

  else
  {
    v5 = &selRef_createWiFiRequest;
    p_opt_class_meths = &OBJC_PROTOCOL___BLSBacklightStateObserving.opt_class_meths;
    v121 = v0;
    while (1)
    {
      while (1)
      {
        v0[24] = v2;
        v7 = v0[20];
        if ((v7 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v8 = *(v7 + 8 * v1 + 32);
        }

        v121[25] = v8;
        v121[26] = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          __break(1u);
          goto LABEL_121;
        }

        type metadata accessor for SDContactChangeHistoryAddEvent();
        v9 = swift_dynamicCastClass();
        if (!v9)
        {
          break;
        }

        v114 = v9;
        v12 = [*(v9 + 16) v5[340]];
        sub_10028088C(&qword_10097A210, &qword_1007FDB90);
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v13 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v113 = v2;
        v15 = _swiftEmptyArrayStorage;
        if (v14)
        {
          v16 = 0;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_122;
              }

              v17 = *(v13 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v20 = String.init(_:)([v17 value]);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_10028E1C8(0, *(v15 + 2) + 1, 1, v15);
            }

            v22 = *(v15 + 2);
            v21 = *(v15 + 3);
            if (v22 >= v21 >> 1)
            {
              v15 = sub_10028E1C8((v21 > 1), v22 + 1, 1, v15);
            }

            *(v15 + 2) = v22 + 1;
            *&v15[16 * v22 + 32] = v20;
            ++v16;
            if (v19 == v14)
            {
              goto LABEL_34;
            }
          }

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
          goto LABEL_130;
        }

LABEL_34:

        v23 = [*(v114 + 16) phoneNumbers];
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v119 = v24 & 0xFFFFFFFFFFFFFF8;
        if (v24 >> 62)
        {
          v25 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v25)
        {
          v26 = 0;
          v117 = v24 & 0xC000000000000001;
          v115 = _swiftEmptyArrayStorage;
LABEL_38:
          v27 = v26;
          while (1)
          {
            if (v117)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v27 >= *(v119 + 16))
              {
                goto LABEL_124;
              }

              v28 = *(v24 + 8 * v27 + 32);
            }

            v29 = v28;
            v26 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_123;
            }

            v30 = v15;
            v31 = v24;
            v32 = v25;
            v33 = [v28 value];
            v34 = [v33 stringValue];

            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v36;

            v121[8] = v35;
            v121[9] = v37;
            String.init<A>(_:)();
            v38 = String._bridgeToObjectiveC()();

            v39 = sub_1001F26EC(v38);

            if (v39)
            {
              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v43 = v42;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v115 = sub_10028E1C8(0, *(v115 + 2) + 1, 1, v115);
              }

              v45 = *(v115 + 2);
              v44 = *(v115 + 3);
              if (v45 >= v44 >> 1)
              {
                v115 = sub_10028E1C8((v44 > 1), v45 + 1, 1, v115);
              }

              *(v115 + 2) = v45 + 1;
              v46 = &v115[16 * v45];
              *(v46 + 4) = v41;
              *(v46 + 5) = v43;
              v25 = v32;
              v40 = v26 == v32;
              v24 = v31;
              v15 = v30;
              if (v40)
              {
                goto LABEL_56;
              }

              goto LABEL_38;
            }

            ++v27;
            v25 = v32;
            v40 = v26 == v32;
            v24 = v31;
            v15 = v30;
            if (v40)
            {
              goto LABEL_56;
            }
          }
        }

        v115 = _swiftEmptyArrayStorage;
LABEL_56:

        v47 = [*(v114 + 16) identifier];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        if (qword_1009736B8 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_10000C4AC(v51, qword_10097A860);

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v122[0] = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_10000C4E4(v48, v50, v122);
          _os_log_impl(&_mh_execute_header, v52, v53, "Add contact event %s", v54, 0xCu);
          sub_10000C60C(v55);
        }

        v2 = v113;
        sub_100384868(v15, (v121 + 18), v48, v50);

        sub_100384868(v115, (v121 + 19), v48, v50);
        swift_bridgeObjectRelease_n();
        v0 = v121;

        v1 = v121[26];
        p_opt_class_meths = (&OBJC_PROTOCOL___BLSBacklightStateObserving + 48);
        v5 = &selRef_createWiFiRequest;
        if (v1 == v121[23])
        {
          goto LABEL_2;
        }
      }

      type metadata accessor for SDContactChangeHistoryUpdateEvent();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        break;
      }

      type metadata accessor for SDContactChangeHistoryDeleteEvent();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v89 = v11;
        if (p_opt_class_meths[215] != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        sub_10000C4AC(v90, qword_10097A860);

        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v122[0] = v94;
          *v93 = 136315138;
          v95 = *(v89 + 16);
          v96 = *(v89 + 24);

          v97 = sub_10000C4E4(v95, v96, v122);

          *(v93 + 4) = v97;
          _os_log_impl(&_mh_execute_header, v91, v92, "Delete contact event %s)", v93, 0xCu);
          sub_10000C60C(v94);
        }

        v121[31] = *(v89 + 16);
        v121[32] = *(v89 + 24);
        v98 = qword_1009735E8;

        if (v98 != -1)
        {
          swift_once();
        }

        v3 = static IDMSActor.shared;
        v4 = sub_100386F94;
        goto LABEL_4;
      }

      type metadata accessor for SDContactChangeHistoryDropEverythingEvent();
      if (swift_dynamicCastClass())
      {
        if (p_opt_class_meths[215] != -1)
        {
          swift_once();
        }

        v108 = type metadata accessor for Logger();
        v121[33] = v108;
        sub_10000C4AC(v108, qword_10097A860);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&_mh_execute_header, v109, v110, "Drop everything contact event", v111, 2u);
        }

        if (qword_1009735E8 != -1)
        {
          swift_once();
        }

        v3 = static IDMSActor.shared;
        v4 = sub_1003880C8;
        goto LABEL_4;
      }

      v0 = v121;
      v1 = v121[26];
      if (v1 == v121[23])
      {
        goto LABEL_2;
      }
    }

    v118 = v10;
    v56 = [*(v10 + 16) v5[340]];
    sub_10028088C(&qword_10097A210, &qword_1007FDB90);
    v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v57 >> 62)
    {
      v58 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v59 = _swiftEmptyArrayStorage;
    if (v58)
    {
      v60 = 0;
      v120 = v57 & 0xC000000000000001;
      v61 = v57 & 0xFFFFFFFFFFFFFF8;
      v62 = v57;
      do
      {
        if (v120)
        {
          v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v60 >= *(v61 + 16))
          {
            goto LABEL_126;
          }

          v63 = *(v57 + 8 * v60 + 32);
        }

        v64 = v63;
        v65 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_125;
        }

        v66 = String.init(_:)([v63 value]);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_10028E1C8(0, *(v59 + 2) + 1, 1, v59);
        }

        v68 = *(v59 + 2);
        v67 = *(v59 + 3);
        if (v68 >= v67 >> 1)
        {
          v59 = sub_10028E1C8((v67 > 1), v68 + 1, 1, v59);
        }

        *(v59 + 2) = v68 + 1;
        *&v59[16 * v68 + 32] = v66;
        ++v60;
        v40 = v65 == v58;
        v57 = v62;
      }

      while (!v40);
    }

    v121[27] = v59;

    v69 = [*(v118 + 16) phoneNumbers];
    v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v70 >> 62)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v121[28] = _swiftEmptyArrayStorage;
    if (v71)
    {
      v72 = 0;
      v116 = _swiftEmptyArrayStorage;
LABEL_84:
      v73 = v72;
      do
      {
        if ((v70 & 0xC000000000000001) != 0)
        {
          v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v73 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_128;
          }

          v74 = *(v70 + 8 * v73 + 32);
        }

        v75 = v74;
        v72 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_127;
        }

        v76 = [v74 value];
        v77 = [v76 stringValue];

        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        v121[8] = v78;
        v121[9] = v80;
        String.init<A>(_:)();
        v81 = String._bridgeToObjectiveC()();

        v82 = sub_1001F26EC(v81);

        if (v82)
        {
          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_10028E1C8(0, *(v116 + 2) + 1, 1, v116);
          }

          v87 = *(v116 + 2);
          v86 = *(v116 + 3);
          if (v87 >= v86 >> 1)
          {
            v116 = sub_10028E1C8((v86 > 1), v87 + 1, 1, v116);
          }

          *(v116 + 2) = v87 + 1;
          v88 = &v116[16 * v87];
          *(v88 + 4) = v83;
          *(v88 + 5) = v85;
          v121[28] = v116;
          if (v72 != v71)
          {
            goto LABEL_84;
          }

          break;
        }

        ++v73;
      }

      while (v72 != v71);
    }

    v99 = [*(v118 + 16) identifier];
    v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v101;

    v121[29] = v100;
    v121[30] = v102;
    if (qword_1009736B8 != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_10000C4AC(v103, qword_10097A860);

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v122[0] = v107;
      *v106 = 136315138;
      *(v106 + 4) = sub_10000C4E4(v100, v102, v122);
      _os_log_impl(&_mh_execute_header, v104, v105, "Update contact event %s", v106, 0xCu);
      sub_10000C60C(v107);
    }

    if (qword_1009735E8 != -1)
    {
      swift_once();
    }

    v3 = static IDMSActor.shared;
    v4 = sub_100385F08;
  }

LABEL_4:

  return _swift_task_switch(v4, v3, 0);
}