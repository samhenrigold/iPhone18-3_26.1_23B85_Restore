uint64_t sub_1000F01F4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v72 = a4;
  v73 = a5;
  v79 = a2;
  v80 = a3;
  v13 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v13 - 8);
  v78 = &v58 - v14;
  v77 = type metadata accessor for IndexPath();
  v15 = *(v77 - 8);
  __chkstk_darwin(v77);
  v71 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_10076B960, &qword_10062FC98);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = sub_100058000(&qword_10076B968, &qword_10062FCA0);
  v63 = *(v20 - 8);
  __chkstk_darwin(v20);
  v60 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v59 = &v58 - v23;
  v62 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(a6, a7);
    sub_10000E188(a8, a6, a7, &unk_1006362F8);
    Set.Iterator.init(_cocoa:)();
    result = v84;
    v25 = v85;
    v26 = v86;
    v27 = v87;
    v28 = v88;
  }

  else
  {
    v29 = -1 << *(a1 + 32);
    v25 = a1 + 56;
    v30 = ~v29;
    v31 = -v29;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(a1 + 56);

    v26 = v30;
    v28 = v33;
    v27 = 0;
  }

  v65 = a6;
  v66 = a7;
  v61 = v26;
  v34 = (v26 + 64) >> 6;
  v76 = (v15 + 48);
  v68 = (v15 + 16);
  v69 = (v15 + 32);
  v67 = (v15 + 8);
  v75 = (v63 + 56);
  v64 = _swiftEmptyArrayStorage;
  v74 = (v63 + 48);
  v81 = result;
  v70 = v34;
LABEL_8:
  v35 = v27;
  if (result < 0)
  {
    do
    {
      v40 = __CocoaSet.Iterator.next()();
      if (!v40)
      {
        goto LABEL_32;
      }

      v83 = v40;
      sub_100058000(v65, v66);
      swift_dynamicCast();
      v39 = v89;
      v27 = v35;
      v38 = v28;
      if (!v89)
      {
        goto LABEL_32;
      }

LABEL_17:
      v82 = v38;
      v41 = v78;
      v79(v39);
      v42 = v77;
      if ((*v76)(v41, 1, v77) == 1)
      {
        sub_1000079B4(v41, &unk_100771B10, qword_10062E540);
        if (qword_100766EC0 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_100003E30(v43, qword_100769A10);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "Unable to look up index/indexPath", v46, 2u);
        }

        v47 = 1;
      }

      else
      {
        v48 = v25;
        v49 = v20;
        v50 = v71;
        (*v69)(v71, v41, v42);
        (*v68)(v19, v50, v42);
        v51 = v72(v39);
        v52 = v50;
        v20 = v49;
        v25 = v48;
        v34 = v70;
        (*v67)(v52, v42);
        v47 = 0;
        *&v19[*(v20 + 36)] = v51;
      }

      (*v75)(v19, v47, 1, v20);

      if ((*v74)(v19, 1, v20) != 1)
      {
        v53 = v25;
        v54 = v59;
        sub_100016588(v19, v59, &qword_10076B968, &qword_10062FCA0);
        sub_100016588(v54, v60, &qword_10076B968, &qword_10062FCA0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_100546F24(0, v64[2] + 1, 1, v64);
        }

        v56 = v64[2];
        v55 = v64[3];
        v25 = v53;
        if (v56 >= v55 >> 1)
        {
          v64 = sub_100546F24((v55 > 1), v56 + 1, 1, v64);
        }

        v57 = v64;
        v64[2] = v56 + 1;
        sub_100016588(v60, v57 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v56, &qword_10076B968, &qword_10062FCA0);
        result = v81;
        v28 = v82;
        goto LABEL_8;
      }

      sub_1000079B4(v19, &qword_10076B960, &qword_10062FC98);
      v35 = v27;
      result = v81;
      v28 = v82;
    }

    while (v81 < 0);
  }

  v36 = v35;
  v37 = v28;
  v27 = v35;
  if (v28)
  {
LABEL_13:
    v38 = (v37 - 1) & v37;
    v39 = *(*(result + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v37)))));

    if (v39)
    {
      goto LABEL_17;
    }

LABEL_32:
    sub_10008BA48(v81);
    return v64;
  }

  while (1)
  {
    v27 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v27 >= v34)
    {
      goto LABEL_32;
    }

    v37 = *(v25 + 8 * v27);
    ++v36;
    if (v37)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1000F097C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100058000(a6, a7);
    sub_10000E188(a8, a6, a7, &unk_1006362F8);
    Set.Iterator.init(_cocoa:)();
    v8 = v39;
    v12 = v40;
    v13 = v41;
    v14 = v42;
    v15 = v43;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v33 = _swiftEmptyArrayStorage;
  while (v8 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22 || (v44 = v22, sub_100058000(a6, a7), swift_dynamicCast(), (v21 = v37) == 0))
    {
LABEL_28:
      sub_10008BA48(v8);
      return;
    }

LABEL_18:
    a2(&v37, v21);
    if (v38 == 1)
    {
      if (qword_100766EC0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100003E30(v23, qword_100769A10);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Unable to look up index/indexPath", v26, 2u);
      }
    }

    else
    {
      v27 = v37;
      v28 = a4(v21);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_100546F48(0, *(v33 + 2) + 1, 1, v33);
      }

      v30 = *(v33 + 2);
      v29 = *(v33 + 3);
      if (v30 >= v29 >> 1)
      {
        v33 = sub_100546F48((v29 > 1), v30 + 1, 1, v33);
      }

      *(v33 + 2) = v30 + 1;
      v31 = &v33[16 * v30];
      *(v31 + 4) = v27;
      *(v31 + 5) = v28;
    }
  }

  v19 = v14;
  v20 = v15;
  if (v15)
  {
LABEL_14:
    v15 = (v20 - 1) & v20;
    v21 = *(*(v8 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v20)))));

    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v14 >= ((v13 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v20 = *(v12 + 8 * v14);
    ++v19;
    if (v20)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1000F0CF4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v50 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = v39 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v39[1] = v3;
    v59 = _swiftEmptyArrayStorage;
    sub_1004A1AC0(0, v11, 0);
    v54 = a1 + 64;
    v55 = v59;
    v12 = _HashTable.startBucket.getter();
    v13 = 0;
    v44 = (v5 + 8);
    v45 = (v5 + 16);
    v43 = (v7 + 16);
    v42 = (v7 + 8);
    v40 = a1 + 72;
    v41 = v11;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v54 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      v53 = *(a1 + 36);
      v17 = *(*(a1 + 48) + 8 * v12);
      v18 = *(*v17 + 144);
      swift_beginAccess();
      v19 = v17 + v18;
      v20 = v49;
      v21 = v50;
      (*v45)(v49, v19, v50);

      v22 = a1;
      v23 = v46;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*v44)(v20, v21);
      v24 = v48;
      (*v43)(v47, v23, v48);
      sub_1001013F4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      AnyHashable.init<A>(_:)();
      (*v42)(v23, v24);
      v25 = v51(v17);

      *(&v58 + 1) = v25;
      v26 = v55;
      v59 = v55;
      v28 = v55[2];
      v27 = v55[3];
      if (v28 >= v27 >> 1)
      {
        sub_1004A1AC0((v27 > 1), v28 + 1, 1);
        v26 = v59;
      }

      v26[2] = v28 + 1;
      v29 = &v26[6 * v28];
      v30 = v56;
      v31 = v58;
      v29[3] = v57;
      v29[4] = v31;
      v29[2] = v30;
      v14 = 1 << *(v22 + 32);
      if (v12 >= v14)
      {
        goto LABEL_22;
      }

      v32 = *(v54 + 8 * v16);
      if ((v32 & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      a1 = v22;
      v55 = v26;
      if (v53 != *(v22 + 36))
      {
        goto LABEL_24;
      }

      v33 = v32 & (-2 << (v12 & 0x3F));
      if (v33)
      {
        v14 = __clz(__rbit64(v33)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v41;
      }

      else
      {
        v34 = v16 << 6;
        v35 = v16 + 1;
        v36 = (v40 + 8 * v16);
        v15 = v41;
        while (v35 < (v14 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_10000FBA0(v12, v53, 0);
            v14 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        sub_10000FBA0(v12, v53, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1000F11C0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v50 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = v39 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v39[1] = v3;
    v59 = _swiftEmptyArrayStorage;
    sub_1004A1AC0(0, v11, 0);
    v54 = a1 + 64;
    v55 = v59;
    v12 = _HashTable.startBucket.getter();
    v13 = 0;
    v44 = (v5 + 8);
    v45 = (v5 + 16);
    v43 = (v7 + 16);
    v42 = (v7 + 8);
    v40 = a1 + 72;
    v41 = v11;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v54 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_21;
      }

      v53 = *(a1 + 36);
      v17 = *(*(a1 + 48) + 8 * v12);
      v18 = *(*v17 + 144);
      swift_beginAccess();
      v19 = v17 + v18;
      v20 = v49;
      v21 = v50;
      (*v45)(v49, v19, v50);

      v22 = a1;
      v23 = v46;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      (*v44)(v20, v21);
      v24 = v48;
      (*v43)(v47, v23, v48);
      sub_1001013F4(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &protocol conformance descriptor for TTRAccountsListsViewModel.ItemIdentifier);
      AnyHashable.init<A>(_:)();
      (*v42)(v23, v24);
      v25 = v51(v17);

      *(&v58 + 1) = v25;
      v26 = v55;
      v59 = v55;
      v28 = v55[2];
      v27 = v55[3];
      if (v28 >= v27 >> 1)
      {
        sub_1004A1AC0((v27 > 1), v28 + 1, 1);
        v26 = v59;
      }

      v26[2] = v28 + 1;
      v29 = &v26[6 * v28];
      v30 = v56;
      v31 = v58;
      v29[3] = v57;
      v29[4] = v31;
      v29[2] = v30;
      v14 = 1 << *(v22 + 32);
      if (v12 >= v14)
      {
        goto LABEL_22;
      }

      v32 = *(v54 + 8 * v16);
      if ((v32 & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      a1 = v22;
      v55 = v26;
      if (v53 != *(v22 + 36))
      {
        goto LABEL_24;
      }

      v33 = v32 & (-2 << (v12 & 0x3F));
      if (v33)
      {
        v14 = __clz(__rbit64(v33)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v41;
      }

      else
      {
        v34 = v16 << 6;
        v35 = v16 + 1;
        v36 = (v40 + 8 * v16);
        v15 = v41;
        while (v35 < (v14 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_10000FBA0(v12, v53, 0);
            v14 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        sub_10000FBA0(v12, v53, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

char *sub_1000F16A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1000F17D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_100018654(result, 1);

  return sub_1000F16A4(v7, v6, 1, v4);
}

void sub_1000F18BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v61 = &_swiftEmptySetSingleton;
  v62 = &_swiftEmptySetSingleton;
  v59 = &_swiftEmptySetSingleton;
  v60 = &_swiftEmptySetSingleton;
  v58 = &_swiftEmptySetSingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 64;
  v10 = a3 + 64;

  v11 = 0;
  v50 = v8;
  v51 = v4;
LABEL_6:
  if (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    v7 &= v7 - 1;
    v49 = *(*(a1 + 56) + 16 * v13 + 8);
    v15 = 1 << *(a2 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a2 + 64);
    v18 = (v15 + 63) >> 6;
    v56 = v14;

    v19 = 0;
LABEL_16:
    while (v17)
    {
LABEL_21:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = *(*(a2 + 56) + ((v19 << 9) | (8 * v22)));
      if ((v23 & 0xC000000000000001) != 0)
      {

        v20 = __CocoaSet.contains(_:)();

        if (v20)
        {
          goto LABEL_29;
        }
      }

      else if (*(v23 + 16))
      {
        Hasher.init(_seed:)();
        v24 = *(v56 + 16);
        Hasher._combine(_:)(v24);
        v25 = Hasher._finalize()();
        v26 = -1 << *(v23 + 32);
        v27 = v25 & ~v26;
        if ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (*(*(*(v23 + 48) + 8 * v27) + 16) != v24)
          {
            v27 = (v27 + 1) & v28;
            if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

LABEL_29:

          v53 = 1;
LABEL_30:
          v29 = 1 << *(a3 + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v31 = v30 & *(a3 + 64);
          v32 = (v29 + 63) >> 6;

          v33 = 0;
          while (1)
          {
            while (1)
            {
LABEL_35:
              if (!v31)
              {
                while (1)
                {
                  v35 = v33 + 1;
                  if (__OFADD__(v33, 1))
                  {
                    goto LABEL_57;
                  }

                  if (v35 >= v32)
                  {

                    if ((v53 & 1) == 0)
                    {
                      goto LABEL_5;
                    }

                    goto LABEL_52;
                  }

                  v31 = *(v10 + 8 * v35);
                  ++v33;
                  if (v31)
                  {
                    v33 = v35;
                    break;
                  }
                }
              }

              v36 = __clz(__rbit64(v31));
              v31 &= v31 - 1;
              v37 = *(*(a3 + 56) + ((v33 << 9) | (8 * v36)));
              if ((v37 & 0xC000000000000001) == 0)
              {
                break;
              }

              v34 = __CocoaSet.contains(_:)();

              if (v34)
              {
                goto LABEL_49;
              }
            }

            if (*(v37 + 16))
            {
              Hasher.init(_seed:)();
              v38 = *(v56 + 16);
              Hasher._combine(_:)(v38);
              v39 = Hasher._finalize()();
              v40 = -1 << *(v37 + 32);
              v41 = v39 & ~v40;
              if ((*(v37 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
              {
                break;
              }
            }
          }

          v42 = ~v40;
          while (*(*(*(v37 + 48) + 8 * v41) + 16) != v38)
          {
            v41 = (v41 + 1) & v42;
            if (((*(v37 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

LABEL_49:

          if ((v53 & 1) == 0 || (~v49 & 3) != 0)
          {
LABEL_52:
            v43 = v56;
          }

          else
          {

            sub_10058B998(v57, v56);

            v43 = v56;
          }

          sub_10058B998(v57, v43);
LABEL_5:

          v8 = v50;
          v4 = v51;
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v53 = 0;
        goto LABEL_30;
      }

      v17 = *(v9 + 8 * v21);
      ++v19;
      if (v17)
      {
        v19 = v21;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        v44 = v61;
        v46 = v59;
        v45 = v60;
        v47 = v58;
        *a4 = v62;
        a4[1] = v44;
        a4[2] = v45;
        a4[3] = v46;
        a4[4] = v47;
        return;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        v11 = v12;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
}

void sub_1000F1D8C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v151 = a5;
  v152 = a7;
  v154 = a6;
  v200 = a8;
  v199 = a13;
  v170 = &_swiftEmptySetSingleton;
  v171 = &_swiftEmptySetSingleton;
  v168 = &_swiftEmptySetSingleton;
  v169 = &_swiftEmptySetSingleton;
  v167 = &_swiftEmptySetSingleton;
  v17 = *a1;
  v190 = a1[1];
  v191 = v17;
  v18 = a1[2];
  v188 = a1[3];
  v189 = v18;
  v187 = a1[4];
  v165 = v190;
  v166 = v17;
  v163 = v188;
  v164 = v18;
  v162 = v187;
  sub_10000794C(&v191, v192, &qword_10076BB90, &unk_10062FDE0);
  sub_10000794C(&v190, v192, &qword_10076BB90, &unk_10062FDE0);
  sub_10000794C(&v189, v192, &qword_10076BB90, &unk_10062FDE0);
  sub_10000794C(&v188, v192, &qword_10076BB90, &unk_10062FDE0);
  sub_10000794C(&v187, v192, &qword_10076BB90, &unk_10062FDE0);
  if (sub_1000ADD14())
  {
    sub_1000079B4(&v187, &qword_10076BB90, &unk_10062FDE0);
    sub_1000079B4(&v188, &qword_10076BB90, &unk_10062FDE0);
    sub_1000079B4(&v189, &qword_10076BB90, &unk_10062FDE0);
    sub_1000079B4(&v190, &qword_10076BB90, &unk_10062FDE0);
    sub_1000079B4(&v191, &qword_10076BB90, &unk_10062FDE0);
    v19 = &_swiftEmptySetSingleton;
    v20 = &_swiftEmptySetSingleton;
    v21 = &_swiftEmptySetSingleton;
    v22 = &_swiftEmptySetSingleton;
    v23 = &_swiftEmptySetSingleton;
LABEL_68:
    *a9 = v23;
    a9[1] = v22;
    a9[2] = v21;
    a9[3] = v20;
    a9[4] = v19;
    return;
  }

  v127 = a9;
  v24 = 0;
  v137 = a2 & 0xC000000000000001;
  v148 = a12;
  v135 = a4 & 0xC000000000000001;
  v136 = a3 & 0xC000000000000001;
  v150 = a11;
  v153 = a10;
  if (a2 < 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v26 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 < 0)
  {
    v26 = a3;
  }

  v132 = v26;
  v133 = v25;
  v140 = a4;
  v141 = a3;
  v129 = (a3 + 56);
  v130 = a2 + 56;
  v27 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 < 0)
  {
    v27 = a4;
  }

  v131 = v27;
  v128 = a4 + 56;
  v134 = a2;
  while (1)
  {
    *&v159 = &_swiftEmptySetSingleton;
    *(&v159 + 1) = &_swiftEmptySetSingleton;
    *&v160 = &_swiftEmptySetSingleton;
    *(&v160 + 1) = &_swiftEmptySetSingleton;
    v161 = &_swiftEmptySetSingleton;
    if (v137)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076BB78, &qword_10062FDD0);
      sub_10000E188(&qword_10076BB80, &qword_10076BB78, &qword_10062FDD0, &unk_1006362F8);
      Set.Iterator.init(_cocoa:)();
      v44 = v172;
      v45 = v173;
      v46 = v174;
      v47 = v175;
      v48 = v176;
    }

    else
    {
      v49 = -1 << *(a2 + 32);
      v46 = ~v49;
      v50 = -v49;
      v51 = v50 < 64 ? ~(-1 << v50) : -1;
      v48 = v51 & *(a2 + 56);

      v47 = 0;
      v44 = a2;
      v45 = v130;
    }

    v147 = v46;
    v52 = (v46 + 64) >> 6;
    v155 = v200;
    v156 = v199;
    v149 = v44;
    if ((v44 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v60 = __CocoaSet.Iterator.next()();
      if (!v60)
      {
        break;
      }

      v157 = v60;
      sub_100058000(&qword_10076BB78, &qword_10062FDD0);
      v59 = swift_dynamicCast();
      v58 = v158;
      v55 = v47;
      v57 = v48;
      v56 = v141;
      if (!v158)
      {
        goto LABEL_63;
      }

LABEL_27:
      __chkstk_darwin(v59);
      v61 = v154;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v61;
      *(&v126 - 8) = v152;
      *(&v126 - 56) = v155;
      v62 = v150;
      *(&v126 - 6) = v153;
      *(&v126 - 5) = v62;
      *(&v126 - 4) = v148;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v58;
      sub_100058000(&qword_10076BB90, &unk_10062FDE0);
      Set.removeAll(where:)();

      v47 = v55;
      v48 = v57;
      v44 = v149;
      if ((v149 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    v56 = v141;
LABEL_29:
    sub_10008BA48(v44);
    if (v136)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076BB78, &qword_10062FDD0);
      sub_10000E188(&qword_10076BB80, &qword_10076BB78, &qword_10062FDD0, &unk_1006362F8);
      Set.Iterator.init(_cocoa:)();
      v63 = v177;
      v64 = v178;
      v65 = v179;
      v66 = v180;
      v67 = v181;
    }

    else
    {
      v68 = -1 << *(v56 + 32);
      v69 = ~v68;
      v70 = -v68;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      else
      {
        v71 = -1;
      }

      v67 = v71 & *(v56 + 56);

      v65 = v69;
      v66 = 0;
      v63 = v56;
      v64 = v129;
    }

    v142 = v65;
    v72 = (v65 + 8) >> 6;
    v144 = v64;
    v145 = v63;
    for (i = v72; v63 < 0; v67 = v149)
    {
      v79 = __CocoaSet.Iterator.next()();
      if (!v79)
      {
        v76 = v140;
        goto LABEL_46;
      }

      v157 = v79;
      sub_100058000(&qword_10076BB78, &qword_10062FDD0);
      swift_dynamicCast();
      v78 = v158;
      v75 = v66;
      v77 = v67;
      v76 = v140;
      if (!v158)
      {
        goto LABEL_46;
      }

LABEL_44:
      v147 = &v126;
      __chkstk_darwin(v78);
      v149 = v77;
      v81 = v151;
      v80 = v152;
      v82 = v154;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v82;
      *(&v126 - 8) = v80;
      *(&v126 - 56) = v155;
      v83 = v150;
      *(&v126 - 6) = v153;
      *(&v126 - 5) = v83;
      v84 = v148;
      *(&v126 - 4) = v148;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v85;
      v146 = v85;
      sub_100058000(&qword_10076BB90, &unk_10062FDE0);
      v86 = Set.removeAll(where:)();
      v147 = &v126;
      __chkstk_darwin(v86);
      *(&v126 - 10) = v81;
      *(&v126 - 9) = v82;
      *(&v126 - 8) = v80;
      *(&v126 - 56) = v155;
      *(&v126 - 6) = v153;
      *(&v126 - 5) = v83;
      v72 = i;
      v64 = v144;
      *(&v126 - 4) = v84;
      *(&v126 - 24) = v156;
      v63 = v145;
      *(&v126 - 2) = v146;
      *(&v126 - 1) = &v159;
      Set.removeAll(where:)();

      v66 = v75;
    }

    v73 = v66;
    v74 = v67;
    v75 = v66;
    v76 = v140;
    if (v67)
    {
LABEL_40:
      v77 = (v74 - 1) & v74;

      if (!v78)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    while (1)
    {
      v75 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_70;
      }

      if (v75 >= v72)
      {
        break;
      }

      v74 = v64[v75];
      ++v73;
      if (v74)
      {
        goto LABEL_40;
      }
    }

LABEL_46:
    sub_10008BA48(v63);
    if (v135)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076BB78, &qword_10062FDD0);
      sub_10000E188(&qword_10076BB80, &qword_10076BB78, &qword_10062FDD0, &unk_1006362F8);
      Set.Iterator.init(_cocoa:)();
      v87 = v183;
      v145 = v182;
      v88 = v184;
      v89 = v185;
      v90 = v186;
    }

    else
    {
      v91 = -1 << *(v76 + 32);
      v92 = ~v91;
      v93 = -v91;
      if (v93 < 64)
      {
        v94 = ~(-1 << v93);
      }

      else
      {
        v94 = -1;
      }

      v90 = v94 & *(v76 + 56);

      v88 = v92;
      v89 = 0;
      v145 = v76;
      v87 = v128;
    }

    v138 = v88;
    v139 = v87;
    v149 = (v88 + 64) >> 6;
    if ((v145 & 0x8000000000000000) == 0)
    {
LABEL_53:
      v95 = v89;
      v96 = v90;
      for (j = v89; !v96; ++v95)
      {
        j = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_71;
        }

        if (j >= v149)
        {
          goto LABEL_11;
        }

        v96 = *(v87 + 8 * j);
      }

      v144 = v24;
      v98 = (v96 - 1) & v96;
      v99 = *(*(v145 + 48) + ((j << 9) | (8 * __clz(__rbit64(v96)))));

      if (v99)
      {
        goto LABEL_61;
      }

LABEL_64:
      v24 = v144;
      goto LABEL_11;
    }

    while (1)
    {
      v101 = __CocoaSet.Iterator.next()();
      if (!v101)
      {
        break;
      }

      v144 = v24;
      v157 = v101;
      sub_100058000(&qword_10076BB78, &qword_10062FDD0);
      v100 = swift_dynamicCast();
      v99 = v158;
      j = v89;
      v98 = v90;
      if (!v158)
      {
        goto LABEL_64;
      }

LABEL_61:
      v142 = &v126;
      __chkstk_darwin(v100);
      v102 = v150;
      v103 = v151;
      v104 = v154;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v104;
      v105 = v152;
      *(&v126 - 8) = v152;
      v106 = v105;
      *(&v126 - 56) = v155;
      *(&v126 - 6) = v153;
      *(&v126 - 5) = v102;
      v107 = v148;
      *(&v126 - 4) = v148;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v99;
      v146 = v99;
      v147 = sub_100058000(&qword_10076BB90, &unk_10062FDE0);
      i = v98;
      v24 = v144;
      v108 = Set.removeAll(where:)();
      v144 = &v126;
      __chkstk_darwin(v108);
      *(&v126 - 10) = v103;
      v110 = v153;
      v109 = v154;
      *(&v126 - 9) = v154;
      *(&v126 - 8) = v106;
      LOBYTE(v106) = v155;
      v111 = v156;
      *(&v126 - 56) = v155;
      *(&v126 - 6) = v110;
      *(&v126 - 5) = v102;
      *(&v126 - 4) = v107;
      v112 = v107;
      *(&v126 - 24) = v111;
      *(&v126 - 2) = v99;
      v113 = Set.removeAll(where:)();
      v144 = &v126;
      __chkstk_darwin(v113);
      v115 = v151;
      v114 = v152;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v109;
      *(&v126 - 8) = v114;
      *(&v126 - 56) = v106;
      v116 = v150;
      *(&v126 - 6) = v110;
      *(&v126 - 5) = v116;
      *(&v126 - 4) = v112;
      LOBYTE(v112) = v156;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v146;
      v117 = Set.removeAll(where:)();
      v144 = &v126;
      __chkstk_darwin(v117);
      v118 = v154;
      *(&v126 - 10) = v115;
      *(&v126 - 9) = v118;
      v119 = v152;
      v120 = v153;
      *(&v126 - 8) = v152;
      LOBYTE(v110) = v155;
      *(&v126 - 56) = v155;
      *(&v126 - 6) = v120;
      *(&v126 - 5) = v116;
      v121 = v148;
      *(&v126 - 4) = v148;
      *(&v126 - 24) = v112;
      v122 = v146;
      *(&v126 - 2) = v146;
      *(&v126 - 1) = &v159;
      v123 = Set.removeAll(where:)();
      v144 = &v126;
      __chkstk_darwin(v123);
      v124 = v154;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v124;
      *(&v126 - 8) = v119;
      v87 = v139;
      *(&v126 - 56) = v110;
      v125 = v150;
      *(&v126 - 6) = v120;
      *(&v126 - 5) = v125;
      *(&v126 - 4) = v121;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v122;
      Set.removeAll(where:)();

      v90 = i;
      v89 = j;
      if ((v145 & 0x8000000000000000) == 0)
      {
        goto LABEL_53;
      }
    }

LABEL_11:
    sub_10008BA48(v145);
    v28 = v165;
    v29 = v166;
    v30 = v163;
    v31 = v164;
    v32 = v162;

    sub_10057D4E4(v33);

    sub_10057D4E4(v34);

    sub_10057D4E4(v35);

    sub_10057D4E4(v36);

    sub_10057D4E4(v37);
    sub_1000EBA3C(v29, v38);

    sub_1000EBA3C(v28, v39);

    sub_1000EBA3C(v31, v40);

    sub_1000EBA3C(v30, v41);

    sub_1000EBA3C(v32, v42);

    v192[0] = v159;
    v192[1] = v160;
    v193 = v161;
    v197 = *(&v159 + 1);
    v198 = v159;
    v195 = *(&v160 + 1);
    v196 = v160;
    v194 = v161;
    v165 = *(&v159 + 1);
    v166 = v159;
    v163 = *(&v160 + 1);
    v164 = v160;
    v162 = v161;
    sub_10000794C(&v198, &v159, &qword_10076BB90, &unk_10062FDE0);
    sub_10000794C(&v197, &v159, &qword_10076BB90, &unk_10062FDE0);
    sub_10000794C(&v196, &v159, &qword_10076BB90, &unk_10062FDE0);
    sub_10000794C(&v195, &v159, &qword_10076BB90, &unk_10062FDE0);
    sub_10000794C(&v194, &v159, &qword_10076BB90, &unk_10062FDE0);
    v43 = sub_1000ADD14();
    sub_1000079B4(&v198, &qword_10076BB90, &unk_10062FDE0);
    sub_1000079B4(&v197, &qword_10076BB90, &unk_10062FDE0);
    sub_1000079B4(&v196, &qword_10076BB90, &unk_10062FDE0);
    sub_1000079B4(&v195, &qword_10076BB90, &unk_10062FDE0);
    sub_1000079B4(&v194, &qword_10076BB90, &unk_10062FDE0);
    a2 = v134;
    if (v43)
    {
      sub_1000079B4(&v194, &qword_10076BB90, &unk_10062FDE0);
      sub_1000079B4(&v195, &qword_10076BB90, &unk_10062FDE0);
      sub_1000079B4(&v196, &qword_10076BB90, &unk_10062FDE0);
      sub_1000079B4(&v197, &qword_10076BB90, &unk_10062FDE0);
      sub_1000079B4(&v198, &qword_10076BB90, &unk_10062FDE0);
      v22 = v170;
      v23 = v171;
      v20 = v168;
      v21 = v169;
      v19 = v167;
      a9 = v127;
      goto LABEL_68;
    }
  }

LABEL_19:
  v53 = v47;
  v54 = v48;
  v55 = v47;
  v56 = v141;
  if (v48)
  {
LABEL_23:
    v57 = (v54 - 1) & v54;
    v58 = *(*(v44 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));

    if (v58)
    {
      goto LABEL_27;
    }

LABEL_63:
    v44 = v149;
    goto LABEL_29;
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v55 >= v52)
    {
      goto LABEL_29;
    }

    v54 = *(v45 + 8 * v55);
    ++v53;
    if (v54)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

uint64_t sub_1000F2CA4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v53 = result;
  v7 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v8 = v6;
  v9 = a4;
  v10 = a2;
  v52 = a4;
  while (v10 < v7)
  {
    v12 = *(v53 + 8 * v10);
    swift_beginAccess();
    v13 = *(v8 + 88);
    if (*(v13 + 16))
    {
      v14 = sub_1003B3EDC();
      if (v15)
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        swift_endAccess();

        if ((a6 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = sub_1003AB368(v9);
          v22 = v18[2];
          v23 = (v21 & 1) == 0;
          v24 = __OFADD__(v22, v23);
          v25 = v22 + v23;
          if (v24)
          {
            goto LABEL_42;
          }

          v26 = v21;
          if (v18[3] >= v25)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_20;
            }

            v33 = v20;
            sub_1003AE128();
            v20 = v33;
            if ((v26 & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_21:
            *(v18[7] + 8 * v20) = a5;
          }

          else
          {
            sub_1005491B4(v25, isUniquelyReferenced_nonNull_native);
            v20 = sub_1003AB368(v9);
            if ((v26 & 1) != (v27 & 1))
            {
              goto LABEL_45;
            }

LABEL_20:
            if (v26)
            {
              goto LABEL_21;
            }

LABEL_23:
            v18[(v20 >> 6) + 8] |= 1 << v20;
            *(v18[6] + v20) = v9;
            *(v18[7] + 8 * v20) = a5;
            v34 = v18[2];
            v24 = __OFADD__(v34, 1);
            v35 = v34 + 1;
            if (v24)
            {
              goto LABEL_43;
            }

            v18[2] = v35;
          }
        }

        v32 = qword_10062FFD0[v52] | v17;
        goto LABEL_26;
      }
    }

    swift_endAccess();
    v18 = &_swiftEmptyDictionarySingleton;
    if ((a6 & 1) == 0)
    {
      sub_100058000(&unk_10076B980, &unk_10063CE20);
      v18 = static _DictionaryStorage.allocate(capacity:)();
      v28 = sub_1003AB368(v9);
      if (v29)
      {
        goto LABEL_40;
      }

      v18[(v28 >> 6) + 8] |= 1 << v28;
      *(v18[6] + v28) = v9;
      *(v18[7] + 8 * v28) = a5;
      v30 = v18[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_41;
      }

      v18[2] = v31;
    }

    v32 = qword_10062FFD0[v52];

LABEL_26:
    swift_beginAccess();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v8 + 88);
    *(v8 + 88) = 0x8000000000000000;
    v39 = sub_1003B3EDC();
    v40 = v37[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_38;
    }

    v43 = v38;
    if (v37[3] >= v42)
    {
      if (v36)
      {
        v46 = v37;
        if (v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1003AE114();
        v46 = v37;
        if (v43)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1005491A0(v42, v36);
      v44 = sub_1003B3EDC();
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_44;
      }

      v39 = v44;
      v46 = v37;
      if (v43)
      {
LABEL_4:
        v11 = (v46[7] + 16 * v39);
        *v11 = v18;
        v11[1] = v32;

        goto LABEL_5;
      }
    }

    v46[(v39 >> 6) + 8] |= 1 << v39;
    *(v46[6] + 8 * v39) = v12;
    v47 = (v46[7] + 16 * v39);
    *v47 = v18;
    v47[1] = v32;
    v48 = v46[2];
    v24 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v24)
    {
      goto LABEL_39;
    }

    v46[2] = v49;
LABEL_5:
    ++v10;
    *(v8 + 88) = v46;
    result = swift_endAccess();
    v9 = a4;
    if (v7 == v10)
    {
      return result;
    }
  }

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
  sub_100058000(&qword_10076BB78, &qword_10062FDD0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000F30A0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v53 = result;
  v7 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v8 = v6;
  v9 = a4;
  v10 = a2;
  v52 = a4;
  while (v10 < v7)
  {
    v12 = *(v53 + 8 * v10);
    swift_beginAccess();
    v13 = *(v8 + 88);
    if (*(v13 + 16))
    {
      v14 = sub_1003B3EDC();
      if (v15)
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        swift_endAccess();

        if ((a6 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = sub_1003AB368(v9);
          v22 = v18[2];
          v23 = (v21 & 1) == 0;
          v24 = __OFADD__(v22, v23);
          v25 = v22 + v23;
          if (v24)
          {
            goto LABEL_42;
          }

          v26 = v21;
          if (v18[3] >= v25)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_20;
            }

            v33 = v20;
            sub_1003AE128();
            v20 = v33;
            if ((v26 & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_21:
            *(v18[7] + 8 * v20) = a5;
          }

          else
          {
            sub_1005491B4(v25, isUniquelyReferenced_nonNull_native);
            v20 = sub_1003AB368(v9);
            if ((v26 & 1) != (v27 & 1))
            {
              goto LABEL_45;
            }

LABEL_20:
            if (v26)
            {
              goto LABEL_21;
            }

LABEL_23:
            v18[(v20 >> 6) + 8] |= 1 << v20;
            *(v18[6] + v20) = v9;
            *(v18[7] + 8 * v20) = a5;
            v34 = v18[2];
            v24 = __OFADD__(v34, 1);
            v35 = v34 + 1;
            if (v24)
            {
              goto LABEL_43;
            }

            v18[2] = v35;
          }
        }

        v32 = qword_10062FFD0[v52] | v17;
        goto LABEL_26;
      }
    }

    swift_endAccess();
    v18 = &_swiftEmptyDictionarySingleton;
    if ((a6 & 1) == 0)
    {
      sub_100058000(&unk_10076B980, &unk_10063CE20);
      v18 = static _DictionaryStorage.allocate(capacity:)();
      v28 = sub_1003AB368(v9);
      if (v29)
      {
        goto LABEL_40;
      }

      v18[(v28 >> 6) + 8] |= 1 << v28;
      *(v18[6] + v28) = v9;
      *(v18[7] + 8 * v28) = a5;
      v30 = v18[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_41;
      }

      v18[2] = v31;
    }

    v32 = qword_10062FFD0[v52];

LABEL_26:
    swift_beginAccess();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v8 + 88);
    *(v8 + 88) = 0x8000000000000000;
    v39 = sub_1003B3EDC();
    v40 = v37[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_38;
    }

    v43 = v38;
    if (v37[3] >= v42)
    {
      if (v36)
      {
        v46 = v37;
        if (v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1003AF6F4();
        v46 = v37;
        if (v43)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10054B93C(v42, v36);
      v44 = sub_1003B3EDC();
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_44;
      }

      v39 = v44;
      v46 = v37;
      if (v43)
      {
LABEL_4:
        v11 = (v46[7] + 16 * v39);
        *v11 = v18;
        v11[1] = v32;

        goto LABEL_5;
      }
    }

    v46[(v39 >> 6) + 8] |= 1 << v39;
    *(v46[6] + 8 * v39) = v12;
    v47 = (v46[7] + 16 * v39);
    *v47 = v18;
    v47[1] = v32;
    v48 = v46[2];
    v24 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v24)
    {
      goto LABEL_39;
    }

    v46[2] = v49;
LABEL_5:
    ++v10;
    *(v8 + 88) = v46;
    result = swift_endAccess();
    v9 = a4;
    if (v7 == v10)
    {
      return result;
    }
  }

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
  sub_100058000(&qword_10076B788, &unk_10062FB80);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000F349C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v61 = &_swiftEmptySetSingleton;
  v62 = &_swiftEmptySetSingleton;
  v59 = &_swiftEmptySetSingleton;
  v60 = &_swiftEmptySetSingleton;
  v58 = &_swiftEmptySetSingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 64;
  v10 = a3 + 64;

  v11 = 0;
  v50 = v8;
  v51 = v4;
LABEL_6:
  if (v7)
  {
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    v7 &= v7 - 1;
    v49 = *(*(a1 + 56) + 16 * v13 + 8);
    v15 = 1 << *(a2 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a2 + 64);
    v18 = (v15 + 63) >> 6;
    v56 = v14;

    v19 = 0;
LABEL_16:
    while (v17)
    {
LABEL_21:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = *(*(a2 + 56) + ((v19 << 9) | (8 * v22)));
      if ((v23 & 0xC000000000000001) != 0)
      {

        v20 = __CocoaSet.contains(_:)();

        if (v20)
        {
          goto LABEL_29;
        }
      }

      else if (*(v23 + 16))
      {
        Hasher.init(_seed:)();
        v24 = *(v56 + 16);
        Hasher._combine(_:)(v24);
        v25 = Hasher._finalize()();
        v26 = -1 << *(v23 + 32);
        v27 = v25 & ~v26;
        if ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (*(*(*(v23 + 48) + 8 * v27) + 16) != v24)
          {
            v27 = (v27 + 1) & v28;
            if (((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

LABEL_29:

          v53 = 1;
LABEL_30:
          v29 = 1 << *(a3 + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v31 = v30 & *(a3 + 64);
          v32 = (v29 + 63) >> 6;

          v33 = 0;
          while (1)
          {
            while (1)
            {
LABEL_35:
              if (!v31)
              {
                while (1)
                {
                  v35 = v33 + 1;
                  if (__OFADD__(v33, 1))
                  {
                    goto LABEL_57;
                  }

                  if (v35 >= v32)
                  {

                    if ((v53 & 1) == 0)
                    {
                      goto LABEL_5;
                    }

                    goto LABEL_52;
                  }

                  v31 = *(v10 + 8 * v35);
                  ++v33;
                  if (v31)
                  {
                    v33 = v35;
                    break;
                  }
                }
              }

              v36 = __clz(__rbit64(v31));
              v31 &= v31 - 1;
              v37 = *(*(a3 + 56) + ((v33 << 9) | (8 * v36)));
              if ((v37 & 0xC000000000000001) == 0)
              {
                break;
              }

              v34 = __CocoaSet.contains(_:)();

              if (v34)
              {
                goto LABEL_49;
              }
            }

            if (*(v37 + 16))
            {
              Hasher.init(_seed:)();
              v38 = *(v56 + 16);
              Hasher._combine(_:)(v38);
              v39 = Hasher._finalize()();
              v40 = -1 << *(v37 + 32);
              v41 = v39 & ~v40;
              if ((*(v37 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
              {
                break;
              }
            }
          }

          v42 = ~v40;
          while (*(*(*(v37 + 48) + 8 * v41) + 16) != v38)
          {
            v41 = (v41 + 1) & v42;
            if (((*(v37 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

LABEL_49:

          if ((v53 & 1) == 0 || (~v49 & 3) != 0)
          {
LABEL_52:
            v43 = v56;
          }

          else
          {

            sub_10058C928(v57, v56);

            v43 = v56;
          }

          sub_10058C928(v57, v43);
LABEL_5:

          v8 = v50;
          v4 = v51;
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v53 = 0;
        goto LABEL_30;
      }

      v17 = *(v9 + 8 * v21);
      ++v19;
      if (v17)
      {
        v19 = v21;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        v44 = v61;
        v46 = v59;
        v45 = v60;
        v47 = v58;
        *a4 = v62;
        a4[1] = v44;
        a4[2] = v45;
        a4[3] = v46;
        a4[4] = v47;
        return;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        v11 = v12;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
}

void sub_1000F396C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v151 = a5;
  v152 = a7;
  v154 = a6;
  v200 = a8;
  v199 = a13;
  v170 = &_swiftEmptySetSingleton;
  v171 = &_swiftEmptySetSingleton;
  v168 = &_swiftEmptySetSingleton;
  v169 = &_swiftEmptySetSingleton;
  v167 = &_swiftEmptySetSingleton;
  v17 = *a1;
  v190 = a1[1];
  v191 = v17;
  v18 = a1[2];
  v188 = a1[3];
  v189 = v18;
  v187 = a1[4];
  v165 = v190;
  v166 = v17;
  v163 = v188;
  v164 = v18;
  v162 = v187;
  sub_10000794C(&v191, v192, &qword_10076B930, &qword_10062FC70);
  sub_10000794C(&v190, v192, &qword_10076B930, &qword_10062FC70);
  sub_10000794C(&v189, v192, &qword_10076B930, &qword_10062FC70);
  sub_10000794C(&v188, v192, &qword_10076B930, &qword_10062FC70);
  sub_10000794C(&v187, v192, &qword_10076B930, &qword_10062FC70);
  if (sub_1000ADD14())
  {
    sub_1000079B4(&v187, &qword_10076B930, &qword_10062FC70);
    sub_1000079B4(&v188, &qword_10076B930, &qword_10062FC70);
    sub_1000079B4(&v189, &qword_10076B930, &qword_10062FC70);
    sub_1000079B4(&v190, &qword_10076B930, &qword_10062FC70);
    sub_1000079B4(&v191, &qword_10076B930, &qword_10062FC70);
    v19 = &_swiftEmptySetSingleton;
    v20 = &_swiftEmptySetSingleton;
    v21 = &_swiftEmptySetSingleton;
    v22 = &_swiftEmptySetSingleton;
    v23 = &_swiftEmptySetSingleton;
LABEL_68:
    *a9 = v23;
    a9[1] = v22;
    a9[2] = v21;
    a9[3] = v20;
    a9[4] = v19;
    return;
  }

  v127 = a9;
  v24 = 0;
  v137 = a2 & 0xC000000000000001;
  v148 = a12;
  v135 = a4 & 0xC000000000000001;
  v136 = a3 & 0xC000000000000001;
  v150 = a11;
  v153 = a10;
  if (a2 < 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  v26 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 < 0)
  {
    v26 = a3;
  }

  v132 = v26;
  v133 = v25;
  v140 = a4;
  v141 = a3;
  v129 = (a3 + 56);
  v130 = a2 + 56;
  v27 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 < 0)
  {
    v27 = a4;
  }

  v131 = v27;
  v128 = a4 + 56;
  v134 = a2;
  while (1)
  {
    *&v159 = &_swiftEmptySetSingleton;
    *(&v159 + 1) = &_swiftEmptySetSingleton;
    *&v160 = &_swiftEmptySetSingleton;
    *(&v160 + 1) = &_swiftEmptySetSingleton;
    v161 = &_swiftEmptySetSingleton;
    if (v137)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076B788, &unk_10062FB80);
      sub_10000E188(&unk_10076B910, &qword_10076B788, &unk_10062FB80, &unk_1006362F8);
      Set.Iterator.init(_cocoa:)();
      v44 = v172;
      v45 = v173;
      v46 = v174;
      v47 = v175;
      v48 = v176;
    }

    else
    {
      v49 = -1 << *(a2 + 32);
      v46 = ~v49;
      v50 = -v49;
      v51 = v50 < 64 ? ~(-1 << v50) : -1;
      v48 = v51 & *(a2 + 56);

      v47 = 0;
      v44 = a2;
      v45 = v130;
    }

    v147 = v46;
    v52 = (v46 + 64) >> 6;
    v155 = v200;
    v156 = v199;
    v149 = v44;
    if ((v44 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (1)
    {
      v60 = __CocoaSet.Iterator.next()();
      if (!v60)
      {
        break;
      }

      v157 = v60;
      sub_100058000(&qword_10076B788, &unk_10062FB80);
      v59 = swift_dynamicCast();
      v58 = v158;
      v55 = v47;
      v57 = v48;
      v56 = v141;
      if (!v158)
      {
        goto LABEL_63;
      }

LABEL_27:
      __chkstk_darwin(v59);
      v61 = v154;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v61;
      *(&v126 - 8) = v152;
      *(&v126 - 56) = v155;
      v62 = v150;
      *(&v126 - 6) = v153;
      *(&v126 - 5) = v62;
      *(&v126 - 4) = v148;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v58;
      sub_100058000(&qword_10076B930, &qword_10062FC70);
      Set.removeAll(where:)();

      v47 = v55;
      v48 = v57;
      v44 = v149;
      if ((v149 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    v56 = v141;
LABEL_29:
    sub_10008BA48(v44);
    if (v136)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076B788, &unk_10062FB80);
      sub_10000E188(&unk_10076B910, &qword_10076B788, &unk_10062FB80, &unk_1006362F8);
      Set.Iterator.init(_cocoa:)();
      v63 = v177;
      v64 = v178;
      v65 = v179;
      v66 = v180;
      v67 = v181;
    }

    else
    {
      v68 = -1 << *(v56 + 32);
      v69 = ~v68;
      v70 = -v68;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      else
      {
        v71 = -1;
      }

      v67 = v71 & *(v56 + 56);

      v65 = v69;
      v66 = 0;
      v63 = v56;
      v64 = v129;
    }

    v142 = v65;
    v72 = (v65 + 8) >> 6;
    v144 = v64;
    v145 = v63;
    for (i = v72; v63 < 0; v67 = v149)
    {
      v79 = __CocoaSet.Iterator.next()();
      if (!v79)
      {
        v76 = v140;
        goto LABEL_46;
      }

      v157 = v79;
      sub_100058000(&qword_10076B788, &unk_10062FB80);
      swift_dynamicCast();
      v78 = v158;
      v75 = v66;
      v77 = v67;
      v76 = v140;
      if (!v158)
      {
        goto LABEL_46;
      }

LABEL_44:
      v147 = &v126;
      __chkstk_darwin(v78);
      v149 = v77;
      v81 = v151;
      v80 = v152;
      v82 = v154;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v82;
      *(&v126 - 8) = v80;
      *(&v126 - 56) = v155;
      v83 = v150;
      *(&v126 - 6) = v153;
      *(&v126 - 5) = v83;
      v84 = v148;
      *(&v126 - 4) = v148;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v85;
      v146 = v85;
      sub_100058000(&qword_10076B930, &qword_10062FC70);
      v86 = Set.removeAll(where:)();
      v147 = &v126;
      __chkstk_darwin(v86);
      *(&v126 - 10) = v81;
      *(&v126 - 9) = v82;
      *(&v126 - 8) = v80;
      *(&v126 - 56) = v155;
      *(&v126 - 6) = v153;
      *(&v126 - 5) = v83;
      v72 = i;
      v64 = v144;
      *(&v126 - 4) = v84;
      *(&v126 - 24) = v156;
      v63 = v145;
      *(&v126 - 2) = v146;
      *(&v126 - 1) = &v159;
      Set.removeAll(where:)();

      v66 = v75;
    }

    v73 = v66;
    v74 = v67;
    v75 = v66;
    v76 = v140;
    if (v67)
    {
LABEL_40:
      v77 = (v74 - 1) & v74;

      if (!v78)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    while (1)
    {
      v75 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_70;
      }

      if (v75 >= v72)
      {
        break;
      }

      v74 = v64[v75];
      ++v73;
      if (v74)
      {
        goto LABEL_40;
      }
    }

LABEL_46:
    sub_10008BA48(v63);
    if (v135)
    {

      __CocoaSet.makeIterator()();
      sub_100058000(&qword_10076B788, &unk_10062FB80);
      sub_10000E188(&unk_10076B910, &qword_10076B788, &unk_10062FB80, &unk_1006362F8);
      Set.Iterator.init(_cocoa:)();
      v87 = v183;
      v145 = v182;
      v88 = v184;
      v89 = v185;
      v90 = v186;
    }

    else
    {
      v91 = -1 << *(v76 + 32);
      v92 = ~v91;
      v93 = -v91;
      if (v93 < 64)
      {
        v94 = ~(-1 << v93);
      }

      else
      {
        v94 = -1;
      }

      v90 = v94 & *(v76 + 56);

      v88 = v92;
      v89 = 0;
      v145 = v76;
      v87 = v128;
    }

    v138 = v88;
    v139 = v87;
    v149 = (v88 + 64) >> 6;
    if ((v145 & 0x8000000000000000) == 0)
    {
LABEL_53:
      v95 = v89;
      v96 = v90;
      for (j = v89; !v96; ++v95)
      {
        j = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_71;
        }

        if (j >= v149)
        {
          goto LABEL_11;
        }

        v96 = *(v87 + 8 * j);
      }

      v144 = v24;
      v98 = (v96 - 1) & v96;
      v99 = *(*(v145 + 48) + ((j << 9) | (8 * __clz(__rbit64(v96)))));

      if (v99)
      {
        goto LABEL_61;
      }

LABEL_64:
      v24 = v144;
      goto LABEL_11;
    }

    while (1)
    {
      v101 = __CocoaSet.Iterator.next()();
      if (!v101)
      {
        break;
      }

      v144 = v24;
      v157 = v101;
      sub_100058000(&qword_10076B788, &unk_10062FB80);
      v100 = swift_dynamicCast();
      v99 = v158;
      j = v89;
      v98 = v90;
      if (!v158)
      {
        goto LABEL_64;
      }

LABEL_61:
      v142 = &v126;
      __chkstk_darwin(v100);
      v102 = v150;
      v103 = v151;
      v104 = v154;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v104;
      v105 = v152;
      *(&v126 - 8) = v152;
      v106 = v105;
      *(&v126 - 56) = v155;
      *(&v126 - 6) = v153;
      *(&v126 - 5) = v102;
      v107 = v148;
      *(&v126 - 4) = v148;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v99;
      v146 = v99;
      v147 = sub_100058000(&qword_10076B930, &qword_10062FC70);
      i = v98;
      v24 = v144;
      v108 = Set.removeAll(where:)();
      v144 = &v126;
      __chkstk_darwin(v108);
      *(&v126 - 10) = v103;
      v110 = v153;
      v109 = v154;
      *(&v126 - 9) = v154;
      *(&v126 - 8) = v106;
      LOBYTE(v106) = v155;
      v111 = v156;
      *(&v126 - 56) = v155;
      *(&v126 - 6) = v110;
      *(&v126 - 5) = v102;
      *(&v126 - 4) = v107;
      v112 = v107;
      *(&v126 - 24) = v111;
      *(&v126 - 2) = v99;
      v113 = Set.removeAll(where:)();
      v144 = &v126;
      __chkstk_darwin(v113);
      v115 = v151;
      v114 = v152;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v109;
      *(&v126 - 8) = v114;
      *(&v126 - 56) = v106;
      v116 = v150;
      *(&v126 - 6) = v110;
      *(&v126 - 5) = v116;
      *(&v126 - 4) = v112;
      LOBYTE(v112) = v156;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v146;
      v117 = Set.removeAll(where:)();
      v144 = &v126;
      __chkstk_darwin(v117);
      v118 = v154;
      *(&v126 - 10) = v115;
      *(&v126 - 9) = v118;
      v119 = v152;
      v120 = v153;
      *(&v126 - 8) = v152;
      LOBYTE(v110) = v155;
      *(&v126 - 56) = v155;
      *(&v126 - 6) = v120;
      *(&v126 - 5) = v116;
      v121 = v148;
      *(&v126 - 4) = v148;
      *(&v126 - 24) = v112;
      v122 = v146;
      *(&v126 - 2) = v146;
      *(&v126 - 1) = &v159;
      v123 = Set.removeAll(where:)();
      v144 = &v126;
      __chkstk_darwin(v123);
      v124 = v154;
      *(&v126 - 10) = v151;
      *(&v126 - 9) = v124;
      *(&v126 - 8) = v119;
      v87 = v139;
      *(&v126 - 56) = v110;
      v125 = v150;
      *(&v126 - 6) = v120;
      *(&v126 - 5) = v125;
      *(&v126 - 4) = v121;
      *(&v126 - 24) = v156;
      *(&v126 - 2) = v122;
      Set.removeAll(where:)();

      v90 = i;
      v89 = j;
      if ((v145 & 0x8000000000000000) == 0)
      {
        goto LABEL_53;
      }
    }

LABEL_11:
    sub_10008BA48(v145);
    v28 = v165;
    v29 = v166;
    v30 = v163;
    v31 = v164;
    v32 = v162;

    sub_10057D91C(v33);

    sub_10057D91C(v34);

    sub_10057D91C(v35);

    sub_10057D91C(v36);

    sub_10057D91C(v37);
    sub_1000EBCEC(v29, v38);

    sub_1000EBCEC(v28, v39);

    sub_1000EBCEC(v31, v40);

    sub_1000EBCEC(v30, v41);

    sub_1000EBCEC(v32, v42);

    v192[0] = v159;
    v192[1] = v160;
    v193 = v161;
    v197 = *(&v159 + 1);
    v198 = v159;
    v195 = *(&v160 + 1);
    v196 = v160;
    v194 = v161;
    v165 = *(&v159 + 1);
    v166 = v159;
    v163 = *(&v160 + 1);
    v164 = v160;
    v162 = v161;
    sub_10000794C(&v198, &v159, &qword_10076B930, &qword_10062FC70);
    sub_10000794C(&v197, &v159, &qword_10076B930, &qword_10062FC70);
    sub_10000794C(&v196, &v159, &qword_10076B930, &qword_10062FC70);
    sub_10000794C(&v195, &v159, &qword_10076B930, &qword_10062FC70);
    sub_10000794C(&v194, &v159, &qword_10076B930, &qword_10062FC70);
    v43 = sub_1000ADD14();
    sub_1000079B4(&v198, &qword_10076B930, &qword_10062FC70);
    sub_1000079B4(&v197, &qword_10076B930, &qword_10062FC70);
    sub_1000079B4(&v196, &qword_10076B930, &qword_10062FC70);
    sub_1000079B4(&v195, &qword_10076B930, &qword_10062FC70);
    sub_1000079B4(&v194, &qword_10076B930, &qword_10062FC70);
    a2 = v134;
    if (v43)
    {
      sub_1000079B4(&v194, &qword_10076B930, &qword_10062FC70);
      sub_1000079B4(&v195, &qword_10076B930, &qword_10062FC70);
      sub_1000079B4(&v196, &qword_10076B930, &qword_10062FC70);
      sub_1000079B4(&v197, &qword_10076B930, &qword_10062FC70);
      sub_1000079B4(&v198, &qword_10076B930, &qword_10062FC70);
      v22 = v170;
      v23 = v171;
      v20 = v168;
      v21 = v169;
      v19 = v167;
      a9 = v127;
      goto LABEL_68;
    }
  }

LABEL_19:
  v53 = v47;
  v54 = v48;
  v55 = v47;
  v56 = v141;
  if (v48)
  {
LABEL_23:
    v57 = (v54 - 1) & v54;
    v58 = *(*(v44 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));

    if (v58)
    {
      goto LABEL_27;
    }

LABEL_63:
    v44 = v149;
    goto LABEL_29;
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v55 >= v52)
    {
      goto LABEL_29;
    }

    v54 = *(v45 + 8 * v55);
    ++v53;
    if (v54)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

void sub_1000F4818(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v27 = 0;
  v8 = 0;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v18 = *(a3 + 56) + 16 * v17;
    v19 = *v18;
    v20 = *(v18 + 8);

    LOBYTE(v20) = a4(v21, v19, v20);

    if (v20)
    {
      *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1000EB804(a1, a2, v27, a3, a6, a7);
        return;
      }
    }
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
      goto LABEL_15;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1000F4984(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a1;
  v11 = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      sub_1000EB75C(v15, v12, v10, a2, a3, a4, a5);

      return;
    }
  }

  __chkstk_darwin(a1);
  v14 = &v16 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, v13);
  sub_1000F4818(v14, v12, v10, a2, a3, a4, a5);
  if (v5)
  {
    swift_willThrow();
  }
}

void *sub_1000F4B24(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1[2] = sub_100100E34;
  v1[3] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1[4] = sub_100100E3C;
  v1[5] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1[6] = sub_100101530;
  v1[7] = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1[8] = sub_100100E58;
  v1[9] = v5;
  return v1;
}

uint64_t sub_1000F4C70(unint64_t a1, uint64_t (*a2)(uint64_t))
{

  result = a2(v5);
  *(v2 + 16) = result;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return v2;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v7 = result;
  if (!result)
  {
    return v2;
  }

LABEL_3:
  if (v7 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        ++v8;
        swift_weakAssign();
        swift_beginAccess();
        *(v9 + 64) = _swiftEmptyArrayStorage;
        swift_unknownObjectRelease();
      }

      while (v7 != v8);
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = *v10++;
        swift_weakAssign();
        swift_beginAccess();
        *(v11 + 64) = _swiftEmptyArrayStorage;

        --v7;
      }

      while (v7);
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F4E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(__n128), uint64_t (*a5)(char *), uint64_t (*a6)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - v13;
  a4(v12);
  if (*(a2 + 16) && (v15 = a5(v14), (v16 & 1) != 0))
  {
    v17 = *(*(a2 + 56) + 8 * v15);
    v18 = *(v11 + 8);

    v18(v14, v10);
    v19 = sub_10000FA7C(v17, a6);

    return v19;
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    return 0;
  }
}

uint64_t sub_1000F4F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  result = a4();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(a3 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(a2 + 16))
  {
    return *(a2 + 16 * v9 + 32) == a1;
  }

  __break(1u);
  return result;
}

void sub_1000F4FD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for IndexPath();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRITreeViewExpandedState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  sub_1000C8540(&unk_10076B770, &qword_10062FB68, sub_1000E8430, sub_1000E1A68);
  v44 = a1;
  v18 = sub_1000F4E08(a1, v17, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);

  if (!v18)
  {
    return;
  }

  v19 = qword_1007A84C0;
  swift_beginAccess();
  (*(v11 + 16))(v16, v18 + v19, v10);
  (*(v11 + 104))(v13, enum case for TTRITreeViewExpandedState.collapsed(_:), v10);
  LOBYTE(v19) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v16, v10);
  if ((v19 & 1) == 0)
  {

    return;
  }

  v21 = sub_1000C8540(&unk_10076B770, &qword_10062FB68, sub_1000E8430, sub_1000E1A68);
  sub_1000C7C38(v18, v21, v23, v24, v22 & 1, sub_1003B3EDC, sub_1000C77E8, v7);

  v26 = v47;
  v25 = v48;
  if ((*(v47 + 48))(v7, 1, v48) == 1)
  {
    sub_1000079B4(v7, &unk_100771B10, qword_10062E540);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100003E30(v27, qword_1007716F0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to find index path", v30, 2u);
    }

    return;
  }

  v31 = v46;
  (*(v26 + 32))(v46, v7, v25);
  v32 = swift_beginAccess();
  v33 = *(v18 + 64);
  if (v33 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_12;
    }
  }

  else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_1007716F0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Collapsed node should have no child nodes", v37, 2u);
    }
  }

  __chkstk_darwin(v32);
  *(&v43 - 4) = v3;
  *(&v43 - 3) = v18;
  v38 = v45;
  *(&v43 - 2) = v31;
  *(&v43 - 1) = v38;
  sub_1000CD5E4(sub_1000FD6C8, (&v43 - 6), 0, 0, 0, 0);
  v39 = *(v3 + qword_100771758);
  if (v39)
  {
    v40 = *(v39 + 16);

    if (v40(v41))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      (*(v39 + 240))(Strong, v44);
    }

    else
    {
    }
  }

  (*(v26 + 8))(v31, v25);
}

void sub_1000F56A8(void *a1)
{
  v1 = [a1 view];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
LABEL_8:

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v4 = *(v3 + qword_10078A548);
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  sub_1000C8050();
}

void sub_1000F578C(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for IndexPath();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  sub_1000C8540(&unk_10076B770, &qword_10062FB68, sub_1000E8430, sub_1000E1A68);
  v17 = sub_1000F4E08(a1, v16, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier, &TTRAccountsListsViewModel.Item.treeItemIdentifier.getter, sub_1003AB730, sub_10057E9A0);

  if (v17)
  {
    v18 = qword_1007A84C0;
    swift_beginAccess();
    (*(v10 + 16))(v15, v17 + v18, v9);
    (*(v10 + 104))(v12, enum case for TTRITreeViewExpandedState.expanded(_:), v9);
    LOBYTE(v18) = static TTRITreeViewExpandedState.== infix(_:_:)();
    v19 = *(v10 + 8);
    v19(v12, v9);
    v19(v15, v9);
    if (v18)
    {
      v20 = sub_1000C8540(&unk_10076B770, &qword_10062FB68, sub_1000E8430, sub_1000E1A68);
      sub_1000C7C38(v17, v20, v22, v23, v21 & 1, sub_1003B3EDC, sub_1000C77E8, v6);

      v25 = v36;
      v24 = v37;
      if ((*(v36 + 48))(v6, 1, v37) == 1)
      {
        sub_1000079B4(v6, &unk_100771B10, qword_10062E540);
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100003E30(v26, qword_1007716F0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Unable to find index path", v29, 2u);
        }
      }

      else
      {
        v30 = v34;
        v31 = (*(v25 + 32))(v34, v6, v24);
        __chkstk_darwin(v31);
        *(&v33 - 4) = v17;
        *(&v33 - 3) = v2;
        v32 = v35;
        *(&v33 - 2) = v30;
        *(&v33 - 1) = v32;
        sub_1000CD5E4(sub_1000FF810, (&v33 - 6), 0, 0, 0, 0);

        (*(v25 + 8))(v30, v24);
      }
    }

    else
    {
    }
  }
}

void sub_1000F5CF0(unint64_t a1, char a2, uint64_t a3)
{
  LOBYTE(v3) = a2;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v20 = a3;
      v6 = 0;
      v7 = a1 & 0xC000000000000001;
      do
      {
        if (v7)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v8 = *(a1 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        [v8 setUserInteractionEnabled:(v3 ^ 1) & 1];

        ++v6;
      }

      while (v10 != v5);
      if (v3)
      {
        v11 = 0.4;
      }

      else
      {
        v11 = 1.0;
      }

      if (v20)
      {
        goto LABEL_32;
      }

      for (i = 0; ; ++i)
      {
        if (v7)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v13 = *(a1 + 8 * i + 32);
        }

        v3 = v13;
        v14 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        [v13 setAlpha:v11];

        if (v14 == v5)
        {
          return;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v15 = a3;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v15;
      v5 = v16;
    }

    while (v16);
  }

  if (v3)
  {
    v11 = 0.4;
  }

  else
  {
    v11 = 1.0;
  }

  if (a3)
  {
LABEL_32:
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = v11;
    aBlock[4] = sub_1000FF804;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100715360;
    v19 = _Block_copy(aBlock);

    [v17 animateWithDuration:v19 animations:0.2];
    _Block_release(v19);
  }
}

void sub_1000F5F5C(void *a1, uint64_t a2)
{
  v316 = a1;
  v317 = a2;
  v289 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v288 = *(v289 - 8);
  __chkstk_darwin(v289);
  v290 = &v273 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for TTRIHashtagWrappingCollectionView.FocusStyle();
  v279 = *(v280 - 8);
  __chkstk_darwin(v280);
  v278 = &v273 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for TTRHashtagCollectionViewAllTagsButtonState();
  v276 = *(v277 - 8);
  __chkstk_darwin(v277);
  v275 = (&v273 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v287 = type metadata accessor for TTRAccountsListsViewModel.Hashtags();
  v286 = *(v287 - 8);
  __chkstk_darwin(v287);
  v285 = &v273 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = type metadata accessor for AppEntityID();
  v297 = *(v298 - 8);
  __chkstk_darwin(v298);
  v296 = &v273 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v302 = *(v300 - 8);
  __chkstk_darwin(v300);
  v301 = &v273 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.List();
  v9 = *(v8 - 8);
  v305 = v8;
  v306 = v9;
  __chkstk_darwin(v8);
  v303 = &v273 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v304 = &v273 - v12;
  v13 = sub_100058000(&qword_10076BC60, &qword_1006494F0);
  __chkstk_darwin(v13 - 8);
  v307 = &v273 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v308 = &v273 - v16;
  v17 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v310 = *(v17 - 8);
  v311 = v17;
  __chkstk_darwin(v17);
  v309 = &v273 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists();
  v314 = *(v19 - 8);
  v315 = v19;
  __chkstk_darwin(v19);
  v313 = &v273 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100058000(&qword_10076BE18, &qword_10062FFA0);
  __chkstk_darwin(v21 - 8);
  v274 = &v273 - v22;
  v284 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v283 = *(v284 - 8);
  __chkstk_darwin(v284);
  v282 = &v273 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100058000(&qword_10076BE20, &qword_10062FFA8);
  __chkstk_darwin(v24 - 8);
  v291 = &v273 - v25;
  v294 = type metadata accessor for TTRPermissionConfiguration.Header();
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v292 = &v273 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v273 = &v273 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v281 = &v273 - v31;
  __chkstk_darwin(v32);
  v299 = &v273 - v33;
  __chkstk_darwin(v34);
  v36 = &v273 - v35;
  __chkstk_darwin(v37);
  v39 = &v273 - v38;
  __chkstk_darwin(v40);
  v42 = &v273 - v41;
  __chkstk_darwin(v43);
  v45 = &v273 - v44;
  __chkstk_darwin(v46);
  v48 = &v273 - v47;
  __chkstk_darwin(v49);
  v295 = &v273 - v50;
  v52 = __chkstk_darwin(v51);
  v54 = &v273 - v53;
  v55 = *(v28 + 16);
  v55(&v273 - v53, v317, v27, v52);
  v56 = (*(v28 + 88))(v54, v27);
  if (v56 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (v55)(v48, v54, v27);
    (*(v28 + 96))(v48, v27);
    v57 = type metadata accessor for UUID();
    (*(*(v57 - 8) + 8))(v48, v57);
    v58 = v27;
    v59 = v28;
LABEL_77:
    (*(v59 + 8))(v54, v58);
    return;
  }

  v58 = v27;
  v59 = v28;
  if (v56 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
    goto LABEL_77;
  }

  if (v56 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    v60 = v58;
    (v55)(v45, v54, v58);
    v61 = *(v28 + 96);
    v62 = v60;
    v61(v45, v60);
    v64 = v313;
    v63 = v314;
    v65 = v315;
    (*(v314 + 32))(v313, v45, v315);
    type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
    v66 = v316;
    v67 = swift_dynamicCastClass();
    if (v67)
    {
      v68 = v67;
      v69 = v66;
      v70 = v312;
      TTRAccountsListsViewModel.PinnedLists.lists.getter();
      *&v68[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsViewPinnedListsCell_delegate + 8] = &off_100714E68;
      swift_unknownObjectWeakAssign();

      sub_100329E38(v71);
      v72 = v70;
      v73 = *&v70[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
      swift_allocObject();
      swift_weakInit();

      TTRAccountsListsPresenterCapability.loadSharingContactsDataIfNeeded(for:contactsDidLoad:)();

      v74 = *(v73 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
      if (v74 == 2)
      {
        LOBYTE(v74) = sub_100444328(v73);
      }

      sub_100329F14((v74 & 1) == 0);
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_10062D420;
      *(v75 + 32) = [v68 containerView];
      sub_1000F5CF0(v75, [v72 isEditing], 0);

      (*(v314 + 8))(v313, v315);
      v58 = v62;
    }

    else
    {
      (*(v63 + 8))(v64, v65);
      v58 = v62;
    }

    goto LABEL_77;
  }

  if (v56 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    v76 = v58;
    (v55)(v42, v54, v58);
    v77 = v76;
    (*(v28 + 96))(v42, v76);
    v79 = v309;
    v78 = v310;
    v80 = v311;
    (*(v310 + 32))(v309, v42, v311);
    type metadata accessor for TTRIAccountsListsViewListCell(0);
    v81 = v316;
    v82 = swift_dynamicCastClass();
    if (v82)
    {
      v83 = v82;
      v84 = v308;
      (*(v78 + 16))(v308, v79, v80);
      v85 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
      v86 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
      swift_beginAccess();
      v315 = v54;
      v317 = v59;
      v87 = v79;
      v88 = v307;
      sub_10000794C(v83 + v86, v307, &qword_10076BC60, &qword_1006494F0);
      swift_beginAccess();
      v89 = v81;
      sub_100019180(v84, v83 + v86, &qword_10076BC60, &qword_1006494F0);
      swift_endAccess();
      sub_1005E7270(v88);
      sub_1000079B4(v88, &qword_10076BC60, &qword_1006494F0);
      sub_1000079B4(v84, &qword_10076BC60, &qword_1006494F0);
      *(v83 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
      swift_unknownObjectWeakAssign();
      v90 = v89;
      sub_1004E11F4(1);

      (*(v78 + 8))(v87, v311);
      v58 = v77;
LABEL_12:
      v59 = v317;
      v54 = v315;
      goto LABEL_77;
    }

    (*(v78 + 8))(v79, v80);
LABEL_21:
    v58 = v77;
    goto LABEL_77;
  }

  if (v56 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_77;
  }

  if (v56 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    v91 = v58;
    v92 = v54;
    (v55)(v39, v54, v58);
    v93 = v91;
    (*(v28 + 96))(v39, v91);
    v95 = v305;
    v94 = v306;
    v96 = v304;
    (*(v306 + 32))(v304, v39, v305);
    type metadata accessor for TTRIAccountsListsViewListCell(0);
    v97 = v316;
    v98 = swift_dynamicCastClass();
    if (!v98)
    {
      (*(v94 + 8))(v96, v95);
      v58 = v93;
      v54 = v92;
      goto LABEL_77;
    }

    v99 = v98;
    v317 = v28;
    v314 = v93;
    v100 = v308;
    (*(v94 + 16))(v308, v96, v95);
    v101 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v101 - 8) + 56))(v100, 0, 1, v101);
    v102 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
    swift_beginAccess();
    v103 = v307;
    sub_10000794C(v99 + v102, v307, &qword_10076BC60, &qword_1006494F0);
    swift_beginAccess();
    v104 = v97;
    sub_100019180(v100, v99 + v102, &qword_10076BC60, &qword_1006494F0);
    swift_endAccess();
    v105 = v312;
    sub_1005E7270(v103);
    sub_1000079B4(v103, &qword_10076BC60, &qword_1006494F0);
    sub_1000079B4(v100, &qword_10076BC60, &qword_1006494F0);
    *(v99 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
    swift_unknownObjectWeakAssign();
    v106 = *&v105[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
    v107 = *(v106 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v107 == 2)
    {
      v108 = v104;
      if (!sub_100444328(v106))
      {
LABEL_18:
        v109 = 1;
        v59 = v317;
        v110 = v306;
        v111 = v304;
LABEL_35:
        sub_1004E11F4(v109);

        (*(v110 + 8))(v111, v95);
        v58 = v314;
        v54 = v92;
        goto LABEL_77;
      }
    }

    else
    {
      v157 = v104;
      if ((v107 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v111 = v304;
    v109 = TTRAccountsListsViewModel.List.sharingStatus.getter() == 3;
    v59 = v317;
    v110 = v306;
    goto LABEL_35;
  }

  v112 = v316;
  v113 = v306;
  if (v56 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    v114 = v58;
    v115 = v54;
    (v55)(v36, v54, v58);
    v116 = v114;
    (*(v59 + 96))(v36, v114);
    v117 = v303;
    v118 = v305;
    (*(v113 + 32))(v303, v36, v305);
    type metadata accessor for TTRIAccountsListsViewListCell(0);
    v119 = swift_dynamicCastClass();
    if (!v119)
    {
      (*(v113 + 8))(v117, v118);
      v58 = v114;
      v54 = v115;
      goto LABEL_77;
    }

    v120 = v119;
    v121 = v59;
    v314 = v116;
    v122 = v308;
    (*(v113 + 16))(v308, v117, v118);
    v123 = type metadata accessor for TTRIAccountsListsViewListCell.ListItem(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
    v124 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsViewListCell_listItem;
    swift_beginAccess();
    v125 = v307;
    sub_10000794C(v120 + v124, v307, &qword_10076BC60, &qword_1006494F0);
    swift_beginAccess();
    v126 = v112;
    sub_100019180(v122, v120 + v124, &qword_10076BC60, &qword_1006494F0);
    swift_endAccess();
    v127 = v312;
    sub_1005E7270(v125);
    sub_1000079B4(v125, &qword_10076BC60, &qword_1006494F0);
    sub_1000079B4(v122, &qword_10076BC60, &qword_1006494F0);
    *(v120 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
    swift_unknownObjectWeakAssign();
    v128 = *&v127[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
    v129 = *(v128 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
    if (v129 == 2)
    {
      v130 = v126;
      if (!sub_100444328(v128))
      {
LABEL_26:
        v131 = 1;
        v59 = v121;
        v132 = v306;
        v133 = v303;
LABEL_44:
        sub_1004E11F4(v131);

        (*(v132 + 8))(v133, v305);
        v58 = v314;
        v54 = v115;
        goto LABEL_77;
      }
    }

    else
    {
      v173 = v126;
      if ((v129 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v133 = v303;
    v131 = TTRAccountsListsViewModel.List.sharingStatus.getter() == 3;
    v59 = v121;
    v132 = v306;
    goto LABEL_44;
  }

  if (v56 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    v134 = v299;
    v135 = v58;
    (v55)(v299, v54, v58);
    v136 = *(v28 + 96);
    v314 = v135;
    v136(v134, v135);
    v137 = v302;
    v138 = v301;
    v139 = v300;
    (*(v302 + 32))(v301, v134, v300);
    type metadata accessor for TTRIAccountListsViewGroupCell(0);
    v140 = swift_dynamicCastClass();
    if (!v140)
    {
      (*(v137 + 8))(v138, v139);
      v58 = v314;
      goto LABEL_77;
    }

    v141 = v140;
    v317 = v59;
    v316 = v112;
    TTRAccountsListsViewModel.Group.name.getter();
    v142 = *(v141 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel);
    v143 = String._bridgeToObjectiveC()();

    [v142 setText:v143];

    v144 = TTRAccountsListsViewModel.Group.countText.getter();
    v146 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
    v147 = *(v141 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView);
    v148 = *&v147[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
    if (v148)
    {
      v149 = v144;
      v150 = v145;
      v315 = v54;
      v151 = v147;
      v152 = [v148 text];
      if (v152)
      {
        v153 = v152;
        v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v156 = v155;

        v139 = v300;
      }

      else
      {

        v154 = 0;
        v156 = 0xE000000000000000;
      }

      if (v154 == v149 && v156 == v150)
      {

        goto LABEL_60;
      }

      v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v181)
      {

        goto LABEL_60;
      }

      v182 = *(v141 + v146);
      v183 = *&v182[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
      if (v183)
      {
        v184 = v182;
        v185 = v183;
        v186 = String._bridgeToObjectiveC()();

        [v185 setText:v186];

LABEL_60:
        v187 = *(v141 + v146);
        v188 = objc_opt_self();
        v189 = v187;
        v190 = [v188 ttr_systemBlueColor];
        sub_1004B32C8(v190);

        *(v141 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
        swift_unknownObjectWeakAssign();
        v191 = v301;
        v192 = TTRAccountsListsViewModel.Group.count.getter();
        v193 = v141 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount;
        *v193 = v192;
        *(v193 + 8) = 0;
        v194 = v316;

        v195 = TTRAccountsListsViewModel.Group.listCount.getter();
        v196 = v141 + OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_ttriAccessibilityGroupListCount;
        *v196 = v195;
        *(v196 + 8) = 0;
        v197 = TTRAccountsListsViewModel.Group.objectID.getter();
        v198 = v197;
        v199 = OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_groupObjectID;
        v200 = *(v141 + OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_groupObjectID);
        *(v141 + OBJC_IVAR____TtC9Reminders29TTRIAccountListsViewGroupCell_groupObjectID) = v197;
        if (v200)
        {
          sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
          v201 = v198;
          v202 = v200;
          v203 = static NSObject.== infix(_:_:)();

          if (v203)
          {

            v59 = v317;
LABEL_69:

            (*(v302 + 8))(v191, v139);
            v58 = v314;
            v54 = v315;
            goto LABEL_77;
          }

          v205 = *(v141 + v199);
        }

        else
        {
          v204 = v197;
          v205 = v198;
        }

        v59 = v317;
        if (v205)
        {
          type metadata accessor for GroupEntity();
          v206 = v205;
          v207 = v296;
          AppEntityID.init(objectID:)();
          sub_1001013F4(&qword_10076BE30, &type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
          UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

          (*(v297 + 8))(v207, v298);
        }

        else
        {
          UIView.removeAssociatedAppEntity()();
        }

        v202 = v200;
        goto LABEL_69;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_113;
  }

  if (v56 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
  {
    goto LABEL_77;
  }

  if (v56 != enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
  {
    if (v56 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v56 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v56 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
    {
      goto LABEL_77;
    }

    if (v56 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
    {
      v174 = v281;
      v175 = v58;
      (v55)(v281, v54, v58);
      v169 = v175;
      (*(v28 + 96))(v174, v175);
      v163 = v286;
      v164 = v285;
      v166 = v287;
      (*(v286 + 32))(v285, v174, v287);
      type metadata accessor for TTRIHashtagCollectionCell();
      v176 = v316;
      if (!swift_dynamicCastClass())
      {
LABEL_74:
        (*(v163 + 8))(v164, v166);
        v58 = v169;
        goto LABEL_77;
      }

      sub_1001013F4(&qword_10076BE28, type metadata accessor for TTRIAccountsListsViewController, &unk_10062F9AC);
      v170 = v176;
      v177 = v312;
      TTRIHashtagCollectionCell.delegate.setter();
      v178 = static TTRLocalizableStrings.Hashtags.allTagsText.getter();
      v179 = v275;
      *v275 = v178;
      v179[1] = v180;
      (*(v276 + 104))(v179, enum case for TTRHashtagCollectionViewAllTagsButtonState.shown(_:), v277);
      TTRIHashtagCollectionCell.allTagsButtonState.setter();
      TTRIHashtagCollectionCell.allowsEmptySelection.setter();
      (*(v279 + 104))(v278, enum case for TTRIHashtagWrappingCollectionView.FocusStyle.selectionFollowsFocus(_:), v280);
      TTRIHashtagCollectionCell.hashtagFocusStyle.setter();
      TTRAccountsListsViewModel.Hashtags.labels.getter();
      TTRIHashtagCollectionCell.hashtagLabels.setter();
      TTRAccountsListsViewModel.Hashtags.isEnabled.getter();
      TTRIHashtagCollectionCell.isEnabled.setter();
LABEL_73:

      goto LABEL_74;
    }

    if (v56 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      v216 = v273;
      v217 = v58;
      (v55)(v273, v54, v58);
      v218 = v217;
      (*(v28 + 96))(v216, v217);
      v219 = v290;
      (*(v288 + 32))(v290, v216, v289);
      type metadata accessor for TTRIAccountsListsRecentlyDeletedCell(0);
      v220 = v316;
      v221 = swift_dynamicCastClass();
      if (!v221)
      {
        (*(v288 + 8))(v219, v289);
        v58 = v217;
        goto LABEL_77;
      }

      v222 = v221;
      v315 = v54;
      v317 = v59;
      *(v221 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
      swift_unknownObjectWeakAssign();
      v223 = v220;
      static TTRLocalizableStrings.RecentlyDeletedList.genericRecentlyDeletedTitle.getter();
      v224 = *(v222 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel);
      v225 = String._bridgeToObjectiveC()();

      [v224 setText:v225];

      v226 = TTRAccountsListsViewModel.RecentlyDeletedList.countText.getter();
      v228 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
      v229 = *(v222 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView);
      v230 = *&v229[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
      if (v230)
      {
        v231 = v226;
        v232 = v227;
        v233 = v229;
        v234 = [v230 text];
        if (v234)
        {
          v235 = v234;
          v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v238 = v237;
        }

        else
        {

          v236 = 0;
          v238 = 0xE000000000000000;
        }

        if (v236 == v231 && v238 == v232)
        {
        }

        else
        {
          v253 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v253)
          {
          }

          else
          {
            v254 = *(v222 + v228);
            v255 = *&v254[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
            if (!v255)
            {
LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

            v256 = v254;
            v257 = v255;
            v258 = String._bridgeToObjectiveC()();

            [v257 setText:v258];
          }
        }

        v259 = TTRAccountsListsViewModel.RecentlyDeletedList.count.getter();
        v260 = v222 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount;
        *v260 = v259;
        *(v260 + 8) = 0;
        v261 = *(*&v312[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
        if (v261 == 2)
        {
          LOBYTE(v261) = sub_100444328(*&v312[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter]);
        }

        sub_1004E11F4((v261 & 1) == 0);

        sub_10031E67C();
        (*(v288 + 8))(v290, v289);
        v58 = v218;
        goto LABEL_12;
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if (v56 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
    {
      goto LABEL_77;
    }

    if (v56 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_115;
    }

    v239 = v58;
    type metadata accessor for TTRIAccountsListsSuggestGroceriesCell(0);
    v240 = swift_dynamicCastClass();
    v58 = v239;
    if (!v240)
    {
      goto LABEL_77;
    }

    v241 = v240;
    v314 = v239;
    v315 = v54;
    v317 = v28;
    *(v240 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = &off_100714E40;
    swift_unknownObjectWeakAssign();
    v242 = v316;
    static TTRLocalizableStrings.SuggestGroceries.cellTitle.getter();
    v243 = *&v241[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
    v244 = String._bridgeToObjectiveC()();

    [v243 setText:v244];

    static TTRLocalizableStrings.SuggestGroceries.cellSubtitle.getter();
    v245 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel;
    v246 = [*&v241[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel] text];
    if (v246)
    {
      v247 = v246;
      v248 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v250 = v249;

      v251 = HIBYTE(v250) & 0xF;
      if ((v250 & 0x2000000000000000) == 0)
      {
        v251 = v248 & 0xFFFFFFFFFFFFLL;
      }

      v252 = v251 == 0;
    }

    else
    {
      v252 = 1;
    }

    v262 = *&v241[v245];
    v263 = String._bridgeToObjectiveC()();

    [v262 setText:v263];

    v264 = [*&v241[v245] text];
    if (v264)
    {
      v265 = v264;
      v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v268 = v267;

      v269 = HIBYTE(v268) & 0xF;
      if ((v268 & 0x2000000000000000) == 0)
      {
        v269 = v266 & 0xFFFFFFFFFFFFLL;
      }

      if ((v252 ^ (v269 != 0)))
      {
        goto LABEL_108;
      }
    }

    else if (v252)
    {
      goto LABEL_108;
    }

    v241[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 1;
    [v241 setNeedsLayout];
LABEL_108:

    sub_1002C57A0();
    v58 = v314;
    goto LABEL_12;
  }

  v158 = v295;
  v159 = v58;
  (v55)(v295, v54, v58);
  v77 = v159;
  (*(v59 + 96))(v158, v159);
  v160 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
  v161 = *(v160 - 8);
  v162 = (*(v161 + 88))(v158, v160);
  if (v162 == enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
  {
    (*(v161 + 96))(v158, v160);
    v163 = v293;
    v164 = v292;
    v165 = v158;
    v166 = v294;
    (*(v293 + 32))(v292, v165, v294);
    type metadata accessor for TTRIInlinePermissionHeaderViewCell();
    v167 = v316;
    if (swift_dynamicCastClass())
    {
      sub_1001013F4(&qword_10076BE38, type metadata accessor for TTRIAccountsListsViewController, &unk_10062F954);
      v168 = v167;
      v169 = v77;
      v170 = v168;
      v171 = v312;
      TTRIInlinePermissionHeaderViewCell.delegate.setter();
      v172 = v291;
      (*(v163 + 16))(v291, v164, v166);
      (*(v163 + 56))(v172, 0, 1, v166);
      TTRIInlinePermissionHeaderViewCell.configuration.setter();
      goto LABEL_73;
    }

LABEL_75:
    (*(v163 + 8))(v164, v166);
    goto LABEL_21;
  }

  v208 = v316;
  if (v162 == enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
  {
    (*(v161 + 96))(v158, v160);
    v163 = v283;
    v164 = v282;
    v209 = v158;
    v166 = v284;
    (*(v283 + 32))(v282, v209, v284);
    type metadata accessor for TTRIInlinePermissionPrimaryButtonViewCell();
    if (swift_dynamicCastClass())
    {
      sub_1001013F4(&qword_10076BE38, type metadata accessor for TTRIAccountsListsViewController, &unk_10062F954);
      v210 = v208;
      v169 = v77;
      v170 = v210;
      v211 = v312;
      TTRIInlinePermissionPrimaryButtonViewCell.delegate.setter();
      v212 = v274;
      (*(v163 + 16))(v274, v164, v166);
      (*(v163 + 56))(v212, 0, 1, v166);
      TTRIInlinePermissionPrimaryButtonViewCell.configuration.setter();
      goto LABEL_73;
    }

    goto LABEL_75;
  }

  v213 = v77;
  v214 = enum case for TTRAccountsListsViewModel.PermissionRequest.combined(_:);
  v215 = v162;
  (*(v161 + 8))(v158, v160);
  v58 = v213;
  if (v215 == v214)
  {
    goto LABEL_77;
  }

LABEL_115:
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v270 = type metadata accessor for Logger();
  sub_100003E30(v270, qword_10076B2A0);
  v271 = sub_100008E04(_swiftEmptyArrayStorage);
  v272 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2uLL, v271, v272);
  __break(1u);
}

void sub_1000F8318(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14, v16);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    (*(v11 + 8))(v14, v10);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    TTRAccountsListsViewModel.List.canEdit.getter();
    (*(v7 + 8))(v9, v6);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v5, v14, v2);
    TTRAccountsListsViewModel.Group.canEdit.getter();
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_5:
    (*(v11 + 8))(v14, v10);
  }

  else if (v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_10076B2A0);
    v18 = sub_100008E04(_swiftEmptyArrayStorage);
    v19 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v18, v19);
    __break(1u);
  }
}

void sub_1000F882C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a1 == 1)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = v13;
    *(v15 + 3) = &protocol witness table for MainActor;
    *(v15 + 4) = v12;
    (*(v5 + 32))(&v15[v14], v7, v4);

    sub_10009E31C(0, 0, v10, &unk_10062FFB0, v15);
  }

  else
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10076B2A0);
    v21 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v21, v17, "table tried to do something we don't understand", v18, 2u);
    }

    v19 = v21;
  }
}

void sub_1000F8B4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.List();
  v52 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v2;
  if (([v2 isEditing] & 1) == 0)
  {
    v54 = _swiftEmptyArrayStorage;
    v17 = *(v8 + 16);
    v48 = a1;
    v18 = a1;
    v19 = v17;
    v17(v12, v18, v7);
    v20 = (*(v8 + 88))(v12, v7);
    if (v20 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v8 + 96))(v12, v7);
      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 8))(v12, v21);
LABEL_9:
      sub_100003540(0, &qword_10076BC40, UIContextualAction_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [objc_opt_self() configurationWithActions:isa];

      return;
    }

    if (v20 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
LABEL_8:
      (*(v8 + 8))(v12, v7);
      goto LABEL_9;
    }

    if (v20 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
      (*(v8 + 96))(v12, v7);
      (*(v52 + 32))(v16, v12, v13);
      TTRAccountsListsViewModel.List.pinState.getter();
      v27 = v51;
      v28 = (*(v51 + 88))(v6, v4);
      if (v28 == enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
      {
        (*(v52 + 8))(v16, v13);
        (*(v27 + 96))(v6, v4);
        if ((*v6 & 1) == 0)
        {
          v29 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v30 = v49;
          v19(v49, v48, v7);
          v31 = (*(v8 + 80) + 24) & ~*(v8 + 80);
          v32 = swift_allocObject();
          *(v32 + 16) = v29;
          (*(v8 + 32))(v32 + v31, v30, v7);
          aBlock[4] = sub_100101200;
          aBlock[5] = v32;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100422764;
          aBlock[3] = &unk_100715888;
          v33 = _Block_copy(aBlock);
          v34 = objc_opt_self();

          v35 = [v34 contextualActionWithStyle:0 title:0 handler:v33];
          _Block_release(v33);

          v36 = String._bridgeToObjectiveC()();
          v37 = [objc_opt_self() _systemImageNamed:v36];

          if (v37)
          {
            v38 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
            v39 = [v37 imageWithConfiguration:v38];

            if (v39)
            {
              v40 = objc_opt_self();
              v39 = v39;
              v41 = [v40 mainBundle];
              v55._object = 0x80000001006718E0;
              v42._countAndFlagsBits = 7235920;
              v42._object = 0xE300000000000000;
              v43._countAndFlagsBits = 0;
              v43._object = 0xE000000000000000;
              v55._countAndFlagsBits = 0xD00000000000002BLL;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, v55);

              v44 = String._bridgeToObjectiveC()();

              [v39 setAccessibilityLabel:v44];
            }
          }

          else
          {
            v39 = 0;
          }

          [v35 setImage:v39];
          v45 = [objc_opt_self() ttr_systemYellowColor];
          [v35 setBackgroundColor:v45];

          v46 = v35;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        goto LABEL_9;
      }

      if (v28 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
      {
        (*(v52 + 8))(v16, v13);
        goto LABEL_9;
      }

      if (qword_100766F00 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100003E30(v47, qword_10076B2A0);
      v24 = sub_100008E04(_swiftEmptyArrayStorage);
      v25 = sub_100008E04(_swiftEmptyArrayStorage);
      v26 = "Unknown pin state";
    }

    else
    {
      if (v20 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
      {
        goto LABEL_8;
      }

      if (v20 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v20 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        goto LABEL_9;
      }

      if (qword_100766F00 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100003E30(v23, qword_10076B2A0);
      v24 = sub_100008E04(_swiftEmptyArrayStorage);
      v25 = sub_100008E04(_swiftEmptyArrayStorage);
      v26 = "Unknown item type";
    }

    sub_1003F9818(v26, 17, 2uLL, v24, v25);
    __break(1u);
  }
}

id sub_1000F94F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = [v2 isEditing];
  result = 0;
  if ((v7 & 1) == 0)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = *(v5 + 16);
    v57 = v5 + 16;
    v58 = a1;
    v56 = v10;
    v10(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v11 = *(v5 + 80);
    v12 = (v11 + 24) & ~v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v14 = *(v5 + 32);
    v59 = v5 + 32;
    v55 = v14;
    v14(v13 + v12, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v64 = sub_100100E88;
    v65 = v13;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v51 = &v62;
    v62 = sub_100422764;
    v63 = &unk_100715798;
    v15 = _Block_copy(&aBlock);
    v16 = objc_opt_self();

    v52 = v16;
    v54 = [v16 contextualActionWithStyle:1 title:0 handler:v15];
    _Block_release(v15);

    v17 = String._bridgeToObjectiveC()();
    v50 = objc_opt_self();
    v18 = [v50 _systemImageNamed:v17];

    v19 = &selRef_layoutIfNeeded;
    if (v18)
    {
      v20 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
      v21 = [v18 imageWithConfiguration:v20];

      if (v21)
      {
        v22 = objc_opt_self();
        v23 = v21;
        v24 = [v22 mainBundle];
        v66._object = 0x80000001006718B0;
        v25._countAndFlagsBits = 0x6574656C6544;
        v66._countAndFlagsBits = 0xD00000000000002CLL;
        v25._object = 0xE600000000000000;
        v26._countAndFlagsBits = 0;
        v26._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v66);

        v18 = v23;
        v19 = &selRef_layoutIfNeeded;
        v27 = String._bridgeToObjectiveC()();

        [v18 setAccessibilityLabel:v27];
      }

      else
      {
        v18 = 0;
      }
    }

    v53 = v18;
    [v54 setImage:{v18, ~v11}];
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = v58;
    v56(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v4);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    v55(v30 + v12, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v64 = sub_100100F24;
    v65 = v30;
    aBlock = _NSConcreteStackBlock;
    v61 = 1107296256;
    v62 = sub_100422764;
    v63 = &unk_1007157E8;
    v31 = _Block_copy(&aBlock);

    v32 = [v52 contextualActionWithStyle:0 title:0 handler:v31];
    _Block_release(v31);

    sub_1000BA904(v29);
    v33 = String._bridgeToObjectiveC()();
    v34 = [v50 _systemImageNamed:v33];

    if (v34)
    {
      v35 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
      v36 = [v34 v19[275]];

      if (v36)
      {
        v34 = v36;
        v37 = String._bridgeToObjectiveC()();

        [v34 setAccessibilityLabel:v37];
      }

      else
      {

        v34 = 0;
      }
    }

    else
    {
    }

    [v32 setImage:v34];
    v38 = [objc_opt_self() tertiaryLabelColor];
    [v32 setBackgroundColor:v38];

    v56(&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v4);
    v39 = (v11 + 16) & v49;
    v40 = swift_allocObject();
    v55(v40 + v39, &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v41 = static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)();

    sub_100058000(&qword_10076BDF8, &qword_10062FF80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10062D3F0;
    v43 = v54;
    *(v42 + 32) = v54;
    *(v42 + 40) = v32;
    aBlock = v42;
    v44 = v43;
    v45 = v32;
    sub_100058000(&qword_10076BE00, &qword_10062FF88);
    sub_100003540(0, &qword_10076BC40, UIContextualAction_ptr);
    sub_10000E188(&qword_10076BE08, &qword_10076BE00, &qword_10062FF88, &protocol conformance descriptor for [A]);
    v46 = Sequence.removingNils<A>()();

    aBlock = v46;
    sub_100081654(v41);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v48 = [objc_opt_self() configurationWithActions:isa];

    return v48;
  }

  return result;
}

uint64_t sub_1000F9D34()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100100E80;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100715748;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001013F4(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100058000(&qword_100780A50, &qword_100635D30);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

void sub_1000FA02C(uint64_t a1)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v4 + 96))(v7, v3);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v7, v9);
    return;
  }

  if (v8 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v8 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v8 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_8;
  }

  if (v8 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_5;
  }

  if (v8 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v8 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v8 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_8;
  }

  if (v8 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v8 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v8 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v8 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v8 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v8 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
  {
LABEL_5:
    (*(v4 + 8))(v7, v3);
    return;
  }

  if (v8 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_8:
    (*(v4 + 8))(v7, v3);
LABEL_9:
    [v1 isEditing];
    return;
  }

  if (v8 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
  {
    if (v8 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_9;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_10076B2A0);
    v13 = sub_100008E04(_swiftEmptyArrayStorage);
    v14 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v13, v14);
    __break(1u);
  }
}

_BYTE *sub_1000FA380(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_10076BDB8, &qword_10062FF58);
  __chkstk_darwin(v5 - 8);
  v148 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v149 = &v145 - v8;
  v9 = sub_100058000(&qword_10076BDC0, &unk_10062FF60);
  __chkstk_darwin(v9 - 8);
  v11 = &v145 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation();
  v147 = *(v12 - 1);
  __chkstk_darwin(v12);
  v14 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRAccountsListsViewModel.HashtagsSection();
  v150 = *(v15 - 8);
  v151 = v15;
  __chkstk_darwin(v15);
  v152 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRCloudKitNetworkActivityMonitor.Activity();
  v155 = *(v17 - 8);
  v156 = v17;
  __chkstk_darwin(v17);
  v158 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRCloudKitMigrationManager.MigrationState();
  v153 = *(v19 - 8);
  v154 = v19;
  __chkstk_darwin(v19);
  v157 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v22 = *(v21 - 8);
  v159 = v21;
  v160 = v22;
  __chkstk_darwin(v21);
  v24 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v161 = &v145 - v26;
  v27 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, a2, v27, v29);
  v32 = (*(v28 + 88))(v31, v27);
  if (v32 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v28 + 96))(v31, v27);
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 8))(v31, v33);
    return 0;
  }

  if (v32 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v32 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v32 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
LABEL_6:
    (*(v28 + 8))(v31, v27);
    return 0;
  }

  if (v32 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    v145 = v2;
    (*(v28 + 96))(v31, v27);
    v35 = v160;
    v36 = v161;
    v37 = v159;
    v160[4](v161, v31, v159);
    if ((TTRAccountsListsViewModel.Account.wantsSectionHeader.getter() & 1) == 0)
    {
      (v35[1])(v36, v37);
      return 0;
    }

    result = type metadata accessor for TTRIAccountsListsSectionHeaderView(0);
    v38 = *(a1 + qword_10078A540);
    if (v38)
    {
      v39 = v38;
      v40 = UITableView.dequeueReusableHeaderFooterView<A>(_:)();

      TTRAccountsListsViewModel.Account.name.getter();
      v41 = *&v40[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView];
      v11 = String._bridgeToObjectiveC()();

      [v41 setText:v11];

      v42 = TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
      v43 = &v40[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_identifier];
      *v43 = v42;
      v43[1] = v44;

      *&v40[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate + 8] = &off_100714F48;
      swift_unknownObjectWeakAssign();
      v45 = TTRAccountsListsViewModel.Account.showsUpgradeForLocalOnlyAccount.getter();
      v46 = v40[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount];
      v146 = v40;
      v40[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_showUpgradeForLocalOnlyAccount] = v45 & 1;
      if ((v45 & 1) != v46)
      {
        sub_100336E24();
      }

      v47 = TTRAccountsListsViewModel.Account.isShownInUpgradeHintCard.getter();
      v48 = v146[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount];
      v146[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_upgradeHintCardShowingForAccount] = v47 & 1;
      if ((v47 & 1) != v48)
      {
        sub_100336E24();
      }

      v49 = v157;
      TTRAccountsListsViewModel.Account.migrationState.getter();
      v50 = v146;
      sub_100333A5C(v49);
      v51 = v158;
      TTRAccountsListsViewModel.Account.networkActivity.getter();
      sub_100333C6C(v51);
      v52 = TTRAccountsListsViewModel.Account.objectID.getter();
      v53 = *&v50[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID];
      *&v50[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID] = v52;

      v54 = TTRAccountsListsViewModel.Account.isTheOnlyAccount.getter();
      v28 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl;
      v55 = v50[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl];
      v50[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl] = (v54 & 1) == 0;
      if ((v54 & 1) != v55)
      {
        goto LABEL_51;
      }

      [*&v50[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView] setHidden:?];
      v56 = *&v146[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers];
      if (!(v56 >> 62))
      {
        v14 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

        if (v14)
        {
          v57 = 0;
          v12 = &selRef_layoutIfNeeded;
          while (1)
          {
            if ((v56 & 0xC000000000000001) != 0)
            {
              v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v57 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_76;
              }

              v58 = *(v56 + 8 * v57 + 32);
            }

            v11 = v58;
            v59 = (v57 + 1);
            if (__OFADD__(v57, 1))
            {
              break;
            }

            [v58 setEnabled:v146[v28]];

            ++v57;
            if (v59 == v14)
            {
              goto LABEL_50;
            }
          }

          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_50:

        v50 = v146;
        v37 = v159;
LABEL_51:
        v81 = *&v50[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migratingSpinner];
        if (v81)
        {
          v82 = [v81 isHidden];
        }

        else
        {
          v82 = 1;
        }

        v83 = TTRAccountsListsViewModel.Account.objectID.getter();
        v84 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_accountSpinnerVisibleByAccountID;
        v85 = v145;
        swift_beginAccess();
        v86 = *(v85 + v84);
        if (*(v86 + 16) && (v87 = sub_1002613B0(v83), v85 = v145, (v88 & 1) != 0))
        {
          v89 = *(*(v86 + 56) + v87);
          swift_endAccess();

          if (v82 == v89)
          {
LABEL_57:
            v90 = v85;
            v91 = v161;
            v92 = TTRAccountsListsViewModel.Account.objectID.getter();
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v163 = *(v90 + v84);
            *(v90 + v84) = 0x8000000000000000;
            sub_1001278A8(v82 ^ 1, v92, isUniquelyReferenced_nonNull_native);

            *(v90 + v84) = v163;
            swift_endAccess();
            if (qword_100766F00 != -1)
            {
              swift_once();
            }

            v94 = type metadata accessor for Logger();
            sub_100003E30(v94, qword_10076B2A0);
            v95 = v160;
            v160[2](v24, v91, v37);
            v96 = v146;
            v97 = Logger.logObject.getter();
            v98 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              LODWORD(v151) = v98;
              v101 = v100;
              v150 = v100;
              v152 = swift_slowAlloc();
              v162[0] = v152;
              *v99 = 138413058;
              v102 = TTRAccountsListsViewModel.Account.objectID.getter();
              v160 = v95[1];
              (v160)(v24, v37);
              *(v99 + 4) = v102;
              *v101 = v102;
              *(v99 + 12) = 2080;
              if (v82)
              {
                v103 = 0x65736C6166;
              }

              else
              {
                v103 = 1702195828;
              }

              if (v82)
              {
                v104 = 0xE500000000000000;
              }

              else
              {
                v104 = 0xE400000000000000;
              }

              v105 = sub_100004060(v103, v104, v162);

              *(v99 + 14) = v105;
              *(v99 + 22) = 2080;
              v106 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_migrateButtonState;
              swift_beginAccess();
              v107 = v153;
              v108 = &v96[v106];
              v109 = v157;
              v110 = v154;
              (*(v153 + 16))(v157, v108, v154);
              v111 = TTRCloudKitMigrationManager.MigrationState.description.getter();
              v113 = v112;
              (*(v107 + 8))(v109, v110);
              v114 = sub_100004060(v111, v113, v162);

              *(v99 + 24) = v114;
              *(v99 + 32) = 2080;
              v115 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_networkActivityState;
              swift_beginAccess();
              v116 = v155;
              v117 = &v96[v115];
              v118 = v158;
              v119 = v156;
              (*(v155 + 16))(v158, v117, v156);
              v120 = TTRCloudKitNetworkActivityMonitor.Activity.description.getter();
              v122 = v121;
              (*(v116 + 8))(v118, v119);
              v123 = sub_100004060(v120, v122, v162);

              *(v99 + 34) = v123;
              _os_log_impl(&_mh_execute_header, v97, v151, "TTRIAccountsListsViewController: update account spinner {account: %@, spinnerVisible: %s, migrationState: %s, networkActivityState: %s}", v99, 0x2Au);
              sub_1000079B4(v150, &unk_10076DF80, &qword_10062F730);

              swift_arrayDestroy();

              (v160)(v161, v159);
            }

            else
            {

              v124 = v95[1];
              (v124)(v24, v37);
              (v124)(v91, v37);
            }

            return v146;
          }
        }

        else
        {

          swift_endAccess();
          if ((v82 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        (v160[1])(v161, v37);
        return v146;
      }

LABEL_90:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_19;
    }

    __break(1u);
LABEL_95:
    __break(1u);
    return result;
  }

  if (v32 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v32 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v32 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v32 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v32 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v32 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v32 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
  {
    goto LABEL_6;
  }

  if (v32 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
  {
    v145 = v2;
    (*(v28 + 96))(v31, v27);
    (*(v150 + 32))(v152, v31, v151);
    result = type metadata accessor for TTRIAccountsListsTagsSectionHeaderView(0);
    v60 = *(a1 + qword_10078A540);
    if (v60)
    {
      v61 = v60;
      v62 = UITableView.dequeueReusableHeaderFooterView<A>(_:)();

      v63 = v62;
      TTRAccountsListsViewModel.HashtagsSection.title.getter();
      v64 = *&v63[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView];
      v65 = String._bridgeToObjectiveC()();

      [v64 setText:v65];

      v66 = TTRAccountsListsViewModel.Item.accessibilityIdentifier.getter();
      v67 = &v63[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_identifier];
      *v67 = v66;
      v67[1] = v68;

      v69 = &v63[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate];
      *&v63[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_delegate + 8] = 0;
      swift_unknownObjectWeakAssign();
      v70 = v157;
      (*(v153 + 104))(v157, enum case for TTRCloudKitMigrationManager.MigrationState.notAvailable(_:), v154);
      sub_100333A5C(v70);
      v71 = v158;
      (*(v155 + 104))(v158, enum case for TTRCloudKitNetworkActivityMonitor.Activity.none(_:), v156);
      sub_100333C6C(v71);
      v72 = *&v63[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID];
      *&v63[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_accountID] = 0;

      v73 = v63[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl];
      v146 = v63;
      v161 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl;
      v63[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_hasDisclosureControl] = 1;
      if (v73)
      {
        goto LABEL_78;
      }

      v160 = v69;
      v74 = v146;
      [*&v146[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_disclosureView] setHidden:0];
      v75 = *&v74[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_collapseGestureRecognizers];
      if (v75 >> 62)
      {
        goto LABEL_93;
      }

      for (i = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {

        if (!i)
        {
          break;
        }

        v77 = 0;
        while (1)
        {
          if ((v75 & 0xC000000000000001) != 0)
          {
            v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v77 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_92;
            }

            v78 = *(v75 + 8 * v77 + 32);
          }

          v79 = v78;
          v80 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          [v78 setEnabled:v161[v146]];

          ++v77;
          if (v80 == i)
          {
            goto LABEL_77;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        ;
      }

LABEL_77:

      v69 = v160;
LABEL_78:
      v69[1] = &off_100714F48;
      v125 = v145;
      swift_unknownObjectWeakAssign();

      v126 = *(v125 + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter);
      v127 = *(v126 + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_isRootViewCollapsedSnapshot);
      if (v127 == 2)
      {
        v128 = sub_100444328(v126);
        v129 = v152;
        if (v128)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v129 = v152;
        if (v127)
        {
          goto LABEL_84;
        }
      }

      TTRAccountsListsViewModel.HashtagsSection.filterOperation.getter();
      if ((*(v147 + 48))(v11, 1, v12) != 1)
      {
        v135 = v147;
        (*(v147 + 32))(v14, v11, v12);
        v136 = TTRAccountsListsViewModel.HashtagFilterOperation.menuItems.getter();
        __chkstk_darwin(v136);
        *(&v145 - 2) = v14;
        sub_100399058(sub_100100E60, (&v145 - 4), v136);

        type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
        sub_1001013F4(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option, &protocol conformance descriptor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
        v137 = v149;
        TTRValueBasedMenu.init(children:)();
        v138 = sub_100058000(&qword_10076BDC8, &unk_100649EF0);
        (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
        v139 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
        v140 = v146;
        swift_beginAccess();
        v141 = v148;
        sub_10000794C(&v140[v139], v148, &qword_10076BDB8, &qword_10062FF58);
        swift_beginAccess();
        sub_100019180(v137, &v140[v139], &qword_10076BDB8, &qword_10062FF58);
        swift_endAccess();
        sub_10039A538(v141);
        sub_1000079B4(v141, &qword_10076BDB8, &qword_10062FF58);
        sub_1000079B4(v137, &qword_10076BDB8, &qword_10062FF58);
        (*(v150 + 8))(v152, v151);
        (*(v135 + 8))(v14, v12);
        return v140;
      }

      sub_1000079B4(v11, &qword_10076BDC0, &unk_10062FF60);
      v129 = v152;
LABEL_84:
      v130 = sub_100058000(&qword_10076BDC8, &unk_100649EF0);
      v131 = v149;
      (*(*(v130 - 8) + 56))(v149, 1, 1, v130);
      v132 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
      v133 = v146;
      swift_beginAccess();
      v134 = v148;
      sub_10000794C(&v133[v132], v148, &qword_10076BDB8, &qword_10062FF58);
      swift_beginAccess();
      sub_100019180(v131, &v133[v132], &qword_10076BDB8, &qword_10062FF58);
      swift_endAccess();
      sub_10039A538(v134);
      sub_1000079B4(v134, &qword_10076BDB8, &qword_10062FF58);
      sub_1000079B4(v131, &qword_10076BDB8, &qword_10062FF58);
      (*(v150 + 8))(v129, v151);
      return v133;
    }

    goto LABEL_95;
  }

  if (v32 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v32 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
    goto LABEL_6;
  }

  if (v32 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
  {
    return 0;
  }

  v142 = v32 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:);
  result = 0;
  if (!v142)
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v143 = type metadata accessor for Logger();
    v56 = sub_100003E30(v143, qword_10076B2A0);
    v24 = sub_100008E04(_swiftEmptyArrayStorage);
    v144 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v24, v144);
    __break(1u);
    goto LABEL_90;
  }

  return result;
}

void sub_1000FB884(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v7 + 96))(v10, v6);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v10, v12);
    return;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    goto LABEL_7;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    TTRAccountsListsViewModel.Account.wantsSectionHeader.getter();
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_7;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
  {
LABEL_15:
    (*(v7 + 8))(v10, v6);
    return;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
  {
    goto LABEL_7;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
  {
    goto LABEL_15;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_7:
    (*(v7 + 8))(v10, v6);
  }

  else if (v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_10076B2A0);
    v14 = sub_100008E04(_swiftEmptyArrayStorage);
    v15 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2uLL, v14, v15);
    __break(1u);
  }
}

void sub_1000FBCDC(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Tip();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v68 = *(v4 - 8);
  __chkstk_darwin(v4);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v69 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v72 = *(v11 - 8);
  v73 = v11;
  __chkstk_darwin(v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRPermissionConfiguration.PrimaryButton();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRPermissionConfiguration.Header();
  v64 = *(v16 - 8);
  v65 = v16;
  __chkstk_darwin(v16);
  v63 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v66 = &v55 - v23;
  v25 = __chkstk_darwin(v24);
  v27 = &v55 - v26;
  v28 = *(v19 + 16);
  v28(&v55 - v26, a1, v18, v25);
  v29 = (*(v19 + 88))(v27, v18);
  if (v29 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (v28)(v21, v27, v18);
    (*(v19 + 96))(v21, v18);
    v30 = type metadata accessor for UUID();
    (*(*(v30 - 8) + 8))(v21, v30);
    goto LABEL_32;
  }

  v56 = v4;
  v76 = v27;
  v77 = v18;
  if (v29 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
    goto LABEL_31;
  }

  v27 = v76;
  v18 = v77;
  if (v29 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
LABEL_32:
    (*(v19 + 8))(v27, v18);
    return;
  }

  if (v29 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    v27 = v76;
    v18 = v77;
    (v28)(v21, v76, v77);
    (*(v19 + 96))(v21, v18);
    v31 = v72;
    v32 = v21;
    v33 = v73;
    (*(v72 + 32))(v13, v32, v73);
    TTRAccountsListsViewModel.SmartList.type.getter();
    TTRListType.PredefinedSmartListType.longTitle.getter();
    (*(v74 + 8))(v10, v75);
    (*(v31 + 8))(v13, v33);
    goto LABEL_32;
  }

  if (v29 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_31;
  }

  v27 = v76;
  v18 = v77;
  if (v29 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v29 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    (v28)(v21, v76, v77);
    (*(v19 + 96))(v21, v18);
    v34 = v69;
    v35 = v70;
    v36 = v71;
    (*(v70 + 32))(v69, v21, v71);
    TTRAccountsListsViewModel.List.name.getter();
LABEL_12:
    (*(v35 + 8))(v34, v36);
    goto LABEL_32;
  }

  if (v29 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    (v28)(v21, v76, v77);
    (*(v19 + 96))(v21, v18);
    v37 = v67;
    v38 = v68;
    (*(v68 + 32))(v67, v21, v56);
    static TTRAccesibility.AccountsList.Format.GroupName.getter();
    sub_100058000(&unk_100786CB0, &qword_100636EF0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10062D400;
    v40 = TTRAccountsListsViewModel.Group.name.getter();
    v42 = v41;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_10005C390();
    *(v39 + 32) = v40;
    *(v39 + 40) = v42;
    String.init(format:_:)();

    (*(v38 + 8))(v37, v56);
    goto LABEL_32;
  }

  if (v29 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:))
  {
    goto LABEL_32;
  }

  if (v29 != enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
  {
    if (v29 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:))
    {
      goto LABEL_32;
    }

    if (v29 == enum case for TTRAccountsListsViewModel.Item.tip(_:))
    {
      (v28)(v21, v76, v77);
      (*(v19 + 96))(v21, v18);
      v34 = v60;
      v35 = v61;
      v36 = v62;
      (*(v61 + 32))(v60, v21, v62);
      TTRAccountsListsViewModel.Tip.name.getter();
      goto LABEL_12;
    }

    if (v29 != enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) && v29 != enum case for TTRAccountsListsViewModel.Item.hashtags(_:) && v29 != enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:) && v29 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
    {
      v27 = v76;
      v18 = v77;
      if (v29 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }

LABEL_31:
    v27 = v76;
    v18 = v77;
    goto LABEL_32;
  }

  v43 = v66;
  (v28)(v66, v76, v77);
  (*(v19 + 96))(v43, v18);
  v44 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 88))(v43, v44);
  if (v46 == enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
  {
    (*(v45 + 96))(v43, v44);
    v47 = v63;
    v48 = v64;
    v49 = v65;
    (*(v64 + 32))(v63, v43, v65);
    TTRPermissionConfiguration.Header.title.getter();
LABEL_24:
    (*(v48 + 8))(v47, v49);
    goto LABEL_31;
  }

  if (v46 == enum case for TTRAccountsListsViewModel.PermissionRequest.primaryButton(_:))
  {
    (*(v45 + 96))(v43, v44);
    v47 = v57;
    v48 = v58;
    v49 = v59;
    (*(v58 + 32))(v57, v43, v59);
    TTRPermissionConfiguration.PrimaryButton.title.getter();
    goto LABEL_24;
  }

  v50 = enum case for TTRAccountsListsViewModel.PermissionRequest.combined(_:);
  v51 = v46;
  (*(v45 + 8))(v43, v44);
  v27 = v76;
  v18 = v77;
  if (v51 == v50)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (qword_100766F00 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100003E30(v52, qword_10076B2A0);
  v53 = sub_100008E04(_swiftEmptyArrayStorage);
  v54 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2uLL, v53, v54);
  __break(1u);
}

void sub_1000FC838(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14, v16);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_7;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    TTRAccountsListsViewModel.List.pinState.getter();
    v17 = TTRAccountsListsViewModel.List.PinState.isPinned.getter();
    (*(v3 + 8))(v5, v2);
    if ((v17 & 1) == 0)
    {
      v18._object = 0x8000000100671790;
      v19._countAndFlagsBits = 0xD000000000000035;
      v19._object = 0x80000001006717B0;
      v18._countAndFlagsBits = 0xD00000000000001CLL;
      TTRLocalizedString(_:comment:)(v18, v19);
    }

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (v15 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v11 + 8))(v14, v10);
      return;
    }

    if (v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_100766F00 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003E30(v20, qword_10076B2A0);
      v21 = sub_100008E04(_swiftEmptyArrayStorage);
      v22 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2uLL, v21, v22);
      __break(1u);
    }
  }
}

void sub_1000FCD64(uint64_t a1)
{
  v55 = a1;
  v2 = type metadata accessor for TTRIAccountsListsSelection(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v52 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v54 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v59 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v47 - v10;
  v11 = sub_100058000(&unk_10076B7C0, &unk_10062FBA0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v47 - v12);
  v14 = type metadata accessor for REMHashtagLabelSpecifier();
  v60 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  v53 = v1;
  sub_1000B3FE8(v13);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_1000079B4(v13, &unk_10076B7C0, &unk_10062FBA0);
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_100100B78(v13, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  v23 = v60;
  (*(v60 + 32))(v22, v13, v14);
  v24 = *(v23 + 16);
  v24(v19, v22, v14);
  v25 = (*(v23 + 88))(v19, v14);
  if (v25 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    if (v25 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v25 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      (*(v23 + 8))(v22, v14);
      return;
    }

    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100003E30(v42, qword_10076B2A0);
    v43 = sub_100008E04(_swiftEmptyArrayStorage);
    v44 = sub_100008E04(_swiftEmptyArrayStorage);
    v45 = "Unknown selection type";
    goto LABEL_23;
  }

  v48 = v25;
  v49 = v24;
  (*(v23 + 96))(v19, v14);
  v26 = *v19;
  v50 = *(v19 + 1);
  v51 = v26;
  v47 = sub_100058000(&qword_10076B830, &qword_100630550);
  v27 = v56;
  (*(v59 + 32))(v58, &v19[*(v47 + 64)], v56);
  v28 = v54;
  (*(v54 + 16))(v7, v55, v5);
  v29 = (*(v28 + 88))(v7, v5);
  if (v29 == enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.any(_:))
  {
    v30 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
    v31 = v59;
    v32 = v57;
    goto LABEL_13;
  }

  v32 = v57;
  if (v29 != enum case for TTRAccountsListsViewModel.HashtagFilterOperation.Option.all(_:))
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_100003E30(v46, qword_10076B2A0);
    v43 = sub_100008E04(_swiftEmptyArrayStorage);
    v44 = sub_100008E04(_swiftEmptyArrayStorage);
    v45 = "Unknown operation type";
LABEL_23:
    sub_1003F9818(v45, 22, 2uLL, v43, v44);
    __break(1u);
    return;
  }

  v30 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
  v31 = v59;
LABEL_13:
  v33 = v58;
  (*(v31 + 104))(v32, *v30, v27);
  sub_1001013F4(&qword_10076B838, &type metadata accessor for REMHashtagLabelSpecifier.Operation, &protocol conformance descriptor for REMHashtagLabelSpecifier.Operation);
  v34 = v33;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {

    v35 = *(v31 + 8);
    v35(v32, v27);
    v35(v33, v27);
    (*(v60 + 8))(v22, v14);
  }

  else
  {
    v36 = *(v47 + 64);
    v37 = v50;
    *v16 = v51;
    *(v16 + 1) = v37;
    (*(v31 + 16))(&v16[v36], v32, v27);
    v38 = v60;
    (*(v60 + 104))(v16, v48, v14);
    v39 = v52;
    v49(v52, v16, v14);
    swift_storeEnumTagMultiPayload();
    sub_1000B551C(v39, 16, 0);
    sub_100100B78(v39, type metadata accessor for TTRIAccountsListsSelection);
    v40 = *(v38 + 8);
    v40(v16, v14);
    v41 = *(v31 + 8);
    v41(v57, v27);
    v41(v34, v27);
    v40(v22, v14);
  }
}

void sub_1000FD53C(void (*a1)(void))
{
  v3 = [v1 contentScrollView];
  if (v3)
  {
    v7 = v3;
    a1();
  }

  else
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_10076B2A0);
    v7 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v7, v5, "ppt_execute(_ scrollTest: @escaping (UIScrollView) failed because contentScrollView is nil", v6, 2u);
    }
  }
}

uint64_t sub_1000FD898(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, __int128 *, uint64_t, uint64_t))
{
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 64);
  v8 = *(v3 + 72);
  v9 = *(v3 + 80);
  v10 = *a1;
  v12 = *(v3 + 16);
  v13 = v5;
  v14 = v6;
  v15 = *(v3 + 48);
  v16 = v7;
  v17 = v8;
  return a3(v10, &v12, v9, a2) & 1;
}

void sub_1000FD9F8(uint64_t a1)
{
  v27 = a1;
  v26 = type metadata accessor for TTRAccountsListsViewModel.List();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v27, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    TTRAccountsListsViewModel.SmartList.type.getter();
    v17 = enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
    v18 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v18 - 8) + 104))(v6, v17, v18);
    swift_storeEnumTagMultiPayload();
    sub_1000B551C(v6, 2, 0);
    sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
    (*(v8 + 8))(v10, v7);
  }

  else if (v16 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v12 + 96))(v15, v11);
    v19 = v26;
    (*(v1 + 32))(v3, v15, v26);
    (*(v1 + 16))(v6, v3, v19);
    v20 = enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
    v21 = type metadata accessor for TTRAccountsListsPinnedListSelection();
    (*(*(v21 - 8) + 104))(v6, v20, v21);
    swift_storeEnumTagMultiPayload();
    sub_1000B551C(v6, 2, 0);
    sub_100100B78(v6, type metadata accessor for TTRIAccountsListsSelection);
    (*(v1 + 8))(v3, v19);
  }

  else
  {
    if (qword_100766F00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_10076B2A0);
    v23 = sub_100008E04(_swiftEmptyArrayStorage);
    v24 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pinned list type", 24, 2uLL, v23, v24);
    __break(1u);
  }
}

id sub_1000FDEBC(uint64_t a1, void *a2)
{
  v4 = sub_100058000(&qword_10076BB30, &qword_10062FDC0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v13 - v6;
  v8 = [a2 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10043B8B4(v9, a1, v7);

  v10 = sub_100058000(&qword_10076BB38, &qword_10063F300);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  sub_1000079B4(v7, &qword_10076BB30, &qword_10062FDC0);
  return [objc_allocWithZone(UIDropProposal) initWithDropOperation:v11];
}

uint64_t sub_1000FE03C(uint64_t a1, id a2)
{
  v3 = [a2 items];
  sub_100003540(0, &qword_10076BAC0, UIDragItem_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_1004B1A10(v4))
  {
    sub_10043C130(v4, a1);
  }

  else
  {
    sub_10043C10C(v4, a1);
  }
}

void sub_1000FE0FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRPermissionConfiguration.Action();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043FBD4(a1);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  LODWORD(a1) = enum case for TTRPermissionConfiguration.Action.dismissUpgradeRequest(_:);
  (*(v5 + 8))(v7, v4);
  if (v8 == a1)
  {
    v9 = [v2 view];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for TTRIAccountsListsTreeView(0);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = *(v11 + qword_10078A548);
        if (v12)
        {
          v13 = v12;
          sub_1000C8050();

          return;
        }

        __break(1u);
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

unint64_t sub_1000FE2E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 112 * result;
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

  result = v8 + 112 * a3;
  v13 = (v7 + 32 + 112 * a2);
  v14 = 112 * v12;
  v15 = v13 + 112 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000FE3B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 48 * a3;
  v15 = (v9 + 32 + 48 * a2);
  v16 = 48 * v14;
  v17 = v15 + 48 * v14;
  if (result != v15 || result >= v17)
  {
    result = memmove(result, v15, v16);
  }

  v19 = *(v9 + 16);
  v11 = __OFADD__(v19, v12);
  v20 = v19 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v20;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_1000FE4D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100547498(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1000FE3B8(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

void sub_1000FE5AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a4;
  v39 = a1;
  v38 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  __chkstk_darwin(v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v34 = (v8 + 8);
  v35 = (v8 + 16);
  v33 = (v11 + 8);
  while (a2 < v14)
  {
    v15 = *(v39 + 8 * a2);
    v16 = *(*v15 + 144);
    swift_beginAccess();
    v17 = v38;
    (*v35)(v10, v15 + v16, v38);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*v34)(v10, v17);
    sub_1000C6E2C(v13, v15);
    (*v33)(v13, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v5 + 16);
    v19 = v40;
    v21 = sub_1003B3EDC();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_19;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v40;
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1003AE0D8();
        v28 = v40;
        if (v25)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_100548DB0(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1003B3EDC();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_21;
      }

      v21 = v26;
      v28 = v40;
      if (v25)
      {
LABEL_4:
        *(v28[7] + 8 * v21) = v36;

        goto LABEL_5;
      }
    }

    v28[(v21 >> 6) + 8] |= 1 << v21;
    *(v28[6] + 8 * v21) = v15;
    *(v28[7] + 8 * v21) = v36;
    v29 = v28[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    v28[2] = v31;
LABEL_5:
    ++a2;
    *(v5 + 16) = v28;
    if (v14 == a2)
    {
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_100058000(&qword_10076BB78, &qword_10062FDD0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000FE8FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a4;
  v39 = a1;
  v38 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  __chkstk_darwin(v37);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v34 = (v8 + 8);
  v35 = (v8 + 16);
  v33 = (v11 + 8);
  while (a2 < v14)
  {
    v15 = *(v39 + 8 * a2);
    v16 = *(*v15 + 144);
    swift_beginAccess();
    v17 = v38;
    (*v35)(v10, v15 + v16, v38);

    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    (*v34)(v10, v17);
    sub_1000C70F8(v13, v15);
    (*v33)(v13, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v5 + 16);
    v19 = v40;
    v21 = sub_1003B3EDC();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_19;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v40;
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1003AF2F0();
        v28 = v40;
        if (v25)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_10054B2C4(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1003B3EDC();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_21;
      }

      v21 = v26;
      v28 = v40;
      if (v25)
      {
LABEL_4:
        *(v28[7] + 8 * v21) = v36;

        goto LABEL_5;
      }
    }

    v28[(v21 >> 6) + 8] |= 1 << v21;
    *(v28[6] + 8 * v21) = v15;
    *(v28[7] + 8 * v21) = v36;
    v29 = v28[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    v28[2] = v31;
LABEL_5:
    ++a2;
    *(v5 + 16) = v28;
    if (v14 == a2)
    {
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_100058000(&qword_10076B788, &unk_10062FB80);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000FEC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_100058000(a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FED50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_100018654(result, 1);
    return sub_1000FEC4C(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1000FEE34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for IndexPath();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRITreeViewExpandedState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  v44 = a1;
  v18 = sub_1000F4E08(a1, v17, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);

  if (!v18)
  {
    return;
  }

  v19 = qword_1007A84C0;
  swift_beginAccess();
  (*(v11 + 16))(v16, v18 + v19, v10);
  (*(v11 + 104))(v13, enum case for TTRITreeViewExpandedState.collapsed(_:), v10);
  LOBYTE(v19) = static TTRITreeViewExpandedState.== infix(_:_:)();
  v20 = *(v11 + 8);
  v20(v13, v10);
  v20(v16, v10);
  if ((v19 & 1) == 0)
  {

    return;
  }

  v21 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  sub_1000C7C38(v18, v21, v23, v24, v22 & 1, sub_1003B3EDC, sub_1000C73C4, v7);

  v26 = v47;
  v25 = v48;
  if ((*(v47 + 48))(v7, 1, v48) == 1)
  {
    sub_1000079B4(v7, &unk_100771B10, qword_10062E540);
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100003E30(v27, qword_1007716F0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Unable to find index path", v30, 2u);
    }

    return;
  }

  v31 = v46;
  (*(v26 + 32))(v46, v7, v25);
  v32 = swift_beginAccess();
  v33 = *(v18 + 64);
  if (v33 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (v32)
    {
      goto LABEL_12;
    }
  }

  else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100003E30(v34, qword_1007716F0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Collapsed node should have no child nodes", v37, 2u);
    }
  }

  __chkstk_darwin(v32);
  *(&v43 - 4) = v3;
  *(&v43 - 3) = v18;
  v38 = v45;
  *(&v43 - 2) = v31;
  *(&v43 - 1) = v38;
  sub_1000CCF14(sub_100100930, (&v43 - 6), 0, 0, 0, 0);
  v39 = *(v3 + qword_100771758);
  if (v39)
  {
    v40 = *(v39 + 16);

    if (v40(v41))
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      (*(v39 + 240))(Strong, v44);
    }

    else
    {
    }
  }

  (*(v26 + 8))(v31, v25);
}

void sub_1000FF508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *, uint64_t), char *a8)
{
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = a4;
  v14 = a3;
  v13 = a2;
  v27 = a7;
  v28 = a8;
  v16 = *v9;
  v9 = (*v9 & 0xFFFFFFFFFFFFFF8);
  v8 = v9 + 4;
  v12 = &v9[a1 + 4];
  sub_100058000(a5, a6);
  v17 = swift_arrayDestroy();
  v19 = __OFSUB__(v14, v15);
  v15 = v14 - v15;
  if (v19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v15)
  {
    goto LABEL_17;
  }

  v10 = v16 >> 62;
  if (!(v16 >> 62))
  {
    v20 = v9[2];
    v21 = v20 - v13;
    if (!__OFSUB__(v20, v13))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v25 = _CocoaArrayWrapper.endIndex.getter();
  v21 = v25 - v13;
  if (__OFSUB__(v25, v13))
  {
    goto LABEL_27;
  }

LABEL_6:
  v22 = (v12 + 8 * v14);
  v23 = &v8[v13];
  if (v22 != v23 || v22 >= &v23[8 * v21])
  {
    memmove(v22, v23, 8 * v21);
  }

  if (v10)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = v9[2];
  }

  if (__OFADD__(v17, v15))
  {
    goto LABEL_28;
  }

  v9[2] = v17 + v15;
LABEL_17:
  if (v14 < 1)
  {
    return;
  }

  __chkstk_darwin(v17);
  v18 = v26;
  v26[2] = v14;
  v26[3] = v12;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1000EF1E0(v11, v27, v18, v28);
    return;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == v14)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FF698(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(char *, uint64_t), char *a7)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = a7;
    v12 = a6;
    v13 = a3;
    v14 = a2;
    v15 = a1;
    v16 = *v9;
    v8 = *v9 >> 62;
    if (!v8)
    {
      if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v10 = a5;
  v22 = a4;
  v23 = _CocoaArrayWrapper.endIndex.getter();
  a4 = v22;
  a5 = v10;
  if (v23 < v14)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = (v14 - v15);
  if (__OFSUB__(v14, v15))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = a4;
  v25 = a5;
  if (!(v13 >> 62))
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = __OFSUB__(v17, v10);
    v19 = v17 - v10;
    if (!v18)
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  v17 = _CocoaArrayWrapper.endIndex.getter();
  v18 = __OFSUB__(v17, v10);
  v19 = v17 - v10;
  if (v18)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v8)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = __OFADD__(v20, v19);
  v21 = v20 + v19;
  if (!v18)
  {
    sub_100018654(v21, 1);
    sub_1000FF508(v15, v14, v17, v13, v24, v25, v12, v11);
    return;
  }

LABEL_19:
  __break(1u);
}

double sub_1000FF81C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_viewModel) = *(v0 + 24);

  return result;
}

void sub_1000FF864(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIAccountsListsViewUpdates(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1000BEF60(a1, v4, v5);
}

void sub_1000FF900(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for IndexPath();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRITreeViewExpandedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
  v17 = sub_1000F4E08(a1, v16, &type metadata accessor for TTRRemindersListViewModel.ItemID, &TTRRemindersListViewModel.Item.treeItemIdentifier.getter, sub_1003AB294, sub_10057E700);

  if (v17)
  {
    v18 = qword_1007A84C0;
    swift_beginAccess();
    (*(v10 + 16))(v15, v17 + v18, v9);
    (*(v10 + 104))(v12, enum case for TTRITreeViewExpandedState.expanded(_:), v9);
    LOBYTE(v18) = static TTRITreeViewExpandedState.== infix(_:_:)();
    v19 = *(v10 + 8);
    v19(v12, v9);
    v19(v15, v9);
    if (v18)
    {
      v20 = sub_1000C8540(&unk_10076BBA0, &unk_10062FDF0, sub_1000E821C, sub_1000E158C);
      sub_1000C7C38(v17, v20, v22, v23, v21 & 1, sub_1003B3EDC, sub_1000C73C4, v6);

      v25 = v36;
      v24 = v37;
      if ((*(v36 + 48))(v6, 1, v37) == 1)
      {
        sub_1000079B4(v6, &unk_100771B10, qword_10062E540);
        if (qword_100766FC8 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100003E30(v26, qword_1007716F0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Unable to find index path", v29, 2u);
        }
      }

      else
      {
        v30 = v34;
        v31 = (*(v25 + 32))(v34, v6, v24);
        __chkstk_darwin(v31);
        *(&v33 - 4) = v17;
        *(&v33 - 3) = v2;
        v32 = v35;
        *(&v33 - 2) = v30;
        *(&v33 - 1) = v32;
        sub_1000CCF14(sub_100100A0C, (&v33 - 6), 0, 0, 0, 0);

        (*(v25 + 8))(v30, v24);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000FFE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5;
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = a1;
    v12 = *v7;
    v13 = *v7 >> 62;
    if (!v13)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  v15 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = 1 - v15;
  if (__OFSUB__(1, v15))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = __OFADD__(v17, v16);
  result = v17 + v16;
  if (!v18)
  {
    sub_100018654(result, 1);
    return sub_1000FFF5C(v11, v10, 1, v9, v8, v6);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000FFF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_100058000(a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = result - v9;
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v17 = result - v9;
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = result + v13;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;

    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_1001000C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v16 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = a6;
  v12 = a5;
  v9 = a3;
  v14 = a2;
  v24 = a7;
  v17 = *v10;
  v10 = (*v10 & 0xFFFFFFFFFFFFFF8);
  v11 = v10 + 4;
  v13 = &v10[a1 + 4];
  sub_100058000(a8, a9);
  result = swift_arrayDestroy();
  v19 = __OFSUB__(v9, v16);
  v16 = v9 - v16;
  if (v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v16)
  {
    goto LABEL_17;
  }

  v12 = v17 >> 62;
  if (!(v17 >> 62))
  {
    result = v10[2];
    v20 = result - v14;
    if (!__OFSUB__(result, v14))
    {
      goto LABEL_6;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_26:
  result = _CocoaArrayWrapper.endIndex.getter();
  v20 = result - v14;
  if (__OFSUB__(result, v14))
  {
    goto LABEL_28;
  }

LABEL_6:
  v21 = (v13 + 8 * v9);
  v22 = &v11[v14];
  if (v21 != v22 || v21 >= &v22[8 * v20])
  {
    memmove(v21, v22, 8 * v20);
  }

  if (v12)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v10[2];
  }

  if (__OFADD__(result, v16))
  {
    goto LABEL_29;
  }

  v10[2] = result + v16;
LABEL_17:
  if (v9 < 1)
  {
    return result;
  }

  if (__OFSUB__(v24 >> 1, v15))
  {
    goto LABEL_30;
  }

  if ((v24 >> 1) - v15 != v9)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t sub_100100250(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, uint64_t *a8)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = a6;
    v14 = a5;
    v11 = a4;
    v15 = a2;
    v16 = a1;
    v9 = *v10;
    v13 = *v10 >> 62;
    if (!v13)
    {
      result = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v24 = a7;
  v25 = a8;
  v28 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v28;
  a8 = v25;
  a7 = v24;
  if (result < v15)
  {
    goto LABEL_14;
  }

LABEL_4:
  v18 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = a8;
  v19 = (v12 >> 1) - v14;
  if (__OFSUB__(v12 >> 1, v14))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = a7;
  v20 = v19 - v18;
  if (__OFSUB__(v19, v18))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13)
  {
    v21 = a3;
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = a3;
    v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = __OFADD__(v22, v20);
  result = v22 + v20;
  if (!v23)
  {
    sub_100018654(result, 1);
    return sub_1001000C8(v16, v15, (v12 >> 1) - v14, v21, v11, v14, v12, v26, v27);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100100448(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_100058000(a2, a3) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v4 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a4(a1, v4 + v7, v9, v10);
}

unint64_t sub_100100518(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(unint64_t))
{
  v14 = swift_unknownObjectRetain();
  result = sub_1000E8644(v14, a2, a3, a4, a5, a6, a7);
  *(v7 + 16) = result;
  v16 = a4 >> 1;
  if (a4 >> 1 == a3)
  {
    return v7;
  }

  if (a4)
  {
    v20 = v16 - a3;
    if (v16 > a3)
    {
      v21 = (a2 + 8 * a3);
      do
      {
        v22 = *v21++;
        swift_weakAssign();
        swift_beginAccess();
        *(v22 + 64) = _swiftEmptyArrayStorage;

        --v20;
      }

      while (v20);
      return v7;
    }
  }

  else
  {
    v17 = v16 - a3;
    if (v16 > a3)
    {
      v18 = (a2 + 8 * a3);
      do
      {
        v19 = *v18++;
        swift_weakAssign();
        swift_beginAccess();
        *(v19 + 64) = _swiftEmptyArrayStorage;

        --v17;
      }

      while (v17);
      return v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100100648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITreeViewDropProposal(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001006AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100100728(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 32);
  if (*(v3 + 16) && (v4 = a2(a1), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100100824(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, __int128 *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v9 = *(v4 + 64);
  v10 = *(v4 + 72);
  v11 = *(v4 + 80);
  v12 = *(v4 + 88);
  v13 = *a1;
  v15 = *(v4 + 16);
  v16 = v7;
  v17 = v8;
  v18 = *(v4 + 48);
  v19 = v9;
  v20 = v10;
  return a4(v13, &v15, v11, v12, a2, a2, a3) & 1;
}

uint64_t sub_100100898(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1001008E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100100998()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100100B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100100B78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100100BEC(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v8, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v9 - v8;
  if (__OFSUB__(0, v8 - v9))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    sub_100018654(result, 1);
    return sub_100100CD0(v9, v8, 0, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100100CD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_100003540(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_100100E88(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_1000BA5E0(a1, a2, a3, a4, v10, v11);
}

void sub_100100FD4(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000BAC88(v4, a1);
}

uint64_t sub_100101044(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_10042A2D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10010113C()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100101220()
{
  v1 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001012EC(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRAccountsListsViewModel.Item() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA3C;

  return sub_10042A2D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001013F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010153C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076BEE0);
  v1 = sub_100003E30(v0, qword_10076BEE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100101604(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_doneButton] = 0;
  sub_100103804(&qword_10076BF48, v5, type metadata accessor for TTRIListSharingViewController, &unk_100630030);
  static TTRTypedController.currentArgument.getter();
  v6 = v12;
  v7 = v13;
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_presenter] = v11[1];
  v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_style] = v6;
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_localUndoManager] = v7;
  v2[OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing] = v6 ^ 1;
  v11[0].receiver = v2;
  v11[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v8 = v7;
  v9 = [(objc_super *)v11 initWithCoder:a1];

  swift_unknownObjectRelease();
  if (v9)
  {
  }

  return v9;
}

void sub_10010176C()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  UITableView.fixUpBackgroundColorLoadedFromNibIfNeeded_workaroundRdar108920406()();

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() nibWithNibName:v4 bundle:0];

  v6 = [v1 tableView];
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  type metadata accessor for TTRIListSharingParticipantCell();
  v8 = v5;
  static UITableViewCell.tableViewCellIdentifier.getter();
  v9 = String._bridgeToObjectiveC()();

  [v7 registerNib:v8 forCellReuseIdentifier:v9];

  v10 = [v1 tableView];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = v10;
  sub_100003540(0, &qword_10076B8B8, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  static UITableViewCell.tableViewCellIdentifier.getter();
  v13 = String._bridgeToObjectiveC()();

  [v11 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v13];

  if (*(v1 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_style))
  {
    v14 = "TTRIListSharingParticipantCell";
    v15 = 0x7720646572616853;
    v16 = 0xEB00000000687469;
    v17 = 0xD000000000000058;
  }

  else
  {
    v14 = "e user from someone else";
    v15 = 0x6977206572616853;
    v16 = 0xAD0000A680E26874;
    v17 = 0xD000000000000049;
  }

  v18 = v14 | 0x8000000000000000;
  TTRLocalizedString(_:comment:)(*&v15, *&v17);
  v19 = [v1 navigationItem];
  v20 = String._bridgeToObjectiveC()();

  [v19 setTitle:v20];

  if (*(v1 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing) == 1)
  {
    v21 = [v1 navigationItem];
    v22 = [v1 editButtonItem];
    [v21 setRightBarButtonItem:v22];
  }
}

uint64_t sub_100101C44(uint64_t a1)
{
  v2 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if (result != 1)
  {
    v4 = IndexPath.section.getter();
    result = 0;
    if (!v4 && (v2 & 0x8000000000000000) == 0)
    {
      v5 = *(sub_1004058A4() + 2);

      v6 = *(v1 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing);
      v7 = __OFADD__(v5, v6);
      v8 = v5 + v6;
      if (v7)
      {
        __break(1u);
      }

      else if (v2 >= v8)
      {
        return 0;
      }

      else
      {
        v9 = *(sub_1004058A4() + 2);

        if (v2 < v9)
        {
          return v2;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

char *sub_100101D1C(unint64_t a1, char a2)
{
  result = 0;
  if (*(v2 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_allowsEditing) == 1 && (a2 & 1) == 0)
  {
    result = sub_1004058A4();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(result + 2) > a1)
    {
      v5 = result[112 * a1 + 136];

      return (v5 != 4);
    }

    __break(1u);
  }

  return result;
}

void sub_100101D98(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100101C44(a2);
  if ((v10 & 0x100) != 0)
  {
    if (qword_100766F08 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10076BEE0);
    (*(v6 + 16))(v8, a2, v5);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v6 + 8))(v8, v5);
      *(v19 + 4) = isa;
      *v20 = isa;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unexpected index path for list sharing view {indexPath: %@}", v19, 0xCu);
      sub_1000079B4(v20, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      v22 = v9;
      v23 = sub_1004058A4();
      if ((v22 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v22 < *(v23 + 2))
      {
        v24 = &v23[112 * v22];
        v25 = *(v24 + 2);
        v26 = *(v24 + 4);
        v34[1] = *(v24 + 3);
        v34[2] = v26;
        v34[0] = v25;
        v27 = *(v24 + 5);
        v28 = *(v24 + 6);
        v29 = *(v24 + 7);
        *&v35[9] = *(v24 + 121);
        v34[4] = v28;
        *v35 = v29;
        v34[3] = v27;
        sub_100103660(v34, &v33);

        sub_10040590C(v34);
        sub_1001036BC(v34);
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    v5 = *(v2 + OBJC_IVAR____TtC9Reminders29TTRIListSharingViewController_presenter);
    if (v9)
    {
      if (qword_1007672A0 == -1)
      {
LABEL_5:
        v11 = type metadata accessor for Logger();
        sub_100003E30(v11, qword_100782448);
        sub_100058000(&unk_100775610, &unk_1006323A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D400;
        *(inited + 32) = 0x44497473696CLL;
        *(inited + 40) = 0xE600000000000000;
        v13 = [*(*(v5 + 56) + 32) objectID];
        *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
        *(inited + 48) = v13;
        v14 = sub_100008E04(inited);
        swift_setDeallocating();
        sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
        sub_10000FD44("List sharing stop sharing {listID: %@}", 38, 2, v14);

        sub_10041D0EC();
        v15 = IndexPath._bridgeToObjectiveC()().super.isa;
        [a1 deselectRowAtIndexPath:v15 animated:1];

        return;
      }

LABEL_19:
      swift_once();
      goto LABEL_5;
    }

    sub_100405BA0();
    v32 = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectRowAtIndexPath:v32 animated:1];
    v30 = v32;
  }
}

void sub_100102434(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a1;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_100101C44(a3);
  if ((v11 & 0x100) == 0)
  {
    v12 = v10;
    v13 = v11;
    if ((sub_100101D1C(v10, v11 & 1) & 1) != 0 && (v13 & 1) == 0 && a2 && a2 != 2)
    {
      if (a2 == 1)
      {
        v14 = sub_1004058A4();
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *(v14 + 2))
        {
          v15 = &v14[112 * v12];
          v16 = *(v15 + 2);
          v17 = *(v15 + 4);
          v34[1] = *(v15 + 3);
          v34[2] = v17;
          v34[0] = v16;
          v18 = *(v15 + 5);
          v19 = *(v15 + 6);
          v20 = *(v15 + 7);
          *&v35[9] = *(v15 + 121);
          v34[4] = v19;
          *v35 = v20;
          v34[3] = v18;
          sub_100103660(v34, aBlock);

          sub_100405ED8(v34);
          (*(v8 + 16))(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
          v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
          v22 = swift_allocObject();
          v23 = v32;
          *(v22 + 16) = v32;
          (*(v8 + 32))(v22 + v21, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
          v24 = swift_allocObject();
          *(v24 + 16) = sub_100103710;
          *(v24 + 24) = v22;
          aBlock[4] = sub_100026410;
          aBlock[5] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100026440;
          aBlock[3] = &unk_1007159B8;
          v25 = _Block_copy(aBlock);
          v26 = v23;
          v27 = v4;

          [v26 performBatchUpdates:v25 completion:0];
          _Block_release(v25);
          sub_1001036BC(v34);

          return;
        }

        __break(1u);
      }

      if (qword_100766F08 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100003E30(v28, qword_10076BEE0);
      v29 = sub_100008E04(_swiftEmptyArrayStorage);
      v30 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("unknown editing style", 21, 2uLL, v29, v30);
      __break(1u);
    }
  }
}

void sub_1001027AC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007845D0, &qword_10062EAB0);
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10062D400;
  (*(v9 + 16))(v11 + v10, a2, v8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 deleteRowsAtIndexPaths:isa withRowAnimation:100];

  v13 = *(sub_1004058A4() + 2);

  if (!v13 && [a1 numberOfSections] == 2)
  {
    v17[1] = &off_100712708;
    sub_100103804(&unk_100771B20, 255, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    sub_100058000(&unk_10076BA00, &qword_10062FD20);
    sub_1001037A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    IndexSet._bridgeToObjectiveC()(v14);
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    [a1 deleteSections:v16 withRowAnimation:100];
  }
}

void *sub_100102EAC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100101C44(a2);
  if ((v8 & 0x100) != 0)
  {
    if (qword_100766F08 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_10076BEE0);
    (*(v4 + 16))(v6, a2, v3);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v4 + 8))(v6, v3);
      *(v25 + 4) = isa;
      *v26 = isa;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unexpected index path for list sharing view {indexPath: %@}", v25, 0xCu);
      sub_1000079B4(v26, &unk_10076DF80, &qword_10062F730);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    sub_100003540(0, &qword_10076B8B8, UITableViewCell_ptr);
    return UITableView.dequeueReusableCell<A>(_:indexPath:)();
  }

  v9 = v7;
  if (v8)
  {
    sub_100003540(0, &qword_10076B8B8, UITableViewCell_ptr);
    v10 = UITableView.dequeueReusableCell<A>(_:indexPath:)();
    v11 = [v10 textLabel];
    v12 = v11;
    if (v9)
    {
      if (v11)
      {
        v13 = [objc_opt_self() ttr_systemRedColor];
        [v12 setTextColor:v13];
      }

      v14 = [v10 textLabel];
      if (v14)
      {
        v15 = v14;
        [v14 setTextAlignment:1];
      }

      v16 = [v10 textLabel];
      if (!v16)
      {
        return v10;
      }

      v17 = v16;
      v18 = 0x61685320706F7453;
      v19 = 0xEC000000676E6972;
      v20 = 0xD000000000000033;
      v21 = 0x8000000100671A40;
    }

    else
    {
      if (v11)
      {
        v38 = [v10 tintColor];
        [v12 setTextColor:v38];
      }

      v39 = [v10 textLabel];
      if (v39)
      {
        v40 = v39;
        [v39 setTextAlignment:4];
      }

      v41 = [v10 textLabel];
      if (!v41)
      {
        return v10;
      }

      v17 = v41;
      v18 = 0x7372657020646441;
      v19 = 0xAD0000A680E26E6FLL;
      v21 = 0x8000000100671A80;
      v20 = 0xD000000000000031;
    }

    TTRLocalizedString(_:comment:)(*&v18, *&v20);
    v42 = String._bridgeToObjectiveC()();

    [v17 setText:v42];

    return v10;
  }

  result = sub_1004058A4();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v9 >= result[2])
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = &result[14 * v9];
  v31 = v29[3];
  v30 = v29[4];
  v52 = v29[2];
  v53 = v31;
  v54 = v30;
  v32 = v29[5];
  v33 = v29[6];
  v34 = v29[7];
  *&v57[9] = *(v29 + 121);
  v56 = v33;
  *v57 = v34;
  v55 = v32;
  v35 = v53;
  sub_100103660(&v52, v51);

  type metadata accessor for TTRIListSharingParticipantCell();
  v10 = UITableView.dequeueReusableCell<A>(_:indexPath:)();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = result;
    if (v35)
    {
      v37 = String._bridgeToObjectiveC()();
    }

    else
    {
      v37 = 0;
    }

    v43 = *&v57[8];
    v44 = *&v57[16];
    v45 = *(&v56 + 1);
    v46 = *v57;
    v47 = v57[24];
    [v36 setText:v37];

    v48 = sub_1003DF174(v47);
    sub_100556A2C(v48, v49);
    if (v46 | v44)
    {
      v50 = sub_100469610(v45, v46, v43, v44);
      if (!v50)
      {
        v50 = sub_10046991C(&v52);
      }
    }

    else
    {
      v50 = 0;
    }

    sub_100556B30(v50);
    sub_1001036BC(&v52);
    return v10;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_100103710()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1001027AC(v2, v3);
}

unint64_t sub_1001037A0()
{
  result = qword_100771B30;
  if (!qword_100771B30)
  {
    sub_10005D20C(&unk_10076BA00, &qword_10062FD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771B30);
  }

  return result;
}

uint64_t sub_100103804(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void destroy for TTRIListSharingViewController.Argument(void *a1)
{
  swift_unknownObjectRelease();
  v2 = a1[3];
}

uint64_t initializeWithCopy for TTRIListSharingViewController.Argument(uint64_t a1, __int128 *a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 3);
  *(a1 + 24) = v3;
  swift_unknownObjectRetain();
  v4 = v3;
  return a1;
}

uint64_t *assignWithCopy for TTRIListSharingViewController.Argument(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;
  v7 = v5;

  return a1;
}

uint64_t assignWithTake for TTRIListSharingViewController.Argument(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIListSharingViewController.Argument(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TTRIListSharingViewController.Argument(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100103A20(uint64_t a1@<X8>)
{
  v100 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0);
  __chkstk_darwin(v100);
  v99 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_10076C030, &qword_1006301C0);
  __chkstk_darwin(v4 - 8);
  v98 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = v81 - v7;
  __chkstk_darwin(v8);
  v107 = v81 - v9;
  v10 = sub_100058000(&qword_10076C038, &qword_1006301C8);
  __chkstk_darwin(v10 - 8);
  v103 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v81 - v13;
  v15 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v96 = *(v15 - 8);
  __chkstk_darwin(v15);
  v102 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100105A04(v113);
  v21 = v114;
  if (!v114)
  {
    v73 = 0;
    v80 = 0;
    v74 = 0uLL;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
    goto LABEL_31;
  }

  v89 = v113[0];
  v88 = v113[1];
  v87 = v115;
  v86 = v116;
  v85 = v117;
  v84 = v118;
  v90 = v119;
  v104 = *(v1 + 24);
  v22 = [v104 indexPathsForVisibleItems];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v112 = v23;

  sub_1001064B0(&v112);

  v24 = *(v112 + 16);
  if (!v24)
  {

    v80 = _swiftEmptyArrayStorage;
    v73 = v90;
    v74 = v89;
    v75 = v88;
    v76 = v87;
    v77 = v86;
    v78 = v85;
    v79 = v84;
    goto LABEL_31;
  }

  v82 = v21;
  v83 = a1;
  v26 = *(v18 + 16);
  v25 = v18 + 16;
  v111 = v26;
  v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
  v81[1] = v112;
  v28 = v112 + v27;
  v110 = (v96 + 56);
  v109 = (v25 - 8);
  v101 = (v96 + 48);
  v106 = _swiftEmptyArrayStorage;
  v108 = *(v25 + 56);
  v29 = v104;
  v95 = v14;
  v94 = v15;
  v93 = v17;
  v92 = v25;
  v91 = v20;
  v26(v20, v112 + v27, v17);
  while (1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v31 = [v29 cellForItemAtIndexPath:isa];

    if (!v31)
    {
      goto LABEL_5;
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {

LABEL_5:
      (*v109)(v20, v17);
      (*v110)(v14, 1, 1, v15);
LABEL_6:
      sub_1000079B4(v14, &qword_10076C038, &qword_1006301C8);
      goto LABEL_7;
    }

    v32 = v25;
    v33 = [v31 contentView];
    v34 = [v33 snapshotViewAfterScreenUpdates:0];

    v105 = v34;
    if (!v34)
    {
      v50 = v103;
      (*v110)(v103, 1, 1, v15);

      (*v109)(v20, v17);
      sub_100016588(v50, v14, &qword_10076C038, &qword_1006301C8);
      v51 = (*v101)(v14, 1, v15) == 1;
      v25 = v32;
      goto LABEL_21;
    }

    v35 = v107;
    UICollectionViewCell.backgroundConfiguration.getter();
    v36 = v31;
    [v36 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v97;
    sub_10000794C(v35, v97, &qword_10076C030, &qword_1006301C0);
    v46 = type metadata accessor for UIBackgroundConfiguration();
    v47 = *(v46 - 8);
    v48 = *(v47 + 48);
    if (v48(v45, 1, v46) == 1)
    {
      sub_1000079B4(v45, &qword_10076C030, &qword_1006301C0);
      v49 = v98;
LABEL_16:
      v52 = [objc_opt_self() clearColor];
      goto LABEL_17;
    }

    v52 = UIBackgroundConfiguration.backgroundColor.getter();
    (*(v47 + 8))(v45, v46);
    v49 = v98;
    if (!v52)
    {
      goto LABEL_16;
    }

LABEL_17:
    sub_10000794C(v107, v49, &qword_10076C030, &qword_1006301C0);
    if (v48(v49, 1, v46) == 1)
    {
      sub_1000079B4(v49, &qword_10076C030, &qword_1006301C0);
      v53 = 0;
    }

    else
    {
      UIBackgroundConfiguration.cornerRadius.getter();
      v53 = v54;
      (*(v47 + 8))(v49, v46);
    }

    v25 = v92;
    v55 = OBJC_IVAR____TtC9Reminders21TTRIBoardReminderCell_roundedCorners;
    swift_beginAccess();
    v56 = *(v100 + 24);
    v57 = type metadata accessor for TTRRectCorners();
    v58 = v99;
    (*(*(v57 - 8) + 16))(&v99[v56], &v36[v55], v57);
    *v58 = v52;
    v58[1] = v53;
    [v36 bounds];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_1000079B4(v107, &qword_10076C030, &qword_1006301C0);
    v67 = v103;
    *v103 = v38;
    *(v67 + 1) = v40;
    *(v67 + 2) = v42;
    *(v67 + 3) = v44;
    *(v67 + 4) = v36;
    v15 = v94;
    sub_1001088C4(v58, &v67[*(v94 + 20)], type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background);
    v68 = &v67[*(v15 + 24)];
    *v68 = v105;
    *(v68 + 1) = v60;
    *(v68 + 2) = v62;
    *(v68 + 3) = v64;
    *(v68 + 4) = v66;
    *(v68 + 5) = v36;
    (*v110)(v67, 0, 1, v15);
    v20 = v91;
    v17 = v93;
    (*v109)(v91, v93);
    v14 = v95;
    sub_100016588(v67, v95, &qword_10076C038, &qword_1006301C8);
    v51 = (*v101)(v14, 1, v15) == 1;
LABEL_21:
    v29 = v104;
    if (v51)
    {
      goto LABEL_6;
    }

    sub_1001088C4(v14, v102, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
    v69 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v106 : sub_100547A50(0, v106[2] + 1, 1, v106);
    v71 = v69[2];
    v70 = v69[3];
    if (v71 >= v70 >> 1)
    {
      v69 = sub_100547A50((v70 > 1), v71 + 1, 1, v69);
    }

    v69[2] = v71 + 1;
    v72 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v106 = v69;
    sub_1001088C4(v102, v69 + v72 + *(v96 + 72) * v71, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
LABEL_7:
    v28 += v108;
    if (!--v24)
    {
      break;
    }

    v111(v20, v28, v17);
  }

  a1 = v83;
  v21 = v82;
  v73 = v90;
  v74 = v89;
  v75 = v88;
  v76 = v87;
  v77 = v86;
  v78 = v85;
  v79 = v84;
  v80 = v106;
LABEL_31:
  *a1 = v74;
  *(a1 + 16) = v75;
  *(a1 + 32) = v21;
  *(a1 + 40) = v76;
  *(a1 + 56) = v77;
  *(a1 + 72) = v78;
  *(a1 + 88) = v79;
  *(a1 + 104) = v73;
  *(a1 + 112) = v80;
}

void sub_100104598(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v149 = a2;
  v4 = a1[5];
  v195 = a1[4];
  v196 = v4;
  v197 = a1[6];
  v198 = *(a1 + 14);
  v5 = a1[1];
  v191 = *a1;
  v192 = v5;
  v6 = a1[3];
  v193 = a1[2];
  v194 = v6;
  v163 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v154 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = (&v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell(0);
  v165 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v146 - v11;
  v148 = v2;
  v13 = *(v2 + 16);
  [v13 bounds];
  v18 = [objc_allocWithZone(UIView) initWithFrame:{v14, v15, v16, v17}];
  [v18 setAutoresizingMask:18];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:1];
  v19 = v3[1];
  v199 = *v3;
  v200 = v19;
  v20 = v3[3];
  v201 = v3[2];
  v202 = v20;
  v21 = v3[5];
  v203 = v3[4];
  v204 = v21;
  v205 = v3[6];
  v22 = *&v199;
  v161 = v201;
  [v13 convertRect:v199 fromCoordinateSpace:v200];
  v24 = *&v23;
  v164 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v160 = v29;
  [v18 bounds];
  v32 = v31;
  v34 = v33;
  v158 = v36;
  v159 = v35;
  v206.origin.x = v24;
  v206.origin.y = v26;
  v37 = v26;
  v206.size.width = v28;
  v38 = v28;
  v206.size.height = v30;
  MinY = CGRectGetMinY(v206);
  v40 = sub_100068328(v32, v34, *&v159, *&v158, MinY + 5.0, -30.0);
  v44 = [objc_allocWithZone(UIView) initWithFrame:{v40, v41, v42, v43}];
  [v44 setClipsToBounds:1];
  [v18 addSubview:v44];
  v151 = v18;
  [v13 addSubview:v18];
  v45 = objc_allocWithZone(UIView);
  v46 = [v45 initWithFrame:{*&v164, v37, v38, v160}];
  [v46 bounds];
  v51 = [objc_allocWithZone(UIView) initWithFrame:{v47, v48, v49, v50}];
  v52 = [v51 layer];
  [v52 setCornerCurve:kCACornerCurveContinuous];

  v53 = [v51 layer];
  v164 = objc_opt_self();
  v54 = [v164 blackColor];
  v55 = [v54 CGColor];

  [v53 setShadowColor:v55];
  v56 = [v51 layer];
  [v56 setShadowOffset:{0.0, 8.0}];

  v57 = v161;
  v58 = [v51 layer];
  [v58 setShadowRadius:12.0];

  v147 = v51;
  v59 = v51;
  v60 = &selRef_defaultStore;
  [v46 addSubview:v59];
  v61 = v202;
  [v57 convertRect:*(&v204 + 1) fromCoordinateSpace:{*(&v202 + 1), v203, *&v204}];
  [v61 setFrame:{sub_100108848(v62, v63, v22)}];
  [v46 addSubview:v61];
  v64 = *(&v205 + 1);
  v65 = *(*(&v205 + 1) + 16);
  v150 = v3;
  v157 = v46;
  if (v65)
  {
    *&v174[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v66 = (v64 + 72);
    do
    {
      v67 = *(v66 - 5);
      v68 = *(v66 - 4);
      v69 = *(v66 - 3);
      v70 = *(v66 - 2);
      v71 = *(v66 - 1);
      v72 = *v66;
      v66 += 7;
      v73 = v67;
      v74 = v72;
      v75 = v73;
      [v57 convertRect:v74 fromCoordinateSpace:{v68, v69, v70, v71}];
      [v75 setFrame:{sub_100108848(v76, v77, v22)}];
      [v157 addSubview:v75];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v65;
    }

    while (v65);
    v146 = *&v174[0];
    v3 = v150;
    v46 = v157;
    v60 = &selRef_defaultStore;
  }

  else
  {
    v146 = _swiftEmptyArrayStorage;
  }

  v171 = v203;
  v172 = v204;
  v173 = v205;
  v167 = v199;
  v168 = v200;
  v169 = v201;
  v170 = v202;
  sub_100108854(&v199, v174);
  v78 = v60;
  [v151 v60[332]];
  v79 = *(v3 + 14);
  v80 = *(v79 + 16);
  if (v80)
  {
    *&v174[0] = _swiftEmptyArrayStorage;
    sub_1004A21F8(0, v80, 0);
    v81 = *&v174[0];
    v82 = v79 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
    v154 = *(v154 + 72);
    v153 = xmmword_100630080;
    v152 = xmmword_100630090;
    p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
    do
    {
      *&v160 = v82;
      v161 = v80;
      v84 = v162;
      sub_10010869C(v82, v162, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
      v85 = *v84;
      v86 = v84[2];
      v87 = v84[3];
      v88 = p_ivar_lyt[508];
      v89 = *v84;
      v90 = v84[1];
      v158 = *(v84 + 4);
      [v44 v88];
      v159 = [objc_allocWithZone(UIView) initWithFrame:{v91, v92, v93, v94}];
      [v159 bounds];
      v99 = [objc_allocWithZone(type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView(0)) initWithFrame:{v95, v96, v97, v98}];
      v100 = [v164 systemBackgroundColor];
      v101 = *(v84 + *(v163 + 20));
      v102 = &v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
      v103 = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill];
      v104 = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_fill + 8];
      *v102 = v100;
      v102[1] = v101;
      v105 = v101;
      v106 = v100;
      sub_1002FCA54(v103, v104);
      sub_100037C04(v103, v104);

      v107 = [v164 blackColor];
      v108 = &v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
      v109 = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow + 32];
      v110 = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow + 16];
      v189[0] = *&v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow];
      v189[1] = v110;
      v190 = v109;
      *v108 = v107;
      v111 = v152;
      *(v108 + 8) = v153;
      *(v108 + 24) = v111;
      v112 = v107;
      sub_1002FD608(v189);
      sub_1000079B4(v189, &qword_10076C020, &qword_1006301B8);

      v113 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_debugShowsBoundingBox;
      v114 = v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_debugShowsBoundingBox];
      v99[OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_debugShowsBoundingBox] = 0;
      if (v114 == 1)
      {
        v115 = [v99 layer];
        objc_opt_self();
        v116 = swift_dynamicCastObjCClass();
        if (v116)
        {
          v117 = v116;
          if (v99[v113])
          {
            v118 = 1.0;
          }

          else
          {
            v118 = 0.0;
          }

          [v116 setLineWidth:{v118, v146}];
          if (v99[v113] == 1)
          {
            v119 = [v164 purpleColor];
            v120 = [v119 CGColor];
          }

          else
          {
            v120 = 0;
          }

          [v117 setStrokeColor:v120];

          v115 = v120;
        }
      }

      v121 = v162;
      v122 = (v162 + *(v163 + 24));
      v123 = v122[1];
      v124 = v122[2];
      v125 = v122[3];
      v126 = v122[4];
      v127 = *(v122 + 5);
      v128 = *v122;
      [v158 convertRect:v127 fromCoordinateSpace:{v123, v124, v125, v126}];
      [v128 setFrame:{sub_100108848(v129, v130, v85)}];
      v131 = v159;
      [v159 v78[332]];
      [v131 v78[332]];
      v132 = v155;
      sub_10010869C(v121, v155, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
      v133 = v156;
      *(v132 + *(v156 + 20)) = v131;
      *(v132 + *(v133 + 24)) = v99;
      v134 = v132;
      *(v132 + *(v133 + 28)) = v128;
      sub_1001087E8(v121, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
      *&v174[0] = v81;
      v136 = v81[2];
      v135 = v81[3];
      if (v136 >= v135 >> 1)
      {
        sub_1004A21F8((v135 > 1), v136 + 1, 1);
        v134 = v155;
        v81 = *&v174[0];
      }

      v81[2] = v136 + 1;
      sub_1001088C4(v134, v81 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v136, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
      v82 = *&v160 + v154;
      v80 = v161 - 1;
      p_ivar_lyt = (&TTRIAccountsListsTagsHeaderCell + 16);
    }

    while (v161 != 1);

    v3 = v150;
    v137 = v81[2];
    if (!v137)
    {
      goto LABEL_27;
    }
  }

  else
  {

    v81 = _swiftEmptyArrayStorage;
    v137 = _swiftEmptyArrayStorage[2];
    if (!v137)
    {
LABEL_27:
      v174[4] = v195;
      v174[5] = v196;
      v174[6] = v197;
      v174[0] = v191;
      v174[1] = v192;
      v174[2] = v193;
      v174[3] = v194;
      v180 = v169;
      v179 = v168;
      v178 = v167;
      v184 = v173;
      v183 = v172;
      v182 = v171;
      v175 = v198;
      v141 = v151;
      v176 = v151;
      v181 = v170;
      v177 = v44;
      v142 = v157;
      v185 = v157;
      v144 = v146;
      v143 = v147;
      v186 = v147;
      v187 = v146;
      v188 = v81;
      v145 = *(v148 + 24);
      sub_10010888C(v3, v166);
      [v145 setHidden:1];
      sub_100107884(0, v174);
      sub_100107B0C(0, v174);
      v166[4] = v195;
      v166[5] = v196;
      v166[6] = v197;
      v166[0] = v191;
      v166[1] = v192;
      v166[2] = v193;
      v166[3] = v194;
      *(&v166[14] + 8) = v173;
      *(&v166[13] + 8) = v172;
      *(&v166[12] + 8) = v171;
      *(&v166[11] + 8) = v170;
      *(&v166[10] + 8) = v169;
      *(&v166[9] + 8) = v168;
      *&v166[7] = v198;
      *(&v166[7] + 1) = v141;
      *(&v166[8] + 8) = v167;
      *&v166[8] = v44;
      *(&v166[15] + 1) = v142;
      *&v166[16] = v143;
      *(&v166[16] + 1) = v144;
      *&v166[17] = v81;
      TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:)(v166);
      memcpy(v149, v166, 0x118uLL);
      return;
    }
  }

  v138 = *(v156 + 20);
  v139 = v81 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
  while (v137 <= v81[2])
  {
    --v137;
    sub_10010869C(&v139[*(v165 + 72) * v137], v12, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
    v140 = *&v12[v138];
    sub_1001087E8(v12, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
    [v44 v78[332]];

    if (!v137)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1001052E4(const void *a1)
{
  v3 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:300.0 damping:200.0 initialVelocity:{0.0, 0.0}];
  type metadata accessor for TTRIAnimationSlowMode();
  swift_allocObject();
  TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
  isa = TTRIAnimationSlowMode.adjust(_:)(v3).super.isa;
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:isa timingParameters:0.0];

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  memcpy((v6 + 24), a1, 0x118uLL);
  aBlock[4] = sub_100106440;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100715B20;
  v7 = _Block_copy(aBlock);

  sub_100106478(a1, v8);

  [v5 addAnimations:v7];
  _Block_release(v7);
  [v5 startAnimation];
}

void sub_1001054A8(const void *a1)
{
  v3 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:500.0 damping:300.0 initialVelocity:{0.0, 0.0}];
  type metadata accessor for TTRIAnimationSlowMode();
  swift_allocObject();
  TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
  isa = TTRIAnimationSlowMode.adjust(_:)(v3).super.isa;
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:isa timingParameters:0.0];

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  memcpy((v6 + 24), a1, 0x118uLL);
  aBlock[4] = sub_10010892C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_100715B70;
  v7 = _Block_copy(aBlock);

  sub_100106478(a1, v9);

  [v5 addAnimations:v7];
  _Block_release(v7);
  v9[4] = sub_100108964;
  v10 = v1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100188D20;
  v9[3] = &unk_100715B98;
  v8 = _Block_copy(v9);

  [v5 addCompletion:v8];
  _Block_release(v8);
  [v5 startAnimation];
}

id sub_10010570C()
{
  memcpy(v42, (v0 + 32), 0x118uLL);
  if (sub_10010896C(v42) == 1)
  {
    return 0;
  }

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 240);
  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  v13 = *(v0 + 200);
  v14 = v6;
  v15 = v7;
  v16 = v11;
  v17 = v12;

  v18 = v16;
  [v18 convertRect:v13 fromCoordinateSpace:{v2, v3, v4, v5}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = sub_100108848(v20, v22, v8);
  v29 = sub_100068328(v27, v28, v24, v26, 0.0, -16.0);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [objc_allocWithZone(UIImageView) initWithImage:v17];
  [v36 setFrame:{0.0, 0.0, v9, v10}];
  v37 = [objc_allocWithZone(UIDragPreviewParameters) init];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 bezierPathWithRoundedRect:v29 cornerRadius:{v31, v33, v35, 16.0}];
  [v39 setVisiblePath:v40];

  if (qword_100766F10 != -1)
  {
    swift_once();
  }

  [v39 setBackgroundColor:qword_10076BF50];

  v41 = [objc_allocWithZone(UIDragPreview) initWithView:v36 parameters:v39];

  return v41;
}