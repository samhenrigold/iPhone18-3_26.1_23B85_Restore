uint64_t sub_1000E1D3C(unint64_t a1, char *a2, char *a3, char *a4)
{
  v71 = type metadata accessor for Music.Genre();
  v8 = *(v71 - 8);
  v9 = __chkstk_darwin(v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v67 = &v59 - v12;
  v13 = __chkstk_darwin(v11);
  v70 = &v59 - v14;
  result = __chkstk_darwin(v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = Music.Genre.name.getter();
            v52 = v51;
            if (v50 == Music.Genre.name.getter() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = Music.Genre.name.getter();
        v32 = v31;
        if (v30 == Music.Genre.name.getter() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_1000E2478(&v74, &v73, &v72);
  return 1;
}

uint64_t sub_1000E23D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000E2464(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000E2478(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Music.Genre();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000E255C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_1002264D8, &qword_1001BC318);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000E2660(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t sub_1000E27B8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Music.Genre();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1000E2A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002264D0, &unk_1001BC308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E2AFC()
{
  result = qword_1002264E0;
  if (!qword_1002264E0)
  {
    sub_10000460C(&qword_1002264E8, &unk_1001BC320);
    sub_1000E0B08();
    sub_10000BA2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002264E0);
  }

  return result;
}

id sub_1000E2B8C()
{
  v1 = v0[1];
  v15 = *v0;
  v16 = v1;
  sub_1000024C4(&qword_100226588, &qword_1001BC3A0);
  Binding.projectedValue.getter();
  v2 = v13;
  v3 = v14;
  v15 = v0[2];
  LOBYTE(v16) = *(v0 + 48);
  sub_1000024C4(&unk_1002265A0, &unk_1001BB3E0);
  Binding.projectedValue.getter();
  v4 = v12;
  v5 = v13;
  v6 = type metadata accessor for SearchBar.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV16EventViewService9SearchBar11Coordinator__text];
  *v8 = v12;
  *(v8 + 2) = v2;
  *(v8 + 3) = v3;
  v9 = &v7[OBJC_IVAR____TtCV16EventViewService9SearchBar11Coordinator__isSearching];
  *v9 = v4;
  v9[16] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1000E2C7C()
{
  v1 = [objc_allocWithZone(UISearchBar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1000024C4(&qword_1002265C8, &qword_1001BC498);
  UIViewRepresentableContext.coordinator.getter();
  [v1 setDelegate:v4];

  [v1 setSearchBarStyle:2];
  if (*(v0 + 64))
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  [v1 setPlaceholder:v2];

  [v1 setReturnKeyType:0];
  [v1 setShowsCancelButton:0 animated:0];
  return v1;
}

double sub_1000E2D8C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[1];
  aBlock = *v1;
  v19 = v11;
  sub_1000024C4(&qword_100226588, &qword_1001BC3A0);
  Binding.wrappedValue.getter();
  v12 = String._bridgeToObjectiveC()();

  [a1 setText:v12];

  aBlock = v1[2];
  LOBYTE(v19) = *(v1 + 48);
  sub_1000024C4(&unk_1002265A0, &unk_1001BB3E0);
  Binding.wrappedValue.getter();
  if (v22 == 1)
  {
    sub_1000E350C();
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v20 = sub_1000E3590;
    v21 = v15;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v19 = sub_100185774;
    *(&v19 + 1) = &unk_100216388;
    v16 = _Block_copy(&aBlock);
    v17 = a1;
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1000C71C4();
    sub_1000024C4(qword_100225DE0, &qword_1001BC490);
    sub_1000604E8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  return result;
}

id sub_1000E32B8@<X0>(void *a1@<X8>)
{
  result = sub_1000E2B8C();
  *a1 = result;
  return result;
}

uint64_t sub_1000E32E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E34B8(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000E3344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E34B8(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000E33A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000E34B8(a1, a2, a3);
  UIViewRepresentable.body.getter();
  __break(1u);
}

double sub_1000E33D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

__n128 sub_1000E33E8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000E340C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000E3454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000E34B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226598;
  if (!qword_100226598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226598);
  }

  return result;
}

unint64_t sub_1000E350C()
{
  result = qword_100225DD0;
  if (!qword_100225DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100225DD0);
  }

  return result;
}

uint64_t sub_1000E3558()
{

  return swift_deallocObject();
}

__n128 sub_1000E35B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000E35E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1000E3628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E36B0@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100226630, &qword_1001BC5A0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1000024C4(&qword_100226638, &qword_1001BC5A8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v12 = sub_1000024C4(&qword_100226640, &qword_1001BC5B0);
  sub_1000E3958(v1, &v7[*(v12 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v13 = sub_10000BFFC(&qword_100226648, &qword_100226630, &qword_1001BC5A0, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v16 + 8))(v4, v17);
  sub_1000050C4(v7, &qword_100226630, &qword_1001BC5A0);
  v19 = v5;
  v20 = v13;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000E3958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_1000024C4(&qword_100226650, &qword_1001BC5B8);
  __chkstk_darwin(v3 - 8);
  v78 = (&v74 - v4);
  v77 = sub_1000024C4(&qword_100226658, &unk_1001BC5C0);
  v5 = __chkstk_darwin(v77);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v79 = &v74 - v8;
  __chkstk_darwin(v7);
  v80 = &v74 - v9;
  v83 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v83);
  v11 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v16 - 8);
  v18 = &v74 - v17;
  v75 = sub_1000024C4(&qword_100226660, &qword_1001BC5D0);
  v19 = __chkstk_darwin(v75);
  v76 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v74 - v21;
  v23 = *(a1 + 88);
  v84 = a1;
  v24 = *(a1 + 96);
  if (v24 == 1)
  {
    v25 = *&v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v23, 0);
    (*(v13 + 8))(v15, v12);
    v25 = *&v87;
  }

  v27 = v25 * 48.0;
  if (COERCE__INT64(fabs(v25 * 48.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v24)
  {
    v28 = *&v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v23, 0);
    v30 = *(v13 + 8);
    v13 += 8;
    v30(v15, v12);
    v28 = *&v87;
  }

  v31 = v28 * 48.0;
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10007E528(v27, v31, v18);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_1000024C4(&qword_100226668, &qword_1001BC5D8);
  sub_1000E5658();
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v32 = &v22[*(sub_1000024C4(&qword_1002266A8, &qword_1001BC5F8) + 36)];
  v33 = v85[1];
  *v32 = v85[0];
  *(v32 + 1) = v33;
  *(v32 + 2) = v85[2];
  v22[*(sub_1000024C4(&qword_1002266B0, &qword_1001BC600) + 36)] = 1;
  v34 = *(v83 + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  v13 = *(*(v12 - 8) + 104);
  (v13)(v11 + v34, v18, v12);
  __asm { FMOV            V0.2D, #6.0 }

  v74 = _Q0;
  *v11 = _Q0;
  static Color.black.getter();
  v40 = Color.opacity(_:)();

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v41 = &v22[*(sub_1000024C4(&qword_1002266B8, &qword_1001BC608) + 36)];
  sub_100039704(v11, v41);
  v42 = v41 + *(sub_1000024C4(&qword_100222870, &unk_1001B8DB0) + 36);
  v43 = v85[4];
  *v42 = v85[3];
  *(v42 + 16) = v43;
  *(v42 + 32) = v86;
  v44 = sub_1000024C4(&qword_100222878, &unk_1001B64B0);
  *(v41 + *(v44 + 52)) = v40;
  *(v41 + *(v44 + 56)) = 256;
  v45 = static Alignment.center.getter();
  v47 = v46;
  sub_100039768(v11);
  v48 = (v41 + *(sub_1000024C4(&qword_100222880, &unk_1001B8DC0) + 36));
  *v48 = v45;
  v48[1] = v47;
  v49 = static Alignment.center.getter();
  v51 = v50;
  v52 = (v41 + *(sub_1000024C4(&qword_100224440, &qword_1001B9A40) + 36));
  *v52 = v49;
  v52[1] = v51;
  v23 = static Alignment.center.getter();
  v11 = v53;
  v54 = 0;
  KeyPath = 0;
  if (*(v84 + 80) == 1)
  {
    if (qword_100220C18 == -1)
    {
LABEL_15:
      v56 = qword_100239130;
      type metadata accessor for PlaybackViewModel(0);
      v54 = swift_allocObject();

      ObservationRegistrar.init()();
      *(v54 + 16) = v56;
      KeyPath = swift_getKeyPath();
      goto LABEL_16;
    }

LABEL_23:
    swift_once();
    goto LABEL_15;
  }

LABEL_16:
  v57 = &v22[*(sub_1000024C4(&qword_1002266C0, &qword_1001BC610) + 36)];
  *v57 = v54;
  *(v57 + 1) = KeyPath;
  v57[16] = 0;
  *(v57 + 3) = v23;
  *(v57 + 4) = v11;
  v58 = &v22[*(v75 + 36)];
  (v13)(&v58[*(v83 + 20)], v18, v12);
  *v58 = v74;
  v59 = static HorizontalAlignment.leading.getter();
  v60 = v78;
  *v78 = v59;
  *(v60 + 8) = 0;
  *(v60 + 16) = 0;
  v61 = sub_1000024C4(&qword_1002266C8, &qword_1001BC618);
  sub_1000E4EF8(v84, v60 + *(v61 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v62 = v79;
  sub_10001AE00(v60, v79, &qword_100226650, &qword_1001BC5B8);
  v63 = (v62 + *(v77 + 36));
  v64 = v90;
  v65 = v92;
  v66 = v93;
  v63[4] = v91;
  v63[5] = v65;
  v63[6] = v66;
  v67 = v88;
  *v63 = v87;
  v63[1] = v67;
  v63[2] = v89;
  v63[3] = v64;
  v68 = v80;
  sub_10001AE00(v62, v80, &qword_100226658, &unk_1001BC5C0);
  v69 = v76;
  sub_10000BEB8(v22, v76, &qword_100226660, &qword_1001BC5D0);
  v70 = v81;
  sub_10000BEB8(v68, v81, &qword_100226658, &unk_1001BC5C0);
  v71 = v82;
  sub_10000BEB8(v69, v82, &qword_100226660, &qword_1001BC5D0);
  v72 = sub_1000024C4(&qword_1002266D0, &qword_1001BC620);
  sub_10000BEB8(v70, v71 + *(v72 + 48), &qword_100226658, &unk_1001BC5C0);
  sub_1000050C4(v68, &qword_100226658, &unk_1001BC5C0);
  sub_1000050C4(v22, &qword_100226660, &qword_1001BC5D0);
  sub_1000050C4(v70, &qword_100226658, &unk_1001BC5C0);
  return sub_1000050C4(v69, &qword_100226660, &qword_1001BC5D0);
}

uint64_t sub_1000E4398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v31 = sub_1000024C4(&qword_1002266A0, &qword_1001BC5F0);
  __chkstk_darwin(v31);
  v3 = (&v30 - v2);
  v37 = sub_1000024C4(&qword_1002266F0, &qword_1001BC6A8);
  __chkstk_darwin(v37);
  v35 = &v30 - v4;
  v33 = sub_1000024C4(&qword_1002266F8, &qword_1001BC6B0);
  __chkstk_darwin(v33);
  v6 = &v30 - v5;
  v38 = sub_1000024C4(&qword_100226680, &qword_1001BC5E0);
  __chkstk_darwin(v38);
  v34 = &v30 - v7;
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_100226690, &qword_1001BC5E8);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for AsyncImagePhase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v32, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    v20 = Image.resizable(capInsets:resizingMode:)();
    (*(v9 + 8))(v11, v8);
    v39 = v20;
    View.accessibilityIdentifier(_:)();

    sub_10000BEB8(v14, v6, &qword_100226690, &qword_1001BC5E8);
    swift_storeEnumTagMultiPayload();
    sub_1000E579C();
    sub_10000BFFC(&qword_100226698, &qword_1002266A0, &qword_1001BC5F0, &protocol conformance descriptor for ZStack<A>);
    v21 = v34;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v21, v35, &qword_100226680, &qword_1001BC5E0);
    swift_storeEnumTagMultiPayload();
    sub_1000E56E4();
    _ConditionalContent<>.init(storage:)();

    sub_1000050C4(v21, &qword_100226680, &qword_1001BC5E0);
    v22 = v14;
    v23 = &qword_100226690;
    v24 = &qword_1001BC5E8;
  }

  else
  {
    v25 = v34;
    v26 = v35;
    if (v19 == enum case for AsyncImagePhase.failure(_:))
    {
      (*(v16 + 8))(v18, v15);
    }

    else if (v19 != enum case for AsyncImagePhase.empty(_:))
    {
      swift_storeEnumTagMultiPayload();
      sub_1000E56E4();
      _ConditionalContent<>.init(storage:)();
      return (*(v16 + 8))(v18, v15);
    }

    *v3 = static Alignment.center.getter();
    v3[1] = v27;
    v28 = sub_1000024C4(&qword_100226700, &qword_1001BC6B8);
    sub_1000E4A6C(v3 + *(v28 + 44));
    sub_10000BEB8(v3, v6, &qword_1002266A0, &qword_1001BC5F0);
    swift_storeEnumTagMultiPayload();
    sub_1000E579C();
    sub_10000BFFC(&qword_100226698, &qword_1002266A0, &qword_1001BC5F0, &protocol conformance descriptor for ZStack<A>);
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v25, v26, &qword_100226680, &qword_1001BC5E0);
    swift_storeEnumTagMultiPayload();
    sub_1000E56E4();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v25, &qword_100226680, &qword_1001BC5E0);
    v22 = v3;
    v23 = &qword_1002266A0;
    v24 = &qword_1001BC5F0;
  }

  return sub_1000050C4(v22, v23, v24);
}

uint64_t sub_1000E4A6C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for Image.ResizingMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100226708, &unk_1001BC6C0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v33 - v9;
  v11 = sub_1000024C4(&qword_100225A40, &qword_1001BB098);
  v12 = __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *(type metadata accessor for RoundedRectangle() + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #6.0 }

  *v16 = _Q0;
  if (qword_100220BA0 != -1)
  {
    swift_once();
  }

  v25 = qword_1002390C0;
  KeyPath = swift_getKeyPath();
  v27 = &v16[*(v11 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;

  Image.init(systemName:)();
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v28 = Image.resizable(capInsets:resizingMode:)();

  (*(v2 + 8))(v4, v1);
  v29 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = 1;
  v34 = v28;
  LOWORD(v35) = 1;
  *(&v35 + 1) = v29;
  sub_1000024C4(&qword_100226710, &qword_1001BC700);
  sub_1000E58E8();
  View.accessibilityIdentifier(_:)();
  v40[3] = v37;
  v40[4] = v38;
  v40[1] = v35;
  v40[2] = v36;
  v40[0] = v34;
  sub_1000050C4(v40, &qword_100226710, &qword_1001BC700);
  sub_10000BEB8(v16, v14, &qword_100225A40, &qword_1001BB098);
  sub_10000BEB8(v10, v8, &qword_100226708, &unk_1001BC6C0);
  v30 = v33;
  sub_10000BEB8(v14, v33, &qword_100225A40, &qword_1001BB098);
  v31 = sub_1000024C4(&qword_100226730, &qword_1001BC710);
  sub_10000BEB8(v8, v30 + *(v31 + 48), &qword_100226708, &unk_1001BC6C0);
  sub_1000050C4(v10, &qword_100226708, &unk_1001BC6C0);
  sub_1000050C4(v16, &qword_100225A40, &qword_1001BB098);
  sub_1000050C4(v8, &qword_100226708, &unk_1001BC6C0);
  return sub_1000050C4(v14, &qword_100225A40, &qword_1001BB098);
}

uint64_t sub_1000E4EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1000024C4(&qword_100221B10, &qword_1001B4F50);
  v4 = __chkstk_darwin(v3 - 8);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v41 - v6;
  v7 = sub_1000024C4(&qword_1002266D8, &qword_1001BC660);
  v8 = __chkstk_darwin(v7 - 8);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v41 - v10;
  *v11 = static VerticalAlignment.lastTextBaseline.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = sub_1000024C4(&qword_1002266E0, &qword_1001BC668);
  v13 = sub_1000E52F4(a1, &v11[*(v12 + 44)]);
  v14 = *(a1 + 24);
  v46 = *(a1 + 16);
  v47 = v14;
  sub_10001877C(v13, v15, v16);

  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Font.subheadline.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  sub_100017398(v17, v19, v21 & 1);

  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v46 = qword_1002390B8;

  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_100017398(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v46 = v27;
  v47 = v29;
  v31 &= 1u;
  v48 = v31;
  v49 = v33;
  v50 = KeyPath;
  v51 = 1;
  v52 = 0;
  sub_1000024C4(&qword_100221B38, &unk_1001B4FA0);
  sub_10001B3F8();
  v35 = v43;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v27, v29, v31);

  v36 = v42;
  sub_10000BEB8(v11, v42, &qword_1002266D8, &qword_1001BC660);
  v37 = v45;
  sub_10000BEB8(v35, v45, &qword_100221B10, &qword_1001B4F50);
  v38 = v44;
  sub_10000BEB8(v36, v44, &qword_1002266D8, &qword_1001BC660);
  v39 = sub_1000024C4(&qword_1002266E8, &qword_1001BC6A0);
  sub_10000BEB8(v37, v38 + *(v39 + 48), &qword_100221B10, &qword_1001B4F50);
  sub_1000050C4(v35, &qword_100221B10, &qword_1001B4F50);
  sub_1000050C4(v11, &qword_1002266D8, &qword_1001BC660);
  sub_1000050C4(v37, &qword_100221B10, &qword_1001B4F50);
  return sub_1000050C4(v36, &qword_1002266D8, &qword_1001BC660);
}

uint64_t sub_1000E52F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for Text.Suffix();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000024C4(&qword_100221B10, &qword_1001B4F50);
  v5 = __chkstk_darwin(v31);
  v7 = &v31 - v6;
  v8 = *(a1 + 8);
  v35 = *a1;
  v36 = v8;
  sub_10001877C(v5, v9, v10);

  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(v8) = v14;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v35 = v11;
  v36 = v13;
  v37 = v8 & 1;
  v38 = v16;
  v39 = KeyPath;
  v40 = 1;
  v41 = 0;
  sub_1000024C4(&qword_100221B38, &unk_1001B4FA0);
  sub_10001B3F8();
  View.accessibilityIdentifier(_:)();
  sub_100017398(v11, v13, v8 & 1);

  if (*(a1 + 32) == 1)
  {
    static Font.subheadline.getter();
    v18 = Text.font(_:)();
    v20 = v19;
    v22 = v21;

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    v35 = qword_1002390B8;

    v23 = Text.foregroundStyle<A>(_:)();
    v24 = v18;
    v25 = v23;
    v27 = v26;
    v29 = v28;
    sub_100017398(v24, v20, v22 & 1);

    static Text.Suffix.alwaysVisible(_:)();
    sub_100017398(v25, v27, v29 & 1);
  }

  else
  {
    static Text.Suffix.none.getter();
  }

  sub_10002C3C8();
  View.textSuffix(_:)();
  (*(v32 + 8))(v4, v34);
  return sub_1000050C4(v7, &qword_100221B10, &qword_1001B4F50);
}

unint64_t sub_1000E5658()
{
  result = qword_100226670;
  if (!qword_100226670)
  {
    sub_10000460C(&qword_100226668, &qword_1001BC5D8);
    sub_1000E56E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226670);
  }

  return result;
}

unint64_t sub_1000E56E4()
{
  result = qword_100226678;
  if (!qword_100226678)
  {
    sub_10000460C(&qword_100226680, &qword_1001BC5E0);
    sub_1000E579C();
    sub_10000BFFC(&qword_100226698, &qword_1002266A0, &qword_1001BC5F0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226678);
  }

  return result;
}

unint64_t sub_1000E579C()
{
  result = qword_100226688;
  if (!qword_100226688)
  {
    sub_10000460C(&qword_100226690, &qword_1001BC5E8);
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226688);
  }

  return result;
}

uint64_t sub_1000E5828@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000E5858@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000E58E8()
{
  result = qword_100226718;
  if (!qword_100226718)
  {
    sub_10000460C(&qword_100226710, &qword_1001BC700);
    sub_1000E5974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226718);
  }

  return result;
}

unint64_t sub_1000E5974()
{
  result = qword_100226720;
  if (!qword_100226720)
  {
    sub_10000460C(&qword_100226728, &qword_1001BC708);
    sub_100069870();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226720);
  }

  return result;
}

unint64_t sub_1000E5A30()
{
  result = qword_100226738;
  if (!qword_100226738)
  {
    sub_10000460C(qword_100226740, &qword_1001BC718);
    sub_10000460C(&qword_100226630, &qword_1001BC5A0);
    sub_10000BFFC(&qword_100226648, &qword_100226630, &qword_1001BC5A0, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226738);
  }

  return result;
}

uint64_t sub_1000E5B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  swift_getWitnessTable();
  v25[1] = type metadata accessor for _ViewModifier_Content();
  sub_10000460C(&qword_1002267C8, &unk_1001BC790);
  v6 = *(a2 + 16);
  v26 = *(a2 + 24);
  v27 = v6;
  type metadata accessor for _PreferenceWritingModifier();
  v7 = type metadata accessor for ModifiedContent();
  v8 = sub_1000E6518();
  WitnessTable = swift_getWitnessTable();
  v36 = v8;
  v37 = WitnessTable;
  v28 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v25[3] = v7;
  v25[2] = swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  v25[4] = swift_getWitnessTable();
  v25[5] = type metadata accessor for _BackgroundModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v25 - v15;
  (*(v4 + 16))(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v29, a2);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = v26;
  *(v18 + 16) = v27;
  *(v18 + 24) = v19;
  (*(v4 + 32))(v18 + v17, v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v34 = GeometryReader.init(content:)();
  v35 = v20;
  static Alignment.center.getter();
  v21 = swift_getWitnessTable();
  View.background<A>(_:alignment:)();

  v22 = swift_getWitnessTable();
  v32 = v21;
  v33 = v22;
  swift_getWitnessTable();
  sub_1000EE87C();
  v23 = *(v11 + 8);
  v23(v14, v10);
  sub_1000EE87C();
  return (v23)(v16, v10);
}

uint64_t sub_1000E5F0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[4] = a1;
  v30 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v26 - v8;
  v10 = sub_10000460C(&qword_1002267C8, &unk_1001BC790);
  v26[2] = a4;
  v26[3] = v10;
  v26[0] = a3;
  v11 = a4;
  v26[5] = type metadata accessor for _PreferenceWritingModifier();
  v12 = type metadata accessor for ModifiedContent();
  v28 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v26 - v16;
  v18 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v34 = v18;
  v26[1] = *a2;
  v20 = *(a2 + *(type metadata accessor for SizeModifier(0, a3, v11, v19) + 40));
  v21 = GeometryProxy.frame(in:)();
  v20(v21);
  v22 = sub_1000E6518();
  View.preference<A>(key:value:)();
  (*(v27 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v31 = v22;
  v32 = WitnessTable;
  swift_getWitnessTable();
  sub_1000EE87C();
  v24 = *(v28 + 8);
  v24(v15, v12);
  sub_1000EE87C();
  return (v24)(v17, v12);
}

uint64_t sub_1000E620C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  v11 = type metadata accessor for SizeModifier(0, a5, a6, a4);
  v12 = *(v11 + 36);
  v13 = type metadata accessor for CoordinateSpace();
  result = (*(*(v13 - 8) + 32))(&a7[v12], a2, v13);
  v15 = &a7[*(v11 + 40)];
  *v15 = a3;
  *(v15 + 1) = a4;
  return result;
}

unint64_t sub_1000E62C4(uint64_t a1)
{
  swift_getMetatypeMetadata();
  result = type metadata accessor for CoordinateSpace();
  if (v2 <= 0x3F)
  {
    result = sub_100023D44();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E636C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CoordinateSpace();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1000E642C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CoordinateSpace();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1000E6518()
{
  result = qword_1002267D0;
  if (!qword_1002267D0)
  {
    v1 = sub_10000460C(&qword_1002267C8, &unk_1001BC790);
    sub_100057474(v1, v2, v3);
    sub_1000E65A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002267D0);
  }

  return result;
}

unint64_t sub_1000E65A4()
{
  result = qword_1002238C0;
  if (!qword_1002238C0)
  {
    sub_10000460C(&qword_1002238C8, &unk_1001BA4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002238C0);
  }

  return result;
}

uint64_t sub_1000E6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SizeModifier(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  v7 = *(v5 + 36);
  v8 = type metadata accessor for CoordinateSpace();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1000E6704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SizeModifier(0, v6, v7, a2) - 8);
  v9 = (v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return sub_1000E5F0C(a1, v9, v6, v7, a3);
}

uint64_t sub_1000E67A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SizeModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000460C(&qword_1002267C8, &unk_1001BC790);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  sub_1000E6518();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000E6950(uint64_t a1)
{
  result = sub_1000E7338(&qword_1002267D8, &type metadata accessor for Dance, &unk_1001BC800);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E69AC()
{
  result = qword_1002267E0;
  if (!qword_1002267E0)
  {
    sub_10000460C(&qword_1002267E8, &qword_1001BC7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002267E0);
  }

  return result;
}

uint64_t sub_1000E6B78()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000024C4(&qword_100225398, &unk_1001BA8D0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1000024C4(qword_1002268C0, &qword_1001BC848);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000E6D64, 0, 0);
}

uint64_t sub_1000E6D64()
{
  if (qword_100220BF8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = type metadata accessor for EventService();
  sub_10000BE10(v4, qword_100239108);
  Dance.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Dance();
  sub_1000E7338(&qword_1002253B0, &type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  static EventService.RequestType.dance.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000E6F1C;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000E6F1C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_1000DE330;
  }

  else
  {
    v3 = sub_1000E70A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E70A0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = Venue.Schedule.events.getter();
  (*(v2 + 8))(v1, v3);
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_100188274(sub_1000E7380, v8, v7);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000E71E4@<X0>(uint64_t *a1@<X8>)
{
  result = Dance.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000E7228()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE494;

  return sub_1000E6B78();
}

uint64_t sub_1000E72B4(uint64_t a1)
{
  *(a1 + 8) = sub_1000E7338(&qword_1002268B0, &type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  result = sub_1000E7338(&qword_1002268B8, &type metadata accessor for Dance, &protocol conformance descriptor for Dance);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000E7338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000E73A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntertainmentEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    sub_100017044(319);
    if (v5 <= 0x3F)
    {
      sub_100082DA0(319);
      if (v6 <= 0x3F)
      {
        sub_100029AB4();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000E7478(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_1000E7548(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000E7690@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_1000E76FC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000E78CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  State.init(wrappedValue:)();
  *a4 = v14;
  a4[1] = v15;
  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  a4[2] = EnvironmentObject.init()();
  a4[3] = v8;
  v10 = type metadata accessor for EntertainmentEventView(0, *(v7 + 80), *(v7 + 88), v9);
  v11 = *(v10 + 40);
  *(a4 + v11) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  result = swift_storeEnumTagMultiPayload();
  v13 = a4 + *(v10 + 44);
  *v13 = a2;
  v13[8] = a3 & 1;
  return result;
}

uint64_t sub_1000E7A3C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1000E7B24;

  return v5();
}

uint64_t sub_1000E7B24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E7C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntertainmentEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v5;
}

uint64_t sub_1000E7C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntertainmentEventViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.projectedValue.getter();
  return v5;
}

uint64_t sub_1000E7CC8(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 44);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000E7F48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v132 = a2;
  v131 = type metadata accessor for TaskPriority();
  v130 = *(v131 - 8);
  v3 = __chkstk_darwin(v131);
  v129 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = *(a1 - 8);
  v137 = *(v128 + 64);
  __chkstk_darwin(v3);
  v127 = v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  type metadata accessor for Optional();
  v126 = type metadata accessor for Binding();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = v104 - v7;
  v135 = type metadata accessor for NavigationPath();
  v8 = *(a1 + 24);
  v11 = sub_1000ED714(v135, v9, v10);
  OpaqueTypeMetadata2 = v6;
  v147 = &type metadata for DefaultHeroImageView;
  v148 = v8;
  v149 = v11;
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v12 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v157 = &protocol witness table for _PaddingLayout;
  v13 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v12;
  v147 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule(255, v6, v8, v14);
  v147 = type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v138 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v148 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, v6, v8, v18);
  v149 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v19 = type metadata accessor for ScrollView();
  v20 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v19;
  v147 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v19;
  v147 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v21;
  v147 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v21;
  v147 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v23;
  v147 = v24;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v25 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v23;
  v147 = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v154 = v26;
  v155 = v27;
  v28 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v25;
  v147 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v25;
  v147 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v33 = sub_10001877C(v30, v31, v32);
  OpaqueTypeMetadata2 = v29;
  v147 = &type metadata for String;
  v148 = v30;
  v149 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v29;
  v147 = &type metadata for String;
  v148 = v30;
  v149 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v34;
  v147 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v34;
  v147 = v35;
  v37 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v36;
  v147 = &type metadata for Bool;
  v148 = v37;
  v149 = &protocol witness table for Bool;
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = sub_10000460C(&qword_100226950, &qword_1001BC8D0);
  OpaqueTypeMetadata2 = v36;
  v147 = &type metadata for Bool;
  v148 = v37;
  v149 = &protocol witness table for Bool;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_10000460C(&qword_1002245F8, &unk_1001B90C0);
  v42 = sub_1000ED768();
  OpaqueTypeMetadata2 = v41;
  v147 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v38;
  v147 = v39;
  v148 = v40;
  v149 = v43;
  v113 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v38;
  v147 = v39;
  v148 = v40;
  v149 = v43;
  v111 = swift_getOpaqueTypeConformance2();
  v44 = type metadata accessor for NavigationStack();
  v112 = *(v44 - 8);
  __chkstk_darwin(v44);
  v109 = v104 - v45;
  type metadata accessor for AccessibilityAttachmentModifier();
  v46 = type metadata accessor for ModifiedContent();
  v122 = *(v46 - 8);
  __chkstk_darwin(v46);
  v133 = v104 - v47;
  v48 = swift_getWitnessTable();
  v106 = v48;
  v49 = sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v152 = v48;
  v153 = v49;
  v50 = swift_getWitnessTable();
  v51 = *(v138 + 16);
  v52 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v46;
  v147 = v6;
  v53 = v46;
  v105 = v46;
  v148 = a1;
  v149 = v50;
  v54 = v50;
  v108 = v50;
  v150 = v51;
  v151 = v52;
  v107 = v51;
  v104[1] = v52;
  v115 = swift_getOpaqueTypeMetadata2();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v134 = v104 - v55;
  v56 = type metadata accessor for ModifiedContent();
  v117 = v56;
  v123 = *(v56 - 8);
  __chkstk_darwin(v56);
  v135 = v104 - v57;
  OpaqueTypeMetadata2 = v53;
  v147 = v6;
  v148 = a1;
  v149 = v54;
  v150 = v51;
  v151 = v52;
  v110 = swift_getOpaqueTypeConformance2();
  v144 = v110;
  v145 = &protocol witness table for _AppearanceActionModifier;
  v116 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v56;
  v147 = v116;
  v121 = swift_getOpaqueTypeMetadata2();
  v120 = *(v121 - 8);
  v58 = __chkstk_darwin(v121);
  v114 = v104 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v118 = v104 - v60;
  v61 = v138;
  v141 = v6;
  v142 = v138;
  v143 = v136;
  v62 = v109;
  NavigationStack.init<>(root:)();
  View.accessibilityIdentifier(_:)();
  (*(v112 + 8))(v62, v44);
  v63 = a1;
  v67 = sub_1000E7C70(a1, v64, v65, v66);
  v69 = v68;
  v71 = v70;
  v72 = v6;
  v139 = v6;
  v140 = v61;
  swift_getKeyPath();
  OpaqueTypeMetadata2 = v67;
  v147 = v69;
  v148 = v71;
  type metadata accessor for EntertainmentEventViewModel(255, v6, v61, v73);
  type metadata accessor for Binding();
  v74 = v124;
  Binding.subscript.getter();

  v75 = swift_allocObject();
  *(v75 + 16) = v72;
  *(v75 + 24) = v61;
  v76 = v105;
  v104[0] = v72;
  v77 = v63;
  v78 = v133;
  View.sheet<A, B>(item:onDismiss:content:)();

  (*(v125 + 8))(v74, v126);
  (*(v122 + 8))(v78, v76);
  v79 = v128;
  v133 = *(v128 + 16);
  v80 = v127;
  v81 = v136;
  (v133)(v127, v136, v77);
  v82 = *(v79 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = v72;
  *(v83 + 24) = v61;
  v84 = *(v79 + 32);
  v84(v83 + ((v82 + 32) & ~v82), v80, v77);
  v85 = v115;
  v86 = v134;
  View.onAppear(perform:)();

  (*(v119 + 8))(v86, v85);
  (v133)(v80, v81, v77);
  type metadata accessor for MainActor();
  v87 = static MainActor.shared.getter();
  v88 = swift_allocObject();
  v88[2] = v87;
  v88[3] = &protocol witness table for MainActor;
  v89 = v138;
  v88[4] = v104[0];
  v88[5] = v89;
  v84(v88 + ((v82 + 48) & ~v82), v80, v77);
  v90 = v129;
  v91 = v117;
  v92 = v116;
  j___sScP13userInitiatedScPvgZ();
  v103 = v92;
  v93 = v114;
  v94 = v90;
  v95 = v90;
  v96 = v135;
  sub_10000250C(0, v94, 0xD00000000000002DLL, 0x80000001001C7160, 120, &unk_1001BC920, v88, v114, v91, v103);
  (*(v130 + 8))(v95, v131);
  (*(v123 + 8))(v96, v91);
  v97 = v120;
  v98 = *(v120 + 16);
  v99 = v118;
  v100 = v121;
  v98(v118, v93, v121);
  v101 = *(v97 + 8);
  v101(v93, v100);
  v98(v132, v99, v100);
  return (v101)(v99, v100);
}

uint64_t sub_1000E8FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v174 = a5;
  v175 = a1;
  v171 = type metadata accessor for EntertainmentEventView(0, a2, a3, a4);
  v170 = *(v171 - 8);
  v168 = *(v170 + 64);
  __chkstk_darwin(v171);
  v169 = &v114 - v7;
  v167 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for ContentMarginPlacement();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v162 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for ScrollIndicatorVisibility();
  v160 = *(v161 - 8);
  v10 = __chkstk_darwin(v161);
  v150 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000ED714(v10, v12, v13);
  OpaqueTypeMetadata2 = a2;
  v184 = &type metadata for DefaultHeroImageView;
  v185 = a3;
  v186 = v14;
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v15 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v182 = &protocol witness table for _PaddingLayout;
  v16 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v15;
  v184 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule(255, a2, a3, v17);
  v184 = type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  v185 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, a2, a3, v21);
  v186 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v117 = type metadata accessor for VStack();
  v116 = swift_getWitnessTable();
  v22 = type metadata accessor for ScrollView();
  v152 = *(v22 - 8);
  __chkstk_darwin(v22);
  v115 = &v114 - v23;
  v24 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v22;
  v184 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v144 = *(v25 - 8);
  __chkstk_darwin(v25);
  v138 = &v114 - v26;
  v134 = v22;
  OpaqueTypeMetadata2 = v22;
  v184 = v24;
  v130 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v25;
  v184 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeMetadata2();
  v137 = *(v28 - 8);
  __chkstk_darwin(v28);
  v131 = &v114 - v29;
  v149 = v25;
  OpaqueTypeMetadata2 = v25;
  v184 = OpaqueTypeConformance2;
  v126 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v28;
  v184 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v147 = *(v31 - 8);
  __chkstk_darwin(v31);
  v140 = &v114 - v32;
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v151 = v31;
  v33 = type metadata accessor for ModifiedContent();
  v145 = *(v33 - 8);
  __chkstk_darwin(v33);
  v139 = &v114 - v34;
  v141 = v28;
  OpaqueTypeMetadata2 = v28;
  v184 = v30;
  v123 = v30;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v118 = v35;
  v179 = v35;
  v180 = v36;
  v37 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v33;
  v184 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v133 = *(v38 - 8);
  __chkstk_darwin(v38);
  v128 = &v114 - v39;
  OpaqueTypeMetadata2 = v33;
  v184 = v37;
  v119 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v43 = sub_10001877C(v40, v41, v42);
  OpaqueTypeMetadata2 = v38;
  v184 = &type metadata for String;
  v185 = v40;
  v186 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v148 = *(v44 - 8);
  __chkstk_darwin(v44);
  v142 = &v114 - v45;
  v136 = v38;
  OpaqueTypeMetadata2 = v38;
  v184 = &type metadata for String;
  v121 = v40;
  v185 = v40;
  v186 = v43;
  v120 = v43;
  v46 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v44;
  v184 = v46;
  v47 = swift_getOpaqueTypeMetadata2();
  v158 = *(v47 - 8);
  __chkstk_darwin(v47);
  v156 = &v114 - v48;
  v153 = v44;
  OpaqueTypeMetadata2 = v44;
  v184 = v46;
  v127 = v46;
  v49 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v47;
  v184 = &type metadata for Bool;
  v185 = v49;
  v186 = &protocol witness table for Bool;
  v50 = swift_getOpaqueTypeMetadata2();
  v155 = *(v50 - 8);
  __chkstk_darwin(v50);
  v154 = &v114 - v51;
  v52 = sub_10000460C(&qword_100226950, &qword_1001BC8D0);
  v159 = v47;
  OpaqueTypeMetadata2 = v47;
  v184 = &type metadata for Bool;
  v146 = v49;
  v185 = v49;
  v186 = &protocol witness table for Bool;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = sub_10000460C(&qword_1002245F8, &unk_1001B90C0);
  v55 = sub_1000ED768();
  OpaqueTypeMetadata2 = v54;
  v184 = v55;
  v56 = v115;
  v57 = swift_getOpaqueTypeConformance2();
  v157 = v50;
  OpaqueTypeMetadata2 = v50;
  v184 = v52;
  v143 = v52;
  v135 = v53;
  v185 = v53;
  v186 = v57;
  v125 = v57;
  v132 = swift_getOpaqueTypeMetadata2();
  v129 = *(v132 - 8);
  v58 = __chkstk_darwin(v132);
  v122 = &v114 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v124 = &v114 - v60;
  v172 = a2;
  v176 = a2;
  v177 = a3;
  v61 = v150;
  v173 = a3;
  v178 = v175;
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0, &unk_1001BC9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v50) = static Axis.Set.vertical.getter();
  *(inited + 32) = v50;
  v63 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v63;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v50)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v63)
  {
    Axis.Set.init(rawValue:)();
  }

  v64 = v138;
  v65 = v134;
  View.scrollIndicators(_:axes:)();
  (*(v160 + 8))(v61, v161);
  (*(v152 + 8))(v56, v65);
  static Edge.Set.bottom.getter();
  v66 = v162;
  static ContentMarginPlacement.scrollContent.getter();
  v67 = v131;
  v68 = v149;
  View.contentMargins(_:_:for:)();
  v69 = *(v163 + 8);
  v70 = v164;
  v69(v66, v164);
  (*(v144 + 8))(v64, v68);
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v71 = v140;
  v72 = v141;
  View.contentMargins(_:_:for:)();
  v69(v66, v70);
  (*(v137 + 8))(v67, v72);
  v73 = [objc_opt_self() systemGroupedBackgroundColor];
  OpaqueTypeMetadata2 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v74 = v139;
  v75 = v151;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v147 + 8))(v71, v75);
  v76 = v166;
  v77 = v165;
  v78 = v167;
  (*(v166 + 104))(v165, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v167);
  v79 = v128;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v76 + 8))(v77, v78);
  (*(v145 + 8))(v74, v33);
  v80 = v171;
  v81 = v175;
  sub_1000E7C1C(v171, v82, v83, v84);
  v85 = sub_100118808();
  v87 = v86;

  OpaqueTypeMetadata2 = v85;
  v184 = v87;
  v88 = v142;
  v89 = v136;
  View.navigationTitle<A>(_:)();

  (*(v133 + 8))(v79, v89);
  sub_1000E7C1C(v80, v90, v91, v92);
  sub_100116470();

  sub_1000024C4(&qword_1002245D8, &unk_1001B90A0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001B49B0;
  static ToolbarPlacement.navigationBar.getter();
  v93 = v156;
  v94 = v153;
  View.toolbarBackgroundVisibility(_:for:)();

  (*(v148 + 8))(v88, v94);
  v95 = swift_allocObject();
  v96 = v172;
  v97 = v173;
  *(v95 + 16) = v172;
  *(v95 + 24) = v97;
  v98 = v170;
  v99 = v169;
  (*(v170 + 16))(v169, v81, v80);
  v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v101 = swift_allocObject();
  *(v101 + 16) = v96;
  *(v101 + 24) = v97;
  (*(v98 + 32))(v101 + v100, v99, v80);
  v113 = &protocol witness table for Bool;
  v102 = v154;
  v103 = v159;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v104 = (*(v158 + 8))(v93, v103);
  __chkstk_darwin(v104);
  *(&v114 - 4) = v96;
  *(&v114 - 3) = v97;
  v113 = v81;
  v105 = v122;
  v106 = v157;
  View.toolbar<A>(content:)();
  (*(v155 + 8))(v102, v106);
  v107 = v129;
  v108 = *(v129 + 16);
  v109 = v124;
  v110 = v132;
  v108(v124, v105, v132);
  v111 = *(v107 + 8);
  v111(v105, v110);
  v108(v174, v109, v110);
  return (v111)(v109, v110);
}

uint64_t sub_1000EA4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  OpaqueTypeMetadata2 = a2;
  v32 = &type metadata for DefaultHeroImageView;
  v33 = a3;
  v34 = sub_1000ED714(a1, a2, a3);
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v8 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v30 = &protocol witness table for _PaddingLayout;
  v9 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v8;
  v32 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule(255, a2, a3, v10);
  v32 = type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v33 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, a2, a3, v14);
  v34 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v15 = type metadata accessor for VStack();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v25[-v20];
  static HorizontalAlignment.leading.getter();
  v26 = a2;
  v27 = a3;
  v28 = a1;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v22 = *(v16 + 16);
  v22(v21, v19, v15);
  v23 = *(v16 + 8);
  v23(v19, v15);
  v22(a4, v21, v15);
  return (v23)(v21, v15);
}

uint64_t sub_1000EA818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v253 = a4;
  type metadata accessor for Optional();
  v7 = type metadata accessor for Binding();
  __chkstk_darwin(v7 - 8);
  v225 = &v222 - v8;
  v10 = type metadata accessor for UpcomingViewModel(0, a2, a3, v9);
  __chkstk_darwin(v10 - 8);
  v223 = &v222 - v11;
  v13 = type metadata accessor for UpcomingModule(0, a2, a3, v12);
  v249 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v226 = &v222 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v224 = &v222 - v16;
  v250 = v17;
  v252 = type metadata accessor for Optional();
  v251 = *(v252 - 8);
  v18 = __chkstk_darwin(v252);
  v266 = &v222 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v265 = &v222 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v222 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v256 = &v222 - v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v257 = AssociatedTypeWitness;
  v255 = AssociatedConformanceWitness;
  v25 = type metadata accessor for LocationModule(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
  v247 = *(v25 - 8);
  __chkstk_darwin(v25);
  v245 = &v222 - v26;
  v248 = v27;
  v264 = type metadata accessor for ModifiedContent();
  v275 = *(v264 - 8);
  v28 = __chkstk_darwin(v264);
  v263 = &v222 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v246 = &v222 - v31;
  __chkstk_darwin(v30);
  v274 = &v222 - v32;
  v34 = type metadata accessor for DetailsModule(0, a2, a3, v33);
  v242 = *(v34 - 8);
  __chkstk_darwin(v34);
  v241 = (&v222 - v35);
  v243 = v36;
  v273 = type metadata accessor for ModifiedContent();
  v272 = *(v273 - 8);
  v37 = __chkstk_darwin(v273);
  v262 = &v222 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v240 = &v222 - v40;
  __chkstk_darwin(v39);
  v271 = &v222 - v41;
  v43 = type metadata accessor for EntertainmentEventView(0, a2, a3, v42);
  v267 = *(v43 - 8);
  v258 = v267[8];
  v44 = __chkstk_darwin(v43);
  OpaqueTypeConformance2 = &v222 - v45;
  v254 = *(a2 - 8);
  v46 = __chkstk_darwin(v44);
  v230 = (&v222 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __chkstk_darwin(v46);
  v50 = &v222 - v49;
  v260 = (&v222 - v49);
  v233 = sub_1000ED714(v48, v51, v52);
  *&v283 = a2;
  *(&v283 + 1) = &type metadata for DefaultHeroImageView;
  *&v284 = a3;
  *(&v284 + 1) = v233;
  v53 = type metadata accessor for HeaderModule(0, &v283);
  v236 = *(v53 - 8);
  __chkstk_darwin(v53);
  v231 = &v222 - v54;
  v55 = type metadata accessor for ModifiedContent();
  v239 = *(v55 - 8);
  __chkstk_darwin(v55);
  v238 = &v222 - v56;
  v237 = v53;
  WitnessTable = swift_getWitnessTable();
  v286 = WitnessTable;
  v287 = &protocol witness table for _PaddingLayout;
  v57 = swift_getWitnessTable();
  v244 = v55;
  *&v283 = v55;
  *(&v283 + 1) = v57;
  v235 = v57;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v269 = *(OpaqueTypeMetadata2 - 8);
  v58 = __chkstk_darwin(OpaqueTypeMetadata2);
  v261 = &v222 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v234 = &v222 - v61;
  __chkstk_darwin(v60);
  v268 = &v222 - v62;
  v276 = a3;
  v229 = type metadata accessor for HeaderViewModel(0, a2, a3, v63);
  sub_1000E7C1C(v43, v64, v65, v66);
  sub_100115D88(v50);

  v67 = a1;
  v71 = sub_1000E7C1C(v43, v68, v69, v70);
  v228 = sub_100115E64(v71);
  v227 = v72;

  sub_1000E7C1C(v43, v73, v74, v75);
  v76 = sub_100115F74();
  v78 = v77;

  sub_1000E7C1C(v43, v79, v80, v81);
  v82 = sub_100115F94();
  v84 = v83;

  sub_1000E7C1C(v43, v85, v86, v87);
  v88 = v230;
  sub_100115D88(v230);

  v89 = sub_10008C468(a2, a3);
  (*(v254 + 8))(v88, a2);
  v285 = 0;
  v283 = 0u;
  v284 = 0u;
  v90 = sub_10002E5E4(v260, v228, v227, v76, v78, v82, v84, 0, 0, v89 & 1, &v283);
  v91 = v267;
  v92 = OpaqueTypeConformance2;
  v230 = v267[2];
  (v230)(OpaqueTypeConformance2, v67, v43);
  v93 = v91;
  v94 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v95 = swift_allocObject();
  v254 = a2;
  v96 = v276;
  *(v95 + 16) = a2;
  *(v95 + 24) = v96;
  v97 = v93[4];
  v267 = v93 + 4;
  v229 = v97;
  v97(v95 + v94, v92, v43);
  v98 = v231;
  sub_10016A66C(v90, sub_1000EDF08, v95, &type metadata for DefaultHeroImageView, v233, v231);
  static Edge.Set.horizontal.getter();
  v99 = v43;
  if (sub_1000E7CC8(v43))
  {
    sub_100082FDC();
  }

  v100 = v238;
  v101 = v237;
  View.padding(_:_:)();
  (*(v236 + 8))(v98, v101);
  v102 = OpaqueTypeConformance2;
  (v230)(OpaqueTypeConformance2, v67, v99);
  v103 = swift_allocObject();
  v104 = v254;
  v105 = v276;
  *(v103 + 16) = v254;
  *(v103 + 24) = v105;
  v229(v103 + v94, v102, v99);
  v106 = v234;
  v107 = v244;
  v108 = v235;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v239 + 8))(v100, v107);
  *&v283 = v107;
  *(&v283 + 1) = v108;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = v269;
  v110 = *(v269 + 16);
  v111 = OpaqueTypeMetadata2;
  v258 = v269 + 16;
  v244 = v110;
  (v110)(v268, v106, OpaqueTypeMetadata2);
  v112 = *(v109 + 8);
  v269 = v109 + 8;
  v267 = v112;
  (v112)(v106, v111);
  type metadata accessor for DetailsViewModel(0, v104, v105, v113);
  sub_1000E7C1C(v99, v114, v115, v116);
  v117 = v260;
  sub_100115D88(v260);

  sub_1000E7C1C(v99, v118, v119, v120);
  v121 = sub_100118894();
  v122 = v121;

  v123 = sub_1000F6130(v117, v121);
  v124 = v241;
  sub_1000924E4(v123, v241);
  static Edge.Set.horizontal.getter();
  if (sub_1000E7CC8(v99))
  {
    sub_1000830AC();
  }

  else
  {
    static Solarium.isEnabled.getter();
  }

  v125 = v243;
  v126 = swift_getWitnessTable();
  v127 = v240;
  View.padding(_:_:)();
  (*(v242 + 1))(v124, v125);
  v282[6] = v126;
  v282[7] = &protocol witness table for _PaddingLayout;
  v128 = v273;
  v254 = swift_getWitnessTable();
  v129 = v272;
  v130 = *(v272 + 16);
  v243 = v272 + 16;
  v242 = v130;
  v130(v271, v127, v128);
  v131 = *(v129 + 8);
  v272 = v129 + 8;
  v260 = v131;
  (v131)(v127, v128);
  type metadata accessor for LocationViewModel(0, v257, v255, v132);
  v136 = sub_1000E7C1C(v99, v133, v134, v135);
  v137 = sub_100116018(v136);
  v139 = v138;

  v143 = sub_1000E7C1C(v99, v140, v141, v142);
  v144 = v256;
  sub_100116128(v143);

  sub_1000E7C1C(v99, v145, v146, v147);
  v148 = sub_100118894();
  v149 = v148;

  v153 = sub_1000E7C1C(v99, v150, v151, v152);
  v154 = sub_100116230(v153);

  v155 = sub_1001AC5D4(v137, v139, v144, v148, v154);
  v156 = v245;
  sub_100090A38(v155, v245);
  static Edge.Set.horizontal.getter();
  if (sub_1000E7CC8(v99))
  {
    sub_100083044();
  }

  v157 = v248;
  v158 = swift_getWitnessTable();
  v159 = v246;
  View.padding(_:_:)();
  (*(v247 + 8))(v156, v157);
  v282[4] = v158;
  v282[5] = &protocol witness table for _PaddingLayout;
  v160 = v264;
  v247 = swift_getWitnessTable();
  v161 = v275;
  v162 = *(v275 + 16);
  v245 = v275 + 16;
  v241 = v162;
  (v162)(v274, v159, v160);
  v163 = *(v161 + 8);
  v275 = v161 + 8;
  v248 = v163;
  v163(v159, v160);
  sub_1000E7C1C(v99, v164, v165, v166);
  v167 = sub_10011891C();

  *&v283 = v167;
  type metadata accessor for Array();
  swift_getWitnessTable();
  LOBYTE(v161) = Collection.isEmpty.getter();

  if (v161)
  {
    v171 = v266;
    (*(v249 + 56))(v266, 1, 1, v250);
    swift_getWitnessTable();
  }

  else
  {
    v172 = sub_1000E7C1C(v99, v168, v169, v170);
    v173 = (v172 + *(*v172 + 144));
    v174 = v173[1];
    v246 = *v173;

    v178 = sub_1000E7C1C(v99, v175, v176, v177);
    v179 = v256;
    sub_100116128(v178);

    v180 = v257;
    v255 = (*(v255 + 48))(v257);
    v240 = v181;
    (*(v222 + 8))(v179, v180);
    sub_1000E7C1C(v99, v182, v183, v184);
    v185 = sub_10011891C();

    v189 = sub_1000E7C70(v99, v186, v187, v188);
    v191 = v190;
    v192 = v276;
    v194 = v193;
    __chkstk_darwin(v189);
    swift_getKeyPath();
    *&v283 = v189;
    *(&v283 + 1) = v191;
    *&v284 = v194;
    type metadata accessor for EntertainmentEventViewModel(255, v104, v192, v195);
    type metadata accessor for Binding();
    v196 = v225;
    Binding.subscript.getter();

    v197 = v223;
    sub_1000EF8A0(v246, v174, v255, v240, 1, v185, v196, v104, v223, v192);
    KeyPath = swift_getKeyPath();
    v199 = v226;
    sub_1000C72AC(v197, KeyPath, 0, v104, v192, v226);
    v200 = v250;
    swift_getWitnessTable();
    v201 = v249;
    v202 = *(v249 + 16);
    v203 = v224;
    v202(v224, v199, v200);
    v204 = *(v201 + 8);
    v204(v199, v200);
    v202(v199, v203, v200);
    v204(v203, v200);
    v171 = v266;
    (*(v201 + 32))(v266, v199, v200);
    (*(v201 + 56))(v171, 0, 1, v200);
  }

  v205 = v251;
  v206 = *(v251 + 16);
  v207 = v252;
  v206(v265, v171, v252);
  v276 = *(v205 + 8);
  v276(v171, v207);
  v208 = v261;
  v209 = OpaqueTypeMetadata2;
  v244(v261, v268);
  *&v283 = v208;
  v210 = v262;
  v211 = v273;
  v242(v262, v271, v273);
  *(&v283 + 1) = v210;
  v212 = v263;
  v213 = v264;
  (v241)(v263, v274, v264);
  *&v284 = v212;
  v214 = v265;
  v206(v171, v265, v207);
  *(&v284 + 1) = v171;
  v282[0] = v209;
  v282[1] = v211;
  v282[2] = v213;
  v282[3] = v207;
  v278 = OpaqueTypeConformance2;
  v279 = v254;
  v280 = v247;
  v277 = swift_getWitnessTable();
  v281 = swift_getWitnessTable();
  sub_1000E76FC(&v283, 4uLL, v282);
  v215 = v276;
  v276(v214, v207);
  v216 = v248;
  v248(v274, v213);
  v217 = v211;
  v218 = v260;
  (v260)(v271, v217);
  v219 = v209;
  v220 = v267;
  (v267)(v268, v219);
  v215(v266, v207);
  v216(v263, v213);
  v218(v262, v273);
  return v220(v261, OpaqueTypeMetadata2);
}

void sub_1000EC0C8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = type metadata accessor for EntertainmentEventView(0, a1, a2, a3);
  v9 = sub_1000E7C1C(v5, v6, v7, v8);
  v10 = (v9 + *(*v9 + 152));
  v12 = *v10;
  v11 = v10[1];

  sub_1000E7C1C(v5, v13, v14, v15);
  sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001B3B50;
  *(v16 + 32) = Color.init(_:bundle:)();
  *(v16 + 40) = Color.init(_:bundle:)();

  *a4 = v12;
  a4[1] = v11;
  a4[2] = v16;
}

double sub_1000EC1D4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EntertainmentEventView(0, a3, a4, a4);
  sub_1000E7C1C(v5, v6, v7, v8);
  sub_100115FB4((a1 & 1) == 0);

  return result;
}

double sub_1000EC278(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = type metadata accessor for EntertainmentEventView(0, a4, a5, a4);
  sub_1000E7C1C(v6, v7, v8, v9);
  if (v5)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  sub_1001164F8(v12, v10, v11);

  return result;
}

uint64_t sub_1000EC2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v6 = sub_1000024C4(&qword_1002245E8, &unk_1001B90B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v40 - v8;
  v10 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1000024C4(&qword_1002245F0, &qword_1001BBA70);
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v40 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v42 = *(v14 - 8);
  v43 = v14;
  __chkstk_darwin(v14);
  v41 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000024C4(&qword_1002245F8, &unk_1001B90C0);
  v17 = __chkstk_darwin(v16);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = v40 - v21;
  v49 = a1;
  v23 = *(a1 + 16);
  if (v23)
  {
    v45 = v20;
    v46 = a4;
    if (*(v23 + 88) && (*(v23 + 80) & 1) != 0)
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        if (*(v23 + 32) > 1u || *(v23 + 32))
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v33 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
        }

        v34 = type metadata accessor for EntertainmentEventView(0, v47, v48, v32);
        v35 = v49 + *(v34 + 44);
        v36 = *v35;
        if (*(v35 + 8) == 1)
        {
          if ((v36 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {

          v40[1] = static os_log_type_t.fault.getter();
          v37 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v38 = v41;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_10001BC5C(v36, 0);
          (*(v42 + 8))(v38, v43);
          if (v50 != 1)
          {
LABEL_17:
            (*(v7 + 56))(v19, 1, 1, v6);
            v39 = sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
            v50 = v11;
            v51 = v39;
            swift_getOpaqueTypeConformance2();
            static ToolbarContentBuilder.buildIf<A>(_:)();
            sub_1000EDDE4(v19);
            goto LABEL_9;
          }
        }
      }
    }

    else
    {
    }

LABEL_8:
    v25 = static ToolbarItemPlacement.topBarTrailing.getter();
    v26 = __chkstk_darwin(v25);
    v27 = v48;
    *&v40[-8] = v47;
    *&v40[-6] = v27;
    *&v40[-4] = v49;
    sub_10008B1A4(v26, v28, v29);
    ToolbarItem<>.init(placement:content:)();
    v30 = sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v7 + 16))(v19, v9, v6);
    (*(v7 + 56))(v19, 0, 1, v6);
    v50 = v11;
    v51 = v30;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000EDDE4(v19);
    (*(v7 + 8))(v9, v6);
    (*(v44 + 8))(v13, v11);
LABEL_9:
    sub_1000ED768();
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    return sub_1000EDDE4(v22);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000EC9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for EntertainmentEventView(0, a2, a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (*(v10 + 32))(v14 + v13, v12, v9);
  *a5 = 0;
  *(a5 + 8) = sub_1000EDE4C;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_1000ECAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DismissAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for EntertainmentEventView(0, a2, a3, v10);
  sub_1000E7C1C(v11, v12, v13, v14);
  v15 = *(a1 + 16);
  if (v15)
  {

    sub_100116658(0, 2, 0, 3u, v15);

    sub_100039CB8(v9);
    DismissAction.callAsFunction()();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ECC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a2 - 8);
  __chkstk_darwin(a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EntertainmentEventView(0, v11, v12, v13);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v27 - v19;
  type metadata accessor for EntertainmentEventViewModel(0, a2, a3, v21);
  (*(v8 + 16))(v10, a1, a2);
  v22 = sub_100115D48(v10);
  KeyPath = swift_getKeyPath();
  sub_1000E78CC(v22, KeyPath, 0, v18);
  swift_getWitnessTable();
  v24 = *(v15 + 16);
  v24(v20, v18, v14);
  v25 = *(v15 + 8);
  v25(v18, v14);
  v24(a4, v20, v14);
  return v25(v20, v14);
}

void sub_1000ECEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EntertainmentEventView(0, a2, a3, a4);
  sub_1000E7C1C(v5, v6, v7, v8);
  if (*(a1 + 16))
  {

    sub_1001168F0(v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1000ECF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[179] = a5;
  v5[173] = a4;
  v5[167] = a3;
  v6 = type metadata accessor for EntertainmentEventView(0, a4, a5, a4);
  v5[185] = v6;
  v7 = *(v6 - 8);
  v5[186] = v7;
  v5[187] = *(v7 + 64);
  v5[188] = swift_task_alloc();
  v5[189] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[190] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[191] = v9;
  v5[192] = v8;

  return _swift_task_switch(sub_1000ED0A8, v9, v8);
}

uint64_t sub_1000ED0A8()
{
  v1 = v0[189];
  v2 = v0[186];
  v3 = v0[185];
  v4 = v0[179];
  v5 = v0[173];
  v13 = v5;
  v16 = v0[167];
  v17 = v0[188];
  v14 = v4;
  v15 = *(v2 + 16);
  v15(v1);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[193] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v8 = *(v2 + 32);
  v8(v7 + v6, v1, v3);
  v9 = swift_task_alloc();
  v0[194] = v9;
  *(v9 + 16) = &unk_1001BC930;
  *(v9 + 24) = v7;
  swift_asyncLet_begin();
  (v15)(v17, v16, v3);
  v10 = swift_allocObject();
  v0[195] = v10;
  *(v10 + 16) = v13;
  *(v10 + 24) = v14;
  v8(v10 + v6, v17, v3);
  v11 = swift_task_alloc();
  v0[196] = v11;
  *(v11 + 16) = &unk_1001BC950;
  *(v11 + 24) = v10;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2);
}

uint64_t sub_1000ED300()
{

  return _swift_asyncLet_finish(v0 + 16, v1);
}

uint64_t sub_1000ED390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ED428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000ED44C, 0, 0);
}

uint64_t sub_1000ED44C()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000ED4E0, v2, v1);
}

uint64_t sub_1000ED4E0()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for EntertainmentEventView(0, v2, v1, v3);
  v0[6] = sub_1000E7C1C(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10008C0E0;

  return sub_100116950();
}

uint64_t sub_1000ED59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000ED5C0, 0, 0);
}

uint64_t sub_1000ED5C0()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000ED654, v2, v1);
}

uint64_t sub_1000ED654()
{
  v1 = v0[4];
  v2 = v0[3];

  v4 = type metadata accessor for EntertainmentEventView(0, v2, v1, v3);
  v0[6] = sub_1000E7C1C(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10008A6F0;

  return sub_100116E40();
}

unint64_t sub_1000ED714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226948;
  if (!qword_100226948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226948);
  }

  return result;
}

unint64_t sub_1000ED768()
{
  result = qword_100226958;
  if (!qword_100226958)
  {
    sub_10000460C(&qword_1002245F8, &unk_1001B90C0);
    sub_10000460C(&qword_1002245F0, &qword_1001BBA70);
    sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226958);
  }

  return result;
}

__n128 sub_1000ED8BC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000ED8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EntertainmentEventView(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  swift_unknownObjectRelease();
  v7 = v4 + v6;

  v8 = *(v5 + 40);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DismissAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_10001BC5C(*(v7 + *(v5 + 44)), *(v7 + *(v5 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_1000EDA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for EntertainmentEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_10000BD00;

  return sub_1000ECF8C(v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_1000EDB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for EntertainmentEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100012AC8;

  return sub_1000ED428(v4 + v9, v6, v7);
}

uint64_t sub_1000EDC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for EntertainmentEventView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100012AC8;

  return sub_1000ED59C(v4 + v9, v6, v7);
}

double sub_1000EDD30(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for EntertainmentEventView(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1000EC278(a1, a2, v10, v7, v8);
}

uint64_t sub_1000EDDE4(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002245F8, &unk_1001B90C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EDE64(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for EntertainmentEventView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

void sub_1000EDF08(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for EntertainmentEventView(0, v4, v5, a1);

  sub_1000EC0C8(v4, v5, v6, a2);
}

uint64_t sub_1000EDF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for EntertainmentEventView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = *(v5 + 40);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  sub_10001BC5C(*(v6 + *(v5 + 44)), *(v6 + *(v5 + 44) + 8));

  return swift_deallocObject();
}

double sub_1000EE0E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for EntertainmentEventView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000EC1D4(a1, v9, v6, v7);
}

uint64_t sub_1000EE170(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v48 = type metadata accessor for NavigationPath();
  OpaqueTypeMetadata2 = v1;
  v50 = &type metadata for DefaultHeroImageView;
  v51 = v2;
  v52 = sub_1000ED714(v48, v3, v4);
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v5 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v60 = &protocol witness table for _PaddingLayout;
  v6 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v5;
  v50 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for DetailsModule(255, v1, v2, v7);
  v50 = type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v51 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpcomingModule(255, v1, v2, v11);
  v52 = type metadata accessor for Optional();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v12 = type metadata accessor for ScrollView();
  v13 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v12;
  v50 = v13;
  v14 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v12;
  v50 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v14;
  v50 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v14;
  v50 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v16;
  v50 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v18 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v16;
  v50 = v17;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v57 = v19;
  v58 = v20;
  v21 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v18;
  v50 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v18;
  v50 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v26 = sub_10001877C(v23, v24, v25);
  OpaqueTypeMetadata2 = v22;
  v50 = &type metadata for String;
  v51 = v23;
  v52 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v22;
  v50 = &type metadata for String;
  v51 = v23;
  v52 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v27;
  v50 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v27;
  v50 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v29;
  v50 = &type metadata for Bool;
  v51 = v30;
  v52 = &protocol witness table for Bool;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_10000460C(&qword_100226950, &qword_1001BC8D0);
  OpaqueTypeMetadata2 = v29;
  v50 = &type metadata for Bool;
  v51 = v30;
  v52 = &protocol witness table for Bool;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_10000460C(&qword_1002245F8, &unk_1001B90C0);
  v35 = sub_1000ED768();
  OpaqueTypeMetadata2 = v34;
  v50 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v31;
  v50 = v32;
  v51 = v33;
  v52 = v36;
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = v31;
  v50 = v32;
  v51 = v33;
  v52 = v36;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for NavigationStack();
  type metadata accessor for AccessibilityAttachmentModifier();
  v37 = type metadata accessor for ModifiedContent();
  v39 = type metadata accessor for EntertainmentEventView(255, v1, v2, v38);
  v40 = swift_getWitnessTable();
  v41 = sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v55 = v40;
  v56 = v41;
  v42 = swift_getWitnessTable();
  v43 = *(v2 + 16);
  v44 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v37;
  v50 = v1;
  v51 = v39;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  swift_getOpaqueTypeMetadata2();
  v45 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v37;
  v50 = v1;
  v51 = v39;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  swift_getOpaqueTypeConformance2();
  v46 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v45;
  v50 = v46;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000EE8B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100226960, &unk_1001BC9D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000EE980(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_100226960, &unk_1001BC9D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CircularProgressViewStyle(uint64_t a1)
{
  result = qword_1002269C0;
  if (!qword_1002269C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EEA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000EEAF8(319, a2, a3);
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000EEAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1002269D0)
  {
    sub_100068430(0, a2, a3);
    v3 = type metadata accessor for ScaledMetric();
    if (!v4)
    {
      atomic_store(v3, &qword_1002269D0);
    }
  }
}

__n128 sub_1000EEB70@<Q0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = ProgressViewStyleConfiguration.fractionCompleted.getter();
  if (v5)
  {
    sub_1000EF368(&v63);
  }

  else
  {
    v6 = *&v4;
    v7 = static Alignment.center.getter();
    v9 = v8;
    sub_1000EEE3C(a1, &v78, v6);
    v34 = v84;
    v35 = v85;
    v30 = v80;
    v31 = v81;
    v32 = v82;
    v33 = v83;
    v28 = v78;
    v29 = v79;
    v37[6] = v84;
    v37[7] = v85;
    v37[2] = v80;
    v37[3] = v81;
    v37[4] = v82;
    v37[5] = v83;
    v36 = v86;
    v38 = v86;
    v37[0] = v78;
    v37[1] = v79;
    sub_10000BEB8(&v28, &v63, &qword_100226A50, &qword_1001BCA98);
    sub_1000050C4(v37, &qword_100226A50, &qword_1001BCA98);
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v41 = v30;
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v39 = v28;
    v40 = v29;
    type metadata accessor for CircularProgressViewStyle(0);
    sub_1000024C4(&qword_100226960, &unk_1001BC9D0);
    ScaledMetric.wrappedValue.getter();
    v10 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    LOBYTE(v78) = 0;
    static UnitPoint.center.getter();
    *&v63 = v7;
    *(&v63 + 1) = v9;
    v70 = v45;
    v71 = v46;
    *&v72 = v47;
    v66 = v41;
    v67 = v42;
    v68 = v43;
    v69 = v44;
    v64 = v39;
    v65 = v40;
    BYTE8(v72) = v10;
    *&v73 = v12;
    *(&v73 + 1) = v14;
    *&v74 = v16;
    *(&v74 + 1) = v18;
    LOBYTE(v75) = 0;
    *(&v75 + 1) = 0xBFF921FB54442D18;
    *&v76 = v19;
    *(&v76 + 1) = v20;
    sub_1000EF4B8(&v63);
  }

  v60 = v75;
  v61 = v76;
  v62 = v77;
  v56 = v71;
  v57 = v72;
  v58 = v73;
  v59 = v74;
  v52 = v67;
  v53 = v68;
  v54 = v69;
  v55 = v70;
  v48 = v63;
  v49 = v64;
  v50 = v65;
  v51 = v66;
  sub_1000024C4(&qword_100226A20, &qword_1001BCA80);
  sub_1000EF374();
  _ConditionalContent<>.init(storage:)();
  v21 = v91;
  *(a2 + 192) = v90;
  *(a2 + 208) = v21;
  *(a2 + 224) = v92;
  v22 = v87;
  *(a2 + 128) = v86;
  *(a2 + 144) = v22;
  v23 = v89;
  *(a2 + 160) = v88;
  *(a2 + 176) = v23;
  v24 = v83;
  *(a2 + 64) = v82;
  *(a2 + 80) = v24;
  v25 = v85;
  *(a2 + 96) = v84;
  *(a2 + 112) = v25;
  v26 = v79;
  *a2 = v78;
  *(a2 + 16) = v26;
  result = v81;
  *(a2 + 32) = v80;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1000EEE3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v10 = static HierarchicalShapeStyle.primary.getter();
  type metadata accessor for CircularProgressViewStyle(0);
  sub_1000024C4(&qword_100226960, &unk_1001BC9D0);
  ScaledMetric.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = static Alignment.center.getter();
  v8 = v7;
  v11 = *a1;
  v12 = Color.opacity(_:)();
  ScaledMetric.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v22[0] = v19;
  v22[1] = v20;
  *&v23 = v21;
  DWORD2(v23) = v10;
  WORD6(v23) = 256;
  *&v24 = v6;
  *(&v24 + 1) = v8;
  v13 = v23;
  v14 = v24;
  *(&v26 + 1) = a3;
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v11;
  *&v15[56] = v18;
  *(a2 + 128) = v11;
  v25 = v12;
  *&v26 = 0;
  *v15 = v12;
  *&v15[40] = v17;
  *&v15[24] = v27;
  *&v15[8] = v26;
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 96) = *&v15[32];
  *(a2 + 112) = *&v15[48];
  *(a2 + 64) = *v15;
  *(a2 + 80) = *&v15[16];
  v31[0] = 0;
  *&v31[1] = a3;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = v11;

  sub_10000BEB8(v22, v36, &qword_100226A58, &qword_1001BCAA0);
  sub_10000BEB8(&v26, v36, &qword_100226A60, &qword_1001BCAA8);
  sub_1000050C4(v31, &qword_100226A60, &qword_1001BCAA8);
  v36[0] = v19;
  v36[1] = v20;
  v37 = v21;
  v38 = v10;
  v39 = 256;
  v40 = v6;
  v41 = v8;
  v42 = v12;
  return sub_1000050C4(v36, &qword_100226A58, &qword_1001BCAA0);
}

uint64_t sub_1000EF0C4(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_1000EF18C@<X0>(uint64_t a1@<X8>)
{
  sub_1000EEB70(v1, v19);
  v3 = sub_1000024C4(&qword_100226A00, &qword_1001BCA38);
  sub_1000EF2EC(v3, v4, v5);
  _ContainerRoundedRectangularShapeModifier.init(shape:)();
  v6 = v19[13];
  *(a1 + 192) = v19[12];
  *(a1 + 208) = v6;
  *(a1 + 224) = v20;
  v7 = v19[9];
  *(a1 + 128) = v19[8];
  *(a1 + 144) = v7;
  v8 = v19[11];
  *(a1 + 160) = v19[10];
  *(a1 + 176) = v8;
  v9 = v19[5];
  *(a1 + 64) = v19[4];
  *(a1 + 80) = v9;
  v10 = v19[7];
  *(a1 + 96) = v19[6];
  *(a1 + 112) = v10;
  v11 = v19[1];
  *a1 = v19[0];
  *(a1 + 16) = v11;
  v12 = v19[3];
  *(a1 + 32) = v19[2];
  *(a1 + 48) = v12;
  KeyPath = swift_getKeyPath();
  v14 = (a1 + *(sub_1000024C4(&qword_100226A10, &qword_1001BCA70) + 36));
  v15 = *(sub_1000024C4(&qword_100226A18, &qword_1001BCA78) + 28);
  v16 = enum case for LayoutDirection.leftToRight(_:);
  v17 = type metadata accessor for LayoutDirection();
  result = (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = KeyPath;
  return result;
}

unint64_t sub_1000EF2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226A08;
  if (!qword_100226A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A08);
  }

  return result;
}

unint64_t sub_1000EF374()
{
  result = qword_100226A28;
  if (!qword_100226A28)
  {
    sub_10000460C(&qword_100226A20, &qword_1001BCA80);
    sub_1000EF400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A28);
  }

  return result;
}

unint64_t sub_1000EF400()
{
  result = qword_100226A30;
  if (!qword_100226A30)
  {
    sub_10000460C(&qword_100226A38, &qword_1001BCA88);
    sub_10000BFFC(&qword_100226A40, &qword_100226A48, &qword_1001BCA90, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A30);
  }

  return result;
}

unint64_t sub_1000EF4C4()
{
  result = qword_100226A68;
  if (!qword_100226A68)
  {
    sub_10000460C(&qword_100226A10, &qword_1001BCA70);
    sub_1000EF57C();
    sub_10000BFFC(qword_100226AA8, &qword_100226A18, &qword_1001BCA78, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A68);
  }

  return result;
}

unint64_t sub_1000EF57C()
{
  result = qword_100226A70;
  if (!qword_100226A70)
  {
    sub_10000460C(&qword_100226A00, &qword_1001BCA38);
    sub_1000EF634();
    sub_10000BFFC(&qword_100226A98, &qword_100226AA0, &unk_1001BCAC0, &protocol conformance descriptor for _ContainerRoundedRectangularShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A70);
  }

  return result;
}

unint64_t sub_1000EF634()
{
  result = qword_100226A78;
  if (!qword_100226A78)
  {
    sub_10000460C(&qword_100226A80, &qword_1001BCAB0);
    sub_1000EF6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A78);
  }

  return result;
}

unint64_t sub_1000EF6B8()
{
  result = qword_100226A88;
  if (!qword_100226A88)
  {
    sub_10000460C(&qword_100226A90, &qword_1001BCAB8);
    sub_1000EF374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226A88);
  }

  return result;
}

char *sub_1000EF744(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_1000EF8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v12 = *(type metadata accessor for UpcomingViewModel(0, a8, a10, a4) + 48);
  type metadata accessor for Optional();
  v13 = type metadata accessor for Binding();
  v14 = *(*(v13 - 8) + 32);

  return v14(a9 + v12, a7, v13);
}

void sub_1000EF968(uint64_t a1)
{
  sub_1000EFEF8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Array();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Optional();
      type metadata accessor for Binding();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000EFA34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v5)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v9 | 7;
  v12 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_34;
  }

  v13 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-17 - v9) | v9) + ((-49 - v9) | v11));
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v17 < 2)
    {
LABEL_34:
      if (v8 == 0x7FFFFFFF)
      {
        v19 = *(a1 + 1);
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }

      else
      {
        v20 = (*(v4 + 48))((v9 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v9);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_34;
  }

LABEL_23:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1000EFC3C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v13;
  }

  v14 = -2 - ((-49 - v11) | v12) - (((-17 - v11) | v11) - v13);
  v15 = a3 >= v10;
  v16 = a3 - v10;
  if (v16 == 0 || !v15)
  {
LABEL_22:
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (v14 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v17 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
  if (!HIWORD(v17))
  {
    if (v17 < 0x100)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 >= 2)
    {
      v6 = v18;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_22;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_23:
    v19 = ~v10 + a2;
    if (v14 < 4)
    {
      v20 = (v19 >> (8 * v14)) + 1;
      if (v14)
      {
        v21 = v19 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v21;
            if (v6 > 1)
            {
LABEL_53:
              if (v6 == 2)
              {
                *&a1[v14] = v20;
              }

              else
              {
                *&a1[v14] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v6 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v6 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v19;
      v20 = 1;
      if (v6 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v6)
    {
      a1[v14] = v20;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v14] = 0;
  }

  else if (v6)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v10 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }
  }

  else
  {
    v22 = *(v7 + 56);
    v23 = (v11 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 32) & ~v12) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11;
    v24 = a2 + 1;

    v22(v23, v24);
  }
}

void sub_1000EFEF8()
{
  if (!qword_100226B30[0])
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_100226B30);
    }
  }
}

char *sub_1000EFF48(uint64_t a1)
{
  v1 = type metadata accessor for GridItem.Size();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for GridItem();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = xmmword_1001B5590;
  (*(v2 + 104))(v4, enum case for GridItem.Size.flexible(_:), v1);
  GridItem.init(_:spacing:alignment:)();
  v8 = Array.count.getter();
  if (v8 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  return sub_1000EF744(v7, v9);
}

void sub_1000F00A8(void *a1, uint64_t a2)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B3B60;
  v6 = a1[2];
  v5 = a1[3];
  *(v4 + 56) = &type metadata for AnalyticsString;
  *(v4 + 64) = &off_100228B70;
  *(v4 + 32) = 0;
  *(v4 + 40) = v6;
  *(v4 + 48) = v5;

  v7 = sub_1000F047C(a2);
  if (v7 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  *(v4 + 96) = &type metadata for AnalyticsPageName;
  *(v4 + 104) = &off_100228B48;
  *(v4 + 72) = v8;
  *(v4 + 136) = &type metadata for AnalyticsModuleName;
  *(v4 + 144) = &off_100228BD0;
  *(v4 + 112) = 17;
  *(v4 + 176) = &type metadata for AnalyticsModuleAction;
  *(v4 + 184) = &off_100228BA8;
  *(v4 + 152) = xmmword_1001BCAD0;
  *(v4 + 168) = 3;
  if (a1[9])
  {
    v9 = a1[8];
    v10 = a1[9];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v23 = &type metadata for AnalyticsString;
  v24 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v21 = v9;
  v22 = v10;

  v11 = sub_1001894F4(1, 5, 1, v4);
  v26 = v11;
  v12 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  sub_100118768(4, v14, &v26, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v16 = String._bridgeToObjectiveC()();
  v17 = swift_allocObject();
  v17[2] = 0xD00000000000001ELL;
  v17[3] = 0x80000001001C4640;
  v17[4] = v11;
  v24 = sub_100006D88;
  v25 = v17;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10015B4A4;
  v23 = &unk_100216728;
  v18 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

double sub_1000F0384(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection<>.firstIndex(of:)();
  result = -v3;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1000F042C(uint64_t a1)
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return Binding.wrappedValue.getter();
}

uint64_t sub_1000F047C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = *(v2 - 8);
  __chkstk_darwin(v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F042C(a1);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    return 15;
  }

  else
  {
    (*(v8 + 32))(v10, v7, v2);
    v12 = sub_10012BCC8(v10, v2, *(a1 + 24));
    (*(v8 + 8))(v10, v2);
    return v12;
  }
}

uint64_t sub_1000F0644()
{

  return swift_deallocObject();
}

double sub_1000F0684(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000F069C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t sub_1000F0788()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0xD00000000000003CLL;
  v1._object = 0x80000001001C7250;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v1);
  Image.init(systemName:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v2);
  return LocalizedStringKey.init(stringInterpolation:)();
}

uint64_t sub_1000F0860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SavedWallpaperViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v5;
}

uint64_t sub_1000F08B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10000BEB8(v2 + *(a1 + 36), &v15 - v10, &qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1000F0AB8(uint64_t a1)
{
  sub_1000024C4(&qword_100226BB8, &qword_1001BCBE8);
  sub_10000460C(&qword_100226BC0, &unk_1001BCBF0);
  sub_10000460C(&qword_1002245E8, &unk_1001B90B0);
  sub_10000460C(&qword_100226BC8, &qword_1001BCC00);
  sub_1000F42A8();
  swift_getOpaqueTypeConformance2();
  sub_10000460C(&qword_1002245F0, &qword_1001BBA70);
  sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1000F0C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_100226BC8, &qword_1001BCC00);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_1000024C4(&qword_100226BC0, &unk_1001BCBF0);
  v30 = *(v14 - 8);
  v31 = v14;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v17 = sub_1000024C4(&qword_100226BE8, &qword_1001BCC18);
  v18 = a3;
  sub_1000F0FC4(a1, a2, a3, &v13[*(v17 + 44)]);
  LOBYTE(a3) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v19 = &v13[*(v11 + 36)];
  *v19 = a3;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  (*(v8 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v7);
  v24 = sub_1000F42A8();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v8 + 8))(v10, v7);
  sub_1000050C4(v13, &qword_100226BC8, &qword_1001BCC00);
  v33 = a2;
  v34 = v18;
  v35 = a1;
  sub_1000024C4(&qword_1002245E8, &unk_1001B90B0);
  v36 = v11;
  v37 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = sub_10000460C(&qword_1002245F0, &qword_1001BBA70);
  v26 = sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
  v36 = v25;
  v37 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  View.toolbar<A>(content:)();
  return (*(v30 + 8))(v16, v27);
}

uint64_t sub_1000F0FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v181 = a1;
  v172 = a4;
  v6 = sub_1000024C4(&qword_100226BF0, &unk_1001BCC20);
  v169 = *(v6 - 8);
  v170 = v6;
  __chkstk_darwin(v6);
  v158 = &v153 - v7;
  v8 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v8 - 8);
  v166 = &v153 - v9;
  v168 = type metadata accessor for URL();
  v175 = *(v168 - 8);
  v10 = __chkstk_darwin(v168);
  v156 = v11;
  v157 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v167 = &v153 - v12;
  v13 = sub_1000024C4(&qword_100226BF8, &qword_1001BCC30);
  v14 = __chkstk_darwin(v13 - 8);
  v171 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v176 = &v153 - v16;
  v174 = a2;
  v180 = a3;
  v183 = type metadata accessor for SavedWallpaperView(0, a2, a3, v17);
  v18 = *(v183 - 8);
  v173 = *(v18 + 64);
  __chkstk_darwin(v183);
  v177 = &v153 - v19;
  v20 = type metadata accessor for Image.ResizingMode();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000024C4(&qword_100226C00, &qword_1001BCC38);
  __chkstk_darwin(v24);
  v26 = &v153 - v25;
  v160 = sub_1000024C4(&qword_100226C08, &qword_1001BCC40);
  __chkstk_darwin(v160);
  v163 = &v153 - v27;
  v159 = sub_1000024C4(&qword_100226C10, &qword_1001BCC48);
  __chkstk_darwin(v159);
  v164 = &v153 - v28;
  v178 = sub_1000024C4(&qword_100226C18, &qword_1001BCC50);
  v165 = *(v178 - 8);
  v29 = __chkstk_darwin(v178);
  v162 = (&v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v161 = &v153 - v31;
  v32 = sub_1000024C4(&qword_100226C20, &qword_1001BCC58);
  v33 = __chkstk_darwin(v32 - 8);
  v179 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v182 = &v153 - v35;
  v36 = String._bridgeToObjectiveC()();

  v37 = [objc_opt_self() imageNamed:v36];

  v155 = v18;
  if (v37)
  {
    v154 = v37;
    Image.init(uiImage:)();
    (*(v21 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v20);
    v153 = Image.resizable(capInsets:resizingMode:)();

    (*(v21 + 8))(v23, v20);
    sub_1000F0860(v183, v38, v39, v40);
    sub_10018B130();

    v41 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    LOBYTE(v186) = 1;
    LOBYTE(v185[0]) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v184[53] = v223;
    *&v184[69] = v224;
    *&v184[85] = v225;
    *&v184[101] = v226;
    *&v184[5] = v220;
    *&v184[21] = v221;
    v50 = &v26[*(v24 + 36)];
    *&v184[37] = v222;
    v51 = sub_1000024C4(&qword_100226C80, &qword_1001BCC98);
    v52 = *(v51 + 36);
    v53 = enum case for CoordinateSpace.local(_:);
    v54 = type metadata accessor for CoordinateSpace();
    (*(*(v54 - 8) + 104))(&v50[v52], v53, v54);
    *v50 = &type metadata for BezelSizePreferenceKey;
    v55 = &v50[*(v51 + 40)];
    *v55 = sub_1000D5C00;
    v55[1] = 0;
    *v26 = v153;
    *(v26 + 1) = 0;
    *(v26 + 8) = 1;
    v26[24] = v41;
    *(v26 + 4) = v43;
    *(v26 + 5) = v45;
    *(v26 + 6) = v47;
    *(v26 + 7) = v49;
    v26[64] = 0;
    *(v26 + 65) = 0;
    v56 = *&v184[80];
    *(v26 + 131) = *&v184[64];
    *(v26 + 147) = v56;
    *(v26 + 163) = *&v184[96];
    *(v26 + 22) = *&v184[109];
    v57 = *&v184[16];
    *(v26 + 67) = *v184;
    *(v26 + 83) = v57;
    v58 = *&v184[48];
    *(v26 + 99) = *&v184[32];
    *(v26 + 115) = v58;
    v59 = v177;
    v60 = v183;
    (*(v18 + 16))(v177, v181, v183);
    v61 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v62 = (v173 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v174;
    v65 = v180;
    *(v63 + 16) = v174;
    *(v63 + 24) = v65;
    (*(v18 + 32))(v63 + v61, v59, v60);
    v66 = v154;
    *(v63 + v62) = v154;
    v67 = v163;
    sub_10001AE00(v26, v163, &qword_100226C00, &qword_1001BCC38);
    v68 = (v67 + *(v160 + 36));
    *v68 = sub_1000F4B68;
    v68[1] = v63;
    v69 = v66;
    v70 = static Alignment.center.getter();
    v72 = v71;
    v73 = v164;
    v74 = &v164[*(v159 + 36)];
    v75 = v181;
    sub_1000F22AC(v181, v64, v65, v74, v76);
    v77 = (v74 + *(sub_1000024C4(&qword_100226C88, &qword_1001BCCA0) + 36));
    *v77 = v70;
    v77[1] = v72;
    sub_10001AE00(v67, v73, &qword_100226C08, &qword_1001BCC40);
    LOBYTE(v70) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;

    v86 = v73;
    v87 = v162;
    sub_10001AE00(v86, v162, &qword_100226C10, &qword_1001BCC48);
    v88 = v178;
    v89 = v87 + *(v178 + 36);
    *v89 = v70;
    *(v89 + 1) = v79;
    *(v89 + 2) = v81;
    *(v89 + 3) = v83;
    *(v89 + 4) = v85;
    v89[40] = 0;
    v90 = v87;
    v91 = v161;
    sub_10001AE00(v90, v161, &qword_100226C18, &qword_1001BCC50);
    v92 = v91;
    v93 = v182;
    sub_10001AE00(v92, v182, &qword_100226C18, &qword_1001BCC50);
    (*(v165 + 56))(v93, 0, 1, v88);
    v94 = v75;
    v95 = v93;
  }

  else
  {
    v95 = v182;
    (*(v165 + 56))(v182, 1, 1, v178);
    v94 = v181;
  }

  v96 = v183;
  v165 = static HorizontalAlignment.center.getter();
  v205 = 0;
  sub_1000F2EE8(&v186);
  v211 = *&v187[64];
  v212 = *&v187[80];
  v213[0] = *&v187[96];
  *(v213 + 9) = *&v187[105];
  v208 = *&v187[16];
  v209 = *&v187[32];
  v210 = *&v187[48];
  v206 = v186;
  v207 = *v187;
  v214[5] = *&v187[64];
  v214[6] = *&v187[80];
  v215[0] = *&v187[96];
  *(v215 + 9) = *&v187[105];
  v214[2] = *&v187[16];
  v214[3] = *&v187[32];
  v214[4] = *&v187[48];
  v214[0] = v186;
  v214[1] = *v187;
  sub_10000BEB8(&v206, v185, &qword_100226C28, &qword_1001BCC60);
  sub_1000050C4(v214, &qword_100226C28, &qword_1001BCC60);
  *(&v204[5] + 7) = v211;
  *(&v204[6] + 7) = v212;
  *(&v204[7] + 7) = v213[0];
  v204[8] = *(v213 + 9);
  *(&v204[1] + 7) = v207;
  *(&v204[2] + 7) = v208;
  *(&v204[3] + 7) = v209;
  *(&v204[4] + 7) = v210;
  *(v204 + 7) = v206;
  LODWORD(v178) = v205;
  LODWORD(v164) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  LOBYTE(v186) = 0;
  LODWORD(v163) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v113 = v166;
  URL.init(string:)();

  v114 = v175;
  v115 = v168;
  v116 = (*(v175 + 48))(v113, 1, v168);
  v117 = v176;
  if (v116 == 1)
  {
    sub_1000050C4(v113, &qword_1002214F8, &qword_1001B3D20);
    v118 = 1;
    v119 = v170;
  }

  else
  {
    v162 = *(v114 + 32);
    v120 = v167;
    v162();
    v121 = v155;
    (*(v155 + 16))(v177, v94, v96);
    v122 = v157;
    (*(v114 + 16))(v157, v120, v115);
    v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v124 = (v173 + *(v114 + 80) + v123) & ~*(v114 + 80);
    v125 = swift_allocObject();
    v126 = v180;
    *(v125 + 16) = v174;
    *(v125 + 24) = v126;
    (*(v121 + 32))(v125 + v123, v177, v183);
    v117 = v176;
    v127 = (v162)(v125 + v124, v122, v115);
    __chkstk_darwin(v127);
    sub_1000024C4(&qword_100226C40, &qword_1001BCC78);
    sub_1000F4728();
    v128 = v158;
    Button.init(action:label:)();
    LOBYTE(v125) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v177 = v112;
    v129 = v106;
    v130 = v98;
    v132 = v131;
    v180 = v110;
    v181 = v108;
    v133 = v100;
    v135 = v134;
    v136 = v102;
    v138 = v137;
    v183 = v104;
    v140 = v139;
    (*(v175 + 8))(v167, v115);
    v119 = v170;
    v141 = &v128[*(v170 + 36)];
    *v141 = v125;
    *(v141 + 1) = v132;
    *(v141 + 2) = v135;
    v98 = v130;
    v106 = v129;
    v112 = v177;
    v100 = v133;
    *(v141 + 3) = v138;
    *(v141 + 4) = v140;
    v102 = v136;
    v110 = v180;
    v108 = v181;
    v104 = v183;
    v141[40] = 0;
    v142 = v128;
    v95 = v182;
    sub_10001AE00(v142, v117, &qword_100226BF0, &unk_1001BCC20);
    v118 = 0;
  }

  (*(v169 + 56))(v117, v118, 1, v119);
  v143 = v179;
  sub_10000BEB8(v95, v179, &qword_100226C20, &qword_1001BCC58);
  v144 = v171;
  sub_10000BEB8(v117, v171, &qword_100226BF8, &qword_1001BCC30);
  v145 = v143;
  v146 = v172;
  sub_10000BEB8(v145, v172, &qword_100226C20, &qword_1001BCC58);
  v147 = sub_1000024C4(&qword_100226C30, &qword_1001BCC68);
  v148 = *(v147 + 48);
  *(&v185[12] + 1) = v204[5];
  *(&v185[14] + 1) = v204[6];
  *(&v185[16] + 1) = v204[7];
  *(&v185[18] + 1) = v204[8];
  *(&v185[4] + 1) = v204[1];
  *(&v185[6] + 1) = v204[2];
  *(&v185[8] + 1) = v204[3];
  *(&v185[10] + 1) = v204[4];
  v149 = v165;
  v185[0] = v165;
  v185[1] = 0x4020000000000000;
  LOBYTE(v185[2]) = v178;
  *(&v185[2] + 1) = v204[0];
  *(&v185[20] + 1) = *v219;
  HIDWORD(v185[20]) = *&v219[3];
  v150 = v164;
  LOBYTE(v185[21]) = v164;
  *(&v185[21] + 1) = *v218;
  HIDWORD(v185[21]) = *&v218[3];
  v185[22] = v98;
  v185[23] = v100;
  v185[24] = v102;
  v185[25] = v104;
  LOBYTE(v185[26]) = 0;
  *(&v185[26] + 1) = *v217;
  HIDWORD(v185[26]) = *&v217[3];
  v151 = v163;
  LOBYTE(v185[27]) = v163;
  HIDWORD(v185[27]) = *&v216[3];
  *(&v185[27] + 1) = *v216;
  v185[28] = v106;
  v185[29] = v108;
  v185[30] = v110;
  v185[31] = v112;
  LOBYTE(v185[32]) = 0;
  memcpy((v146 + v148), v185, 0x101uLL);
  sub_10000BEB8(v144, v146 + *(v147 + 64), &qword_100226BF8, &qword_1001BCC30);
  sub_10000BEB8(v185, &v186, &qword_100226C38, &qword_1001BCC70);
  sub_1000050C4(v117, &qword_100226BF8, &qword_1001BCC30);
  sub_1000050C4(v182, &qword_100226C20, &qword_1001BCC58);
  sub_1000050C4(v144, &qword_100226BF8, &qword_1001BCC30);
  *&v187[81] = v204[5];
  *&v187[97] = v204[6];
  *&v187[113] = v204[7];
  *&v187[129] = v204[8];
  *&v187[17] = v204[1];
  *&v187[33] = v204[2];
  *&v187[49] = v204[3];
  *&v187[65] = v204[4];
  *&v186 = v149;
  *(&v186 + 1) = 0x4020000000000000;
  v187[0] = v178;
  *&v187[1] = v204[0];
  *v188 = *v219;
  *&v188[3] = *&v219[3];
  v189 = v150;
  *v190 = *v218;
  *&v190[3] = *&v218[3];
  v191 = v98;
  v192 = v100;
  v193 = v102;
  v194 = v104;
  v195 = 0;
  *v196 = *v217;
  *&v196[3] = *&v217[3];
  v197 = v151;
  *&v198[3] = *&v216[3];
  *v198 = *v216;
  v199 = v106;
  v200 = v108;
  v201 = v110;
  v202 = v112;
  v203 = 0;
  sub_1000050C4(&v186, &qword_100226C38, &qword_1001BCC70);
  return sub_1000050C4(v179, &qword_100226C20, &qword_1001BCC58);
}

double sub_1000F21A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 8);
  v7 = type metadata accessor for SavedWallpaperView(0, a4, a5, a4);
  v11 = sub_1000F0860(v7, v8, v9, v10);
  sub_10018B154(v11, v12, v13, v6);

  sub_1000F0860(v7, v14, v15, v16);
  v17 = sub_10018B2B8();

  [a3 size];
  v19 = v17 / v18;
  sub_1000F0860(v7, v20, v21, v22);
  v23 = [a3 size];
  sub_10018B340(v23, v25, v26, v19 * v24);

  sub_1000F0860(v7, v27, v28, v29);
  v30 = [a3 size];
  sub_10018B4A4(v30, v32, v33, v19 * v31);

  return result;
}

uint64_t sub_1000F22AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v29 = a4;
  v8 = type metadata accessor for SavedWallpaperView(0, a2, a3, a5);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v27 = &v27 - v11;
  v12 = *(a2 - 8);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v28 = a1;
  v21 = sub_1000F0860(v8, v18, v19, v20);
  (*(v12 + 16))(v14, v21 + *(*v21 + 96), a2);

  (*(a3 + 16))(a2, a3);
  (*(v12 + 8))(v14, a2);
  v22 = type metadata accessor for URL();
  (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  v23 = v27;
  (*(v9 + 16))(v27, v28, v8);
  v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  (*(v9 + 32))(v25 + v24, v23, v8);
  sub_1000024C4(&qword_100226C90, &qword_1001BCCA8);
  sub_1000F4E60();
  return AsyncImage.init(url:scale:transaction:content:)();
}

uint64_t sub_1000F25CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a3;
  v83 = a4;
  v84 = a2;
  v81 = a1;
  v89 = a5;
  v5 = sub_1000024C4(&qword_100223250, &unk_1001BCCE0);
  __chkstk_darwin(v5);
  v7 = (&v75 - v6);
  v77 = sub_1000024C4(&qword_100226CF8, &qword_1001BCCD8);
  __chkstk_darwin(v77);
  v76 = &v75 - v8;
  v88 = sub_1000024C4(&qword_100226CE8, &qword_1001BCCD0);
  v9 = __chkstk_darwin(v88);
  v78 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v80 = &v75 - v11;
  v86 = sub_1000024C4(&qword_100226D00, &qword_1001BCCF0);
  __chkstk_darwin(v86);
  v87 = &v75 - v12;
  v13 = type metadata accessor for Image.ResizingMode();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1000024C4(&qword_100226CA8, &qword_1001BCCB0);
  v17 = __chkstk_darwin(v85);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = &v75 - v20;
  v21 = type metadata accessor for AsyncImagePhase();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, v81, v21);
  if ((*(v22 + 88))(v24, v21) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v22 + 96))(v24, v21);
    (*(v14 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v13);
    v26 = Image.resizable(capInsets:resizingMode:)();
    (*(v14 + 8))(v16, v13);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v90[54] = v95;
    *&v90[70] = v96;
    *&v90[86] = v97;
    *&v90[102] = v98;
    *&v90[6] = v92;
    *&v90[22] = v93;
    v91 = 1;
    *&v90[38] = v94;
    v28 = type metadata accessor for SavedWallpaperView(0, v82, v83, v27);
    sub_1000F0860(v28, v29, v30, v31);
    sub_10018B608();

    sub_1000F0860(v28, v32, v33, v34);
    sub_10018B62C();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_1000F0860(v28, v35, v36, v37);
    v38 = sub_10018B650();

    v39 = &v19[*(v85 + 36)];
    v40 = *(type metadata accessor for RoundedRectangle() + 20);
    v41 = enum case for RoundedCornerStyle.continuous(_:);
    v42 = type metadata accessor for RoundedCornerStyle();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = v38;
    v39[1] = v38;
    *(v39 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
    v43 = *&v90[80];
    *(v19 + 82) = *&v90[64];
    *(v19 + 98) = v43;
    *(v19 + 114) = *&v90[96];
    v44 = *&v90[16];
    *(v19 + 18) = *v90;
    *(v19 + 34) = v44;
    v45 = *&v90[48];
    *(v19 + 50) = *&v90[32];
    *(v19 + 66) = v45;
    v46 = v100;
    *(v19 + 136) = v99;
    *v19 = v26;
    *(v19 + 1) = 0;
    *(v19 + 8) = 257;
    *(v19 + 16) = *&v90[110];
    *(v19 + 152) = v46;
    *(v19 + 168) = v101;
    *(v19 + 92) = 0;
    v47 = v19;
    v48 = v79;
    sub_10001AE00(v47, v79, &qword_100226CA8, &qword_1001BCCB0);
    sub_10000BEB8(v48, v87, &qword_100226CA8, &qword_1001BCCB0);
    swift_storeEnumTagMultiPayload();
    sub_1000F4EEC();
    sub_1000F5174();
    _ConditionalContent<>.init(storage:)();

    return sub_1000050C4(v48, &qword_100226CA8, &qword_1001BCCB0);
  }

  else
  {
    v50 = type metadata accessor for SavedWallpaperView(0, v82, v83, v25);
    sub_1000F0860(v50, v51, v52, v53);
    v54 = sub_10018B650();

    v55 = *(type metadata accessor for RoundedRectangle() + 20);
    v56 = enum case for RoundedCornerStyle.continuous(_:);
    v57 = type metadata accessor for RoundedCornerStyle();
    (*(*(v57 - 8) + 104))(v7 + v55, v56, v57);
    *v7 = v54;
    v7[1] = v54;
    *(v7 + *(v5 + 36)) = static Color.black.getter();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v58 = v76;
    sub_10001AE00(v7, v76, &qword_100223250, &unk_1001BCCE0);
    v59 = (v58 + *(v77 + 36));
    v60 = v95;
    v61 = v97;
    v62 = v98;
    v59[4] = v96;
    v59[5] = v61;
    v59[6] = v62;
    v63 = v93;
    v64 = v94;
    *v59 = v92;
    v59[1] = v63;
    v59[2] = v64;
    v59[3] = v60;
    sub_1000F0860(v50, v65, v66, v67);
    sub_10018B608();

    sub_1000F0860(v50, v68, v69, v70);
    sub_10018B62C();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v71 = v78;
    sub_10001AE00(v58, v78, &qword_100226CF8, &qword_1001BCCD8);
    v72 = (v71 + *(v88 + 36));
    v73 = v100;
    *v72 = v99;
    v72[1] = v73;
    v72[2] = v101;
    v74 = v80;
    sub_10001AE00(v71, v80, &qword_100226CE8, &qword_1001BCCD0);
    sub_10000BEB8(v74, v87, &qword_100226CE8, &qword_1001BCCD0);
    swift_storeEnumTagMultiPayload();
    sub_1000F4EEC();
    sub_1000F5174();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v74, &qword_100226CE8, &qword_1001BCCD0);
    return (*(v22 + 8))(v24, v21);
  }
}

uint64_t sub_1000F2EE8@<X0>(_OWORD *a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v39 = v8;
  v40 = v7;
  v10 = v9;
  v36 = v11;

  sub_100017398(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v37 = v10 & 1;
  LOBYTE(v66[0]) = v10 & 1;
  LOBYTE(v56[0]) = 0;
  sub_1000F0788();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_100017398(v12, v14, v16 & 1);

  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v66[0] = qword_1002390B8;

  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_100017398(v17, v19, v21 & 1);

  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  LOBYTE(v66[0]) = v26 & 1;
  *&v46 = v40;
  *(&v46 + 1) = v39;
  LOBYTE(v47) = v37;
  *(&v47 + 1) = *v45;
  DWORD1(v47) = *&v45[3];
  *(&v47 + 1) = v36;
  *&v48 = KeyPath;
  *(&v48 + 1) = 2;
  LOBYTE(v49) = 0;
  DWORD1(v49) = *&v44[3];
  *(&v49 + 1) = *v44;
  *(&v49 + 1) = v35;
  v50 = 1;
  v41[0] = 1;
  *&v51 = v22;
  *(&v51 + 1) = v24;
  LOBYTE(v52) = v26 & 1;
  DWORD1(v52) = *&v43[3];
  *(&v52 + 1) = *v43;
  *(&v52 + 1) = v28;
  *&v53 = v29;
  *(&v53 + 1) = 2;
  LOBYTE(v54) = 0;
  DWORD1(v54) = *&v42[3];
  *(&v54 + 1) = *v42;
  *(&v54 + 1) = v30;
  v55 = 1;
  *&v41[8] = v51;
  v41[72] = 1;
  *&v41[56] = v54;
  *&v41[40] = v53;
  *&v41[24] = v52;
  v31 = v46;
  v32 = v47;
  v33 = v49;
  a1[2] = v48;
  a1[3] = v33;
  *a1 = v31;
  a1[1] = v32;
  *(a1 + 121) = *&v41[57];
  a1[6] = *&v41[32];
  a1[7] = *&v41[48];
  a1[4] = *v41;
  a1[5] = *&v41[16];
  v56[0] = v22;
  v56[1] = v24;
  v57 = v26 & 1;
  *v58 = *v43;
  *&v58[3] = *&v43[3];
  v59 = v28;
  v60 = v29;
  v61 = 2;
  v62 = 0;
  *v63 = *v42;
  *&v63[3] = *&v42[3];
  v64 = v30;
  v65 = 1;
  sub_10000BEB8(&v46, v66, &qword_100223100, &qword_1001C0600);
  sub_10000BEB8(&v51, v66, &qword_100223100, &qword_1001C0600);
  sub_1000050C4(v56, &qword_100223100, &qword_1001C0600);
  v66[0] = v40;
  v66[1] = v39;
  v67 = v37;
  *v68 = *v45;
  *&v68[3] = *&v45[3];
  v69 = v36;
  v70 = KeyPath;
  v71 = 2;
  v72 = 0;
  *v73 = *v44;
  *&v73[3] = *&v44[3];
  v74 = v35;
  v75 = 1;
  return sub_1000050C4(v66, &qword_100223100, &qword_1001C0600);
}

uint64_t sub_1000F3368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = type metadata accessor for EnvironmentValues();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024C4(qword_100221928, &unk_1001B65E0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for OpenURLAction();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SavedWallpaperView(0, a3, a4, v17);
  sub_10000BEB8(a1 + *(v18 + 40), v12, qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v9, v23);
  }

  OpenURLAction.callAsFunction(_:)();
  return (*(v14 + 8))(v16, v13);
}

double sub_1000F3604@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100017398(v2, v4, v6 & 1);

  *&v42 = static Color.white.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v39 = v13;
  v40 = v12;
  v15 = v14;
  v38 = v16;
  sub_100017398(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v7) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v15 & 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v41[55] = v45;
  *&v41[71] = v46;
  *&v41[87] = v47;
  *&v41[103] = v48;
  *&v41[7] = v42;
  *&v41[23] = v43;
  *&v41[39] = v44;
  v27 = static Color.blue.getter();
  LOBYTE(v9) = static Edge.Set.all.getter();
  v28 = (a1 + *(sub_1000024C4(&qword_100226C40, &qword_1001BCC78) + 36));
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #12.0 }

  *v28 = _Q0;
  *&v28[*(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)] = 256;
  *a1 = v40;
  *(a1 + 8) = v39;
  *(a1 + 16) = v26;
  *(a1 + 24) = v38;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = v19;
  *(a1 + 72) = v21;
  *(a1 + 80) = v23;
  *(a1 + 88) = v25;
  *(a1 + 96) = 0;
  *(a1 + 161) = *&v41[64];
  *(a1 + 177) = *&v41[80];
  *(a1 + 193) = *&v41[96];
  *(a1 + 97) = *v41;
  *(a1 + 113) = *&v41[16];
  result = *&v41[32];
  *(a1 + 129) = *&v41[32];
  *(a1 + 145) = *&v41[48];
  *(a1 + 208) = *(&v48 + 1);
  *(a1 + 216) = v27;
  *(a1 + 224) = v9;
  return result;
}

uint64_t sub_1000F3958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000024C4(&qword_1002245F0, &qword_1001BBA70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-v9];
  v11 = static ToolbarItemPlacement.topBarTrailing.getter();
  v16 = a2;
  v17 = a3;
  v18 = a1;
  sub_10008B1A4(v11, v12, v13);
  ToolbarItem<>.init(placement:content:)();
  sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000F3B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for SavedWallpaperView(0, a2, a3, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  result = (*(v10 + 32))(v14 + v13, v12, v9);
  *a4 = 0;
  *(a4 + 8) = sub_1000F437C;
  *(a4 + 16) = v14;
  return result;
}

uint64_t sub_1000F3C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DismissAction();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SavedWallpaperView(0, a2, a3, v9);
  sub_1000F08B4(v10, v8);
  DismissAction.callAsFunction()();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F3D44@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000F3DA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  State.init(wrappedValue:)();
  *a3 = v10;
  a3[1] = v11;
  v7 = type metadata accessor for SavedWallpaperView(0, *(v5 + 80), *(v5 + 88), v6);
  sub_10001AE00(a2, a3 + *(v7 + 36), qword_100224528, &unk_1001B8F10);
  v8 = *(v7 + 40);
  *(a3 + v8) = swift_getKeyPath();
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1000F3ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SavedWallpaperViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    sub_1000170A8(319, &qword_1002219B8, &type metadata accessor for DismissAction);
    if (v5 <= 0x3F)
    {
      sub_1000170A8(319, &qword_1002219C0, &type metadata accessor for OpenURLAction);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000F3FC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000F4118(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_1000F42A8()
{
  result = qword_100226BD0;
  if (!qword_100226BD0)
  {
    sub_10000460C(&qword_100226BC8, &qword_1001BCC00);
    sub_10000BFFC(&qword_100226BD8, &qword_100226BE0, &unk_1001BCC08, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226BD0);
  }

  return result;
}

uint64_t sub_1000F437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SavedWallpaperView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1000F3C54(v8, v5, v6);
}

uint64_t sub_1000F4400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SavedWallpaperView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v17 = *(*(v5 - 8) + 64);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v4 + v7;

  v12 = *(v5 + 36);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for DismissAction();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  v14 = *(v5 + 40);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for OpenURLAction();
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
  }

  else
  {
  }

  (*(v9 + 8))(v4 + ((v7 + v17 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_1000F4638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SavedWallpaperView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1000F3368(v4 + v8, v11, v5, v6);
}

unint64_t sub_1000F4728()
{
  result = qword_100226C48;
  if (!qword_100226C48)
  {
    sub_10000460C(&qword_100226C40, &qword_1001BCC78);
    sub_1000F47E0();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C48);
  }

  return result;
}

unint64_t sub_1000F47E0()
{
  result = qword_100226C50;
  if (!qword_100226C50)
  {
    sub_10000460C(&qword_100226C58, &qword_1001BCC80);
    sub_1000F4898();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C50);
  }

  return result;
}

unint64_t sub_1000F4898()
{
  result = qword_100226C60;
  if (!qword_100226C60)
  {
    sub_10000460C(&qword_100226C68, &qword_1001BCC88);
    sub_1000F4924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C60);
  }

  return result;
}

unint64_t sub_1000F4924()
{
  result = qword_100226C70;
  if (!qword_100226C70)
  {
    sub_10000460C(&qword_100226C78, &qword_1001BCC90);
    sub_10001B3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C70);
  }

  return result;
}

uint64_t sub_1000F49B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SavedWallpaperView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = v4 + v6;

  v9 = *(v5 + 36);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DismissAction();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = *(v5 + 40);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1000F4B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for SavedWallpaperView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000F21A4(a1, v4 + v9, v10, v6, v7);
}

uint64_t sub_1000F4C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SavedWallpaperView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  v7 = *(v5 + 36);
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = *(v5 + 40);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000F4DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for SavedWallpaperView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1000F25CC(a1, v9, v6, v7, a3);
}

unint64_t sub_1000F4E60()
{
  result = qword_100226C98;
  if (!qword_100226C98)
  {
    sub_10000460C(&qword_100226C90, &qword_1001BCCA8);
    sub_1000F4EEC();
    sub_1000F5174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226C98);
  }

  return result;
}

unint64_t sub_1000F4EEC()
{
  result = qword_100226CA0;
  if (!qword_100226CA0)
  {
    sub_10000460C(&qword_100226CA8, &qword_1001BCCB0);
    sub_1000F4FA4();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CA0);
  }

  return result;
}

unint64_t sub_1000F4FA4()
{
  result = qword_100226CB0;
  if (!qword_100226CB0)
  {
    sub_10000460C(&qword_100226CB8, &qword_1001BCCB8);
    sub_1000F505C();
    sub_10000BFFC(&qword_100226320, &qword_100226328, &qword_1001BC028, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CB0);
  }

  return result;
}

unint64_t sub_1000F505C()
{
  result = qword_100226CC0;
  if (!qword_100226CC0)
  {
    sub_10000460C(&qword_100226CC8, &qword_1001BCCC0);
    sub_1000F50E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CC0);
  }

  return result;
}

unint64_t sub_1000F50E8()
{
  result = qword_100226CD0;
  if (!qword_100226CD0)
  {
    sub_10000460C(&qword_100226CD8, &qword_1001BCCC8);
    sub_100069870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CD0);
  }

  return result;
}

unint64_t sub_1000F5174()
{
  result = qword_100226CE0;
  if (!qword_100226CE0)
  {
    sub_10000460C(&qword_100226CE8, &qword_1001BCCD0);
    sub_1000F5200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CE0);
  }

  return result;
}

unint64_t sub_1000F5200()
{
  result = qword_100226CF0;
  if (!qword_100226CF0)
  {
    sub_10000460C(&qword_100226CF8, &qword_1001BCCD8);
    sub_10005D9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226CF0);
  }

  return result;
}

unint64_t sub_1000F52F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000F5318(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F5318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226D18;
  if (!qword_100226D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226D18);
  }

  return result;
}

double sub_1000F53BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  nullsub_1();
  type metadata accessor for SafeAreaModifier(0, a5, a7, v9);

  View.modifier<A>(_:)();

  return result;
}

uint64_t sub_1000F5464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a7;
  v25 = a9;
  v26 = a5;
  v23 = a1;
  v24 = a3;
  v13 = type metadata accessor for CoordinateSpace();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SizeModifier(0, a6, a8, v17);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v23 - v20;
  (*(v14 + 16))(v16, a2, v13);
  sub_1000E620C(v23, v16, v24, a4, a6, a8, v21);

  View.modifier<A>(_:)();
  return (*(v19 + 8))(v21, v18);
}

void sub_1000F5624()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
}

uint64_t sub_1000F5770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F57B8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = Collection.isEmpty.getter();

  if (v4 & 1) != 0 && ((v5 = objc_opt_self(), v6 = [v5 currentDevice], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7) || ((*(a2 + 64))(a1, a2), v8 = Collection.isEmpty.getter(), , (v8)) && ((v9 = objc_msgSend(v5, "currentDevice"), v10 = objc_msgSend(v9, "userInterfaceIdiom"), v9, v10) || ((*(a2 + 72))(a1, a2), swift_getAssociatedTypeWitness(), type metadata accessor for Array(), swift_getWitnessTable(), v11 = Collection.isEmpty.getter(), , (v11)))
  {
    (*(a2 + 80))(a1, a2);
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v12 = Collection.isEmpty.getter();

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

Swift::Int sub_1000F5A9C()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1000F5B28(uint64_t a1)
{
  v2 = *(v1 + 24);
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000F5BA4()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000F5C2C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

  return result;
}

unint64_t sub_1000F5CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226D88;
  if (!qword_100226D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226D88);
  }

  return result;
}

unint64_t sub_1000F5D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000F5D4C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F5D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100226D90;
  if (!qword_100226D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100226D90);
  }

  return result;
}

uint64_t sub_1000F5DF8(uint64_t a1)
{
  *(a1 + 8) = sub_1000F5EDC(&qword_100226DE8, &type metadata accessor for Venue, &protocol conformance descriptor for Venue);
  result = sub_1000F5EDC(&qword_100226DF0, &type metadata accessor for Venue, &protocol conformance descriptor for Venue);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F5E84(uint64_t a1)
{
  result = sub_1000F5EDC(&qword_100226DF8, &type metadata accessor for Venue.StructuredAddress, &protocol conformance descriptor for Venue.StructuredAddress);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000F5EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F5F6C(uint64_t a1)
{
  *(a1 + 8) = sub_1000F5FF0(&qword_100226E40, &type metadata accessor for Sport.Competitor, &protocol conformance descriptor for Sport.Competitor);
  result = sub_1000F5FF0(qword_100226E48, &type metadata accessor for Sport.Competitor, &protocol conformance descriptor for Sport.Competitor);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F5FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F6038(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000F6130(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1000F6FBC(a1, a2);
  return v4;
}

uint64_t sub_1000F61B0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v12 - v7;
  (*(v3 + 168))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = a1(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v10;
}

uint64_t sub_1000F6340()
{
  v1 = *v0;
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v12 - v6;
  if (sub_10008C468(v3, v2))
  {
    v8 = 0;
  }

  else
  {
    (*(v2 + 168))(v3, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = sub_1000232C8(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

void sub_1000F64E4(uint64_t a1)
{
  v3 = *v1;
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B3B60;
  v5 = (*(*(v3 + 88) + 120))(*(v3 + 80));
  *(v4 + 56) = &type metadata for AnalyticsString;
  *(v4 + 64) = &off_100228B70;
  *(v4 + 32) = 0;
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  v7 = sub_10012BCC8(v1 + *(*v1 + 104), *(*v1 + 80), *(*v1 + 88));
  *(v4 + 96) = &type metadata for AnalyticsPageName;
  *(v4 + 104) = &off_100228B48;
  *(v4 + 72) = v7;
  *(v4 + 136) = &type metadata for AnalyticsModuleName;
  *(v4 + 144) = &off_100228BD0;
  *(v4 + 112) = 2;
  *(v4 + 176) = &type metadata for AnalyticsModuleAction;
  *(v4 + 184) = &off_100228BA8;
  *(v4 + 152) = xmmword_1001BD070;
  *(v4 + 168) = 3;
  if (*(a1 + 72))
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v22 = &type metadata for AnalyticsString;
  v23 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v20 = v8;
  v21 = v9;

  v10 = sub_1001894F4(1, 5, 1, v4);
  v25 = v10;
  v11 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_100118768(4, v13, &v25, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001C4640;
  v16[4] = v10;
  v23 = sub_100006D88;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10015B4A4;
  v22 = &unk_100216AC0;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

uint64_t sub_1000F6844()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v10 - v5;
  (*(v1 + 176))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return v8;
}

id sub_1000F69D4()
{
  result = *(v0 + *(*v0 + 112));
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v2 = result;
      v3 = [result cityWithContextUsingStyle:2];

      if (v3)
      {
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v4;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000F6A7C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v9[-1] - v5, v1 + *(v3 + 104), v2);
  sub_1000024C4(&qword_100226ED0, &unk_1001BD170);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    sub_100012A7C(v9);
    return v7;
  }

  return result;
}

uint64_t sub_1000F6C0C()
{
  KeyPath = swift_getKeyPath();
  sub_1000F6E44(KeyPath, v2, v3);

  return *(v0 + 16);
}

double sub_1000F6C80(char a1)
{
  v2 = *v1;
  v12 = *(v1 + 16);
  v3 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    __chkstk_darwin(v4);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v3;
    sub_1000F6EE4(v7, sub_10002FAC0, v8, &type metadata for () + 8);
  }

  return result;
}

_BYTE *sub_1000F6FBC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v2[16] = 0;
  v6 = &v2[*(v5 + 120)];
  *v6 = LocalizedStringKey.init(stringLiteral:)();
  *(v6 + 1) = v7;
  v6[16] = v8 & 1;
  *(v6 + 3) = v9;
  v10 = *(*v2 + 128);
  *&v2[v10] = [objc_allocWithZone(EKEventStore) init];
  ObservationRegistrar.init()();
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a1);
  *&v2[*(*v2 + 112)] = a2;
  return v2;
}

uint64_t sub_1000F70FC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  v1 = *(*v0 + 136);
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000F7224()
{
  sub_1000F70FC();

  return swift_deallocClassInstance();
}

__n128 sub_1000F72A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000F72B4()
{

  return swift_deallocObject();
}

double sub_1000F72F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000F73E0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000024C4(&qword_100227038, &unk_1001BD230);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Sport.League();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000F7534, 0, 0);
}

uint64_t sub_1000F7534()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  Sport.league.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000F7D6C(v0[6]);

    v4 = v0[1];

    return v4(_swiftEmptyArrayStorage);
  }

  else
  {
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    if (qword_100220BF8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for EventService();
    v7 = sub_10000BE10(v6, qword_100239108);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_1000F76D0;

    return Sport.League.eventSchedule(service:)(v7);
  }
}

uint64_t sub_1000F76D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1000F791C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1000F77F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F77F8(uint64_t a1)
{
  v2 = v1[12];
  v4 = v1[8];
  v3 = v1[9];
  v5 = v1[7];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[3];
  static Date.now.getter();
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;
  v10 = sub_1001882B4(sub_1000F7DD4, v9, v2);

  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);

  v11 = v1[1];

  return v11(v10);
}

uint64_t sub_1000F791C()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F79C8(uint64_t a1)
{
  result = sub_1000F7D24(&qword_100226F58, &type metadata accessor for Sport, &unk_1001BD1B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000F7BD0@<X0>(uint64_t *a1@<X8>)
{
  result = Sport.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000F7C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE494;

  return sub_1000F73E0();
}

uint64_t sub_1000F7CA0(uint64_t a1)
{
  *(a1 + 8) = sub_1000F7D24(&qword_100227028, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  result = sub_1000F7D24(&qword_100227030, &type metadata accessor for Sport, &protocol conformance descriptor for Sport);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F7D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F7D6C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100227038, &unk_1001BD230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F7E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F7EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000F7FA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ArtistEventRowViewModel(uint64_t a1)
{
  result = qword_1002270D0;
  if (!qword_1002270D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F8090(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000F810C(uint64_t a1)
{
  result = sub_1000F8AF4(&qword_100227110, &type metadata accessor for Theater, &unk_1001BD310);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F8168()
{
  result = qword_100227118;
  if (!qword_100227118)
  {
    sub_10000460C(&qword_100227120, &qword_1001BD300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227118);
  }

  return result;
}

uint64_t sub_1000F8334()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1000024C4(&qword_100225388, &qword_1001BD350);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for Venue();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1000024C4(&qword_1002271F8, &qword_1001BD358);
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000F8520, 0, 0);
}

uint64_t sub_1000F8520()
{
  if (qword_100220BF8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = type metadata accessor for EventService();
  sub_10000BE10(v4, qword_100239108);
  Theater.venue.getter();
  v5 = Venue.id.getter();
  v7 = v6;
  v0[15] = v6;
  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for Theater();
  sub_1000F8AF4(&qword_1002253C0, &type metadata accessor for Theater, &protocol conformance descriptor for Theater);
  static EventService.RequestType.theater.getter();
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_1000F86D8;
  v10 = v0[14];
  v11 = v0[8];

  return EventService.schedule<A, B>(venueIdentifier:ofType:_:)(v10, v5, v7, v11, v0 + 2, 0, v8, v0 + 2);
}

uint64_t sub_1000F86D8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_1000DE330;
  }

  else
  {
    v3 = sub_1000F885C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F885C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = Venue.Schedule.events.getter();
  (*(v2 + 8))(v1, v3);
  static Date.now.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_1001882F4(sub_1000F8B3C, v8, v7);

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1000F89A0@<X0>(uint64_t *a1@<X8>)
{
  result = Theater.category.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000F89E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000DE494;

  return sub_1000F8334();
}

uint64_t sub_1000F8A70(uint64_t a1)
{
  *(a1 + 8) = sub_1000F8AF4(&qword_1002271E8, &type metadata accessor for Theater, &protocol conformance descriptor for Theater);
  result = sub_1000F8AF4(&qword_1002271F0, &type metadata accessor for Theater, &protocol conformance descriptor for Theater);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F8AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F8B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeaturedVideoPlayer(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F8BFC(uint64_t a1)
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  return Binding.wrappedValue.getter();
}

uint64_t sub_1000F8C4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  sub_1000F8BFC(a1);
  if ((*(v3 + 48))(v9, 1, v2))
  {
    (*(v7 + 8))(v9, v6);
    (*(*(a1 + 24) + 40))(v2);
    v10 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v9, v2);
    (*(v7 + 8))(v9, v6);
    v11 = *(a1 + 24);
    v12 = *(v11 + 40);
    v13 = v12(v2, v11);
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    v17 = v12(v2, v11);
    if (v15)
    {
      if (v13 == v17 && v15 == v16)
      {

        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 & 1;
}

id sub_1000F8EE4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(AVPlayerViewController) init];
  v3 = objc_allocWithZone(AVPlayer);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 initWithURL:v5];

  [v2 setModalPresentationStyle:0];
  [v2 setExitsFullScreenWhenPlaybackEnds:1];
  [v2 setShowsPlaybackControls:1];
  [v2 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
  [v2 setPlayer:v7];
  v8 = [v2 player];
  if (v8)
  {
    v9 = v8;
    swift_getWitnessTable();
    type metadata accessor for UIViewControllerRepresentableContext();
    UIViewControllerRepresentableContext.coordinator.getter();
    v10 = String._bridgeToObjectiveC()();
    [v9 addObserver:v12 forKeyPath:v10 options:1 context:0];
  }

  swift_getWitnessTable();
  type metadata accessor for UIViewControllerRepresentableContext();
  UIViewControllerRepresentableContext.coordinator.getter();
  [v2 setDelegate:v12];

  return v2;
}

id sub_1000F9120(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = swift_isaMask & *v2;
  if (*(v2 + *(v4 + 0x68)))
  {

    sub_1000024C4(qword_1002220B8, &unk_1001B5710);
    Task.cancel()();

    v4 = swift_isaMask & *v2;
  }

  if (*(v2 + *(v4 + 112)))
  {

    sub_1000024C4(qword_1002220B8, &unk_1001B5710);
    Task.cancel()();
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_1000F9274(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((swift_isaMask & *a1) + 0x60);
  v6 = type metadata accessor for FeaturedVideoPlayer(0, *((swift_isaMask & *a1) + 0x50), *((swift_isaMask & *a1) + 0x58), a4);
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  return result;
}

uint64_t sub_1000F9374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Notification();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_1000024C4(&qword_100227368, &unk_1001BD4C8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000F94C8, 0, 0);
}

uint64_t sub_1000F94C8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100220BE8 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_1000FCF80(&unk_100227370, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1000F963C;
  v4 = v0[10];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1000F963C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000FD094;
  }

  else
  {
    v2 = sub_1000F9750;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F976C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v0[9];
    v6 = v0[7];
    v7 = (v0[8] + 8);
    if (Strong)
    {
      v8 = Strong;
      sub_1000F9968();

      (*v7)(v5, v6);
      v9 = sub_1000FCF80(&unk_100227370, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_1000F963C;
      v11 = v0[10];
      v12 = v0[11];

      return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
    }

    (*v7)(v0[9], v0[7]);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v13 = v0[1];

  return v13();
}

double sub_1000F9968()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = sub_1000024C4(&qword_100227360, &qword_1001B5D80);
  __chkstk_darwin(v3 - 8);
  v5 = v37 - v4;
  v6 = Notification.name.getter();
  if (qword_100220BE8 != -1)
  {
    swift_once();
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

LABEL_14:
    v18 = Notification.userInfo.getter();
    if (v18)
    {
      v19 = v18;
      v37[1] = 0x44496F65646976;
      v37[2] = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v19 + 16))
      {
        v20 = sub_1000FBDEC(v38);
        if (v21)
        {
          sub_100026D04(*(v19 + 56) + 32 * v20, &v39);
          sub_10006065C(v38);

          if (*(&v40 + 1))
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
              return result;
            }

            v24 = v38[0];
            v23 = v38[1];
            if (v24 == (*(*(v2 + 88) + 40))(*(v2 + 80)) && v23 == v25)
            {
            }

            else
            {
              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v27 & 1) == 0)
              {
                return result;
              }
            }

            v34 = type metadata accessor for TaskPriority();
            (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
            type metadata accessor for MainActor();
            v35 = v1;
            v36 = static MainActor.shared.getter();
            v32 = swift_allocObject();
            v32[2] = v36;
            v32[3] = &protocol witness table for MainActor;
            v32[4] = v35;
            v33 = &unk_1001BD4F8;
            goto LABEL_30;
          }

LABEL_27:
          sub_1000050C4(&v39, &unk_100227380, &unk_1001B74B0);
          return result;
        }
      }

      sub_10006065C(v38);
    }

    v39 = 0u;
    v40 = 0u;
    goto LABEL_27;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_14;
  }

  v13 = Notification.name.getter();
  if (qword_100220BF0 != -1)
  {
    swift_once();
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      return result;
    }
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
  type metadata accessor for MainActor();
  v30 = v1;
  v31 = static MainActor.shared.getter();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = v30;
  v33 = &unk_1001BD4E0;
LABEL_30:
  sub_1001904E0(0, 0, v5, v33, v32);

  return result;
}

uint64_t sub_1000F9E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000024C4(&qword_100227360, &qword_1001B5D80);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000FCC44(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000050C4(v10, &qword_100227360, &qword_1001B5D80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000FA0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Notification();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_1000024C4(&qword_100227368, &unk_1001BD4C8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000FA1FC, 0, 0);
}

uint64_t sub_1000FA1FC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100220BF0 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = sub_1000FCF80(&unk_100227370, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1000FA370;
  v4 = v0[10];
  v5 = v0[11];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_1000FA370()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000FA69C;
  }

  else
  {
    v2 = sub_1000FA484;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000FA4A0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v0[9];
    v6 = v0[7];
    v7 = (v0[8] + 8);
    if (Strong)
    {
      v8 = Strong;
      sub_1000F9968();

      (*v7)(v5, v6);
      v9 = sub_1000FCF80(&unk_100227370, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
      v10 = swift_task_alloc();
      v0[14] = v10;
      *v10 = v0;
      v10[1] = sub_1000FA370;
      v11 = v0[10];
      v12 = v0[11];

      return dispatch thunk of AsyncIteratorProtocol.next()(v11, v12, v9);
    }

    (*v7)(v0[9], v0[7]);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000FA69C()
{
  *(v0 + 40) = *(v0 + 120);
  sub_1000024C4(qword_1002220B8, &unk_1001B5710);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000FA728()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x50);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v12 - v6, &v0[*((v2 & v1) + 0x60)], v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  v10 = type metadata accessor for FeaturedVideoPlayer(0, v3, *((v2 & v1) + 0x58), v9);
  sub_1000FC300(v7, v10);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000FA8CC()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x50);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  (*(*(v3 - 8) + 56))(&v11 - v6, 1, 1, v3);
  v9 = type metadata accessor for FeaturedVideoPlayer(0, v3, *((v2 & v1) + 0x58), v8);
  sub_1000FC300(v7, v9);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000FAA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FAACC, v6, v5);
}

uint64_t sub_1000FAACC()
{

  sub_1000FA728();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FAB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FABC8, v6, v5);
}

uint64_t sub_1000FABC8()
{

  sub_1000FA8CC();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000FAC2C(void *a1, void *a2)
{
  v3 = [a1 player];
  if (v3)
  {
    v4 = v3;
    [v3 rate];
    if (v5 > 0.0)
    {
      v6 = [v4 error];
      if (!v6)
      {
        v7 = 1;
        goto LABEL_6;
      }
    }

    v7 = 0;
LABEL_6:
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    v11[4] = sub_1000FD054;
    v11[5] = v8;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000FAD80;
    v11[3] = &unk_100216D20;
    v9 = _Block_copy(v11);
    v10 = v4;

    [a2 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1000FAD80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1000FADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1000FCFF4();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v11._object = 0x80000001001C7490;
    v11._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v11);
    v12._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 46;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_1000FAF68(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for MainActor();
  v9[2] = a3;
  v9[3] = a4;
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a1;
  sub_1000FADE0(sub_1000FCFC8, v9, "EventViewService/FeaturedVideoPlayer.swift", 42, 2u, 127);

  swift_unknownObjectRelease();
}

uint64_t sub_1000FB018(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v14 = a5;
    v15 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1000FCF80(&qword_100220DF8, type metadata accessor for NSKeyValueChangeKey, &unk_1001B33E8);
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_1000FCCB4(v8, v10, v17, v13);

  return sub_1000050C4(v17, &unk_100227380, &unk_1001B74B0);
}

uint64_t sub_1000FB1D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      type metadata accessor for Optional();
      result = type metadata accessor for Binding();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000FB290(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v33 = *(v5 - 8);
  v6 = *(v33 + 84);
  v7 = *(type metadata accessor for URL() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v33 + 64);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = v6 - 1;
  if (!v6)
  {
    v12 = 0;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (v12 > v11)
  {
    v11 = v12;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (v6)
  {
    v15 = -2;
  }

  else
  {
    v15 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v10 + v13;
  v17 = *(v33 + 80);
  v18 = v17 | 7;
  if (a2 <= v11)
  {
    goto LABEL_37;
  }

  v19 = v15 + v10 - ((-17 - v17) | v17) - ((-2 - v18 - (v14 + (v16 & ~v13))) | v18);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v11 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v6 == v11)
      {
        v27 = *(v33 + 48);

        return v27(a1, v6, v5);
      }

      else
      {
        v28 = (a1 + v16) & ~v13;
        if (v9 == v11)
        {
          v29 = *(v8 + 48);

          return v29(v28);
        }

        else
        {
          v30 = ((((v14 + v28 + v18 + 1) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v12 & 0x80000000) != 0)
          {
            v32 = (*(v33 + 48))((v30 + v17 + 8) & ~v17, v6, v5);
            if (v32 >= 2)
            {
              return v32 - 1;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            v31 = *v30;
            if (v31 >= 0xFFFFFFFF)
            {
              LODWORD(v31) = -1;
            }

            return (v31 + 1);
          }
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v11 + (v26 | v24) + 1;
}

void sub_1000FB5BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = type metadata accessor for URL();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 64);
  if (v14 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  v17 = v9 - 1;
  v18 = *(v13 + 80);
  v19 = *(*(v10 - 8) + 64);
  if (!v9)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v17;
  }

  if (v16 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v16;
  }

  v22 = *(v8 + 80);
  if (v9)
  {
    v23 = *(v8 + 64);
  }

  else
  {
    v23 = v15 + 1;
  }

  v24 = v23 + ((v22 + 16) & ~v22);
  v25 = v22 | 7;
  v26 = v19 + 1;
  v27 = v24 + ((v19 + 1 + ((v15 + v18) & ~v18) + (v22 | 7)) & ~(v22 | 7));
  if (a3 <= v21)
  {
LABEL_29:
    if (v21 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v27 > 3)
  {
    v12 = 1;
    if (v21 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v30 = ~v21 + a2;
    if (v27 >= 4)
    {
      bzero(a1, v27);
      *a1 = v30;
      v31 = 1;
      if (v12 > 1)
      {
        goto LABEL_32;
      }

LABEL_69:
      if (v12)
      {
        a1[v27] = v31;
      }

      return;
    }

    v31 = (v30 >> (8 * v27)) + 1;
    if (v27)
    {
      v35 = v30 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v35;
          if (v12 <= 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          *a1 = v30;
          if (v12 <= 1)
          {
            goto LABEL_69;
          }
        }

LABEL_32:
        if (v12 == 2)
        {
          *&a1[v27] = v31;
        }

        else
        {
          *&a1[v27] = v31;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v12 <= 1)
    {
      goto LABEL_69;
    }

    goto LABEL_32;
  }

  v28 = ((a3 - v21 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
  if (!HIWORD(v28))
  {
    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v12 = v29;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_29;
  }

  v12 = 4;
  if (v21 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v27] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v12)
  {
    goto LABEL_36;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 == v21)
  {
    v32 = *(v11 + 56);
    v33 = a1;
    v34 = a2;
LABEL_39:

    v32(v33, v34, v9, v7);
    return;
  }

  v36 = &a1[v15 + v18] & ~v18;
  if (v14 == v21)
  {
    v37 = *(v13 + 56);

    v37(v36, a2);
    return;
  }

  v38 = ((v26 + v36 + v25) & ~v25);
  if (v20 < a2)
  {
    if (v24 <= 3)
    {
      v39 = ~(-1 << (8 * v24));
    }

    else
    {
      v39 = -1;
    }

    if (!v24)
    {
      return;
    }

    v40 = v39 & (~v20 + a2);
    if (v24 <= 3)
    {
      v41 = v24;
    }

    else
    {
      v41 = 4;
    }

    bzero(((v26 + v36 + v25) & ~v25), v24);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
LABEL_66:
        *v38 = v40;
        return;
      }

LABEL_91:
      *v38 = v40;
      return;
    }

    goto LABEL_92;
  }

  v42 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v43 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v43 = (a2 - 1);
    }

    *v42 = v43;
    return;
  }

  v44 = v42 + v22 + 8;
  v38 = (v44 & ~v22);
  if (v9)
  {
    v45 = v15;
  }

  else
  {
    v45 = (v15 + 1);
  }

  if (v17 >= a2)
  {
    v32 = *(v11 + 56);
    v34 = (a2 + 1);
    v33 = (v44 & ~v22);
    goto LABEL_39;
  }

  if (v45 <= 3)
  {
    v46 = ~(-1 << (8 * v45));
  }

  else
  {
    v46 = -1;
  }

  if (v45)
  {
    v40 = v46 & (~v17 + a2);
    if (v45 <= 3)
    {
      v41 = v45;
    }

    else
    {
      v41 = 4;
    }

    bzero(v38, v45);
    if (v41 <= 2)
    {
      if (v41 == 1)
      {
        goto LABEL_66;
      }

      goto LABEL_91;
    }

LABEL_92:
    if (v41 == 3)
    {
      *v38 = v40;
      v38[2] = BYTE2(v40);
    }

    else
    {
      *v38 = v40;
    }
  }
}

uint64_t sub_1000FBA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v14 = type metadata accessor for FeaturedVideoPlayer(0, a5, a6, v13);
  v15 = v14[9];
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
  *(a7 + v14[10]) = a3;
  v17 = v14[11];
  type metadata accessor for Optional();
  v18 = type metadata accessor for Binding();
  v19 = *(*(v18 - 8) + 32);

  return v19(a7 + v17, a4, v18);
}

void *sub_1000FBB80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1000F90E4(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_1000FBBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_1000FBC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1000FBCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

NSString sub_1000FBD38()
{
  result = String._bridgeToObjectiveC()();
  qword_1002390F8 = result;
  return result;
}

NSString sub_1000FBD70()
{
  result = String._bridgeToObjectiveC()();
  qword_100239100 = result;
  return result;
}

unint64_t sub_1000FBDA8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_10008DFB0(*(v1 + 40), a1);

  return sub_1000FBEC4(v2, v3);
}

unint64_t sub_1000FBDEC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000FC134(a1, v4);
}

unint64_t sub_1000FBE34(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000FC1FC(a1, v2);
}

unint64_t sub_1000FBEC4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x7261646E656C6163;
          }

          else
          {
            v8 = 0x6E6F697461636F6CLL;
          }

          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xE300000000000000;
          v8 = 7368801;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE700000000000000;
          v8 = 0x7473696C746573;
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x676E696D6F637075;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x636973756DLL;
        }

        else
        {
          v8 = 0x7473696C79616C70;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE900000000000073;
        }
      }

      v10 = 0x676E696D6F637075;
      if (v6 == 5)
      {
        v10 = 0x7473696C746573;
      }

      v11 = 0xE700000000000000;
      if (v6 != 5)
      {
        v11 = 0xE800000000000000;
      }

      v12 = 0x7473696C79616C70;
      if (v6 == 3)
      {
        v12 = 0x636973756DLL;
      }

      v13 = 0xE900000000000073;
      if (v6 == 3)
      {
        v13 = 0xE500000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x7261646E656C6163;
      if (v6 != 1)
      {
        v14 = 0x6E6F697461636F6CLL;
      }

      v15 = 0xE800000000000000;
      if (!v6)
      {
        v14 = 7368801;
        v15 = 0xE300000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
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

unint64_t sub_1000FC134(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000FCBE8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10006065C(v8);
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

unint64_t sub_1000FC1FC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000FC300(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  __chkstk_darwin(v3);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

void sub_1000FC3EC(void *a1, uint64_t a2)
{
  v5 = [a1 player];
  if (v5)
  {
    if ((sub_1000F8C4C(a2) & 1) == 0 || *(v2 + *(a2 + 40)) == 1)
    {
      [v5 pause];
      [a1 setShowsPlaybackControls:0];
      [a1 setShowsPlaybackControls:1];
    }
  }
}

void *sub_1000FC4B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *v2;
  v7 = swift_isaMask;
  v8 = sub_1000024C4(&qword_100227360, &qword_1001B5D80);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  *&v3[*((v7 & v6) + 0x68)] = 0;
  *&v3[*((swift_isaMask & *v3) + 0x70)] = 0;
  v11 = *((swift_isaMask & *v3) + 0x60);
  v12 = *((v7 & v6) + 0x50);
  v13 = *((v7 & v6) + 0x58);
  v15 = type metadata accessor for FeaturedVideoPlayer(0, v12, v13, v14);
  (*(*(v15 - 8) + 16))(&v3[v11], a1, v15);
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v27, "init");
  v17 = type metadata accessor for TaskPriority();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v12;
  v20[5] = v13;
  v20[6] = v19;
  v21 = v16;
  v22 = sub_1000F9E4C(0, 0, v10, &unk_1001BD4B0, v20);
  sub_1000050C4(v10, &qword_100227360, &qword_1001B5D80);
  *(v21 + *((swift_isaMask & *v21) + 0x68)) = v22;

  v18(v10, 1, 1, v17);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v12;
  v24[5] = v13;
  v24[6] = v23;
  v25 = sub_1000F9E4C(0, 0, v10, &unk_1001BD4C0, v24);
  sub_1000050C4(v10, &qword_100227360, &qword_1001B5D80);
  *(v21 + *((swift_isaMask & *v21) + 0x70)) = v25;

  return v21;
}

uint64_t sub_1000FC830()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000FC86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012AC8;

  return sub_1000F9374(a1, v4, v5, v6);
}

uint64_t sub_1000FC934()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000FC974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_1000FA0A8(a1, v4, v5, v6);
}

uint64_t sub_1000FCA40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_1000FAB30(a1, v4, v5, v6);
}

uint64_t sub_1000FCAF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000FCB34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100012AC8;

  return sub_1000FAA34(a1, v4, v5, v6);
}

uint64_t sub_1000FCC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100227360, &qword_1001B5D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000FCCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (v6 = swift_isaMask & *v4, a1 == 1702125938) && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      if (a4)
      {
        if (*(a4 + 16))
        {
          v7 = sub_1000FBE34(NSKeyValueChangeNewKey);
          if (v8)
          {
            sub_100026D04(*(a4 + 56) + 32 * v7, v16);
            if ((swift_dynamicCast() & 1) != 0 && v15 != 0.0)
            {
              v9 = [objc_opt_self() defaultCenter];
              if (qword_100220BE8 != -1)
              {
                swift_once();
              }

              v10 = qword_1002390F8;
              sub_1000024C4(&qword_100227390, &qword_1001BD500);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1001B49B0;
              v16[0] = 0x44496F65646976;
              v16[1] = 0xE700000000000000;
              AnyHashable.init<A>(_:)();
              v12 = (*(*(v6 + 88) + 40))(*(v6 + 80));
              *(inited + 96) = &type metadata for ResourceID;
              *(inited + 72) = v12;
              *(inited + 80) = v13;
              sub_1001A9F5C(inited);
              swift_setDeallocating();
              sub_1000050C4(inited + 32, &unk_10022BBD0, &qword_1001BD508);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              [v9 postNotificationName:v10 object:0 userInfo:isa];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000FCF80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FD01C()
{

  return swift_deallocObject();
}

id sub_1000FD054()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) play];
  }

  return result;
}

double sub_1000FD074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1000FD09C()
{

  v1 = OBJC_IVAR____TtC16EventViewService17PlaybackViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackViewModel(uint64_t a1)
{
  result = qword_1002273C8;
  if (!qword_1002273C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FD194(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000FD23C(_OWORD *a1)
{
  v1 = a1[2];
  v11 = a1[1];
  v12 = v1;
  v2 = a1[4];
  v13 = a1[3];
  v14 = v2;
  type metadata accessor for ArtistEventViewModel(255, &v11);
  v3 = type metadata accessor for State();
  if (v4 <= 0x3F)
  {
    v15 = 0;
    *&v11 = v3;
    sub_100017044(319);
    if (v6 <= 0x3F)
    {
      v16 = 0;
      *(&v11 + 1) = v5;
      sub_1000FD600(319, &qword_100221C00, &type metadata accessor for ColorScheme);
      if (v8 <= 0x3F)
      {
        v17 = 0;
        *&v12 = v7;
        sub_1000FD600(319, &qword_1002219B8, &type metadata accessor for DismissAction);
        if (v10 <= 0x3F)
        {
          v18 = 0;
          *(&v12 + 1) = v9;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000FD35C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 88);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 92);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000FD4AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 88);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 92);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000FD600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000FD730(_OWORD *a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v3 = a1[2];
  v6[0] = a1[1];
  v6[1] = v3;
  v4 = a1[4];
  v6[2] = a1[3];
  v6[3] = v4;
  type metadata accessor for ArtistEventViewModel(255, v6);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return *&v6[0];
}

uint64_t sub_1000FD794(_OWORD *a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v3 = a1[2];
  v6[0] = a1[1];
  v6[1] = v3;
  v4 = a1[4];
  v6[2] = a1[3];
  v6[3] = v4;
  type metadata accessor for ArtistEventViewModel(255, v6);
  type metadata accessor for State();
  State.projectedValue.getter();
  return *&v6[0];
}

uint64_t sub_1000FD7FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v3 = type metadata accessor for TaskPriority();
  v191 = *(v3 - 8);
  v192 = v3;
  v4 = __chkstk_darwin(v3);
  v190 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = *(a1 - 1);
  v207 = *(v213 + 64);
  __chkstk_darwin(v4);
  v202 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  type metadata accessor for Optional();
  v203 = type metadata accessor for Binding();
  v206 = *(v203 - 8);
  __chkstk_darwin(v203);
  v201 = &v162 - v8;
  *&v215 = type metadata accessor for NavigationPath();
  v9 = a1[2];
  *&v10 = v9;
  *(&v10 + 1) = v7;
  v214 = v10;
  v11 = a1[6];
  v205 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v210 = v11;
  v211 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ArtistEventListHeader(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v15 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v250 = &protocol witness table for EmptyView;
  v251 = WitnessTable;
  v252 = &protocol witness table for EmptyView;
  v200 = &protocol conformance descriptor for <> Section<A, B, C>;
  v17 = swift_getWitnessTable();
  v235 = v15;
  v236 = v17;
  v199 = &opaque type descriptor for <<opaque return type of View.listSectionSeparator(_:edges:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223470, &qword_1001B7380);
  v253 = type metadata accessor for ModifiedContent();
  v204 = sub_10000460C(&qword_1002274D8, &qword_1001BD5D0);
  v209 = a1[7];
  v208 = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v235 = v9;
  v236 = v18;
  *&v237 = v11;
  *(&v237 + 1) = v19;
  type metadata accessor for PromotionalAssetsEntryView(255, &v235);
  swift_getWitnessTable();
  v20 = type metadata accessor for Button();
  v21 = type metadata accessor for PlainButtonStyle();
  v22 = swift_getWitnessTable();
  v23 = sub_10010B304(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v235 = v20;
  v236 = v21;
  *&v237 = v22;
  *(&v237 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for Section();
  v235 = v20;
  v236 = v21;
  *&v237 = v22;
  *(&v237 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v247 = &protocol witness table for EmptyView;
  v248 = OpaqueTypeConformance2;
  v249 = &protocol witness table for EmptyView;
  v26 = swift_getWitnessTable();
  v235 = v24;
  v236 = v26;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  v254 = type metadata accessor for Optional();
  v255 = sub_10000460C(&qword_1002274E0, &qword_1001BD5D8);
  v198 = sub_10000460C(&qword_1002274E8, &qword_1001BD5E0);
  v27 = type metadata accessor for Array();
  v204 = *(*(v209 + 8) + 16);
  v28 = swift_getAssociatedTypeWitness();
  v29 = sub_10000460C(&qword_1002274F0, &qword_1001BD5E8);
  v30 = swift_getWitnessTable();
  v31 = swift_getAssociatedConformanceWitness();
  v235 = v27;
  v236 = v28;
  *&v237 = v29;
  *(&v237 + 1) = v30;
  v238 = v31;
  type metadata accessor for ForEach();
  v32 = type metadata accessor for Section();
  v246 = sub_100108FA8();
  v33 = swift_getWitnessTable();
  v243 = &protocol witness table for EmptyView;
  v244 = v33;
  v245 = &protocol witness table for EmptyView;
  v34 = swift_getWitnessTable();
  v235 = v32;
  v236 = v34;
  swift_getOpaqueTypeMetadata2();
  v256 = type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata();
  v35 = type metadata accessor for TupleView();
  v36 = swift_getWitnessTable();
  v235 = &type metadata for Never;
  v236 = v35;
  *&v237 = &protocol witness table for Never;
  *(&v237 + 1) = v36;
  v37 = type metadata accessor for List();
  v38 = type metadata accessor for PlainListStyle();
  v39 = swift_getWitnessTable();
  v235 = v37;
  v236 = v38;
  *&v237 = v39;
  *(&v237 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v235 = v37;
  v236 = v38;
  *&v237 = v39;
  *(&v237 + 1) = &protocol witness table for PlainListStyle;
  v41 = swift_getOpaqueTypeConformance2();
  v235 = OpaqueTypeMetadata2;
  v236 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v235 = OpaqueTypeMetadata2;
  v236 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v235 = v42;
  v236 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v235 = v42;
  v236 = v43;
  v45 = swift_getOpaqueTypeConformance2();
  v235 = v44;
  v236 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v235 = v44;
  v236 = v45;
  v47 = swift_getOpaqueTypeConformance2();
  v235 = v46;
  v236 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v235 = v46;
  v236 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v235 = v48;
  v236 = &type metadata for Bool;
  *&v237 = v49;
  *(&v237 + 1) = &protocol witness table for Bool;
  v50 = swift_getOpaqueTypeMetadata2();
  v51 = sub_10000460C(&qword_100227520, &qword_1001BD600);
  v235 = v48;
  v236 = &type metadata for Bool;
  *&v237 = v49;
  *(&v237 + 1) = &protocol witness table for Bool;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_10000BFFC(&qword_100227528, &qword_100227520, &qword_1001BD600, &protocol conformance descriptor for TupleToolbarContent<A>);
  v235 = v50;
  v236 = v51;
  *&v237 = v52;
  *(&v237 + 1) = v53;
  v195 = swift_getOpaqueTypeMetadata2();
  v235 = v50;
  v236 = v51;
  *&v237 = v52;
  *(&v237 + 1) = v53;
  v194 = swift_getOpaqueTypeConformance2();
  v54 = type metadata accessor for NavigationStack();
  v181 = *(v54 - 8);
  v55 = __chkstk_darwin(v54);
  v198 = &v162 - v56;
  v59 = sub_1000A62F8(v55, v57, v58);
  v62 = sub_1000A634C(v59, v60, v61);
  v63 = v208;
  v64 = v209;
  v235 = v208;
  v236 = &type metadata for ArtistFetcher;
  *&v237 = &type metadata for PromotionalPlaylistFetcher;
  *(&v237 + 1) = v209;
  v238 = v59;
  v239 = v62;
  v65 = type metadata accessor for MusicEventView(255, &v235);
  v66 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v235 = v54;
  v68 = v54;
  v168 = v66;
  v169 = v54;
  v236 = v63;
  *&v237 = v65;
  v166 = v65;
  v167 = v67;
  *(&v237 + 1) = v66;
  v69 = v204;
  v238 = v204;
  v239 = v67;
  v70 = v67;
  v196 = swift_getOpaqueTypeMetadata2();
  v186 = *(v196 - 8);
  __chkstk_darwin(v196);
  v200 = &v162 - v71;
  v72 = type metadata accessor for AppleMusicFetcher();
  v73 = sub_10010B304(&qword_100221760, type metadata accessor for AppleMusicFetcher, &unk_1001B9F10);
  v235 = v63;
  v236 = v72;
  *&v237 = v64;
  *(&v237 + 1) = v73;
  v74 = type metadata accessor for PromotionalAssetsView(255, &v235);
  v235 = v68;
  v236 = v63;
  v75 = v63;
  *&v237 = v65;
  *(&v237 + 1) = v66;
  v238 = v69;
  v239 = v70;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = swift_getWitnessTable();
  v78 = v196;
  v235 = v196;
  v236 = v75;
  v79 = v75;
  *&v237 = v74;
  v80 = v74;
  v170 = v74;
  v171 = v77;
  *(&v237 + 1) = v76;
  v172 = v76;
  v238 = v69;
  v81 = v69;
  v239 = v77;
  v82 = v77;
  v175 = swift_getOpaqueTypeMetadata2();
  v179 = *(v175 - 8);
  __chkstk_darwin(v175);
  v197 = &v162 - v83;
  v84 = type metadata accessor for ModifiedContent();
  v178 = v84;
  v188 = *(v84 - 8);
  __chkstk_darwin(v84);
  v199 = &v162 - v85;
  v235 = v78;
  v236 = v79;
  v86 = v79;
  *&v237 = v80;
  *(&v237 + 1) = v76;
  v238 = v81;
  v239 = v82;
  v173 = swift_getOpaqueTypeConformance2();
  v241 = v173;
  v242 = &protocol witness table for _AppearanceActionModifier;
  v189 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v177 = swift_getWitnessTable();
  v235 = v84;
  v236 = v177;
  v183 = &unk_1001C94C8;
  v180 = swift_getOpaqueTypeMetadata2();
  v184 = *(v180 - 8);
  __chkstk_darwin(v180);
  v174 = &v162 - v87;
  type metadata accessor for AccessibilityAttachmentModifier();
  v185 = type metadata accessor for ModifiedContent();
  v187 = *(v185 - 8);
  v88 = __chkstk_darwin(v185);
  v176 = &v162 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v182 = &v162 - v90;
  v91 = v210;
  *&v92 = v210;
  *(&v92 + 1) = v64;
  v232 = v212;
  v93 = v205;
  v94 = *(v205 + 2);
  v228 = v214;
  v229 = v94;
  v214 = *(v205 + 4);
  v215 = v94;
  v230 = v92;
  v231 = v214;
  NavigationStack.init<>(root:)();
  v95 = sub_1000FD794(v93);
  v97 = v96;
  v99 = v98;
  v100 = v211;
  v222 = v211;
  v223 = v86;
  v224 = v215;
  v225 = v91;
  v226 = v64;
  v227 = v214;
  swift_getKeyPath();
  v253 = v95;
  v254 = v97;
  v255 = v99;
  v235 = v100;
  v236 = v86;
  v237 = v215;
  v238 = v91;
  v239 = v64;
  v101 = v64;
  v240 = v214;
  type metadata accessor for ArtistEventViewModel(255, &v235);
  v162 = type metadata accessor for Binding();
  Binding.subscript.getter();

  v102 = v213;
  v103 = *(v213 + 16);
  v164 = v213 + 16;
  v165 = v103;
  v104 = v202;
  v105 = v205;
  v103(v202, v212, v205);
  v194 = *(v102 + 80);
  v106 = (v194 + 80) & ~v194;
  v163 = v106;
  v107 = swift_allocObject();
  v108 = v211;
  v109 = v208;
  *(v107 + 16) = v211;
  *(v107 + 24) = v109;
  v110 = v214;
  *(v107 + 32) = v215;
  *(v107 + 48) = v91;
  *(v107 + 56) = v101;
  v111 = v101;
  *(v107 + 64) = v110;
  v112 = *(v102 + 32);
  v213 = v102 + 32;
  v195 = v112;
  v113 = v105;
  v112(v107 + v106, v104, v105);
  swift_checkMetadataState();
  v114 = v201;
  v115 = v169;
  v116 = v198;
  View.sheet<A, B>(item:onDismiss:content:)();

  v117 = *(v206 + 8);
  v206 += 8;
  v168 = v117;
  v117(v114, v203);
  (*(v181 + 8))(v116, v115);
  v118 = sub_1000FD794(v113);
  v120 = v119;
  v122 = v121;
  v216 = v108;
  v217 = v109;
  v218 = v215;
  v123 = v210;
  v219 = v210;
  v220 = v111;
  v221 = v214;
  swift_getKeyPath();
  v235 = v118;
  v236 = v120;
  *&v237 = v122;
  Binding.subscript.getter();

  v124 = swift_allocObject();
  v125 = v208;
  *(v124 + 16) = v108;
  *(v124 + 24) = v125;
  v126 = v214;
  *(v124 + 32) = v215;
  *(v124 + 48) = v123;
  *(v124 + 56) = v111;
  *(v124 + 64) = v126;
  swift_checkMetadataState();
  v127 = v196;
  v128 = v125;
  v129 = v200;
  View.sheet<A, B>(item:onDismiss:content:)();

  v168(v114, v203);
  (*(v186 + 8))(v129, v127);
  v130 = v202;
  v131 = v212;
  v132 = v205;
  v133 = v165;
  v165(v202, v212, v205);
  v134 = v163;
  v135 = swift_allocObject();
  v136 = v210;
  *(v135 + 16) = v211;
  *(v135 + 24) = v128;
  v137 = v214;
  *(v135 + 32) = v215;
  v138 = v209;
  *(v135 + 48) = v136;
  *(v135 + 56) = v138;
  *(v135 + 64) = v137;
  v195(v135 + v134, v130, v132);
  v139 = v175;
  v140 = v197;
  View.onAppear(perform:)();

  (*(v179 + 8))(v140, v139);
  v133(v130, v131, v132);
  type metadata accessor for MainActor();
  v141 = static MainActor.shared.getter();
  v142 = (v194 + 96) & ~v194;
  v143 = swift_allocObject();
  *(v143 + 16) = v141;
  *(v143 + 24) = &protocol witness table for MainActor;
  v144 = v210;
  *(v143 + 32) = v211;
  *(v143 + 40) = v128;
  v145 = v214;
  *(v143 + 48) = v215;
  v146 = v209;
  *(v143 + 64) = v144;
  *(v143 + 72) = v146;
  *(v143 + 80) = v145;
  v195(v143 + v142, v130, v132);
  v147 = v190;
  v149 = v177;
  v148 = v178;
  j___sScP13userInitiatedScPvgZ();
  v150 = v174;
  v151 = v147;
  v152 = v147;
  v153 = v199;
  sub_10000250C(0, v151, 0xD000000000000026, 0x80000001001C7540, 211, &unk_1001BD680, v143, v174, v148, v149);
  (*(v191 + 8))(v152, v192);
  (*(v188 + 8))(v153, v148);
  v235 = v148;
  v236 = v149;
  v154 = swift_getOpaqueTypeConformance2();
  v155 = v176;
  v156 = v180;
  View.accessibilityIdentifier(_:)();
  (*(v184 + 8))(v150, v156);
  v157 = sub_10010B304(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v233 = v154;
  v234 = v157;
  v158 = v185;
  swift_getWitnessTable();
  v159 = v182;
  sub_1000EE87C();
  v160 = *(v187 + 8);
  v160(v155, v158);
  sub_1000EE87C();
  return (v160)(v159, v158);
}