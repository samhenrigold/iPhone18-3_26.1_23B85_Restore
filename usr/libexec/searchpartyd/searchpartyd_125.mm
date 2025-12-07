uint64_t sub_100DEDBEC(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v58 - v9;
  v60 = v2;
  v11 = *v2;
  Hasher.init(_seed:)();
  v64 = v4;
  v12 = *(v4 + 24);
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v63 = v12;
  dispatch thunk of Hashable.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  v68 = v11 + 56;
  v16 = *(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15;
  v59 = v10;
  if (v16)
  {
    v17 = v11;
    v73 = ~v14;
    v18 = *a2;
    v19 = *(a2 + 8);
    v74 = *(v5 + 72);
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19 == 0xC000000000000000;
    }

    v21 = !v20;
    v72 = v21;
    v22 = v19 >> 62;
    v69 = 0;
    v70 = v18;
    v23 = HIDWORD(v18) - v18;
    v24 = __OFSUB__(HIDWORD(v18), v18);
    v67 = v24;
    v66 = v23;
    v65 = v19;
    v71 = BYTE6(v19);
    v25 = v64;
    v62 = v11;
    v26 = v68;
    while (1)
    {
      v27 = v74 * v15;
      sub_100E0ED24(*(v17 + 48) + v74 * v15, v8, type metadata accessor for OwnedBeaconGroup);
      v28 = *v8;
      v29 = *(v8 + 1);
      v30 = v29 >> 62;
      if (v29 >> 62 == 3)
      {
        break;
      }

      if (v30 > 1)
      {
        if (v30 != 2)
        {
          goto LABEL_36;
        }

        v36 = *(v28 + 16);
        v35 = *(v28 + 24);
        v37 = __OFSUB__(v35, v36);
        v34 = v35 - v36;
        if (v37)
        {
          goto LABEL_79;
        }

        if (v22 > 1)
        {
          goto LABEL_37;
        }
      }

      else if (v30)
      {
        LODWORD(v34) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
          goto LABEL_78;
        }

        v34 = v34;
        if (v22 > 1)
        {
LABEL_37:
          if (v22 != 2)
          {
            if (v34)
            {
              goto LABEL_13;
            }

            goto LABEL_62;
          }

          v40 = *(v70 + 16);
          v39 = *(v70 + 24);
          v37 = __OFSUB__(v39, v40);
          v38 = v39 - v40;
          if (v37)
          {
            goto LABEL_77;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v34 = BYTE6(v29);
        if (v22 > 1)
        {
          goto LABEL_37;
        }
      }

LABEL_33:
      v38 = v71;
      if (v22)
      {
        v38 = v66;
        if (v67)
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
        }
      }

LABEL_39:
      if (v34 != v38)
      {
        goto LABEL_13;
      }

      if (v34 < 1)
      {
        goto LABEL_62;
      }

      if (v30 > 1)
      {
        if (v30 == 2)
        {
          v41 = *(v28 + 16);
          v42 = *(v28 + 24);
          v43 = __DataStorage._bytes.getter();
          if (v43)
          {
            v44 = __DataStorage._offset.getter();
            if (__OFSUB__(v41, v44))
            {
              goto LABEL_82;
            }

            v43 += v41 - v44;
          }

          if (__OFSUB__(v42, v41))
          {
            goto LABEL_81;
          }

LABEL_58:
          __DataStorage._length.getter();
          v47 = v69;
          sub_100771A28(v43, v70, v65, v76);
          v69 = v47;
          v25 = v64;
          v17 = v62;
          v26 = v68;
          if ((v76[0] & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_62;
        }

        *&v76[6] = 0;
        *v76 = 0;
      }

      else
      {
        if (v30)
        {
          v45 = v28;
          if (v28 >> 32 < v28)
          {
            goto LABEL_80;
          }

          v43 = __DataStorage._bytes.getter();
          if (v43)
          {
            v46 = __DataStorage._offset.getter();
            if (__OFSUB__(v45, v46))
            {
              goto LABEL_83;
            }

            v43 += v45 - v46;
          }

          goto LABEL_58;
        }

        *v76 = *v8;
        *&v76[8] = v29;
        v76[10] = BYTE2(v29);
        v76[11] = BYTE3(v29);
        v76[12] = BYTE4(v29);
        v76[13] = BYTE5(v29);
      }

      v48 = v69;
      sub_100771A28(v76, v70, v65, &v75);
      v69 = v48;
      v26 = v68;
      if (!v75)
      {
        goto LABEL_13;
      }

LABEL_62:
      v49 = *(a2 + 24);
      if (v8[24] == 1)
      {
        if ((*(a2 + 24) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (*(v8 + 2) != *(a2 + 16))
        {
          v49 = 1;
        }

        if (v49)
        {
          goto LABEL_13;
        }
      }

      if ((static UUID.== infix(_:_:)() & 1) != 0 && (static MACAddress.== infix(_:_:)() & 1) != 0 && v8[v25[8]] == *(a2 + v25[8]))
      {
        if (v50 = v25[9], v51 = *&v8[v50], v52 = *&v8[v50 + 8], v53 = (a2 + v50), v51 == *v53) && v52 == v53[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          if (sub_100DE8118(*&v8[v25[10]], *(a2 + v25[10])))
          {
            sub_100E0EC5C(v8, type metadata accessor for OwnedBeaconGroup);
            sub_100E0EC5C(a2, type metadata accessor for OwnedBeaconGroup);
            sub_100E0ED24(*(v17 + 48) + v27, v61, type metadata accessor for OwnedBeaconGroup);
            return 0;
          }
        }
      }

LABEL_13:
      sub_100E0EC5C(v8, type metadata accessor for OwnedBeaconGroup);
      v15 = (v15 + 1) & v73;
      if (((*(v26 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    if (v28)
    {
      v31 = 0;
    }

    else
    {
      v31 = v29 == 0xC000000000000000;
    }

    v33 = !v31 || v22 < 3;
    if (((v33 | v72) & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_36:
    v34 = 0;
    if (v22 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_76:
  v55 = v60;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v59;
  sub_100E0ED24(a2, v59, type metadata accessor for OwnedBeaconGroup);
  *v76 = *v55;
  sub_100E00A04(v57, v15, isUniquelyReferenced_nonNull_native);
  *v55 = *v76;
  sub_100E0ECBC(a2, v61, type metadata accessor for OwnedBeaconGroup);
  return 1;
}

uint64_t sub_100DEE2AC(uint64_t *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F20C4(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DF7418(v17 + 1);
    }

    sub_1010F4128(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
  sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100E010C4(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000041A4(&qword_1016BC110, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DEE584(uint64_t *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F22FC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016C7F50, &unk_1013B3590);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016C7F50, &unk_1013B3590, &unk_1016BC050, SPBeacon_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

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

uint64_t sub_100DEE7EC(uint64_t a1, double *a2)
{
  v30 = a1;
  v4 = type metadata accessor for WildModeTrackingLocation(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v28 = (&v27 - v9);
  v29 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  v11 = *a2;
  if (*a2 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = *a2;
  }

  Hasher._combine(_:)(*&v12);
  v13 = a2[1];
  if (v13 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = a2[1];
  }

  Hasher._combine(_:)(*&v14);
  v15 = a2[2];
  if (v15 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = a2[2];
  }

  Hasher._combine(_:)(*&v16);
  v31 = v4;
  type metadata accessor for Date();
  sub_1000097BC(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v17 = Hasher._finalize()();
  v18 = -1 << *(v10 + 32);
  v19 = v17 & ~v18;
  if ((*(v10 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v21 = *(v5 + 72);
    do
    {
      sub_100E0ED24(*(v10 + 48) + v21 * v19, v8, type metadata accessor for WildModeTrackingLocation);
      if (*v8 == v11 && v8[1] == v13 && v8[2] == v15)
      {
        v22 = static Date.== infix(_:_:)();
        sub_100E0EC5C(v8, type metadata accessor for WildModeTrackingLocation);
        if (v22)
        {
          sub_100E0EC5C(a2, type metadata accessor for WildModeTrackingLocation);
          sub_100E0ED24(*(v10 + 48) + v21 * v19, v30, type metadata accessor for WildModeTrackingLocation);
          return 0;
        }
      }

      else
      {
        sub_100E0EC5C(v8, type metadata accessor for WildModeTrackingLocation);
      }

      v19 = (v19 + 1) & v20;
    }

    while (((*(v10 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  v24 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v28;
  sub_100E0ED24(a2, v28, type metadata accessor for WildModeTrackingLocation);
  v32 = *v24;
  sub_100E012C0(v26, v19, isUniquelyReferenced_nonNull_native);
  *v24 = v32;
  sub_100E0ECBC(a2, v30, type metadata accessor for WildModeTrackingLocation);
  return 1;
}

uint64_t sub_100DEEB44(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  sub_1007766A4(v15, a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_100775E74(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v15[0] = *v2;

    sub_100E01620(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = *&v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_100DEEC84(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Destination();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000097BC(&qword_1016BC000, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      sub_1000097BC(&qword_1016BC008, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    sub_100E017AC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100DEEF64(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  v6 = qword_1013E9EE8[a2];
  Hasher._combine(_:)(v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (qword_1013E9EE8[*(*(v5 + 48) + v9)] != v6)
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
    sub_100E01A74(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DEF098(uint64_t *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F24EC(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DF8424(v17 + 1);
    }

    sub_1010F42CC(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  sub_1000097BC(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100E01BF0(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000097BC(&qword_1016BC188, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DEF338(uint64_t *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016C7F80, SPStandaloneBeacon_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F2720(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016BC160, &unk_101406280);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016C7F80, SPStandaloneBeacon_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016BC160, &unk_101406280, &unk_1016C7F80, SPStandaloneBeacon_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

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

uint64_t sub_100DEF5A0(uint64_t *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016C7F70, SPBeaconGroup_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F2910(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016BC150, &qword_1013E9EC0);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016C7F70, SPBeaconGroup_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016BC150, &qword_1013E9EC0, &unk_1016C7F70, SPBeaconGroup_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

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

uint64_t sub_100DEF830(void *a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v6 = v5;
  v9 = *v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
      {

        goto LABEL_12;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v9 + 48) + 8 * v12);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    v21 = a2;
    sub_100DFE644(v21, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v6 = v28;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_100DEFA08(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  v12 = static Hasher._hash(seed:_:)();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
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
    v18 = *v5;
    sub_100DFE20C(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DEFB08(uint64_t *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F2D38(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016BC170, &qword_1013D6BD8);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016BC170, &qword_1013D6BD8, &unk_1016C7F90, SPTrackingAvoidanceResult_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

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

uint64_t sub_100DEFD8C(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for BeaconIdentifier(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v22 = &v21 - v9;
  v23 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v25 = v4;
  dispatch thunk of Hashable.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    do
    {
      sub_100E0ED24(*(v10 + 48) + v15 * v13, v8, type metadata accessor for BeaconIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v16 = static UUID.== infix(_:_:)();
        sub_100E0EC5C(v8, type metadata accessor for BeaconIdentifier);
        if (v16)
        {
          sub_100E0EC5C(a2, type metadata accessor for BeaconIdentifier);
          sub_100E0ED24(*(v10 + 48) + v15 * v13, v24, type metadata accessor for BeaconIdentifier);
          return 0;
        }
      }

      else
      {
        sub_100E0EC5C(v8, type metadata accessor for BeaconIdentifier);
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  v18 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v22;
  sub_100E0ED24(a2, v22, type metadata accessor for BeaconIdentifier);
  v26 = *v18;
  sub_100E01FE4(v20, v13, isUniquelyReferenced_nonNull_native);
  *v18 = v26;
  sub_100E0ECBC(a2, v24, type metadata accessor for BeaconIdentifier);
  return 1;
}

uint64_t sub_100DF0094(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  return sub_100DF29FC(a1, a2, a3, a4, &qword_1016BBE48, &qword_1013E9DB0, &qword_1016BBE40, &qword_1013BFD20);
}

uint64_t sub_100DF010C(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *a2;
  v6 = a2[1];
  Hasher.init(_seed:)();
  v54 = v6;
  v55 = v5;
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  v53 = v4 + 56;
  v41 = a2;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v48 = *(a2 + 32);
    v51 = ~v8;
    v49 = a2[3];
    v50 = a2[2];
    v47 = a2[6];
    v45 = a2[5];
    v46 = a2[8];
    v38 = v4;
    v39 = a2[9];
    v43 = a2[7];
    v44 = a2[10];
    v52 = *(v4 + 48);
    do
    {
      v10 = v52 + 88 * v9;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      v13 = *(v10 + 32);
      v14 = *(v10 + 40);
      v15 = *(v10 + 48);
      v16 = *(v10 + 56);
      v17 = *(v10 + 64);
      v19 = *(v10 + 72);
      v18 = *(v10 + 80);
      v20 = *v10 == v55 && *(v10 + 8) == v54;
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v21 = v12 == v50 && v11 == v49;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v13 ^ v48) & 1) != 0)
      {
        goto LABEL_4;
      }

      if (v15)
      {
        if (!v47)
        {
          goto LABEL_4;
        }

        v22 = v14 == v45 && v15 == v47;
        if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v47)
      {
        goto LABEL_4;
      }

      if (v17)
      {
        if (!v46)
        {
          goto LABEL_4;
        }

        v23 = v16 == v43 && v17 == v46;
        if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v46)
      {
        goto LABEL_4;
      }

      if (v18)
      {
        if (v44)
        {
          v24 = v19 == v39 && v18 == v44;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
LABEL_41:
            sub_100E0EDE8(v41);
            v25 = *(v38 + 48) + 88 * v9;
            v26 = *(v25 + 16);
            v57[0] = *v25;
            v57[1] = v26;
            v28 = *(v25 + 48);
            v27 = *(v25 + 64);
            v29 = *(v25 + 80);
            v57[2] = *(v25 + 32);
            v58 = v29;
            v57[3] = v28;
            v57[4] = v27;
            v30 = *(v25 + 16);
            *a1 = *v25;
            *(a1 + 16) = v30;
            v31 = *(v25 + 32);
            v32 = *(v25 + 48);
            v33 = *(v25 + 64);
            *(a1 + 80) = *(v25 + 80);
            *(a1 + 48) = v32;
            *(a1 + 64) = v33;
            *(a1 + 32) = v31;
            sub_100E0ED8C(v57, v56);
            return 0;
          }
        }
      }

      else if (!v44)
      {
        goto LABEL_41;
      }

LABEL_4:
      v9 = (v9 + 1) & v51;
    }

    while (((*(v53 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = *v40;
  sub_100E0ED8C(v41, v57);
  sub_100E022F4(v41, v9, isUniquelyReferenced_nonNull_native);
  *v40 = v56[0];
  v36 = *(v41 + 3);
  *(a1 + 32) = *(v41 + 2);
  *(a1 + 48) = v36;
  *(a1 + 64) = *(v41 + 4);
  *(a1 + 80) = v41[10];
  v37 = *(v41 + 1);
  result = 1;
  *a1 = *v41;
  *(a1 + 16) = v37;
  return result;
}

uint64_t sub_100DF0448(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v53 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v53);
  v5 = &v38 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v48 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v52 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v46 = &v38 - v14;
  v15 = __chkstk_darwin(v13);
  v39 = &v38 - v16;
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v40 = v2;
  v55 = *v2;
  Hasher.init(_seed:)();
  v54 = a2;
  sub_1000D2A70(a2, v18, &qword_1016980D0, &unk_10138F3B0);
  v19 = *(v7 + 48);
  if (v19(v18, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v9, v18, v6);
    Hasher._combine(_:)(1u);
    sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v9, v6);
  }

  v20 = Hasher._finalize()();
  v21 = -1 << *(v55 + 32);
  v22 = v20 & ~v21;
  v51 = v55 + 56;
  if (((*(v55 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_14:
    v33 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v54;
    v36 = v39;
    sub_1000D2A70(v54, v39, &qword_1016980D0, &unk_10138F3B0);
    v56 = *v33;
    sub_100E025F8(v36, v22, isUniquelyReferenced_nonNull_native);
    *v33 = v56;
    sub_1000D2AD8(v35, v41, &qword_1016980D0, &unk_10138F3B0);
    return 1;
  }

  v49 = v19;
  v50 = v7 + 48;
  v43 = v9;
  v47 = ~v21;
  v42 = (v7 + 32);
  v48 = *(v48 + 72);
  v45 = (v7 + 8);
  v23 = v46;
  while (1)
  {
    v24 = v48 * v22;
    sub_1000D2A70(*(v55 + 48) + v48 * v22, v23, &qword_1016980D0, &unk_10138F3B0);
    v25 = *(v53 + 48);
    sub_1000D2A70(v23, v5, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v54, &v5[v25], &qword_1016980D0, &unk_10138F3B0);
    v26 = v49;
    if (v49(v5, 1, v6) == 1)
    {
      break;
    }

    sub_1000D2A70(v5, v52, &qword_1016980D0, &unk_10138F3B0);
    if (v26(&v5[v25], 1, v6) == 1)
    {
      v23 = v46;
      sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
      (*v45)(v52, v6);
      goto LABEL_7;
    }

    v27 = v6;
    v28 = v52;
    v29 = v43;
    (*v42)(v43, &v5[v25], v27);
    sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    v30 = *v45;
    v31 = v29;
    v32 = v28;
    v6 = v27;
    (*v45)(v31, v27);
    v23 = v46;
    sub_10000B3A8(v46, &qword_1016980D0, &unk_10138F3B0);
    v30(v32, v6);
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
    if (v44)
    {
      goto LABEL_16;
    }

LABEL_8:
    v22 = (v22 + 1) & v47;
    if (((*(v51 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);
  if (v26(&v5[v25], 1, v6) != 1)
  {
LABEL_7:
    sub_10000B3A8(v5, &qword_1016AF880, &unk_10138CE20);
    goto LABEL_8;
  }

  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
LABEL_16:
  sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(*(v55 + 48) + v24, v41, &qword_1016980D0, &unk_10138F3B0);
  return 0;
}

uint64_t sub_100DF0AF0(uint64_t *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F2F28(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016BBE60, &qword_1013E9DB8);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016BBE60, &qword_1013E9DB8, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

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

uint64_t sub_100DF0D58(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:bytes:count:)();
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
    sub_100E02C68(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DF0E40(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for Service();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F3118(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DF9B40(v17 + 1);
    }

    sub_1010F43D0(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100E02D8C(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(*(v6 + 48) + 8 * v12) + 32) != *(a2 + 32))
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DF104C(void *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for Characteristic();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F3324(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DF9D9C(v17 + 1);
    }

    sub_1010F4480(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100E02F10(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(*(v6 + 48) + 8 * v12) + 40) != *(a2 + 40))
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DF1258(uint64_t *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F3530(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DF9FF8(v17 + 1);
    }

    sub_1010F4530(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100E03094(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000041A4(&qword_1016BC070, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DF1524(uint64_t a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v42[0] = a2[2];
  v6 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v39 = *(v42[0] + 16);
  Hasher._combine(_:)(v39);
  v7 = *(v42[0] + 16);
  if (v7)
  {
    v8 = v42[0] + 40;
    do
    {

      String.hash(into:)();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  v33 = a2;
  v35 = a2[4];
  v36 = a2[3];
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  v38 = v6 + 56;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_28:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *v32;

    sub_1000D2A70(v42, v40, &qword_1016B0470, &qword_10138EB80);

    sub_100E03290(v33, v11, isUniquelyReferenced_nonNull_native);
    *v32 = v41;
    v30 = *(v33 + 1);
    *a1 = *v33;
    *(a1 + 16) = v30;
    *(a1 + 32) = v33[4];
    return 1;
  }

  v37 = ~v10;
  v31 = v6;
  v12 = *(v6 + 48);
  while (1)
  {
    v13 = (v12 + 40 * v11);
    result = *v13;
    v16 = v13[2];
    v15 = v13[3];
    v17 = v13[4];
    if (*v13 != v5 || v13[1] != v4)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (*(v16 + 16) != v39)
    {
      goto LABEL_7;
    }

    if (v39 && v16 != v42[0])
    {
      break;
    }

LABEL_25:
    if (v15 == v36 && v17 == v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_10000B3A8(v42, &qword_1016B0470, &qword_10138EB80);

      v24 = (*(v31 + 48) + 40 * v11);
      v25 = v24[1];
      v27 = v24[2];
      v26 = v24[3];
      v28 = v24[4];
      *a1 = *v24;
      *(a1 + 8) = v25;
      *(a1 + 16) = v27;
      *(a1 + 24) = v26;
      *(a1 + 32) = v28;

      return 0;
    }

LABEL_7:
    v11 = (v11 + 1) & v37;
    if (((*(v38 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v19 = *(v42[0] + 16);
  v20 = (v16 + 40);
  v21 = (v42[0] + 40);
  v22 = v39;
  while (v19)
  {
    result = *(v20 - 1);
    if (result != *(v21 - 1) || *v20 != *v21)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    --v19;
    v20 += 2;
    v21 += 2;
    if (!--v22)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DF1848(uint64_t *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F3768(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DFA598(v17 + 1);
    }

    sub_1010F454C(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100E03568(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000041A4(&unk_1016C7C80, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DF1AF8(_OWORD *a1, uint64_t *a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_100E76BF0(v60);
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v48 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v44 = ~v6;
    v57 = a2[1];
    v58 = *a2;
    v38 = v4;
    v45 = *(v4 + 48);
    while (1)
    {
      v8 = v45 + 160 * v7;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      v14 = *(v8 + 48);
      v13 = *(v8 + 56);
      v15 = *(v8 + 64);
      v16 = *(v8 + 72);
      v55 = *(v8 + 88);
      v56 = *(v8 + 80);
      v53 = *(v8 + 104);
      v54 = *(v8 + 96);
      v51 = *(v8 + 120);
      v52 = *(v8 + 112);
      v49 = *(v8 + 129);
      v50 = *(v8 + 128);
      v46 = *(v8 + 131);
      v47 = *(v8 + 130);
      v43 = *(v8 + 136);
      v17 = *v8 == v58 && *(v8 + 8) == v57;
      v41 = *(v8 + 152);
      v42 = *(v8 + 144);
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v9 == a2[2] && v10 == a2[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v11 == a2[4] && v12 == a2[5] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v14 == a2[6] && v13 == a2[7] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v15 == a2[8] && v16 == a2[9] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v56 == a2[10] && v55 == a2[11] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v54 == a2[12] && v53 == a2[13] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v52 == a2[14] && v51 == a2[15] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v50 == (a2[16] & 1) && ((v49 ^ *(a2 + 129)) & 1) == 0 && v47 == (*(a2 + 130) & 1) && ((v46 ^ *(a2 + 131)) & 1) == 0 && v43 == *(a2 + 136) && (v42 == a2[18] && v41 == a2[19] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        break;
      }

      v7 = (v7 + 1) & v44;
      if (((*(v48 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    sub_10013CDDC(a2);
    v18 = (*(v38 + 48) + 160 * v7);
    v19 = v18[1];
    v60[0] = *v18;
    v60[1] = v19;
    v20 = v18[5];
    v22 = v18[2];
    v21 = v18[3];
    v60[4] = v18[4];
    v60[5] = v20;
    v60[2] = v22;
    v60[3] = v21;
    v23 = v18[6];
    v24 = v18[7];
    v25 = v18[9];
    v60[8] = v18[8];
    v60[9] = v25;
    v60[6] = v23;
    v60[7] = v24;
    v26 = v18[7];
    a1[6] = v18[6];
    a1[7] = v26;
    v27 = v18[9];
    a1[8] = v18[8];
    a1[9] = v27;
    v28 = v18[3];
    a1[2] = v18[2];
    a1[3] = v28;
    v29 = v18[5];
    a1[4] = v18[4];
    a1[5] = v29;
    v30 = v18[1];
    *a1 = *v18;
    a1[1] = v30;
    sub_10013CD18(v60, v59);
    return 0;
  }

  else
  {
LABEL_39:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59[0] = *v39;
    sub_10013CD18(a2, v60);
    sub_100E03764(a2, v7, isUniquelyReferenced_nonNull_native);
    *v39 = v59[0];
    v33 = *(a2 + 7);
    a1[6] = *(a2 + 6);
    a1[7] = v33;
    v34 = *(a2 + 9);
    a1[8] = *(a2 + 8);
    a1[9] = v34;
    v35 = *(a2 + 3);
    a1[2] = *(a2 + 2);
    a1[3] = v35;
    v36 = *(a2 + 5);
    a1[4] = *(a2 + 4);
    a1[5] = v36;
    v37 = *(a2 + 1);
    result = 1;
    *a1 = *a2;
    a1[1] = v37;
  }

  return result;
}

uint64_t sub_100DF1EF0(uint64_t *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F39A0(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DFAC18(v17 + 1);
    }

    sub_1010F4568(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
  sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100E03B44(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DF21A0(uint64_t *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1010F3BD8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_100DFAED0(v20 + 1, &unk_1016BBFB0, &qword_1013E9E30);
    }

    v18 = v8;
    sub_1010FD5C0();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100DFDEC8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_1016BBFB0, &qword_1013E9E30, &unk_1016BBFC0, CKRecordZoneID_ptr);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

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

uint64_t sub_100DF2408(uint64_t *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1010F3DC8(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100DFB0F0(v17 + 1);
    }

    sub_1010F4608(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100E03D40(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000041A4(&unk_1016C7C60, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100DF26D4(_BYTE *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
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
    v18 = *v5;
    sub_100DFC9A4(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100DF27F4(_DWORD *a1, unint64_t a2)
{
  v5 = HIDWORD(a2);
  v6 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = (*(v6 + 48) + 8 * v9);
      v13 = *v11;
      v12 = v11[1];
      if (v13 == a2 && v12 == v5)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100E03F3C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v17;
    result = 1;
  }

  *a1 = a2;
  a1[1] = v5;
  return result;
}

uint64_t sub_100DF290C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  return sub_100DF29FC(a1, a2, a3, a4, &unk_1016BBF50, &qword_1013E9E10, &qword_1016ABED0, &qword_1013BFD98);
}

uint64_t sub_100DF2984(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  return sub_100DF29FC(a1, a2, a3, a4, &unk_1016BBF60, &qword_1013E9E18, &qword_1016ABF00, &qword_1013BFDB8);
}

uint64_t sub_100DF29FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = a4;
  v14 = *v8;
  Hasher.init(_seed:)();
  sub_100017D5C(a2, a3);
  Data.hash(into:)();
  sub_100016590(a2, a3);
  Hasher._combine(_:)(v11);
  v15 = Hasher._finalize()();
  v16 = v14 + 56;
  v68 = v14;
  v17 = -1 << *(v14 + 32);
  v18 = v15 & ~v17;
  v57 = a7;
  if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    if (a2)
    {
      v20 = 0;
    }

    else
    {
      v20 = a3 == 0xC000000000000000;
    }

    v21 = !v20;
    v22 = a3 >> 62;
    v23 = __OFSUB__(HIDWORD(a2), a2);
    v67 = v23;
    v66 = HIDWORD(a2) - a2;
    v24 = BYTE6(a3);
    v65 = v11;
    v25 = a2;
    v26 = v14;
    v63 = ~v17;
    v64 = v14 + 56;
    v62 = v21;
    v60 = a3;
    v61 = BYTE6(a3);
    v54 = v25;
    while (1)
    {
      v27 = *(v26 + 48) + 24 * v18;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v31 = v29 >> 62;
      if (v29 >> 62 != 3)
      {
        break;
      }

      if (v28)
      {
        v32 = 0;
      }

      else
      {
        v32 = v29 == 0xC000000000000000;
      }

      v34 = !v32 || v22 < 3;
      if ((v34 | v21))
      {
        goto LABEL_37;
      }

LABEL_13:
      if (v30 == v11)
      {
        sub_100016590(v25, a3);
        v51 = *(v26 + 48) + 24 * v18;
        v52 = *v51;
        v53 = *(v51 + 8);
        LODWORD(v51) = *(v51 + 16);
        *a1 = v52;
        *(a1 + 8) = v53;
        *(a1 + 16) = v51;
        sub_100017D5C(v52, v53);
        return 0;
      }

LABEL_14:
      v18 = (v18 + 1) & v19;
      if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        v38 = __OFSUB__(v36, v37);
        v35 = v36 - v37;
        if (v38)
        {
          goto LABEL_67;
        }

        if (v22 > 1)
        {
          goto LABEL_38;
        }
      }

      else
      {
LABEL_37:
        v35 = 0;
        if (v22 > 1)
        {
LABEL_38:
          if (v22 != 2)
          {
            if (v35)
            {
              goto LABEL_14;
            }

            goto LABEL_13;
          }

          v41 = *(v25 + 16);
          v40 = *(v25 + 24);
          v38 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (v38)
          {
            goto LABEL_66;
          }

LABEL_40:
          if (v35 != v39)
          {
            goto LABEL_14;
          }

          if (v35 < 1)
          {
            goto LABEL_13;
          }

          if (v31 > 1)
          {
            if (v31 != 2)
            {
              *&v70[6] = 0;
              *v70 = 0;
              sub_100017D5C(v25, a3);
              sub_100017D5C(v28, v29);
              goto LABEL_60;
            }

            v42 = a3;
            v44 = *(v28 + 16);
            v43 = *(v28 + 24);
            sub_100017D5C(v25, v42);
            sub_100017D5C(v28, v29);
            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v46 = __DataStorage._offset.getter();
              if (__OFSUB__(v44, v46))
              {
                goto LABEL_71;
              }

              v45 += v44 - v46;
            }

            if (__OFSUB__(v43, v44))
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (!v31)
            {
              *v70 = v28;
              *&v70[8] = v29;
              v70[10] = BYTE2(v29);
              v70[11] = BYTE3(v29);
              v70[12] = BYTE4(v29);
              v70[13] = BYTE5(v29);
              sub_100017D5C(v25, a3);
              sub_100017D5C(v28, v29);
              v26 = v68;
LABEL_60:
              sub_100771A28(v70, v25, a3, &v69);
              sub_100016590(v25, a3);
              sub_100016590(v28, v29);
              v48 = v69;
LABEL_61:
              v11 = v65;
              v19 = v63;
              v16 = v64;
              v21 = v62;
              v24 = v61;
              if (!v48)
              {
                goto LABEL_14;
              }

              goto LABEL_13;
            }

            if (v28 >> 32 < v28)
            {
              goto LABEL_69;
            }

            sub_100017D5C(v25, v60);
            sub_100017D5C(v28, v29);
            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v47 = __DataStorage._offset.getter();
              if (__OFSUB__(v28, v47))
              {
                goto LABEL_72;
              }

              v45 += v28 - v47;
            }
          }

          __DataStorage._length.getter();
          v25 = v54;
          a3 = v60;
          sub_100771A28(v45, v54, v60, v70);
          sub_100016590(v54, v60);
          sub_100016590(v28, v29);
          v48 = v70[0];
          v26 = v68;
          goto LABEL_61;
        }
      }
    }

    else if (v31)
    {
      LODWORD(v35) = HIDWORD(v28) - v28;
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_68;
      }

      v35 = v35;
      if (v22 > 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v35 = BYTE6(v29);
      if (v22 > 1)
      {
        goto LABEL_38;
      }
    }

    v39 = v24;
    if (v22)
    {
      v39 = v66;
      if (v67)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
      }
    }

    goto LABEL_40;
  }

  v25 = a2;
LABEL_64:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v70 = *v58;
  sub_100017D5C(v25, a3);
  sub_100E040B8(v25, a3, v11, v18, isUniquelyReferenced_nonNull_native, a5, a6, v57, a8);
  *v58 = *v70;
  *a1 = v25;
  *(a1 + 8) = a3;
  *(a1 + 16) = v11;
  return 1;
}

uint64_t sub_100DF2F5C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000BC4D4(&qword_1016A59A0, &unk_1013B34C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100DF32B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC138, &unk_101406270);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v26 = v3;
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
      v27 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
      sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v26;
      *(*(v5 + 48) + 8 * v13) = v27;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v7, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100DF355C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC1C0, &qword_1013E9EE0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
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

Swift::Int sub_100DF3918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016B5498, &qword_1013D6818);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_100DF3B78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BBEB8, &qword_1013E9DD0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100DF3DD8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for SharedBeaconRecord(0);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000BC4D4(&unk_1016BBF90, &qword_1013B3678);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v24 = result + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_100E0ECBC(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for SharedBeaconRecord);
      Hasher.init(_seed:)();
      sub_1011D8230(v27);
      Hasher._finalize()();
      v19 = v24;
      v20 = _HashTable.nextHole(atOrAfter:)();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_100E0ECBC(i, *(v7 + 48) + v20 * v18, type metadata accessor for SharedBeaconRecord);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100DF4074(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BBE28, &qword_1013E9DA0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = static Hasher._hash(seed:bytes:count:)();
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100DF42A4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for BeaconNamingRecord(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000BC4D4(&qword_1016BBF88, &qword_1013E9E20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v2;
    v32 = result;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = result + 56;
    v33 = v6;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v36 = *(v34 + 72);
      sub_100E0ECBC(v20 + v36 * (v17 | (v9 << 6)), v5, type metadata accessor for BeaconNamingRecord);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      v21 = v35;
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*&v5[*(v21 + 28)]);
      String.hash(into:)();
      if (*&v5[*(v21 + 36) + 8])
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v8 = v32;
      v6 = v33;
      v22 = -1 << *(v32 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100E0ECBC(v5, *(v8 + 48) + v16 * v36, type metadata accessor for BeaconNamingRecord);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

Swift::Int sub_100DF46A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016A5A00, &qword_1013B3500);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();
      String.hash(into:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100DF4924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC1B0, &qword_1013E9ED8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v26 = v3;
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
      v27 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
      sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v26;
      *(*(v5 + 48) + 8 * v13) = v27;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v7, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100DF4BC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC020, &qword_1013B3580);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_100DF4E3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016A5A58, &qword_1013B3578);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = *(v18 + 1);
      v21 = *(v18 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100DF50BC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for RawSearchResult(0);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000BC4D4(&qword_1016A58C0, &qword_1013B32C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v24 = result + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_100E0ECBC(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for RawSearchResult);
      Hasher.init(_seed:)();
      sub_100D15128(v27);
      Hasher._finalize()();
      v19 = v24;
      v20 = _HashTable.nextHole(atOrAfter:)();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_100E0ECBC(i, *(v7 + 48) + v20 * v18, type metadata accessor for RawSearchResult);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100DF5358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016A5A68, &qword_1013B3588);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
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

Swift::Int sub_100DF58B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC038, &qword_1013E9E58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = (*(v3 + 48) + 4 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v31 = v18[3];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 4 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v31;
      ++*(v5 + 16);
      v3 = v30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_100DF5B38(uint64_t a1)
{
  v81 = type metadata accessor for UUID();
  v2 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v59 - v8;
  v10 = type metadata accessor for OwnerSharingCircle(0);
  v68 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1;
  v13 = *v1;
  sub_1000BC4D4(&qword_1016A5A18, &qword_1013B3538);
  v14 = static _SetStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = *(v13 + 56);
    v61 = (v13 + 56);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v60 = (v18 + 63) >> 6;
    v72 = v2 + 16;
    v75 = (v2 + 32);
    v77 = (v2 + 8);
    v63 = v14 + 56;
    v74 = v2;
    v79 = v7;
    v73 = v9;
    v67 = v13;
    v66 = v10;
    v65 = v14;
    v64 = v12;
    while (v20)
    {
      v23 = __clz(__rbit64(v20));
      v70 = (v20 - 1) & v20;
LABEL_14:
      v71 = v16;
      v26 = *(v13 + 48);
      v69 = *(v68 + 72);
      sub_100E0ECBC(v26 + v69 * (v23 | (v16 << 6)), v12, type metadata accessor for OwnerSharingCircle);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      v27 = sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v78 = v27;
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(v12[*(v10 + 28)]);
      v28 = *&v12[*(v10 + 32)];
      v29 = v28 + 64;
      v30 = 1 << *(v28 + 32);
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v32 = v31 & *(v28 + 64);
      v33 = (v30 + 63) >> 6;
      v76 = v28;

      v34 = 0;
      v35 = v75;
      v82 = 0;
      if (!v32)
      {
LABEL_19:
        if (v33 <= v34 + 1)
        {
          v37 = v34 + 1;
        }

        else
        {
          v37 = v33;
        }

        v38 = v37 - 1;
        v39 = v79;
        while (1)
        {
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v36 >= v33)
          {
            v56 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
            (*(*(v56 - 8) + 56))(v39, 1, 1, v56);
            v32 = 0;
            goto LABEL_27;
          }

          v32 = *(v29 + 8 * v36);
          ++v34;
          if (v32)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      while (1)
      {
        v36 = v34;
LABEL_26:
        v40 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v41 = v40 | (v36 << 6);
        v42 = v76;
        v43 = v74;
        v44 = v80;
        v45 = v81;
        (*(v74 + 16))(v80, *(v76 + 48) + *(v74 + 72) * v41, v81);
        LOBYTE(v42) = *(*(v42 + 56) + v41);
        v46 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v47 = *(v46 + 48);
        v48 = *(v43 + 32);
        v39 = v79;
        v49 = v44;
        v35 = v75;
        v48(v79, v49, v45);
        *(v39 + v47) = v42;
        (*(*(v46 - 8) + 56))(v39, 0, 1, v46);
        v38 = v36;
        v9 = v73;
LABEL_27:
        sub_1000D2AD8(v39, v9, &unk_1016BC360, &qword_10139CBE0);
        v50 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        if ((*(*(v50 - 8) + 48))(v9, 1, v50) == 1)
        {
          break;
        }

        v51 = *(v50 + 48);
        v52 = v80;
        v53 = v81;
        (*v35)(v80, v9, v81);
        v54 = v9[v51];
        v85 = v90;
        v86 = v91;
        v87 = v92;
        v83 = v88;
        v84 = v89;
        dispatch thunk of Hashable.hash(into:)();
        (*v77)(v52, v53);
        Hasher._combine(_:)(v54);
        v55 = Hasher._finalize()();
        v34 = v38;
        v82 ^= v55;
        if (!v32)
        {
          goto LABEL_19;
        }
      }

      Hasher._combine(_:)(v82);
      v10 = v66;
      v12 = v64;
      Hasher._combine(_:)(v64[*(v66 + 36)]);
      Hasher._finalize()();
      v15 = v65;
      v21 = v63;
      v22 = _HashTable.nextHole(atOrAfter:)();
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_100E0ECBC(v12, *(v15 + 48) + v22 * v69, type metadata accessor for OwnerSharingCircle);
      ++*(v15 + 16);
      v13 = v67;
      v16 = v71;
      v20 = v70;
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v60)
      {
        v57 = 1 << *(v13 + 32);
        if (v57 >= 64)
        {
          bzero(v61, ((v57 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v61 = -1 << v57;
        }

        v58 = v62;
        *(v13 + 16) = 0;

        goto LABEL_36;
      }

      v25 = v61[v16];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v70 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

LABEL_38:
    __break(1u);
  }

  else
  {

    v58 = v62;
LABEL_36:
    *v58 = v15;
  }
}

Swift::Int sub_100DF637C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016B54C8, &qword_1013D6910);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
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

uint64_t sub_100DF6878(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for MACAddress();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000BC4D4(&qword_1016BC090, &qword_1013E9E78);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000097BC(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100DF6BD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC1A8, &qword_1013E9ED0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_100DF6E34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC1A0, &qword_1013E9EC8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v20 = *v18;
      v19 = v18[1];
      Hasher.init(_seed:)();
      if (v19 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
      }

      result = Hasher._finalize()();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
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

Swift::Int sub_100DF70B8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for OwnedBeaconGroup(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000BC4D4(&qword_1016BBEB0, &qword_1013E9DC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_100E0ECBC(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for OwnedBeaconGroup);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100E0ECBC(v5, *(v8 + 48) + v16 * v21, type metadata accessor for OwnedBeaconGroup);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_100DF7418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC118, &qword_1013E9EB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v26 = v3;
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
      v27 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
      sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v26;
      *(*(v5 + 48) + 8 * v13) = v27;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v7, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100DF76D0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for WildModeTrackingLocation(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  sub_1000BC4D4(&qword_1016BBFA8, &qword_1013E9E28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v7 + 56);
    for (i = (v12 + 63) >> 6; v14; result = sub_1010F4144(v6, v9))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_11:
      sub_100E0ECBC(*(v7 + 48) + *(v4 + 72) * (v16 | (v10 << 6)), v6, type metadata accessor for WildModeTrackingLocation);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= i)
      {
        break;
      }

      v18 = v11[v10];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_11;
      }
    }

    v19 = 1 << *(v7 + 32);
    if (v19 >= 64)
    {
      bzero((v7 + 56), ((v19 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v19;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

unint64_t sub_100DF78D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC028, &qword_1013E9E48);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    for (i = result + 56; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      sub_1007766A4(v18, v16);
      Hasher._finalize()();
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v5 + 48) + 8 * result) = v16;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
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

    v17 = 1 << *(v3 + 32);
    if (v17 >= 64)
    {
      bzero((v3 + 56), ((v17 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v17;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100DF7AB8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for BeaconStatus(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000BC4D4(&qword_1016BC030, &qword_1013E9E50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_100E0ECBC(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for BeaconStatus);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for Date();
      sub_1000097BC(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_100E0ECBC(v5, *(v8 + 48) + v16 * v21, type metadata accessor for BeaconStatus);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_100DF7E6C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Destination();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000BC4D4(&qword_1016BC010, &qword_1013E9E38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000097BC(&qword_1016BC000, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100DF81C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016AAA18, &qword_1013BD810);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_1013E9EE8[v17]);
      result = Hasher._finalize()();
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

uint64_t sub_100DF8424(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC190, &unk_101406290);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v3;
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
      type metadata accessor for AnyCancellable();
      sub_1000097BC(&qword_1016BC180, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      v3 = v26;
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
      bzero(v7, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_100DF86E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_100DF8954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC0E8, &unk_101406260);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v26 = v3;
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
      v27 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
      sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v26;
      *(*(v5 + 48) + 8 * v13) = v27;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v7, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100DF8BF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    v27 = v4;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = static Hasher._hash(seed:_:)();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v10 >= 64)
    {
      bzero((v5 + 56), 8 * v13);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v4 = v27;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

Swift::Int sub_100DF8E28(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for BeaconIdentifier(0);
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000BC4D4(&unk_1016BBE50, &unk_1013B34E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v1;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_100E0ECBC(v19 + v20 * (v16 | (v8 << 6)), v33, type metadata accessor for BeaconIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100E0ECBC(v33, *(v7 + 48) + v15 * v20, type metadata accessor for BeaconIdentifier);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v29;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_100DF91A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC098, &qword_1013E9E80);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v18 = *(v3 + 48) + 88 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v31 = *(v18 + 48);
      v32 = *(v18 + 64);
      v33 = *(v18 + 80);
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v14 = *(v5 + 48) + 88 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 48) = v31;
      *(v14 + 64) = v32;
      *(v14 + 80) = v33;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
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

Swift::Int sub_100DF943C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v45 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = *v1;
  sub_1000BC4D4(&qword_1016BA360, &unk_1013E48B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  v48 = v11;
  if (*(v11 + 16))
  {
    v44 = v3;
    v38 = v1;
    v14 = 0;
    v15 = (v48 + 56);
    v16 = 1 << *(v48 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v48 + 56);
    v19 = (v16 + 63) >> 6;
    v42 = v10;
    v43 = (v4 + 48);
    v39 = (v4 + 8);
    v40 = (v4 + 32);
    v20 = result + 56;
    v21 = v46;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = *(v48 + 48);
      v47 = *(v45 + 72);
      sub_1000D2AD8(v26 + v47 * (v23 | (v14 << 6)), v10, &qword_1016980D0, &unk_10138F3B0);
      Hasher.init(_seed:)();
      sub_1000D2A70(v10, v21, &qword_1016980D0, &unk_10138F3B0);
      v27 = v44;
      if ((*v43)(v21, 1, v44) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v28 = v41;
        (*v40)(v41, v21, v27);
        Hasher._combine(_:)(1u);
        sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v39)(v28, v27);
      }

      result = Hasher._finalize()();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      v10 = v42;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v21 = v46;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v22 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v21 = v46;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_1000D2AD8(v10, *(v13 + 48) + v22 * v47, &qword_1016980D0, &unk_10138F3B0);
      ++*(v13 + 16);
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v48 + 32);
    if (v36 >= 64)
    {
      bzero(v15, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    v2 = v38;
    *(v48 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t sub_100DF9918(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BBE70, &qword_1013E9DC0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
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
      *(*(v5 + 48) + 4 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100DF9B40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC0C0, &qword_101406240);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
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
      Hasher.init(_seed:)();
      v18 = *(v17 + 32);
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100DF9D9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC0B8, &qword_1013E9E98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
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
      Hasher.init(_seed:)();
      v18 = *(v17 + 40);
      NSObject.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100DF9FF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC068, &unk_101406230);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v26 = v3;
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
      v27 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
      sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v26;
      *(*(v5 + 48) + 8 * v13) = v27;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v7, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100DFA29C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BC018, &qword_1013E9E40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
    v35 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 40 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      v39 = v18[4];
      Hasher.init(_seed:)();
      v36 = v20;
      v37 = v19;
      String.hash(into:)();
      Hasher._combine(_:)(*(v22 + 16));
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = v22 + 40;
        do
        {

          String.hash(into:)();

          v24 += 16;
          --v23;
        }

        while (v23);
      }

      String.hash(into:)();
      result = Hasher._finalize()();
      v5 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v3 = v34;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v35 + 48) + 40 * v13);
      *v14 = v37;
      v14[1] = v36;
      v14[2] = v22;
      v14[3] = v21;
      v14[4] = v39;
      ++*(v35 + 16);
      v10 = v38;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
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
        v38 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100DFA598(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BBEF0, &qword_1014060B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v26 = v3;
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
      v27 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
      sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v26;
      *(*(v5 + 48) + 8 * v13) = v27;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v7, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100DFA83C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BC0A0, &qword_1013E9E88);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  v6 = v3;
  if (*(v3 + 16))
  {
    v7 = 0;
    v20 = (v3 + 56);
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
    v19 = (v8 + 63) >> 6;
    v22 = v4;
    v21 = v4 + 56;
    if (v10)
    {
      do
      {
        v11 = __clz(__rbit64(v10));
        v39 = (v10 - 1) & v10;
LABEL_12:
        v15 = *(v6 + 48) + 160 * (v11 | (v7 << 6));
        v36 = *(v15 + 8);
        v37 = *v15;
        v34 = *(v15 + 16);
        v35 = *(v15 + 24);
        v32 = *(v15 + 40);
        v33 = *(v15 + 32);
        v31 = *(v15 + 48);
        v45 = *(v15 + 64);
        v46 = *(v15 + 56);
        v44 = *(v15 + 72);
        v42 = *(v15 + 88);
        v43 = *(v15 + 80);
        v28 = *(v15 + 96);
        v40 = *(v15 + 112);
        v41 = *(v15 + 104);
        v23 = *(v15 + 120);
        v24 = *(v15 + 128);
        v25 = *(v15 + 129);
        v26 = *(v15 + 130);
        v27 = *(v15 + 131);
        v38 = *(v15 + 132);
        v47 = *(v15 + 136);
        LODWORD(v48) = *(v15 + 137);
        *(&v48 + 3) = *(v15 + 140);
        v29 = *(v15 + 152);
        v30 = *(v15 + 144);
        Hasher.init(_seed:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        String.hash(into:)();
        Hasher._combine(_:)(v24 & 1);
        Hasher._combine(_:)(v25 & 1);
        Hasher._combine(_:)(v26 & 1);
        Hasher._combine(_:)(v27 & 1);
        Hasher._combine(_:)(v47);
        String.hash(into:)();
        Hasher._finalize()();
        v16 = _HashTable.nextHole(atOrAfter:)();
        *(v21 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        v17 = *(v22 + 48) + 160 * v16;
        *v17 = v37;
        *(v17 + 8) = v36;
        *(v17 + 16) = v34;
        *(v17 + 24) = v35;
        *(v17 + 32) = v33;
        *(v17 + 40) = v32;
        v6 = v3;
        *(v17 + 48) = v31;
        *(v17 + 56) = v46;
        *(v17 + 64) = v45;
        *(v17 + 72) = v44;
        *(v17 + 80) = v43;
        *(v17 + 88) = v42;
        *(v17 + 96) = v28;
        *(v17 + 104) = v41;
        *(v17 + 112) = v40;
        *(v17 + 120) = v23;
        *(v17 + 128) = v24;
        *(v17 + 129) = v25;
        *(v17 + 130) = v26;
        *(v17 + 131) = v27;
        *(v17 + 132) = v38;
        *(v17 + 136) = v47;
        *(v17 + 140) = *(&v48 + 3);
        *(v17 + 137) = v48;
        *(v17 + 144) = v30;
        *(v17 + 152) = v29;
        ++*(v22 + 16);
        v10 = v39;
      }

      while (v39);
    }

    v12 = v7;
    result = v3 + 56;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v19)
      {
        break;
      }

      v14 = v20[v7];
      ++v12;
      if (v14)
      {
        v11 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v18 = 1 << *(v6 + 32);
    if (v18 >= 64)
    {
      bzero(v20, ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v18;
    }

    v5 = v22;
    *(v6 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100DFAC18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&unk_1016BBFE0, &unk_101406210);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v26 = v3;
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
      v27 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
      sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v26;
      *(*(v5 + 48) + 8 * v13) = v27;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v7, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100DFAED0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_100DFB0F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000BC4D4(&qword_1016BBE08, &qword_1013E9D90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v26 = v3;
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
      v27 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
      sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98, &protocol conformance descriptor for XPCSession<A>);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v26;
      *(*(v5 + 48) + 8 * v13) = v27;
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

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero(v7, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100DFB394(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v19);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

Swift::Int sub_100DFB5DC(uint64_t a1)
{
  v2 = *v1;
  sub_1000BC4D4(&unk_1016BBF70, &qword_1013B3530);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = (v2 + 56);
    v8 = 1 << *(v2 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      *&v4 = *(*(v2 + 48) + 8 * (v14 | (v6 << 6)));
      v25 = v4;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(DWORD1(v25));
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(&v4 + 1) = *(&v25 + 1);
      *(*(v5 + 48) + 8 * v13) = v25;
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v5;
  return result;
}

Swift::Int sub_100DFB840(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1000BC4D4(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = *(v5 + 48) + 24 * (v17 | (v8 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      Hasher.init(_seed:)();
      sub_100017D5C(v21, v22);
      Data.hash(into:)();
      sub_100016590(v21, v22);
      Hasher._combine(_:)(v23);
      result = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v21;
      *(v16 + 8) = v22;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
      v5 = v32;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v5 + 32);
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_100DFBAD0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF2F5C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E05650(&type metadata accessor for UUID, &qword_1016A59A0, &unk_1013B34C0);
      goto LABEL_12;
    }

    sub_100E06904(v10 + 1);
  }

  v12 = *v3;
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFBD98(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF32B8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BC138, &unk_101406270);
      goto LABEL_12;
    }

    sub_100E06C20(v6 + 1);
  }

  v8 = *v3;
  sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
  sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1000041A4(&qword_1016BC130, &unk_1016BC120, &unk_1013EA6D0, &protocol conformance descriptor for XPCSession<A>);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100DFBF94(Swift::Int result, unint64_t a2, char a3)
{
  v39 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_78;
  }

  if (a3)
  {
    sub_100DF355C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_100E0653C(&unk_1016BC1C0, &qword_1013E9EE0);
      goto LABEL_78;
    }

    sub_100E06E9C(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  sub_10076EE68(v40, v39);
  result = Hasher._finalize()();
  v37 = v7 + 56;
  v38 = v7;
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v36 = ~v8;
    v9 = 0xED0000694669576ELL;
    v10 = 0x65776F5068676968;
    do
    {
      v11 = *(*(v38 + 48) + a2);
      if (v11 <= 3)
      {
        if (v11 == 2)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0x4F7265776F506E6FLL;
        }

        if (v11 == 2)
        {
          v15 = 0xE900000000000072;
        }

        else
        {
          v15 = v9;
        }

        if (*(*(v38 + 48) + a2))
        {
          v16 = 0x6F506D756964656DLL;
        }

        else
        {
          v16 = 0x7265776F50776F6CLL;
        }

        if (*(*(v38 + 48) + a2))
        {
          v17 = 0xEB00000000726577;
        }

        else
        {
          v17 = 0xE800000000000000;
        }

        if (*(*(v38 + 48) + a2) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }

        if (*(*(v38 + 48) + a2) <= 1u)
        {
          v13 = v17;
        }

        else
        {
          v13 = v15;
        }
      }

      else if (*(*(v38 + 48) + a2) <= 5u)
      {
        if (v11 == 4)
        {
          v12 = 0x4F7265776F506E6FLL;
        }

        else
        {
          v12 = 0x7265747461426E6FLL;
        }

        if (v11 == 4)
        {
          v13 = 0xED00006C6C65436ELL;
        }

        else
        {
          v13 = 0xEF694669576E4F79;
        }
      }

      else if (v11 == 6)
      {
        v12 = 0x7265747461426E6FLL;
        v13 = 0xEF6C6C65436E4F79;
      }

      else if (v11 == 7)
      {
        v12 = 0x6F696E61706D6F63;
        v13 = 0xEF79627261654E6ELL;
      }

      else
      {
        v12 = 0x6857796669746F6ELL;
        v13 = 0xEF646E756F466E65;
      }

      v18 = 0x6F696E61706D6F63;
      if (v39 != 7)
      {
        v18 = 0x6857796669746F6ELL;
      }

      v19 = 0xEF79627261654E6ELL;
      if (v39 != 7)
      {
        v19 = 0xEF646E756F466E65;
      }

      if (v39 == 6)
      {
        v18 = 0x7265747461426E6FLL;
        v19 = 0xEF6C6C65436E4F79;
      }

      if (v39 == 4)
      {
        v20 = 0x4F7265776F506E6FLL;
      }

      else
      {
        v20 = 0x7265747461426E6FLL;
      }

      v21 = 0xEF694669576E4F79;
      if (v39 == 4)
      {
        v21 = 0xED00006C6C65436ELL;
      }

      if (v39 <= 5u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = v10;
      if (v39 == 2)
      {
        v23 = v10;
      }

      else
      {
        v23 = 0x4F7265776F506E6FLL;
      }

      v24 = v9;
      if (v39 == 2)
      {
        v25 = 0xE900000000000072;
      }

      else
      {
        v25 = v9;
      }

      if (v39)
      {
        v26 = 0x6F506D756964656DLL;
      }

      else
      {
        v26 = 0x7265776F50776F6CLL;
      }

      if (v39)
      {
        v27 = 0xEB00000000726577;
      }

      else
      {
        v27 = 0xE800000000000000;
      }

      if (v39 <= 1u)
      {
        v23 = v26;
        v25 = v27;
      }

      v28 = v39 <= 3u ? v23 : v18;
      v29 = v39 <= 3u ? v25 : v19;
      if (v12 == v28 && v13 == v29)
      {
        goto LABEL_81;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {
        goto LABEL_82;
      }

      a2 = (a2 + 1) & v36;
      v9 = v24;
      v10 = v22;
    }

    while (((*(v37 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_78:
  v31 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + a2) = v39;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v31 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_81:

LABEL_82:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100DFC3AC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100DF3918(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100E0467C();
      goto LABEL_16;
    }

    sub_100E07228(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100DFC52C(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100DF3B78(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_100E047D8();
        goto LABEL_68;
      }

      sub_100E07460(v8 + 1);
    }

    v10 = *v4;
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v11 = v10 + 56;
    v12 = -1 << *(v10 + 32);
    a3 = result & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      if (v7)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2 == 0xC000000000000000;
      }

      v15 = !v14;
      v48 = v15;
      v16 = a2 >> 62;
      v17 = __OFSUB__(HIDWORD(v7), v7);
      v45 = v17;
      v44 = HIDWORD(v7) - v7;
      v46 = v13;
      v47 = BYTE6(a2);
      v41 = v7;
      v42 = a2;
      while (1)
      {
        v18 = (*(v10 + 48) + 16 * a3);
        v20 = *v18;
        v19 = v18[1];
        v21 = v19 >> 62;
        if (v19 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 != 2)
          {
            goto LABEL_32;
          }

          v31 = *(v20 + 16);
          v30 = *(v20 + 24);
          v29 = __OFSUB__(v30, v31);
          v25 = v30 - v31;
          if (v29)
          {
            goto LABEL_73;
          }
        }

        else if (v21)
        {
          LODWORD(v25) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_74;
          }

          v25 = v25;
        }

        else
        {
          v25 = BYTE6(v19);
        }

LABEL_33:
        if (v16 > 1)
        {
          if (v16 != 2)
          {
            if (!v25)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v28 = *(v7 + 16);
          v27 = *(v7 + 24);
          v29 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (v29)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v26 = v47;
          if (v16)
          {
            v26 = v44;
            if (v45)
            {
              goto LABEL_71;
            }
          }
        }

        if (v25 == v26)
        {
          if (v25 < 1)
          {
            goto LABEL_67;
          }

          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v33 = *(v20 + 16);
              v32 = *(v20 + 24);
              sub_100017D5C(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v35 = __DataStorage._offset.getter();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_77;
                }

                v34 += v33 - v35;
              }

              if (__OFSUB__(v32, v33))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v50[6] = 0;
            *v50 = 0;
            sub_100017D5C(v20, v19);
          }

          else
          {
            if (v21)
            {
              if (v20 >> 32 < v20)
              {
                goto LABEL_75;
              }

              sub_100017D5C(v20, v19);
              v34 = __DataStorage._bytes.getter();
              if (v34)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v20, v36))
                {
                  goto LABEL_78;
                }

                v34 += v20 - v36;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v41;
              a2 = v42;
              sub_100771A28(v34, v41, v42, v50);
              result = sub_100016590(v20, v19);
              v11 = v10 + 56;
              v13 = v46;
              if (v50[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v50 = v20;
            *&v50[8] = v19;
            v50[10] = BYTE2(v19);
            v50[11] = BYTE3(v19);
            v50[12] = BYTE4(v19);
            v50[13] = BYTE5(v19);
            sub_100017D5C(v20, v19);
            v13 = v46;
          }

          sub_100771A28(v50, v7, a2, &v49);
          result = sub_100016590(v20, v19);
          if (v49)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v13;
        if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || v16 < 3;
      if (((v24 | v48) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v37 = *v43;
  *(*v43 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v38 = (*(v37 + 48) + 16 * a3);
  *v38 = v7;
  v38[1] = a2;
  v39 = *(v37 + 16);
  v29 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (v29)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v37 + 16) = v40;
  return result;
}

Swift::Int sub_100DFC9A4(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DFB394(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = sub_100E0653C(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_100E0E3B8(v8 + 1, a4, a5);
  }

  v11 = *v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFCB14(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100DF3DD8(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_100E04984(type metadata accessor for SharedBeaconRecord, &unk_1016BBF90, &qword_1013B3678, type metadata accessor for SharedBeaconRecord);
      goto LABEL_12;
    }

    v26 = v10;
    sub_100E0769C(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_1011D8230(v27);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_100E0ED24(*(v15 + 48) + v19 * a2, v12, type metadata accessor for SharedBeaconRecord);
      v20 = sub_1011DB3D8(v12, a1);
      sub_100E0EC5C(v12, type metadata accessor for SharedBeaconRecord);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for SharedBeaconRecord);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFCD90(uint64_t result, unint64_t a2, char a3)
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
    sub_100DF4074(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E0653C(&qword_1016BBE28, &qword_1013E9DA0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E07904(v5 + 1);
  }

  v8 = *v3;
  result = static Hasher._hash(seed:bytes:count:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
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
  *(*(v11 + 48) + a2) = v4;
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFCEC8(uint64_t *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeaconNamingRecord(0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v71 = v4;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    v67 = v9;
    if (a3)
    {
      sub_100DF42A4(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_100E04984(type metadata accessor for BeaconNamingRecord, &qword_1016BBF88, &qword_1013E9E20, type metadata accessor for BeaconNamingRecord);
        goto LABEL_87;
      }

      sub_100E07AF8(v12 + 1);
    }

    v66 = *v4;
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v14 = v8[5];
    type metadata accessor for UUID();
    sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v72 = v14;
    dispatch thunk of Hashable.hash(into:)();
    v73 = v8[6];
    dispatch thunk of Hashable.hash(into:)();
    v65 = *(a1 + v8[7]);
    Hasher._combine(_:)(v65);
    v15 = (a1 + v8[8]);
    v16 = v15[1];
    v64 = *v15;
    v63 = v16;
    String.hash(into:)();
    v17 = (a1 + v8[9]);
    v18 = v17[1];
    v60 = *v17;
    v62 = v18;
    if (v18)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v9 = v67;
    v19 = Hasher._finalize()();
    v20 = v66;
    v21 = v66 + 56;
    v22 = -1 << *(v66 + 32);
    a2 = v19 & ~v22;
    if ((*(v66 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v78 = ~v22;
      v23 = *a1;
      v24 = a1[1];
      v79 = *(v9 + 72);
      if (v23)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24 == 0xC000000000000000;
      }

      v26 = !v25;
      v77 = v26;
      v27 = v24 >> 62;
      v74 = 0;
      v75 = v23;
      v28 = HIDWORD(v23) - v23;
      v29 = __OFSUB__(HIDWORD(v23), v23);
      v70 = v29;
      v69 = v28;
      v68 = v24;
      v76 = BYTE6(v24);
      v61 = a1;
      while (1)
      {
        sub_100E0ED24(*(v20 + 48) + v79 * a2, v11, type metadata accessor for BeaconNamingRecord);
        v30 = *v11;
        v31 = v11[1];
        v32 = v31 >> 62;
        if (v31 >> 62 == 3)
        {
          break;
        }

        if (v32 > 1)
        {
          if (v32 != 2)
          {
            goto LABEL_46;
          }

          v38 = *(v30 + 16);
          v37 = *(v30 + 24);
          v39 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v39)
          {
            goto LABEL_93;
          }

          if (v27 > 1)
          {
            goto LABEL_47;
          }
        }

        else if (v32)
        {
          LODWORD(v36) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_92;
          }

          v36 = v36;
          if (v27 > 1)
          {
LABEL_47:
            if (v27 != 2)
            {
              if (v36)
              {
                goto LABEL_23;
              }

              goto LABEL_71;
            }

            v42 = *(v75 + 16);
            v41 = *(v75 + 24);
            v39 = __OFSUB__(v41, v42);
            v40 = v41 - v42;
            if (v39)
            {
              __break(1u);
LABEL_90:
              __break(1u);
              goto LABEL_91;
            }

            goto LABEL_49;
          }
        }

        else
        {
          v36 = BYTE6(v31);
          if (v27 > 1)
          {
            goto LABEL_47;
          }
        }

LABEL_43:
        v40 = v76;
        if (v27)
        {
          v40 = v69;
          if (v70)
          {
            goto LABEL_90;
          }
        }

LABEL_49:
        if (v36 != v40)
        {
          goto LABEL_23;
        }

        if (v36 < 1)
        {
          goto LABEL_71;
        }

        if (v32 > 1)
        {
          if (v32 == 2)
          {
            v44 = *(v30 + 16);
            v43 = *(v30 + 24);
            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v46 = __DataStorage._offset.getter();
              if (__OFSUB__(v44, v46))
              {
                goto LABEL_96;
              }

              v45 += v44 - v46;
            }

            if (__OFSUB__(v43, v44))
            {
              goto LABEL_95;
            }

LABEL_67:
            __DataStorage._length.getter();
            v49 = v74;
            sub_100771A28(v45, v75, v68, v81);
            v74 = v49;
            a1 = v61;
            v9 = v67;
            v20 = v66;
            if ((v81[0] & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_71;
          }

          *&v81[6] = 0;
          *v81 = 0;
        }

        else
        {
          if (v32)
          {
            v47 = v30;
            if (v30 >> 32 < v30)
            {
              goto LABEL_94;
            }

            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v48 = __DataStorage._offset.getter();
              if (__OFSUB__(v47, v48))
              {
                goto LABEL_97;
              }

              v45 += v47 - v48;
            }

            goto LABEL_67;
          }

          *v81 = *v11;
          *&v81[8] = v31;
          v81[10] = BYTE2(v31);
          v81[11] = BYTE3(v31);
          v81[12] = BYTE4(v31);
          v81[13] = BYTE5(v31);
        }

        v50 = v74;
        sub_100771A28(v81, v75, v68, &v80);
        v74 = v50;
        if (!v80)
        {
          goto LABEL_23;
        }

LABEL_71:
        if ((static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && *(v11 + v8[7]) == v65)
        {
          v51 = (v11 + v8[8]);
          v52 = *v51 == v64 && v51[1] == v63;
          if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = (v11 + v8[9]);
            v54 = v53[1];
            if (v54)
            {
              if (v62 && (*v53 == v60 && v54 == v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
              {
LABEL_86:
                sub_100E0EC5C(v11, type metadata accessor for BeaconNamingRecord);
                ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                goto LABEL_87;
              }
            }

            else if (!v62)
            {
              goto LABEL_86;
            }
          }
        }

LABEL_23:
        sub_100E0EC5C(v11, type metadata accessor for BeaconNamingRecord);
        a2 = (a2 + 1) & v78;
        if (((*(v21 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      if (v30)
      {
        v33 = 0;
      }

      else
      {
        v33 = v31 == 0xC000000000000000;
      }

      v35 = !v33 || v27 < 3;
      if (((v35 | v77) & 1) == 0)
      {
        goto LABEL_71;
      }

LABEL_46:
      v36 = 0;
      if (v27 > 1)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    }
  }

LABEL_87:
  v55 = *v71;
  *(*v71 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v55 + 48) + *(v9 + 72) * a2, type metadata accessor for BeaconNamingRecord);
  v57 = *(v55 + 16);
  v39 = __OFADD__(v57, 1);
  v58 = v57 + 1;
  if (v39)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
  }

  *(v55 + 16) = v58;
  return result;
}