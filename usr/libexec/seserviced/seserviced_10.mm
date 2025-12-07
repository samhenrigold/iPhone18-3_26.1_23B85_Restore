void *sub_1000E4630(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_10019F420(0, v6 & ~(v6 >> 63), 0);
    v40 = v45;
    if (v38)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v8 = *(a1 + 36);
    }

    v42 = result;
    v43 = v8;
    v44 = v38 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v35 = v37 + 32;
      v36 = (v37 + 16);
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v32 = a1 + 56;
      v33 = v10;
      v30 = v1;
      v31 = a1 + 64;
      v34 = v6;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v42;
        v14 = v44;
        v39 = v43;
        v15 = sub_10008EDB4(v42, v43, v44, a1);
        (*v36)(v5, v15 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v3);

        v16 = v40;
        v45 = v40;
        v18 = v40[2];
        v17 = v40[3];
        if (v18 >= v17 >> 1)
        {
          sub_10019F420((v17 > 1), v18 + 1, 1);
          v16 = v45;
        }

        v16[2] = v18 + 1;
        v19 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v16;
        result = (*(v37 + 32))(v16 + v19 + *(v37 + 72) * v18, v5, v3);
        if (v38)
        {
          if (!v14)
          {
            goto LABEL_42;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v34;
          sub_100068FC4(&qword_100502C08, &qword_100409CC8);
          v11 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v11(v41, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_1000937D4(v42, v43, v44);
            return v40;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v20 = (1 << *(a1 + 32));
          if (v13 >= v20)
          {
            goto LABEL_38;
          }

          v21 = v13 >> 6;
          v22 = *(v32 + 8 * (v13 >> 6));
          if (((v22 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v39)
          {
            goto LABEL_40;
          }

          v23 = v22 & (-2 << (v13 & 0x3F));
          if (v23)
          {
            v20 = (__clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v31 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                result = sub_1000937D4(v13, v39, 0);
                v20 = (__clz(__rbit64(v27)) + v24);
                goto LABEL_33;
              }
            }

            result = sub_1000937D4(v13, v39, 0);
          }

LABEL_33:
          v29 = *(a1 + 36);
          v42 = v20;
          v43 = v29;
          v44 = 0;
          v6 = v34;
          if (v9 == v34)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void *sub_1000E4A60(uint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = UUID.uuidString.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_10019F3C0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000937D4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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

  return result;
}

unint64_t sub_1000E4D68(uint64_t a1)
{
  v1 = a1;
  v52 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v69 = _swiftEmptyArrayStorage;
  sub_10019F464(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v52)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v5 = *(v1 + 36);
  }

  v66 = result;
  v67 = v5;
  v68 = v52 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    result = sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v51 = v1;
    v6 = 0;
    v49 = v1 + 56;
    v48 = v1 + 64;
    v50 = v2;
    while (v6 < v2)
    {
      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (v8)
      {
        goto LABEL_42;
      }

      v53 = v9;
      v10 = v66;
      v55 = v67;
      v56 = v3;
      v54 = v68;
      sub_10008F260(v66, v67, v68, v1);
      v12 = v11;
      v58 = 0xD000000000000011;
      v59 = 0x80000001004634B0;

      v13 = UUID.uuidString.getter();
      v15 = v14;

      v60 = v13;
      v61 = v15;
      v62 = 0x6574617473;
      v63 = 0xE500000000000000;
      v57[0] = *(v12 + 32);
      v64 = String.init<A>(describing:)();
      v65 = v16;
      v17 = static _DictionaryStorage.allocate(capacity:)();

      v18 = v58;
      v19 = v59;
      v20 = v60;
      v21 = v61;

      result = sub_10008C908(v18, v19);
      if (v22)
      {
        goto LABEL_39;
      }

      *(v17 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v17[6] + 16 * result);
      *v23 = v18;
      v23[1] = v19;
      v24 = (v17[7] + 16 * result);
      *v24 = v20;
      v24[1] = v21;
      v25 = v17[2];
      v8 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v8)
      {
        goto LABEL_40;
      }

      v17[2] = v26;
      v27 = v62;
      v28 = v63;
      v29 = v64;
      v30 = v65;

      result = sub_10008C908(v27, v28);
      if (v31)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        break;
      }

      *(v17 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v32 = (v17[6] + 16 * result);
      *v32 = v27;
      v32[1] = v28;
      v33 = (v17[7] + 16 * result);
      *v33 = v29;
      v33[1] = v30;
      v34 = v17[2];
      v8 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v8)
      {
        goto LABEL_40;
      }

      v17[2] = v35;

      sub_100068FC4(&unk_100504020, &qword_100409CC0);
      swift_arrayDestroy();

      v3 = v56;
      v69 = v56;
      v37 = v56[2];
      v36 = v56[3];
      if (v37 >= v36 >> 1)
      {
        result = sub_10019F464((v36 > 1), v37 + 1, 1);
        v3 = v69;
      }

      v3[2] = v37 + 1;
      v3[v37 + 4] = v17;
      v1 = v51;
      if (v52)
      {
        if (!v54)
        {
          goto LABEL_47;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v50;
        sub_100068FC4(&qword_100504088, &qword_10040B398);
        v7 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v7(v57, 0);
      }

      else
      {
        if (v54)
        {
          goto LABEL_48;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v38 = 1 << *(v51 + 32);
        if (v10 >= v38)
        {
          goto LABEL_43;
        }

        v39 = v10 >> 6;
        v40 = *(v49 + 8 * (v10 >> 6));
        if (((v40 >> v10) & 1) == 0)
        {
          goto LABEL_44;
        }

        if (*(v51 + 36) != v55)
        {
          goto LABEL_45;
        }

        v41 = v40 & (-2 << (v10 & 0x3F));
        if (v41)
        {
          v38 = __clz(__rbit64(v41)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v42 = v39 << 6;
          v43 = v39 + 1;
          v44 = (v48 + 8 * v39);
          while (v43 < (v38 + 63) >> 6)
          {
            v46 = *v44++;
            v45 = v46;
            v42 += 64;
            ++v43;
            if (v46)
            {
              result = sub_1000937D4(v10, v55, 0);
              v38 = __clz(__rbit64(v45)) + v42;
              goto LABEL_36;
            }
          }

          result = sub_1000937D4(v10, v55, 0);
        }

LABEL_36:
        v47 = *(v51 + 36);
        v66 = v38;
        v67 = v47;
        v68 = 0;
        v2 = v50;
      }

      v6 = v53;
      if (v53 == v2)
      {
        sub_1000937D4(v66, v67, v68);
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void *sub_1000E527C(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v2 & ~(v2 >> 63), 0);
    v33 = _swiftEmptyArrayStorage;
    if (v31)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v35 = result;
    v36 = v4;
    v37 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v35;
        v9 = v37;
        v32 = v36;
        v10 = v1;
        sub_10008F004(v35, v36, v37, v1);
        v11 = UUID.uuidString.getter();
        v13 = v12;

        v14 = v33;
        v38 = v33;
        v16 = v33[2];
        v15 = v33[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_10019F3C0((v15 > 1), v16 + 1, 1);
          v14 = v38;
        }

        v14[2] = v16 + 1;
        v17 = &v14[2 * v16];
        v17[4] = v11;
        v17[5] = v13;
        v33 = v14;
        if (v31)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          sub_100068FC4(&qword_100504080, &qword_10040B390);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v6(v34, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_1000937D4(v35, v36, v37);
            return v33;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v18 = (1 << *(v10 + 32));
          if (v8 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v8 >> 6;
          v20 = *(v29 + 8 * (v8 >> 6));
          if (((v20 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v32)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v8 & 0x3F));
          if (v21)
          {
            v18 = (__clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0);
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                result = sub_1000937D4(v8, v32, 0);
                v18 = (__clz(__rbit64(v25)) + v22);
                goto LABEL_31;
              }
            }

            result = sub_1000937D4(v8, v32, 0);
          }

LABEL_31:
          v27 = *(v10 + 36);
          v35 = v18;
          v36 = v27;
          v37 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000E55E0(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v51 = _swiftEmptyArrayStorage;
  sub_10019F4C4(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v39)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v5 = *(v1 + 36);
  }

  v48 = result;
  v49 = v5;
  v50 = v39 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    result = sub_100068FC4(&unk_100504000, &unk_10040B350);
    v6 = 0;
    v36 = v1 + 56;
    v35 = v1 + 64;
    v37 = v2;
    v38 = v1;
    while (v6 < v2)
    {
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_45;
      }

      v9 = v48;
      v41 = v49;
      v40 = v50;
      v10 = sub_10008E7AC(v48, v49, v50, v1);
      v44[0] = 0x65636976726573;
      v44[1] = 0xE700000000000000;
      v11 = v10[3];
      v44[2] = v10[2];
      v44[3] = v11;
      v44[5] = &type metadata for String;
      v45[0] = 0x746C69466E616373;
      v45[1] = 0xEB00000000737265;
      v12 = v10[7];
      if (v12)
      {
        v13 = *(v12 + 16);
        *(&v43[0] + 1) = &type metadata for Int;
        *&v42 = v13;
        sub_100075D50(&v42, &v46);
      }

      else
      {
        v47 = &type metadata for String;
        *&v46 = 1701736302;
        *(&v46 + 1) = 0xE400000000000000;
      }

      v14 = static _DictionaryStorage.allocate(capacity:)();

      sub_10011EF24(v44, &v42);
      v15 = v42;
      result = sub_10008C908(v42, *(&v42 + 1));
      if (v16)
      {
        goto LABEL_42;
      }

      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v14[6] + 16 * result) = v15;
      result = sub_100075D50(v43, (v14[7] + 32 * result));
      v17 = v14[2];
      v8 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v8)
      {
        goto LABEL_43;
      }

      v14[2] = v18;
      sub_10011EF24(v45, &v42);
      v19 = v42;
      result = sub_10008C908(v42, *(&v42 + 1));
      if (v20)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        break;
      }

      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v14[6] + 16 * result) = v19;
      result = sub_100075D50(v43, (v14[7] + 32 * result));
      v21 = v14[2];
      v8 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v8)
      {
        goto LABEL_43;
      }

      v14[2] = v22;

      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();

      v51 = v3;
      v24 = v3[2];
      v23 = v3[3];
      if (v24 >= v23 >> 1)
      {
        result = sub_10019F4C4((v23 > 1), v24 + 1, 1);
        v3 = v51;
      }

      v3[2] = v24 + 1;
      v3[v24 + 4] = v14;
      if (v39)
      {
        v1 = v38;
        if (!v40)
        {
          goto LABEL_50;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v37;
        sub_100068FC4(&unk_100503ED0, &qword_10040B278);
        v7 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v7(&v42, 0);
      }

      else
      {
        v1 = v38;
        if (v40)
        {
          goto LABEL_51;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v25 = 1 << *(v38 + 32);
        if (v9 >= v25)
        {
          goto LABEL_46;
        }

        v26 = v9 >> 6;
        v27 = *(v36 + 8 * (v9 >> 6));
        if (((v27 >> v9) & 1) == 0)
        {
          goto LABEL_47;
        }

        if (*(v38 + 36) != v41)
        {
          goto LABEL_48;
        }

        v28 = v27 & (-2 << (v9 & 0x3F));
        if (v28)
        {
          v25 = __clz(__rbit64(v28)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v2 = v37;
        }

        else
        {
          v29 = v26 << 6;
          v30 = v26 + 1;
          v31 = (v35 + 8 * v26);
          v2 = v37;
          while (v30 < (v25 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              result = sub_1000937D4(v9, v41, 0);
              v25 = __clz(__rbit64(v32)) + v29;
              goto LABEL_39;
            }
          }

          result = sub_1000937D4(v9, v41, 0);
        }

LABEL_39:
        v34 = *(v38 + 36);
        v48 = v25;
        v49 = v34;
        v50 = 0;
      }

      if (v6 == v2)
      {
        sub_1000937D4(v48, v49, v50);
        return v3;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void *sub_1000E5B18(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v35 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v2 & ~(v2 >> 63), 0);
  v3 = _swiftEmptyArrayStorage;
  if (v29)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
  }

  v32 = result;
  v33 = v5;
  v34 = v29 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v28 = v2;
    while (v6 < v2)
    {
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_36;
      }

      v9 = v32;
      v10 = v34;
      v30 = v33;
      v11 = sub_10008E7AC(v32, v33, v34, a1);
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);

      v35 = v3;
      v15 = v3[2];
      v14 = v3[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_10019F3C0((v14 > 1), v15 + 1, 1);
        v3 = v35;
      }

      v3[2] = v15 + 1;
      v16 = &v3[2 * v15];
      v16[4] = v12;
      v16[5] = v13;
      if (v29)
      {
        if (!v10)
        {
          goto LABEL_41;
        }

        v17 = v3;
        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v28;
        sub_100068FC4(&unk_100503ED0, &qword_10040B278);
        v7 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v7(v31, 0);
      }

      else
      {
        if (v10)
        {
          goto LABEL_42;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v17 = v3;
        v18 = 1 << *(a1 + 32);
        if (v9 >= v18)
        {
          goto LABEL_37;
        }

        v19 = v9 >> 6;
        v20 = *(a1 + 56 + 8 * (v9 >> 6));
        if (((v20 >> v9) & 1) == 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 36) != v30)
        {
          goto LABEL_39;
        }

        v21 = v20 & (-2 << (v9 & 0x3F));
        if (v21)
        {
          v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v2 = v28;
        }

        else
        {
          v22 = v19 << 6;
          v23 = v19 + 1;
          v24 = (a1 + 64 + 8 * v19);
          v2 = v28;
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              result = sub_1000937D4(v9, v30, 0);
              v18 = __clz(__rbit64(v25)) + v22;
              goto LABEL_32;
            }
          }

          result = sub_1000937D4(v9, v30, 0);
        }

LABEL_32:
        v27 = *(a1 + 36);
        v32 = v18;
        v33 = v27;
        v34 = 0;
      }

      v3 = v17;
      if (v6 == v2)
      {
        sub_1000937D4(v32, v33, v34);
        return v3;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1000E5E60()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (v8)
  {
    v9 = objc_allocWithZone(NSMutableData);
    v10 = v8;
    v11 = [v9 init];

    v12 = NSData.startIndex.getter();
    v13 = NSData.endIndex.getter();
    v14 = NSData.startIndex.getter();
    result = NSData.endIndex.getter();
    if (v12 >= v14 && result >= v12)
    {
      v15 = NSData.startIndex.getter();
      result = NSData.endIndex.getter();
      if (v13 >= v15 && result >= v13)
      {
        if (!__OFSUB__(v13, v12))
        {
          if (v13 - v12 == 32)
          {
            v16 = v11;
            v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

            return v17;
          }

          else
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v21 = __DataStorage.init(length:)();
            v23[0] = 0x2000000000;
            v23[1] = v21;
            sub_10022D4F0(v23, 0);

            return v23[0];
          }
        }

LABEL_19:
        __break(1u);
        return result;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Not running", v20, 2u);
  }

  return 0;
}

void sub_1000E616C(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v9 = qword_10051B7F0;
    *v8 = qword_10051B7F0;
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v10 = v9;
    v11 = _dispatchPreconditionTest(_:)();
    v13 = *(v6 + 8);
    v12 = v6 + 8;
    v13(v8, v5);
    if (v11)
    {
      v14 = *&v2[OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager];
      if (!v14)
      {
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
        }

        sub_100079E24();
        swift_allocError();
        *v23 = 1;
        swift_willThrow();
        return;
      }

      v44 = a2;
      v5 = v14;
      sub_1000E4630(a1);
      type metadata accessor for UUID();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v16 = [v5 retrievePeripheralsWithIdentifiers:isa];

      sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = v8 >> 62;
      if (!(v8 >> 62))
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v18 = a1 & 0xC000000000000001;
        if ((a1 & 0xC000000000000001) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_38;
      }
    }

    else
    {
      __break(1u);
    }

    v17 = _CocoaArrayWrapper.endIndex.getter();
    v18 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_6:
      if (v17 != __CocoaSet.count.getter())
      {
        goto LABEL_39;
      }

      goto LABEL_7;
    }

LABEL_38:
    if (v17 != *(a1 + 16))
    {
LABEL_39:

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Failed to retrieve peripherals", v40, 2u);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v41 = 2;
      swift_willThrow();

      return;
    }

LABEL_7:
    v48 = xmmword_1004098E0;
    v49 = xmmword_1004098E0;
    v50 = _swiftEmptyArrayStorage;
    v19 = v12 ? _CocoaArrayWrapper.endIndex.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v18;
    v46 = v5;
    v45 = v2;

    if (!v19)
    {
      break;
    }

    v2 = a1;
    a2 = 0;
    v6 = v8 & 0xC000000000000001;
    v5 = (v8 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v6)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v24 = *(v8 + 8 * a2 + 32);
      }

      a1 = v24;
      v25 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v47 = v24;
      sub_1000F7750(&v47, v46, v45, &v49, &v48, v2, &v50);

      ++a2;
      if (v25 == v19)
      {
        v26 = *(&v49 + 1);
        v19 = v49;
        a1 = v2;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v26 = 0xF000000000000000;
LABEL_23:

  if (v26 >> 60 != 15)
  {
    v27 = *(&v48 + 1);
    if (*(&v48 + 1) >> 60 != 15)
    {
      v28 = a1;
      v29 = v48;
      v30 = v50;
      v31 = v50[2];
      if (v43)
      {
        sub_10006A2BC(v19, v26);
        sub_10006A2BC(v29, v27);
        if (v31 == __CocoaSet.count.getter())
        {
LABEL_27:

          sub_10006A2D0(v29, v27);
          sub_10006A2D0(v19, v26);
          v32 = v44;
          *v44 = v19;
          v32[1] = v26;
          v32[2] = v29;
          v32[3] = v27;
          v32[4] = v30;
          return;
        }
      }

      else
      {
        v33 = *(v28 + 16);
        sub_10006A2BC(v19, v26);
        sub_10006A2BC(v29, v27);
        if (v31 == v33)
        {
          goto LABEL_27;
        }
      }

      sub_10006A2D0(v29, v27);
      sub_10006A2D0(v19, v26);
    }
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Got invalid pairing information", v36, 2u);
  }

  sub_1000E1E2C();
  swift_allocError();
  *v37 = 2;
  swift_willThrow();

  sub_10006A2D0(v48, *(&v48 + 1));
  sub_10006A2D0(v49, *(&v49 + 1));
}

void sub_1000E67E4(uint64_t a1)
{
  v2 = v1;
  i = type metadata accessor for DispatchPredicate();
  v5 = *(i - 8);
  __chkstk_darwin(i);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v8 = qword_10051B7F0;
    *v7 = qword_10051B7F0;
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), i);
    v9 = v8;
    v10 = _dispatchPreconditionTest(_:)();
    (*(v5 + 8))(v7, i);
    if ((v10 & 1) == 0)
    {
      __break(1u);
      return;
    }

    if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      break;
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    v13 = os_log_type_enabled(v11, v12);
    v50 = a1;
    if (v13)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v59[0] = v15;
      *v14 = 136315138;
      v16 = UUID.uuidString.getter();
      v18 = sub_1002FFA0C(v16, v17, v59);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Disconnection request for %s", v14, 0xCu);
      sub_1000752F4(v15);
    }

    v19 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    v48 = v19;
    v49 = v2;
    v7 = *(v2 + v19);
    if ((v7 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v20, type metadata accessor for DSKBLE.BLEConnectionRequest, &unk_10040B110);
      Set.Iterator.init(_cocoa:)();
      a1 = v54;
      v21 = v55;
      v22 = v56;
      v2 = v57;
      v23 = v58;
    }

    else
    {
      v27 = -1 << *(v7 + 32);
      v21 = v7 + 56;
      v22 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v23 = v29 & *(v7 + 56);
      swift_bridgeObjectRetain_n();
      v2 = 0;
      a1 = v7;
    }

    v5 = (v22 + 64) >> 6;
    if (a1 < 0)
    {
LABEL_21:
      v34 = __CocoaSet.Iterator.next()();
      if (!v34)
      {
        goto LABEL_26;
      }

      v53 = v34;
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      swift_dynamicCast();
      v33 = v59[0];
      i = v2;
      v32 = v23;
      if (!v59[0])
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v30 = v2;
      v31 = v23;
      for (i = v2; !v31; ++v30)
      {
        i = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_51;
        }

        if (i >= v5)
        {
          goto LABEL_26;
        }

        v31 = *(v21 + 8 * i);
      }

      v32 = (v31 - 1) & v31;
      v33 = *(*(a1 + 48) + ((i << 9) | (8 * __clz(__rbit64(v31)))));

      if (!v33)
      {
        break;
      }

LABEL_23:
      if (static UUID.== infix(_:_:)())
      {
        sub_100093854(a1);

        v35 = v49;
        swift_beginAccess();
        sub_10010DCAC(v33);
        swift_endAccess();

        goto LABEL_27;
      }

      v2 = i;
      v23 = v32;
      if (a1 < 0)
      {
        goto LABEL_21;
      }
    }

LABEL_26:
    sub_100093854(a1);

    v35 = v49;
LABEL_27:
    v5 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v48 = *(v35 + v5);
    if ((v48 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      a1 = v59[0];
      v36 = v59[1];
      i = v59[2];
      v37 = v59[3];
      v7 = v59[4];
    }

    else
    {
      v38 = -1 << *(v48 + 32);
      v36 = v48 + 56;
      i = ~v38;
      v39 = -v38;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      else
      {
        v40 = -1;
      }

      v7 = v40 & *(v48 + 56);
      a1 = v48;
      swift_bridgeObjectRetain_n();
      v37 = 0;
    }

    v47[1] = i;
    v41 = (i + 64) >> 6;
    while (a1 < 0)
    {
      v46 = __CocoaSet.Iterator.next()();
      if (!v46 || (v51 = v46, type metadata accessor for DSKBLE.BLEPeripheral(), swift_dynamicCast(), v45 = v52, v2 = v37, v44 = v7, !v52))
      {
LABEL_48:
        sub_100093854(a1);

        return;
      }

LABEL_44:
      i = *(v45 + 16);

      v5 = static UUID.== infix(_:_:)();

      if ((v5 & 1) != 0 && *(v45 + 32))
      {
        sub_100093854(a1);

        v24 = *(v45 + 24);
        sub_1000EF154(v24);

        goto LABEL_47;
      }

      v37 = v2;
      v7 = v44;
    }

    v42 = v37;
    v43 = v7;
    v2 = v37;
    if (v7)
    {
LABEL_40:
      v44 = (v43 - 1) & v43;
      v45 = *(*(a1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v43)))));

      if (!v45)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }

    while (1)
    {
      v2 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v2 >= v41)
      {
        goto LABEL_48;
      }

      v43 = *(v36 + 8 * v2);
      ++v42;
      if (v43)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Not running", v26, 2u);
  }

LABEL_47:
}

void *sub_1000E6F84(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEScanRequest();
    sub_1001081DC(&qword_100503EB8, v6, type metadata accessor for DSKBLE.BLEScanRequest, &unk_10040B188);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v8 = v23;
    v9 = v24;
    v10 = v25;
    v11 = v26;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v10;
  v16 = v11;
  v17 = v10;
  if (v11)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (v19)
    {
      do
      {
        v27 = v19;
        sub_1000F075C(&v27, a2 & 1, a3);

        if (v4)
        {
          break;
        }

        v10 = v17;
        v11 = v18;
        if ((v5 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for DSKBLE.BLEScanRequest();
        swift_dynamicCast();
        v19 = v27;
        v17 = v10;
        v18 = v11;
      }

      while (v27);
    }

    return sub_100093854(v5);
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v9 + 64) >> 6))
      {
        return sub_100093854(v5);
      }

      v16 = *(v8 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000E71A0(uint64_t a1, uint64_t a2, int64_t i)
{
  v5 = v4;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v13 = qword_10051B7F0;
    *v12 = qword_10051B7F0;
    (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
    v14 = v13;
    v15 = _dispatchPreconditionTest(_:)();
    v17 = *(v10 + 8);
    v16 = v10 + 8;
    v17(v12, v9);
    if ((v15 & 1) == 0)
    {
      __break(1u);
LABEL_39:
      v15 = sub_10012E5A4(0, v16 + 1, 1, v15);
      *(a1 + 160) = v15;
LABEL_30:
      v39 = v55;
      v40 = v54;
      v42 = *(v15 + 16);
      v41 = *(v15 + 24);
      if (v42 >= v41 >> 1)
      {
        v15 = sub_10012E5A4((v41 > 1), v42 + 1, 1, v15);
      }

      *(v15 + 16) = v42 + 1;
      v43 = v15 + 16 * v42;
      *(v43 + 32) = v40;
      *(v43 + 40) = v39;
      *(a1 + 160) = v15;
      swift_endAccess();
      sub_100069E2C(v40, v39);
      sub_1000F22EC(a1);
      v44 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v19 = UUID._bridgeToObjectiveC()().super.isa;
      [v44 bleLogMessageSent:isa peerUUID:v19];

      goto LABEL_8;
    }

    if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Not running", v21, 2u);
      }

LABEL_8:

      return;
    }

    v54 = a1;
    v55 = a2;
    v56 = v5;
    v68 = i;
    v18 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v57 = v3;
    v59 = *(v3 + v18);
    if ((v59 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v10 = v63;
      a2 = v64;
      v3 = v65;
      v12 = v66;
      a1 = v67;
    }

    else
    {
      v22 = -1 << *(v59 + 32);
      a2 = v59 + 56;
      v3 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      a1 = v24 & *(v59 + 56);
      v10 = v59;
      swift_bridgeObjectRetain_n();
      v12 = 0;
    }

    v58 = v3;
    for (i = (v3 + 64) >> 6; v10 < 0; a1 = v9)
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28)
      {
        goto LABEL_25;
      }

      v61[0] = v28;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v5 = v62[0];
      v27 = v12;
      v9 = a1;
      if (!v62[0])
      {
        goto LABEL_25;
      }

LABEL_22:
      v60 = a1;
      v3 = *(v5 + 16);

      v29 = static UUID.== infix(_:_:)();

      if (v29)
      {
        sub_100093854(v10);

        swift_beginAccess();
        v15 = *(v5 + 160);
        v16 = *(v15 + 16);
        if (v16 > 9)
        {

          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v61[0] = v49;
            *v48 = 136315138;
            v50 = UUID.uuidString.getter();
            v52 = sub_1002FFA0C(v50, v51, v61);

            *(v48 + 4) = v52;
            _os_log_impl(&_mh_execute_header, v46, v47, "Send queue is full %s", v48, 0xCu);
            sub_1000752F4(v49);
          }

          sub_1000E1E2C();
          swift_allocError();
          *v53 = 7;
          swift_willThrow();

          return;
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v5;
        *(v5 + 160) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }

      v12 = v27;
    }

    v25 = v12;
    v26 = a1;
    v27 = v12;
    if (a1)
    {
      break;
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= i)
      {
        goto LABEL_25;
      }

      v26 = *(a2 + 8 * v27);
      v25 = (v25 + 1);
      if (v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_18:
  v9 = (v26 - 1) & v26;
  v5 = *(*(v10 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

  if (v5)
  {
    goto LABEL_22;
  }

LABEL_25:
  sub_100093854(v10);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v62[0] = v33;
    *v32 = 136315138;
    v34 = UUID.uuidString.getter();
    v36 = sub_1002FFA0C(v34, v35, v62);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to send message to disconnected peripheral %s", v32, 0xCu);
    sub_1000752F4(v33);
  }

  sub_1000E1E2C();
  swift_allocError();
  *v37 = 4;
  swift_willThrow();
}

uint64_t sub_1000E7974(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
    v8 = v7;
    v9 = _dispatchPreconditionTest(_:)();
    result = (*(v4 + 8))(v6, v3);
    if ((v9 & 1) == 0)
    {
      break;
    }

    if (!*(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v15, v16))
      {

        return 2;
      }

      v17 = 2;
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Not running", v18, 2u);

      return v17;
    }

    v36 = a1;
    v11 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v34[0] = v1;
    v35 = *(v1 + v11);
    if ((v35 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v1 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v13 = v39;
      v12 = v40;
      v14 = v41;
      v4 = v42;
      v6 = v43;
    }

    else
    {
      v19 = -1 << *(v35 + 32);
      v12 = v35 + 56;
      v14 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v6 = (v21 & *(v35 + 56));
      v13 = v35;
      swift_bridgeObjectRetain_n();
      v4 = 0;
    }

    v34[1] = v14;
    v22 = (v14 + 64) >> 6;
    if (v13 < 0)
    {
      while (1)
      {
        v26 = __CocoaSet.Iterator.next()();
        if (!v26)
        {
          break;
        }

        v37 = v26;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v1 = v38;
        v25 = v4;
        v3 = v6;
        if (!v38)
        {
          break;
        }

LABEL_21:

        a1 = static UUID.== infix(_:_:)();

        if (a1)
        {
          sub_100093854(v13);

          v17 = *(v1 + 168);

          return v17;
        }

        v4 = v25;
        v6 = v3;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_24:
      sub_100093854(v13);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v38 = v30;
        *v29 = 136315138;
        v31 = UUID.uuidString.getter();
        v33 = sub_1002FFA0C(v31, v32, &v38);

        *(v29 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v27, v28, "Peripheral is not connected %s", v29, 0xCu);
        sub_1000752F4(v30);
      }

      return 2;
    }

LABEL_13:
    v23 = v4;
    v24 = v6;
    v25 = v4;
    if (v6)
    {
LABEL_17:
      v3 = (v24 - 1) & v24;
      v1 = *(*(v13 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (v1)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_24;
      }

      v24 = *(v12 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_1000E7EB0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = *(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (v10)
    {
      v11 = v10;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v27[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1002FFA0C(*(a1 + 16), *(a1 + 24), v27);
        _os_log_impl(&_mh_execute_header, v12, v13, "Scan request for %s", v14, 0xCu);
        sub_1000752F4(v15);
      }

      if ((*(a1 + 33) & 1) != 0 || (v16 = [v11 state], v16 == 5) || v16 == 10)
      {
        swift_beginAccess();

        v17 = sub_1000D5368(&v28, a1);
        swift_endAccess();

        if (v17)
        {
          sub_1000EE338();
        }

        else
        {

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v27[0] = v24;
            *v23 = 136315138;
            *(v23 + 4) = sub_1002FFA0C(*(a1 + 16), *(a1 + 24), v27);
            _os_log_impl(&_mh_execute_header, v21, v22, "Scan is already requested %s", v23, 0xCu);
            sub_1000752F4(v24);
          }
        }
      }

      else
      {
        sub_1000E1E2C();
        swift_allocError();
        *v25 = 3;
        swift_willThrow();
      }
    }

    else
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Not running", v20, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E82EC(uint64_t a1)
{
  v4 = v2;
  v5 = v1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_24:
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  v12 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_7;
  }

  v13 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;

  v34[1] = v13;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v39 = v5;
  v36 = v4;
  if (v16)
  {
    v4 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38[0] = v17;
    *v4 = 136315138;
    type metadata accessor for UUID();
    sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = sub_1002FFA0C(v18, v19, v38);

    *(v4 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "New request to unpair %s", v4, 0xCu);
    sub_1000752F4(v17);
    v5 = v39;
  }

  v21 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_unpairingRequests;
  swift_beginAccess();
  v35 = v21;
  v6 = *(v5 + v21);
  v3 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    goto LABEL_26;
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v7 = v6 & 0xC000000000000001;

  for (i = 0; v9 != i; ++i)
  {
    if (v7)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (i >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v4 = *(v6 + 8 * i + 32);

      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    v5 = static UUID.== infix(_:_:)();

    if (v5)
    {

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v37[0] = v29;
        *v28 = 136315138;
        type metadata accessor for UUID();
        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = sub_1002FFA0C(v30, v31, v37);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Unpairing already requested for %s", v28, 0xCu);
        sub_1000752F4(v29);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v33 = 0;
      swift_willThrow();
      return;
    }
  }

  v23 = v39;
  v24 = v35;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v23 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v23 + v24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_1001047D0();
}

uint64_t sub_1000E885C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
LABEL_27:
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    v3 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
    swift_beginAccess();
    v6 = *(v2 + v3);
    v25 = _swiftEmptyArrayStorage;
    if (!(v6 >> 62))
    {
      v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:

  v24 = v4;
  if (v4)
  {
    v21 = v3;
    v22 = v2;
    v10 = 0;
    v2 = v6 & 0xC000000000000001;
    v11 = v6 & 0xFFFFFFFFFFFFFF8;
    v3 = v24;
    v23 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v2)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v12 = v25;
          v3 = v21;
          v2 = v22;
          goto LABEL_19;
        }
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_27;
        }

        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_16;
        }
      }

      if (static UUID.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v11 = v23;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v3 = v24;
      }

      ++v10;
      if (v4 == v3)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_19:

  *(v2 + v3) = v12;

  if (*(v2 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest))
  {

    if (static UUID.== infix(_:_:)())
    {

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25 = v17;
        *v16 = 136315138;
        v18 = UUID.uuidString.getter();
        v20 = sub_1002FFA0C(v18, v19, &v25);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "Request to cancel pairing for %s", v16, 0xCu);
        sub_1000752F4(v17);
      }

      sub_100106638(0);
    }
  }

  return result;
}

void sub_1000E8C60(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v11 = OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests;
      swift_beginAccess();
      v12 = *(v2 + v11);
      if ((v12 & 0xC000000000000001) != 0)
      {

        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *(v12 + 16);
      }

      v17 = String._bridgeToObjectiveC()();
      v18 = [objc_opt_self() UUIDWithString:v17];

      v14 = v18;

      v20 = sub_100111A50(v19, v14);

      *(v2 + v11) = v20;
      swift_retain_n();

      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *(v20 + 16);
      }

      if (v21 < v13)
      {

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v27 = v25;
          *v24 = 136315138;
          *(v24 + 4) = sub_1002FFA0C(a1, a2, &v27);
          _os_log_impl(&_mh_execute_header, v22, v23, "Stop scanning for %s", v24, 0xCu);
          sub_1000752F4(v25);
        }
      }

      sub_1000EE338();
    }

    else
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Not running", v16, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E9034(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_48;
  }

LABEL_2:
  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v5 += 8;
  v11(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_7;
  }

  v12 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;

  v13 = v62;
  v60 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v59 = v2;
  if (v16)
  {
    v2 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v66[0] = v17;
    *v2 = 136315138;
    v18 = UUID.uuidString.getter();
    v20 = sub_1002FFA0C(v18, v19, v66);

    *(v2 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "New request to pair %s", v2, 0xCu);
    sub_1000752F4(v17);
  }

  v21 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingRequests;
  swift_beginAccess();
  v58 = v21;
  v4 = *(v13 + v21);
  v63 = a1;
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_50;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  v22 = 0;
  do
  {
    if (v7 == v22)
    {
      goto LABEL_17;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v22, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v22 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      v2 = *(v4 + 8 * v22 + 32);

      if (__OFADD__(v22, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:

        if (qword_100501960 != -1)
        {
          swift_once();
        }

        v24 = qword_10051B288;
        v25 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
        swift_beginAccess();
        v57 = *(v24 + v25);
        if ((v57 & 0xC000000000000001) != 0)
        {

          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          type metadata accessor for DSKBLE.BLEPeripheral();
          sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
          Set.Iterator.init(_cocoa:)();
          v26 = v66[3];
          v7 = v66[4];
          v4 = v66[5];
          a1 = v66[6];
          v27 = v66[7];
        }

        else
        {
          v37 = -1 << *(v57 + 32);
          v7 = (v57 + 56);
          v4 = ~v37;
          v38 = -v37;
          if (v38 < 64)
          {
            v39 = ~(-1 << v38);
          }

          else
          {
            v39 = -1;
          }

          v27 = v39 & *(v57 + 56);
          v26 = v57;
          swift_bridgeObjectRetain_n();
          a1 = 0;
        }

        v56[1] = v4;
        v40 = (v4 + 64) >> 6;
        v61 = v40;
        while (1)
        {
          v5 = a1;
          if (v26 < 0)
          {
            v44 = __CocoaSet.Iterator.next()();
            if (!v44 || (v66[10] = v44, type metadata accessor for DSKBLE.BLEPeripheral(), swift_dynamicCast(), v4 = v64[0], v43 = v27, !v64[0]))
            {
LABEL_42:
              sub_100093854(v26);

              v48 = Logger.logObject.getter();
              v49 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v48, v49))
              {
                v50 = swift_slowAlloc();
                v51 = swift_slowAlloc();
                v64[0] = v51;
                *v50 = 136315138;
                v52 = UUID.uuidString.getter();
                v54 = sub_1002FFA0C(v52, v53, v64);

                *(v50 + 4) = v54;
                _os_log_impl(&_mh_execute_header, v48, v49, "Peripheral is not connected %s", v50, 0xCu);
                sub_1000752F4(v51);
              }

              v36 = 4;
              goto LABEL_45;
            }
          }

          else
          {
            v41 = a1;
            v42 = v27;
            if (!v27)
            {
              while (1)
              {
                a1 = v41 + 1;
                if (__OFADD__(v41, 1))
                {
                  break;
                }

                if (a1 >= v40)
                {
                  goto LABEL_42;
                }

                v42 = v7[a1];
                ++v41;
                if (v42)
                {
                  goto LABEL_34;
                }
              }

LABEL_47:
              __break(1u);
LABEL_48:
              swift_once();
              goto LABEL_2;
            }

LABEL_34:
            v43 = (v42 - 1) & v42;
            v4 = *(*(v26 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v42)))));

            if (!v4)
            {
              goto LABEL_42;
            }
          }

          v2 = v27;

          v45 = static UUID.== infix(_:_:)();

          v27 = v43;
          v40 = v61;

          if (v45)
          {
            sub_100093854(v26);

            v46 = v62;
            v47 = v58;
            swift_beginAccess();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(v46 + v47) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v46 + v47) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            sub_1001047D0();
            return;
          }
        }
      }
    }

    a1 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
    v23 = static UUID.== infix(_:_:)();

    ++v22;
  }

  while ((v23 & 1) == 0);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v65[0] = v32;
    *v31 = 136315138;
    v33 = UUID.uuidString.getter();
    v35 = sub_1002FFA0C(v33, v34, v65);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v29, "Pairing already requested for %s", v31, 0xCu);
    sub_1000752F4(v32);
  }

  v36 = 0;
LABEL_45:
  sub_1000E1E2C();
  swift_allocError();
  *v55 = v36;
  swift_willThrow();
}

void sub_1000E98C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = a1;
  v4 = v3;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v11 = v10;
    v12 = _dispatchPreconditionTest(_:)();
    v14 = *(v7 + 8);
    v13 = v7 + 8;
    v14(v9, v6);
    if (v12)
    {
      break;
    }

    __break(1u);
LABEL_48:
    swift_once();
LABEL_10:
    v102 = v4;
    v99 = a2;
    v6 = qword_10051B288;
    v27 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v94 = *(v6 + v27);
    v95 = v13;
    v92 = v12;
    if ((v94 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v6 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      a2 = v105[3];
      v4 = v105[4];
      v28 = v105[5];
      v29 = v105[6];
      v30 = v105[7];
    }

    else
    {
      v54 = -1 << *(v94 + 32);
      v4 = (v94 + 56);
      v28 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v30 = v56 & *(v94 + 56);
      a2 = v94;
      swift_bridgeObjectRetain_n();
      v29 = 0;
    }

    v93 = v28;
    v7 = (v28 + 64) >> 6;
    if (a2 < 0)
    {
LABEL_28:
      v57 = __CocoaSet.Iterator.next()();
      if (v57)
      {
        v105[10] = v57;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v58 = v103;
        v9 = v29;
        v59 = v30;
        if (v103)
        {
          goto LABEL_36;
        }
      }

LABEL_39:
      sub_100093854(a2);

      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v103 = v67;
        *v66 = 136315138;

        v68 = UUID.uuidString.getter();
        v70 = v69;

        v71 = sub_1002FFA0C(v68, v70, &v103);

        *(v66 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v64, v65, "Peripheral is not connected %s", v66, 0xCu);
        sub_1000752F4(v67);
      }

      sub_1000E1E2C();
      v72 = swift_allocError();
      *v73 = 4;
      sub_100106638(v72);

      swift_allocError();
      *v74 = 4;
      swift_willThrow();

      return;
    }

    while (1)
    {
      v60 = v29;
      v61 = v30;
      v9 = v29;
      if (!v30)
      {
        break;
      }

LABEL_35:
      v59 = (v61 - 1) & v61;

      if (!v58)
      {
        goto LABEL_39;
      }

LABEL_36:
      v97 = v29;
      v98 = v30;
      v6 = *(v58 + 16);
      v62 = v58;

      v63 = static UUID.== infix(_:_:)();

      if (v63)
      {
        sub_100093854(a2);

        v76 = v99;
        v75 = v100;
        v77 = *(v99 + 16);
        v78 = *(v99 + 24);
        v79 = v101;
        *(v99 + 16) = v101;
        *(v76 + 24) = v75;
        sub_10006A2D0(v77, v78);
        sub_100069E2C(v79, v75);
        v80 = v102;
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "Requesting pairing", v83, 2u);
        }

        *(v80 + v92) = 2;
        v84 = *(v62 + 24);
        sub_100068FC4(&unk_100503F50, &unk_10040D950);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100409900;
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v86;
        v87 = v84;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Bool;
        *(inited + 72) = 1;
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v88;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for Bool;
        *(inited + 144) = 1;
        sub_100090BC4(inited);
        swift_setDeallocating();
        sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v90 = v96;
        [v96 pairPeer:v87 options:isa];

        return;
      }

      v29 = v9;
      v30 = v59;
      if (a2 < 0)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v9 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        goto LABEL_39;
      }

      v61 = v4[v9];
      ++v60;
      if (v61)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

  v13 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_logger;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = os_log_type_enabled(v15, v16);
  v100 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v102 = v4;
    v20 = v19;
    v105[0] = v19;
    *v18 = 136315138;
    v21 = UUID.uuidString.getter();
    v23 = sub_1002FFA0C(v21, v22, v105);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received OOB data for %s", v18, 0xCu);
    sub_1000752F4(v20);
    v4 = v102;
  }

  a2 = *(v4 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_currentPairingRequest);
  if (!a2)
  {
    goto LABEL_13;
  }

  v24 = static UUID.== infix(_:_:)();

  if (v24)
  {
    v12 = OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state;
    if (*(v4 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_state) == 1)
    {
      v25 = *(v4 + OBJC_IVAR____TtC10seserviced13DSKBLEPairing_pairingAgent);
      if (v25)
      {
        v26 = qword_100501960;
        v96 = v25;
        if (v26 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_48;
      }

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Missing shared pairing agent", v50, 2u);
      }

      sub_1000E1E2C();
      v51 = swift_allocError();
      *v52 = 2;
      sub_100106638(v51);

      swift_allocError();
      *v53 = 2;
    }

    else
    {
      v39 = v4;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v105[0] = v43;
        *v42 = 136315138;
        LOBYTE(v103) = *(v4 + v12);
        v44 = String.init<A>(describing:)();
        v46 = sub_1002FFA0C(v44, v45, v105);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Pairing requested in wrong state %s", v42, 0xCu);
        sub_1000752F4(v43);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v47 = 2;
    }

    swift_willThrow();

    return;
  }

LABEL_13:

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v105[0] = v34;
    *v33 = 136315138;
    v35 = UUID.uuidString.getter();
    v37 = sub_1002FFA0C(v35, v36, v105);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Pairing not in progress for %s", v33, 0xCu);
    sub_1000752F4(v34);
  }

  sub_1000E1E2C();
  swift_allocError();
  *v38 = 5;
  swift_willThrow();
}

void sub_1000EA4CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  k = *(v6 - 8);
  __chkstk_darwin(v6);
  i = (&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *i = qword_10051B7F0;
    (*(k + 104))(i, enum case for DispatchPredicate.onQueue(_:), v6);
    v11 = v10;
    v12 = _dispatchPreconditionTest(_:)();
    (*(k + 8))(i, v6);
    if ((v12 & 1) == 0)
    {
      __break(1u);
LABEL_98:
      sub_100093854(a1);

      __break(1u);
LABEL_99:
      v83 = _CocoaArrayWrapper.endIndex.getter();
LABEL_81:
      if (!v83)
      {

        v52 = Logger.logObject.getter();
        v91 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v52, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v105[0] = v93;
          *v92 = 136315138;
          v94 = UUID.uuidString.getter();
          v96 = sub_1002FFA0C(v94, v95, v105);

          *(v92 + 4) = v96;
          _os_log_impl(&_mh_execute_header, v52, v91, "Failed to retrieve peripheral for %s", v92, 0xCu);
          sub_1000752F4(v93);
        }

        goto LABEL_91;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_102:
          __break(1u);
          return;
        }

        v84 = *(a2 + 32);
      }

      v85 = v84;

      v86 = i[7];
      i[7] = v85;

      v76 = i[7];
      if (v76)
      {
LABEL_86:
        v87 = v76;

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v89 = v100;
        [v100 connectPeripheral:v87 options:isa];

        return;
      }

      goto LABEL_102;
    }

    v13 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v13)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Not running", v26, 2u);
      }

      return;
    }

    v101 = v3;
    v104 = a1;
    if ((a2 & 1) == 0)
    {
      break;
    }

    v100 = v13;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v110 = v17;
      *v16 = 136315138;
      v18 = UUID.uuidString.getter();
      v20 = sub_1002FFA0C(v18, v19, &v110);

      *(v16 + 4) = v20;
      v3 = v101;
      _os_log_impl(&_mh_execute_header, v14, v15, "Replacing existing connection request for %s", v16, 0xCu);
      sub_1000752F4(v17);
    }

    swift_beginAccess();

    sub_100110740(v21);
    swift_endAccess();

    k = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v99 = *(v3 + k);
    if ((v99 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      k = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      a1 = v110;
      v22 = v111;
      a2 = v112;
      v6 = v113;
      v23 = v114;
    }

    else
    {
      v36 = -1 << *(v99 + 32);
      v22 = v99 + 56;
      a2 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v23 = v38 & *(v99 + 56);
      a1 = v99;
      swift_bridgeObjectRetain_n();
      v6 = 0;
    }

    v98 = a2;
    for (i = ((a2 + 64) >> 6); a1 < 0; v23 = v42)
    {
      v44 = __CocoaSet.Iterator.next()();
      if (!v44)
      {
        goto LABEL_34;
      }

      v105[0] = v44;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v43 = v106;
      v41 = v6;
      v42 = v23;
      if (!v106)
      {
        goto LABEL_34;
      }

LABEL_31:
      v103 = v43;
      k = *(v43 + 16);
      a2 = *(v104 + 16);

      v102 = a2;
      v3 = static UUID.== infix(_:_:)();

      if (v3)
      {
        sub_100093854(a1);

        v108 = type metadata accessor for DSKBLE.BLEConnectionRequest();
        v109 = &off_1004C7088;
        v90 = v103;
        *&v106 = v104;
        swift_beginAccess();

        sub_1000752F4((v90 + 40));
        sub_1000BC104(&v106, v90 + 40);
        swift_endAccess();
        sub_1000F0F70(v102);

        goto LABEL_92;
      }

      v6 = v41;
    }

    v39 = v6;
    v40 = v23;
    v41 = v6;
    if (v23)
    {
LABEL_27:
      v42 = (v40 - 1) & v40;

      if (v43)
      {
        goto LABEL_31;
      }

LABEL_34:
      sub_100093854(a1);

      return;
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= i)
      {
        goto LABEL_34;
      }

      v40 = *(v22 + 8 * v41);
      ++v39;
      if (v40)
      {
        goto LABEL_27;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  v27 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
  swift_beginAccess();
  v100 = v13;

  v97 = v27;
  LOBYTE(v27) = sub_1000D7064(&v106, a1);
  swift_endAccess();

  if (v27)
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v110 = v31;
      *v30 = 136315138;
      v32 = UUID.uuidString.getter();
      v34 = sub_1002FFA0C(v32, v33, &v110);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Connection request for %s", v30, 0xCu);
      sub_1000752F4(v31);
      v3 = v101;
    }
  }

  k = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  swift_beginAccess();
  v99 = *(v3 + k);
  if ((v99 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
    Set.Iterator.init(_cocoa:)();
    i = *(&v106 + 1);
    a1 = v106;
    a2 = v107;
    v6 = v108;
    v35 = v109;
  }

  else
  {
    v45 = -1 << *(v99 + 32);
    i = (v99 + 56);
    a2 = ~v45;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v48 = v47 & *(v99 + 56);
    a1 = v99;
    swift_bridgeObjectRetain_n();
    v35 = v48;
    v6 = 0;
  }

  v98 = a2;
  v3 = (a2 + 64) >> 6;
  v102 = a1;
  while (1)
  {
    v49 = v35;
    if (a1 < 0)
    {
      break;
    }

    for (j = v6; !v35; ++j)
    {
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        goto LABEL_95;
      }

      if (v6 >= v3)
      {
        goto LABEL_52;
      }

      v35 = i[v6];
    }

    v103 = (v35 - 1) & v35;
    a2 = *(*(a1 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v35)))));

    if (!a2)
    {
      goto LABEL_52;
    }

LABEL_49:

    k = static UUID.== infix(_:_:)();

    a1 = v102;

    v35 = v103;
    if (k)
    {
      sub_100093854(a1);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_91;
      }

      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v110 = v55;
      *v54 = 136315138;
      v56 = UUID.uuidString.getter();
      v58 = sub_1002FFA0C(v56, v57, &v110);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "Peripheral is already connected %s", v54, 0xCu);
      sub_1000752F4(v55);

      goto LABEL_61;
    }
  }

  v51 = __CocoaSet.Iterator.next()();
  if (v51)
  {
    v105[0] = v51;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    a2 = v110;
    v103 = v49;
    if (v110)
    {
      goto LABEL_49;
    }
  }

LABEL_52:
  sub_100093854(a1);

  v59 = [v100 state];
  if (v59 == 10 || v59 == 5)
  {
    v103 = *(v101 + v97);
    if ((v103 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v61, type metadata accessor for DSKBLE.BLEConnectionRequest, &unk_10040B110);
      Set.Iterator.init(_cocoa:)();
      a1 = v110;
      v3 = v111;
      v62 = v112;
      v6 = v113;
      v63 = v114;
    }

    else
    {
      v67 = -1 << *(v103 + 32);
      v3 = v103 + 56;
      v62 = ~v67;
      v68 = -v67;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      else
      {
        v69 = -1;
      }

      v63 = v69 & *(v103 + 56);
      a1 = v103;
      swift_bridgeObjectRetain_n();
      v6 = 0;
    }

    v102 = v62;
    for (k = (v62 + 64) >> 6; a1 < 0; v63 = v72)
    {
      a2 = a1 & 0x7FFFFFFFFFFFFFFFLL;
      v73 = __CocoaSet.Iterator.next()();
      if (!v73)
      {
        goto LABEL_98;
      }

      v105[3] = v73;
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      swift_dynamicCast();
      i = v105[0];
      a2 = v6;
      v72 = v63;
      if (!v105[0])
      {
        goto LABEL_98;
      }

LABEL_75:
      v74 = *(v104 + 16);
      v75 = OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier;
      if (static UUID.== infix(_:_:)())
      {
        sub_100093854(a1);

        v76 = i[7];
        if (v76)
        {
          goto LABEL_86;
        }

        sub_100068FC4(&qword_100503F10, &qword_10040A008);
        v77 = type metadata accessor for UUID();
        v78 = *(v77 - 8);
        v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_1004098F0;
        (*(v78 + 16))(v80 + v79, v74 + v75, v77);
        v81 = Array._bridgeToObjectiveC()().super.isa;

        v82 = [v100 retrievePeripheralsWithIdentifiers:v81];

        sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
        a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (!(a2 >> 62))
        {
          v83 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_81;
        }

        goto LABEL_99;
      }

      v6 = a2;
    }

    v70 = v6;
    v71 = v63;
    a2 = v6;
    if (v63)
    {
LABEL_71:
      v72 = (v71 - 1) & v71;
      i = *(*(a1 + 48) + ((a2 << 9) | (8 * __clz(__rbit64(v71)))));

      if (i)
      {
        goto LABEL_75;
      }

      goto LABEL_98;
    }

    while (1)
    {
      a2 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (a2 >= k)
      {
        goto LABEL_98;
      }

      v71 = *(v3 + 8 * a2);
      ++v70;
      if (v71)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v52 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v52, v64))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v52, v64, "Central is not powered on", v66, 2u);
LABEL_61:
  }

LABEL_91:

LABEL_92:
}

void sub_1000EB524(unint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v158 = a3;
  v159 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin(v7);
  v153 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DispatchQoS();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for DispatchTimeInterval();
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = (&v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = type metadata accessor for DispatchTime();
  v150 = *(v157 - 8);
  __chkstk_darwin(v157);
  v12 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v149 = &v135 - v14;
  v15 = type metadata accessor for UUID();
  v144 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v22 = qword_10051B7F0;
  *v21 = qword_10051B7F0;
  (*(v19 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v18);
  v147 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v21, v18);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  v23 = *(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  if (!v23)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Not running", v28, 2u);
    }

    v158(3, 1);
    return;
  }

  v24 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(a2);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v24 != 2)
  {
    v34 = v23;
LABEL_20:
    sub_100069E2C(a1, a2);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    sub_10006A178(a1, a2);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      v161 = sub_100288788(a1, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;

      v42 = sub_1002FFA0C(v39, v41, aBlock);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "Wrong address %s", v37, 0xCu);
      sub_1000752F4(v38);
    }

    v158(8, 1);
    return;
  }

  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v25 = v29 - v30;
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
LABEL_15:
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v25 = HIDWORD(a1) - a1;
      goto LABEL_17;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    v56 = swift_once();
LABEL_35:
    __chkstk_darwin(v56);
    *(&v135 - 2) = sub_10011F7F0;
    *(&v135 - 1) = v4;
    v58 = *(v57 + 24);
    __chkstk_darwin(v59);
    *(&v135 - 2) = sub_1000B3FF8;
    *(&v135 - 1) = v60;
    os_unfair_lock_lock(v58 + 8);
    v33 = v141;
    sub_1000B3FC0(&v58[4], aBlock);
    os_unfair_lock_unlock(v58 + 8);
    if ((aBlock[0] & 1) == 0)
    {
      v61 = [v142 sharedPairingAgent];
      if (v61)
      {
        v62 = v61;
        v63 = [v61 retrievePairedPeers];
        if (v63)
        {
          v141 = v62;
          v64 = v63;
          v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v66 = sub_1000F1970(v65);

          if (v66)
          {
            aBlock[0] = v140;
            __chkstk_darwin(v67);
            *(&v135 - 2) = aBlock;
            v137 = v68;
            v69 = sub_1002FB068(sub_10011F7B4, (&v135 - 4), v66);

            if (v69)
            {

              v70 = Logger.logObject.getter();
              v71 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v70, v71))
              {
                v72 = swift_slowAlloc();
                *v72 = 0;
                _os_log_impl(&_mh_execute_header, v70, v71, "Trying to unpair since we're paired but the peripheral unpaired from us", v72, 2u);
              }

              if (qword_100501968 == -1)
              {
                goto LABEL_43;
              }

              goto LABEL_68;
            }

            v99 = &v162;
          }

          else
          {
            v99 = &v163;
          }

          v62 = *(v99 - 32);
        }
      }
    }

    v100 = v140;

    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();

    v104 = os_log_type_enabled(v102, v103);
    v141 = v100;
    if (!v104)
    {

      v118 = v143;
      v119 = v100;
      v116 = v138;
      goto LABEL_63;
    }

    LODWORD(v137) = v103;
    v140 = v102;
    v105 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    aBlock[0] = v136;
    *v105 = 136315650;
    v106 = [v100 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v107 = UUID.uuidString.getter();
    v109 = v108;
    (*(v144 + 8))(v17, v15);
    v110 = sub_1002FFA0C(v107, v109, aBlock);

    *(v105 + 4) = v110;
    *(v105 + 12) = 2080;
    v111 = [v100 getTags];

    if (v111)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v112 = Array.description.getter();
      v114 = v113;

      v115 = sub_1002FFA0C(v112, v114, aBlock);

      *(v105 + 14) = v115;
      *(v105 + 22) = 2080;
      v116 = v138;
      *(v105 + 24) = sub_1002FFA0C(v138, v101, aBlock);
      v117 = v140;
      _os_log_impl(&_mh_execute_header, v140, v137, "Deleting existing peripheral %s with tags %s for %s", v105, 0x20u);
      swift_arrayDestroy();

      v118 = v143;
      v119 = v141;
LABEL_63:
      v120 = String._bridgeToObjectiveC()();
      [v119 tag:v120];

      v121 = String._bridgeToObjectiveC()();
      [v119 tag:v121];

      static DispatchTime.now()();
      v122 = v145;
      *v145 = 5;
      v123 = v146;
      v124 = v148;
      (*(v146 + 104))(v122, enum case for DispatchTimeInterval.seconds(_:), v148);
      v125 = v149;
      + infix(_:_:)();
      (*(v123 + 8))(v122, v124);
      v150 = *(v150 + 8);
      (v150)(v12, v157);
      v126 = swift_allocObject();
      v127 = v142;
      v126[2] = v118;
      v126[3] = v127;
      v126[4] = a1;
      v126[5] = a2;
      v126[6] = v116;
      v126[7] = v101;
      v128 = v159;
      v126[8] = v158;
      v126[9] = v128;
      aBlock[4] = sub_10011F708;
      aBlock[5] = v126;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C7570;
      v129 = _Block_copy(aBlock);
      v130 = v127;
      sub_100069E2C(a1, a2);
      v131 = v118;

      v132 = v151;
      static DispatchQoS.unspecified.getter();
      v161 = _swiftEmptyArrayStorage;
      sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
      v133 = v153;
      v134 = v156;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v129);

      (*(v155 + 8))(v133, v134);
      (*(v152 + 8))(v132, v154);
      (v150)(v125, v157);

      return;
    }

    __break(1u);
LABEL_70:
    __break(1u);
    return;
  }

LABEL_17:
  v31 = v23;
  if (v25 != 7)
  {
    goto LABEL_20;
  }

  v32 = v31;
  sub_100069E2C(a1, a2);
  v33 = 0;
  if (sub_1000939AC(a1, a2, 0, 0, 0))
  {
    goto LABEL_20;
  }

  if (v24 == 2)
  {
    v45 = *(a1 + 16);
    v44 = *(a1 + 24);
    v43 = v44 - v45;
    if (!__OFSUB__(v44, v45))
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else if (v24 == 1)
  {
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_68:
      swift_once();
LABEL_43:
      v73 = v137;
      v74 = [v137 identifier];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = swift_allocObject();
      v76 = v143;
      v75[2] = v143;
      v75[3] = a1;
      v77 = v158;
      v78 = v159;
      v75[4] = a2;
      v75[5] = v77;
      v75[6] = v78;
      type metadata accessor for DSKBLEPairing.BLEUnpairingRequest(0);
      v79 = swift_allocObject();
      (*(v144 + 32))(v79 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_peerIdentifier, v17, v15);
      v80 = (v79 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_tag);
      *v80 = 0;
      v80[1] = 0;
      v81 = (v79 + OBJC_IVAR____TtCC10seserviced13DSKBLEPairing19BLEUnpairingRequest_onUnpairingCompleted);
      *v81 = sub_10011F7A8;
      v81[1] = v75;
      sub_100069E2C(a1, a2);
      v82 = v76;

      sub_1000E82EC(v79);
      if (v33)
      {
      }

      return;
    }

    v43 = HIDWORD(a1) - a1;
    goto LABEL_32;
  }

  v43 = BYTE6(a2);
LABEL_32:
  v143 = v4;
  if (v43 < 1)
  {
    goto LABEL_70;
  }

  v46 = Data.subdata(in:)();
  v48 = v47;
  v49 = sub_1000E3F84(v46, v47);
  v141 = 0;
  sub_10006A178(v46, v48);
  aBlock[0] = v49;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v50 = BidirectionalCollection<>.joined(separator:)();
  v52 = v51;

  v53 = String._bridgeToObjectiveC()();
  v54 = [v32 retrievePeripheralWithAddress:v53];

  if (v54)
  {
    v138 = v50;
    v139 = v52;
    v142 = v32;
    __chkstk_darwin(v55);
    v4 = &v135 - 4;
    v140 = v54;
    *(&v135 - 2) = v54;
    if (qword_100501D78 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_66;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v84 = [v32 createPeripheralWithAddress:isa andIdentifier:0];

  v85 = Logger.logObject.getter();
  if (v84)
  {
    v86 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = v50;
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      aBlock[0] = v89;
      *v88 = 136315138;
      v90 = sub_1002FFA0C(v87, v52, aBlock);

      *(v88 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v85, v86, "Created new peripheral for %s", v88, 0xCu);
      sub_1000752F4(v89);
    }

    else
    {
    }

    v97 = v158;
    v98 = v84;
    v97(v84, 0);
  }

  else
  {
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = v50;
      v95 = v93;
      aBlock[0] = v93;
      *v92 = 136315138;
      v96 = sub_1002FFA0C(v94, v52, aBlock);

      *(v92 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v85, v91, "Failed to create peripheral for %s", v92, 0xCu);
      sub_1000752F4(v95);
    }

    else
    {
    }

    v158(2, 1);
  }
}

id sub_1000EC90C()
{
  ObjectType = swift_getObjectType();
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_centralState] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests] = &_swiftEmptySetSingleton;
  v2 = &v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName];
  *v2 = 0xD000000000000014;
  *(v2 + 1) = 0x8000000100463480;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPairedPeripherals] = _swiftEmptyDictionarySingleton;
  v3 = &v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanEventName];
  strcpy(&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanEventName], "SESScanPresent");
  v3[15] = -18;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryScanRequests] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryTransactions] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_maxBTScanRules] = 8;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_maxPeripheralErrorRetries] = 3;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_retryDelaySec] = 0x3FC999999999999ALL;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_rssiCloserDeactivated] = 10;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_rssiFurtherDeactivated] = -120;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC10seserviced6DSKBLE_sendQueueSize] = 10;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v14, "init");
  v5 = qword_100501DA0;
  v6 = v4;
  if (v5 != -1)
  {
    v12 = v6;
    swift_once();
    v6 = v12;
  }

  v7 = qword_10051B808;
  v8 = v6;
  sub_1001111C0(v8, v7);

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v13[4] = sub_10011F414;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100193978;
  v13[3] = &unk_1004C7980;
  v10 = _Block_copy(v13);

  os_state_add_handler();
  _Block_release(v10);

  return v8;
}

_DWORD *sub_1000ECC00()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  v25 = &type metadata for Int;
  *&v24 = v1;
  sub_100075D50(&v24, v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0x536C6172746E6563, 0xEC00000065746174, isUniquelyReferenced_nonNull_native);
  v3 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  v4 = *(*(v0 + v3) + 16);
  v25 = &type metadata for Int;
  *&v24 = v4;
  sub_100075D50(&v24, v23);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0xD000000000000016, 0x8000000100462BD0, v5);
  swift_beginAccess();

  v7 = sub_1000E4D68(v6);

  v25 = sub_100068FC4(&unk_100504010, &unk_100409CB0);
  *&v24 = v7;
  sub_100075D50(&v24, v23);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0xD000000000000014, 0x8000000100462BF0, v8);
  swift_beginAccess();

  v10 = sub_1000E527C(v9);

  v25 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  *&v24 = v10;
  sub_100075D50(&v24, v23);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0xD000000000000012, 0x8000000100462C10, v11);
  v12 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryTransactions;
  swift_beginAccess();
  v13 = *(v0 + v12);
  v25 = sub_100068FC4(&qword_100504078, &qword_10040B388);
  *&v24 = v13;
  sub_100075D50(&v24, v23);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0xD000000000000015, 0x8000000100462CB0, v14);
  v15 = *(v0 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager) != 0;
  v25 = &type metadata for Bool;
  LOBYTE(v24) = v15;
  sub_100075D50(&v24, v23);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0x6E696E6E75527369, 0xE900000000000067, v16);
  swift_beginAccess();

  v18 = sub_1000E55E0(v17);

  v25 = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *&v24 = v18;
  sub_100075D50(&v24, v23);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v23, 0x757165526E616373, 0xEC00000073747365, v19);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = sub_100015DA0("dskble.state", isa);

  return v21;
}

void sub_1000ED05C(unint64_t a1)
{
  if (qword_100501960 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_1000ED0C0(a1);
}

void sub_1000ED0C0(unint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (!*(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    return;
  }

  v11 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v11)
  {
    __break(1u);
    return;
  }

  *&v51[0] = v11;
  sub_100068FC4(&qword_100503F60, &qword_10040B2D8);
  if (swift_dynamicCast())
  {
    countAndFlagsBits = v49._countAndFlagsBits;
    if (!*(v49._countAndFlagsBits + 16))
    {
      goto LABEL_27;
    }

    v2 = v1;
    v13 = sub_10008C908(0x746E657645435058, 0xEC000000656D614ELL);
    if ((v14 & 1) == 0)
    {
      goto LABEL_27;
    }

    v49._countAndFlagsBits = *(*(countAndFlagsBits + 56) + 8 * v13);
    swift_unknownObjectRetain();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v7 = *(&v51[0] + 1);
    if (!*(countAndFlagsBits + 16) || (v10 = *&v51[0], v15 = sub_10008C908(0x707954746E657665, 0xE900000000000065), (v16 & 1) == 0) || (v49._countAndFlagsBits = *(*(countAndFlagsBits + 56) + 8 * v15), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
    {

LABEL_27:

      v22 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v22, v28))
      {

        goto LABEL_31;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v51[0] = v30;
      *v29 = 136315138;
      v31 = Dictionary.description.getter();
      v33 = v32;

      v34 = sub_1002FFA0C(v31, v33, v51);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, v28, "Failed to retrieve expected keys from XPC object %s", v29, 0xCu);
      sub_1000752F4(v30);

      goto LABEL_29;
    }

    a1 = *(&v51[0] + 1);
    if (!*(countAndFlagsBits + 16) || (v17 = *&v51[0], v18 = sub_10008C908(0x656369766564, 0xE600000000000000), (v19 & 1) == 0))
    {

      v49 = 0;
      *&v50 = 0;
      *(&v50 + 1) = 1;
LABEL_25:
      v25 = &unk_100503FC0;
      v26 = &unk_10040B310;
      v27 = &v49;
LABEL_26:
      sub_100075768(v27, v25, v26);
      goto LABEL_27;
    }

    v20 = *(*(countAndFlagsBits + 56) + 8 * v18);
    if (([v20 respondsToSelector:"__swift_objectForKeyedSubscript:"] & 1) == 0)
    {
      v49 = 0;
      *&v50 = 0;
      *(&v50 + 1) = 1;
LABEL_24:

      goto LABEL_25;
    }

    v46 = v17;
    v47._countAndFlagsBits = 0x4449656369766564;
    v47._object = 0xE800000000000000;
    swift_unknownObjectRetain();
    v21 = [v20 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v49 = v47;
      v50 = v48;
      if (*(&v48 + 1) != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

LABEL_34:
    v49 = 0;
    v50 = 0u;
LABEL_35:
    v51[0] = v49;
    v51[1] = v50;
    if (*(&v50 + 1))
    {
      if (swift_dynamicCast())
      {

        v35 = v47;

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *&v51[0] = swift_slowAlloc();
          *v38 = 136315650;
          *(v38 + 4) = sub_1002FFA0C(v10, v7, v51);
          *(v38 + 12) = 2080;
          *(v38 + 14) = sub_1002FFA0C(v46, a1, v51);
          *(v38 + 22) = 2080;
          *(v38 + 24) = sub_1002FFA0C(v35._countAndFlagsBits, v35._object, v51);
          _os_log_impl(&_mh_execute_header, v36, v37, "XPC event from com.apple.bluetooth.discovery %s %s %s", v38, 0x20u);
          swift_arrayDestroy();
        }

        if (v10 == *(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName) && v7 == *(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName + 8))
        {

          v39 = v46;
        }

        else
        {
          v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v39 = v46;
          if ((v40 & 1) == 0)
          {

LABEL_51:

            return;
          }
        }

        if (v39 == 0x6F46656369766564 && a1 == 0xEB00000000646E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          *&v51[0] = 0;
          *(&v51[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v41._object = 0x8000000100463330;
          v41._countAndFlagsBits = 0xD000000000000032;
          String.append(_:)(v41);
          String.append(_:)(v35);
          String.utf8CString.getter();

          v42 = os_transaction_create();

          swift_beginAccess();
          v43 = v42;
LABEL_49:
          sub_1000C5A0C(v43, v35._countAndFlagsBits, v35._object);
          swift_endAccess();
          return;
        }

        if (v39 == 0x6F4C656369766564 && a1 == 0xEA00000000007473)
        {

LABEL_56:
          swift_beginAccess();
          v43 = 0;
          goto LABEL_49;
        }

        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v44)
        {
          goto LABEL_56;
        }

        goto LABEL_51;
      }

      goto LABEL_27;
    }

    v25 = &qword_100502420;
    v26 = &qword_10040F310;
    v27 = v51;
    goto LABEL_26;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed to convert XPC object to Dictionary", v24, 2u);
LABEL_29:
  }

LABEL_31:
}

void sub_1000ED9C0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager;
  v10 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
  v11 = Logger.logObject.getter();
  if (!v10)
  {
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v11, v14, "Starting DSKBLE", v15, 2u);
    }

    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100409900;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v17;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v18;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = 1;
    v19 = v7;
    sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayDestroy();
    v20 = objc_allocWithZone(CBCentralManager);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = [v20 initWithDelegate:0 queue:v19 options:isa];

    v23 = *(v1 + v9);
    *(v1 + v9) = v22;
    v24 = v22;

    if (v24)
    {
      [v24 setDelegate:v1];

      v25 = *(v1 + v9);
      if (v25)
      {
        v26 = [v25 state];
        *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState) = v26;
        return;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "DSKBLE is already running", v13, 2u);
  }
}

void sub_1000EDD78()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  i = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *i = qword_10051B7F0;
    (*(v3 + 104))(i, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(i, v2);
    if ((v6 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v8 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v8)
    {
      break;
    }

    v40 = OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager;
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopping DSKBLE", v12, 2u);
    }

    v39 = v9;
    [v9 setDelegate:0];
    v13 = OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests;
    swift_beginAccess();
    *(v1 + v13) = &_swiftEmptySetSingleton;

    sub_1000EE338();
    v14 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    *(v1 + v14) = &_swiftEmptySetSingleton;

    v2 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v38 = *(v1 + v2);
    if ((v38 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v2 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v15 = v43;
      v3 = v44;
      v16 = v45;
      v17 = v46;
      v18 = v47;
    }

    else
    {
      v22 = -1 << *(v38 + 32);
      v3 = v38 + 56;
      v16 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v18 = v24 & *(v38 + 56);
      v15 = v38;
      swift_bridgeObjectRetain_n();
      v17 = 0;
    }

    v37 = v16;
    for (i = ((v16 + 64) >> 6); v15 < 0; v18 = v28)
    {
      v30 = __CocoaSet.Iterator.next()();
      if (!v30)
      {
        goto LABEL_26;
      }

      v41 = v30;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v29 = v42;
      v27 = v17;
      v28 = v18;
      if (!v42)
      {
        goto LABEL_26;
      }

LABEL_24:
      v31 = *(v29 + 24);
      v2 = v1;
      sub_1000EF154(v31);

      v32 = *(v29 + 24);
      sub_1000EF594(v32, 0);

      v17 = v27;
    }

    v25 = v17;
    v26 = v18;
    v27 = v17;
    if (v18)
    {
LABEL_20:
      v28 = (v26 - 1) & v26;
      v29 = *(*(v15 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

      if (v29)
      {
        goto LABEL_24;
      }

LABEL_26:

      sub_100093854(v15);

      v33 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
      swift_beginAccess();
      *(v1 + v33) = _swiftEmptyArrayStorage;

      v34 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPairedPeripherals;
      swift_beginAccess();
      *(v1 + v34) = _swiftEmptyDictionarySingleton;

      v35 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryTransactions;
      swift_beginAccess();
      *(v1 + v35) = _swiftEmptyDictionarySingleton;

      v36 = *(v1 + v40);
      *(v1 + v40) = 0;

      *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState) = 4;
      return;
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= i)
      {
        goto LABEL_26;
      }

      v26 = *(v3 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "DSKBLE is not running", v21, 2u);
  }
}

void sub_1000EE338()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v7 = qword_10051B7F0;
    *v6 = qword_10051B7F0;
    (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
    v8 = v7;
    v9 = _dispatchPreconditionTest(_:)();
    v10 = *(v4 + 8);
    v4 += 8;
    v10(v6, v3);
    if ((v9 & 1) == 0)
    {
      __break(1u);
LABEL_60:

      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_40;
      }

      v54 = swift_slowAlloc();
      v17 = sub_1001104E4(v54, v9, v3, sub_1000F0748, 0);

      if ((v17 & 0xC000000000000001) == 0)
      {
        goto LABEL_63;
      }

LABEL_55:
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_64;
      }

LABEL_56:
      sub_1000E42E0(v17);

      sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100409900;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v52;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = 1;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v53;
      *(inited + 120) = &type metadata for UInt32;
      *(inited + 96) = 21;

      sub_10008FFDC(inited);
      swift_setDeallocating();
      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();
      goto LABEL_96;
    }

    v11 = *&v2[OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager];
    if (!v11)
    {
      v12 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v12, v32, "Not running", v33, 2u);
      }

      goto LABEL_100;
    }

    v12 = v11;
    v13 = [v12 state];
    if (v13 != 10 && v13 != 5)
    {
      goto LABEL_100;
    }

    v4 = OBJC_IVAR____TtC10seserviced6DSKBLE_scanRequests;
    swift_beginAccess();
    v15 = *&v2[v4];
    if ((v15 & 0xC000000000000001) != 0)
    {

      v16 = __CocoaSet.count.getter();

      if (!v16)
      {
        goto LABEL_35;
      }
    }

    else if (!*(v15 + 16))
    {
LABEL_35:
      if ([v12 isScanning])
      {
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Stopping scan", v36, 2u);
        }

        [v12 stopScan];
      }

      goto LABEL_100;
    }

    v3 = *&v2[v4];
    v106 = v12;
    v107 = v2;
    v105 = v4;
    if ((v3 & 0xC000000000000001) == 0)
    {
      break;
    }

    v17 = &_swiftEmptySetSingleton;
    v110 = &_swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
    v18 = __CocoaSet.Iterator.next()();
    if (!v18)
    {
LABEL_32:

      v2 = v107;
      v4 = v105;
      if ((v17 & 0xC000000000000001) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_63;
    }

    v19 = v18;
    v1 = type metadata accessor for DSKBLE.BLEScanRequest();
    v20 = v19;
    v6 = -1;
    v4 = 1;
LABEL_16:
    v109[0] = v20;
    swift_dynamicCast();
    v2 = v108;
    if (*(v108 + 7))
    {

      goto LABEL_15;
    }

    v21 = *(v17 + 16);
    if (*(v17 + 24) <= v21)
    {
      sub_10010A5C0(v21 + 1, &unk_100507CF0, &qword_10040B270, &String.hash(into:));
    }

    v17 = v110;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v3 = v109;
    v22 = Hasher._finalize()();
    v23 = v17 + 56;
    v24 = -1 << *(v17 + 32);
    v25 = v22 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v17 + 56 + 8 * (v25 >> 6))) != 0)
    {
      v27 = __clz(__rbit64((-1 << v25) & ~*(v17 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_29;
    }

    v28 = 0;
    v29 = (63 - v24) >> 6;
    while (++v26 != v29 || (v28 & 1) == 0)
    {
      v30 = v26 == v29;
      if (v26 == v29)
      {
        v26 = 0;
      }

      v28 |= v30;
      v31 = *(v23 + 8 * v26);
      if (v31 != -1)
      {
        v27 = __clz(__rbit64(~v31)) + (v26 << 6);
LABEL_29:
        *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        *(*(v17 + 48) + 8 * v27) = v2;
        ++*(v17 + 16);
LABEL_15:
        v20 = __CocoaSet.Iterator.next()();
        if (!v20)
        {
          goto LABEL_32;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v37 = *(v3 + 32);
  v38 = v37 & 0x3F;
  v9 = ((1 << v37) + 63) >> 6;
  v1 = 8 * v9;

  if (v38 > 0xD)
  {
    goto LABEL_60;
  }

LABEL_40:
  v6 = v104;
  __chkstk_darwin(v39);
  bzero(v104 - ((v1 + 15) & 0x3FFFFFFFFFFFFFF0), v1);
  v40 = 0;
  v41 = 0;
  v42 = 1 << *(v3 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v3 + 56);
  v45 = (v42 + 63) >> 6;
  while (1)
  {
    if (v44)
    {
      v46 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v47 = v46 | (v41 << 6);
    }

    else
    {
      v48 = v41;
      do
      {
        v41 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_57;
        }

        if (v41 >= v45)
        {
          goto LABEL_54;
        }

        v49 = *(v3 + 56 + 8 * v41);
        ++v48;
      }

      while (!v49);
      v44 = (v49 - 1) & v49;
      v47 = __clz(__rbit64(v49)) | (v41 << 6);
    }

    if (!*(*(*(v3 + 48) + 8 * v47) + 56))
    {
      *(v104 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v1 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v47;
      v50 = __OFADD__(v40++, 1);
      if (v50)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_54:
  v17 = sub_10024A434((v104 - ((v1 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, v40, v3);
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

LABEL_63:
  if (*(v17 + 16))
  {
    goto LABEL_56;
  }

LABEL_64:

  v56 = sub_1000E42E0(v55);
  v104[1] = 0;
  v104[2] = v56;

  v57 = *&v2[v4];
  if ((v57 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEScanRequest();
    sub_1001081DC(&qword_100503EB8, v58, type metadata accessor for DSKBLE.BLEScanRequest, &unk_10040B188);
    Set.Iterator.init(_cocoa:)();
    v60 = v109[0];
    v59 = v109[1];
    v61 = v109[2];
    v62 = v109[3];
    v63 = v109[4];
  }

  else
  {
    v64 = -1 << *(v57 + 32);
    v59 = v57 + 56;
    v61 = ~v64;
    v65 = -v64;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v63 = v66 & *(v57 + 56);
    swift_bridgeObjectRetain_n();
    v62 = 0;
    v60 = v57;
  }

  v67 = 0;
  v104[3] = v61;
  v68 = (v61 + 64) >> 6;
  do
  {
    if (v60 < 0)
    {
      v74 = __CocoaSet.Iterator.next()();
      if (!v74)
      {
        goto LABEL_86;
      }

      v108 = v74;
      type metadata accessor for DSKBLE.BLEScanRequest();
      swift_dynamicCast();
      v73 = v110;
      v71 = v62;
      v72 = v63;
      if (!v110)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v69 = v62;
      v70 = v63;
      v71 = v62;
      if (!v63)
      {
        while (1)
        {
          v71 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            break;
          }

          if (v71 >= v68)
          {
            goto LABEL_86;
          }

          v70 = *(v59 + 8 * v71);
          ++v69;
          if (v70)
          {
            goto LABEL_76;
          }
        }

        __break(1u);
        goto LABEL_102;
      }

LABEL_76:
      v72 = (v70 - 1) & v70;

      if (!v73)
      {
        goto LABEL_86;
      }
    }

    v75 = v73[7];
    if (!v75)
    {
      __break(1u);
      return;
    }

    v76 = *(v75 + 16);

    v77 = 2;
    if (v76)
    {
      v77 = v76;
    }

    v62 = v71;
    v63 = v72;
    v50 = __OFADD__(v67, v77);
    v67 += v77;
  }

  while (!v50);
  __break(1u);
LABEL_86:
  sub_100093854(v60);

  v78 = v107;
  v79 = v107;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v80, v81))
  {

    v80 = v79;
    goto LABEL_95;
  }

  v82 = swift_slowAlloc();
  *v82 = 134217984;
  v83 = v67;
  if (v67 < 9)
  {
    goto LABEL_94;
  }

  v84 = *&v78[v105];
  if ((v84 & 0xC000000000000001) != 0)
  {

    v85 = __CocoaSet.count.getter();
  }

  else
  {
    v85 = *(v84 + 16);
  }

  if (v85 + 0x4000000000000000 < 0)
  {
LABEL_102:
    __break(1u);
  }

  v83 = 2 * v85;
LABEL_94:
  *(v82 + 4) = v83;

  _os_log_impl(&_mh_execute_header, v80, v81, "Computing %ld scan rules", v82, 0xCu);

LABEL_95:

  v110 = _swiftEmptyArrayStorage;

  sub_1000E6F84(v86, v67 < 9, &v110);

  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  v87 = swift_initStackObject();
  *(v87 + 16) = xmmword_100409900;
  *(v87 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v87 + 40) = v88;
  v89 = v110;
  *(v87 + 72) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *(v87 + 48) = v89;
  *(v87 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v87 + 88) = v90;
  *(v87 + 120) = &type metadata for UInt32;
  *(v87 + 96) = 655360;

  sub_10008FFDC(v87);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();

LABEL_96:

  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v93 = 136315394;
    sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
    v94 = Array.description.getter();
    v96 = v95;

    v97 = sub_1002FFA0C(v94, v96, &v110);

    *(v93 + 4) = v97;
    *(v93 + 12) = 2080;
    v98 = Dictionary.description.getter();
    v100 = v99;

    v101 = sub_1002FFA0C(v98, v100, &v110);

    *(v93 + 14) = v101;
    _os_log_impl(&_mh_execute_header, v91, v92, "Now scanning for services %s with options %s", v93, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v103 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = v106;
  [v106 scanForPeripheralsWithServices:isa options:v103];

LABEL_100:
}

void sub_1000EF154(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(v3 + 13))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(v3 + 1))(v5, v2);
    if ((v6 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v2)
    {
      break;
    }

    v3 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v24 = *&v3[v1];
    v25 = v2;
    if ((v24 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      v8 = v2;
      __CocoaSet.makeIterator()();
      v2 = type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v10 = v29;
      v9 = v30;
      v1 = v31;
      v11 = v32;
      v5 = v33;
    }

    else
    {
      v15 = -1 << *(v24 + 32);
      v9 = v24 + 56;
      v1 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v5 = (v17 & *(v24 + 56));
      v10 = v24;
      swift_bridgeObjectRetain_n();
      v18 = v2;
      v11 = 0;
    }

    v23 = v1;
    v19 = (v1 + 64) >> 6;
    while (v10 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22 || (v27 = v22, type metadata accessor for DSKBLE.BLEPeripheral(), swift_dynamicCast(), (v2 = v28) == 0))
      {
LABEL_25:
        sub_100093854(v10);

        return;
      }

LABEL_22:
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      v3 = v2[3];
      v1 = static NSObject.== infix(_:_:)();

      if (v1)
      {
        sub_100093854(v10);

        v12 = v25;
        [v25 cancelPeripheralConnection:v26, v23, v24];
        goto LABEL_24;
      }
    }

    v20 = v11;
    v21 = v5;
    if (v5)
    {
LABEL_18:
      v5 = ((v21 - 1) & v21);
      v2 = *(*(v10 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v21)))));

      if (!v2)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v19)
      {
        goto LABEL_25;
      }

      v21 = *(v9 + 8 * v11);
      ++v20;
      if (v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Not running", v14, 2u);
  }

LABEL_24:
}

void sub_1000EF594(void *a1, uint64_t a2)
{
  v101 = a2;
  v110 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v103 = *(v7 - 8);
  __chkstk_darwin(v7);
  v102 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for UUID();
  v9 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v93 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  i = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v17 = qword_10051B7F0;
    *v16 = qword_10051B7F0;
    (*(i + 13))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
    v99 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    v18 = *(i + 1);
    i += 8;
    v18(v16, v13);
    if ((v17 & 1) == 0)
    {
      break;
    }

    if (!*(v2 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Not running", v22, 2u);
      }

      return;
    }

    v98 = v6;
    v94 = v7;
    v95 = v4;
    v96 = v3;
    v109 = v9;
    v13 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v100 = v2;
    v97 = v13;
    v105 = *(v2 + v13);
    if ((v105 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v13 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v19 = v120;
      v4 = v121;
      v2 = v122;
      v9 = v123;
      v6 = v124;
    }

    else
    {
      v23 = -1 << *(v105 + 32);
      v4 = (v105 + 56);
      v2 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v6 = (v25 & *(v105 + 56));
      v19 = v105;
      swift_bridgeObjectRetain_n();
      v9 = 0;
    }

    v104 = v2;
    for (i = ((v2 + 64) >> 6); v19 < 0; v6 = v13)
    {
      v28 = __CocoaSet.Iterator.next()();
      if (!v28)
      {
        goto LABEL_26;
      }

      v119 = v28;
      type metadata accessor for DSKBLE.BLEPeripheral();
      swift_dynamicCast();
      v7 = aBlock;
      v16 = v9;
      v13 = v6;
      if (!aBlock)
      {
        goto LABEL_26;
      }

LABEL_22:
      sub_10009393C(0, &qword_100502D20, NSObject_ptr);
      v3 = *(v7 + 24);
      v2 = static NSObject.== infix(_:_:)();

      if (v2)
      {
        sub_100093854(v19);

        v46 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
        v47 = v110;
        v4 = v100;
        v104 = v46;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.info.getter();

        v50 = os_log_type_enabled(v48, v49);
        v93 = v47;
        if (v50)
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          aBlock = v52;
          *v51 = 136315138;
          v53 = [v47 identifier];
          v54 = v107;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v55 = v108;
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v57;
          v109[1](v54, v55);
          v59 = sub_1002FFA0C(v56, v58, &aBlock);

          *(v51 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v48, v49, "Disconnected %s", v51, 0xCu);
          sub_1000752F4(v52);
        }

        v60 = v98;
        v61 = *(v7 + 128);
        v9 = v109;
        if (v61)
        {
          v62 = v61;
          v63 = [v62 inputStream];
          if (!v63)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            return;
          }

          v64 = v63;
          [v63 close];

          v65 = [v62 outputStream];
          if (!v65)
          {
            goto LABEL_75;
          }

          v66 = v65;
          [v65 close];

          v67 = [v62 inputStream];
          CFReadStreamSetDispatchQueue(v67, 0);

          v68 = [v62 outputStream];
          CFWriteStreamSetDispatchQueue(v68, 0);

          v69 = [v62 inputStream];
          if (!v69)
          {
            goto LABEL_76;
          }

          v70 = v69;
          [v69 setDelegate:0];

          v71 = [v62 outputStream];
          if (!v71)
          {
            goto LABEL_77;
          }

          v72 = v71;
          [v71 setDelegate:0];
        }

        v73 = *(v7 + 16);

        v74 = v107;
        UUID.init()();
        v75 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        swift_beginAccess();
        (*(v9 + 5))(v73 + v75, v74, v108);
        swift_endAccess();
        *(v73 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) = 0;
        v76 = swift_allocObject();
        v76[2] = v7;
        v76[3] = v73;
        v76[4] = v101;
        v115 = sub_100114174;
        v116 = v76;
        aBlock = _NSConcreteStackBlock;
        v112 = 1107296256;
        v113 = sub_100080830;
        v114 = &unk_1004C73E0;
        v77 = _Block_copy(&aBlock);
        v105 = v73;

        swift_errorRetain();
        v78 = v102;
        static DispatchQoS.unspecified.getter();
        v119 = _swiftEmptyArrayStorage;
        sub_1001081DC(&qword_1005020E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        i = v96;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v77);
        v95[1](v60, i);
        v103[1](v78, v94);

        v6 = *(v7 + 144);
        if (v6)
        {
          v79 = v6;
          v80 = v93;
          i = v79;
          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            aBlock = v85;
            *v83 = 138412546;
            *(v83 + 4) = i;
            *v84 = v6;
            *(v83 + 12) = 2080;
            v104 = i;
            v86 = [v80 identifier];
            i = v107;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v6 = v108;
            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            v89 = v88;
            v109[1](i, v6);
            v90 = sub_1002FFA0C(v87, v89, &aBlock);

            *(v83 + 14) = v90;
            _os_log_impl(&_mh_execute_header, v81, v82, "Releasing voucher (BT) %@ for %s", v83, 0x16u);
            sub_100075768(v84, &unk_100503F70, &unk_10040B2E0);

            sub_1000752F4(v85);
            v9 = v109;
          }

          else
          {
          }

          v4 = v100;
        }

        if (!*(v7 + 32))
        {
          goto LABEL_68;
        }

        if (qword_100501DA0 != -1)
        {
          goto LABEL_73;
        }

        goto LABEL_67;
      }

      v9 = v16;
    }

    v26 = v9;
    v27 = v6;
    v16 = v9;
    if (v6)
    {
LABEL_18:
      v13 = (v27 - 1) & v27;
      v7 = *(*(v19 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v27)))));

      if (v7)
      {
        goto LABEL_22;
      }

LABEL_26:
      sub_100093854(v19);

      v4 = v100;
      v9 = v109;
      goto LABEL_27;
    }

    while (1)
    {
      v16 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v16 >= i)
      {
        v6 = 0;
        goto LABEL_26;
      }

      v27 = v4[v16];
      ++v26;
      if (v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  __break(1u);
LABEL_73:
  swift_once();
LABEL_67:
  v91 = v107;
  v92 = v108;
  (*(v9 + 2))(v107, *(v7 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v108);
  sub_100337DAC(v91);
  (*(v9 + 1))(v91, v92);
LABEL_68:
  swift_beginAccess();
  sub_10010E308(v7);
  swift_endAccess();

LABEL_27:
  v29 = *(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v29 != 10 && v29 != 5)
  {
    return;
  }

  v31 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
  swift_beginAccess();
  v99 = *(v4 + v31);
  if ((v99 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    sub_1001081DC(&unk_100503E70, v32, type metadata accessor for DSKBLE.BLEConnectionRequest, &unk_10040B110);
    Set.Iterator.init(_cocoa:)();
    v13 = aBlock;
    v4 = v112;
    v2 = v113;
    v7 = v114;
    v3 = v115;
  }

  else
  {
    v33 = -1 << *(v99 + 32);
    v4 = (v99 + 56);
    v2 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v3 = (v35 & *(v99 + 56));
    v13 = v99;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v98 = v2;
  v16 = (v2 + 64) >> 6;
  v105 = (v9 + 16);
  v104 = v9 + 8;
  v103 = v4;
  if ((v13 & 0x8000000000000000) == 0)
  {
LABEL_39:
    v36 = v7;
    v37 = v3;
    v38 = v7;
    if (v3)
    {
LABEL_43:
      v6 = ((v37 - 1) & v37);

      if (v39)
      {
        goto LABEL_47;
      }

      goto LABEL_50;
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_70;
      }

      if (v38 >= v16)
      {
        goto LABEL_50;
      }

      v37 = v4[v38];
      ++v36;
      if (v37)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v40 = __CocoaSet.Iterator.next()();
    if (!v40)
    {
      break;
    }

    v117 = v40;
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    v39 = v118;
    v38 = v7;
    v6 = v3;
    if (!v118)
    {
      break;
    }

LABEL_47:
    v101 = v7;
    v41 = v13;
    v102 = v3;
    v109 = v39;
    v42 = v107;
    v43 = v108;
    (*v105)(v107, *(v39 + 16) + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v108);
    v44 = [v110 identifier];
    v45 = v106;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = static UUID.== infix(_:_:)();
    i = v104;
    v9 = *v104;
    (*v104)(v45, v43);
    (v9)(v42, v43);
    if (v2)
    {
      sub_100093854(v41);

      sub_1000EA4CC(v109, 0);

      return;
    }

    v7 = v38;
    v3 = v6;
    v13 = v41;
    v4 = v103;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_50:
  sub_100093854(v13);
}

uint64_t sub_1000F075C(uint64_t *a1, char a2, uint64_t *a3)
{
  v3 = *a1;
  if (a2)
  {
    v4 = *(v3 + 56);
    if (v4)
    {
      if (*(v4 + 16))
      {

        sub_100111CE0(v5, a3, v3);
      }
    }
  }

  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  v42 = *(v3 + 16);
  v44 = *(v3 + 24);

  v9._countAndFlagsBits = 12336;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v42;
  *(inited + 56) = v44;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v10;
  result = sub_10013044C(12592, 0xE200000000000000);
  if (v11 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 120) = &type metadata for Data;
  *(inited + 96) = result;
  *(inited + 104) = v11;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v12;
  result = sub_10013044C(12336, 0xE200000000000000);
  if (v13 >> 60 == 15)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = result;
  *(inited + 152) = v13;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v14;
  v15 = *(v3 + 32);
  *(inited + 216) = &type metadata for Int8;
  v41 = v15;
  *(inited + 192) = v15;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v16;
  v17 = String._bridgeToObjectiveC()();
  v18 = objc_opt_self();
  v19 = [v18 UUIDWithString:v17];

  v20 = sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
  *(inited + 264) = v20;
  *(inited + 240) = v19;
  v21 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  v22 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_10012EF08(0, v22[2] + 1, 1, v22);
    *a3 = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_10012EF08((v24 > 1), v25 + 1, 1, v22);
    *a3 = v22;
  }

  v22[2] = v25 + 1;
  v22[v25 + 4] = v21;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_10040AA50;
  *(v26 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 40) = v27;
  v43 = *(v3 + 16);
  v45 = *(v3 + 24);

  v28._countAndFlagsBits = 12592;
  v28._object = 0xE200000000000000;
  String.append(_:)(v28);
  *(v26 + 72) = &type metadata for String;
  *(v26 + 48) = v43;
  *(v26 + 56) = v45;
  *(v26 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 88) = v29;
  result = sub_10013044C(12592, 0xE200000000000000);
  if (v30 >> 60 == 15)
  {
    goto LABEL_20;
  }

  *(v26 + 120) = &type metadata for Data;
  *(v26 + 96) = result;
  *(v26 + 104) = v30;
  *(v26 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 136) = v31;
  result = sub_10013044C(12592, 0xE200000000000000);
  if (v32 >> 60 == 15)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  *(v26 + 168) = &type metadata for Data;
  *(v26 + 144) = result;
  *(v26 + 152) = v32;
  *(v26 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 184) = v33;
  *(v26 + 216) = &type metadata for Int8;
  *(v26 + 192) = v41;
  *(v26 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v26 + 232) = v34;
  v35 = String._bridgeToObjectiveC()();
  v36 = [v18 UUIDWithString:v35];

  *(v26 + 264) = v20;
  *(v26 + 240) = v36;
  v37 = sub_10008FFDC(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  v38 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v38;
  if ((result & 1) == 0)
  {
    result = sub_10012EF08(0, v38[2] + 1, 1, v38);
    v38 = result;
    *a3 = result;
  }

  v40 = v38[2];
  v39 = v38[3];
  if (v40 >= v39 >> 1)
  {
    result = sub_10012EF08((v39 > 1), v40 + 1, 1, v38);
    v38 = result;
    *a3 = result;
  }

  v38[2] = v40 + 1;
  v38[v40 + 4] = v37;
  return result;
}

uint64_t sub_1000F0C4C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v28 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v29 = v6;
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040AA50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  sub_100069E2C(v4, v5);
  sub_100288788(v6, v7);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v11;
  *(inited + 56) = v10;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v16;
  *(inited + 120) = &type metadata for Data;
  *(inited + 96) = v28;
  *(inited + 104) = v5;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v17;
  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = v29;
  *(inited + 152) = v7;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v18;
  v19 = *(a3 + 32);
  *(inited + 216) = &type metadata for Int8;
  *(inited + 192) = v19;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v20;
  sub_100069E2C(v29, v7);
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() UUIDWithString:v21];

  *(inited + 264) = sub_10009393C(0, &qword_100503EB0, CBUUID_ptr);
  *(inited + 240) = v22;
  v23 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  swift_arrayDestroy();
  v24 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v24;
  if ((result & 1) == 0)
  {
    result = sub_10012EF08(0, v24[2] + 1, 1, v24);
    v24 = result;
    *a2 = result;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    result = sub_10012EF08((v26 > 1), v27 + 1, 1, v24);
    v24 = result;
    *a2 = result;
  }

  v24[2] = v27 + 1;
  v24[v27 + 4] = v23;
  return result;
}

void sub_1000F0F70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v12 = qword_10051B7F0;
    *v11 = qword_10051B7F0;
    (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
    v13 = v12;
    v14 = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v11, v8);
    if ((v14 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v15 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;

    v52 = v15;
    v8 = v2 + v15;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v18 = os_log_type_enabled(v16, v17);
    v56 = a1;
    v50 = v5;
    v51 = v4;
    v49 = v7;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v59[0] = v20;
      *v19 = 136315138;
      v21 = UUID.uuidString.getter();
      v8 = v22;
      v7 = sub_1002FFA0C(v21, v22, v59);

      *(v19 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v16, v17, "Replacing connected peer %s", v19, 0xCu);
      sub_1000752F4(v20);
    }

    v23 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v53 = v2;
    v55 = *(v2 + v23);
    if ((v55 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v8 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v2 = v59[0];
      v4 = v59[1];
      v24 = v59[2];
      v9 = v59[3];
      v25 = v59[4];
    }

    else
    {
      v26 = -1 << *(v55 + 32);
      v4 = v55 + 56;
      v24 = ~v26;
      v27 = -v26;
      v28 = v27 < 64 ? ~(-1 << v27) : -1;
      v25 = v28 & *(v55 + 56);
      v2 = v55;
      swift_bridgeObjectRetain_n();
      v9 = 0;
    }

    v54 = v24;
    v5 = (v24 + 64) >> 6;
    if (v2 < 0)
    {
      break;
    }

LABEL_12:
    v29 = v9;
    v30 = v25;
    v11 = v9;
    if (v25)
    {
LABEL_16:
      v7 = ((v30 - 1) & v30);
      v8 = *(*(v2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v30)))));

      if (v8)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v11 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v11 >= v5)
      {
        goto LABEL_23;
      }

      v30 = *(v4 + 8 * v11);
      ++v29;
      if (v30)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  while (1)
  {
    v31 = __CocoaSet.Iterator.next()();
    if (!v31)
    {
      break;
    }

    v57 = v31;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v8 = v58;
    v11 = v9;
    v7 = v25;
    if (!v58)
    {
      break;
    }

LABEL_20:

    a1 = static UUID.== infix(_:_:)();

    if (a1)
    {
      sub_100093854(v2);

      v35 = *(v8 + 16);
      v36 = v56;
      *(v56 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) = *(v35 + OBJC_IVAR____TtC10seserviced4Peer_isConnected);
      v37 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v39 = v50;
      v38 = v51;
      v40 = v49;
      (*(v50 + 16))(v49, v35 + v37, v51);
      v41 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v42 = *(v39 + 40);

      v42(v36 + v41, v40, v38);
      swift_endAccess();
      *(v36 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber) = *(v35 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber);
      v43 = *(v35 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
      v44 = *(v35 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
      sub_10006A2BC(v43, v44);

      v45 = (v36 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
      v46 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_buffer);
      v47 = *(v36 + OBJC_IVAR____TtC10seserviced4Peer_buffer + 8);
      *v45 = v43;
      v45[1] = v44;
      sub_10006A2D0(v46, v47);
      *(v8 + 16) = v36;

      return;
    }

    v9 = v11;
    v25 = v7;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  sub_100093854(v2);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Peer is not connected", v34, 2u);
  }
}

uint64_t sub_1000F1614(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v8) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

void *sub_1000F1724(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10019F4C4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 8)
    {

      sub_100068FC4(&unk_100503FB0, &unk_10040B300);
      sub_100068FC4(&qword_100505FD0, &qword_10040B550);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_10019F4C4((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1000F1864(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_10019F524(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000754F0(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10019F524((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1000F1970(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1000754F0(i, v5);
    sub_10009393C(0, &qword_100503F98, CBPeer_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_1000F1A7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000F1BE4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    sub_1000EB524(a3, a4, a5, a6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000F1D5C(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(id, uint64_t), uint64_t a8)
{
  v39 = a7;
  v38 = type metadata accessor for DispatchPredicate();
  v15 = *(v38 - 8);
  __chkstk_darwin(v38);
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a1;
  v36 = a5;
  v37 = a8;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = v39;
  v18[9] = a8;

  v19 = a1;
  sub_100069E2C(a3, a4);
  v20 = qword_100501D90;
  v21 = a2;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_10051B7F0;
  *v17 = qword_10051B7F0;
  v23 = v38;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v38);
  v24 = v22;
  v25 = _dispatchPreconditionTest(_:)();
  v27 = *(v15 + 8);
  v26 = v15 + 8;
  v27(v17, v23);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    v19 = sub_10012E6B0(0, v19[2] + 1, 1, v19);
    *&v21[v25] = v19;
    goto LABEL_8;
  }

  v28 = v21;
  v21 = v19;
  v29 = *(v19 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
  if (v29 == 10 || v29 == 5)
  {
    sub_1000F2064(v28, a3, a4, v19, v36, a6, v39);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = sub_100114D88;
  *(v26 + 24) = v18;
  v25 = OBJC_IVAR____TtC10seserviced6DSKBLE_closuresOnCentralState;
  swift_beginAccess();
  v19 = *(v19 + v25);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v21[v25] = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v32 = v19[2];
  v31 = v19[3];
  if (v32 >= v31 >> 1)
  {
    v19 = sub_10012E6B0((v31 > 1), v32 + 1, 1, v19);
  }

  v19[2] = v32 + 1;
  v33 = &v19[3 * v32];
  *(v33 + 32) = 1;
  v33[5] = sub_1000B3FF0;
  v33[6] = v26;
  *&v21[v25] = v19;
  swift_endAccess();
}

void sub_1000F2064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(id, uint64_t))
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = [a1 createPeripheralWithAddress:isa andIdentifier:0];

  v13 = Logger.logObject.getter();
  if (v12)
  {
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1002FFA0C(a5, a6, &v21);
      _os_log_impl(&_mh_execute_header, v13, v14, "Created new peripheral for %s", v15, 0xCu);
      sub_1000752F4(v16);
    }

    v20 = v12;
    a7(v12, 0);
  }

  else
  {
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1002FFA0C(a5, a6, &v21);
      _os_log_impl(&_mh_execute_header, v13, v17, "Failed to create peripheral for %s", v18, 0xCu);
      sub_1000752F4(v19);
    }

    a7(2, 1);
  }
}

void sub_1000F22EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_144;
  }

LABEL_2:
  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v10 = *(a1 + 128);
  if (!v10 || (v11 = [v10 outputStream]) == 0)
  {
    v12 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v12, v15, "Output stream does not exist", v16, 2u);
    }

    goto LABEL_9;
  }

  v12 = v11;
  v106 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
  swift_beginAccess();
  if (![v12 hasSpaceAvailable])
  {
    goto LABEL_9;
  }

  *&v13 = 136315138;
  v101 = v13;
  *(&v14 + 1) = 2;
  v123 = xmmword_1004098F0;
  *&v14 = 134218240;
  v99 = v14;
  v98 = v12;
  v97 = v2;
  v100 = a1;
  while (2)
  {
    v19 = *(a1 + 160);
    if (!v19[2])
    {
      goto LABEL_9;
    }

    v20 = v19[4];
    v5 = v19[5];
    sub_100069E2C(v20, v5);
    sub_100069E2C(v20, v5);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    sub_10006A178(v20, v5);
    v23 = os_log_type_enabled(v21, v22);
    v110 = v20 >> 8;
    v111 = v20 >> 16;
    v112 = v20 >> 24;
    v121 = HIDWORD(v20);
    v113 = v20 >> 40;
    v114 = HIWORD(v20);
    v115 = HIBYTE(v20);
    v116 = v5 >> 8;
    v117 = v5 >> 16;
    v118 = v5 >> 24;
    v119 = HIDWORD(v5);
    v120 = v5 >> 40;
    v124 = v5;
    if (!v23)
    {

      v26 = v5 >> 62;
      if ((v5 >> 62) > 1)
      {
        goto LABEL_66;
      }

LABEL_20:
      if (!v26)
      {
        LOBYTE(v127[0]) = v20;
        BYTE1(v127[0]) = v110;
        BYTE2(v127[0]) = v111;
        BYTE3(v127[0]) = v112;
        BYTE4(v127[0]) = v121;
        BYTE5(v127[0]) = v113;
        BYTE6(v127[0]) = v114;
        HIBYTE(v127[0]) = v115;
        LOBYTE(v127[1]) = v5;
        BYTE1(v127[1]) = v116;
        BYTE2(v127[1]) = v117;
        BYTE3(v127[1]) = v118;
        BYTE4(v127[1]) = v119;
        BYTE5(v127[1]) = v120;
        v28 = [v12 write:v127 maxLength:BYTE6(v5)];
        goto LABEL_75;
      }

      if (v20 <= v20 >> 32)
      {
        v32 = __DataStorage._bytes.getter();
        if (!v32)
        {
          __DataStorage._length.getter();
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        v33 = v32;
        v34 = __DataStorage._offset.getter();
        if (!__OFSUB__(v20, v34))
        {
          v35 = v20 - v34 + v33;
          __DataStorage._length.getter();
          if (v35)
          {
            if (!__OFSUB__(v121, v20))
            {
              v36 = v121 - v20;
              goto LABEL_73;
            }

            goto LABEL_152;
          }

          goto LABEL_169;
        }

LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v126 = v25;
    *v24 = v101;
    v26 = v5 >> 62;
    v122 = v20;
    v105 = v21;
    v104 = v22;
    v103 = v24;
    v102 = v25;
    if ((v5 >> 62) > 1)
    {
      if (v26 != 2)
      {
        v31 = _swiftEmptyArrayStorage;
        goto LABEL_65;
      }

      v30 = *(v20 + 16);
      v29 = *(v20 + 24);
      v27 = v29 - v30;
      if (__OFSUB__(v29, v30))
      {
        goto LABEL_158;
      }

      if (!v27)
      {
LABEL_36:
        v31 = _swiftEmptyArrayStorage;
        goto LABEL_64;
      }
    }

    else if (v26)
    {
      v37 = v121 - v20;
      if (__OFSUB__(v121, v20))
      {
        goto LABEL_157;
      }

      v27 = v37;
      if (!v37)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v27 = BYTE6(v5);
      if (!BYTE6(v5))
      {
        goto LABEL_36;
      }
    }

    v125 = _swiftEmptyArrayStorage;
    v4 = v27 & ~(v27 >> 63);
    v7 = &v125;
    sub_10019F3C0(0, v4, 0);
    v31 = v125;
    if (v26 == 2)
    {
      v2 = *(v122 + 16);
    }

    else
    {
      if (v26 != 1)
      {
        if (v27 < 0)
        {
          goto LABEL_163;
        }

        v2 = 0;
        goto LABEL_43;
      }

      v2 = v122;
    }

    if (v27 < 0)
    {
      goto LABEL_155;
    }

LABEL_43:
    v109 = v122;
    v107 = v122 >> 32;
    v108 = BYTE6(v5);
    do
    {
      if (!v4)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        swift_once();
        goto LABEL_2;
      }

      if (v26 == 2)
      {
        if (v2 < *(v122 + 16))
        {
          goto LABEL_138;
        }

        if (v2 >= *(v122 + 24))
        {
          goto LABEL_141;
        }

        v42 = __DataStorage._bytes.getter();
        if (!v42)
        {
          goto LABEL_167;
        }

        v39 = v42;
        v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
        v43 = __DataStorage._offset.getter();
        v41 = v2 - v43;
        if (__OFSUB__(v2, v43))
        {
          goto LABEL_143;
        }

        goto LABEL_57;
      }

      if (v26 == 1)
      {
        if (v2 < v109 || v2 >= v107)
        {
          goto LABEL_140;
        }

        v38 = __DataStorage._bytes.getter();
        if (!v38)
        {
          goto LABEL_166;
        }

        v39 = v38;
        v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
        v40 = __DataStorage._offset.getter();
        v41 = v2 - v40;
        if (__OFSUB__(v2, v40))
        {
          goto LABEL_142;
        }

LABEL_57:
        v7 = *(v39 + v41);
        goto LABEL_60;
      }

      if (v2 >= v108)
      {
        goto LABEL_139;
      }

      LOBYTE(v127[0]) = v122;
      BYTE1(v127[0]) = v110;
      BYTE2(v127[0]) = v111;
      BYTE3(v127[0]) = v112;
      BYTE4(v127[0]) = v121;
      BYTE5(v127[0]) = v113;
      BYTE6(v127[0]) = v114;
      HIBYTE(v127[0]) = v115;
      LOBYTE(v127[1]) = v5;
      BYTE1(v127[1]) = v116;
      BYTE2(v127[1]) = v117;
      BYTE3(v127[1]) = v118;
      BYTE4(v127[1]) = v119;
      BYTE5(v127[1]) = v120;
      v7 = *(v127 + v2);
LABEL_60:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v44 = swift_allocObject();
      *(v44 + 16) = v123;
      *(v44 + 56) = &type metadata for UInt8;
      *(v44 + 64) = &protocol witness table for UInt8;
      *(v44 + 32) = v7;
      a1 = String.init(format:_:)();
      v46 = v45;
      v125 = v31;
      v48 = v31[2];
      v47 = v31[3];
      if (v48 >= v47 >> 1)
      {
        v7 = &v125;
        sub_10019F3C0((v47 > 1), v48 + 1, 1);
        v31 = v125;
      }

      v31[2] = v48 + 1;
      v49 = &v31[2 * v48];
      v49[4] = a1;
      v49[5] = v46;
      ++v2;
      --v4;
      --v27;
      v5 = v124;
    }

    while (v27);
    v12 = v98;
LABEL_64:
    a1 = v100;
    v20 = v122;
LABEL_65:
    v127[0] = v31;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v50 = BidirectionalCollection<>.joined(separator:)();
    v52 = v51;

    v53 = sub_1002FFA0C(v50, v52, &v126);

    v54 = v103;
    *(v103 + 1) = v53;
    v55 = v105;
    _os_log_impl(&_mh_execute_header, v105, v104, "<<< Sending %s", v54, 0xCu);
    sub_1000752F4(v102);

    if (v26 <= 1)
    {
      goto LABEL_20;
    }

LABEL_66:
    if (v26 != 2)
    {
      memset(v127, 0, 14);
      v28 = [v12 write:v127 maxLength:0];
LABEL_75:
      v61 = v28;
      if (v28 == -1)
      {
        goto LABEL_131;
      }

      if (v26 > 1)
      {
        if (v26 != 2)
        {
          if (!v28)
          {
            goto LABEL_93;
          }

          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_133;
          }

LABEL_102:
          sub_100069E2C(v20, v5);
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = v99;
            *(v73 + 4) = v61;
            *(v73 + 12) = 2048;
            if (v26 > 1)
            {
              if (v26 == 2)
              {
                v76 = *(v20 + 16);
                v75 = *(v20 + 24);
                v64 = __OFSUB__(v75, v76);
                v74 = v75 - v76;
                if (v64)
                {
                  goto LABEL_164;
                }
              }

              else
              {
                v74 = 0;
              }
            }

            else if (v26)
            {
              LODWORD(v74) = v121 - v20;
              if (__OFSUB__(v121, v20))
              {
                goto LABEL_165;
              }

              v74 = v74;
            }

            else
            {
              v74 = BYTE6(v5);
            }

            *(v73 + 14) = v74;
            v77 = v73;
            v78 = v124;
            sub_10006A178(v20, v124);
            _os_log_impl(&_mh_execute_header, v71, v72, "Sent partial data %ld/%ld", v77, 0x16u);
            v5 = v78;
          }

          else
          {
            sub_10006A178(v20, v5);
          }

          if (v26 > 1)
          {
            if (v26 == 2)
            {
              v81 = *(v20 + 16);
              v80 = *(v20 + 24);
              v79 = v80 - v81;
              if (__OFSUB__(v80, v81))
              {
                goto LABEL_160;
              }
            }

            else
            {
              v79 = 0;
            }
          }

          else if (v26)
          {
            if (__OFSUB__(v121, v20))
            {
              goto LABEL_159;
            }

            v79 = v121 - v20;
          }

          else
          {
            v79 = BYTE6(v5);
          }

          if (v79 < v61)
          {
            goto LABEL_146;
          }

          v82 = Data.subdata(in:)();
          v84 = v83;
          swift_beginAccess();
          v85 = *(a1 + 160);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a1 + 160) = v85;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (!*(v85 + 2))
            {
              goto LABEL_130;
            }
          }

          else
          {
            v85 = sub_1001A1598(v85);
            *(a1 + 160) = v85;
            if (!*(v85 + 2))
            {
LABEL_130:
              __break(1u);
LABEL_131:
              v90 = Logger.logObject.getter();
              v91 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v90, v91))
              {
                v92 = swift_slowAlloc();
                *v92 = 0;
                _os_log_impl(&_mh_execute_header, v90, v91, "Failed to write to stream", v92, 2u);
              }

              goto LABEL_135;
            }
          }

          v87 = *(v85 + 4);
          v88 = *(v85 + 5);
          *(v85 + 4) = v82;
          *(v85 + 5) = v84;
          *(a1 + 160) = v85;
          swift_endAccess();
          v89 = v87;
          v5 = v124;
          sub_10006A178(v89, v88);
          goto LABEL_12;
        }

        v63 = *(v20 + 16);
        v62 = *(v20 + 24);
        v64 = __OFSUB__(v62, v63);
        v65 = (v62 - v63);
        if (v64)
        {
          goto LABEL_154;
        }

        if (v28 == v65)
        {
          goto LABEL_93;
        }

LABEL_86:
        if (v26 == 2)
        {
          v70 = *(v20 + 16);
          v69 = *(v20 + 24);
          v64 = __OFSUB__(v69, v70);
          v66 = v69 - v70;
          if (v64)
          {
            goto LABEL_161;
          }
        }

        else if (v26 == 1)
        {
          LODWORD(v66) = v121 - v20;
          if (__OFSUB__(v121, v20))
          {
            goto LABEL_162;
          }

          v66 = v66;
        }

        else
        {
          v66 = BYTE6(v5);
        }

        if (v28 < v66)
        {
          goto LABEL_102;
        }

LABEL_133:
        v90 = Logger.logObject.getter();
        v93 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v90, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 134217984;
          *(v94 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v90, v93, "Sent a message and got %ld bytes written", v94, 0xCu);

          v95 = v20;
          v96 = v5;
          goto LABEL_136;
        }

LABEL_135:
        v95 = v20;
        v96 = v5;
LABEL_136:
        sub_10006A178(v95, v96);

LABEL_9:
        return;
      }

      if (v26)
      {
        if (__OFSUB__(v121, v20))
        {
          goto LABEL_153;
        }

        if (v28 != v121 - v20)
        {
          goto LABEL_86;
        }
      }

      else if (v28 != BYTE6(v5))
      {
        goto LABEL_86;
      }

LABEL_93:
      swift_beginAccess();
      v17 = *(a1 + 160);
      v67 = *(v17 + 2);
      if (!v67)
      {
        goto LABEL_147;
      }

      v68 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 160) = v17;
      if (!v68 || (v67 - 1) > *(v17 + 3) >> 1)
      {
        v17 = sub_10012E5A4(v68, v67, 1, v17);
        *(a1 + 160) = v17;
      }

      sub_10011116C((v17 + 32));
      v18 = *(v17 + 2);
      memmove(v17 + 32, v17 + 48, 16 * v18 - 16);
      *(v17 + 2) = v18 - 1;
      *(a1 + 160) = v17;
      swift_endAccess();
LABEL_12:
      sub_10006A178(v20, v5);
      if (([v12 hasSpaceAvailable]& 1) == 0)
      {
        goto LABEL_9;
      }

      continue;
    }

    break;
  }

  v56 = *(v20 + 16);
  v57 = *(v20 + 24);
  v35 = __DataStorage._bytes.getter();
  if (!v35)
  {
    goto LABEL_70;
  }

  v58 = __DataStorage._offset.getter();
  if (__OFSUB__(v56, v58))
  {
    goto LABEL_156;
  }

  v35 += v56 - v58;
LABEL_70:
  if (__OFSUB__(v57, v56))
  {
    goto LABEL_149;
  }

  v5 = v124;
  __DataStorage._length.getter();
  if (v35)
  {
    v60 = *(v20 + 16);
    v59 = *(v20 + 24);
    v36 = v59 - v60;
    if (!__OFSUB__(v59, v60))
    {
LABEL_73:
      v28 = [v12 write:v35 maxLength:v36];
      goto LABEL_75;
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

LABEL_170:
  __break(1u);
}

uint64_t sub_1000F30E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != 8)
  {
    if (!a3)
    {
      goto LABEL_14;
    }

    v32[1] = a3;
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    sub_10009393C(0, &qword_10050AA20, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_14;
    }

    v13 = [v32[0] domain];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {

        goto LABEL_14;
      }
    }

    v20 = [v32[0] code];

    if (v20 == 14)
    {
      v21 = 6;
LABEL_15:
      swift_beginAccess();
      v22 = *(a1 + 64);
      v23 = *(a1 + 72);
      v24 = sub_1000752B0((a1 + 40), v22);
      v25 = *(v22 - 8);
      v26 = __chkstk_darwin(v24);
      v28 = v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28, v26);
      v29 = (*(v23 + 88))(v22, v23);
      (*(v25 + 8))(v28, v22);
      sub_1000E1E2C();
      swift_allocError();
      *v30 = v21;
      v29();
    }

LABEL_14:
    v21 = 3;
    goto LABEL_15;
  }

  swift_beginAccess();
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = sub_1000752B0((a1 + 40), v5);
  v8 = *(v5 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  v12 = (*(v6 + 104))(v5, v6);
  (*(v8 + 8))(v11, v5);
  v12(a2);
}

void sub_1000F3488(int64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v11 = v10;
    v12 = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v9, v6);
    if ((v12 & 1) == 0)
    {
      __break(1u);
      return;
    }

    if (!*(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Not running", v19, 2u);
      }

      return;
    }

    v42 = a1;
    v43 = a2;
    v13 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    v46 = v3;
    v6 = *(v3 + v13);
    if ((v6 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      v3 = __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v14, type metadata accessor for DSKBLE.BLEConnectionRequest, &unk_10040B110);
      Set.Iterator.init(_cocoa:)();
      v15 = v51;
      a2 = v52;
      a1 = v53;
      v16 = v54;
      v9 = v55;
    }

    else
    {
      v20 = -1 << *(v6 + 32);
      a2 = v6 + 56;
      a1 = ~v20;
      v21 = -v20;
      v22 = v21 < 64 ? ~(-1 << v21) : -1;
      v9 = v22 & *(v6 + 56);
      swift_bridgeObjectRetain_n();
      v16 = 0;
      v15 = v6;
    }

    v7 = (a1 + 64) >> 6;
    if (v15 < 0)
    {
      break;
    }

LABEL_14:
    v23 = v16;
    v24 = v9;
    v25 = v16;
    if (v9)
    {
LABEL_18:
      v26 = (v24 - 1) & v24;
      v3 = *(*(v15 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

      if (v3)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v7)
      {
        goto LABEL_25;
      }

      v24 = *(a2 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
  }

  while (1)
  {
    v27 = __CocoaSet.Iterator.next()();
    if (!v27)
    {
      break;
    }

    v50 = v27;
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    v3 = v56;
    v25 = v16;
    v26 = v9;
    if (!v56)
    {
      break;
    }

LABEL_22:
    if (static UUID.== infix(_:_:)())
    {
      sub_100093854(v15);

      v39 = v43;
      *(v3 + 64) = v42;
      *(v3 + 72) = v39;
      *(v3 + 80) = 0;

      goto LABEL_26;
    }

    v16 = v25;
    v9 = v26;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  sub_100093854(v15);

LABEL_26:
  v7 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
  v28 = v46;
  swift_beginAccess();
  v45 = *(v28 + v7);
  if ((v45 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for DSKBLE.BLEPeripheral();
    sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
    Set.Iterator.init(_cocoa:)();
    v29 = v56;
    a2 = v57;
    v3 = v58;
    v30 = v59;
    v6 = v60;
  }

  else
  {
    v31 = -1 << *(v45 + 32);
    a2 = v45 + 56;
    v3 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v6 = v33 & *(v45 + 56);
    v29 = v45;
    swift_bridgeObjectRetain_n();
    v30 = 0;
  }

  v44 = v3;
  a1 = (v3 + 64) >> 6;
  if ((v29 & 0x8000000000000000) == 0)
  {
LABEL_33:
    v34 = v30;
    v35 = v6;
    v9 = v30;
    if (v6)
    {
LABEL_37:
      v36 = (v35 - 1) & v35;
      v37 = *(*(v29 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v35)))));

      if (v37)
      {
        goto LABEL_41;
      }

      goto LABEL_44;
    }

    while (1)
    {
      v9 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_50;
      }

      if (v9 >= a1)
      {
        goto LABEL_44;
      }

      v35 = *(a2 + 8 * v9);
      ++v34;
      if (v35)
      {
        goto LABEL_37;
      }
    }
  }

  while (1)
  {
    v38 = __CocoaSet.Iterator.next()();
    if (!v38)
    {
      break;
    }

    v48 = v38;
    type metadata accessor for DSKBLE.BLEPeripheral();
    swift_dynamicCast();
    v37 = v49;
    v9 = v30;
    v36 = v6;
    if (!v49)
    {
      break;
    }

LABEL_41:
    v3 = *(v37 + 16);

    v7 = static UUID.== infix(_:_:)();

    if (v7)
    {
      sub_100093854(v29);

      v40 = v42;
      v41 = v43;
      *(v37 + 176) = v42;
      *(v37 + 184) = v41;
      *(v37 + 192) = 0;
      if (*(v37 + 168) != 2)
      {
        sub_1000F3B5C(v40, v41, 0, 0x100u, v47);
      }

      return;
    }

    v30 = v9;
    v6 = v36;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_44:
  sub_100093854(v29);
}

void sub_1000F3B5C(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4, uint64_t a5)
{
  v138 = a3;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v13 = qword_10051B7F0;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  v16 = *&v5[OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager];
  if (v16)
  {
    v144 = a5;
    v136 = a2;
    v137 = a1;
    v134 = a4;
    v135 = a4;
    v17 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    swift_beginAccess();
    v141 = v16;
    v142 = v5;
    v140 = *&v5[v17];
    if ((v140 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      v18 = v16;
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEPeripheral();
      sub_1001081DC(&qword_100503E48, 255, type metadata accessor for DSKBLE.BLEPeripheral, &unk_10040B200);
      Set.Iterator.init(_cocoa:)();
      v19 = v149;
      v20 = v150;
      v21 = v151;
      v22 = v152;
      v23 = v153;
    }

    else
    {
      v27 = -1 << *(v140 + 32);
      v20 = v140 + 56;
      v21 = ~v27;
      v28 = -v27;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v23 = v29 & *(v140 + 56);
      v19 = v140;
      swift_bridgeObjectRetain_n();
      v30 = v16;
      v22 = 0;
    }

    v139 = v21;
    v31 = (v21 + 64) >> 6;
    if (v19 < 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    v32 = v22;
    v33 = v23;
    v34 = v22;
    if (!v23)
    {
      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v34 >= v31)
        {
          goto LABEL_26;
        }

        v33 = *(v20 + 8 * v34);
        ++v32;
        if (v33)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_19:
    v35 = (v33 - 1) & v33;
    v36 = *(*(v19 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));

    if (!v36)
    {
LABEL_26:
      sub_100093854(v19);

      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *&v147 = v42;
        *v41 = 136315138;
        v43 = UUID.uuidString.getter();
        v45 = sub_1002FFA0C(v43, v44, &v147);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v39, v40, "Peripheral is not connected %s", v41, 0xCu);
        sub_1000752F4(v42);
      }

      return;
    }

    while (1)
    {
      v143 = v23;

      v38 = static UUID.== infix(_:_:)();

      if (v38)
      {
        break;
      }

      v22 = v34;
      v23 = v35;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_21:
      v37 = __CocoaSet.Iterator.next()();
      if (v37)
      {
        *&v146[0] = v37;
        type metadata accessor for DSKBLE.BLEPeripheral();
        swift_dynamicCast();
        v36 = v147;
        v34 = v22;
        v35 = v23;
        if (v147)
        {
          continue;
        }
      }

      goto LABEL_26;
    }

    v46 = v138;
    v47 = v138 & 1;
    sub_100093854(v19);

    v48 = v136;
    v49 = v137;
    *(v36 + 176) = v137;
    *(v36 + 184) = v48;
    *(v36 + 192) = v47;
    v20 = v36;
    if (v46)
    {

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v147 = v53;
        *v52 = 136315138;
        v54 = UUID.uuidString.getter();
        v56 = sub_1002FFA0C(v54, v55, &v147);

        *(v52 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v50, v51, "Disabling RSSI zone detection for %s", v52, 0xCu);
        sub_1000752F4(v53);
      }

      v57 = *(v36 + 24);
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v147 + 1) = v59;
      v60 = v57;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 0;
      sub_100090BC4(inited);
      swift_setDeallocating();
      sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v62 = v141;
      [v141 setRSSIStatisticsDetection:v60 options:isa];

      *(v20 + 168) = 2;

      return;
    }

    swift_beginAccess();
    v63 = *(v36 + 64);
    v64 = *(v36 + 72);
    v65 = sub_1000752B0((v36 + 40), v63);
    v66 = *(v63 - 8);
    v67 = __chkstk_darwin(v65);
    v69 = &v133 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v69, v67);
    LOBYTE(v64) = (*(v64 + 72))(v63, v64);
    (*(v66 + 8))(v69, v63);
    if (v64)
    {
      v70 = v48;
      v71 = v36;
      if (*(v36 + 168) == 2)
      {
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v72, v73, "Starting RSSI zone detection", v74, 2u);
        }

        *(v36 + 168) = 1;
      }

      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 134218240;
        *(v77 + 4) = v49;
        *(v77 + 12) = 2048;
        *(v77 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v75, v76, "Enabling AOP based zone detection thresholds closer %ld further %ld", v77, 0x16u);
      }

      sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_10040A530;
      *(v78 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v78 + 40) = v79;
      *(v78 + 72) = &type metadata for Bool;
      *(v78 + 48) = 1;
      *(v78 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v78 + 88) = v80;
      *(v78 + 120) = &type metadata for Int;
      *(v78 + 96) = 3;
      *(v78 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v78 + 136) = v81;
      *(v78 + 168) = &type metadata for Int;
      *(v78 + 144) = 130;
      *(v78 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v78 + 184) = v82;
      *(v78 + 216) = &type metadata for Int;
      *(v78 + 192) = v49;
      *(v78 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v78 + 232) = v83;
      *(v78 + 264) = &type metadata for Int;
      *(v78 + 240) = v70;
      *(v78 + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v78 + 280) = v84;
      *(v78 + 312) = &type metadata for Int;
      *(v78 + 288) = 1;
      v85 = sub_10008FFDC(v78);
      swift_setDeallocating();
      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if ((v135 & 0x100) == 0)
      {
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.info.getter();
        v88 = os_log_type_enabled(v86, v87);
        v89 = v134;
        if (v88)
        {
          v90 = swift_slowAlloc();
          *v90 = 16777472;
          v90[4] = v89;
          _os_log_impl(&_mh_execute_header, v86, v87, "Using peripheral TX power value %hhd", v90, 5u);
        }

        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;
        v148 = &type metadata for Int8;
        LOBYTE(v147) = v89;
        sub_100075D50(&v147, v146);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = v85;
        sub_100315178(v146, v91, v93, isUniquelyReferenced_nonNull_native);

        v85 = v145;
      }

      v95 = *(v71 + 24);
      sub_1001950D4(v85);

      v96.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v97 = v141;
      [v141 setRSSIStatisticsDetection:v95 options:v96.super.isa];
      goto LABEL_63;
    }

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 134218240;
      *(v100 + 4) = v49;
      *(v100 + 12) = 2048;
      *(v100 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v98, v99, "Requested RSSI thresholds closer %ld further %ld", v100, 0x16u);
    }

    v23 = v48;

    if (*(v36 + 168) == 2)
    {
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&_mh_execute_header, v101, v102, "Starting RSSI zone detection", v103, 2u);
      }

      *(v36 + 168) = 1;
      goto LABEL_53;
    }

    v104 = *(v36 + 24);
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1004098F0;
    *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v147 + 1) = v106;
    v107 = v104;
    AnyHashable.init<A>(_:)();
    *(v105 + 96) = &type metadata for Bool;
    *(v105 + 72) = 0;
    sub_100090BC4(v105);
    swift_setDeallocating();
    sub_100075768(v105 + 32, &qword_100502C48, &qword_10040B2D0);
    swift_deallocClassInstance();
    v108 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v141 setRSSIStatisticsDetection:v107 options:v108];

    v109 = *(v36 + 168);
    if (v109 != 2)
    {
      if ((v109 & 1) == 0)
      {
LABEL_58:
        v122 = v142;
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 134218240;
          *(v125 + 4) = 10;

          *(v125 + 12) = 2048;
          *(v125 + 14) = v23;
          _os_log_impl(&_mh_execute_header, v123, v124, "Current zone closer setting thresholds closer %ld further %ld", v125, 0x16u);
        }

        else
        {

          v123 = v122;
        }

        v126 = *(v20 + 24);
        sub_100068FC4(&unk_100503F50, &unk_10040D950);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_10040AA50;
        *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v147 + 1) = v128;
        v95 = v126;
        AnyHashable.init<A>(_:)();
        *(v127 + 96) = &type metadata for Bool;
        *(v127 + 72) = 1;
        *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v147 + 1) = v129;
        AnyHashable.init<A>(_:)();
        *(v127 + 168) = &type metadata for Int;
        *(v127 + 144) = 2;
        *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v147 + 1) = v130;
        AnyHashable.init<A>(_:)();
        *(v127 + 240) = &type metadata for Int;
        *(v127 + 216) = 10;
        *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v147 + 1) = v131;
        AnyHashable.init<A>(_:)();
        *(v127 + 312) = &type metadata for Int;
        *(v127 + 288) = v23;
        *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v147 + 1) = v132;
        AnyHashable.init<A>(_:)();
        *(v127 + 384) = &type metadata for Int;
        *(v127 + 360) = 1;
        sub_100090BC4(v127);
        swift_setDeallocating();
        sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_62;
      }

LABEL_53:
      v110 = v142;
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 134218240;
        v114 = v137;
        *(v113 + 4) = v137;
        *(v113 + 12) = 2048;
        *(v113 + 14) = -120;

        _os_log_impl(&_mh_execute_header, v111, v112, "Current zone further setting thresholds closer %ld further %ld", v113, 0x16u);
      }

      else
      {

        v111 = v110;
        v114 = v137;
      }

      v115 = *(v36 + 24);
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      v116 = swift_initStackObject();
      *(v116 + 16) = xmmword_10040AA50;
      *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v147 + 1) = v117;
      v95 = v115;
      AnyHashable.init<A>(_:)();
      *(v116 + 96) = &type metadata for Bool;
      *(v116 + 72) = 1;
      *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v147 + 1) = v118;
      AnyHashable.init<A>(_:)();
      *(v116 + 168) = &type metadata for Int;
      *(v116 + 144) = 2;
      *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v147 + 1) = v119;
      AnyHashable.init<A>(_:)();
      *(v116 + 240) = &type metadata for Int;
      *(v116 + 216) = v114;
      *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v147 + 1) = v120;
      AnyHashable.init<A>(_:)();
      *(v116 + 312) = &type metadata for Int;
      *(v116 + 288) = -120;
      *&v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v147 + 1) = v121;
      AnyHashable.init<A>(_:)();
      *(v116 + 384) = &type metadata for Int;
      *(v116 + 360) = 1;
      sub_100090BC4(v116);
      swift_setDeallocating();
      sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
      swift_arrayDestroy();
LABEL_62:
      v96.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v97 = v141;
      [v141 setRSSIStatisticsDetection:v95 options:v96.super.isa];
LABEL_63:

      return;
    }

LABEL_65:
    __break(1u);
    return;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Not running", v26, 2u);
  }
}

void sub_1000F4EB4(NSObject *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v93 = a2;
  v94 = a3;
  v95 = a1;
  v7 = type metadata accessor for UUID();
  v97 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v88 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_43:
    swift_once();
  }

  v17 = qword_10051B7F0;
  *v16 = qword_10051B7F0;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v19 = v98;
  if (*(v98 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
  {
    v20 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectedPeripherals;
    v21 = swift_beginAccess();
    v22 = *(v19 + v20);
    __chkstk_darwin(v21);
    *(&v88 - 2) = a4;

    v23 = v5;
    v24 = sub_1000E3ABC(sub_100113B34, (&v88 - 4), v22);

    if (v24)
    {
      if (*(v24 + 32) - 3 <= 1)
      {
        v90 = v23;
        *(v24 + 32) = 4;
        swift_beginAccess();
        v25 = v24[8];
        v26 = v24[9];
        v27 = sub_1000752B0(v24 + 5, v25);
        v28 = *(v25 - 8);
        v29 = __chkstk_darwin(v27);
        v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v28 + 16))(v31, v29);
        v16 = (*(v26 + 8))(v25, v26);
        v12 = v32;
        (*(v28 + 8))(v31, v25);
        v33 = String._bridgeToObjectiveC()();

        a4 = objc_opt_self();
        v97 = [a4 UUIDWithString:v33];

        v92 = v24;
        v34 = [v24[3] services];
        if (v34)
        {
          v35 = v34;
          sub_10009393C(0, &unk_100503EE0, CBService_ptr);
          v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v91 = a4;
          if (v5 >> 62)
          {
            goto LABEL_47;
          }

          v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            while (1)
            {
              v7 = 0;
              v96 = (v5 & 0xC000000000000001);
              v14 = v5 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v96)
                {
                  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_42;
                  }

                  v36 = *(v5 + 8 * v7 + 32);
                }

                v37 = v36;
                v9 = (v7 + 1);
                if (__OFADD__(v7, 1))
                {
                  __break(1u);
LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                v12 = sub_10009393C(0, &qword_100502D20, NSObject_ptr);
                v16 = [v37 UUID];
                a4 = static NSObject.== infix(_:_:)();

                if (a4)
                {
                  break;
                }

                ++v7;
                if (v9 == v13)
                {
                  goto LABEL_48;
                }
              }

              isa = UUID._bridgeToObjectiveC()().super.isa;
              v96 = [v91 UUIDWithNSUUID:isa];

              v89 = v37;
              v67 = [v37 characteristics];
              a4 = v98;
              if (!v67)
              {
                break;
              }

              v68 = v67;
              sub_10009393C(0, &qword_100503668, CBCharacteristic_ptr);
              v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v5 >> 62)
              {
                v69 = _CocoaArrayWrapper.endIndex.getter();
                if (!v69)
                {
LABEL_54:

                  break;
                }
              }

              else
              {
                v69 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v69)
                {
                  goto LABEL_54;
                }
              }

              v70 = 0;
              v91 = (v5 & 0xC000000000000001);
              while (1)
              {
                if (v91)
                {
                  v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v70 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_46;
                  }

                  v71 = *(v5 + 8 * v70 + 32);
                }

                v72 = v71;
                v9 = (v70 + 1);
                if (__OFADD__(v70, 1))
                {
                  break;
                }

                v16 = [v71 UUID];
                v73 = static NSObject.== infix(_:_:)();

                if (v73)
                {

                  v74 = v92;
                  swift_beginAccess();
                  v76 = v93;
                  v75 = v94;
                  sub_100069E2C(v93, v94);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v101 = v74[12];
                  v74[12] = 0x8000000000000000;
                  sub_100315A7C(v76, v75, v95, isUniquelyReferenced_nonNull_native);
                  v74[12] = v101;
                  swift_endAccess();
                  v78 = v74[3];
                  v38 = Data._bridgeToObjectiveC()().super.isa;
                  [v78 writeValue:v38 forCharacteristic:v72 type:0];

                  goto LABEL_20;
                }

                ++v70;
                a4 = v98;
                if (v9 == v69)
                {
                  goto LABEL_54;
                }
              }

LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              v13 = _CocoaArrayWrapper.endIndex.getter();
              if (!v13)
              {
                goto LABEL_48;
              }
            }

            v84 = Logger.logObject.getter();
            v85 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              *v86 = 0;
              _os_log_impl(&_mh_execute_header, v84, v85, "Peripheral's characteristic is null", v86, 2u);
            }

            sub_1000E1E2C();
            swift_allocError();
            *v87 = 2;
            swift_willThrow();

            v83 = v96;
            goto LABEL_52;
          }

LABEL_48:
        }

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "Peripheral's service is null", v81, 2u);
        }

        sub_1000E1E2C();
        swift_allocError();
        *v82 = 2;
        swift_willThrow();

        v83 = v97;
LABEL_52:

        return;
      }

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v100[0] = v59;
        *v58 = 136315138;
        v99 = *(v24 + 32);
        v60 = String.init<A>(describing:)();
        v62 = sub_1002FFA0C(v60, v61, v100);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v56, v57, "Writing a characteristic in a bad state %s", v58, 0xCu);
        sub_1000752F4(v59);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v63 = 2;
      swift_willThrow();
    }

    else
    {
      v41 = v97;
      v42 = v97[2];
      v42(v12, v95, v7);
      v42(v9, a4, v7);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v100[0] = v98;
        *v45 = 136315394;
        sub_1001081DC(&qword_100504C70, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        LODWORD(v96) = v44;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v95 = v43;
        v49 = v41[1];
        v49(v12, v7);
        v50 = sub_1002FFA0C(v46, v48, v100);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        v49(v9, v7);
        v54 = sub_1002FFA0C(v51, v53, v100);

        *(v45 + 14) = v54;
        v55 = v95;
        _os_log_impl(&_mh_execute_header, v95, v96, "Writing characteristic %s for disconnected/unknown peripheral %s", v45, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v64 = v41[1];
        v64(v9, v7);
        v64(v12, v7);
      }

      sub_1000E1E2C();
      swift_allocError();
      *v65 = 4;
      swift_willThrow();
    }
  }

  else
  {
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Not running", v40, 2u);
    }

LABEL_20:
  }
}

uint64_t sub_1000F5BA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(*a1 + 24) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

void sub_1000F5CB8(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v9 = qword_10051B7F0;
    *v8 = qword_10051B7F0;
    (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
    v10 = v9;
    v11 = _dispatchPreconditionTest(_:)();
    (*(v6 + 8))(v8, v5);
    if ((v11 & 1) == 0)
    {
      __break(1u);
LABEL_47:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_48:

        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *&v71 = v62;
          *v61 = 136315138;
          v63 = UUID.uuidString.getter();
          v65 = sub_1002FFA0C(v63, v64, &v71);

          *(v61 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v59, v60, "Peripheral not found for %s", v61, 0xCu);
          sub_1000752F4(v62);
        }

        goto LABEL_43;
      }

LABEL_37:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_53;
        }

        v48 = *(v5 + 32);
      }

      v49 = v48;

      v50 = *(v11 + 56);
      *(v11 + 56) = v49;

LABEL_41:
      v51 = *(v11 + 48);
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;
      v72 = &type metadata for Bool;
      LOBYTE(v71) = 1;
      sub_100075D50(&v71, v70);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v51;
      sub_100315178(v70, v52, v54, isUniquelyReferenced_nonNull_native);

      v56 = *(v11 + 56);
      if (v56)
      {
        v57 = v56;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v2 connectPeripheral:v57 options:isa];

LABEL_43:
        return;
      }

LABEL_53:
      __break(1u);
      return;
    }

    v12 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager);
    if (!v12 || (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_isConnected) & 1) != 0)
    {
      return;
    }

    v13 = *(v3 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralState);
    if (v13 != 10 && v13 != 5)
    {
      return;
    }

    v15 = OBJC_IVAR____TtC10seserviced6DSKBLE_logger;
    v16 = v12;

    v66[0] = v15;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    v19 = os_log_type_enabled(v17, v18);
    v67 = v16;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v73[0] = v21;
      *v20 = 136315138;
      v22 = UUID.uuidString.getter();
      v24 = sub_1002FFA0C(v22, v23, v73);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Resetting disconnection history for %s", v20, 0xCu);
      sub_1000752F4(v21);
    }

    v68 = a1;
    v25 = OBJC_IVAR____TtC10seserviced6DSKBLE_connectionRequests;
    swift_beginAccess();
    v6 = *(v3 + v25);
    if ((v6 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for DSKBLE.BLEConnectionRequest();
      sub_1001081DC(&unk_100503E70, v26, type metadata accessor for DSKBLE.BLEConnectionRequest, &unk_10040B110);
      Set.Iterator.init(_cocoa:)();
      v28 = v73[0];
      v27 = v73[1];
      v29 = v73[2];
      v5 = v73[3];
      v30 = v73[4];
    }

    else
    {
      v31 = -1 << *(v6 + 32);
      v27 = v6 + 56;
      v29 = ~v31;
      v32 = -v31;
      v33 = v32 < 64 ? ~(-1 << v32) : -1;
      v30 = v33 & *(v6 + 56);
      swift_bridgeObjectRetain_n();
      v5 = 0;
      v28 = v6;
    }

    v66[1] = v29;
    v2 = ((v29 + 64) >> 6);
    if (v28 < 0)
    {
      break;
    }

LABEL_19:
    v34 = v5;
    v35 = v30;
    v8 = v5;
    if (v30)
    {
LABEL_23:
      a1 = (v35 - 1) & v35;
      v11 = *(*(v28 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v35)))));

      if (v11)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    while (1)
    {
      v8 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v8 >= v2)
      {
        goto LABEL_30;
      }

      v35 = *(v27 + 8 * v8);
      ++v34;
      if (v35)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  while (1)
  {
    v36 = __CocoaSet.Iterator.next()();
    if (!v36)
    {
      break;
    }

    *&v70[0] = v36;
    type metadata accessor for DSKBLE.BLEConnectionRequest();
    swift_dynamicCast();
    v11 = v71;
    v8 = v5;
    a1 = v30;
    if (!v71)
    {
      break;
    }

LABEL_27:
    if (static UUID.== infix(_:_:)())
    {
      sub_100093854(v28);

      v2 = v67;
      if (*(v11 + 56))
      {
        goto LABEL_41;
      }

      sub_100068FC4(&qword_100503F10, &qword_10040A008);
      v42 = type metadata accessor for UUID();
      v43 = *(v42 - 8);
      v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1004098F0;
      (*(v43 + 16))(v45 + v44, v68 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v42);
      v46 = Array._bridgeToObjectiveC()().super.isa;

      v47 = [v2 retrievePeripheralsWithIdentifiers:v46];

      sub_10009393C(0, &qword_100503F18, CBPeripheral_ptr);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v5 >> 62)
      {
        goto LABEL_47;
      }

      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      goto LABEL_37;
    }

    v5 = v8;
    v30 = a1;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_30:
  sub_100093854(v28);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v67;
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Connection request not found", v41, 2u);
  }
}

void sub_1000F6564(Swift::UInt a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v46 = a2;
  v47 = a1;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v10 = qword_10051B7F0;
    *v9 = qword_10051B7F0;
    v11 = enum case for DispatchPredicate.onQueue(_:);
    v12 = *(v7 + 104);
    v12(v9, enum case for DispatchPredicate.onQueue(_:), v6);
    v45 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    v13 = *(v7 + 8);
    v13(v9, v6);
    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    if (!*(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_centralManager))
    {
      break;
    }

    v44 = v5;
    v5 = OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPairedPeripherals;
    swift_beginAccess();
    v14 = *(v4 + v5);
    if (*(v14 + 16) && (v15 = sub_10008C9C8(v47), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 16 * v15);
      swift_bridgeObjectRetain_n();
      swift_endAccess();
      v43 = v17;

      swift_beginAccess();
      v18 = *(v4 + v5);
      if (*(v18 + 16) && (v19 = sub_10008C9C8(v47), (v20 & 1) != 0))
      {
        v41 = *(*(v18 + 56) + 16 * v19 + 8);

        swift_endAccess();

        sub_1002254AC(v43, v46);
        v42 = v21;

        if ((v42 & 1) != 0 && v41 == v44)
        {
          return;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
    }

    swift_beginAccess();
    v43 = v13;
    v25 = v12;
    v26 = v46;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v4 + v5);
    *(v4 + v5) = 0x8000000000000000;
    sub_100315C58(v26, v44, v47, isUniquelyReferenced_nonNull_native);
    *(v4 + v5) = v48;
    swift_endAccess();
    v28 = v45;
    *v9 = v45;
    v25(v9, v11, v6);
    v29 = v28;
    LOBYTE(v28) = _dispatchPreconditionTest(_:)();
    v43(v9, v6);
    if ((v28 & 1) == 0)
    {
      goto LABEL_35;
    }

    v49 = &_swiftEmptySetSingleton;
    v6 = *(v4 + v5);
    v9 = (v6 + 64);
    v30 = 1 << *(v6 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v6 + 64);
    v33 = (v30 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v34 = 0;
    v7 = 0;
    while (v32)
    {
      v35 = v34;
LABEL_25:
      v36 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      LODWORD(v5) = *(*(v6 + 56) + ((v35 << 10) | (16 * v36)) + 8);

      sub_1002A3450(v37);
      if (v5 >= v7)
      {
        v7 = v7;
      }

      else
      {
        v7 = v5;
      }
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        v38 = [objc_allocWithZone(CBDiscovery) init];
        [v38 setBleRSSIThresholdHint:v7];
        sub_1000E4A60(v49);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v38 setDeviceFilter:isa];

        [v38 setDiscoveryFlags:570425344];
        sub_1000F733C(*(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName), *(v4 + OBJC_IVAR____TtC10seserviced6DSKBLE_discoveryPeripheralEventName + 8), v38);

        return;
      }

      v32 = v9[v35];
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Not running", v24, 2u);
  }
}